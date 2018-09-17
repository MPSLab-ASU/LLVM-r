//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//


#include "llvm/CodeGen/Passes.h"
#include "llvm/CodeGen/MachineOperand.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineLoopInfo.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/Support/TargetRegistry.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/RegAllocRegistry.h"
#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/Target/TargetMachine.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/Compiler.h"
#include "llvm/ADT/Statistic.h"
#include <iostream>	
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineBasicBlock.h"
#include "llvm/Support/raw_ostream.h"
#include "OR1K.h"
#include "OR1KInstrInfo.h"
#include "OR1KRegisterInfo.h"
#include "OR1KMachineFunctionInfo.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineInstrBundle.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Value.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Constants.h"
#include "llvm//MC/MCInst.h"
#include "InstPrinter/OR1KInstPrinter.h"
#include "OR1KMCInstLower.h"
#include "llvm-c/Core.h" //HwiSoo
#include <sstream>
#include <map>
#include <unordered_map>
#include <string>
#include <queue>

namespace llvm{
	static cl::opt<bool> EnableZDC(
			"enable-ZDC",
			cl::init(false),
			cl::desc("Implement data-flow protection part of nZDC soft error detection scheme."),
			cl::Hidden);
			
	static cl::opt<bool> EnablememZDC(
			"enable-memZDC",
			cl::init(false),
			cl::desc("Implement data-flow protection part of mem ZDC (currently no checking)."),
			cl::Hidden);
			
	static cl::opt<bool> EnablememZDCFullCmp(
			"enable-memZDCFullCmp",
			cl::init(false),
			cl::desc("Implement data-flow protection part of mem ZDC soft error detection scheme (for all stores)."),
			cl::Hidden);

	static cl::opt<bool> EnablememZDCCMPPprotection(
			"enable-memZDC-WDCF",
			cl::init(false),
			cl::desc("Implement compare instruction protection of mem ZDC + critical store detection scheme."),
			cl::Hidden);
			
			
	static cl::opt<bool> EnablememZDCInt(
			"enable-memZDCInt",
			cl::init(false),
			cl::desc("Implement data-flow protection part of mem ZDC + INT(currently no checking)."),
			cl::Hidden);
			
	static cl::opt<bool> EnablememZDCIntFullCmp(
			"enable-memZDCIntFullCmp",
			cl::init(false),
			cl::desc("Implement data-flow protection part of mem ZDC + INT soft error detection scheme (for all stores)."),
			cl::Hidden);

	static cl::opt<bool> EnablememZDCIntCMPPprotection(
			"enable-memZDCInt-WDCF",
			cl::init(false),
			cl::desc("Implement compare instruction protection of mem ZDC + INT + critical store detection scheme."),
			cl::Hidden);


	static cl::opt<bool> EnableSWIFT(
			"enable-SWIFT",
			cl::init(false),
			cl::desc("Implement data-flow protection part of SWIFT soft error detection scheme."),
			cl::Hidden);

	static cl::opt<bool> EnableSWIFTCMPprotection(
			"enable-SWIFT-WDCF",
			cl::init(false),
			cl::desc("Implement compare instruction protection of SWIFT soft error detection scheme."),
			cl::Hidden);

	static cl::opt<bool> EnableNEMESISCF(
			"enable-NEMESIS-CF",
			cl::init(false),
			cl::desc("Implement NEMESIS wrong direction control flow protection."),
			cl::Hidden);

	static cl::opt<bool> EnableEDDI(
			"enable-EDDI",
			cl::init(false),
			cl::desc("Implement data-flow protection part of EDDI soft error detection scheme."),
			cl::Hidden);
			
			
	static cl::opt<bool> EnableEDDIInt(
			"enable-EDDI-INT",
			cl::init(false),
			cl::desc("Implement data-flow protection part of EDDI soft error detection scheme. (+interleaving)"),
			cl::Hidden);
			
	static cl::opt<bool> EnableEDDIInt_SKIPADDR(
			"enable-EDDI-INT-SKIPADDR",
			cl::init(false),
			cl::desc("Implement data-flow protection part of EDDI soft error detection scheme. (+interleaving), skip addr comparison"),
			cl::Hidden);
			
	//static cl::opt<int64_t> EDDI_OFFSET(
	static cl::opt<int> EDDI_OFFSET(
			"eddi_offset",
			cl::init(-8192),
			cl::desc("EDDI offset for memory duplication"),
			cl::Hidden);
			
	static cl::opt<int> MEMZDC_OFFSET(
			"memZDC_offset",
			cl::init(-8192),
			cl::desc("memZDC offset for memory duplication"),
			cl::Hidden);
			
	static cl::opt<bool> EnablePZDC(
			"enable-PZDC",
			cl::init(false),
			cl::desc("Implement data-flow protection part of nZDC soft & hard error detection scheme. (ongoing work)"),
			cl::Hidden);
			
	static cl::opt<bool> EnablePZDCDebugCmp(
		"enable-PZDC-DebugCmp",
		cl::init(false),
		cl::desc("Implement data-flow protection part of nZDC soft & hard error detection scheme. (ongoing work)"),
		cl::Hidden);
		
		
	static cl::opt<bool> EnableHWISOO(
		"enable-HWISOO",
		cl::init(false),
		cl::desc("Implement add->sub"),
		cl::Hidden);
	
	static std::unordered_map<std::string, std::list<MachineInstr*>> PZDCTransformTable;
	static std::unordered_map<std::string, std::list<MachineInstr*>> PZDCTransformDebugTable;
			
	static MachineFunction* PZDC_MF = NULL;
	//HwiSoo. code from NEMESIS
	MachineBasicBlock* splitBlockAfterInstr(MachineInstr *MI, MachineFunction &MF) {

		// Create a new MBB for the code after the OrigBB.
		MachineBasicBlock *NewBB =
			MF.CreateMachineBasicBlock( (MI->getParent())->getBasicBlock());
		MachineFunction::iterator MBBI = (MI->getParent())->getIterator();

		(MI->getParent())->addSuccessor(NewBB);

		++MBBI;
		MF.insert(MBBI, NewBB);

		// Splice the instructions starting with MI over to NewBB.
		MachineBasicBlock::iterator T= (MI->getParent())->instr_end(), E= (MI->getParent())->instr_end();
		if ( T !=  (MI->getParent())->instr_begin()) T--;
		if (MI !=E && MI != T)  
		NewBB->splice(NewBB->end(),  (MI->getParent()), MI,  (MI->getParent())->end());
		else  errs() << "FIX it by hand. I CAN NOT SPLIT THIS BASICBLOCK\n F: "<< MF.getName() << "BB: " << MI->getParent()->getName() << "Instr: " << *MI << "\n";



		return NewBB;
	}
	MachineBasicBlock* splitBlockAfterInstrWithAllInsts(MachineInstr *MI, MachineFunction &MF) {

		// Create a new MBB for the code after the OrigBB.
		MachineBasicBlock *NewBB =
			MF.CreateMachineBasicBlock( (MI->getParent())->getBasicBlock());
		MachineFunction::iterator MBBI = (MI->getParent())->getIterator();

		(MI->getParent())->addSuccessor(NewBB);

		++MBBI;
		
		MF.insert(MBBI, NewBB);

		/*
		// Splice the instructions starting with MI over to NewBB.
		MachineBasicBlock::iterator T= (MI->getParent())->instr_end(), E= (MI->getParent())->instr_end();
		if ( T !=  (MI->getParent())->instr_begin()) T--;
		if (MI !=E && MI != T)  
		NewBB->splice(NewBB->end(),  (MI->getParent()), MI,  (MI->getParent())->end());
		else  errs() << "FIX it by hand. I CAN NOT SPLIT THIS BASICBLOCK\n F: "<< MF.getName() << "BB: " << MI->getParent()->getName() << "Instr: " << *MI << "\n";
		*/
		
		for (MachineBasicBlock::iterator IAfterJAL=++MI, E=NewBB->end(); IAfterJAL !=E ; ++IAfterJAL){
			//IAfterJAL = IAfterJAL;
			NewBB->remove(IAfterJAL);
			NewBB->insert(E, IAfterJAL);

		}
		return NewBB;
	}
			
	struct ZDC : public MachineFunctionPass {
		public:
			static char ID;
			// Pass identification, replacement for typeid
			//bool runOnMachineFunction(MachineFunction &F);
			//**********************************************************************
			// constructor
			//**********************************************************************


			ZDC() : MachineFunctionPass(ID) {    }

			//**********************************************************************
			// runOnMachineFunction
			//**********************************************************************

			std::unordered_map<unsigned int, unsigned int> registersMsrToSlvMap ={{ OR1K::R1, OR1K::R14 }, { OR1K::R2, OR1K::R15 }, {OR1K::R3, OR1K::R16 }, {OR1K::R4, OR1K::R17 }, {OR1K::R5, OR1K::R18 }, {OR1K::R6, OR1K::R19 }, {OR1K::R7, OR1K::R20}, {OR1K::R8, OR1K::R21}, {OR1K::R9, OR1K::R22},  {OR1K::R10, OR1K::R23}, {OR1K::R11, OR1K::R24}, {OR1K::R12, OR1K::R25}, {OR1K::R13, OR1K::R26}};
			
			std::unordered_map<unsigned int, unsigned int> registersSlvToMsrMap ={{ OR1K::R14, OR1K::R1 }, { OR1K::R15, OR1K::R2 }, {OR1K::R16, OR1K::R3 }, {OR1K::R17, OR1K::R4 }, {OR1K::R18, OR1K::R5 }, {OR1K::R19, OR1K::R6 }, {OR1K::R20, OR1K::R7}, {OR1K::R21, OR1K::R8}, {OR1K::R22, OR1K::R9},  {OR1K::R23, OR1K::R10}, {OR1K::R24, OR1K::R11}, {OR1K::R25, OR1K::R12}, {OR1K::R26, OR1K::R13}};

			std::vector<unsigned int> functionCallArgs={OR1K::R1, OR1K::R2, OR1K::R3, OR1K::R4, OR1K::R5, OR1K::R6, OR1K::R7, OR1K::R8, OR1K::R9, OR1K::R10, OR1K::R11, OR1K::R12};
			std::vector<unsigned int> cfcDirRegs={OR1K::R27, OR1K::R28}; // registers used for checking the direction of CF
			std::vector<unsigned int> cfcInstRegs={OR1K::R27, OR1K::R28}; // registers used for counting the number of master and slave instructions


			bool isGPR(unsigned int regNUM){
				std::unordered_map<unsigned int, unsigned int>::const_iterator got = registersMsrToSlvMap.find(regNUM);
				if (got == registersMsrToSlvMap.end())
				{
					return false;
				}
				return true;

			}

			
			unsigned int getSlaveReg(unsigned int regNUM){

				std::unordered_map<unsigned int, unsigned int>::const_iterator got = registersMsrToSlvMap.find(regNUM);
				// Check if iterator points to end of map
				if (got == registersMsrToSlvMap.end())
				{
					return regNUM;
				}
				else
				{
					return got->second; 
				}

			}
			
