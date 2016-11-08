//===-- OR1KISelLowering.cpp - OR1K DAG Lowering Implementation  ----------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements the OR1KTargetLowering class.
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "or1k-lower"

#include "OR1KISelLowering.h"
#include "OR1K.h"
#include "OR1KMachineFunctionInfo.h"
#include "OR1KTargetMachine.h"
#include "OR1KSubtarget.h"
#include "llvm/CodeGen/CallingConvLower.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/SelectionDAGISel.h"
#include "llvm/CodeGen/TargetLoweringObjectFileImpl.h"
#include "llvm/CodeGen/ValueTypes.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Intrinsics.h"
#include "llvm/IR/CallingConv.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/GlobalAlias.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;

OR1KTargetLowering::OR1KTargetLowering(const OR1KTargetMachine &TM,
                                       const OR1KSubtarget &STI) :
    TargetLowering(TM), Subtarget(STI) {

  // Set up the register classes.
  addRegisterClass(MVT::i32, &OR1K::GPRRegClass);
  if (!useSoftFloat())
    addRegisterClass(MVT::f32, &OR1K::GPRRegClass);

  // Compute derived properties from the register classes
  computeRegisterProperties(STI.getRegisterInfo());

  setStackPointerRegisterToSaveRestore(OR1K::R1);

  setOperationAction(ISD::BR_CC,               MVT::i32,   Custom);
  setOperationAction(ISD::BR_CC,               MVT::f32,   Custom);
  setOperationAction(ISD::BR_JT,               MVT::Other, Expand);
  setOperationAction(ISD::BRCOND,              MVT::Other, Expand);
  setOperationAction(ISD::SETCC,               MVT::i32,   Expand);
  setOperationAction(ISD::SETCC,               MVT::f32,   Expand);
  setOperationAction(ISD::SELECT,              MVT::i32,   Expand);
  setOperationAction(ISD::SELECT,              MVT::f32,   Expand);
  setOperationAction(ISD::SELECT_CC,           MVT::i32,   Custom);
  setOperationAction(ISD::SELECT_CC,           MVT::f32,   Custom);

  setOperationAction(ISD::GlobalAddress,       MVT::i32,   Custom);
  setOperationAction(ISD::BlockAddress,        MVT::i32,   Custom);
  setOperationAction(ISD::JumpTable,           MVT::i32,   Custom);
  setOperationAction(ISD::ConstantPool,        MVT::i32,   Custom);
  if (!useSoftFloat())
    setOperationAction(ISD::ConstantFP,        MVT::f32,   Legal);

  setOperationAction(ISD::DYNAMIC_STACKALLOC,  MVT::i32,   Custom);
  setOperationAction(ISD::STACKSAVE,           MVT::Other, Expand);
  setOperationAction(ISD::STACKRESTORE,        MVT::Other, Expand);

  setOperationAction(ISD::VASTART,             MVT::Other, Custom);
  setOperationAction(ISD::VAARG,               MVT::Other, Expand);
  setOperationAction(ISD::VACOPY,              MVT::Other, Expand);
  setOperationAction(ISD::VAEND,               MVT::Other, Expand);

  if (!Subtarget.hasDiv()) {
    setOperationAction(ISD::SDIV,              MVT::i32,   Expand);
    setOperationAction(ISD::UDIV,              MVT::i32,   Expand);
  }
  setOperationAction(ISD::SDIVREM,             MVT::i32,   Expand);
  setOperationAction(ISD::UDIVREM,             MVT::i32,   Expand);
  setOperationAction(ISD::SREM,                MVT::i32,   Expand);
  setOperationAction(ISD::UREM,                MVT::i32,   Expand);

  if (!Subtarget.hasMul())
    setOperationAction(ISD::MUL,               MVT::i32,   Expand);
  setOperationAction(ISD::MULHU,               MVT::i32,   Expand);
  setOperationAction(ISD::MULHU,               MVT::f32,   Expand);
  setOperationAction(ISD::MULHS,               MVT::i32,   Expand);
  setOperationAction(ISD::MULHS,               MVT::f32,   Expand);
  setOperationAction(ISD::UMUL_LOHI,           MVT::i32,   Expand);
  setOperationAction(ISD::UMUL_LOHI,           MVT::f32,   Expand);
  setOperationAction(ISD::SMUL_LOHI,           MVT::i32,   Expand);
  setOperationAction(ISD::SMUL_LOHI,           MVT::f32,   Expand);

  if (!Subtarget.hasAddc()) {
    setOperationAction(ISD::ADDE,              MVT::i32,   Expand);
    setOperationAction(ISD::ADDC,              MVT::i32,   Expand);
    setOperationAction(ISD::SUBE,              MVT::i32,   Expand);
    setOperationAction(ISD::SUBC,              MVT::i32,   Expand);
  } else {
    setOperationAction(ISD::SUBE,              MVT::i32,   Custom);
  }

  if (!Subtarget.hasRor())
    setOperationAction(ISD::ROTR,              MVT::i32,   Expand);
  // FIXME: use l.ror (rotate right) to do rotate left
  setOperationAction(ISD::ROTL,                MVT::i32,   Expand);
  setOperationAction(ISD::SHL_PARTS,           MVT::i32,   Expand);
  setOperationAction(ISD::SRL_PARTS,           MVT::i32,   Expand);
  setOperationAction(ISD::SRA_PARTS,           MVT::i32,   Expand);

  setOperationAction(ISD::BSWAP,               MVT::i32,   Expand);
  setOperationAction(ISD::CTPOP,               MVT::i32,   Expand);

  if (!Subtarget.hasFfl1()) {
    setOperationAction(ISD::CTTZ,              MVT::i32,   Expand);
    setOperationAction(ISD::CTLZ,              MVT::i32,   Expand);
  } else {
    setOperationAction(ISD::CTTZ,              MVT::i32,   Custom);
    setOperationAction(ISD::CTTZ_ZERO_UNDEF,   MVT::i32,   Custom);
    setOperationAction(ISD::CTLZ,              MVT::i32,   Custom);
    setOperationAction(ISD::CTLZ_ZERO_UNDEF,   MVT::i32,   Custom);
  }

  setOperationAction(ISD::SIGN_EXTEND_INREG,   MVT::i1,    Expand);
  if (!Subtarget.hasExt()) {
    setOperationAction(ISD::SIGN_EXTEND_INREG, MVT::i8,    Expand);
    setOperationAction(ISD::SIGN_EXTEND_INREG, MVT::i16,   Expand);
  }

  for (MVT VT : MVT::integer_valuetypes()) {
    // Extended load operations for i1 types must be promoted
    setLoadExtAction(ISD::EXTLOAD,         VT, MVT::i1,    Promote);
    setLoadExtAction(ISD::ZEXTLOAD,        VT, MVT::i1,    Promote);
    setLoadExtAction(ISD::SEXTLOAD,        VT, MVT::i1,    Promote);
  }

  setOperationAction(ISD::FP_TO_UINT,          MVT::i32,   Expand);
  setOperationAction(ISD::UINT_TO_FP,          MVT::i32,   Expand);

  // Function alignments (log2)
  setMinFunctionAlignment(2);
  setPrefFunctionAlignment(2);

  MaxStoresPerMemcpy = 16;
  MaxStoresPerMemcpyOptSize = 8;
  MaxStoresPerMemset = 16;
}

bool OR1KTargetLowering::useSoftFloat() const {
  return getTargetMachine().Options.FloatABIType != FloatABI::Hard;
}

unsigned
OR1KTargetLowering::getExceptionPointerRegister(const Constant *
                                                PersonalityFn) const {
  return OR1K::R3;
}

unsigned
OR1KTargetLowering::getExceptionSelectorRegister(const Constant *
                                                 PersonalityFn) const {
  return OR1K::R4;
}

