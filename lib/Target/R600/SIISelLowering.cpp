//===-- SIISelLowering.cpp - SI DAG Lowering Implementation ---------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
/// \file
/// \brief Custom DAG lowering for SI
//
//===----------------------------------------------------------------------===//

#include "SIISelLowering.h"
#include "AMDIL.h"
#include "AMDILIntrinsicInfo.h"
#include "SIInstrInfo.h"
#include "SIMachineFunctionInfo.h"
#include "SIRegisterInfo.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/SelectionDAG.h"

using namespace llvm;

SITargetLowering::SITargetLowering(TargetMachine &TM) :
    AMDGPUTargetLowering(TM),
    TII(static_cast<const SIInstrInfo*>(TM.getInstrInfo())) {
  addRegisterClass(MVT::v4f32, &AMDGPU::VReg_128RegClass);
  addRegisterClass(MVT::f32, &AMDGPU::VReg_32RegClass);
  addRegisterClass(MVT::i32, &AMDGPU::VReg_32RegClass);
  addRegisterClass(MVT::i64, &AMDGPU::SReg_64RegClass);
  addRegisterClass(MVT::i1, &AMDGPU::SCCRegRegClass);
  addRegisterClass(MVT::i1, &AMDGPU::VCCRegRegClass);

  addRegisterClass(MVT::v1i32, &AMDGPU::VReg_32RegClass);
  addRegisterClass(MVT::v2i32, &AMDGPU::VReg_64RegClass);
  addRegisterClass(MVT::v4i32, &AMDGPU::VReg_128RegClass);
  addRegisterClass(MVT::v8i32, &AMDGPU::VReg_256RegClass);
  addRegisterClass(MVT::v16i32, &AMDGPU::VReg_512RegClass);

  computeRegisterProperties();

  setOperationAction(ISD::AND, MVT::i1, Custom);

  setOperationAction(ISD::ADD, MVT::i64, Legal);
  setOperationAction(ISD::ADD, MVT::i32, Legal);

  setOperationAction(ISD::INTRINSIC_WO_CHAIN, MVT::Other, Custom);

  // We need to custom lower loads from the USER_SGPR address space, so we can
  // add the SGPRs as livein registers.
  setOperationAction(ISD::LOAD, MVT::i32, Custom);
  setOperationAction(ISD::LOAD, MVT::i64, Custom);

  setOperationAction(ISD::SELECT_CC, MVT::f32, Custom);
  setOperationAction(ISD::SELECT_CC, MVT::i32, Custom);

  setOperationAction(ISD::SELECT_CC, MVT::Other, Expand);
  setTargetDAGCombine(ISD::SELECT_CC);

  setTargetDAGCombine(ISD::SETCC);
}

