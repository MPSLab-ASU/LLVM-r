//===-- OR1KMCTargetDesc.cpp - OR1K Target Descriptions -----------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file provides OR1K specific target descriptions.
//
//===----------------------------------------------------------------------===//

#include "OR1KMCTargetDesc.h"
#include "OR1KMCAsmInfo.h"
#include "InstPrinter/OR1KInstPrinter.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/TargetRegistry.h"

#define GET_INSTRINFO_MC_DESC
#include "OR1KGenInstrInfo.inc"

#define GET_SUBTARGETINFO_MC_DESC
#include "OR1KGenSubtargetInfo.inc"

#define GET_REGINFO_MC_DESC
#include "OR1KGenRegisterInfo.inc"

using namespace llvm;

static MCInstrInfo *createOR1KMCInstrInfo() {
  MCInstrInfo *X = new MCInstrInfo();
  InitOR1KMCInstrInfo(X);
  return X;
}

static MCRegisterInfo *createOR1KMCRegisterInfo(const Triple &TT) {
  MCRegisterInfo *X = new MCRegisterInfo();
  InitOR1KMCRegisterInfo(X, OR1K::R9);
  return X;
}

static MCSubtargetInfo *
createOR1KMCSubtargetInfo(const Triple &TT, StringRef CPU, StringRef FS) {
  return createOR1KMCSubtargetInfoImpl(TT, CPU, FS);
}

static MCAsmInfo *
createOR1KMCAsmInfo(const MCRegisterInfo &MRI, const Triple &TT) {
  MCAsmInfo *MAI = new OR1KMCAsmInfo(TT);

  MCCFIInstruction Inst = MCCFIInstruction::createDefCfa(
      0, MRI.getDwarfRegNum(OR1K::R1, true), 0);
  MAI->addInitialFrameState(Inst);

  return MAI;
}

static MCStreamer *createMCStreamer(const Triple &T, MCContext &Context,
                                    MCAsmBackend &MAB, raw_pwrite_stream &OS,
                                    MCCodeEmitter *Emitter, bool RelaxAll) {
  return createELFStreamer(Context, MAB, OS, Emitter, RelaxAll);
}

static MCInstPrinter *
createOR1KMCInstPrinter(const Triple &TT, unsigned SyntaxVariant,
                        const MCAsmInfo &MAI, const MCInstrInfo &MII,
                        const MCRegisterInfo &MRI) {
  if (SyntaxVariant == 0)
    return new OR1KInstPrinter(MAI, MII, MRI);

  return nullptr;
}

extern "C" void LLVMInitializeOR1KTargetMC() {
  // Register the MC asm info.
  TargetRegistry::RegisterMCAsmInfo(TheOR1KTarget, createOR1KMCAsmInfo);

  // Register the MC instruction info.
  TargetRegistry::RegisterMCInstrInfo(TheOR1KTarget, createOR1KMCInstrInfo);

  // Register the MC register info.
  TargetRegistry::RegisterMCRegInfo(TheOR1KTarget, createOR1KMCRegisterInfo);

  // Register the MC subtarget info.
  TargetRegistry::RegisterMCSubtargetInfo(TheOR1KTarget,
                                          createOR1KMCSubtargetInfo);

  // Register the ELF streamer
  TargetRegistry::RegisterELFStreamer(TheOR1KTarget,
                                      createMCStreamer);

  // Register the MCInstPrinter.
  TargetRegistry::RegisterMCInstPrinter(TheOR1KTarget,
                                        createOR1KMCInstPrinter);

  // Register the MC code emitter
  TargetRegistry::RegisterMCCodeEmitter(TheOR1KTarget,
                                        llvm::createOR1KMCCodeEmitter);

  // Register the ASM Backend
  TargetRegistry::RegisterMCAsmBackend(TheOR1KTarget,
                                       createOR1KAsmBackend);
}
