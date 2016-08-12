//===-- OR1KAsmParser.cpp - Parse OR1K assembly to MCInst instructions ----===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#include "llvm/ADT/StringSwitch.h"
#include "llvm/ADT/STLExtras.h"
#include "MCTargetDesc/OR1KMCTargetDesc.h"
#include "llvm/MC/MCParser/MCAsmLexer.h"
#include "llvm/MC/MCParser/MCParsedAsmOperand.h"
#include "llvm/MC/MCParser/MCTargetAsmParser.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/MC/MCSymbol.h"
#include "llvm/MC/MCInst.h"
#include "llvm/Support/TargetRegistry.h"
using namespace llvm;

namespace {
struct OR1KOperand;

class OR1KAsmParser : public MCTargetAsmParser {
  const MCSubtargetInfo &STI;
  MCAsmParser &Parser;

  MCAsmParser &getParser() const { return Parser; }
  MCAsmLexer &getLexer() const { return Parser.getLexer(); }

  bool MatchAndEmitInstruction(SMLoc IDLoc, unsigned &Opcode,
                               OperandVector &Operands,
                               MCStreamer &Out, uint64_t &ErrorInfo,
                               bool MatchingInlineAsm) override;

  bool ParseRegister(unsigned &RegNo, SMLoc &StartLoc, SMLoc &EndLoc) override;

  bool ParseInstruction(ParseInstructionInfo &Info, StringRef Name,
                        SMLoc NameLoc, OperandVector &Operands) override;

  bool ParseDirective(AsmToken DirectiveID) override;

  bool ParseRegister(unsigned &RegNo, OperandVector &Operands);

  bool ParseImmediate(OperandVector &Operands);

  const MCExpr *evaluateRelocExpr(const MCExpr *Expr,
                                  MCSymbolRefExpr::VariantKind VK);

  MCSymbolRefExpr::VariantKind getVariantKind(StringRef Symbol);
  bool ParseSymbolReference(OperandVector &Operands);

  bool ParseOperand(OperandVector &Operands);

  // Auto-generated instruction matching functions
#define GET_ASSEMBLER_HEADER
#include "OR1KGenAsmMatcher.inc"

public:
  OR1KAsmParser(const MCSubtargetInfo &_STI, MCAsmParser &_Parser,
                const MCInstrInfo &MII, const MCTargetOptions &Options)
      : MCTargetAsmParser(Options, _STI), STI(_STI), Parser(_Parser) {
    setAvailableFeatures(ComputeAvailableFeatures(STI.getFeatureBits()));
    MCAsmParserExtension::Initialize(Parser);
  }

};

/// OR1KOperand - Instances of this class represented a parsed machine
/// instruction
struct OR1KOperand : public MCParsedAsmOperand {

  enum KindTy {
    k_Token,
    k_Register,
    k_Immediate,
    k_Memory
  } Kind;

  SMLoc StartLoc, EndLoc;

  struct Token {
    const char *Data;
    unsigned Length;
  };

  struct RegOp {
    unsigned Num;
  };

  struct ImmOp {
    const MCExpr *Val;
  };

  struct MemOp {
    unsigned BaseNum;
    const MCExpr *Off;
  };

  union {
    struct Token Tok;
    struct RegOp Reg;
    struct ImmOp Imm;
    struct MemOp Mem;
  };

  OR1KOperand(KindTy K) : MCParsedAsmOperand(), Kind(K) {}
public:
  OR1KOperand(const OR1KOperand &o) : MCParsedAsmOperand() {
    Kind = o.Kind;
    StartLoc = o.StartLoc;
    EndLoc = o.EndLoc;
    switch (Kind) {
      case k_Register:
        Reg = o.Reg;
        break;
      case k_Immediate:
        Imm = o.Imm;
        break;
      case k_Token:
        Tok = o.Tok;
        break;
      case k_Memory:
        Mem = o.Mem;
        break;
    }
  }

  /// getStartLoc - Gets location of the first token of this operand
  SMLoc getStartLoc() const override { return StartLoc; }

  /// getEndLoc - Gets location of the last token of this operand
  SMLoc getEndLoc() const override { return EndLoc; }

  unsigned getReg() const override {
    assert (Kind == k_Register && "Invalid access!");
    return Reg.Num;
  }

  const MCExpr *getImm() const {
    assert (Kind == k_Immediate && "Invalid access!");
    return Imm.Val;
  }

  StringRef getToken() const {
    assert (Kind == k_Token && "Invalid access!");
    return StringRef(Tok.Data, Tok.Length);
  }

  unsigned getMemBaseNum() const {
    assert((Kind == k_Memory) && "Invalid access!");
    return Mem.BaseNum;
  }