SDValue OR1KTargetLowering::LowerOperation(SDValue Op,
                                           SelectionDAG &DAG) const {
  switch (Op.getOpcode()) {
  case ISD::BR_CC:              return LowerBR_CC(Op, DAG);
  case ISD::ConstantPool:       return LowerConstantPool(Op, DAG);
  case ISD::GlobalAddress:      return LowerGlobalAddress(Op, DAG);
  case ISD::BlockAddress:       return LowerBlockAddress(Op, DAG);
  case ISD::JumpTable:          return LowerJumpTable(Op, DAG);
  case ISD::SELECT_CC:          return LowerSELECT_CC(Op, DAG);
  case ISD::VASTART:            return LowerVASTART(Op, DAG);
  case ISD::DYNAMIC_STACKALLOC: return LowerDYNAMIC_STACKALLOC(Op, DAG);
  case ISD::CTTZ:               return LowerCTTZ(Op, DAG);
  case ISD::CTTZ_ZERO_UNDEF:    return LowerCTTZ_ZERO_UNDEF(Op, DAG);
  case ISD::CTLZ:               // fall through
  case ISD::CTLZ_ZERO_UNDEF:    return LowerCTLZ(Op, DAG);
  case ISD::RETURNADDR:         return LowerRETURNADDR(Op, DAG);
  case ISD::FRAMEADDR:          return LowerFRAMEADDR(Op, DAG);
  case ISD::SUBE:               return LowerSUBE(Op, DAG);
  default:
    llvm_unreachable("unimplemented operand");
  }
}
//===----------------------------------------------------------------------===//
//                       OR1K Inline Assembly Support
//===----------------------------------------------------------------------===//
std::pair<unsigned, const TargetRegisterClass *>
OR1KTargetLowering::getRegForInlineAsmConstraint(const TargetRegisterInfo *TRI,
                                                 StringRef Constraint,
                                                 MVT VT) const {
  if (Constraint.size() == 1) {
    // GCC Constraint Letters
    switch (Constraint[0]) {
    default: break;
    case 'r':   // GENERAL_REGS
      return std::make_pair(0U, &OR1K::GPRRegClass);
    }
  }

  return TargetLowering::getRegForInlineAsmConstraint(TRI, Constraint, VT);
}

/// Examine constraint type and operand type and determine a weight value.
/// This object must already have been set up with the operand type
/// and the current alternative constraint selected.
TargetLowering::ConstraintWeight
OR1KTargetLowering::getSingleConstraintMatchWeight(
    AsmOperandInfo &info, const char *constraint) const {
  ConstraintWeight weight = CW_Invalid;
  Value *CallOperandVal = info.CallOperandVal;
    // If we don't have a value, we can't do a match,
    // but allow it at the lowest weight.
  if (CallOperandVal == NULL)
    return CW_Default;
  // Look at the constraint type.
  switch (*constraint) {
  default:
    weight = TargetLowering::getSingleConstraintMatchWeight(info, constraint);
    break;
  case 'I': // signed 16 bit immediate
  case 'J': // integer zero
  case 'K': // unsigned 16 bit immediate
  case 'L': // immediate in the range 0 to 31
  case 'M': // signed 32 bit immediate where lower 16 bits are 0
  case 'N': // signed 26 bit immediate
  case 'O': // integer zero
    if (isa<ConstantInt>(CallOperandVal))
      weight = CW_Constant;
    break;
  }
  return weight;
}

/// LowerAsmOperandForConstraint - Lower the specified operand into the Ops
/// vector.  If it is invalid, don't add anything to Ops.
void OR1KTargetLowering::LowerAsmOperandForConstraint(SDValue Op,
                                                      std::string &Constraint,
                                                      std::vector<SDValue>&Ops,
                                                      SelectionDAG &DAG) const {
  SDLoc dl(Op);
  SDValue Result(0, 0);

  // Only support length 1 constraints for now.
  if (Constraint.length() > 1) return;

  char ConstraintLetter = Constraint[0];
  switch (ConstraintLetter) {
  default: break; // This will fall through to the generic implementation
  case 'I': // Signed 16 bit constant
    // If this fails, the parent routine will give an error
    if (ConstantSDNode *C = dyn_cast<ConstantSDNode>(Op)) {
      if (isInt<16>(C->getSExtValue())) {
        Result = DAG.getTargetConstant(C->getSExtValue(), dl, Op.getValueType());
        break;
      }
    }
    return;
  case 'J': // integer zero
  case 'O':
    if (ConstantSDNode *C = dyn_cast<ConstantSDNode>(Op)) {
      if (C->getZExtValue() == 0) {
        Result = DAG.getTargetConstant(0, dl, Op.getValueType());
        break;
      }
    }
    return;
  case 'K': // unsigned 16 bit immediate
    if (ConstantSDNode *C = dyn_cast<ConstantSDNode>(Op)) {
      if (isUInt<16>(C->getZExtValue())) {
        Result = DAG.getTargetConstant(C->getSExtValue(), dl, Op.getValueType());
        break;
      }
    }
    return;
  case 'L': // immediate in the range 0 to 31
    if (ConstantSDNode *C = dyn_cast<ConstantSDNode>(Op)) {
      if (C->getZExtValue() <= 31) {
        Result = DAG.getTargetConstant(C->getZExtValue(), dl, Op.getValueType());
        break;
      }
    }
    return;
  case 'M': // signed 32 bit immediate where lower 16 bits are 0
    if (ConstantSDNode *C = dyn_cast<ConstantSDNode>(Op)) {
      int64_t Val = C->getSExtValue();
      if ((isInt<32>(Val)) && ((Val & 0xffff) == 0)) {
        Result = DAG.getTargetConstant(Val, dl, Op.getValueType());
        break;
      }
    }
    return;
  case 'N': // signed 26 bit immediate
    if (ConstantSDNode *C = dyn_cast<ConstantSDNode>(Op)) {
      int64_t Val = C->getSExtValue();
      if ((Val >= -33554432) && (Val <= 33554431)) {
        Result = DAG.getTargetConstant(Val, dl, Op.getValueType());
        break;
      }
    }
    return;
  }

  if (Result.getNode()) {
    Ops.push_back(Result);
    return;
  }

  TargetLowering::LowerAsmOperandForConstraint(Op, Constraint, Ops, DAG);
}

//===----------------------------------------------------------------------===//
//                      Calling Convention Implementation
//===----------------------------------------------------------------------===//

#include "OR1KGenCallingConv.inc"

static unsigned NumFixedArgs;
static bool CC_OR1K32_VarArg(unsigned ValNo, MVT ValVT,
                             MVT LocVT, CCValAssign::LocInfo LocInfo,
                             ISD::ArgFlagsTy ArgFlags, CCState &State) {
  // Handle fixed arguments with default CC
  if (ValNo < NumFixedArgs)
    return CC_OR1K32(ValNo, ValVT, LocVT, LocInfo, ArgFlags, State);

  // Promote i8/i16 args to i32
  if (LocVT == MVT::i8 ||
      LocVT == MVT::i16) {
    LocVT = MVT::i32;
    if (ArgFlags.isSExt())
        LocInfo = CCValAssign::SExt;
    else if (ArgFlags.isZExt())
        LocInfo = CCValAssign::ZExt;
    else
        LocInfo = CCValAssign::AExt;
  }

  // VarArgs get passed on stack
  unsigned Offset = State.AllocateStack(4, 4);
  State.addLoc(CCValAssign::getMem(ValNo, ValVT, Offset, LocVT, LocInfo));
  return false;
}

static SDValue getGlobalReg(SelectionDAG &DAG, EVT Ty) {
  OR1KMachineFunctionInfo *MFI =
    DAG.getMachineFunction().getInfo<OR1KMachineFunctionInfo>();
  return DAG.getRegister(MFI->getGlobalBaseReg(), Ty);
}

SDValue
OR1KTargetLowering::LowerFormalArguments(SDValue Chain,
                                         CallingConv::ID CallConv,
                                         bool isVarArg,
                                         const SmallVectorImpl<ISD::InputArg>
                                         &Ins,
                                         const SDLoc &dl,
                                         SelectionDAG &DAG,
                                         SmallVectorImpl<SDValue> &InVals)
                                           const {

  switch (CallConv) {
  default:
    llvm_unreachable("Unsupported calling convention");
  case CallingConv::C:
  case CallingConv::Fast:
    return LowerCCCArguments(Chain, CallConv, isVarArg, Ins, dl, DAG, InVals);
  }
}

