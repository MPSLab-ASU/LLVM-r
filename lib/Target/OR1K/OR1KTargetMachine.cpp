//===-- OR1KTargetMachine.cpp - Define TargetMachine for OR1K ---------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// Implements the info about OR1K target spec.
//
//===----------------------------------------------------------------------===//

#include "OR1K.h"
#include "OR1KTargetMachine.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/CodeGen/TargetLoweringObjectFileImpl.h"
#include "llvm/CodeGen/Passes.h"
#include "llvm/CodeGen/TargetPassConfig.h"
#include "llvm/Support/FormattedStream.h"
#include "llvm/Support/TargetRegistry.h"
#include "llvm/Target/TargetOptions.h"
//#include "llvm-c/Core.h" //HwiSoo
//#include "llvm/CodeGen/MachineModuleInfo.h" //HwiSoo
using namespace llvm;



extern "C" void LLVMInitializeOR1KTarget() {
  // Register the target.
  RegisterTargetMachine<OR1KTargetMachine> X(TheOR1KTarget);
}

static Reloc::Model getEffectiveRelocModel(Optional<Reloc::Model> RM) {
  if (!RM.hasValue())
    return Reloc::Static;
  return *RM;
}

// DL --> Big-endian, 32-bit pointer/ABI/alignment
// The stack is always 4 byte aligned
// On function prologue, the stack is created by decrementing
// its pointer. Once decremented, all references are done with positive
// offset from the stack/frame pointer.
OR1KTargetMachine::OR1KTargetMachine(const Target &T, const Triple &TT,
                                     StringRef CPU, StringRef FS,
                                     const TargetOptions &Options,
                                     Optional<Reloc::Model> RM,
                                     CodeModel::Model CM,
                                     CodeGenOpt::Level OL)
  : LLVMTargetMachine(T, "E-m:e-p:32:32-i8:8:8-i16:16:16-i64:32:32-"
                         "f64:32:32-v64:32:32-v128:32:32-a0:0:32-n32",
                      TT, CPU, FS, Options, getEffectiveRelocModel(RM), CM, OL),
    Subtarget(TT, CPU, FS, *this),
    TLOF(make_unique<TargetLoweringObjectFileELF>()) {
  initAsmInfo();
}

OR1KTargetMachine::~OR1KTargetMachine() {}

namespace {
/// OR1K Code Generator Pass Configuration Options.
class OR1KPassConfig : public TargetPassConfig {
public:
  OR1KPassConfig(OR1KTargetMachine *TM, PassManagerBase &PM)
    : TargetPassConfig(TM, PM) {}

  bool addInstSelector() override;
  void addPreEmitPass() override;
};
} // namespace

TargetPassConfig *OR1KTargetMachine::createPassConfig(PassManagerBase &PM) {
  return new OR1KPassConfig(this, PM);
}

// Install an instruction selector pass using
// the ISelDag to gen OR1K code.
bool OR1KPassConfig::addInstSelector() {
  addPass(createOR1KISelDag(getTM<OR1KTargetMachine>()));

  // Prepend instructions to set the "global base reg" for PIC.
  addPass(createOR1KGlobalBaseRegPass());


  return false;
}

// Implemented by targets that want to run passes immediately before
// machine code is emitted. return true if -print-machineinstrs should
// print out the code after the passes.

void OR1KPassConfig::addPreEmitPass() {
  addPass(createOR1KDelaySlotFillerPass());
//NEMESIS MOSLEM PASS
  addPass(createNEMESISPass());
  addPass(createZDCPass());
  
  
  /*Failed
//HwiSoo. Adding custom machine function to zdc pass

  //Function *NewNn = Function::Create(Type::getVoidTy(getTM<OR1KTargetMachine>().getObjFileLowering()->getContext()), grGlobalVariable::ExternalLinkage, "FnForPZDCTable");
  Function *NewFn = Function::Create(FunctionType::get(Type::getVoidTy(*unwrap(LLVMGetGlobalContext())),false), GlobalVariable::ExternalLinkage, "FnForPZDCTable");
  MachineFunction *NewMF= new MachineFunction(NewFn, getTM<OR1KTargetMachine>(), 0, getAnalysis<MachineModuleInfo>());
  addPass(createZDCPass(NewMF));
  */

}