MachineBasicBlock * SITargetLowering::EmitInstrWithCustomInserter(
    MachineInstr * MI, MachineBasicBlock * BB) const {
  const TargetInstrInfo * TII = getTargetMachine().getInstrInfo();
  MachineRegisterInfo & MRI = BB->getParent()->getRegInfo();
  MachineBasicBlock::iterator I = MI;

  switch (MI->getOpcode()) {
  default:
    return AMDGPUTargetLowering::EmitInstrWithCustomInserter(MI, BB);
  case AMDGPU::BRANCH: return BB;
  case AMDGPU::CLAMP_SI:
    BuildMI(*BB, I, BB->findDebugLoc(I), TII->get(AMDGPU::V_ADD_F32_e64))
           .addOperand(MI->getOperand(0))
           .addOperand(MI->getOperand(1))
           .addReg(AMDGPU::SREG_LIT_0)
           .addReg(AMDGPU::SREG_LIT_0)
           .addImm(0) // ABS
           .addImm(1) // CLAMP
           .addImm(0) // OMOD
           .addImm(0); // NEG
    MI->eraseFromParent();
    break;

  case AMDGPU::FABS_SI:
    BuildMI(*BB, I, BB->findDebugLoc(I), TII->get(AMDGPU::V_ADD_F32_e64))
                 .addOperand(MI->getOperand(0))
                 .addOperand(MI->getOperand(1))
                 .addReg(AMDGPU::SREG_LIT_0)
                 .addReg(AMDGPU::SREG_LIT_0)
                 .addImm(1) // ABS
                 .addImm(0) // CLAMP
                 .addImm(0) // OMOD
                 .addImm(0); // NEG
    MI->eraseFromParent();
    break;

  case AMDGPU::FNEG_SI:
    BuildMI(*BB, I, BB->findDebugLoc(I), TII->get(AMDGPU::V_ADD_F32_e64))
                 .addOperand(MI->getOperand(0))
                 .addOperand(MI->getOperand(1))
                 .addReg(AMDGPU::SREG_LIT_0)
                 .addReg(AMDGPU::SREG_LIT_0)
                 .addImm(0) // ABS
                 .addImm(0) // CLAMP
                 .addImm(0) // OMOD
                 .addImm(1); // NEG
    MI->eraseFromParent();
    break;
  case AMDGPU::SHADER_TYPE:
    BB->getParent()->getInfo<SIMachineFunctionInfo>()->ShaderType =
                                        MI->getOperand(0).getImm();
    MI->eraseFromParent();
    break;

  case AMDGPU::SI_INTERP:
    LowerSI_INTERP(MI, *BB, I, MRI);
    break;
  case AMDGPU::SI_WQM:
    LowerSI_WQM(MI, *BB, I, MRI);
    break;
  case AMDGPU::SI_V_CNDLT:
    LowerSI_V_CNDLT(MI, *BB, I, MRI);
    break;
  }
  return BB;
}

void SITargetLowering::LowerSI_WQM(MachineInstr *MI, MachineBasicBlock &BB,
    MachineBasicBlock::iterator I, MachineRegisterInfo & MRI) const {
  BuildMI(BB, I, BB.findDebugLoc(I), TII->get(AMDGPU::S_WQM_B64), AMDGPU::EXEC)
          .addReg(AMDGPU::EXEC);

  MI->eraseFromParent();
}

void SITargetLowering::LowerSI_INTERP(MachineInstr *MI, MachineBasicBlock &BB,
    MachineBasicBlock::iterator I, MachineRegisterInfo & MRI) const {
  unsigned tmp = MRI.createVirtualRegister(&AMDGPU::VReg_32RegClass);
  unsigned M0 = MRI.createVirtualRegister(&AMDGPU::M0RegRegClass);
  MachineOperand dst = MI->getOperand(0);
  MachineOperand iReg = MI->getOperand(1);
  MachineOperand jReg = MI->getOperand(2);
  MachineOperand attr_chan = MI->getOperand(3);
  MachineOperand attr = MI->getOperand(4);
  MachineOperand params = MI->getOperand(5);

  BuildMI(BB, I, BB.findDebugLoc(I), TII->get(AMDGPU::S_MOV_B32), M0)
          .addOperand(params);

  BuildMI(BB, I, BB.findDebugLoc(I), TII->get(AMDGPU::V_INTERP_P1_F32), tmp)
          .addOperand(iReg)
          .addOperand(attr_chan)
          .addOperand(attr)
          .addReg(M0);

  BuildMI(BB, I, BB.findDebugLoc(I), TII->get(AMDGPU::V_INTERP_P2_F32))
          .addOperand(dst)
          .addReg(tmp)
          .addOperand(jReg)
          .addOperand(attr_chan)
          .addOperand(attr)
          .addReg(M0);

  MI->eraseFromParent();
}

