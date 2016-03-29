//===- OR1KSubtarget.cpp - OR1K Subtarget Information -----------*- C++ -*-=//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements the OR1K specific subclass of TargetSubtarget.
//
//===----------------------------------------------------------------------===//

#include "OR1KSubtarget.h"
#include "OR1K.h"

using namespace llvm;

#define DEBUG_TYPE "or1k-subtarget"

#define GET_SUBTARGETINFO_TARGET_DESC
#define GET_SUBTARGETINFO_CTOR
#include "OR1KGenSubtargetInfo.inc"

void OR1KSubtarget::anchor() { }

OR1KSubtarget &OR1KSubtarget::initializeSubtargetDependencies(StringRef CPU, StringRef FS) {
  std::string CPUName = CPU;
  if (CPUName.empty())
    CPUName = "generic";

  ParseSubtargetFeatures(CPUName, FS);
  return *this;
}

OR1KSubtarget::OR1KSubtarget(const std::string &TT, const std::string &CPU,
                             const std::string &FS,
                             const OR1KTargetMachine &TM)
  : OR1KGenSubtargetInfo(TT, CPU, FS),
    HasMul(false), HasDiv(false), HasRor(false), HasCmov(false),
    HasAddc(false), HasFfl1(false), TargetTriple(TT),
    DL("E-m:e-p:32:32-i8:8:8-i16:16:16-i64:32:32-"
       "f64:32:32-v64:32:32-v128:32:32-a0:0:32-n32"),
    FrameLowering(), InstrInfo(),
    TLInfo(TM, initializeSubtargetDependencies(CPU, FS)), TSInfo(DL) {
}