SDValue
OR1KTargetLowering::LowerCall(TargetLowering::CallLoweringInfo &CLI,
                              SmallVectorImpl<SDValue> &InVals) const {
  SelectionDAG &DAG                     = CLI.DAG;
  SDLoc &dl                             = CLI.DL;
  SmallVector<ISD::OutputArg, 32> &Outs = CLI.Outs;
  SmallVector<SDValue, 32> &OutVals     = CLI.OutVals;
  SmallVector<ISD::InputArg, 32> &Ins   = CLI.Ins;
  SDValue Chain                         = CLI.Chain;
  SDValue Callee                        = CLI.Callee;
  bool &isTailCall                      = CLI.IsTailCall;
  CallingConv::ID CallConv              = CLI.CallConv;
  bool isVarArg                         = CLI.IsVarArg;

  // OR1K target does not yet support tail call optimization.
  isTailCall = false;

  switch (CallConv) {
  default:
    llvm_unreachable("Unsupported calling convention");
  case CallingConv::Fast:
  case CallingConv::C:
    return LowerCCCCallTo(Chain, Callee, CallConv, isVarArg, isTailCall,
                          Outs, OutVals, Ins, dl, DAG, InVals);
  }
}

/// LowerCCCArguments - transform physical registers into virtual registers and
/// generate load operations for arguments places on the stack.
SDValue
OR1KTargetLowering::LowerCCCArguments(SDValue Chain,
                                      CallingConv::ID CallConv,
                                      bool isVarArg,
                                      const SmallVectorImpl<ISD::InputArg>
                                      &Ins,
                                      SDLoc dl,
                                      SelectionDAG &DAG,
                                      SmallVectorImpl<SDValue> &InVals) const {
  MachineFunction &MF = DAG.getMachineFunction();
  MachineFrameInfo *MFI = MF.getFrameInfo();
  MachineRegisterInfo &RegInfo = MF.getRegInfo();
  OR1KMachineFunctionInfo *OR1KMFI = MF.getInfo<OR1KMachineFunctionInfo>();

  // Assign locations to all of the incoming arguments.
  SmallVector<CCValAssign, 16> ArgLocs;
  CCState CCInfo(CallConv, isVarArg, DAG.getMachineFunction(),
                 ArgLocs, *DAG.getContext());
  CCInfo.AnalyzeFormalArguments(Ins, CC_OR1K32);

  for (unsigned i = 0, e = ArgLocs.size(); i != e; ++i) {
    CCValAssign &VA = ArgLocs[i];
    if (VA.isRegLoc()) {
      // Arguments passed in registers
      EVT RegVT = VA.getLocVT();
      switch (RegVT.getSimpleVT().SimpleTy) {
      default:
        {
#ifndef NDEBUG
          errs() << "LowerFormalArguments Unhandled argument type: "
                 << RegVT.getEVTString() << "\n";
#endif
          llvm_unreachable(0);
        }
      case MVT::i32:
      case MVT::f32:
        unsigned VReg = RegInfo.createVirtualRegister(&OR1K::GPRRegClass);
        RegInfo.addLiveIn(VA.getLocReg(), VReg);
        SDValue ArgValue = DAG.getCopyFromReg(Chain, dl, VReg, RegVT);

        // If this is an 8/16-bit value, it is really passed promoted to 32
        // bits. Insert an assert[sz]ext to capture this, then truncate to the
        // right size.
        if (VA.getLocInfo() == CCValAssign::SExt)
          ArgValue = DAG.getNode(ISD::AssertSext, dl, RegVT, ArgValue,
                                 DAG.getValueType(VA.getValVT()));
        else if (VA.getLocInfo() == CCValAssign::ZExt)
          ArgValue = DAG.getNode(ISD::AssertZext, dl, RegVT, ArgValue,
                                 DAG.getValueType(VA.getValVT()));

        if (VA.getLocInfo() != CCValAssign::Full)
          ArgValue = DAG.getNode(ISD::TRUNCATE, dl, VA.getValVT(), ArgValue);

        InVals.push_back(ArgValue);
      }
    } else {
      // Sanity check
      assert(VA.isMemLoc());
      // Load the argument to a virtual register
      unsigned ObjSize = VA.getLocVT().getSizeInBits()/8;
      // Check that the argument fits in stack slot
      if (ObjSize > 4) {
        errs() << "LowerFormalArguments Unhandled argument type: "
             << EVT(VA.getLocVT()).getEVTString()
             << "\n";
      }
      // Create the frame index object for this incoming parameter...
      int FI = MFI->CreateFixedObject(ObjSize, VA.getLocMemOffset(),
                                      /*Immutable=*/true);

      // Create the SelectionDAG nodes corresponding to a load
      //from this parameter
      SDValue FIN = DAG.getFrameIndex(FI, MVT::i32);
      InVals.push_back(DAG.getLoad(VA.getLocVT(), dl, Chain, FIN,
                                   MachinePointerInfo::getFixedStack(MF, FI)));
    }
  }

  // The OR1K ABI for returning structs by value requires that we copy
  // the sret argument into r11 for the return. Save the argument into
  // a virtual register so that we can access it from the return points.
  if (MF.getFunction()->hasStructRetAttr()) {
    unsigned Reg = OR1KMFI->getSRetReturnReg();
    if (!Reg) {
      Reg = MF.getRegInfo().createVirtualRegister(getRegClassFor(MVT::i32));
      OR1KMFI->setSRetReturnReg(Reg);
    }
    SDValue Copy = DAG.getCopyToReg(DAG.getEntryNode(), dl, Reg, InVals[0]);
    Chain = DAG.getNode(ISD::TokenFactor, dl, MVT::Other, Copy, Chain);
  }

  if (isVarArg) {
    // Record the frame index of the first variable argument
    // which is a value necessary to VASTART.
    int FI = MFI->CreateFixedObject(4, CCInfo.getNextStackOffset(), true);
    OR1KMFI->setVarArgsFrameIndex(FI);
  }

  return Chain;
}

SDValue
OR1KTargetLowering::LowerReturn(SDValue Chain,
                                CallingConv::ID CallConv, bool isVarArg,
                                const SmallVectorImpl<ISD::OutputArg> &Outs,
                                const SmallVectorImpl<SDValue> &OutVals,
                                const SDLoc &dl, SelectionDAG &DAG) const {

  // CCValAssign - represent the assignment of the return value to a location
  SmallVector<CCValAssign, 16> RVLocs;

  // CCState - Info about the registers and stack slot.
  CCState CCInfo(CallConv, isVarArg, DAG.getMachineFunction(),
                 RVLocs, *DAG.getContext());

  // Analize return values.
  CCInfo.AnalyzeReturn(Outs, RetCC_OR1K32);

  SDValue Flag;
  SmallVector<SDValue, 4> RetOps(1, Chain);

  // Copy the result values into the output registers.
  for (unsigned i = 0; i != RVLocs.size(); ++i) {
    CCValAssign &VA = RVLocs[i];
    assert(VA.isRegLoc() && "Can only return in registers!");

    Chain = DAG.getCopyToReg(Chain, dl, VA.getLocReg(),
                             OutVals[i], Flag);

    // Guarantee that all emitted copies are stuck together with flags.
    Flag = Chain.getValue(1);
    RetOps.push_back(DAG.getRegister(VA.getLocReg(), VA.getLocVT()));
  }

  // The OR1K ABI for returning structs by value requires that we copy
  // the sret argument into r11 for the return. We saved the argument into
  // a virtual register in the entry block, so now we copy the value out
  // and into r11.
  if (DAG.getMachineFunction().getFunction()->hasStructRetAttr()) {
    MachineFunction &MF = DAG.getMachineFunction();
    OR1KMachineFunctionInfo *OR1KMFI = MF.getInfo<OR1KMachineFunctionInfo>();
    auto PtrVT = getPointerTy(DAG.getDataLayout());

    unsigned Reg = OR1KMFI->getSRetReturnReg();
    assert(Reg &&
           "SRetReturnReg should have been set in LowerFormalArguments().");
    SDValue Val = DAG.getCopyFromReg(Chain, dl, Reg, PtrVT);

    Chain = DAG.getCopyToReg(Chain, dl, OR1K::R11, Val, Flag);
    Flag = Chain.getValue(1);
    RetOps.push_back(DAG.getRegister(OR1K::R11, PtrVT));
  }

  RetOps[0] = Chain; // Update chain

  if (Flag.getNode())
    RetOps.push_back(Flag);

  // Return Void
  return DAG.getNode(OR1KISD::RET_FLAG, dl, MVT::Other, RetOps);
}

