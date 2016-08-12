//===-- OR1KAsmBackend.cpp - OR1K Assembler Backend -----------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#include "OR1KFixupKinds.h"
#include "MCTargetDesc/OR1KMCTargetDesc.h"
#include "llvm/MC/MCAsmBackend.h"
#include "llvm/MC/MCAssembler.h"
#include "llvm/MC/MCDirectives.h"
#include "llvm/MC/MCELFObjectWriter.h"
#include "llvm/MC/MCFixupKindInfo.h"
#include "llvm/MC/MCObjectWriter.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

// Prepare value for the target space
static unsigned adjustFixupValue(unsigned Kind, uint64_t Value) {
  switch (Kind) {
    default:
      llvm_unreachable("Unsupported fixup kind in adjustFixupValue");
    case FK_Data_1:
    case FK_Data_2:
    case FK_Data_4:
    case OR1K::fixup_OR1K_8:
    case OR1K::fixup_OR1K_16:
    case OR1K::fixup_OR1K_32:
    case OR1K::fixup_OR1K_LO16_INSN:
    case OR1K::fixup_OR1K_GOT16:
    case OR1K::fixup_OR1K_GOTPC_LO16:
    case OR1K::fixup_OR1K_GOTOFF_LO16:
      break;
    case OR1K::fixup_OR1K_REL26:
    case OR1K::fixup_OR1K_PLT26:
      // Currently this is used only for branches
      // Branch instructions require the value shifted down to to provide
      // a larger address range that can be branched to.
      Value >>= 2;
    break;
    // Values taken from BFD Relocation definitions
    case OR1K::fixup_OR1K_HI16_INSN:
    case OR1K::fixup_OR1K_GOTPC_HI16:
    case OR1K::fixup_OR1K_GOTOFF_HI16:
      Value >>= 16;
      Value &= 0xffff;
    break;

  }
  return Value;
}

namespace {
class OR1KAsmBackend : public MCAsmBackend {
  Triple::OSType OSType;

public:
  OR1KAsmBackend(const Target &T, Triple::OSType _OSType)
    : MCAsmBackend(), OSType(_OSType) {
  }

  void applyFixup(const MCFixup &Fixup, char *Data, unsigned DataSize,
                  uint64_t Value, bool IsPCRel) const override;

  MCObjectWriter *createObjectWriter(raw_pwrite_stream &OS) const override ;

  // No instruction requires relaxation
  bool fixupNeedsRelaxation(const MCFixup &Fixup, uint64_t Value,
                            const MCRelaxableFragment *DF,
                            const MCAsmLayout &Layout) const override {
    return false;
  }

  const MCFixupKindInfo &getFixupKindInfo(MCFixupKind Kind) const override ;

  unsigned getNumFixupKinds() const  override { return OR1K::NumTargetFixupKinds; }

  bool mayNeedRelaxation(const MCInst &Inst) const  override { return false; }

  void relaxInstruction(const MCInst &Inst, const MCSubtargetInfo &STI,
                        MCInst &Res) const override {}