			unsigned int getSlaveOrMasterReg(unsigned int regNUM){

				std::unordered_map<unsigned int, unsigned int>::const_iterator got = registersMsrToSlvMap.find(regNUM);
				// Check if iterator points to end of map
				if (got == registersMsrToSlvMap.end())
				{
					got = registersSlvToMsrMap.find(regNUM);
					if (got == registersSlvToMsrMap.end())
					{
						printf("HWISOO:not_duplicated register is used for store");
						return regNUM;
					}
					else
					{
						return got->second; 
					}
					
				}
				else
				{
					return got->second; 
				}

			}

			MachineBasicBlock* makeErrorBB(MachineFunction &MF)
			{
				MachineBasicBlock *errorMBB = MF.CreateMachineBasicBlock();
				MachineFunction::iterator It = (MF.end())->getIterator();
				MF.insert(It, errorMBB);
				errorMBB->addSuccessor(errorMBB);


				//MachineInstr *MIAdd = BuildMI(MF, MF.begin()->begin()->getDebugLoc() , TII->get(OR1K::ADD)).addReg(OR1K::R22).addReg(OR1K::R22).addReg(OR1K::R22);
				//errorMBB->push_back(MIAdd);

				return errorMBB;
			}
			void checkFunctionCalls(MachineFunction &MF){

				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				int numBBs=0;
				for(MachineFunction::iterator MB = MF.begin(), MBE = MF.end(); (MB != MBE) ; ++MB, ++numBBs) {
					if( MF.getName() == "main" && MB == MF.begin() ){ // copies master registers to slave ones at the begining of main
						DebugLoc DL3= MB->begin()->getDebugLoc();
						// start trace
						MachineInstr *MInop100 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(100);
						MB->insert(MB->begin(), MInop100);
						for (auto reg : registersMsrToSlvMap){
							MachineInstr *copy = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(getSlaveReg(reg.first)).addReg(reg.first).addImm(0);
							MB->insert(MB->begin(), copy);
						}

					}
					for (MachineBasicBlock::iterator I=MB->begin(), E=MB->end(); I !=E ; ++I){
						DebugLoc DL3= MB->begin()->getDebugLoc();
						if (I->isCall() && std::next(I) != E){



							//1) inserts l.nop 200 before function call
							MachineInstr *MInop200 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(200);
							MB->insert(I, MInop200); 

							//1) inserts checking instructions before function call
							checkFunctionCallArguments(I, MF);

							//1) inserts l.nop 0 before function call/////
							MachineInstr *MInop = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
							MB->insert(I, MInop); 

							//2) inserts l.nop 100 after copying instructions
							MachineInstr *MInop100 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(100);
							MB->insertAfter(I, MInop100);
							//3) copy registers to the shadows registers after the original l.nop after function call
							for (auto reg : registersMsrToSlvMap){
								MachineInstr *copy = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(getSlaveReg(reg.first)).addReg(reg.first).addImm(0);
								MB->insertAfter(I, copy); 
							}
							//this is redundant.. However, we need this because some passes eliminate the first copy
							MachineInstr *copy = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R14).addReg(OR1K::R1).addImm(0);
							MB->insertAfter(I, copy);

							//this is nop after CAll
							MachineInstr *MInop0 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
							MB->insertAfter(I, MInop0);



						}//end of if
					}// end of for
				}//end of for
			}// end of function
			bool isMasterReg(unsigned int reg){
				return ( getSlaveReg(reg) != reg) ? true : false;
			}
			//this function checks the function call arguments and sp, and fp (R1...R9)
			// we used register R15 and R17 to make a check sum of registers R1...R9
			// we just compare the checksums
			void checkFunctionCallArguments(MachineInstr *MI, MachineFunction &MF) {


				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				DebugLoc DL3= MI->getDebugLoc();
				MachineFunction::iterator MBB;

				// first two add for making check sum registers
				MachineInstr *MIcmp = NULL;
				MachineInstr *MItest = NULL;


				// comparing registers
				for (auto& Reg : functionCallArgs ){
					// jump to diagnosis BB if mismatch is observed
					MIcmp = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(Reg).addReg(getSlaveReg(Reg));
					MI->getParent()->insert(MI, MIcmp);
					MItest = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(ErrorBB);
					MI->getParent()->insert(MI, MItest);
				}

			} //end-of-function

			void printAllTerminator (MachineFunction &MF) { // duplicate computaional and load instructions with redundant registers
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					errs() << "Terminator in BB"<<MBB->getNumber()<<"\n";
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if (I->isTerminator())
						{

							//MBB->dump();
							errs() << "Terminator:"<<instrToString(I)<<"\n";
						}
							
					}// end of for
					errs() << "\n";
				}//end of for
			}//end of function

			
			
void convertAddToSub (MachineFunction &MF) { // change OPCODE of add to sub
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if((I->getOpcode() == OR1K::ADD)){
							//I->setOpcode(OR1K::SUB);
							//I->getDesc().Opcode=OR1K::SUB;
							I->setDesc(TII->get(OR1K::SUB));
							
							/*
							MachineInstr *slaveinst=  MF.CloneMachineInstr (&*I);


							slaveinst->setFlags(0);


							for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++){ //
								if (I->getOperand(opcount).isReg() ){
									slaveinst->getOperand(opcount).setReg(getSlaveReg(I->getOperand(opcount).getReg())); 
								}
						

							} //end of if
	*/
							//MBB->insert(I, slaveinst);

						}// end of if
					}// end of for
				}//end of for
}//end of function
			
			

			void duplicateInstructions (MachineFunction &MF) { // duplicate computaional and load instructions with redundant registers
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if( !(I->isBranch()) &&  !(I->mayStore())  &&  !(I->isCall()) && !(I->isReturn()) && !(I->isCompare()) &&  !(I->getOpcode() == OR1K::NOP || (I->getOpcode() > 96 && I->getOpcode() < 129) /*compare*/) ){

							MachineInstr *slaveinst=  MF.CloneMachineInstr (&*I);


							slaveinst->setFlags(0);


							for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++){ //
								if (I->getOperand(opcount).isReg() ){
									slaveinst->getOperand(opcount).setReg(getSlaveReg(I->getOperand(opcount).getReg())); 
								}

							} //end of for

							MBB->insert(I, slaveinst);

						}// end of if	
					}// end of for
				}//end of for
}//end of function

			void duplicateInstructionsmemZDC (MachineFunction &MF) { // duplicate computaional and load instructions with redundant registers
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if( !(I->isBranch()) &&  /*!(I->mayStore())  &&*/  !(I->isCall()) && !(I->isReturn()) && !(I->isCompare()) &&  !(I->getOpcode() == OR1K::NOP || (I->getOpcode() > 96 && I->getOpcode() < 129) /*compare*/) ){

							MachineInstr *slaveinst=  MF.CloneMachineInstr (&*I);


							slaveinst->setFlags(0);


							for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++){ //
								if (I->getOperand(opcount).isReg() ){
									slaveinst->getOperand(opcount).setReg(getSlaveReg(I->getOperand(opcount).getReg())); 
								}
								else if (I->getOperand(opcount).isImm() && (I->mayStore() || I->mayLoad()) ){
									slaveinst->getOperand(opcount).setImm(I->getOperand(opcount).getImm()-MEMZDC_OFFSET); 
								}

							} //end of for

							MBB->insert(I, slaveinst);

						}// end of if	
					}// end of for
				}//end of for
}//end of function

			void duplicateInstructionsmemZDCInt (MachineFunction &MF) { // duplicate computaional and load instructions with redundant registers
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					std::queue<MachineBasicBlock::iterator> interleavingQueue;
					bool moveAllToNextBlock = false;
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						
							

						if(I==MBB->begin() && (I->getOpcode() == OR1K::JAL || I->getOpcode() == OR1K::JALR))
						{
							//errs() << "skip first JAL\n";
							continue;
						}
						
						
						if (std::next(I) == E || (I->getOpcode() > 96 && I->getOpcode() < 129) ) //emit all instructions for interleaving
						{
							if (!(I->isBranch()) &&  /*!(I->mayStore())  &&*/  !(I->isCall()) && !(I->isReturn()) && !(I->isCompare()) &&  !(I->getOpcode() == OR1K::NOP) && !(I->getOpcode() > 96 && I->getOpcode() < 129))
								interleavingQueue.push(I);
							while (interleavingQueue.size() != 0)
							{
								MachineBasicBlock::iterator interleavedI = interleavingQueue.front();
								MachineInstr *slaveinst=  MF.CloneMachineInstr (&*interleavedI);
								slaveinst->setFlags(0);
								for (unsigned int opcount=0 ; opcount < interleavedI->getNumOperands() ;opcount++){ //
									if (interleavedI->getOperand(opcount).isReg() ){
										slaveinst->getOperand(opcount).setReg(getSlaveReg(interleavedI->getOperand(opcount).getReg())); 
									}
									else if (interleavedI->getOperand(opcount).isImm() && (interleavedI->mayStore() || interleavedI->mayLoad()) ){
										slaveinst->getOperand(opcount).setImm(interleavedI->getOperand(opcount).getImm()-MEMZDC_OFFSET); 
									}

								} //end of for
								MBB->insert(I, slaveinst);
								interleavingQueue.pop();
							}
						}
						
						else if (I->getOpcode() == OR1K::JAL || I->getOpcode() == OR1K::JALR) //emit and split the function
						{
						
							while (interleavingQueue.size() != 0)
							{
								MachineBasicBlock::iterator interleavedI = interleavingQueue.front();
								MachineInstr *slaveinst=  MF.CloneMachineInstr (&*interleavedI);
								slaveinst->setFlags(0);
								for (unsigned int opcount=0 ; opcount < interleavedI->getNumOperands() ;opcount++){ //
									if (interleavedI->getOperand(opcount).isReg() ){
										slaveinst->getOperand(opcount).setReg(getSlaveReg(interleavedI->getOperand(opcount).getReg())); 
									}
									else if (interleavedI->getOperand(opcount).isImm() && (interleavedI->mayStore() || interleavedI->mayLoad()) ){
										slaveinst->getOperand(opcount).setImm(interleavedI->getOperand(opcount).getImm()-MEMZDC_OFFSET); 
									}

								} //end of for
								MBB->insert(I, slaveinst);
								interleavingQueue.pop();
							}
							//MachineBasicBlock* splittedBlock = splitBlockAfterInstr(I, MF);
							
							MachineBasicBlock* splittedBlock = splitBlockAfterInstr(I, MF);
							break;
	
							
						}
						
						else if( !(I->isBranch()) &&  /*!(I->mayStore())  &&*/  !(I->isCall()) && !(I->isReturn()) && !(I->isCompare()) &&  !(I->getOpcode() == OR1K::NOP || (I->getOpcode() > 96 && I->getOpcode() < 129)) ){
							interleavingQueue.push(I);
							/*
							MachineInstr *slaveinst=  MF.CloneMachineInstr (&*I);
							slaveinst->setFlags(0);
							for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++){ //
								if (I->getOperand(opcount).isReg() ){
									slaveinst->getOperand(opcount).setReg(getSlaveReg(I->getOperand(opcount).getReg())); 
								}
								else if (I->getOperand(opcount).isImm() && (I->mayStore() || I->mayLoad()) ){
									slaveinst->getOperand(opcount).setImm(I->getOperand(opcount).getImm()-MEMZDC_OFFSET); 
								}

							} //end of for

							MBB->insert(I, slaveinst);
							*/

						}// end of if	
					}// end of for
					//HWISOO_DEBUG
					if (interleavingQueue.size() != 0)
						errs()<< "There are instrs in interleaving queue (BB:"<<MBB->getNumber()<<")\n";
				}//end of for
}//end of function



			std::string instrToString (MachineBasicBlock::iterator I)
			{
				std::ostringstream tempOs;
				tempOs << I->getOpcode() << "/";
				for (int k=0; k< I->getNumOperands(); k++)
				{
					tempOs << ",";
					if (I->getOperand(k).isReg() ) tempOs <<"R/"<<I->getOperand(k).getReg();
					else if (I->getOperand(k).isImm()){ tempOs <<"I/"<<I->getOperand(k).getImm();}
					else if (I->getOperand(k).isCImm()){tempOs << "CI/"<<I->getOperand(k).getCImm();}
					else if (I->getOperand(k).isMBB()) {tempOs << "BB/"<<I->getOperand(k).getMBB()->getFullName() <<"/N/"<<I->getOperand(k).getMBB()->getNumber()<< "/T/"<<I->getOperand(k).getType();}
					else if (I->getOperand(k).isSymbol()) {tempOs << "S/"<<I->getOperand(k).getSymbolName() <<"/T/"<<I->getOperand(k).getType();}
					else if (I->getOperand(k).isMCSymbol()) {tempOs << "MS/"<<I->getOperand(k).getSymbolName() <<"/T/"<<I->getOperand(k).getSymbolName();}

					else if (I->getOperand(k).isFPImm()) {tempOs << "FI/"<<I->getOperand(k).getFPImm() <<"/T/"<<I->getOperand(k).getType();}
					else if (I->getOperand(k).isBlockAddress()) {tempOs << "BA/"<<I->getOperand(k).getBlockAddress() <<"/T/"<<I->getOperand(k).getType();}

					else if (I->getOperand(k).isGlobal()) {tempOs << "G/"<<I->getOperand(k).getGlobal () <<"/T/"<<I->getOperand(k).getType();}

					else if (I->getOperand(k).isMetadata()) {tempOs << "M/"<<I->getOperand(k).getMetadata() <<"/T/"<<I->getOperand(k).getType();}

					else
						tempOs << "ELSE/T/" << I->getOperand(k).getType();
				}
				std::string pseudoInst;
				pseudoInst=tempOs.str();
				return pseudoInst;
			}
			