/// LowerCCCCallTo - functions arguments are copied from virtual regs to
/// (physical regs)/(stack frame), CALLSEQ_START and CALLSEQ_END are emitted.
SDValue
OR1KTargetLowering::LowerCCCCallTo(SDValue Chain, SDValue Callee,
                                   CallingConv::ID CallConv, bool isVarArg,
                                   bool isTailCall,
                                   const SmallVectorImpl<ISD::OutputArg> &Outs,
                                   const SmallVectorImpl<SDValue> &OutVals,
                                   const SmallVectorImpl<ISD::InputArg> &Ins,
                                   SDLoc dl, SelectionDAG &DAG,
                                   SmallVectorImpl<SDValue> &InVals) const {
  // Analyze operands of the call, assigning locations to each operand.
  SmallVector<CCValAssign, 16> ArgLocs;
  CCState CCInfo(CallConv, isVarArg, DAG.getMachineFunction(),
                 ArgLocs, *DAG.getContext());
  GlobalAddressSDNode *G = dyn_cast<GlobalAddressSDNode>(Callee);
  MachineFrameInfo *MFI = DAG.getMachineFunction().getFrameInfo();
  bool IsPIC = getTargetMachine().getRelocationModel() == Reloc::PIC_;
  auto PtrVT = getPointerTy(DAG.getDataLayout());

  if (isVarArg) {
    NumFixedArgs = Outs.size();
    for(unsigned i = 0, e = Outs.size(); i != e; ++i) {
      if(!Outs[i].IsFixed) {
        NumFixedArgs = i;
        break;
      }
    }
    CCInfo.AnalyzeCallOperands(Outs, CC_OR1K32_VarArg);
  } else {
    CCInfo.AnalyzeCallOperands(Outs, CC_OR1K32);
  }

  // Get a count of how many bytes are to be pushed on the stack.
  unsigned NumBytes = CCInfo.getNextStackOffset();

  // Create local copies for byval args.
  SmallVector<SDValue, 8> ByValArgs;
  for (unsigned i = 0,  e = Outs.size(); i != e; ++i) {
    ISD::ArgFlagsTy Flags = Outs[i].Flags;
    if (!Flags.isByVal())
      continue;

    SDValue Arg = OutVals[i];
    unsigned Size = Flags.getByValSize();
    unsigned Align = Flags.getByValAlign();

    int FI = MFI->CreateStackObject(Size, Align, /*isSS=*/false);
    SDValue FIPtr = DAG.getFrameIndex(FI, PtrVT);
    SDValue SizeNode = DAG.getConstant(Size, dl, MVT::i32);

    Chain = DAG.getMemcpy(Chain, dl, FIPtr, Arg, SizeNode, Align,
                          /*isVolatile=*/false,
                          /*AlwaysInline=*/false,
                          /*isTailCall=*/false,
                          MachinePointerInfo(), MachinePointerInfo());
    ByValArgs.push_back(FIPtr);
  }

  Chain = DAG.getCALLSEQ_START(Chain,
                               DAG.getConstant(NumBytes, dl, PtrVT,
                                               /*isTarget=*/true),
                               dl);

  SmallVector<std::pair<unsigned, SDValue>, 4> RegsToPass;
  SmallVector<SDValue, 12> MemOpChains;
  SDValue StackPtr;

  // Walk the register/memloc assignments, inserting copies/loads.
  for (unsigned i = 0, j = 0, e = ArgLocs.size(); i != e; ++i) {
    CCValAssign &VA = ArgLocs[i];
    SDValue Arg = OutVals[i];
    ISD::ArgFlagsTy Flags = Outs[i].Flags;

    // Promote the value if needed.
    switch (VA.getLocInfo()) {
      default: llvm_unreachable("Unknown loc info!");
      case CCValAssign::Full: break;
      case CCValAssign::SExt:
        Arg = DAG.getNode(ISD::SIGN_EXTEND, dl, VA.getLocVT(), Arg);
        break;
      case CCValAssign::ZExt:
        Arg = DAG.getNode(ISD::ZERO_EXTEND, dl, VA.getLocVT(), Arg);
        break;
      case CCValAssign::AExt:
        Arg = DAG.getNode(ISD::ANY_EXTEND, dl, VA.getLocVT(), Arg);
        break;
    }

    // Use local copy if it is a byval arg.
    if (Flags.isByVal())
      Arg = ByValArgs[j++];

    // Arguments that can be passed on register must be kept at RegsToPass
    // vector
    if (VA.isRegLoc()) {
      RegsToPass.push_back(std::make_pair(VA.getLocReg(), Arg));
    } else {
      assert(VA.isMemLoc());

      if (StackPtr.getNode() == 0)
        StackPtr = DAG.getCopyFromReg(Chain, dl, OR1K::R1, PtrVT);

      SDValue PtrOff = DAG.getNode(ISD::ADD, dl, PtrVT,
                                   StackPtr,
                                   DAG.getIntPtrConstant(VA.getLocMemOffset(),
                                                         dl));


      MemOpChains.push_back(DAG.getStore(Chain, dl, Arg, PtrOff,
                                         MachinePointerInfo()));
    }
  }

  // Transform all store nodes into one single node because all store nodes are
  // independent of each other.
  if (!MemOpChains.empty())
    Chain = DAG.getNode(ISD::TokenFactor, dl, MVT::Other, MemOpChains);

  SDValue InFlag;
  // .plt stubs expects a pointer to GOT in r16, so insert a copy
  // from the global base reg to it
  if (IsPIC) {
    unsigned GPReg = OR1K::R16;
    Chain = DAG.getCopyToReg(Chain, dl, GPReg,
                             getGlobalReg(DAG, PtrVT), InFlag);
    InFlag = Chain.getValue(1);
  }

  // Build a sequence of copy-to-reg nodes chained together with token chain and
  // flag operands which copy the outgoing args into registers.  The InFlag in
  // necessary since all emitted instructions must be stuck together.
  for (unsigned i = 0, e = RegsToPass.size(); i != e; ++i) {
    Chain = DAG.getCopyToReg(Chain, dl, RegsToPass[i].first,
                             RegsToPass[i].second, InFlag);
    InFlag = Chain.getValue(1);
  }

  // If the callee is a GlobalAddress node (quite common, every direct call is)
  // turn it into a TargetGlobalAddress node so that legalize doesn't hack it.
  // Likewise ExternalSymbol -> TargetExternalSymbol.
  uint8_t OpFlag = IsPIC ? OR1KII::MO_PLT : OR1KII::MO_NO_FLAG;
  if (G) {
    Callee = DAG.getTargetGlobalAddress(G->getGlobal(), dl, PtrVT, /*offset=*/0,
                                        OpFlag);
  } else if (ExternalSymbolSDNode *E = dyn_cast<ExternalSymbolSDNode>(Callee)) {
    Callee = DAG.getTargetExternalSymbol(E->getSymbol(), PtrVT,
                                         OpFlag);
  }

  // Returns a chain & a flag for retval copy to use.
  SDVTList NodeTys = DAG.getVTList(MVT::Other, MVT::Glue);
  SmallVector<SDValue, 8> Ops;
  Ops.push_back(Chain);
  Ops.push_back(Callee);

  // Add argument registers to the end of the list so that they are
  // known live into the call.
  for (unsigned i = 0, e = RegsToPass.size(); i != e; ++i)
    Ops.push_back(DAG.getRegister(RegsToPass[i].first,
                                  RegsToPass[i].second.getValueType()));

  if (InFlag.getNode())
    Ops.push_back(InFlag);

  Chain = DAG.getNode(OR1KISD::CALL, dl, NodeTys, Ops);
  InFlag = Chain.getValue(1);

  // Create the CALLSEQ_END node.
  Chain = DAG.getCALLSEQ_END(Chain,
                             DAG.getConstant(NumBytes, dl, PtrVT,
                                             /*isTarget=*/true),
                             DAG.getConstant(0, dl, PtrVT,
                                             /*isTarget=*/true),
                             InFlag, dl);
  InFlag = Chain.getValue(1);

  // Handle result values, copying them out of physregs into vregs that we
  // return.
  return LowerCallResult(Chain, InFlag, CallConv, isVarArg, Ins, dl,
                         DAG, InVals);
}