  const MCExpr *getMemOff() const {
    assert((Kind == k_Memory) && "Invalid access!");
    return Mem.Off;
  }

  // Functions for testing operand type
  bool isReg() const override { return Kind == k_Register; }
  bool isImm() const override { return Kind == k_Immediate; }
  bool isToken() const override { return Kind == k_Token; }
  bool isMem() const override { return Kind == k_Memory; }

  void addExpr(MCInst &Inst, const MCExpr *Expr) const {
    // Add as immediates where possible. Null MCExpr = 0
    if (Expr == 0)
      Inst.addOperand(MCOperand::createImm(0));
    else if (const MCConstantExpr *CE = dyn_cast<MCConstantExpr>(Expr))
      Inst.addOperand(MCOperand::createImm(CE->getValue()));
    else
      Inst.addOperand(MCOperand::createExpr(Expr));
  }

  void addRegOperands(MCInst &Inst, unsigned N) const {
    assert(N == 1 && "Invalid number of operands!");
    Inst.addOperand(MCOperand::createReg(getReg()));
  }

  void addImmOperands(MCInst &Inst, unsigned N) const {
    assert(N == 1 && "Invalid number of operands!");
    addExpr(Inst, getImm());
  }

  void addMemOperands(MCInst &Inst, unsigned N) const {
    assert(N == 2 && "Invalid number of operands!");
    Inst.addOperand(MCOperand::createReg(getMemBaseNum()));
    addExpr(Inst, getMemOff());
  }

  void print(raw_ostream &OS) const override {
    switch (Kind) {
    case k_Register:
      OS << "Reg<" << Reg.Num << ">";
      break;
    case k_Immediate:
      OS << "Imm<" << Imm.Val << ">";
      break;
    case k_Token:
      OS << Tok.Data;
      break;
    case k_Memory:
      OS << "Mem<Reg<" << Mem.BaseNum << ">, " << Mem.Off << ">";
      break;
    }
  }

  static std::unique_ptr<OR1KOperand> CreateToken(StringRef Str, SMLoc S) {
    auto Op = make_unique<OR1KOperand>(k_Token);
    Op->Tok.Data = Str.data();
    Op->Tok.Length = Str.size();
    Op->StartLoc = S;
    Op->EndLoc = S;
    return Op;
  }

  static std::unique_ptr<OR1KOperand> createReg(unsigned RegNo,
                                                SMLoc S, SMLoc E) {
    auto Op = make_unique<OR1KOperand>(k_Register);
    Op->Reg.Num = RegNo;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }

  static std::unique_ptr<OR1KOperand> createImm(const MCExpr *Val,
                                                SMLoc S, SMLoc E) {
    auto Op = make_unique<OR1KOperand>(k_Immediate);
    Op->Imm.Val = Val;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }

  static std::unique_ptr<OR1KOperand> CreateMem(unsigned BaseNum,
                                                const MCExpr *Off,
                                                SMLoc S, SMLoc E) {
    auto Op = make_unique<OR1KOperand>(k_Memory);
    Op->Mem.BaseNum = BaseNum;
    Op->Mem.Off = Off;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }
};
} // end anonymous namespace.

// Auto-generated by TableGen
static unsigned MatchRegisterName(StringRef Name);

bool OR1KAsmParser::
MatchAndEmitInstruction(SMLoc IDLoc, unsigned &Opcode,
                        OperandVector &Operands,
                        MCStreamer &Out, uint64_t &ErrorInfo,
                        bool MatchingInlineAsm) {
  MCInst Inst;
  SMLoc ErrorLoc;

  switch (MatchInstructionImpl(Operands, Inst, ErrorInfo, MatchingInlineAsm)) {
    default: break;
    case Match_Success:
      Out.EmitInstruction(Inst, STI);
      return false;
    case Match_MissingFeature:
      return Error(IDLoc, "instruction use requires option to be enabled");
    case Match_MnemonicFail:
      return Error(IDLoc, "unrecognized instruction mnemonic");
    case Match_InvalidOperand:
      ErrorLoc = IDLoc;
      if (ErrorInfo != ~0U) {
        if (ErrorInfo >= Operands.size())
          return Error(IDLoc, "too few operands for instruction");

        ErrorLoc = Operands[ErrorInfo]->getStartLoc();
        if (ErrorLoc == SMLoc())
          ErrorLoc = IDLoc;
      }
      return Error(ErrorLoc, "invalid operand for instruction");
  }

  llvm_unreachable("Unknown match type detected!");
}

