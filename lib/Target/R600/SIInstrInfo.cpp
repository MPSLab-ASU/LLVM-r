//===-- SIInstrInfo.cpp - SI Instruction Information  ---------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
/// \file
/// \brief SI Implementation of TargetInstrInfo.
//
//===----------------------------------------------------------------------===//


#include "SIInstrInfo.h"
#include "AMDGPUTargetMachine.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/MC/MCInstrDesc.h"
#include <stdio.h>

using namespace llvm;

SIInstrInfo::SIInstrInfo(AMDGPUTargetMachine &tm)
  : AMDGPUInstrInfo(tm),
    RI(tm, *this)
    { }

const SIRegisterInfo &SIInstrInfo::getRegisterInfo() const {
  return RI;
}

void
SIInstrInfo::copyPhysReg(MachineBasicBlock &MBB,
                           MachineBasicBlock::iterator MI, DebugLoc DL,
                           unsigned DestReg, unsigned SrcReg,
                           bool KillSrc) const {
  // If we are trying to copy to or from SCC, there is a bug somewhere else in
  // the backend.  While it may be theoretically possible to do this, it should
  // never be necessary.
  assert(DestReg != AMDGPU::SCC && SrcReg != AMDGPU::SCC);

  if (AMDGPU::VReg_64RegClass.contains(DestReg)) {
    assert(AMDGPU::VReg_64RegClass.contains(SrcReg) ||
	   AMDGPU::SReg_64RegClass.contains(SrcReg));
    BuildMI(MBB, MI, DL, get(AMDGPU::V_MOV_B32_e32), RI.getSubReg(DestReg, AMDGPU::sub0))
            .addReg(RI.getSubReg(SrcReg, AMDGPU::sub0), getKillRegState(KillSrc))
            .addReg(DestReg, RegState::Define | RegState::Implicit);
    BuildMI(MBB, MI, DL, get(AMDGPU::V_MOV_B32_e32), RI.getSubReg(DestReg, AMDGPU::sub1))
            .addReg(RI.getSubReg(SrcReg, AMDGPU::sub1), getKillRegState(KillSrc));
  } else if (AMDGPU::SReg_64RegClass.contains(DestReg)) {
    assert(AMDGPU::SReg_64RegClass.contains(SrcReg));
    BuildMI(MBB, MI, DL, get(AMDGPU::S_MOV_B64), DestReg)
            .addReg(SrcReg, getKillRegState(KillSrc));
  } else if (AMDGPU::VReg_32RegClass.contains(DestReg)) {
    assert(AMDGPU::VReg_32RegClass.contains(SrcReg) ||
           AMDGPU::SReg_32RegClass.contains(SrcReg));
    BuildMI(MBB, MI, DL, get(AMDGPU::V_MOV_B32_e32), DestReg)
            .addReg(SrcReg, getKillRegState(KillSrc));
  } else {
    assert(AMDGPU::SReg_32RegClass.contains(DestReg));
    assert(AMDGPU::SReg_32RegClass.contains(SrcReg));
    BuildMI(MBB, MI, DL, get(AMDGPU::S_MOV_B32), DestReg)
            .addReg(SrcReg, getKillRegState(KillSrc));
  }
}

MachineInstr * SIInstrInfo::getMovImmInstr(MachineFunction *MF, unsigned DstReg,
                                           int64_t Imm) const {
  MachineInstr * MI = MF->CreateMachineInstr(get(AMDGPU::V_MOV_IMM_I32), DebugLoc());
  MachineInstrBuilder MIB(*MF, MI);
  MIB.addReg(DstReg, RegState::Define);
  MIB.addImm(Imm);

  return MI;

}

bool SIInstrInfo::isMov(unsigned Opcode) const {
  switch(Opcode) {
  default: return false;
  case AMDGPU::S_MOV_B32:
  case AMDGPU::S_MOV_B64:
  case AMDGPU::V_MOV_B32_e32:
  case AMDGPU::V_MOV_B32_e64:
  case AMDGPU::V_MOV_IMM_F32:
  case AMDGPU::V_MOV_IMM_I32:
  case AMDGPU::S_MOV_IMM_I32:
    return true;
  }
}

bool
SIInstrInfo::isSafeToMoveRegClassDefs(const TargetRegisterClass *RC) const {
  return RC != &AMDGPU::EXECRegRegClass;
}

//===----------------------------------------------------------------------===//
// Indirect addressing callbacks
//===----------------------------------------------------------------------===//

unsigned SIInstrInfo::calculateIndirectAddress(unsigned RegIndex,
                                                 unsigned Channel) const {
  assert(Channel == 0);
  return RegIndex;
}


int SIInstrInfo::getIndirectIndexBegin(const MachineFunction &MF) const {
  llvm_unreachable("Unimplemented");
}

int SIInstrInfo::getIndirectIndexEnd(const MachineFunction &MF) const {
  llvm_unreachable("Unimplemented");
}

const TargetRegisterClass *SIInstrInfo::getIndirectAddrStoreRegClass(
                                                     unsigned SourceReg) const {
  llvm_unreachable("Unimplemented");
}

const TargetRegisterClass *SIInstrInfo::getIndirectAddrLoadRegClass() const {
  llvm_unreachable("Unimplemented");
}

MachineInstrBuilder SIInstrInfo::buildIndirectWrite(
                                   MachineBasicBlock *MBB,
                                   MachineBasicBlock::iterator I,
                                   unsigned ValueReg,
                                   unsigned Address, unsigned OffsetReg) const {
  llvm_unreachable("Unimplemented");
}

MachineInstrBuilder SIInstrInfo::buildIndirectRead(
                                   MachineBasicBlock *MBB,
                                   MachineBasicBlock::iterator I,
                                   unsigned ValueReg,
                                   unsigned Address, unsigned OffsetReg) const {
  llvm_unreachable("Unimplemented");
}

const TargetRegisterClass *SIInstrInfo::getSuperIndirectRegClass() const {
  llvm_unreachable("Unimplemented");
}