/// LowerCallResult - Lower the result values of a call into the
/// appropriate copies out of appropriate physical registers.
///
SDValue
OR1KTargetLowering::LowerCallResult(SDValue Chain, SDValue InFlag,
                                    CallingConv::ID CallConv, bool isVarArg,
                                    const SmallVectorImpl<ISD::InputArg> &Ins,
                                    SDLoc dl, SelectionDAG &DAG,
                                    SmallVectorImpl<SDValue> &InVals) const {

  // Assign locations to each value returned by this call.
  SmallVector<CCValAssign, 16> RVLocs;
  CCState CCInfo(CallConv, isVarArg, DAG.getMachineFunction(),
                 RVLocs, *DAG.getContext());

  CCInfo.AnalyzeCallResult(Ins, RetCC_OR1K32);

  // Copy all of the result registers out of their specified physreg.
  for (unsigned i = 0; i != RVLocs.size(); ++i) {
    Chain = DAG.getCopyFromReg(Chain, dl, RVLocs[i].getLocReg(),
                               RVLocs[i].getValVT(), InFlag).getValue(1);
    InFlag = Chain.getValue(2);
    InVals.push_back(Chain.getValue(0));
  }

  return Chain;
}

/// NegateFCC - If LHS or RHS is a floating point operand, check
/// if the condition code should be inverted, the operands swapped and
/// the result negated. In other words, transform unordered compares to
/// ordered. Returns true if a change occurred.
static bool NegateFCC(SDValue &LHS, SDValue &RHS, ISD::CondCode &CC)
{
  if (!LHS.getValueType().isFloatingPoint() &&
      !RHS.getValueType().isFloatingPoint())
    return false;

  switch (CC) {
  default:
    return false;
  case ISD::SETUEQ:
    // (qnan(a) || qnan(b) || a == b) => !(!qnan(a) && !qnan(b) && a != b)
    CC = ISD::SETONE;
    return true;
  case ISD::SETUGT:
    // (qnan(a) || qnan(b) || a > b) => !(!qnan(a) && !qnan(b) && a <= b)
    CC = ISD::SETOLE;
    std::swap(LHS, RHS);
    return true;
  case ISD::SETUGE:
    // (qnan(a) || qnan(b) || a >= b) => !(!qnan(a) && !qnan(b) && a < b)
    CC = ISD::SETOLT;
    std::swap(LHS, RHS);
    return true;
  case ISD::SETULT:
    // (qnan(a) || qnan(b) || a < b) => !(!qnan(a) && !qnan(b) && a >= b)
    CC = ISD::SETOGE;
    std::swap(LHS, RHS);
    return true;
  case ISD::SETULE:
    // (qnan(a) || qnan(b) || a <= b) => !(!qnan(a) && !qnan(b) && a > b)
    CC = ISD::SETOGT;
    std::swap(LHS, RHS);
    return true;
  case ISD::SETUNE:
    // (qnan(a) || qnan(b) || a != b) => !(!qnan(a) && !qnan(b) && a == b)
    CC = ISD::SETOEQ;
    return true;
  }
}

SDValue OR1KTargetLowering::LowerBR_CC(SDValue Op,
                                       SelectionDAG &DAG) const {
  SDValue Chain  = Op.getOperand(0);
  ISD::CondCode CC = cast<CondCodeSDNode>(Op.getOperand(1))->get();
  SDValue LHS   = Op.getOperand(2);
  SDValue RHS   = Op.getOperand(3);
  SDValue Dest  = Op.getOperand(4);
  SDLoc dl(Op);

  // FIXME: This could probably be done more efficiently
  switch (CC) {
  default:
    break;
  case ISD::SETO:
    CC = ISD::SETOEQ;
    // RHS = !qnan(LHS) ? RHS : LHS;
    RHS = DAG.getSelectCC(dl, LHS, LHS, RHS, LHS, CC);
    break;
  case ISD::SETUO:
    CC = ISD::SETUNE;
    // RHS = qnan(LHS) ? LHS : RHS;
    RHS = DAG.getSelectCC(dl, LHS, LHS, LHS, RHS, CC);
    break;
  }

  SDValue Neg  = NegateFCC(LHS, RHS, CC) ? DAG.getConstant(1, dl, MVT::i32) :
                                           DAG.getConstant(0, dl, MVT::i32);
  SDValue Flag = DAG.getNode(OR1KISD::SET_FLAG, dl, MVT::Glue,
                             LHS, RHS, DAG.getConstant(CC, dl, MVT::i32));

  return DAG.getNode(OR1KISD::BR_CC, dl, Op.getValueType(),
                     Chain, Dest, Neg, Flag);
}

SDValue OR1KTargetLowering::LowerSELECT_CC(SDValue Op,
                                           SelectionDAG &DAG) const {
  SDValue LHS    = Op.getOperand(0);
  SDValue RHS    = Op.getOperand(1);
  SDValue TrueV  = Op.getOperand(2);
  SDValue FalseV = Op.getOperand(3);
  ISD::CondCode CC = cast<CondCodeSDNode>(Op.getOperand(4))->get();
  SDLoc dl(Op);

  // FIXME: This could probably be done more efficiently
  switch (CC) {
  default:
    break;
  case ISD::SETO:
    CC = ISD::SETOEQ;
    // RHS = !qnan(LHS) ? RHS : LHS;
    RHS = DAG.getSelectCC(dl, LHS, LHS, RHS, LHS, CC);
    break;
  case ISD::SETUO:
    CC = ISD::SETUNE;
    // RHS = qnan(LHS) ? LHS : RHS;
    RHS = DAG.getSelectCC(dl, LHS, LHS, LHS, RHS, CC);
    break;
  }

  if (NegateFCC(LHS, RHS, CC))
    std::swap(TrueV, FalseV);

  SDValue TargetCC = DAG.getConstant(CC, dl, MVT::i32);
  SDValue Flag = DAG.getNode(OR1KISD::SET_FLAG, dl, MVT::Glue,
                             LHS, RHS, TargetCC);

  SDVTList VTs = DAG.getVTList(Op.getValueType(), MVT::Glue);
  SDValue Ops[] = {TrueV, FalseV, TargetCC, Flag};
  return DAG.getNode(OR1KISD::SELECT_CC, dl, VTs, Ops);
}

SDValue OR1KTargetLowering::LowerVASTART(SDValue Op, SelectionDAG &DAG) const {
  MachineFunction &MF = DAG.getMachineFunction();
  OR1KMachineFunctionInfo *FuncInfo = MF.getInfo<OR1KMachineFunctionInfo>();

  SDLoc dl(Op);
  SDValue FI = DAG.getFrameIndex(FuncInfo->getVarArgsFrameIndex(),
                                 getPointerTy(DAG.getDataLayout()));

  // vastart just stores the address of the VarArgsFrameIndex slot into the
  // memory location argument.
  const Value *SV = cast<SrcValueSDNode>(Op.getOperand(2))->getValue();
  return DAG.getStore(Op.getOperand(0), dl, FI, Op.getOperand(1),
                      MachinePointerInfo(SV));
}

