//===-- OR1kDelaySlotFiller.cpp - OR1K delay slot filler ------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// Simple pass to fills delay slots with useful instructions.
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "delay-slot-filler"

#include "OR1K.h"
#include "OR1KTargetMachine.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/ADT/SmallSet.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/CodeGen/MachineBasicBlock.h"

using namespace llvm;

STATISTIC(FilledSlots, "Number of delay slots filled");

static cl::opt<bool> DisableDelaySlotFiller(
		"disable-or1k-delay-filler",
		cl::init(false),
		cl::desc("Do not fill OR1K delay slots"),
		cl::Hidden);

static cl::opt<bool> CompatDelaySlotFiller(
		"compat-or1k-delay-filler",
		cl::init(false),
		cl::desc("Fill OR1K delay slots with l.nops."),
		cl::Hidden);

		

static cl::opt<bool> DelaySlotCopyR9ToR22(
		"delay-slot-copy-r9-to-r22",
		cl::init(false),
		cl::desc("Add addi r22, r9, 0 for delay slot. it will be used for memZDC"),
		cl::Hidden);
		
static cl::opt<bool> CFC(
		"implement-CFC",
		cl::init(false),
		cl::desc("Implement CFC"),
		cl::Hidden);

namespace {
	class Filler : public MachineFunctionPass {
		public:
			Filler() : MachineFunctionPass(ID) {}

			const char *getPassName() const override {
				return "OR1K Delay Slot Filler";
			}

			MachineFunctionProperties getRequiredProperties() const override {
				return MachineFunctionProperties().set(
						MachineFunctionProperties::Property::AllVRegsAllocated);
			}

			// This function implment the CFCSS control-flow checking shceme
			// Control flow checking by software signatures,” IEEE Trans. Reliability, 2002. 
			// registers R20 (G), R24 (D) and R22 (temporary value holding) are reserved for the CFCSS
			void implementCFC(MachineFunction &MF){
				for (MachineFunction::iterator BB = ++(MF.begin()), E = MF.end(); BB != E; ++BB) {
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					int numofPred=BB->pred_size();
					errs() << "BB NUmber: " << BB->getNumber() << " === BB Name: " << BB->getName() << "  === NUM Predessesors: " << numofPred << "\n";

					int signatureDifference=0;
					llvm::MachineBasicBlock::pred_iterator PREBB, END;


					// single-predessesor node
					if (numofPred == 1) { 
						PREBB=BB->pred_begin();
						signatureDifference = BB->getNumber() ^ (*PREBB)->getNumber();
					}	
					// branch-fan-in node
					if (numofPred > 1) { 
						PREBB=BB->pred_begin();
						signatureDifference = BB->getNumber() ^ (*PREBB)->getNumber();
/*
						for (PREBB=BB->pred_begin(), END=BB->pred_end(); PREBB!=END; ++PREBB){

							MachineInstr *MIAdd = BuildMI(MF, (*PREBB)->instr_begin()->getDebugLoc() , TII->get(OR1K::ADDI), OR1K::R22).addReg(OR1K::R0).addImm(((*BB->pred_begin()))->getNumber());
							MachineBasicBlock::iterator pos= (*PREBB)->insert ((*PREBB)->instr_begin(), MIAdd);
							MachineInstr *MIDim = BuildMI(MF, (*PREBB)->instr_begin()->getDebugLoc() , TII->get(OR1K::XORI), OR1K::R24).addReg(OR1K::R22).addImm((*PREBB)->getNumber());
							(*PREBB)->insertAfter (pos, MIDim);
						} 
*/
                                         }
					// ADD G(R20) =G(R20) xor d(signatureDifference)
					MachineBasicBlock::iterator t1;
					MachineInstr *MIG = BuildMI(MF, BB->instr_begin()->getDebugLoc() , TII->get(OR1K::XORI), OR1K::R20).addReg(OR1K::R20).addImm(signatureDifference);
					t1 = BB->insert (BB->instr_begin(), MIG);

					// for branch-fan-in BBs insert G(R20) = G(R20)  xor D(R24)
					if (numofPred > 1) { 
						MachineInstr *MIG1 = BuildMI(MF, BB->instr_begin()->getDebugLoc() , TII->get(OR1K::XOR), OR1K::R20).addReg(OR1K::R20).addReg(OR1K::R24);
						t1 = BB->insertAfter (t1, MIG1);
					}


					// insert control flow error detection instructions 
					// 1) SFNEI R20, this_bb_sig
					MachineInstr *MICMP = BuildMI(MF, BB->instr_begin()->getDebugLoc() , TII->get(OR1K::SFNEI)).addReg(OR1K::R20).addImm(BB->getNumber());
					t1 = BB->insertAfter (t1, MICMP);
					// 2) bf errorBB
					MachineInstr *MIBF = BuildMI(MF, BB->instr_begin()->getDebugLoc() , TII->get(OR1K::SFNE)).addReg(OR1K::R20).addReg(OR1K::R20);
					BB->insertAfter (t1, MIBF);

				} // end of loop
			}// end of function


void fixBranchFanBBs(MachineFunction &MF){
				for (MachineFunction::iterator BB = ++(MF.begin()), E = MF.end(); BB != E; ++BB) {
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					int numofPred=BB->pred_size();
					llvm::MachineBasicBlock::pred_iterator PREBB, END;

					if (numofPred > 1) { 
					for (PREBB=BB->pred_begin(), END=BB->pred_end(); PREBB!=END; ++PREBB){
						MachineBasicBlock::instr_iterator pos=(*PREBB)->instr_begin();
						for (MachineBasicBlock::instr_iterator I=(*PREBB)->instr_begin(), E=(*PREBB)->instr_end(); I !=E ; ++I){
							if ((I->getOpcode()==OR1K::SFNE) && (I->getOperand(1).getReg() ==  OR1K::R20))
								pos=I;
							}

							if (pos == (*PREBB)->instr_begin()) errs() << "WRONG IMPLEMENTATION\n";
							MachineInstr *MIDim = BuildMI(MF, (*PREBB)->instr_begin()->getDebugLoc() , TII->get(OR1K::XORI), OR1K::R24).addReg(OR1K::R22).addImm((*PREBB)->getNumber());
							(*PREBB)->insertAfter (pos, MIDim);

							MachineInstr *MIAdd = BuildMI(MF, (*PREBB)->instr_begin()->getDebugLoc() , TII->get(OR1K::ADDI), OR1K::R22).addReg(OR1K::R0).addImm(((*BB->pred_begin()))->getNumber());
							(*PREBB)->insert (pos, MIAdd);

						} 	
					}
                              } //end of for
} //end of function