  bool writeNopData(uint64_t Count, MCObjectWriter *OW) const override ;
};

bool OR1KAsmBackend::writeNopData(uint64_t Count, MCObjectWriter *OW) const {
  if ((Count % 4) != 0)
    return false;

  for (uint64_t i = 0; i < Count; i += 4)
    OW->write32(0x15000000);

  return true;
}

void OR1KAsmBackend::applyFixup(const MCFixup &Fixup, char *Data,
                                unsigned DataSize, uint64_t Value,
                                bool IsPCRel) const {
  MCFixupKind Kind = Fixup.getKind();
  Value = adjustFixupValue((unsigned)Kind, Value);

  if (!Value)
    return; // This value doesn't change the encoding

  // Where in the object and where the number of bytes that need
  // fixing up
  unsigned Offset = Fixup.getOffset();
  unsigned NumBytes = (getFixupKindInfo(Kind).TargetSize + 7) / 8;
  unsigned FullSize;

  switch((unsigned)Kind) {
    default:
      FullSize = 4;
      break;
  }

  // Grab current value, if any, from bits.
  uint64_t CurVal = 0;

  // Load instruction and apply value
  for (unsigned i = 0; i != NumBytes; ++i) {
    unsigned Idx = (FullSize - 1 - i);
    CurVal |= (uint64_t)((uint8_t)Data[Offset + Idx]) << (i*8);
  }

  uint64_t Mask = ((uint64_t)(-1) >>
                   (64 - getFixupKindInfo(Kind).TargetSize));
  CurVal |= Value & Mask;

  // Write out the fixed up bytes back to the code/data bits.
  for (unsigned i = 0; i != NumBytes; ++i) {
    unsigned Idx = (FullSize - 1 - i);
    Data[Offset + Idx] = (uint8_t)((CurVal >> (i*8)) & 0xff);
  }
}

MCObjectWriter *
OR1KAsmBackend::createObjectWriter(raw_pwrite_stream &OS) const {
  uint8_t OSABI = MCELFObjectTargetWriter::getOSABI(OSType);
  return createOR1KELFObjectWriter(OS, OSABI);
}

const MCFixupKindInfo &OR1KAsmBackend::getFixupKindInfo(MCFixupKind Kind) const{
  const static MCFixupKindInfo Infos[OR1K::NumTargetFixupKinds] = {
    // This table *must* be in same the order of fixup_* kinds in
    // OR1KFixupKinds.h.
    //
    // name                    offset  bits  flags
    { "fixup_OR1K_NONE",        0,      32,   0 },
    { "fixup_OR1K_32",          0,      32,   0 },
    { "fixup_OR1K_16",          16,     16,   0 },
    { "fixup_OR1K_8",           24,      8,   0 },
    { "fixup_OR1K_LO16_INSN",   16,     16,   0 },
    { "fixup_OR1K_HI16_INSN",   16,     16,   0 },
    { "fixup_OR1K_REL26",       6,      26,   MCFixupKindInfo::FKF_IsPCRel },
    { "fixup_OR1K_PCREL32",     0,      32,   MCFixupKindInfo::FKF_IsPCRel },
    { "fixup_OR1K_PCREL16",     16,     16,   MCFixupKindInfo::FKF_IsPCRel },
    { "fixup_OR1K_PCREL8",      24,      8,   MCFixupKindInfo::FKF_IsPCRel },
    { "fixup_OR1K_GOTPC_HI16",  16,     16,   0 },
    { "fixup_OR1K_GOTPC_LO16",  16,     16,   0 },
    { "fixup_OR1K_GOT16",       16,     16,   0 },
    { "fixup_OR1K_PLT26",       6,      26,   MCFixupKindInfo::FKF_IsPCRel },
    { "fixup_OR1K_GOTOFF_HI16", 16,     16,   0 },
    { "fixup_OR1K_GOTOFF_LO16", 16,     16,   0 },
    { "fixup_OR1K_COPY",        0,      32,   0 },
    { "fixup_OR1K_GLOB_DAT",    0,      32,   0 },
    { "fixup_OR1K_JMP_SLOT",    0,      32,   0 },
    { "fixup_OR1K_RELATIVE",    0,      32,   0 }
  };

  if (Kind < FirstTargetFixupKind)
     return MCAsmBackend::getFixupKindInfo(Kind);

  assert(unsigned(Kind - FirstTargetFixupKind) < getNumFixupKinds() &&
         "Invalid kind!");
  return Infos[Kind - FirstTargetFixupKind];
}

} // end anonymous namespace

MCAsmBackend *llvm::createOR1KAsmBackend(const Target &T, const MCRegisterInfo &MRI,
                                         const Triple &TT, StringRef CPU) {
  assert(TT.isOSBinFormatELF() && "OR1K only supports ELF targets!");

  return new OR1KAsmBackend(T, Triple(TT).getOS());
}