void SITargetLowering::LowerSI_V_CNDLT(MachineInstr *MI, MachineBasicBlock &BB,
    MachineBasicBlock::iterator I, MachineRegisterInfo & MRI) const {
  unsigned VCC = MRI.createVirtualRegister(&AMDGPU::SReg_64RegClass);

  BuildMI(BB, I, BB.findDebugLoc(I),
          TII->get(AMDGPU::V_CMP_GT_F32_e32),
          VCC)
          .addReg(AMDGPU::SREG_LIT_0)
          .addOperand(MI->getOperand(1));

  BuildMI(BB, I, BB.findDebugLoc(I), TII->get(AMDGPU::V_CNDMASK_B32_e32))
          .addOperand(MI->getOperand(0))
          .addOperand(MI->getOperand(3))
          .addOperand(MI->getOperand(2))
          .addReg(VCC);

  MI->eraseFromParent();
}

EVT SITargetLowering::getSetCCResultType(EVT VT) const {
  return MVT::i1;
}

//===----------------------------------------------------------------------===//
// Custom DAG Lowering Operations
//===----------------------------------------------------------------------===//

SDValue SITargetLowering::LowerOperation(SDValue Op, SelectionDAG &DAG) const {
  switch (Op.getOpcode()) {
  default: return AMDGPUTargetLowering::LowerOperation(Op, DAG);
  case ISD::BRCOND: return LowerBRCOND(Op, DAG);
  case ISD::LOAD: return LowerLOAD(Op, DAG);
  case ISD::SELECT_CC: return LowerSELECT_CC(Op, DAG);
  case ISD::AND: return Loweri1ContextSwitch(Op, DAG, ISD::AND);
  case ISD::INTRINSIC_WO_CHAIN: {
    unsigned IntrinsicID =
                         cast<ConstantSDNode>(Op.getOperand(0))->getZExtValue();
    EVT VT = Op.getValueType();
    switch (IntrinsicID) {
    case AMDGPUIntrinsic::SI_vs_load_buffer_index:
      return CreateLiveInRegister(DAG, &AMDGPU::VReg_32RegClass,
                                  AMDGPU::VGPR0, VT);
    default: return AMDGPUTargetLowering::LowerOperation(Op, DAG);
    }
    break;
  }
  }
  return SDValue();
}

/// \brief The function is for lowering i1 operations on the
/// VCC register.
///
/// In the VALU context, VCC is a one bit register, but in the
/// SALU context the VCC is a 64-bit register (1-bit per thread).  Since only
/// the SALU can perform operations on the VCC register, we need to promote
/// the operand types from i1 to i64 in order for tablegen to be able to match
/// this operation to the correct SALU instruction.  We do this promotion by
/// wrapping the operands in a CopyToReg node.
///
SDValue SITargetLowering::Loweri1ContextSwitch(SDValue Op,
                                               SelectionDAG &DAG,
                                               unsigned VCCNode) const {
  DebugLoc DL = Op.getDebugLoc();

  SDValue OpNode = DAG.getNode(VCCNode, DL, MVT::i64,
                               DAG.getNode(SIISD::VCC_BITCAST, DL, MVT::i64,
                                           Op.getOperand(0)),
                               DAG.getNode(SIISD::VCC_BITCAST, DL, MVT::i64,
                                           Op.getOperand(1)));

  return DAG.getNode(SIISD::VCC_BITCAST, DL, MVT::i1, OpNode);
}

/// \brief Helper function for LowerBRCOND
static SDNode *findUser(SDValue Value, unsigned Opcode) {

  SDNode *Parent = Value.getNode();
  for (SDNode::use_iterator I = Parent->use_begin(), E = Parent->use_end();
       I != E; ++I) {

    if (I.getUse().get() != Value)
      continue;

    if (I->getOpcode() == Opcode)
      return *I;
  }
  return 0;
}