			bool runOnMachineBasicBlock(MachineBasicBlock &MBB);
			bool runOnMachineFunction(MachineFunction &F) override {
				// moslem
				if(CFC) { implementCFC(F); fixBranchFanBBs(F);}

				bool Changed = false;
				for (MachineFunction::iterator FI = F.begin(), FE = F.end();
						FI != FE; ++FI)
					Changed |= runOnMachineBasicBlock(*FI);
				return Changed;
			}

		private:
			void insertDefsUses(MachineBasicBlock::instr_iterator MI,
					SmallSet<unsigned, 32>& RegDefs,
					SmallSet<unsigned, 32>& RegUses);

			bool IsRegInSet(const TargetRegisterInfo *TRI,
					SmallSet<unsigned, 32>& RegSet,
					unsigned Reg);

			bool delayHasHazard(MachineBasicBlock::instr_iterator MI,
					bool &sawLoad, bool &sawStore,
					SmallSet<unsigned, 32> &RegDefs,
					SmallSet<unsigned, 32> &RegUses);

			bool
				findDelayInstr(MachineBasicBlock &MBB,
						MachineBasicBlock::instr_iterator slot,
						MachineBasicBlock::instr_iterator &Filler);

			MachineBasicBlock::instr_iterator LastFiller;

			static char ID;
	};
	char Filler::ID = 0;
} // end of anonymous namespace

/// createOR1KDelaySlotFillerPass - Returns a pass that fills in delay
/// slots in OR1K MachineFunctions
///
FunctionPass *llvm::createOR1KDelaySlotFillerPass() {
	return new Filler();
}

/// runOnMachineBasicBlock - Fill in delay slots for the given basic block.
/// There is only one delay slot per delayed instruction.
bool Filler::runOnMachineBasicBlock(MachineBasicBlock &MBB) {
	const TargetInstrInfo *TII =
		MBB.getParent()->getSubtarget().getInstrInfo();
	bool Changed = false;
	LastFiller = MBB.instr_end();

	// No delay slots
	if (DisableDelaySlotFiller)
		return false;

	for (MachineBasicBlock::instr_iterator I = MBB.instr_begin();
			I != MBB.instr_end(); ++I)
		if (I->getDesc().hasDelaySlot()) {
			MachineBasicBlock::instr_iterator InstrWithSlot = I;
			MachineBasicBlock::instr_iterator J = I;

			if (DelaySlotCopyR9ToR22)
			{
				if (I->getOpcode()==OR1K::JAL)
					BuildMI(MBB, std::next(I), DebugLoc(), TII->get(OR1K::ADDI), OR1K::R22).addReg(OR1K::R9).addImm(0);
				else
					BuildMI(MBB, std::next(I), DebugLoc(), TII->get(OR1K::NOP)).addImm(0);
			}
				
			else if (!CompatDelaySlotFiller && findDelayInstr(MBB, I, J))
				MBB.splice(std::next(I), &MBB, J);
			else
				BuildMI(MBB, std::next(I), DebugLoc(), TII->get(OR1K::NOP)).addImm(0);

			++FilledSlots;
			Changed = true;
			// Record the filler instruction that filled the delay slot.
			// The instruction after it will be visited in the next iteration.
			LastFiller = ++I;

			// Bundle the delay slot filler to InstrWithSlot so that the machine
			// verifier doesn't expect this instruction to be a terminator.
			MIBundleBuilder(MBB, InstrWithSlot, std::next(LastFiller));
		}
	return Changed;
}