SDValue
OR1KTargetLowering::LowerDYNAMIC_STACKALLOC(SDValue Op,
                                            SelectionDAG &DAG) const {
  SDValue Chain = Op.getOperand(0);
  SDValue Size = Op.getOperand(1);
  SDLoc dl(Op);

  unsigned SPReg = getStackPointerRegisterToSaveRestore();

  // Get a reference to the stack pointer.
  SDValue StackPointer = DAG.getCopyFromReg(Chain, dl, SPReg, MVT::i32);

  // Subtract the dynamic size from the actual stack size to
  // obtain the new stack size.
  SDValue Sub = DAG.getNode(ISD::SUB, dl, MVT::i32, StackPointer, Size);

  //
  // For OR1K, the outgoing memory arguments area should be on top of the
  // alloca area on the stack i.e., the outgoing memory arguments should be
  // at a lower address than the alloca area. Move the alloca area down the
  // stack by adding back the space reserved for outgoing arguments to SP
  // here.
  //
  // We do not know what the size of the outgoing args is at this point.
  // So, we add a pseudo instruction ADJDYNALLOC that will adjust the
  // stack pointer. We replace this instruction with on that has the correct,
  // known offset in emitPrologue().
  SDValue ArgAdjust = DAG.getNode(OR1KISD::ADJDYNALLOC, dl, MVT::i32, Sub);

  // The Sub result contains the new stack start address, so it
  // must be placed in the stack pointer register.
  SDValue CopyChain = DAG.getCopyToReg(Chain, dl, SPReg, Sub);

  SDValue Ops[2] = { ArgAdjust, CopyChain };
  return DAG.getMergeValues(Ops, dl);
}

/// LowerCTTZ - Lower count of leading zeros
/// by evaluating the value of the source reg, if zero return
/// number of bits in VT, otherwise act as if zero was undefined.
///
SDValue
OR1KTargetLowering::LowerCTTZ(SDValue Op,
                              SelectionDAG &DAG) const {
  SDLoc dl(Op);
  EVT VT = Op.getValueType();
  SDValue SrcReg = Op.getOperand(0);
  SDValue ZeroUndef = LowerCTTZ_ZERO_UNDEF(Op, DAG);
  SDValue CC = DAG.getCondCode(ISD::SETEQ);
  return DAG.getNode(ISD::SELECT_CC, dl, VT, SrcReg,
                     DAG.getConstant(0, dl, MVT::i32),
                     DAG.getConstant(VT.getSizeInBits(), dl, MVT::i32),
                     ZeroUndef, CC);
}

/// LowerCTLZ - Lower count of leading zeros by using the relation
/// ctlz = VT.getSizeInBits() - fl1.
///
SDValue
OR1KTargetLowering::LowerCTLZ(SDValue Op,
                              SelectionDAG &DAG) const {
  SDLoc dl(Op);
  EVT VT = Op.getValueType();
  SDValue fl1 = DAG.getNode(OR1KISD::FL1, dl, VT, Op.getOperand(0));
  return DAG.getNode(ISD::SUB, dl, VT,
                     DAG.getConstant(VT.getSizeInBits(), dl, MVT::i32), fl1);
}

/// LowerCTTZ_ZERO_UNDEF - Lower count of trailing zeros by using the relation
/// cttz = ff1 - 1 , for all values except zero.
///
SDValue
OR1KTargetLowering::LowerCTTZ_ZERO_UNDEF(SDValue Op,
                                         SelectionDAG &DAG) const {
  SDLoc dl(Op);
  EVT VT = Op.getValueType();
  SDValue ff1 = DAG.getNode(OR1KISD::FF1, dl, VT, Op.getOperand(0));
  return DAG.getNode(ISD::SUB, dl, VT, ff1, DAG.getConstant(1, dl, MVT::i32));
}

/// LowerSUBE - Lower carry-using subtract via carry-using addition.
///
SDValue
OR1KTargetLowering::LowerSUBE(SDValue Op, SelectionDAG &DAG) const {
  SDLoc dl(Op);
  EVT VT = Op.getValueType();
  SDValue LHS = Op.getOperand(0);
  SDValue RHS = Op.getOperand(1);
  SDValue CarryIn = Op.getOperand(2);

  SDVTList VTList = DAG.getVTList(VT, MVT::Glue);
  SDValue NotRHS = DAG.getNOT(dl, RHS, VT);
  return DAG.getNode(ISD::ADDE, dl, VTList, LHS, NotRHS, CarryIn);
}

SDValue
OR1KTargetLowering::LowerRETURNADDR(SDValue Op, SelectionDAG &DAG) const {
  const TargetRegisterInfo *TRI = Subtarget.getRegisterInfo();
  MachineFunction &MF = DAG.getMachineFunction();
  MachineFrameInfo *MFI = MF.getFrameInfo();
  MFI->setReturnAddressIsTaken(true);

  EVT VT = Op.getValueType();
  SDLoc dl(Op);
  unsigned Depth = cast<ConstantSDNode>(Op.getOperand(0))->getZExtValue();
  if (Depth) {
    SDValue FrameAddr = LowerFRAMEADDR(Op, DAG);
    SDValue Offset = DAG.getConstant(DAG.getDataLayout().getPointerSize(),
                                     dl, MVT::i32);
    return DAG.getLoad(VT, dl, DAG.getEntryNode(),
                       DAG.getNode(ISD::ADD, dl, VT, FrameAddr, Offset),
                       MachinePointerInfo());
  }

  // Return the link register, which contains the return address.
  // Mark it an implicit live-in.
  unsigned Reg = MF.addLiveIn(TRI->getRARegister(), getRegClassFor(MVT::i32));
  return DAG.getCopyFromReg(DAG.getEntryNode(), dl, Reg, VT);
}

SDValue
OR1KTargetLowering::LowerFRAMEADDR(SDValue Op, SelectionDAG &DAG) const {
  MachineFrameInfo *MFI = DAG.getMachineFunction().getFrameInfo();
  MFI->setFrameAddressIsTaken(true);

  EVT VT = Op.getValueType();
  SDLoc dl(Op);
  unsigned Depth = cast<ConstantSDNode>(Op.getOperand(0))->getZExtValue();
  SDValue FrameAddr = DAG.getCopyFromReg(DAG.getEntryNode(), dl, OR1K::R2, VT);
  while (Depth--)
    FrameAddr = DAG.getLoad(VT, dl, DAG.getEntryNode(), FrameAddr,
                            MachinePointerInfo());
  return FrameAddr;
}

const char *OR1KTargetLowering::getTargetNodeName(unsigned Opcode) const {
  switch ((OR1KISD::NodeType)Opcode) {
  default: return NULL;
  case OR1KISD::ADJDYNALLOC:        return "OR1KISD::ADJDYNALLOC";
  case OR1KISD::RET_FLAG:           return "OR1KISD::RET_FLAG";
  case OR1KISD::CALL:               return "OR1KISD::CALL";
  case OR1KISD::SELECT_CC:          return "OR1KISD::SELECT_CC";
  case OR1KISD::SET_FLAG:           return "OR1KISD::SET_FLAG";
  case OR1KISD::BR_CC:              return "OR1KISD::BR_CC";
  case OR1KISD::Wrapper:            return "OR1KISD::Wrapper";
  case OR1KISD::FF1:                return "OR1KISD::FF1";
  case OR1KISD::FL1:                return "OR1KISD::FL1";
  case OR1KISD::HI:                 return "OR1KISD::HI";
  case OR1KISD::LO:                 return "OR1KISD::LO";
  }
}