bool PZDCTransformation(std::list<MachineInstr*> &transformInsts, std::list<MachineInstr*> &transformDebugInsts, MachineFunction &MF, const TargetInstrInfo *TII, MachineFunction::iterator MBB, MachineBasicBlock::iterator I, DebugLoc &DL3, std::string instString)
{
	MachineInstr *newInst;
	unsigned int opcode = I->getOpcode();
	switch(opcode) {
									
case OR1K::ADDI: 
	//addi r28, r0, -IMM
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R28).addReg(OR1K::R0).addImm(-I->getOperand(2).getImm());
	transformInsts.push_back(newInst);
	
	//sub rd*, rs*, r28
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::SUB)).addReg(getSlaveReg(I->getOperand(0).getReg())).addReg(getSlaveReg(I->getOperand(1).getReg())).addReg(OR1K::R28);
	transformInsts.push_back(newInst);

	break;
case OR1K::MOVHI:
	//addi r28, r0, src (Imm/Global)
	if(I->getOperand(1).isGlobal())
	{
		newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R28).addReg(OR1K::R0).addGlobalAddress(I->getOperand(1).getGlobal());
		newInst->getOperand(2).setTargetFlags(I->getOperand(1).getTargetFlags());	
	}
	
	else if(I->getOperand(1).isImm())
		newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R28).addReg(OR1K::R0).addImm(I->getOperand(1).getImm());
	else
	{
		errs() << "MOVHI: unknown type of operand: "<<instString<<"\n";
		return false;
	}
	transformInsts.push_back(newInst);
	
	//slli dst, r28, #16
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::SLLI)).addReg(getSlaveReg(I->getOperand(0).getReg())).addReg(OR1K::R28).addImm(16);
	transformInsts.push_back(newInst);
	break;
case OR1K::ORI:
	//l.addi	r30, r0, -1
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R30).addReg(OR1K::R0).addImm(-1);
	transformInsts.push_back(newInst);
	
	//l.xori	r29, r30, src2 (Imm / Global)
	if(I->getOperand(2).isGlobal())
	{
		newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::XORI)).addReg(OR1K::R29).addReg(OR1K::R30).addGlobalAddress(I->getOperand(2).getGlobal());
		newInst->getOperand(2).setTargetFlags(I->getOperand(2).getTargetFlags());		
	}
	else if(I->getOperand(2).isImm())
		newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::XORI)).addReg(OR1K::R29).addReg(OR1K::R30).addImm(I->getOperand(2).getImm());
	else
	{
		errs() << "ORI: unknown type of operand: "<<instString<<"\n";
		return false;
	}
	transformInsts.push_back(newInst);
	
	//l.xor	r28, r30, src1
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::XOR)).addReg(OR1K::R28).addReg(OR1K::R30).addReg(getSlaveReg(I->getOperand(1).getReg()));
	transformInsts.push_back(newInst);
	
	//l.and	dst, r28, r29
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::AND)).addReg(getSlaveReg(I->getOperand(0).getReg())).addReg(OR1K::R28).addReg(OR1K::R29);
	transformInsts.push_back(newInst);
	
	//l.xor	dst, dst, r30
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::XOR)).addReg(getSlaveReg(I->getOperand(0).getReg())).addReg(getSlaveReg(I->getOperand(0).getReg())).addReg(OR1K::R30);
	transformInsts.push_back(newInst);	
	
	
	break;
case OR1K::XOR:
	//addi	r30, r0, -1
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R30).addReg(OR1K::R0).addImm(-1);
	transformInsts.push_back(newInst);
	
	//xor	r28, r30, src1
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::XOR)).addReg(OR1K::R28).addReg(OR1K::R30).addReg(getSlaveReg(I->getOperand(1).getReg()));
	transformInsts.push_back(newInst);
	
	//xor	r29, r30, src2
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::XOR)).addReg(OR1K::R29).addReg(OR1K::R30).addReg(getSlaveReg(I->getOperand(2).getReg()));
	transformInsts.push_back(newInst);
	
	//and	r28, r28, src2
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::AND)).addReg(OR1K::R28).addReg(OR1K::R28).addReg(getSlaveReg(I->getOperand(2).getReg()));
	transformInsts.push_back(newInst);
	
	//and	r29, r29, src1
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::AND)).addReg(OR1K::R29).addReg(OR1K::R29).addReg(getSlaveReg(I->getOperand(1).getReg()));
	transformInsts.push_back(newInst);
	
	//or	dest, r28, r29
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::OR)).addReg(getSlaveReg(I->getOperand(0).getReg())).addReg(OR1K::R28).addReg(OR1K::R29);
	transformInsts.push_back(newInst);

	break;
case OR1K::ANDI:
	//l.addi	r30, r0, -1
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R30).addReg(OR1K::R0).addImm(-1);
	transformInsts.push_back(newInst);
	
	//l.xori	r29, r30, IMM
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::XORI)).addReg(OR1K::R29).addReg(OR1K::R30).addImm(I->getOperand(2).getImm());
	transformInsts.push_back(newInst);
	
	//l.xor	r28, r30, SRC
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::XOR)).addReg(OR1K::R28).addReg(OR1K::R30).addReg(getSlaveReg(I->getOperand(1).getReg()));
	transformInsts.push_back(newInst);
	
	//l.or	DST, r28, r29
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::OR)).addReg(getSlaveReg(I->getOperand(0).getReg())).addReg(OR1K::R28).addReg(OR1K::R29);
	transformInsts.push_back(newInst);	
	
	//l.xor	DST, DST, r30
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::XOR)).addReg(getSlaveReg(I->getOperand(0).getReg())).addReg(getSlaveReg(I->getOperand(0).getReg())).addReg(OR1K::R30);
	transformInsts.push_back(newInst);	

	break;
	
	
case OR1K::SLLI:
	//l.muli	DST, SRC, 2^IMM
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::MULI)).addReg(getSlaveReg(I->getOperand(0).getReg())).addReg(getSlaveReg(I->getOperand(1).getReg())).addImm(int(pow(2, I->getOperand(2).getImm())));
	transformInsts.push_back(newInst);	
	break;
	
case OR1K::ADD:
	//l.sub	r28, r0, SRC2
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::SUB)).addReg(OR1K::R28).addReg(OR1K::R0).addReg(getSlaveReg(I->getOperand(2).getReg()));
	transformInsts.push_back(newInst);	
	
	//l.sub	DST, SRC1, r28
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::SUB)).addReg(getSlaveReg(I->getOperand(0).getReg())).addReg(getSlaveReg(I->getOperand(1).getReg())).addReg(OR1K::R28);
	transformInsts.push_back(newInst);	
	break;
case OR1K::LWZ:
	//l.addi	r29, src1, 4092
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R29).addReg(getSlaveReg(I->getOperand(1).getReg())).addImm(4092);
	transformInsts.push_back(newInst);	
	
	//l.lwz	dst, -(4092-imm)(r29)
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::LWZ)).addReg(getSlaveReg(I->getOperand(0).getReg())).addReg(OR1K::R29).addImm(-(4092-I->getOperand(2).getImm()));
	transformInsts.push_back(newInst);
	break;
case OR1K::SRLI:
	//l.addi	r28, r0, 2^IMM
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R28).addReg(OR1K::R0).addImm(int(pow(2, I->getOperand(2).getImm())));
	transformInsts.push_back(newInst);	
	
	//l.divu	DST, SRC, r28
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::DIVU)).addReg(getSlaveReg(I->getOperand(0).getReg())).addReg(getSlaveReg(I->getOperand(1).getReg())).addReg(OR1K::R28);
	transformInsts.push_back(newInst);	
	break;
