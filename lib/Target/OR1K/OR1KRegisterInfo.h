//===- OR1KRegisterInfo.h - OR1K Register Information Impl ------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file contains the OR1K implementation of the TargetRegisterInfo class.
//
//===----------------------------------------------------------------------===//

#ifndef OR1KREGISTERINFO_H
#define OR1KREGISTERINFO_H

#include "llvm/Target/TargetRegisterInfo.h"

#define GET_REGINFO_HEADER
#include "OR1KGenRegisterInfo.inc"

namespace llvm {

class TargetInstrInfo;
class Type;

struct OR1KRegisterInfo : public OR1KGenRegisterInfo {
  const TargetInstrInfo &TII;

  OR1KRegisterInfo(const TargetInstrInfo &tii);

  /// Code Generation virtual methods...
  const uint16_t *getCalleeSavedRegs(const MachineFunction *MF) const override;

  BitVector getReservedRegs(const MachineFunction &MF) const override;

  bool requiresRegisterScavenging(const MachineFunction &MF) const override;

  void eliminateFrameIndex(MachineBasicBlock::iterator II,
                           int SPAdj, unsigned FIOperandNum,
                           RegScavenger *RS = NULL) const override;

  bool hasBasePointer(const MachineFunction &MF) const;

  // Debug information queries.
  unsigned getFrameRegister(const MachineFunction &MF) const override;
  unsigned getBaseRegister() const;
};

} // end namespace llvm

#endif