bool OR1KAsmParser::ParseRegister(unsigned &RegNo, OperandVector &Operands) {
  SMLoc S = Parser.getTok().getLoc();
  SMLoc E = SMLoc::getFromPointer(Parser.getTok().getLoc().getPointer() -1);

  switch(getLexer().getKind()) {
    default: return true;
    case AsmToken::Identifier:
      RegNo = MatchRegisterName(getLexer().getTok().getIdentifier());
      if (RegNo == 0)
        return true;
      getLexer().Lex();
      Operands.push_back(OR1KOperand::createReg(RegNo, S, E));
      return false;
  }
}

bool OR1KAsmParser::ParseRegister(unsigned &RegNo,
                                  SMLoc &StartLoc, SMLoc &EndLoc) {
  SmallVector<std::unique_ptr<MCParsedAsmOperand>, 1> Operands;
  if (ParseRegister(RegNo, Operands)) {
    OR1KOperand &Operand = static_cast<OR1KOperand &>(*Operands.front());
    StartLoc = Operand.getStartLoc();
    EndLoc = Operand.getEndLoc();
    return false;
  } else {
    return true;
  }
}

bool OR1KAsmParser::ParseImmediate(OperandVector &Operands) {
  SMLoc S = Parser.getTok().getLoc();
  SMLoc E = SMLoc::getFromPointer(Parser.getTok().getLoc().getPointer() -1);

  const MCExpr *EVal;
  switch(getLexer().getKind()) {
    default: return true;
    case AsmToken::LParen:
    case AsmToken::Plus:
    case AsmToken::Minus:
    case AsmToken::Integer:
      if(getParser().parseExpression(EVal))
        return true;

      Operands.push_back(OR1KOperand::createImm(EVal, S, E));
      return false;
  }
}

MCSymbolRefExpr::VariantKind OR1KAsmParser::getVariantKind(StringRef Symbol) {
  MCSymbolRefExpr::VariantKind VK =
      StringSwitch<MCSymbolRefExpr::VariantKind>(Symbol)
          .Case("hi", MCSymbolRefExpr::VK_OR1K_ABS_HI)
          .Case("lo", MCSymbolRefExpr::VK_OR1K_ABS_LO)
          .Case("plt", MCSymbolRefExpr::VK_OR1K_PLT)
          .Case("got", MCSymbolRefExpr::VK_OR1K_GOT)
          .Case("gotpchi", MCSymbolRefExpr::VK_OR1K_GOTPCHI)
          .Case("gotpclo", MCSymbolRefExpr::VK_OR1K_GOTPCLO)
          .Case("gotoffhi", MCSymbolRefExpr::VK_OR1K_GOTOFFHI)
          .Case("gotofflo", MCSymbolRefExpr::VK_OR1K_GOTOFFLO)
          .Default(MCSymbolRefExpr::VK_None);

  return VK;
}

const MCExpr *OR1KAsmParser::evaluateRelocExpr(const MCExpr *Expr,
                                               MCSymbolRefExpr::VariantKind VK) {
  // Check the type of the expression.
  if (const MCConstantExpr *MCE = dyn_cast<MCConstantExpr>(Expr)) {
    // It's a constant, evaluate lo or hi value.
    if (VK == MCSymbolRefExpr::VK_OR1K_ABS_LO) {
      short Val = MCE->getValue();
      return MCConstantExpr::create(Val, getContext());
    } else if (MCSymbolRefExpr::VK_OR1K_ABS_HI) {
      int Val = MCE->getValue();
      int LoSign = Val & 0x8000;
      Val = (Val & 0xffff0000) >> 16;
      // Lower part is treated as a signed int, so if it is negative
      // we must add 1 to the hi part to compensate.
      if (LoSign)
        Val++;
      return MCConstantExpr::create(Val, getContext());
    } else {
      return nullptr;
    }
  }

  if (const MCSymbolRefExpr *MSRE = dyn_cast<MCSymbolRefExpr>(Expr)) {
    // It's a symbol, create a symbolic expression from the symbol.
    StringRef Symbol = MSRE->getSymbol().getName();
    return MCSymbolRefExpr::create(Symbol, VK, getContext());
  }

  if (const MCBinaryExpr *BE = dyn_cast<MCBinaryExpr>(Expr)) {
    // It's a binary expression, map operands.
    const MCExpr *LExp = evaluateRelocExpr(BE->getLHS(), VK);
    const MCExpr *RExp = evaluateRelocExpr(BE->getRHS(), VK);
    return MCBinaryExpr::create(BE->getOpcode(), LExp, RExp, getContext());
  }

  if (const MCUnaryExpr *UN = dyn_cast<MCUnaryExpr>(Expr)) {
    // It's an unary expression, map operand.
    const MCExpr *UnExp = evaluateRelocExpr(UN->getSubExpr(), VK);
    return MCUnaryExpr::create(UN->getOpcode(), UnExp, getContext());
  }

  return nullptr;
}