case OR1K::XORI:
	//l.addi	r30, r0, -1
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R30).addReg(OR1K::R0).addImm(-1);
	transformInsts.push_back(newInst);	
	
	//l.xor	r28, r30, src
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::XOR)).addReg(OR1K::R28).addReg(OR1K::R30).addReg(getSlaveReg(I->getOperand(1).getReg()));
	transformInsts.push_back(newInst);		
	
	//l.addi	r29, r0, -1
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R29).addReg(OR1K::R0).addImm(I->getOperand(2).getImm());
	transformInsts.push_back(newInst);		
	
	//l.and	r28, r28, r29
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::AND)).addReg(OR1K::R28).addReg(OR1K::R28).addReg(OR1K::R29);
	transformInsts.push_back(newInst);			
	
	//l.xori	r29, r30, -1
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::XORI)).addReg(OR1K::R29).addReg(OR1K::R30).addImm(I->getOperand(2).getImm());
	transformInsts.push_back(newInst);		
	
	//l.and	r29, r29, src
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::AND)).addReg(OR1K::R29).addReg(OR1K::R29).addReg(getSlaveReg(I->getOperand(1).getReg()));
	transformInsts.push_back(newInst);			
	
	//l.or	dst, r28, r29
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::OR)).addReg(getSlaveReg(I->getOperand(0).getReg())).addReg(OR1K::R28).addReg(OR1K::R29);
	transformInsts.push_back(newInst);	
	
	break;
	
case OR1K::DIV:
case OR1K::DIVU:
{
	/* Note) we will split block when we want to insert instructions
	MachineBasicBlock* divEndBB=splitBlockAfterInstr(I, MF);
	MachineBasicBlock* divSubBB=splitBlockAfterInstr(I, MF);
	MachineBasicBlock* sllLoopBB=splitBlockAfterInstr(I, MF);
	MachineBasicBlock* sllSetupBB=splitBlockAfterInstr(I, MF);
	*/
	
	//l.addi	r27, r0, 0	
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R27).addReg(OR1K::R0).addImm(0);
	transformInsts.push_back(newInst);	
	
	//l.sflts	SRC, SRC2 #skip if SRC<SRC2
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::SFLTS)).addReg(getSlaveReg(I->getOperand(1).getReg())).addReg(getSlaveReg(I->getOperand(2).getReg()));
	transformInsts.push_back(newInst);	
	
	//l.bf	.div_end
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::BF)).addMBB(ErrorBB);;
	transformInsts.push_back(newInst);	
	
	//l.add	r30, r0, SRC
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::ADD)).addReg(OR1K::R30).addReg(OR1K::R0).addReg(getSlaveReg(I->getOperand(1).getReg()));
	transformInsts.push_back(newInst);	
	
//.sll_setup:
	//l.add	r28, r0, SRC2
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::ADD)).addReg(OR1K::R28).addReg(OR1K::R0).addReg(getSlaveReg(I->getOperand(2).getReg()));
	transformInsts.push_back(newInst);	

	//l.addi	r29, r0, 1
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::ADD)).addReg(OR1K::R29).addReg(OR1K::R0).addReg(getSlaveReg(I->getOperand(2).getReg()));
	transformInsts.push_back(newInst);	
	
//.sll_loop:
	//l.slli	r28, r28, 1
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::SLLI)).addReg(OR1K::R28).addReg(OR1K::R28).addImm(1);
	transformInsts.push_back(newInst);	
	
	//l.slli	r29, r29, 1
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::SLLI)).addReg(OR1K::R29).addReg(OR1K::R29).addImm(1);
	transformInsts.push_back(newInst);		

	//l.sfgts	r30, r28 #loop if r1 > r28
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::SFGTS)).addReg(OR1K::R30).addReg(OR1K::R28);
	transformInsts.push_back(newInst);		

	//l.bf	.sll_loop
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::BF)).addMBB(ErrorBB);;
	transformInsts.push_back(newInst);	

	//l.sfeq	r30, r28 #if r1 != r2, div r2 by 2
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::SFEQ)).addReg(OR1K::R30).addReg(OR1K::R28);
	transformInsts.push_back(newInst);	
	
	//l.bf	.div_sub
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::BF)).addMBB(ErrorBB);;
	transformInsts.push_back(newInst);	
	
	//l.srli	r28, r28, 1
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::SRLI)).addReg(OR1K::R28).addReg(OR1K::R28).addImm(1);
	transformInsts.push_back(newInst);	
	
	//l.srli	r29, r29, 1
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::SRLI)).addReg(OR1K::R29).addReg(OR1K::R29).addImm(1);
	transformInsts.push_back(newInst);		

//.div_sub:
	//l.sub	r30, r30, r28
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::SUB)).addReg(OR1K::R30).addReg(OR1K::R30).addReg(OR1K::R28);
	transformInsts.push_back(newInst);	
	
	//l.add	r27, r27, r29
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::ADD)).addReg(OR1K::R27).addReg(OR1K::R27).addReg(OR1K::R29);
	transformInsts.push_back(newInst);	
	
	//l.sfges	r30, SRC2 #if r1 >= r2, go to loop
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::SFGES)).addReg(OR1K::R30).addReg(getSlaveReg(I->getOperand(2).getReg()));
	transformInsts.push_back(newInst);	
	
	//l.bf	.sll_setup
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::BF)).addMBB(ErrorBB);;
	transformInsts.push_back(newInst);
		
//.div_end:
	//l.addi	DST, r27, 0
	newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::ADDI)).addReg(getSlaveReg(I->getOperand(0).getReg())).addReg(OR1K::R27).addImm(0);
	transformInsts.push_back(newInst);
	
}
	break;
default:
	//errs() << "is CFI Inst?:" << I->isCFIInstruction()<<"\n";
	if(!(I->isCFIInstruction()))
	{
		errs() << "PZDC Unimplemented: "<<instString<<"\n";//errs() << "PZDC Unimplemented: "<<instString<<"\n";
		I->dump();
	}
		
} // end of switch(opcode) for instruction transformation
	PZDCTransformTable.insert({instString, transformInsts});
	if(EnablePZDCDebugCmp)
	{
		switch(opcode) {
case OR1K::ADDI : 
case OR1K::MOVHI:
case OR1K::ORI:
case OR1K::XOR:
case OR1K::ANDI:
case OR1K::SLLI:
case OR1K::ADD:
case OR1K::LWZ:
case OR1K::SRLI:
case OR1K::XORI:
case OR1K::DIV:
case OR1K::DIVU:
		newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::SFNE), I->getOperand(0).getReg()).addReg(getSlaveReg(I->getOperand(0).getReg()));
		transformDebugInsts.push_back(newInst);
	
		newInst = BuildMI(*PZDC_MF, DL3 , TII->get(OR1K::BF)).addMBB(ErrorBB);
		transformDebugInsts.push_back(newInst);	
		break;