SDValue OR1KTargetLowering::LowerConstantPool(SDValue Op,
                                              SelectionDAG &DAG) const {
  SDLoc dl(Op);
  ConstantPoolSDNode *N = cast<ConstantPoolSDNode>(Op);
  const Constant *C = N->getConstVal();
  bool IsPIC = getTargetMachine().getRelocationModel() == Reloc::PIC_;
  uint8_t OpFlagHi = IsPIC ? OR1KII::MO_GOTOFFHI : OR1KII::MO_ABS_HI;
  uint8_t OpFlagLo = IsPIC ? OR1KII::MO_GOTOFFLO : OR1KII::MO_ABS_LO;

  SDValue Hi = DAG.getTargetConstantPool(C, MVT::i32, N->getAlignment(),
                                         N->getOffset(), OpFlagHi);
  SDValue Lo = DAG.getTargetConstantPool(C, MVT::i32, N->getAlignment(),
                                         N->getOffset(), OpFlagLo);
  Hi = DAG.getNode(OR1KISD::HI, dl, MVT::i32, Hi);
  Lo = DAG.getNode(OR1KISD::LO, dl, MVT::i32, Lo);
  SDValue Result = DAG.getNode(ISD::OR, dl, MVT::i32, Hi, Lo);
  if (IsPIC)
    Result = DAG.getNode(ISD::ADD, dl, MVT::i32, Result,
                         getGlobalReg(DAG, MVT::i32));
  return Result;
}

SDValue OR1KTargetLowering::LowerGlobalAddress(SDValue Op,
                                               SelectionDAG &DAG) const {
  SDLoc dl(Op);
  const GlobalValue *GV = cast<GlobalAddressSDNode>(Op)->getGlobal();
  int64_t Offset = cast<GlobalAddressSDNode>(Op)->getOffset();
  bool IsPIC = getTargetMachine().getRelocationModel() == Reloc::PIC_;
  auto PtrVT = getPointerTy(DAG.getDataLayout());

  // Load GlobalAddress from GOT
  if (IsPIC && !GV->hasLocalLinkage() && !GV->hasHiddenVisibility()) {
    SDValue GA = DAG.getTargetGlobalAddress(GV, dl, PtrVT, Offset,
                                            OR1KII::MO_GOT);
    return DAG.getLoad(PtrVT, dl, DAG.getEntryNode(), GA,
                       MachinePointerInfo());
  }

  uint8_t OpFlagHi = IsPIC ? OR1KII::MO_GOTOFFHI : OR1KII::MO_ABS_HI;
  uint8_t OpFlagLo = IsPIC ? OR1KII::MO_GOTOFFLO : OR1KII::MO_ABS_LO;
  // Create the TargetGlobalAddress node, folding in the constant offset.
  SDValue Hi = DAG.getTargetGlobalAddress(GV, dl, PtrVT, Offset,
                                          OpFlagHi);
  SDValue Lo = DAG.getTargetGlobalAddress(GV, dl, PtrVT, Offset,
                                          OpFlagLo);
  Hi = DAG.getNode(OR1KISD::HI, dl, MVT::i32, Hi);
  Lo = DAG.getNode(OR1KISD::LO, dl, MVT::i32, Lo);
  SDValue Result = DAG.getNode(ISD::OR, dl, MVT::i32, Hi, Lo);
  if (IsPIC)
    Result = DAG.getNode(ISD::ADD, dl, MVT::i32, Result,
                         getGlobalReg(DAG, MVT::i32));
  return Result;
}

SDValue OR1KTargetLowering::LowerBlockAddress(SDValue Op,
                                              SelectionDAG &DAG) const {
  SDLoc dl(Op);
  const BlockAddress *BA = cast<BlockAddressSDNode>(Op)->getBlockAddress();
  bool IsPIC = getTargetMachine().getRelocationModel() == Reloc::PIC_;
  uint8_t OpFlagHi = IsPIC ? OR1KII::MO_GOTOFFHI : OR1KII::MO_ABS_HI;
  uint8_t OpFlagLo = IsPIC ? OR1KII::MO_GOTOFFLO : OR1KII::MO_ABS_LO;

  SDValue Hi = DAG.getBlockAddress(BA, MVT::i32, 0, /*isTarget=*/true, OpFlagHi);
  SDValue Lo = DAG.getBlockAddress(BA, MVT::i32, 0, /*isTarget=*/true, OpFlagLo);
  Hi = DAG.getNode(OR1KISD::HI, dl, MVT::i32, Hi);
  Lo = DAG.getNode(OR1KISD::LO, dl, MVT::i32, Lo);
  SDValue Result = DAG.getNode(ISD::OR, dl, MVT::i32, Hi, Lo);
  if (IsPIC)
    Result = DAG.getNode(ISD::ADD, dl, MVT::i32, Result,
                         getGlobalReg(DAG, MVT::i32));
  return Result;
}

SDValue OR1KTargetLowering::LowerJumpTable(SDValue Op,
                                           SelectionDAG &DAG) const {
  SDLoc dl(Op);
  JumpTableSDNode *JT = cast<JumpTableSDNode>(Op);
  bool IsPIC = getTargetMachine().getRelocationModel() == Reloc::PIC_;
  auto PtrVT = getPointerTy(DAG.getDataLayout());
  uint8_t OpFlagHi = IsPIC ? OR1KII::MO_GOTOFFHI : OR1KII::MO_ABS_HI;
  uint8_t OpFlagLo = IsPIC ? OR1KII::MO_GOTOFFLO : OR1KII::MO_ABS_LO;

  SDValue Hi = DAG.getTargetJumpTable(JT->getIndex(), PtrVT, OpFlagHi);
  SDValue Lo = DAG.getTargetJumpTable(JT->getIndex(), PtrVT, OpFlagLo);
  Hi = DAG.getNode(OR1KISD::HI, dl, MVT::i32, Hi);
  Lo = DAG.getNode(OR1KISD::LO, dl, MVT::i32, Lo);
  SDValue Result = DAG.getNode(ISD::OR, dl, MVT::i32, Hi, Lo);
  if (IsPIC)
    Result = DAG.getNode(ISD::ADD, dl, MVT::i32, Result,
                         getGlobalReg(DAG, MVT::i32));
  return Result;
}

MachineBasicBlock*
OR1KTargetLowering::EmitInstrWithCustomInserter(MachineInstr &MI,
                                                MachineBasicBlock *BB) const {
  switch (MI.getOpcode()) {
  default:
    llvm_unreachable("Unexpected instr type to insert");

  case OR1K::Select:
  case OR1K::Selectf32:
    return emitSelect(MI, BB);

  case OR1K::ATOMIC_LOAD_ADD_I32:
    return emitAtomicBinary(MI, BB, OR1K::ADD);

  case OR1K::ATOMIC_LOAD_AND_I32:
    return emitAtomicBinary(MI, BB, OR1K::AND);

  case OR1K::ATOMIC_LOAD_OR_I32:
    return emitAtomicBinary(MI, BB, OR1K::OR);

  case OR1K::ATOMIC_LOAD_XOR_I32:
    return emitAtomicBinary(MI, BB, OR1K::XOR);

  case OR1K::ATOMIC_LOAD_NAND_I32:
    return emitAtomicBinary(MI, BB, 0, true);

  case OR1K::ATOMIC_LOAD_SUB_I32:
    return emitAtomicBinary(MI, BB, OR1K::SUB);

  case OR1K::ATOMIC_SWAP_I32:
    return emitAtomicBinary(MI, BB, 0);

  case OR1K::ATOMIC_CMP_SWAP_I32:
    return emitAtomicCmpSwap(MI, BB);
  }
}