bool OR1KAsmParser::ParseSymbolReference(OperandVector &Operands) {
  SMLoc S = Parser.getTok().getLoc();
  StringRef Identifier;
  if (Parser.parseIdentifier(Identifier))
    return true;

  SMLoc E = SMLoc::getFromPointer(Parser.getTok().getLoc().getPointer() - 1);
  MCSymbolRefExpr::VariantKind VK = getVariantKind(Identifier);
  if(VK != MCSymbolRefExpr::VK_None) {
    // Parse a relocation expression.
    SMLoc ExprS = Parser.getTok().getLoc();
    if(getLexer().isNot(AsmToken::LParen))
      return Error(Parser.getTok().getLoc(),
                   "expected a parenthesized expression");
    getLexer().Lex();

    const MCExpr *EVal;
    if(getParser().parseExpression(EVal))
      return true;

    SMLoc ExprE = Parser.getTok().getLoc();
    if(getLexer().isNot(AsmToken::RParen))
      return Error(ExprE, "expected a closing parenthesis");
    getLexer().Lex();

    const MCExpr *Res = evaluateRelocExpr(EVal, VK);
    if(!Res)
      return Error(ExprS, "unsupported relocation expression");

    Operands.push_back(OR1KOperand::createImm(Res, S, ExprE));
    return false;
  } else {
    // Parse a symbol
    MCSymbol *Sym = getContext().getOrCreateSymbol(Identifier);
    const MCExpr *Res =
        MCSymbolRefExpr::create(Sym, MCSymbolRefExpr::VK_None, getContext());
    Operands.push_back(OR1KOperand::createImm(Res, S, E));
    return false;
  }
}

/// Looks at a token type and creates the relevant operand
/// from this information, adding to Operands.
/// If operand was parsed, returns false, else true.
bool OR1KAsmParser::ParseOperand(OperandVector &Operands) {
  // A register operand is always alone.
  unsigned RegNo;
  if (!ParseRegister(RegNo, Operands))
    return false;

  // An immediate or expression operand can be alone or followed
  // by a base register.
  SMLoc S = getLexer().getTok().getLoc();
  if (!ParseImmediate(Operands) || !ParseSymbolReference(Operands)) {
    // Try parsing a base register.
    if(getLexer().is(AsmToken::LParen)) {
      getLexer().Lex();

      if(getLexer().is(AsmToken::Identifier)) {
        unsigned BaseNum;
        BaseNum = MatchRegisterName(getLexer().getTok().getIdentifier());
        if(BaseNum != 0) {
          getLexer().Lex();

          if(getLexer().is(AsmToken::RParen)) {
            getLexer().Lex();

            // We have a memory operand. Grab the offset from an immediate
            // operand we parsed earlier and put it in a memory operand.
            std::unique_ptr<OR1KOperand> Off(
                static_cast<OR1KOperand *>(Operands.back().release()));
            Operands.pop_back();

            SMLoc E = getLexer().getTok().getLoc();
            Operands.push_back(OR1KOperand::CreateMem(BaseNum, Off->getImm(), S, E));
            return false;
          }
        }
      }
    } else {
      // Just an immediate or expression.
      return false;
    }
  }

  return Error(S, "unsupported operand");
}

bool OR1KAsmParser::ParseInstruction(ParseInstructionInfo &Info,
                                     StringRef Name,
                                     SMLoc NameLoc,
                                     OperandVector &Operands) {
  // First operand is token for instruction
  Operands.push_back(OR1KOperand::CreateToken(Name, NameLoc));

  // If there are no more operands, then finish
  if (getLexer().is(AsmToken::EndOfStatement))
    return false;

  // Parse first operand
  if (ParseOperand(Operands))
    return true;

  // Parse until end of statement, consuming commas between operands
  while (getLexer().isNot(AsmToken::EndOfStatement) &&
        getLexer().is(AsmToken::Comma)) {
    // Consume comma token
    getLexer().Lex();

    // Parse next operand
    if(ParseOperand(Operands))
      return true;
  }

  if (getLexer().isNot(AsmToken::EndOfStatement))
    return Error(getLexer().getTok().getLoc(),
                 "unexpected token in operand list");

  return false;
}

bool OR1KAsmParser::
ParseDirective(AsmToken DirectiveID) {
  return true;
}

extern "C" void LLVMInitializeOR1KAsmParser() {
  RegisterMCAsmParser<OR1KAsmParser> X(TheOR1KTarget);
}

#define GET_REGISTER_MATCHER
#define GET_MATCHER_IMPLEMENTATION
#include "OR1KGenAsmMatcher.inc"