default:
	errs() << "PZDC Unimplemented: "<<instString<<"\n";
	return false; //HwiSoo. for debug
									
		} // end of switch(opcode) for debug instructions
	PZDCTransformDebugTable.insert({instString, transformDebugInsts});
									
	}
	return true;
}
			
			bool isShadowInstr(llvm::MachineBasicBlock::iterator inst)
			{
				for (unsigned int opcount=0; opcount < inst->getNumOperands(); opcount++)
					if (inst->getOperand(opcount).isReg()){
						switch(inst->getOperand(opcount).getReg()){
							case OR1K::R14:
							case OR1K::R15:
							case OR1K::R16:
							case OR1K::R17:
							case OR1K::R18:
							case OR1K::R19:
							case OR1K::R20:
							case OR1K::R21:
							case OR1K::R22:
							case OR1K::R23:
							case OR1K::R24:
							case OR1K::R25:
							case OR1K::R26:
							case OR1K::R27:
							case OR1K::R28:
							case OR1K::R29:
							case OR1K::R30:
							case OR1K::R31:
								return true;
							default: continue;
						}
					}
				return false;

			}
			
			void duplicateInstructionsPZDC (MachineFunction &MF) { // duplicate computaional and load instructions with redundant registers
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					if(MBB->begin() == MBB->end())
					{
						continue;
					}
					if(isShadowInstr(MBB->begin()))
					{
						continue;
					}
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						DebugLoc DL3= MBB->begin()->getDebugLoc();	
						if( !(I->isBranch()) &&  !(I->mayStore())  &&  !(I->isCall()) && !(I->isReturn()) && !(I->isCompare()) &&  !(I->getOpcode() == OR1K::NOP || (I->getOpcode() > 96 && I->getOpcode() < 129) /*compare*/) ){
							std::string instString =instrToString(I);
							
							std::list<MachineInstr*> transformInsts;
							std::list<MachineInstr*> transformDebugInsts;
							
							auto search = PZDCTransformTable.find(instString);

							if(search != PZDCTransformTable.end()) {
								transformInsts = search->second;
								if(EnablePZDCDebugCmp)
								{
									auto debugSearch = PZDCTransformDebugTable.find(instString);
									transformDebugInsts = debugSearch->second;
								}
							}
							else 
							{
								if(!PZDCTransformation(transformInsts, transformDebugInsts, MF, TII, MBB, I, DL3, instString)) continue;
								
							}

							if(I->getOpcode()==OR1K::DIV || I->getOpcode()==OR1K::DIVU)
							{
								int instCount=0;
								MachineBasicBlock* divEndBB=splitBlockAfterInstr(I, MF);
								MachineBasicBlock* divSubBB=splitBlockAfterInstr(I, MF);
								MachineBasicBlock* sllLoopBB=splitBlockAfterInstr(I, MF);
								MachineBasicBlock* sllSetupBB=splitBlockAfterInstr(I, MF);
								
								MachineBasicBlock* currentTargetBB = &(*MBB);
								
								for (std::list<MachineInstr*>::iterator it=transformInsts.begin(); it != transformInsts.end(); ++it)
								{	
									MachineInstr *newInst = MF.CloneMachineInstr (*it);
									if(instCount == 0)
									{
										errs()<<"Start!!\n";
										newInst->dump();
										errs()<<"-----\n";
									}
									
									if(instCount == 2) //l.bf	.div_end
									{
										newInst->dump();
										errs()<<instrToString(newInst)<<"\n";
										newInst->getOperand(0).setMBB(divEndBB);
										//newInst->addOperand(MF, MachineOperand::CreateMBB(divEndBB));
										
									}
									else if(instCount == 4) // .sll_setup:
										currentTargetBB = sllSetupBB;
									else if(instCount == 6) // .sll_loop:
										currentTargetBB = sllLoopBB;
									else if(instCount == 9) //	l.bf	.sll_loop
									{
										newInst->dump();
										errs()<<instrToString(newInst)<<"\n";
										newInst->getOperand(0).setMBB(sllLoopBB);
										//newInst->addOperand(MF, MachineOperand::CreateMBB(sllLoopBB));
									}
									else if(instCount == 11) //	l.bf	.div_sub
									{
										newInst->dump();
										errs()<<instrToString(newInst)<<"\n";
										newInst->getOperand(0).setMBB(divSubBB);
										//newInst->addOperand(MF, MachineOperand::CreateMBB(divSubBB));
									}
									else if(instCount == 14) //	.div_sub:
										currentTargetBB = divSubBB;
									else if(instCount == 17) //	l.bf	.sll_setup
									{
										newInst->dump();
										errs()<<instrToString(newInst)<<"\n";
										newInst->getOperand(0).setMBB(sllSetupBB);
										//newInst->addOperand(MF, MachineOperand::CreateMBB(sllSetupBB));
									}
									else if(instCount == 18) // .div_end:
										currentTargetBB = divEndBB;

									currentTargetBB->insert((currentTargetBB->end()), newInst);			
									instCount++;
								}
								
								if(EnablePZDCDebugCmp)
								{
									for (std::list<MachineInstr*>::iterator it=transformDebugInsts.begin(); it != transformDebugInsts.end(); ++it)
									{	
										MachineInstr *newInst = MF.CloneMachineInstr (*it);
										if(newInst->getOpcode()==OR1K::BF)
										{
											for (unsigned int opcount=0 ; opcount < newInst->getNumOperands() ;opcount++){ 
												if (newInst->getOperand(opcount).isMBB() ){
													newInst->getOperand(opcount).setMBB(ErrorBB);
												}
											
											}
										}
										divEndBB->insert((MBB->end()), newInst);
									}								
								}

							}
							else
							{
								for (std::list<MachineInstr*>::iterator it=transformInsts.begin(); it != transformInsts.end(); ++it)
								{	
									MachineInstr *newInst = MF.CloneMachineInstr (*it);

									MBB->insert(I, newInst);			
								}
								if(EnablePZDCDebugCmp)
								{
									for (std::list<MachineInstr*>::iterator it=transformDebugInsts.begin(); it != transformDebugInsts.end(); ++it)
									{	
										MachineInstr *newInst = MF.CloneMachineInstr (*it);
										if(newInst->getOpcode()==OR1K::BF)
										{
											for (unsigned int opcount=0 ; opcount < newInst->getNumOperands() ;opcount++){ 
												if (newInst->getOperand(opcount).isMBB() ){
													newInst->getOperand(opcount).setMBB(ErrorBB);
												}
											
											}
										}
										
										MBB->insertAfter(I, newInst);			
										I++;
									}								
								}
							}

							
						}// end of if	
					}// end of for
				}//end of for
}//end of function


			void duplicateInstructionsEDDIInt (MachineFunction &MF) { // duplicate computaional and load instructions with redundant registers
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					std::queue<MachineBasicBlock::iterator> interleavingQueue;
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if(I==MBB->begin() && (I->getOpcode() == OR1K::JAL || I->getOpcode() == OR1K::JALR))
						{
							continue;
						}
						
						if (std::next(I) == E || I->mayStore() || (I->getOpcode() > 96 && I->getOpcode() < 129)) //emit all instructions for interleaving
						{
							if (!(I->isBranch()) &&  /*!(I->mayStore())  &&*/  !(I->isCall()) && !(I->isReturn()) && !(I->isCompare()) &&  !(I->getOpcode() == OR1K::NOP) && !(I->getOpcode() > 96 && I->getOpcode() < 129))
								interleavingQueue.push(I);
							while (interleavingQueue.size() != 0)
							{
								MachineBasicBlock::iterator interleavedI = interleavingQueue.front();
								MachineInstr *slaveinst=  MF.CloneMachineInstr (&*interleavedI);
								slaveinst->setFlags(0);
								for (unsigned int opcount=0 ; opcount < interleavedI->getNumOperands() ;opcount++){ //
									if (interleavedI->getOperand(opcount).isReg() ){
										slaveinst->getOperand(opcount).setReg(getSlaveReg(interleavedI->getOperand(opcount).getReg())); 
									}
									
									else if (interleavedI->getOperand(opcount).isImm() && (interleavedI->mayStore() || interleavedI->mayLoad()) ){
										slaveinst->getOperand(opcount).setImm(interleavedI->getOperand(opcount).getImm()-MEMZDC_OFFSET); 
									}
									

								} //end of for
								if ((I->getOpcode() > 96 && I->getOpcode() < 129) || (I->mayStore() && interleavingQueue.size() != 1)
								|| 	(I->isBranch()) || (I->isCall()) || (I->isReturn())  )
								{
									MBB->insert(I, slaveinst);
									

								}
								else
								{
									MBB->insertAfter(I, slaveinst);
									I++;
								}
								interleavingQueue.pop();
							}
						}
						
						else if (I->getOpcode() == OR1K::JAL || I->getOpcode() == OR1K::JALR) //emit and split the function
						{
						
							while (interleavingQueue.size() != 0)
							{
								MachineBasicBlock::iterator interleavedI = interleavingQueue.front();
								MachineInstr *slaveinst=  MF.CloneMachineInstr (&*interleavedI);
								slaveinst->setFlags(0);
								for (unsigned int opcount=0 ; opcount < interleavedI->getNumOperands() ;opcount++){ //
									if (interleavedI->getOperand(opcount).isReg() ){
										slaveinst->getOperand(opcount).setReg(getSlaveReg(interleavedI->getOperand(opcount).getReg())); 
									}
									else if (interleavedI->getOperand(opcount).isImm() && (interleavedI->mayStore() || interleavedI->mayLoad()) ){
										slaveinst->getOperand(opcount).setImm(interleavedI->getOperand(opcount).getImm()-MEMZDC_OFFSET); 
									}

								} //end of for
								MBB->insert(I, slaveinst);
								interleavingQueue.pop();
							}
							//MachineBasicBlock* splittedBlock = splitBlockAfterInstr(I, MF);
							
							MachineBasicBlock* splittedBlock = splitBlockAfterInstr(I, MF);
							break;
	
							
						}
						else if( !(I->isBranch()) &&  /*!(I->mayStore())  &&*/  !(I->isCall()) && !(I->isReturn()) && !(I->isCompare()) &&  !(I->getOpcode() == OR1K::NOP || (I->getOpcode() > 96 && I->getOpcode() < 129)) && !I->isCFIInstruction() ){
							interleavingQueue.push(I);
							if (interleavingQueue.size()>2)
							{
								//errs() << "Test MF"<<MF.getName() <<", BB:"<<MBB->getNumber()<<", queue size:"<<interleavingQueue.size() <<"\n";
								
								MachineBasicBlock::iterator interleavedI = interleavingQueue.front();
								//errs() << instrToString(interleavedI)<<"\n";
								MachineInstr *slaveinst=  MF.CloneMachineInstr (&*interleavedI);
								slaveinst->setFlags(0);
								for (unsigned int opcount=0 ; opcount < interleavedI->getNumOperands() ;opcount++){ //
									if (interleavedI->getOperand(opcount).isReg() ){
										slaveinst->getOperand(opcount).setReg(getSlaveReg(interleavedI->getOperand(opcount).getReg())); 
									}
									else if (interleavedI->getOperand(opcount).isImm() && (interleavedI->mayStore() || interleavedI->mayLoad()) ){
										slaveinst->getOperand(opcount).setImm(interleavedI->getOperand(opcount).getImm()-MEMZDC_OFFSET); 
									}

								} //end of for
								MBB->insertAfter(I, slaveinst);
								I++;
								interleavingQueue.pop();
							}

						}// end of if	
						//errs()<< "BB: "<< MBB->getNumber()<<", Test interleavingQueue:"<<interleavingQueue.size()<<"\n";
						//I->print(errs());
					}// end of for
					if (interleavingQueue.size() != 0)
						errs()<< "There are instrs in interleaving queue (BB:"<<MBB->getNumber()<<")\n";
				}//end of for
}//end of function


			void duplicateInstructionsEDDI (MachineFunction &MF) { // duplicate computaional and load instructions with redundant registers
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if( !(I->isBranch()) /*&&  !(I->mayStore())*/  &&  !(I->isCall()) && !(I->isReturn()) && !(I->isCompare()) &&  !(I->getOpcode() == OR1K::NOP || (I->getOpcode() > 96 && I->getOpcode() < 129) /*compare*/) ){

							MachineInstr *slaveinst=  MF.CloneMachineInstr (&*I);


							slaveinst->setFlags(0);


							for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++){ //
								if (I->getOperand(opcount).isReg() ){
									slaveinst->getOperand(opcount).setReg(getSlaveReg(I->getOperand(opcount).getReg())); 
								}
								else if (I->getOperand(opcount).isImm() && (I->mayStore() || I->mayLoad()) ){
									slaveinst->getOperand(opcount).setImm(I->getOperand(opcount).getImm()-EDDI_OFFSET); 
								}
							} //end of for

							
							if (I->mayStore())
							{
								MBB->insertAfter(I, slaveinst);
								I++; // this prevents from replication of copying move instruction
							}
								
							else
								MBB->insert(I, slaveinst);

						}// end of if	
					}// end of for
				}//end of for
}//end of function

                                bool isOriginalInst(MachineInstr *inst){
						// this excludes error checking compare operations from original compare operations
						for (unsigned int opcount=0; opcount < inst->getNumOperands(); opcount++)// This is 2, because we just care about the first two operands of compare
							if (inst->getOperand(opcount).isReg())
								if( !isGPR(inst->getOperand(opcount).getReg())) 
									return false;
						return true;
				}
                                bool isSwiftDuplicatable(MachineInstr *inst){
					if ( inst->mayLoad() ||  inst->isBranch() || inst->mayStore() ||  inst->isCall() || inst->isReturn() || inst->isCompare() ||  (inst->getOpcode() == OR1K::NOP) ||  (inst->getOpcode() > 96 && inst->getOpcode() < 129) ) return false;
                                         inst->dump();
                                        return true;
				} //end-of-function
				void duplicateInstructionsSWIFT (MachineFunction &MF) { // duplicate computaional and load instructions with redundant registers
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
						for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
							if( isSwiftDuplicatable(I) ){

								MachineInstr *slaveinst=  MF.CloneMachineInstr (&*I);


								slaveinst->setFlags(0);


								for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++){ //
									if (I->getOperand(opcount).isReg() ){
										slaveinst->getOperand(opcount).setReg(getSlaveReg(I->getOperand(opcount).getReg())); 
									}

								} //end of for

								MBB->insert(I, slaveinst);

							}// end of if	
							if (I->mayLoad()){
								DebugLoc DL3= I->getDebugLoc();

								MachineInstr *copyMoveM = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(getSlaveReg(I->getOperand(0).getReg())).addReg(I->getOperand(0).getReg()).addImm(0);
								MBB->insertAfter(I,copyMoveM); 
								I++; // this prevents from replication of copying move instruction

							}// end of if 
						}// end of for
					}//end of for

				} //end-of-function
                                void  insertSWIFTErrorDetectors(MachineFunction &MF) {
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
						for (MachineBasicBlock::instr_iterator I=MBB->instr_begin(), E=MBB->instr_end(); I !=E ; ++I){
                                                  DebugLoc DL3= I->getDebugLoc();
                                                    if (I->mayStore() || I->mayLoad()){
								for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++)//
									if (I->getOperand(opcount).isReg()){
										int reg = I->getOperand(opcount).getReg();
                                                                                if (isGPR(reg) && !(I->mayLoad() && !opcount) ){ // the if excludes load destination registers from checking
										MachineInstr *cmpInst = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(reg).addReg(getSlaveReg(reg));
									        MBB->insert(I, cmpInst); 	
									        MachineInstr *MItest = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(ErrorBB);
									        MBB->insert(I, MItest);
										}	
									}

						    } // end of if


						}// end of for
					}//end of for
				} //end-of-function
				
				void  insertEDDIErrorDetectors(MachineFunction &MF) {
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
						for (MachineBasicBlock::instr_iterator I=MBB->instr_begin(), E=MBB->instr_end(); I !=E ; ++I){
							    DebugLoc DL3= I->getDebugLoc();
								if (I->mayStore()){
									for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++)//
										if (I->getOperand(opcount).isReg()){
											int reg = I->getOperand(opcount).getReg();											if (isMasterReg(reg)) {//This prevent checking for slave regs 
												if (isGPR(reg) && !(I->mayLoad() && !opcount) ){ // the if excludes load destination registers from checking
													MachineInstr *cmpInst = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(reg).addReg(getSlaveReg(reg));
													MBB->insert(I, cmpInst); 	
													MachineInstr *MItest = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(ErrorBB);
													MBB->insert(I, MItest);
												}
											}	
										}

								} // end of if


						}// end of for
					}//end of for
				} //end-of-function
				
				
				void  insertEDDIErrorDetectors_skipaddr(MachineFunction &MF) {
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
						for (MachineBasicBlock::instr_iterator I=MBB->instr_begin(), E=MBB->instr_end(); I !=E ; ++I){
							    DebugLoc DL3= I->getDebugLoc();
								if (I->mayStore()){
									
									int hwisoo_debug_count =0;
									for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++)//
										if (I->getOperand(opcount).isReg()){
											int reg = I->getOperand(opcount).getReg();											if (isMasterReg(reg)) {//This prevent checking for slave regs 
												if (isGPR(reg) && !(I->mayLoad() && !opcount) ){ // the if excludes load destination registers from checking
													MachineInstr *cmpInst = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(reg).addReg(getSlaveReg(reg));
													MBB->insert(I, cmpInst); 	
													MachineInstr *MItest = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(ErrorBB);
													MBB->insert(I, MItest);
													//errs() << "opcount:"<<opcount<<", shadowcount:"<<hwisoo_debug_count<<"\n"; 
													//hwisoo_debug_count++;
													break;
												}
											}	
										}

								} // end of if


						}// end of for
					}//end of for
				} //end-of-function
				
				
				void  checkCMPsSWIFT(MachineFunction &MF) {
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
						for (MachineBasicBlock::instr_iterator I=MBB->instr_begin(), E=MBB->instr_end(); I !=E ; ++I){
                                                  DebugLoc DL3= I->getDebugLoc();
                                                    if (isOriginalCMP(I)){
								for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++)//
									if (I->getOperand(opcount).isReg()){
										int reg = I->getOperand(opcount).getReg();
                                                                                if (isGPR(reg) && I->readsRegister(reg)){
										MachineInstr *cmpInst = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(reg).addReg(getSlaveReg(reg));
									        MBB->insert(I, cmpInst); 	
									        MachineInstr *MItest = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(ErrorBB);
									        MBB->insert(I, MItest); 
										}	
									}

						    } // end of if


						}// end of for
					}//end of for
				} //end-of-function				

				
				void  checkCMPsmemZDC(MachineFunction &MF) {
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
						for (MachineBasicBlock::instr_iterator I=MBB->instr_begin(), E=MBB->instr_end(); I !=E ; ++I){
                                                  DebugLoc DL3= I->getDebugLoc();
                                                    if (isOriginalCMP(I)){
								for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++)//
									if (I->getOperand(opcount).isReg()){
										int reg = I->getOperand(opcount).getReg();
                                                                                if (isGPR(reg) && I->readsRegister(reg)){
										MachineInstr *cmpInst = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(reg).addReg(getSlaveReg(reg));
									        MBB->insert(I, cmpInst); 	
									        MachineInstr *MItest = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(wrongDirectionErrorBB);
									        MBB->insert(I, MItest); 
										}	
									}

						    } // end of if


						}// end of for
					}//end of for
				} //end-of-function		
				
				void insertZDCErrorDetectors (MachineFunction &MF) { // duplicate computaional and load instructions with redundant registers
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
						for (MachineBasicBlock::instr_iterator I=MBB->instr_begin(), I1=MBB->instr_begin(), E=MBB->instr_end(); I !=E ; ++I, ++I1){
							bool check=true;
							if ( I->mayStore() ){
								DebugLoc DL3= MBB->findDebugLoc(I);
								int storeOpcode=I->getOpcode();
								int loadOpcode=0;
								int cmpOpcode=0;
								switch(storeOpcode){
									case OR1K::SW:{
											      loadOpcode=OR1K::LWZ;
											      cmpOpcode=OR1K::SFNE;
											      break;}
									case OR1K::SWA:{
											       loadOpcode=OR1K::LWA;
											       cmpOpcode=OR1K::SFNE;
											       break;}
									case OR1K::SB:{
											      loadOpcode=OR1K::LBZ;
											      cmpOpcode=OR1K::SFNE;
											      break;}
									case OR1K::SH:{
											      loadOpcode=OR1K::LHZ;
											      cmpOpcode=OR1K::SFNE;
											      break;}
									case OR1K::SWf32:{
												 loadOpcode=OR1K::LWZf32;
												 cmpOpcode=OR1K::SFNE;
												 break;}

									default:{
											//I->dump();
											errs()<< "Error Opcode not find\n";
											check=false;
										}
								}
								if(check){
									assert (loadOpcode!=0);
									assert (cmpOpcode!=0);
									MachineInstr *MIload = BuildMI(MF, DL3 , TII->get(loadOpcode));
									MIload->setFlags(0);
									for (unsigned int opcount=0; opcount < I->getNumOperands(); opcount++){ //
										MIload->addOperand(MF, I->getOperand(opcount));              
									} //end of for  

									for (unsigned int opcount=1; opcount < MIload->getNumOperands(); opcount++){ //
										if (MIload->getOperand(opcount).isReg() ){
											MIload->getOperand(opcount).setReg(getSlaveReg(I->getOperand(opcount).getReg()));
										}
									} //end of for 
									MachineInstr *MInop = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
									if ( std::next(I)->isBranch() || std::next(I)->isReturn() || std::next(I)->isCall() ) MBB->insertAfter(I, MInop); // nop after detector is not needed unless the next instruction is branch/jump/return/call
									MachineInstr *MItest = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(ErrorBB);
									MBB->insertAfter(I, MItest); 													
									MachineInstr *MIcmp = BuildMI(MF, DL3 , TII->get(cmpOpcode), I->getOperand(0).getReg()).addReg(getSlaveReg(I->getOperand(0).getReg()));
									MBB->insertAfter(I, MIcmp); 									
									MBB->insertAfter(I, MIload);
								}

							}// end of if	
						}// end of for
					}//end of for
				} //end-of-function

				void insertmemZDCErrorDetectors (MachineFunction &MF) { // duplicate computaional and load instructions with redundant registers
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
						for (MachineBasicBlock::instr_iterator I=MBB->instr_begin(), I1=MBB->instr_begin(), E=MBB->instr_end(); I !=E ; ++I, ++I1){
							bool check=true;
							if ( I->mayStore() ){
								DebugLoc DL3= MBB->findDebugLoc(I);
								int storeOpcode=I->getOpcode();
								int loadOpcode=0;
								int cmpOpcode=0;
								switch(storeOpcode){
									case OR1K::SW:{
											      loadOpcode=OR1K::LWZ;
											      cmpOpcode=OR1K::SFNE;
											      break;}
									case OR1K::SWA:{
											       loadOpcode=OR1K::LWA;
											       cmpOpcode=OR1K::SFNE;
											       break;}
									case OR1K::SB:{
											      loadOpcode=OR1K::LBZ;
											      cmpOpcode=OR1K::SFNE;
											      break;}
									case OR1K::SH:{
											      loadOpcode=OR1K::LHZ;
											      cmpOpcode=OR1K::SFNE;
											      break;}
									case OR1K::SWf32:{
												 loadOpcode=OR1K::LWZf32;
												 cmpOpcode=OR1K::SFNE;
												 break;}

									default:{
											//I->dump();
											errs()<< "Error Opcode not find\n";
											check=false;
										}
								}
								if(check){
									assert (loadOpcode!=0);
									assert (cmpOpcode!=0);
									MachineInstr *MIload = BuildMI(MF, DL3 , TII->get(loadOpcode));
									MIload->setFlags(0);
									for (unsigned int opcount=0; opcount < I->getNumOperands(); opcount++){ //
										MIload->addOperand(MF, I->getOperand(opcount));              
									} //end of for  

									for (unsigned int opcount=1; opcount < MIload->getNumOperands(); opcount++){ //
										if (MIload->getOperand(opcount).isReg() ){
											MIload->getOperand(opcount).setReg(getSlaveOrMasterReg(I->getOperand(opcount).getReg()));
										}
									} //end of for 
									MachineInstr *MInop = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
									if ( std::next(I)->isBranch() || std::next(I)->isReturn() || std::next(I)->isCall() ) MBB->insertAfter(I, MInop); // nop after detector is not needed unless the next instruction is branch/jump/return/call
									MachineInstr *MItest = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(ErrorBB);
									MBB->insertAfter(I, MItest); 													
									MachineInstr *MIcmp = BuildMI(MF, DL3 , TII->get(cmpOpcode), I->getOperand(0).getReg()).addReg(getSlaveOrMasterReg(I->getOperand(0).getReg()));
									MBB->insertAfter(I, MIcmp); 									
									MBB->insertAfter(I, MIload);
								}

							}// end of if	
						}// end of for
					}//end of for
				} //end-of-function
				
				
			void insertPZDCErrorDetectors (MachineFunction &MF) { // duplicate computaional and load instructions with redundant registers
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
						for (MachineBasicBlock::instr_iterator I=MBB->instr_begin(), I1=MBB->instr_begin(), E=MBB->instr_end(); I !=E ; ++I, ++I1){
							bool check=true;
							if ( I->mayStore() ){
								DebugLoc DL3= MBB->findDebugLoc(I);
								int storeOpcode=I->getOpcode();
								int loadOpcode=0;
								int cmpOpcode=0;
								switch(storeOpcode){
									case OR1K::SW:{
											      loadOpcode=OR1K::LWZ;
											      cmpOpcode=OR1K::SFNE;
											      break;}
									case OR1K::SWA:{
											       loadOpcode=OR1K::LWA;
											       cmpOpcode=OR1K::SFNE;
											       break;}
									case OR1K::SB:{
											      loadOpcode=OR1K::LBZ;
											      cmpOpcode=OR1K::SFNE;
											      break;}
									case OR1K::SH:{
											      loadOpcode=OR1K::LHZ;
											      cmpOpcode=OR1K::SFNE;
											      break;}
									case OR1K::SWf32:{
												 loadOpcode=OR1K::LWZf32;
												 cmpOpcode=OR1K::SFNE;
												 break;}

									default:{
											//I->dump();
											errs()<< "Error Opcode not find\n";
											check=false;
										}
								}
								if(check){
									assert (loadOpcode!=0);
									assert (cmpOpcode!=0);
									
									//l.addi r28, src, 4092
									MachineInstr *MIaddi = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R28).addReg(I->getOperand(1).getReg()).addImm(4092);
									MIaddi->setFlags(0);
									
									MachineInstr *MIload = BuildMI(MF, DL3 , TII->get(loadOpcode));
									MIload->setFlags(0);
									for (unsigned int opcount=0; opcount < I->getNumOperands(); opcount++){ //
										MIload->addOperand(MF, I->getOperand(opcount));              
									} //end of for  

									for (unsigned int opcount=1; opcount < MIload->getNumOperands(); opcount++){ //
										if (MIload->getOperand(opcount).isReg() ){
											MIload->getOperand(opcount).setReg(OR1K::R28);
										}
										else if (MIload->getOperand(opcount).isImm()){
											MIload->getOperand(opcount).setImm(-(4092-(I->getOperand(opcount).getImm())));											
										}
											
										
									} //end of for 
									MachineInstr *MInop = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
									if ( std::next(I)->isBranch() || std::next(I)->isReturn() || std::next(I)->isCall() ) MBB->insertAfter(I, MInop); // nop after detector is not needed unless the next instruction is branch/jump/return/call
									MachineInstr *MItest = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(ErrorBB);
									MBB->insertAfter(I, MItest); 													
									MachineInstr *MIcmp = BuildMI(MF, DL3 , TII->get(cmpOpcode), I->getOperand(0).getReg()).addReg(getSlaveReg(I->getOperand(0).getReg()));
									MBB->insertAfter(I, MIcmp); 									
									MBB->insertAfter(I, MIload);
									MBB->insertAfter(I, MIaddi);
								}

							}// end of if	
						}// end of for
					}//end of for
				} //end-of-function

				

				bool  isOriginalCMP(llvm::MachineBasicBlock::iterator inst){
					if ((inst->getOpcode() > 96 && inst->getOpcode() < 129) ){
						// this excludes error checking compare operations from original compare operations
						for (unsigned int opcount=0; opcount < 2; opcount++)// This is 2, because we just care about the first two operands of compare
							if (inst->getOperand(opcount).isReg())
								if( getSlaveReg(inst->getOperand(opcount).getReg()) == inst->getOperand(opcount).getReg() ) 
									return false;
						return true;
					}
					return false;

				}
				void changeCF(MachineFunction &MF) {
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE ; ++MBB ) {
						DebugLoc DL3= MBB->begin()->getDebugLoc();
						llvm::MachineBasicBlock::iterator cmpInst=NULL;
						for ( llvm::MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
							if (isOriginalCMP(I)){
								cmpInst=I;
								//cmpInst->dump();
							}

							else if (I->isConditionalBranch() && cmpInst){
								assert(cmpInst);
								//cmpInst->dump();

								MachineInstr *shadowCMP=  MF.CloneMachineInstr(&*cmpInst);
								shadowCMP->setFlags(0);
								for (unsigned int opcount=0; opcount < cmpInst->getNumOperands(); opcount++)
									if (cmpInst->getOperand(opcount).isReg()) shadowCMP->getOperand(opcount).setReg(getSlaveReg(cmpInst->getOperand(opcount).getReg()));

								MachineInstr *shadowCMP1=  MF.CloneMachineInstr(&*shadowCMP);


								//create a new BB newBB: this will handle taken branches
								MachineBasicBlock *NewBB =  MF.CreateMachineBasicBlock();
								MBB->addSuccessor(NewBB);
								MachineFunction::iterator It = (MF.end())->getIterator();
								MF.insert(It,NewBB);
								// add shadow compare instruction
								NewBB->insert(NewBB->instr_begin(), shadowCMP);


								// inserts error detection instruction/branch to diagnosis routine if needed
								// the condition of inserted branch should be opposite to the Original branch
								MachineInstr *MICFDETECTION=NULL;
								if (I->getOpcode() == OR1K::BF) 
									MICFDETECTION = BuildMI(MF, DL3 , TII->get(OR1K::BNF)).addMBB(wrongDirectionErrorBB);
								else if (I->getOpcode() == OR1K::BNF) 
									MICFDETECTION = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(wrongDirectionErrorBB);
								else
									I->dump();

								assert (MICFDETECTION!=NULL);

								NewBB->push_back(MICFDETECTION);
								MachineInstr *MInop = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
								NewBB->push_back(MInop);
								//////////////////////////////////////


								//direct jump to branch target BB in New BB, takes place if there is no CF error
								MachineInstr *MIjump = BuildMI(MF, DL3 , TII->get(OR1K::J)).addMBB(I->getOperand(0).getMBB());
								NewBB->push_back(MIjump);
								NewBB->addSuccessor(I->getOperand(0).getMBB());
								MachineInstr *MInop1 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
								NewBB->push_back(MInop1);
								MachineInstr *MIjump1 = BuildMI(MF, DL3 , TII->get(OR1K::J)).addMBB(I->getOperand(0).getMBB());
								NewBB->push_back(MIjump1);

								// change the dirrection of the original conditional branch to the NewBB
								I->getOperand(0).setMBB(NewBB);     

								/////////////////////adding check if the branch is not taken
								// we insert a CMP and branch
								//The CMP operands are the shadows, and the branch is a copy of the original branch with the target destination of diagnosis block
								MachineInstr *MIcfErrorDetection = BuildMI(MF, DL3 , TII->get(I->getOpcode())).addMBB(wrongDirectionErrorBB);
								MachineInstr *MInop2 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
								MBB->push_back(shadowCMP1);
								MBB->push_back(MIcfErrorDetection);
								MBB->push_back(MInop2);
								/////////////////////////////////////////
								MBB++;
								cmpInst=NULL;
								break;     
								// 
							}//end of else 

						}// end of for
					}// edn of for
				}//end of function

				void changeCFPZDC(MachineFunction &MF) {
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE ; ++MBB ) {
						DebugLoc DL3= MBB->begin()->getDebugLoc();
						llvm::MachineBasicBlock::iterator cmpInst=NULL;
						for ( llvm::MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
							if (isOriginalCMP(I)){
								cmpInst=I;
								//cmpInst->dump();
							}
							
							else if ((I->getOpcode() > 96 && I->getOpcode() < 129)) // debug compare
							{
								I++;
								if (!(I->isConditionalBranch()))
								{
									errs()<<"changeCFPZDC: It seems that there are not original cmp but not debug\n";
									I->dump();
								}
									
							}
							
							else if (I->isConditionalBranch() && cmpInst){
								assert(cmpInst);
								//cmpInst->dump();

								MachineInstr *shadowCmpAdd;
								MachineInstr *shadowCMP;
								
								if(cmpInst->getOperand(1).isReg())
								{
									shadowCmpAdd=BuildMI(MF, DL3 , TII->get(OR1K::SUB)).addReg(OR1K::R28).addReg(getSlaveReg(cmpInst->getOperand(0).getReg())).addReg(getSlaveReg(cmpInst->getOperand(1).getReg()));
									shadowCMP=BuildMI(MF, DL3 , TII->get(cmpInst->getOpcode())).addReg(OR1K::R28).addReg(OR1K::R0);
								}
								else if(cmpInst->getOperand(1).isImm())
								{
									shadowCmpAdd=BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R28).addReg(getSlaveReg(cmpInst->getOperand(0).getReg())).addImm(-cmpInst->getOperand(1).getImm());
									shadowCMP=BuildMI(MF, DL3 , TII->get(cmpInst->getOpcode()-1)).addReg(OR1K::R28).addReg(OR1K::R0);
								}
								
								
								//= BuildMI(MF, DL3 , TII->get(cmpInst->getOpcode())).addReg(OR1K::R28).addReg(OR1K::R0);
								
								
								/*
								MachineInstr *shadowCMP=  MF.CloneMachineInstr(&*cmpInst);
								shadowCMP->setFlags(0);
								for (unsigned int opcount=0; opcount < cmpInst->getNumOperands(); opcount++)
									if (cmpInst->getOperand(opcount).isReg()) shadowCMP->getOperand(opcount).setReg(getSlaveReg(cmpInst->getOperand(opcount).getReg()));
								*/

								MachineInstr *shadowCMP1=  MF.CloneMachineInstr(&*shadowCMP);
								MachineInstr *shadowCmpAdd1=  MF.CloneMachineInstr(&*shadowCmpAdd);
								


								//create a new BB newBB: this will handle taken branches
								MachineBasicBlock *NewBB =  MF.CreateMachineBasicBlock();
								MBB->addSuccessor(NewBB);
								MachineFunction::iterator It = (MF.end())->getIterator();
								MF.insert(It,NewBB);
								// add shadow compare instruction
								NewBB->insert(NewBB->instr_begin(), shadowCMP);
								NewBB->insert(NewBB->instr_begin(), shadowCmpAdd);


								// inserts error detection instruction/branch to diagnosis routine if needed
								// the condition of inserted branch should be opposite to the Original branch
								MachineInstr *MICFDETECTION=NULL;
								if (I->getOpcode() == OR1K::BF) 
									MICFDETECTION = BuildMI(MF, DL3 , TII->get(OR1K::BNF)).addMBB(wrongDirectionErrorBB);
								else if (I->getOpcode() == OR1K::BNF) 
									MICFDETECTION = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(wrongDirectionErrorBB);
								else
									I->dump();

								assert (MICFDETECTION!=NULL);

								NewBB->push_back(MICFDETECTION);
								MachineInstr *MInop = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
								NewBB->push_back(MInop);
								//////////////////////////////////////


								//direct jump to branch target BB in New BB, takes place if there is no CF error
								MachineInstr *MIjump = BuildMI(MF, DL3 , TII->get(OR1K::J)).addMBB(I->getOperand(0).getMBB());
								NewBB->push_back(MIjump);
								NewBB->addSuccessor(I->getOperand(0).getMBB());
								MachineInstr *MInop1 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
								NewBB->push_back(MInop1);
								MachineInstr *MIjump1 = BuildMI(MF, DL3 , TII->get(OR1K::J)).addMBB(I->getOperand(0).getMBB());
								NewBB->push_back(MIjump1);

								// change the dirrection of the original conditional branch to the NewBB
								I->getOperand(0).setMBB(NewBB);     

								/////////////////////adding check if the branch is not taken
								// we insert a CMP and branch
								//The CMP operands are the shadows, and the branch is a copy of the original branch with the target destination of diagnosis block
								MachineInstr *MIcfErrorDetection = BuildMI(MF, DL3 , TII->get(I->getOpcode())).addMBB(wrongDirectionErrorBB);
								MachineInstr *MInop2 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
								MBB->push_back(shadowCmpAdd1);
								MBB->push_back(shadowCMP1);
								MBB->push_back(MIcfErrorDetection);
								MBB->push_back(MInop2);
								/////////////////////////////////////////
								MBB++;
								cmpInst=NULL;
								break;     
								// 
							}//end of else 

						}// end of for
					}// edn of for
				}//end of function
				
				
				MachineBasicBlock* ErrorBB=NULL;
				MachineBasicBlock* wrongDirectionErrorBB=NULL;
				bool runOnMachineFunction(MachineFunction &MF) {
					if (EnablememZDC){
						ErrorBB=makeErrorBB(MF); // Data flow errors will go to this bb
						wrongDirectionErrorBB=makeErrorBB(MF); // wrong-direction control flow errors will go to this bb

						// duplicates computaional and load instructions
						duplicateInstructionsmemZDC(MF);

						//implement wrong-direction control-flow checking
						//if (EnableNEMESISCF) changeCF(MF);
						
						//implement SWIFT compare instruction protection
						if (EnablememZDCCMPPprotection) checkCMPsmemZDC(MF);

						// inserts ZDC error detectors after store instructions
						//insertZDCErrorDetectors(MF);

						//HWISOO. test for generating ErrorBB automatically
						DebugLoc DL3= MF.begin()->begin()->getDebugLoc();
						const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
						
						MachineInstr *MInop111 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(111);
						ErrorBB->insert(ErrorBB->begin(), MInop111);
						
						MachineInstr *MInop222 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(222);
						wrongDirectionErrorBB->insert(wrongDirectionErrorBB->begin(), MInop222);


						// this function addes the l.nop before and after function calls
						// It also insertes checking instructions for the function calls arguments
						//checkFunctionCalls(MF); //BL_pred
					}
					if (EnablememZDCInt){
						ErrorBB=makeErrorBB(MF); // Data flow errors will go to this bb
						wrongDirectionErrorBB=makeErrorBB(MF); // wrong-direction control flow errors will go to this bb

						// duplicates computaional and load instructions
						duplicateInstructionsmemZDCInt(MF);

						//implement wrong-direction control-flow checking
						//if (EnableNEMESISCF) changeCF(MF);
						
						//printAllTerminator(MF);
						
						
						
						//implement SWIFT compare instruction protection
						if (EnablememZDCIntCMPPprotection) checkCMPsmemZDC(MF);

						// inserts ZDC error detectors after store instructions
						//insertZDCErrorDetectors(MF);

						
						
						
						//HWISOO. test for generating ErrorBB automatically
						DebugLoc DL3= MF.begin()->begin()->getDebugLoc();
						const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
						
						MachineInstr *MInop205 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(205);
						ErrorBB->insert(ErrorBB->begin(), MInop205);
						
						MachineInstr *MInop204 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(204);
						wrongDirectionErrorBB->insert(wrongDirectionErrorBB->begin(), MInop204);


						// this function addes the l.nop before and after function calls
						// It also insertes checking instructions for the function calls arguments
						//checkFunctionCalls(MF); //BL_pred
					}
					if (EnablememZDCFullCmp){
						ErrorBB=makeErrorBB(MF); // Data flow errors will go to this bb
						wrongDirectionErrorBB=makeErrorBB(MF); // wrong-direction control flow errors will go to this bb

						// duplicates computaional and load instructions
						duplicateInstructionsmemZDC(MF);

						//implement wrong-direction control-flow checking
						//if (EnableNEMESISCF) changeCF(MF);
						//implement SWIFT compare instruction protectiond
						if (EnablememZDCCMPPprotection) checkCMPsmemZDC(MF);

						// inserts ZDC error detectors after store instructions
						insertmemZDCErrorDetectors(MF);

						//HWISOO. test for generating ErrorBB automatically
						DebugLoc DL3= MF.begin()->begin()->getDebugLoc();	
						const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
						
						MachineInstr *MInop205 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(205);
						ErrorBB->insert(ErrorBB->begin(), MInop205);
						
						MachineInstr *MInop204 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(204);
						wrongDirectionErrorBB->insert(wrongDirectionErrorBB->begin(), MInop204);

						// this function addes the l.nop before and after function calls
						// It also insertes checking instructions for the function calls arguments
						//checkFunctionCalls(MF); //BL_pred
					}
					if (EnableZDC){
						ErrorBB=makeErrorBB(MF); // Data flow errors will go to this bb
						wrongDirectionErrorBB=makeErrorBB(MF); // wrong-direction control flow errors will go to this bb

						// duplicates computaional and load instructions
						duplicateInstructions(MF);

						//implement wrong-direction control-flow checking
						if (EnableNEMESISCF) changeCF(MF);

						// inserts ZDC error detectors after store instructions
						insertZDCErrorDetectors(MF);



						// this function addes the l.nop before and after function calls
						// It also insertes checking instructions for the function calls arguments
						checkFunctionCalls(MF); //BL_pred
					}
					// SWIFT DF PROTECTION TRANSFORMATION
					if (EnableSWIFT){
						ErrorBB=makeErrorBB(MF); // Data flow errors will go to this bb
						wrongDirectionErrorBB=makeErrorBB(MF); // wrong-direction control flow errors will go to this bb

						// duplicates computaional instructions and inserts copy mov instructions after load operations
						duplicateInstructionsSWIFT(MF);


						//implement SWIFT compare instruction protection
						if (EnableSWIFTCMPprotection) checkCMPsSWIFT(MF);

						// inserts SWIFT error detectors after store instructions
						insertSWIFTErrorDetectors(MF);



						// this function addes the l.nop before and after function calls
						// It also insertes checking instructions for the function calls arguments
						checkFunctionCalls(MF); //BL_pred

					}
					if (EnableEDDI){
						ErrorBB=makeErrorBB(MF); // Data flow errors will go to this bb
						wrongDirectionErrorBB=makeErrorBB(MF); // wrong-direction control flow errors will go to this bb

						// duplicates computaional and load instructions
						duplicateInstructionsEDDI(MF);

						//implement wrong-direction control-flow checking
						checkCMPsSWIFT(MF);

						// inserts ZDC error detectors after store instructions
						insertEDDIErrorDetectors(MF);


						//HWISOO. test for generating ErrorBB automatically
						DebugLoc DL3= MF.begin()->begin()->getDebugLoc();	
						const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
						
						MachineInstr *MInop205 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(205);
						ErrorBB->insert(ErrorBB->begin(), MInop205);
						
						MachineInstr *MInop204 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(204);
						wrongDirectionErrorBB->insert(wrongDirectionErrorBB->begin(), MInop204);
						
						// this function addes the l.nop before and after function calls
						// It also insertes checking instructions for the function calls arguments
						//checkFunctionCalls(MF); //BL_pred
					}
					
					
					if (EnableEDDIInt){
						ErrorBB=makeErrorBB(MF); // Data flow errors will go to this bb
						wrongDirectionErrorBB=makeErrorBB(MF); // wrong-direction control flow errors will go to this bb

						// duplicates computaional and load instructions
						duplicateInstructionsEDDIInt(MF);

						//implement wrong-direction control-flow checking
						checkCMPsSWIFT(MF);

						// inserts ZDC error detectors after store instructions
						insertEDDIErrorDetectors(MF);


						//HWISOO. test for generating ErrorBB automatically
						DebugLoc DL3= MF.begin()->begin()->getDebugLoc();	
						const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
						
						MachineInstr *MInop205 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(205);
						ErrorBB->insert(ErrorBB->begin(), MInop205);
						
						MachineInstr *MInop204 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(204);
						wrongDirectionErrorBB->insert(wrongDirectionErrorBB->begin(), MInop204);
						
						// this function addes the l.nop before and after function calls
						// It also insertes checking instructions for the function calls arguments
						//checkFunctionCalls(MF); //BL_pred
					}

					if (EnableEDDIInt_SKIPADDR){
						ErrorBB=makeErrorBB(MF); // Data flow errors will go to this bb
						wrongDirectionErrorBB=makeErrorBB(MF); // wrong-direction control flow errors will go to this bb

						// duplicates computaional and load instructions
						duplicateInstructionsEDDIInt(MF);

						//implement wrong-direction control-flow checking
						checkCMPsSWIFT(MF);

						// inserts ZDC error detectors after store instructions
						insertEDDIErrorDetectors_skipaddr(MF);


						//HWISOO. test for generating ErrorBB automatically
						DebugLoc DL3= MF.begin()->begin()->getDebugLoc();	
						const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
						
						MachineInstr *MInop205 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(205);
						ErrorBB->insert(ErrorBB->begin(), MInop205);
						
						MachineInstr *MInop204 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(204);
						wrongDirectionErrorBB->insert(wrongDirectionErrorBB->begin(), MInop204);
						
						// this function addes the l.nop before and after function calls
						// It also insertes checking instructions for the function calls arguments
						//checkFunctionCalls(MF); //BL_pred
					}
					
					
					
					
					
					if (EnablePZDC){
						
						if (PZDC_MF == NULL)
						{
							//HwiSoo. Build Machine Function only for instructions in transform table
							//Function *NewFn = Function::Create(FunctionType::get(Type::getVoidTy(*unwrap(LLVMGetGlobalContext())),false), GlobalVariable::ExternalLinkage, "FnForPZDCTable", MF.getFunction()->getParent());
							PZDC_MF = new MachineFunction(MF.getFunction(), MF.getTarget(), 0, MF.getMMI());
							
							//HwiSoo. Debug
							errs() << "OR1K::SFNE : "<<OR1K::SFNE<<"\n";
							errs() << "OR1K::SFNEI : "<<OR1K::SFNEI<<"\n";
						}
						
						
						ErrorBB=makeErrorBB(MF); // Data flow errors will go to this bb
						wrongDirectionErrorBB=makeErrorBB(MF); // wrong-direction control flow errors will go to this bb

						// duplicates computaional and load instructions
						duplicateInstructionsPZDC(MF);

						//implement wrong-direction control-flow checking
						if (EnableNEMESISCF) changeCFPZDC(MF);

						// inserts ZDC error detectors after store instructions
						insertPZDCErrorDetectors(MF);



						// this function addes the l.nop before and after function calls
						// It also insertes checking instructions for the function calls arguments
						checkFunctionCalls(MF); //BL_pred
					}
					
					
					if (EnableHWISOO){
						convertAddToSub(MF); // Test OPCODE CHANGE
						
					}
					
					
					return true;
				}
			};

			char ZDC::ID = 0;
			FunctionPass *createZDCPass() 
			{
				/*
				ZDC *newZDC= new ZDC();
				newZDC->addPZDCMF(newMF);
				return newZDC;
				*/
				return new ZDC();
			}

	}




