//===- OR1KInstrInfo.h - OR1K Instruction Information ---------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file contains the OR1K implementation of the TargetInstrInfo class.
//
//===----------------------------------------------------------------------===//

#ifndef OR1KINSTRUCTIONINFO_H
#define OR1KINSTRUCTIONINFO_H

#include "OR1KRegisterInfo.h"
#include "llvm/Target/TargetInstrInfo.h"

#define GET_INSTRINFO_HEADER
#include "OR1KGenInstrInfo.inc"

namespace llvm {
class OR1KInstrInfo : public OR1KGenInstrInfo {
  const OR1KRegisterInfo RI;
  virtual void anchor();
public:
  OR1KInstrInfo();

  /// getRegisterInfo - TargetInstrInfo is a superset of MRegister info.  As
  /// such, whenever a client has an instance of instruction info, it should
  /// always be able to get register info as well (through this method).
  ///
  const OR1KRegisterInfo &getRegisterInfo() const { return RI; }

  void copyPhysReg(MachineBasicBlock &MBB,
                   MachineBasicBlock::iterator I, const DebugLoc &DL,
                   unsigned DestReg, unsigned SrcReg,
                   bool KillSrc) const override;

  void storeRegToStackSlot(MachineBasicBlock &MBB,
                           MachineBasicBlock::iterator MBBI,
                           unsigned SrcReg, bool isKill, int FrameIndex,
                           const TargetRegisterClass *RC,
                           const TargetRegisterInfo *TRI) const override;

  void loadRegFromStackSlot(MachineBasicBlock &MBB,
                            MachineBasicBlock::iterator MBBI,
                            unsigned DestReg, int FrameIndex,
                            const TargetRegisterClass *RC,
                            const TargetRegisterInfo *TRI) const override;

  bool analyzeBranch(MachineBasicBlock &MBB,
                     MachineBasicBlock *&TBB, MachineBasicBlock *&FBB,
                     SmallVectorImpl<MachineOperand> &Cond,
                     bool AllowModify) const override;
  unsigned RemoveBranch(MachineBasicBlock &MBB) const override;
  unsigned InsertBranch(MachineBasicBlock &MBB, MachineBasicBlock *TBB,
                        MachineBasicBlock *FBB,
                        ArrayRef<MachineOperand> Cond,
                        const DebugLoc &DL) const override;
};
}

#endif