/// This transforms the control flow intrinsics to get the branch destination as
/// last parameter, also switches branch target with BR if the need arise
SDValue SITargetLowering::LowerBRCOND(SDValue BRCOND,
                                      SelectionDAG &DAG) const {

  DebugLoc DL = BRCOND.getDebugLoc();

  SDNode *Intr = BRCOND.getOperand(1).getNode();
  SDValue Target = BRCOND.getOperand(2);
  SDNode *BR = 0;

  if (Intr->getOpcode() == ISD::SETCC) {
    // As long as we negate the condition everything is fine
    SDNode *SetCC = Intr;
    assert(SetCC->getConstantOperandVal(1) == 1);
    assert(cast<CondCodeSDNode>(SetCC->getOperand(2).getNode())->get() ==
           ISD::SETNE);
    Intr = SetCC->getOperand(0).getNode();

  } else {
    // Get the target from BR if we don't negate the condition
    BR = findUser(BRCOND, ISD::BR);
    Target = BR->getOperand(1);
  }

  assert(Intr->getOpcode() == ISD::INTRINSIC_W_CHAIN);

  // Build the result and
  SmallVector<EVT, 4> Res;
  for (unsigned i = 1, e = Intr->getNumValues(); i != e; ++i)
    Res.push_back(Intr->getValueType(i));

  // operands of the new intrinsic call
  SmallVector<SDValue, 4> Ops;
  Ops.push_back(BRCOND.getOperand(0));
  for (unsigned i = 1, e = Intr->getNumOperands(); i != e; ++i)
    Ops.push_back(Intr->getOperand(i));
  Ops.push_back(Target);

  // build the new intrinsic call
  SDNode *Result = DAG.getNode(
    Res.size() > 1 ? ISD::INTRINSIC_W_CHAIN : ISD::INTRINSIC_VOID, DL,
    DAG.getVTList(Res.data(), Res.size()), Ops.data(), Ops.size()).getNode();

  if (BR) {
    // Give the branch instruction our target
    SDValue Ops[] = {
      BR->getOperand(0),
      BRCOND.getOperand(2)
    };
    DAG.MorphNodeTo(BR, ISD::BR, BR->getVTList(), Ops, 2);
  }

  SDValue Chain = SDValue(Result, Result->getNumValues() - 1);

  // Copy the intrinsic results to registers
  for (unsigned i = 1, e = Intr->getNumValues() - 1; i != e; ++i) {
    SDNode *CopyToReg = findUser(SDValue(Intr, i), ISD::CopyToReg);
    if (!CopyToReg)
      continue;

    Chain = DAG.getCopyToReg(
      Chain, DL,
      CopyToReg->getOperand(1),
      SDValue(Result, i - 1),
      SDValue());

    DAG.ReplaceAllUsesWith(SDValue(CopyToReg, 0), CopyToReg->getOperand(0));
  }

  // Remove the old intrinsic from the chain
  DAG.ReplaceAllUsesOfValueWith(
    SDValue(Intr, Intr->getNumValues() - 1),
    Intr->getOperand(0));

  return Chain;
}

SDValue SITargetLowering::LowerLOAD(SDValue Op, SelectionDAG &DAG) const {
  EVT VT = Op.getValueType();
  LoadSDNode *Ptr = dyn_cast<LoadSDNode>(Op);

  assert(Ptr);

  unsigned AddrSpace = Ptr->getPointerInfo().getAddrSpace();

  // We only need to lower USER_SGPR address space loads
  if (AddrSpace != AMDGPUAS::USER_SGPR_ADDRESS) {
    return SDValue();
  }

  // Loads from the USER_SGPR address space can only have constant value
  // pointers.
  ConstantSDNode *BasePtr = dyn_cast<ConstantSDNode>(Ptr->getBasePtr());
  assert(BasePtr);

  unsigned TypeDwordWidth = VT.getSizeInBits() / 32;
  const TargetRegisterClass * dstClass;
  switch (TypeDwordWidth) {
    default:
      assert(!"USER_SGPR value size not implemented");
      return SDValue();
    case 1:
      dstClass = &AMDGPU::SReg_32RegClass;
      break;
    case 2:
      dstClass = &AMDGPU::SReg_64RegClass;
      break;
  }
  uint64_t Index = BasePtr->getZExtValue();
  assert(Index % TypeDwordWidth == 0 && "USER_SGPR not properly aligned");
  unsigned SGPRIndex = Index / TypeDwordWidth;
  unsigned Reg = dstClass->getRegister(SGPRIndex);

  DAG.ReplaceAllUsesOfValueWith(Op, CreateLiveInRegister(DAG, dstClass, Reg,
                                                         VT));
  return SDValue();
}

