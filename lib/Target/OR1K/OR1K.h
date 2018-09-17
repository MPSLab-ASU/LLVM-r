//===-- OR1K.h - Top-level interface for OR1K representation ----*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file contains the entry points for global functions defined in the LLVM
// OR1K back-end.
//
//===----------------------------------------------------------------------===//


#ifndef TARGET_OR1K_H
#define TARGET_OR1K_H
#include "MCTargetDesc/OR1KBaseInfo.h"
#include "MCTargetDesc/OR1KMCTargetDesc.h"


namespace llvm {
class FunctionPass;
class Target;
class OR1KTargetMachine;

/// createOR1KISelDag - This pass converts a legalized DAG into a
/// OR1K-specific DAG, ready for instruction scheduling.
FunctionPass *createOR1KISelDag(OR1KTargetMachine &TM);

/// createOR1KDelaySlotFillerPass - This pass fills delay slots
/// with useful instructions or nop's
FunctionPass *createOR1KDelaySlotFillerPass();




/// createOR1KGlobalBaseRegPass - This pass initializes a global base
/// register for PIC on OR1K.
FunctionPass* createOR1KGlobalBaseRegPass();



///createNEMESIS - this pass implemet NEMESIS error detection and recovery
FunctionPass* createNEMESISPass();
FunctionPass* createZDCPass();




extern Target TheOR1KTarget;
} // end namespace llvm;

#endif