bool Filler::findDelayInstr(MachineBasicBlock &MBB,
		MachineBasicBlock::instr_iterator slot,
		MachineBasicBlock::instr_iterator &Filler) {

	SmallSet<unsigned, 32> RegDefs;
	SmallSet<unsigned, 32> RegUses;

	insertDefsUses(slot, RegDefs, RegUses);

	bool sawLoad = false;
	bool sawStore = false;

	for (MachineBasicBlock::reverse_instr_iterator I(slot); I != MBB.instr_rend();
			++I) {
		// skip debug value
		if (I->isDebugValue())
			continue;

		// Convert to forward iterator.
		MachineBasicBlock::instr_iterator FI(std::next(I).base());

		if (I->hasUnmodeledSideEffects() ||
				I->isInlineAsm()             ||
				I->isLabel()                 ||
				FI == LastFiller             ||
				I->isPseudo())
			break;

		if (delayHasHazard(FI, sawLoad, sawStore, RegDefs, RegUses)) {
			insertDefsUses(FI, RegDefs, RegUses);
			continue;
		}
		Filler = FI;
		return true;
	}
	return false;
}

bool Filler::delayHasHazard(MachineBasicBlock::instr_iterator MI,
		bool &sawLoad, bool &sawStore,
		SmallSet<unsigned, 32> &RegDefs,
		SmallSet<unsigned, 32> &RegUses) {
	if (MI->isImplicitDef() || MI->isKill())
		return true;

	// Loads or stores cannot be moved past a store to the delay slot
	// and stores cannot be moved past a load.
	if (MI->mayLoad()) {
		if (sawStore)
			return true;
		sawLoad = true;
	}

	if (MI->mayStore()) {
		if (sawStore)
			return true;
		sawStore = true;
		if (sawLoad)
			return true;
	}

	assert((!MI->isCall() && !MI->isReturn()) &&
			"Cannot put calls or returns in delay slot.");

	const TargetRegisterInfo *TRI =
		MI->getParent()->getParent()->getSubtarget().getRegisterInfo();

	for (unsigned i = 0, e = MI->getNumOperands(); i!= e; ++i) {
		const MachineOperand &MO = MI->getOperand(i);
		unsigned Reg;

		if (!MO.isReg() || !(Reg = MO.getReg()))
			continue; // skip

		if (MO.isDef()) {
			// check whether Reg is defined or used before delay slot.
			if (IsRegInSet(TRI, RegDefs, Reg) || IsRegInSet(TRI, RegUses, Reg))
				return true;
		}
		if (MO.isUse()) {
			// check whether Reg is defined before delay slot.
			if (IsRegInSet(TRI, RegDefs, Reg))
				return true;
		}
	}
	return false;
}

// Insert Defs and Uses of MI into the sets RegDefs and RegUses.
void Filler::insertDefsUses(MachineBasicBlock::instr_iterator MI,
		SmallSet<unsigned, 32>& RegDefs,
		SmallSet<unsigned, 32>& RegUses) {
	// If MI is a call or return, just examine the explicit non-variadic operands.
	MCInstrDesc MCID = MI->getDesc();
	unsigned e = MI->isCall() || MI->isReturn() ? MCID.getNumOperands() :
		MI->getNumOperands();

	// Add R9 to RegDefs to prevent users of R9 from going into delay slot.
	if (MI->isCall())
		RegDefs.insert(OR1K::R9);

	// Add R9 to RegUses to prevent definers of R9 from going into delay slot.
	if (MI->isReturn())
		RegUses.insert(OR1K::R9);

	for (unsigned i = 0; i != e; ++i) {
		const MachineOperand &MO = MI->getOperand(i);
		unsigned Reg;

		if (!MO.isReg() || !(Reg = MO.getReg()))
			continue;

		if (MO.isDef())
			RegDefs.insert(Reg);
		else if (MO.isUse())
			RegUses.insert(Reg);
	}
}

//returns true if the Reg or its alias is in the RegSet.
bool Filler::IsRegInSet(const TargetRegisterInfo *TRI,
		SmallSet<unsigned, 32>& RegSet, unsigned Reg) {
	// Check Reg and all aliased Registers.
	for (MCRegAliasIterator AI(Reg, TRI, true);
			AI.isValid(); ++AI)
		if (RegSet.count(*AI))
			return true;
	return false;
}