MachineBasicBlock*
OR1KTargetLowering::emitSelect(MachineInstr &MI,
                               MachineBasicBlock *BB) const {
  const TargetInstrInfo &TII = *Subtarget.getInstrInfo();
  DebugLoc dl = MI.getDebugLoc();

  // To "insert" a SELECT instruction, we actually have to insert the diamond
  // control-flow pattern.  The incoming instruction knows the destination vreg
  // to set, the condition code register to branch on, the true/false values to
  // select between, and a branch opcode to use.
  const BasicBlock *LLVM_BB = BB->getBasicBlock();
  MachineFunction::iterator I = ++BB->getIterator();

  //  thisMBB:
  //  ...
  //   TrueVal = ...
  //   l.sfXX r1, r2
  //   l.bf copy1MBB
  //   fallthrough --> copy0MBB
  MachineBasicBlock *thisMBB = BB;
  MachineFunction *F = BB->getParent();
  MachineBasicBlock *copy0MBB = F->CreateMachineBasicBlock(LLVM_BB);
  MachineBasicBlock *copy1MBB = F->CreateMachineBasicBlock(LLVM_BB);

  F->insert(I, copy0MBB);
  F->insert(I, copy1MBB);
  // Update machine-CFG edges by transferring all successors of the current
  // block to the new block which will contain the Phi node for the select.
  copy1MBB->splice(copy1MBB->begin(), BB,
                   std::next(MachineBasicBlock::iterator(MI)),
                   BB->end());
  copy1MBB->transferSuccessorsAndUpdatePHIs(BB);
  // Next, add the true and fallthrough blocks as its successors.
  BB->addSuccessor(copy0MBB);
  BB->addSuccessor(copy1MBB);

  // Insert Branch if Flag
  BuildMI(BB, dl, TII.get(OR1K::BF)).addMBB(copy1MBB);

  //  copy0MBB:
  //   %FalseValue = ...
  //   # fallthrough to copy1MBB
  BB = copy0MBB;

  // Update machine-CFG edges
  BB->addSuccessor(copy1MBB);

  //  copy1MBB:
  //   %Result = phi [ %FalseValue, copy0MBB ], [ %TrueValue, thisMBB ]
  //  ...
  BB = copy1MBB;
  BuildMI(*BB, BB->begin(), dl, TII.get(OR1K::PHI),
          MI.getOperand(0).getReg())
    .addReg(MI.getOperand(2).getReg()).addMBB(copy0MBB)
    .addReg(MI.getOperand(1).getReg()).addMBB(thisMBB);

  MI.eraseFromParent();   // The pseudo instruction is gone now.
  return BB;
}

// This function also handles OR1K::ATOMIC_SWAP_I32 (when BinOpcode == 0), and
// OR1K::ATOMIC_LOAD_NAND_I32 (when Nand == true)
MachineBasicBlock *
OR1KTargetLowering::emitAtomicBinary(MachineInstr &MI, MachineBasicBlock *BB,
                                     unsigned BinOpcode, bool Nand) const {
  MachineFunction *MF = BB->getParent();
  MachineRegisterInfo &RegInfo = MF->getRegInfo();
  const TargetRegisterClass *RC = getRegClassFor(MVT::i32);
  const TargetInstrInfo *TII = Subtarget.getInstrInfo();
  DebugLoc DL = MI.getDebugLoc();

  unsigned OldVal = MI.getOperand(0).getReg();
  unsigned Ptr = MI.getOperand(1).getReg();
  unsigned Incr = MI.getOperand(3).getReg();

  unsigned StoreVal = RegInfo.createVirtualRegister(RC);
  unsigned AndRes = RegInfo.createVirtualRegister(RC);
  unsigned AllOnes = RegInfo.createVirtualRegister(RC);

  // insert new blocks after the current block
  const BasicBlock *LLVM_BB = BB->getBasicBlock();
  MachineBasicBlock *loopMBB = MF->CreateMachineBasicBlock(LLVM_BB);
  MachineBasicBlock *exitMBB = MF->CreateMachineBasicBlock(LLVM_BB);
  MachineFunction::iterator It = ++BB->getIterator();
  MF->insert(It, loopMBB);
  MF->insert(It, exitMBB);

  // Transfer the remainder of BB and its successor edges to exitMBB.
  exitMBB->splice(exitMBB->begin(), BB,
                  std::next(MachineBasicBlock::iterator(MI)), BB->end());
  exitMBB->transferSuccessorsAndUpdatePHIs(BB);

  //  thisMBB:
  //    ...
  //    fallthrough --> loopMBB
  BB->addSuccessor(loopMBB);
  loopMBB->addSuccessor(loopMBB);
  loopMBB->addSuccessor(exitMBB);

  //  loopMBB:
  //    l.lwa oldval, 0(ptr)
  //    <binop> storeval, oldval, incr
  //    l.swa success, storeval, 0(ptr)
  //    l.bnf success, r0, loopMBB
  BB = loopMBB;
  BuildMI(BB, DL, TII->get(OR1K::LWA), OldVal).addReg(Ptr).addImm(0);
  if (Nand) {
    //  l.and andres, oldval, incr
    //  l.addi allones, r0, -1
    //  l.xor storeval, allones, andres
    BuildMI(BB, DL, TII->get(OR1K::AND), AndRes).addReg(OldVal).addReg(Incr);
    BuildMI(BB, DL, TII->get(OR1K::ADDI), AllOnes).addReg(OR1K::R0).addImm(-1);
    BuildMI(BB, DL, TII->get(OR1K::XOR), StoreVal).addReg(AllOnes).addReg(AndRes);
  } else if (BinOpcode) {
    //  <binop> storeval, oldval, incr
    BuildMI(BB, DL, TII->get(BinOpcode), StoreVal).addReg(OldVal).addReg(Incr);
  } else {
    StoreVal = Incr;
  }
  BuildMI(BB, DL, TII->get(OR1K::SWA)).addReg(StoreVal).addReg(Ptr).addImm(0);
  BuildMI(BB, DL, TII->get(OR1K::BNF)).addMBB(loopMBB);

  MI.eraseFromParent(); // The instruction is gone now.

  return exitMBB;
}

MachineBasicBlock *
OR1KTargetLowering::emitAtomicCmpSwap(MachineInstr &MI,
                                      MachineBasicBlock *BB) const {
  MachineFunction *MF = BB->getParent();
  const TargetInstrInfo *TII = Subtarget.getInstrInfo();
  DebugLoc DL = MI.getDebugLoc();

  unsigned Dest    = MI.getOperand(0).getReg();
  unsigned Ptr     = MI.getOperand(1).getReg();
  unsigned OldVal  = MI.getOperand(3).getReg();
  unsigned NewVal  = MI.getOperand(4).getReg();

  // insert new blocks after the current block
  const BasicBlock *LLVM_BB = BB->getBasicBlock();
  MachineBasicBlock *loop1MBB = MF->CreateMachineBasicBlock(LLVM_BB);
  MachineBasicBlock *loop2MBB = MF->CreateMachineBasicBlock(LLVM_BB);
  MachineBasicBlock *exitMBB = MF->CreateMachineBasicBlock(LLVM_BB);
  MachineFunction::iterator It = ++BB->getIterator();
  MF->insert(It, loop1MBB);
  MF->insert(It, loop2MBB);
  MF->insert(It, exitMBB);

  // Transfer the remainder of BB and its successor edges to exitMBB.
  exitMBB->splice(exitMBB->begin(), BB,
                  std::next(MachineBasicBlock::iterator(MI)), BB->end());
  exitMBB->transferSuccessorsAndUpdatePHIs(BB);

  //  thisMBB:
  //    ...
  //    fallthrough --> loop1MBB
  BB->addSuccessor(loop1MBB);
  loop1MBB->addSuccessor(exitMBB);
  loop1MBB->addSuccessor(loop2MBB);
  loop2MBB->addSuccessor(loop1MBB);
  loop2MBB->addSuccessor(exitMBB);

  // loop1MBB:
  //   l.lwa  dest, 0(ptr)
  //   l.sfeq dest, oldval
  //   l.bnf  exitMBB
  BB = loop1MBB;
  BuildMI(BB, DL, TII->get(OR1K::LWA), Dest).addReg(Ptr).addImm(0);
  BuildMI(BB, DL, TII->get(OR1K::SFEQ)).addReg(Dest).addReg(OldVal);
  BuildMI(BB, DL, TII->get(OR1K::BNF)).addMBB(exitMBB);

  // loop2MBB:
  //   l.swa  newval, 0(ptr)
  //   l.bnf  loop1MBB
  BB = loop2MBB;
  BuildMI(BB, DL, TII->get(OR1K::SWA)).addReg(NewVal).addReg(Ptr).addImm(0);
  BuildMI(BB, DL, TII->get(OR1K::BNF)).addMBB(loop1MBB);

  MI.eraseFromParent(); // The instruction is gone now.

  return exitMBB;
}