SDValue SITargetLowering::LowerSELECT_CC(SDValue Op, SelectionDAG &DAG) const {
  SDValue LHS = Op.getOperand(0);
  SDValue RHS = Op.getOperand(1);
  SDValue True = Op.getOperand(2);
  SDValue False = Op.getOperand(3);
  SDValue CC = Op.getOperand(4);
  EVT VT = Op.getValueType();
  DebugLoc DL = Op.getDebugLoc();

  // Possible Min/Max pattern
  SDValue MinMax = LowerMinMax(Op, DAG);
  if (MinMax.getNode()) {
    return MinMax;
  }

  SDValue Cond = DAG.getNode(ISD::SETCC, DL, MVT::i1, LHS, RHS, CC);
  return DAG.getNode(ISD::SELECT, DL, VT, Cond, True, False);
}

//===----------------------------------------------------------------------===//
// Custom DAG optimizations
//===----------------------------------------------------------------------===//

SDValue SITargetLowering::PerformDAGCombine(SDNode *N,
                                            DAGCombinerInfo &DCI) const {
  SelectionDAG &DAG = DCI.DAG;
  DebugLoc DL = N->getDebugLoc();
  EVT VT = N->getValueType(0);

  switch (N->getOpcode()) {
    default: break;
    case ISD::SELECT_CC: {
      N->dump();
      ConstantSDNode *True, *False;
      // i1 selectcc(l, r, -1, 0, cc) -> i1 setcc(l, r, cc)
      if ((True = dyn_cast<ConstantSDNode>(N->getOperand(2)))
          && (False = dyn_cast<ConstantSDNode>(N->getOperand(3)))
          && True->isAllOnesValue()
          && False->isNullValue()
          && VT == MVT::i1) {
        return DAG.getNode(ISD::SETCC, DL, VT, N->getOperand(0),
                           N->getOperand(1), N->getOperand(4));

      }
      break;
    }
    case ISD::SETCC: {
      SDValue Arg0 = N->getOperand(0);
      SDValue Arg1 = N->getOperand(1);
      SDValue CC = N->getOperand(2);
      ConstantSDNode * C = NULL;
      ISD::CondCode CCOp = dyn_cast<CondCodeSDNode>(CC)->get();

      // i1 setcc (sext(i1), 0, setne) -> i1 setcc(i1, 0, setne)
      if (VT == MVT::i1
          && Arg0.getOpcode() == ISD::SIGN_EXTEND
          && Arg0.getOperand(0).getValueType() == MVT::i1
          && (C = dyn_cast<ConstantSDNode>(Arg1))
          && C->isNullValue()
          && CCOp == ISD::SETNE) {
        return SimplifySetCC(VT, Arg0.getOperand(0),
                             DAG.getConstant(0, MVT::i1), CCOp, true, DCI, DL);
      }
      break;
    }
  }
  return SDValue();
}

#define NODE_NAME_CASE(node) case SIISD::node: return #node;

const char* SITargetLowering::getTargetNodeName(unsigned Opcode) const {
  switch (Opcode) {
  default: return AMDGPUTargetLowering::getTargetNodeName(Opcode);
  NODE_NAME_CASE(VCC_AND)
  NODE_NAME_CASE(VCC_BITCAST)
  }
}
