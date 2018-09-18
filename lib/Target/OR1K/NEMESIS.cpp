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
#include <map>
#include <unordered_map>
#include "llvm-c/Core.h" //HwiSoo

namespace llvm{
	static cl::opt<bool> EnableNEMESIS(
			"enable-NEMESIS",
			cl::init(false),
			cl::desc("Implement NEMESIS."),
			cl::Hidden);
	static cl::opt<bool> EnableNEMESISNAIVE(
			"enable-NEMESIS-naive",
			cl::init(false),
			cl::desc("Implement NEMESIS without checking for silent stores."),
			cl::Hidden);
	static cl::opt<bool> EnableSWIFTR(
			"enable-SWIFTR",
			cl::init(false),
			cl::desc("Implement SWIFTR."),
			cl::Hidden);
	static cl::opt<bool> EnableSWIFTREmbeddedLib(
			"enable-SWIFTR-embeddedLib",
			cl::init(false),
			cl::desc("Implement SWIFTR without function call checking"),
			cl::Hidden);
	static cl::opt<bool> EnableSWIFTRTriplicationOnly(
			"enable-SWIFTR-triplication",
			cl::init(false),
			cl::desc("Implement triplication only for debug"),
			cl::Hidden);
	static cl::opt<int> TZDC_OFFSET(
			"tzdc-offset",
			cl::init(-8192),
			cl::desc("offset for memory triplication"),
			cl::Hidden);
	static cl::opt<bool> EnableTZDCNoStoreVoting(
			"enable-tzdc-no-store-voting",
			cl::init(false),
			cl::desc("Implement TZDC without function call checking & voting for store. you need to insert voting for critical store by yourself"),
			cl::Hidden);
	static cl::opt<bool> EnableTZDC_WDC(
			"enable-tzdc-wdc",
			cl::init(false),
			cl::desc("add wrong direction checking for tzdc. it should be used with enable-tzdc-no-store-voting"),
			cl::Hidden);			
			

			
	static MachineBasicBlock* tzdcRecoveryMBB = NULL;
			
	struct NEMESIS : public MachineFunctionPass {
		//const	TargetMachine &TM;
		//const TargetInstrInfo *TII;
		public:
			static char ID;
			// Pass identification, replacement for typeid
			//bool runOnMachineFunction(MachineFunction &F);
			//**********************************************************************
			// constructor
			//**********************************************************************


			NEMESIS() : MachineFunctionPass(ID) {    }

			//**********************************************************************
			// runOnMachineFunction
			//**********************************************************************

			std::unordered_map<unsigned int, unsigned int> GPRregistersMap1 ={{ OR1K::R1, OR1K::R10 }, { OR1K::R2, OR1K::R12 }, {OR1K::R3, OR1K::R13 }, {OR1K::R4, OR1K::R14 }, {OR1K::R5, OR1K::R15 }, {OR1K::R6, OR1K::R16 }, {OR1K::R7, OR1K::R17}, {OR1K::R9, OR1K::R19}, {OR1K::R11, OR1K::R8} };
			std::unordered_map<unsigned int, unsigned int> GPRregistersMap2 ={{ OR1K::R1, OR1K::R21 }, { OR1K::R2, OR1K::R22 }, {OR1K::R3, OR1K::R23 }, {OR1K::R4, OR1K::R24 }, {OR1K::R5, OR1K::R25 }, {OR1K::R6, OR1K::R26 }, {OR1K::R7, OR1K::R27}, {OR1K::R9, OR1K::R29}, {OR1K::R11, OR1K::R31} };
			std::vector<unsigned int> functionCallArgs={OR1K::R1, OR1K::R2, OR1K::R3, OR1K::R4, OR1K::R5, OR1K::R6, OR1K::R7, OR1K::R11, OR1K::R9};

			unsigned int getSlaveReg1(unsigned int regNUM){

				std::unordered_map<unsigned int, unsigned int>::const_iterator got = GPRregistersMap1.find(regNUM);
				// Check if iterator points to end of map
				if (got == GPRregistersMap1.end())
				{
					return regNUM;
				}
				else
				{
					return got->second; 
				}

			}
			unsigned int getSlaveReg2(unsigned int regNUM){
				std::unordered_map<unsigned int, unsigned int>::const_iterator got = GPRregistersMap2.find(regNUM);
				// Check if iterator points to end of map
				if (got == GPRregistersMap2.end())
				{
					return regNUM;
				}
				else
				{
					return got->second; 
				}

			}



			void checkFunctionCalls(MachineFunction &MF){
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				int numBBs=0;
				for(MachineFunction::iterator MB = MF.begin(), MBE = MF.end(); (MB != MBE) && (numBBs < FUNCSIZE); ++MB, ++numBBs) {
					if( MF.getName() == "main" && MB == MF.begin() ){
						DebugLoc DL3= MB->begin()->getDebugLoc();
						MachineInstr *MIcopyR1 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R10).addReg(OR1K::R1).addImm(0);
						MB->insert(MB->begin(), MIcopyR1);
						MIcopyR1 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R21).addReg(OR1K::R1).addImm(0);
						MB->insert(MB->begin(), MIcopyR1);   
						MachineInstr *MIcopyR2 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R12).addReg(OR1K::R2).addImm(0);
						MB->insert(MB->begin(), MIcopyR2);
						MIcopyR2 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R22).addReg(OR1K::R2).addImm(0);
						MB->insert(MB->begin(), MIcopyR2); 
						MachineInstr *MIcopyR9 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R19).addReg(OR1K::R9).addImm(0);
						MB->insert(MB->begin(), MIcopyR9);
						MIcopyR9 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R29).addReg(OR1K::R9).addImm(0);
						MB->insert(MB->begin(), MIcopyR9); 
					}
					for (MachineBasicBlock::iterator I=MB->begin(), E=MB->end(); I !=E ; ++I){

						if (I->isCall() && std::next(I) != E){
							// printInstruction(I);
							//1) inserts l.nop 200 before function call
							DebugLoc DL3= I->getDebugLoc();
							MachineInstr *MInop200 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(200);
							MB->insert(I, MInop200);   
							//1) inserts checking instructions before function call
							if(EnableSWIFTR)checkFunctionCallArgumentsSWIFT(I,MF);
							else checkFunctionCallArguments(I, MF);//

							//2) inserts l.nop 100 after copying instructions
							//++I;
							MachineInstr *MInop100 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(100);
							MB->insertAfter(I, MInop100);
							//3) copy r1 and r2 and r11 to the shadows registers after the original l.nop after function call
							MachineInstr *MIcopyR1 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R10).addReg(OR1K::R1).addImm(0);
							MB->insertAfter(I, MIcopyR1);
							MIcopyR1 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R21).addReg(OR1K::R1).addImm(0);
							MB->insertAfter(I, MIcopyR1);   
							MachineInstr *MIcopyR2 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R12).addReg(OR1K::R2).addImm(0);
							MB->insertAfter(I, MIcopyR2);
							MIcopyR2 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R22).addReg(OR1K::R2).addImm(0);
							MB->insertAfter(I, MIcopyR2);                 
							MachineInstr *MIcopyR11 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R8).addReg(OR1K::R11).addImm(0);
							MB->insertAfter(I, MIcopyR11);
							MIcopyR11 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R31).addReg(OR1K::R11).addImm(0);
							MB->insertAfter(I, MIcopyR11);  
							MachineInstr *MInop = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
							MB->insertAfter(I, MInop);
							MachineInstr *MInop1 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
							MB->insertAfter(I, MInop1);
						}//end of if
					}// end of for
				}//end of for
			}// end of function
bool isMasterReg(unsigned int reg){
for (int i=0; i<functionCallArgs.size(); ++i)
    if (functionCallArgs[i] == reg) return true;
return false;
}
			int diagnosisBBNumber;
			void changeCF(MachineFunction &MF) {
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				int BBcounters=0;
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); (MBB != MBE) && (BBcounters < FUNCSIZE)  ; ++MBB, ++BBcounters ) {
					DebugLoc DL3= MBB->begin()->getDebugLoc();
					llvm::MachineBasicBlock::iterator cmpInst=NULL;
					for ( llvm::MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){

						if ((I->getOpcode() > 96 && I->getOpcode() < 129) )
							if( isMasterReg(I->getOperand(0).getReg()) ) 
								cmpInst=I; 

						if (I->isConditionalBranch() && cmpInst){
							assert(cmpInst);
							//cmpInst->dump();
							//I->dump();

							//errs() << "from: " << MBB->getFullName() << "to :" << I->getOperand(0).getMBB()->getFullName() <<"\n";
							MachineInstr *shadowCMP=  MF.CloneMachineInstr(&*cmpInst);
							shadowCMP->setFlags(0);
							for (unsigned int opcount=0; opcount < cmpInst->getNumOperands(); opcount++)
								if (cmpInst->getOperand(opcount).isReg())shadowCMP->getOperand(opcount).setReg(getSlaveReg1(cmpInst->getOperand(opcount).getReg()));
							MachineInstr *shadowCMP1=  MF.CloneMachineInstr(&*cmpInst);
							shadowCMP1->setFlags(0);
							for (unsigned int opcount=0; opcount < cmpInst->getNumOperands(); opcount++)
								if (cmpInst->getOperand(opcount).isReg())shadowCMP1->getOperand(opcount).setReg(getSlaveReg1(cmpInst->getOperand(opcount).getReg()));

							//create a new BB newBB: this will handle taken branches
							MachineBasicBlock *NewBB =  MF.CreateMachineBasicBlock();
							MBB->addSuccessor(NewBB);
							MachineFunction::iterator It = (MF.end())->getIterator();
							MF.insert(It,NewBB);



							// add shadow compare instruction
							NewBB->insert(NewBB->instr_begin(), shadowCMP);




							// create diagnosis BBs and adds that to the end of function
							MachineBasicBlock *diagnosisBB = MF.CreateMachineBasicBlock();
							MachineFunction::iterator pos = (MF.end())->getIterator();
							MF.insert(pos, diagnosisBB);
							NewBB->addSuccessor(diagnosisBB);

							//inside diagnosis BB we move R-stream values to the correspinding D/M stream regieters
							// and jump back to the source basic block (right before original compare instructions)
							unsigned int regOperand=0;
							MachineInstr *MoveValRegM=NULL, *MoveValRegD=NULL;
							for (unsigned int opcount=0; opcount < cmpInst->getNumOperands(); opcount++){
								if (cmpInst->getOperand(opcount).isReg()){
									regOperand=cmpInst->getOperand(opcount).getReg();
									if(GPRregistersMap1.find(regOperand) != GPRregistersMap1.end()){
										MoveValRegM = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(regOperand).addReg(getSlaveReg2(regOperand)).addImm(0);
										MoveValRegD = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(getSlaveReg1(regOperand)).addReg(getSlaveReg2(regOperand)).addImm(0);
										diagnosisBB->push_back(MoveValRegM);
										diagnosisBB->push_back(MoveValRegD);
									}
								} // end of if
							}//end of for					

							MachineInstr *jumpBack = BuildMI(MF, DL3 , TII->get(OR1K::J)).addMBB(I->getParent());
							diagnosisBB->addSuccessor(I->getParent());
							diagnosisBB->push_back(jumpBack);						
							MachineInstr *NOP = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
							diagnosisBB->push_back(NOP);


							// inserts error detection instruction/branch to diagnosis routine if needed
							// the condition of inserted branch should be opposite to the Original branch
							MachineInstr *MICFDETECTION=NULL;
							if (I->getOpcode() == OR1K::BF) 
								MICFDETECTION = BuildMI(MF, DL3 , TII->get(OR1K::BNF)).addMBB(diagnosisBB);
							else if (I->getOpcode() == OR1K::BNF) 
								MICFDETECTION = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(diagnosisBB);
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

							/////////////////////adding chaeck if the branch is not taken
							// we insert a CMP and branch
							//The CMP operands are the shadows, and the branch is a copy of the original branch with the target destination of diagnosis block
							MachineInstr *MIcfErrorDetection = BuildMI(MF, DL3 , TII->get(I->getOpcode())).addMBB(diagnosisBB);
							MachineInstr *MInop2 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
							MBB->push_back(shadowCMP1);
							MBB->push_back(MIcfErrorDetection);
							MBB->push_back(MInop2);
							/////////////////////////////////////////
							MBB++;
					                cmpInst=NULL;
							break;     
							// 
						}//end of if

					}// end of for
				}// edn of for
			}//end of function
			int FUNCSIZE;


			bool runOnMachineFunction(MachineFunction &MF) {
				if (EnableTZDCNoStoreVoting)
				{
					//first try it for every function
					if(EnableTZDC_WDC)
					{
						MachineFunction::iterator It = (MF.end())->getIterator();
						It--;
						tzdcRecoveryMBB = MF.CreateMachineBasicBlock(It->getBasicBlock());
						It->addSuccessor(tzdcRecoveryMBB);
						DebugLoc DL3= It->begin()->getDebugLoc();
						
						It = (MF.end())->getIterator();
						MF.insert(It,tzdcRecoveryMBB);
						
						const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
						
						
						
						MachineInstr* tempInst = BuildMI(MF, DL3 , TII->get(OR1K::JR)).addReg(OR1K::R30);
						tzdcRecoveryMBB->insert((tzdcRecoveryMBB->instr_begin()), tempInst);
						
						
						MachineInstr* tempInst2 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R30).addReg(OR1K::R30).addImm(0);
						tzdcRecoveryMBB->push_back(tempInst2);
						//tzdcRecoveryMBB->addSuccessor( &*((++It)--) );
						
					
					}
					FUNCSIZE=100000;
					
					
					triplicateInstructionsTZDC(MF);
					if(EnableTZDC_WDC)
						wrongDirectionCheckingTZDC(MF);
					
					//insertVotingOperationsCmpOnlyTZDC(MF) //HWISOO. do we really need it?
					
					/*HWISOO. After l.bf, is there any other instructions? -> then it will be problem
					we need to implement
					1. triplication with offset -done
					2. WDC -done
					3. SIG
					4. Recovery Block
					5. Interleaving
					6. (by hand) insert voting for critical
					
					
					
					*/
					
				}
				
				
				if (EnableSWIFTRTriplicationOnly){					
					FUNCSIZE=100000;
					triplicateInstructionsSWIFT(MF);

					//insertVotingOperations(MF);

					//checkFunctionCalls(MF);

					//fixedLabels(MF);

					//Now, we need to insert addi r19, r9, 0 and addi r29, r9, 0 for every function
					
					insertCopyingReturnAddress(MF);
					
				}
				if (EnableSWIFTREmbeddedLib){					
					FUNCSIZE=100000;
					triplicateInstructionsSWIFT(MF);

					insertVotingOperations(MF);

					copyLoadValuesSWIFTR(MF);
					//checkFunctionCalls(MF);

					//fixedLabels(MF);

					//Now, we need to insert addi r19, r9, 0 and addi r29, r9, 0 for every function
					
					insertCopyingReturnAddress(MF);
					
				}

			
				if (EnableSWIFTR){					
					FUNCSIZE=100000;
					triplicateInstructionsSWIFT(MF);

					insertVotingOperations(MF);

					copyLoadValuesSWIFTR(MF);
					checkFunctionCalls(MF);

					//fixedLabels(MF);

				}

				else if(EnableNEMESISNAIVE)
				{
					FUNCSIZE=MF.size();

					MachineBasicBlock* UnrecoverableERROR=makeErrorBB(MF);	

					MachineBasicBlock* UnrecoverableERRORInter=makeErrorBB(MF);	

					MachineBasicBlock* RecoverableErrorBB=makeErrorBB(MF);	
					// this function triplicates logical/load/ALU/MOV instructions 
					// with shadow registers
					triplicateInstructions(MF);


					// this function splices the BBs on STORE instructions
					// We use this BBs, to resume the program after error detection/diagnosis and recovery
					changeLabelsStore(MF);


					// this function splices the BBs on CMP instructions
					// We use this BBs, to resume the program after error detection/diagnosis and recovery
					changeLabelsCMP(MF);

					//conform CF to NEMESIS CF-protection scheme
					changeCF(MF);



					// this function addess checking load instructions after the stores and check
					// if the results are same
					storeCheckNAIVE(MF, UnrecoverableERROR, UnrecoverableERRORInter, RecoverableErrorBB);

					// this function splices the BBs on CALL instructions
					changeLabelsCALL(MF);

					// this function addes the l.nop before and after function calls
					// It also insertes checking instructions for the function calls arguments
					checkFunctionCalls(MF); //BL_pred




					//this function inserts memory backup before store instructions, the memory backup register is R28
					storeBACKUP(MF);	



				}


				else if (EnableNEMESIS)
				{
fixCompares(MF);
					FUNCSIZE=countNumberofStores(MF);

					MachineBasicBlock* UnrecoverableERROR=makeErrorBB(MF);	

					MachineBasicBlock* UnrecoverableERRORInter=makeErrorBB(MF);	

					MachineBasicBlock* RecoverableErrorBB=makeErrorBB(MF);	
					// this function triplicates logical/load/ALU/MOV instructions 
					// with shadow registers
					triplicateInstructions(MF);


					// this function splices the BBs on STORE instructions
					// We use this BBs, to resume the program after error detection/diagnosis and recovery
					changeLabelsStore(MF);



					// this function splices the BBs on CMP instructions
					// We use this BBs, to resume the program after error detection/diagnosis and recovery
					changeLabelsCMP(MF);

					//conform CF to NEMESIS CF-protection scheme
					changeCF(MF);



					// this function addess checking load instructions after the stores and check
					// if the results are same
					storeCheckNAIVE(MF, UnrecoverableERROR, UnrecoverableERRORInter, RecoverableErrorBB);

					// this function splices the BBs on CALL instructions
					changeLabelsCALL(MF);
					// this function addes the l.nop before and after function calls
					// It also insertes checking instructions for the function calls arguments
					checkFunctionCalls(MF); //BL_pred




					//this function inserts memory backup before store instructions, the memory backup register is R28
					///storeBACKUP(MF);

					changeLabelsStore(MF);

					//this function splits basicblocks after stores
					changeLabelsAfterStore(MF);




					//Insert branching over a silent store
					storeSilenceCheck(MF);	








	

				}

				return true;
			}
void fixCompares(MachineFunction &MF){
			for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					llvm::MachineBasicBlock::iterator cmpInst=NULL;
					llvm::MachineBasicBlock::iterator nextInst=NULL;
					unsigned int reg1=0;
					unsigned int reg2=0;					
					for ( llvm::MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if ( I->getOpcode() > 96 && I->getOpcode() < 129){
							cmpInst=I;
							nextInst= std::next(cmpInst);
							if (cmpInst->getOperand(0).isReg())reg1=cmpInst->getOperand(0).getReg();
							if (cmpInst->getOperand(1).isReg())reg2=cmpInst->getOperand(1).getReg();
							bool reg1IsSpilled=false;
							bool reg2IsSpilled=false;
							while( !(nextInst->isConditionalBranch())){
								//if(reg1 && nextInst->definesRegister(reg1) && !reg1IsSpilled) {
								//spill reg1 to the memory
								//MachineInstr *MIStore = BuildMI(MF, DL3 , TII->get(OR1K::STRD)).addReg(reg1).addReg(OR1K::R0).addImm(2000);
								//MBB->insert(cmpInst,MIStore);
								//reg1IsSpilled=true;
								//}
								//if(reg2 && nextInst->definesRegister(reg2) && !reg2IsSpilled) {
								//spill reg2 to the memory
								//nextInst->dump();
								//reg2IsSpilled=true;
								//}

								//move cmp inst after next instructions	
							      //  MachineInstr *tempInst= MF.CloneMachineInstr (&*cmpInst);
								//cmpInst->eraseFromParent();
								//MBB->insertAfter(nextInst,tempInst);
nextInst->dump();
								//cmpInst=tempInst;
								//nextInst++;

							}
						//if(reg1IsSpilled)
							//loadback reg1
						//if(reg2IsSpilled)
							//loadback reg2

						}
                                                        
					}
			}
                                                      

}


int countNumberofStores(MachineFunction &MF){
int numStores=0;
			for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {

					for ( llvm::MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if (I->mayStore())
							++numStores;
					}
			}
                                                      

return numStores;

}
			void storeBACKUP(MachineFunction &MF){
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					llvm::MachineBasicBlock::iterator storeInst=NULL;
					DebugLoc DL3= MBB->begin()->getDebugLoc();
					for ( llvm::MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if (I->mayStore())
							if(I->getOperand(0).getReg() != OR1K::R28){
								storeInst=I;
								int storeOpcode=storeInst->getOpcode();
								int loadOpcode=0;
								switch(storeOpcode){
									case OR1K::SW:{
											      loadOpcode=OR1K::LWZ;
											      break;}
									case OR1K::SWA:{
											       loadOpcode=OR1K::LWA;
											       break;}
									case OR1K::SB:{
											      loadOpcode=OR1K::LBZ;
											      break;}
									case OR1K::SH:{
											      loadOpcode=OR1K::LHZ;
											      break;}
									case OR1K::SWf32:{
												 loadOpcode=OR1K::LWZf32;

												 break;}

									default:{
											storeInst->dump();
											errs()<< "Error Opcode not find\n";
										}
								}

								assert (loadOpcode!=0);

								MachineInstr *MIload = BuildMI(MF, DL3 , TII->get(loadOpcode));
								MIload->setFlags(0);
								for (unsigned int opcount=0; opcount < storeInst->getNumOperands(); opcount++){ //
									MIload->addOperand(MF, storeInst->getOperand(opcount));              
								} //end of for  

								// inserting silent store checking load instructions
								MIload->getOperand(0).setReg(OR1K::R28);								
								MBB->insert(storeInst, MIload);
							}
					}
				}


			}
			void storeSilenceCheck(MachineFunction &MF){
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
int numBBs=0;
				for(MachineFunction::iterator MBB = ++(MF.begin()), MBE = MF.end(); MBB != MBE && numBBs < FUNCSIZE; ++MBB) {
					MachineFunction::iterator silentStoreCheckBB=MBB;
					MachineFunction::iterator errorCheckBB=MBB;
					llvm::MachineBasicBlock::iterator storeInst=NULL;
					DebugLoc DL3= MBB->begin()->getDebugLoc();
					for ( llvm::MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E && numBBs < FUNCSIZE ; ++I){
						if (I->mayStore())
							if(I->getOperand(0).getReg() != OR1K::R28){ // excludes recovery block and memory restoration
								errorCheckBB++;
								silentStoreCheckBB--;
								storeInst=I;

								 ++numBBs;
								int storeOpcode=storeInst->getOpcode();
								int loadOpcode=0;
								int cmpOpcode=0;
								switch(storeOpcode){
									case OR1K::SW:{
											      loadOpcode=OR1K::LWZ;
											      cmpOpcode=OR1K::SFEQ;
											      break;}
									case OR1K::SWA:{
											       loadOpcode=OR1K::LWA;
											       cmpOpcode=OR1K::SFEQ;
											       break;}
									case OR1K::SB:{
											      loadOpcode=OR1K::LBZ;
											      cmpOpcode=OR1K::SFEQ;
											      break;}
									case OR1K::SH:{
											      loadOpcode=OR1K::LHZ;
											      cmpOpcode=OR1K::SFEQ;
											      break;}
									case OR1K::SWf32:{
												 loadOpcode=OR1K::LWZf32;
												 cmpOpcode=OR1K::SFEQ;
												 break;}

									default:{
											storeInst->dump();
											errs()<< "Error Opcode not find\n";
										}
								}

								assert (loadOpcode!=0);
								assert (cmpOpcode!=0);
								MachineInstr *MIload = BuildMI(MF, DL3 , TII->get(loadOpcode));
								MIload->setFlags(0);
								for (unsigned int opcount=0; opcount < storeInst->getNumOperands(); opcount++){ //
									MIload->addOperand(MF, storeInst->getOperand(opcount));              
								} //end of for  

								// inserting silent store checking load instructions
								MIload->getOperand(0).setReg(OR1K::R28);								
								silentStoreCheckBB->push_back(MIload);

								// inserting silent store cmp instruction
								MachineInstr *MIcmp = BuildMI(MF, DL3 , TII->get(cmpOpcode), OR1K::R28).addReg(storeInst->getOperand(0).getReg());
								silentStoreCheckBB->push_back(MIcmp); 	


								// A branch for jumping over silent stores
								MachineInstr *MItest = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(errorCheckBB->instr_begin()->getParent());
								silentStoreCheckBB->addSuccessor(errorCheckBB->instr_begin()->getParent());
								silentStoreCheckBB->push_back(MItest);



								// fill branch delay slide
								MachineInstr *MImove = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R18).addReg(OR1K::R28).addImm(0);
								silentStoreCheckBB->push_back(MImove);
							}
					}
				}

			}


			bool changeLabelsLoads(MachineFunction &MF){
				bool completed=false;
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					for ( llvm::MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if ( (I->mayLoad() ) && std::next(I) != E && I != MBB->begin()){
							MachineBasicBlock* newBB=splitBlockAfterInstr(I, MF);
							newBB->setHasAddressTaken();
							break;
						}
						if ( (I->mayLoad() ) && std::next(I) == E && I != MBB->begin()){
							MachineBasicBlock* newBB=MF.CreateMachineBasicBlock((I->getParent())->getBasicBlock());
							MachineFunction::iterator It = MBB->getIterator();
							MF.insert(It,newBB);

							newBB->splice(newBB->end(), I->getParent(), I);
							MBB->addSuccessor(newBB);
							newBB->setHasAddressTaken();
							break;
						}	
					}
				}
				return completed;
			}// end of function

			void changeLabelsStore(MachineFunction &MF){
				int numBBs=0;
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); (MBB != MBE) && (numBBs < FUNCSIZE); ++MBB, ++numBBs) {
					for ( llvm::MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if ( (I->mayStore() ) && std::next(I) != E && I != MBB->begin()){
							MachineBasicBlock* newBB=splitBlockAfterInstr(I, MF);
							newBB->setHasAddressTaken();
							break;
						}
						if ( (I->mayStore() ) && std::next(I) == E && I != MBB->begin()){
							MachineBasicBlock* newBB=MF.CreateMachineBasicBlock((I->getParent())->getBasicBlock());
							MachineFunction::iterator It = MBB->getIterator();
							//It++;
							if (It != MF.end()) 
							MF.insert(It,newBB);
							else MF.push_back(newBB);
							newBB->splice(newBB->end(), I->getParent(), I);
							MBB->addSuccessor(newBB);
							newBB->setHasAddressTaken();
							break;
						}	
					}
				}
			}// end of function
			void changeLabelsAfterStore(MachineFunction &MF){
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					for ( llvm::MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if ( (I->getOpcode() == OR1K::SFNE ) && std::next(I) != E && I != MBB->begin()) // error detectors
							if(I->getOperand(0).getReg() == OR1K::R18){
							MachineBasicBlock* newBB=splitBlockAfterInstr(I, MF);
							MBB->setHasAddressTaken();
							break;
						}
						if ( (I->getOpcode()==OR1K::SFNE ) && std::next(I) == E && I != MBB->begin()) // error detectors
							if(I->getOperand(0).getReg() == OR1K::R18){
							MachineBasicBlock* newBB=MF.CreateMachineBasicBlock((I->getParent())->getBasicBlock());
							MachineFunction::iterator It = MBB->getIterator();
                                                        //It++;
							if (It != MF.end()) 
							MF.insert(It,newBB);
							else MF.push_back(newBB);
							newBB->splice(newBB->end(), I->getParent(), I);
							MBB->addSuccessor(newBB);
							newBB->setHasAddressTaken();
							break;
						
						}	
					}
				}
			}// end of function
			void changeLabelsCMP(MachineFunction &MF){
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					for ( llvm::MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if ( ( I->getOpcode() > 96 && I->getOpcode() < 129) /*isCompare*/ && std::next(I) != E && I != MBB->begin()){
							MachineBasicBlock* newBB=splitBlockAfterInstr(I, MF);
							MBB->setHasAddressTaken();
							break;
						}
						if ( ( I->getOpcode() > 96 && I->getOpcode() < 129) && std::next(I) == E && I != MBB->begin()){
							MachineBasicBlock* newBB=MF.CreateMachineBasicBlock((I->getParent())->getBasicBlock());
							MachineFunction::iterator It = MBB->getIterator();
							if (It != MF.end()) 
							MF.insert(It,newBB);
							else MF.push_back(newBB);
							newBB->splice(newBB->end(), I->getParent(), I);
							MBB->addSuccessor(newBB);
							newBB->setHasAddressTaken();
							break;
						}

					}
				}
			}// end of function

			void changeLabelsCALL(MachineFunction &MF){
				unsigned int numBBs=0;
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); (MBB != MBE) && (numBBs < FUNCSIZE); ++MBB, ++numBBs) {
					for ( llvm::MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if ( ( I->isCall())  && std::next(I) != E && I != MBB->begin()){
							MachineBasicBlock* newBB=splitBlockAfterInstr(I, MF);
							MBB->setHasAddressTaken();
							break;
						}
						if ( I->isCall() && std::next(I) == E && I != MBB->begin()){
							MachineBasicBlock* newBB=MF.CreateMachineBasicBlock((I->getParent())->getBasicBlock());
							MachineFunction::iterator It = MBB->getIterator();

							if (It != MF.end()) 
							MF.insert(It,newBB);
							else MF.push_back(newBB);
							MBB->splice(newBB->end(), I->getParent(), I);
							MBB->addSuccessor(newBB);
							newBB->setHasAddressTaken();
							break;
						}

					}
				}
			}// end of function
			void changeLabelsCheckingStore(MachineFunction &MF){
				int numBBs=0;
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE && (numBBs < FUNCSIZE); ++MBB, ++numBBs) {
					for ( llvm::MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						// an error detection check
						if ( !I->mayLoad()  && I->getOperand(0).isReg() ){
							if (I->getOperand(0).getReg() == OR1K::R18 && I != MBB->begin()) {
								errs()<<"moving\n";
								MachineBasicBlock* newBB=splitBlockAfterInstr(I, MF);
								MBB->setHasAddressTaken();
								break;
							}

						}	
					}
				}

			}// end of function

			//this function checks the function call arguments and sp, and fp (R1...R9)
			// we used register R15 and R17 to make a check sum of registers R1...R9
			// we just compare the checksums
			void checkFunctionCallArguments(MachineInstr *MI, MachineFunction &MF) {

				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				DebugLoc DL3= MI->getDebugLoc();
				MachineFunction::iterator MBB;
				// IN THIS PHASE WE CHECK M and D registers against each other 
				// If there is any mismatch, we use R registers for recovery purposes
				// create diagnosis BB
				MachineBasicBlock *diagnosisBB = MF.CreateMachineBasicBlock();
				MachineFunction::iterator It = (MF.end())->getIterator();
				MF.insert(It, diagnosisBB);
				MI->getParent()->addSuccessor(diagnosisBB);

				// first two add for making check sum registers
				MachineInstr *MIcmp = NULL;
				MachineInstr *MItest = NULL;


				// creating check sum  for registers parameters
				for (auto& Reg : functionCallArgs ){
					// jump to diagnosis BB if mismatch is observed
					MIcmp = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(Reg).addReg(getSlaveReg1(Reg));
					MI->getParent()->insert(MI, MIcmp);
					MItest = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(diagnosisBB);
					MI->getParent()->insert(MI, MItest);
				}
				MachineInstr *NOP1 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
				MI->getParent()->insert(MI, NOP1);
				MachineInstr *NOP2 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
				MI->getParent()->push_back(NOP2);

				// recovery in diagnosis BB
				// STEP1) restore the sate of registers 
				for (auto& Reg : functionCallArgs ){
					MachineInstr *checkArgM = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(Reg).addReg(getSlaveReg2(Reg)).addImm(0);
					MachineInstr *checkArgD = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(getSlaveReg1(Reg)).addReg(getSlaveReg2(Reg)).addImm(0);
					diagnosisBB->push_back(checkArgM);
					diagnosisBB->push_back(checkArgD);
				}
				// STEP 2) jump back to the source BB
				MachineInstr *jumpBack = BuildMI(MF, DL3 , TII->get(OR1K::J)).addMBB(MI->getParent());
				diagnosisBB->push_back(jumpBack);						
				MachineInstr *NOP = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
				diagnosisBB->push_back(NOP);
				diagnosisBB->addSuccessor(MI->getParent());

				// IN THIS PHASE WE CHECK M and R registers against each other 
				// If there is any mismatch, we use D registers for recovery purposes
				// create diagnosis BB
				MachineBasicBlock *diagnosisBB1 = MF.CreateMachineBasicBlock();
				It = (MF.end())->getIterator();
				MF.insert(It, diagnosisBB1);
				MI->getParent()->addSuccessor(diagnosisBB1);

				// first two add for making check sum registers
				MIcmp = NULL;
				MItest = NULL;


				// creating check sum  for registers parameters
				for (auto& Reg : functionCallArgs ){
					// jump to diagnosis BB if mismatch is observed
					MIcmp = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(Reg).addReg(getSlaveReg2(Reg));
					MI->getParent()->insert(MI, MIcmp);
					MItest = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(diagnosisBB1);
					MI->getParent()->insert(MI, MItest);
				}
				NOP1 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
				MI->getParent()->insert(MI, NOP1);
				NOP2 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
				MI->getParent()->push_back(NOP2);

				// recovery in diagnosis BB1
				// STEP1) restore the sate of registers 
				for (auto& Reg : functionCallArgs ){
					MachineInstr *checkArgM = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(Reg).addReg(getSlaveReg1(Reg)).addImm(0);
					MachineInstr *checkArgD = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(getSlaveReg2(Reg)).addReg(getSlaveReg1(Reg)).addImm(0);
					diagnosisBB1->push_back(checkArgM);
					diagnosisBB1->push_back(checkArgD);
				}
				// STEP 2) jump back to the source BB
				jumpBack = BuildMI(MF, DL3 , TII->get(OR1K::J)).addMBB(MI->getParent());
				diagnosisBB1->push_back(jumpBack);						
				NOP = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
				diagnosisBB1->push_back(NOP);
				diagnosisBB1->addSuccessor(MI->getParent());



			} //end-of-function



			//this function checks the function call arguments and sp, and fp (R1...R9)
			// we used register R15 and R17 to make a check sum of registers R1...R9
			// we just compare the checksums
			void checkFunctionCallArgumentsSWIFT(MachineInstr *MI, MachineFunction &MF) {
				MachineBasicBlock* newBB=NULL;
				for (auto& Reg : functionCallArgs ){
					MachineBasicBlock* lastCheck=NULL;
					newBB=insertVoting(MF, MI, Reg, lastCheck);
				}
			} //end-of-function


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
				//else  errs() << "FIX it by hand. I CAN NOT SPLIT THIS BASICBLOCK\n F: "<< MF.getName() << "BB: " << MI->getParent()->getName() << "Instr: " << *MI << "\n";
				else
				{
					errs() << "FIX it by hand. I CAN NOT SPLIT THIS BASICBLOCK\n F: "<< MF.getName() << "BB: " << MI->getParent()->getName() << "Instr: " << *MI << "\n";
					NewBB->splice(NewBB->end(),  (MI->getParent()), MI,  (MI->getParent())->end());//HWISOO_DEBG
				}
				//HWISOO: else means that it is end or end-1
				//In that case, how can we split?


				return NewBB;
			}



			MachineBasicBlock* makeErrorBB(MachineFunction &MF)
			{
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				MachineBasicBlock *errorMBB = MF.CreateMachineBasicBlock();
				MachineFunction::iterator It = (MF.end())->getIterator();
				MF.insert(It, errorMBB);
				errorMBB->addSuccessor(errorMBB);


				//MachineInstr *MIAdd = BuildMI(MF, MF.begin()->begin()->getDebugLoc() , TII->get(OR1K::ADD)).addReg(OR1K::R22).addReg(OR1K::R22).addReg(OR1K::R22);
				//errorMBB->push_back(MIAdd);

				return errorMBB;
			}
			MachineBasicBlock* makeErrorBB(MachineFunction &MF, MachineBasicBlock *sourceMB, MachineBasicBlock *UnrecoverableERRORBB, MachineBasicBlock *UnrecoverableERRORInter, MachineBasicBlock *RecoverableErrorBB, MachineBasicBlock::iterator strInst)
			{
				DebugLoc DL3= strInst->getDebugLoc();
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				MachineBasicBlock *errorMBB = MF.CreateMachineBasicBlock();
				MachineFunction::iterator It = (MF.end())->getIterator();
				MF.insert(It, errorMBB);
				sourceMB->addSuccessor(errorMBB);

				// check for inter stream error propagation


				std::vector<MachineBasicBlock *> newBBs;

				MachineBasicBlock *checkFirstMBB = MF.CreateMachineBasicBlock();
				MF.push_back(checkFirstMBB);
				errorMBB->addSuccessor(checkFirstMBB);

				for (auto it = GPRregistersMap1.begin(); it != GPRregistersMap1.end(); ++it){
					newBBs.push_back(checkFirstMBB);
					MachineInstr *cmpInst = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(it->first).addReg(it->second);
					checkFirstMBB->push_back(cmpInst);
					MachineInstr *branchTOcheckSecondMBB = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(checkFirstMBB);
					checkFirstMBB->push_back(branchTOcheckSecondMBB);
					MachineInstr *NOP = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
					checkFirstMBB->push_back(NOP);
					checkFirstMBB = MF.CreateMachineBasicBlock();
					MF.push_back(checkFirstMBB);
					checkFirstMBB->addSuccessor(NOP->getParent());


				}

				MF.push_back(checkFirstMBB);
				newBBs.push_back(checkFirstMBB);

				std::unordered_map<unsigned int, unsigned int>::iterator it = GPRregistersMap1.begin();
				std::unordered_map<unsigned int, unsigned int>::iterator end = GPRregistersMap1.end();
				std::vector<MachineBasicBlock *>::iterator newBBsIt = ++(newBBs.begin());
				for(MachineFunction::iterator MBB = errorMBB->getIterator(), MBE = checkFirstMBB->getIterator(); MBB != MBE && it != end ; ++MBB) {
					for ( llvm::MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E && it != end ; ++I){

						if(I->isConditionalBranch() && std::next(I->getParent())){


							MachineBasicBlock *checkSecondMBB = MF.CreateMachineBasicBlock();
							MF.push_back(checkSecondMBB);
							MBB->addSuccessor(checkSecondMBB);
							checkSecondMBB->addSuccessor(UnrecoverableERRORInter);


							//if(I->getOperand(1).isMBB())I->getOperand(1).setMBB(checkSecondMBB);
							if(I->getOperand(0).isMBB())I->getOperand(0).setMBB(checkSecondMBB);

							MachineInstr *cmpInst = BuildMI(MF, DL3 , TII->get(OR1K::SFEQ)).addReg(it->first).addReg(getSlaveReg2(it->first));
							checkSecondMBB->push_back(cmpInst);
							MachineInstr *branchTOcheckFirstMBB = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(*newBBsIt);
							checkSecondMBB->push_back(branchTOcheckFirstMBB);
							MachineInstr *cmpInst1 = BuildMI(MF, DL3 , TII->get(OR1K::SFEQ)).addReg(it->second).addReg(getSlaveReg2(it->first));
							checkSecondMBB->push_back(cmpInst1);
							MachineInstr *branchTOcheckFirstMBB1 = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(*newBBsIt);
							checkSecondMBB->push_back(branchTOcheckFirstMBB1);
							checkSecondMBB->addSuccessor(*newBBsIt);
							MachineInstr *NOP = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
							checkSecondMBB->push_back(NOP);
							MachineInstr *exitInst = BuildMI(MF, DL3 , TII->get(OR1K::J)).addMBB(UnrecoverableERRORInter);
							checkSecondMBB->push_back(exitInst);

							++newBBsIt;
							++it;

						} // end of if

					}// end of loop
				}// end of loop



				// check for the errors on the interval between memory back up register (destination R28) and the checking load instruction (destination R18)
				// if (Xmem-M != Xmem-Slave1 && R28!=R18) Recoverable;
				// l.sfeq
int memReg=strInst->getOperand(1).getReg();
				MachineInstr *MIcmp = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(memReg).addReg(getSlaveReg1(memReg));
				checkFirstMBB->push_back(MIcmp);

				MachineBasicBlock *newBB = MF.CreateMachineBasicBlock();
				MachineBasicBlock *nextCheck = MF.CreateMachineBasicBlock();

				MF.push_back(newBB);
				MF.push_back(nextCheck);

				checkFirstMBB->addSuccessor(newBB);
				newBB->addSuccessor(checkFirstMBB);
				checkFirstMBB->addSuccessor(nextCheck);

				MachineInstr *branch = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(newBB);
				checkFirstMBB->push_back(branch);

				MachineInstr *NOP = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
				checkFirstMBB->push_back(NOP);
				MachineInstr *jumpNextCheck = BuildMI(MF, DL3 , TII->get(OR1K::J)).addMBB(nextCheck);
				checkFirstMBB->push_back(jumpNextCheck);


				// comparing R28 and R18 and jump to recoverable BB if they are not same in newBB; otherwise jump to the next check
				MachineInstr *MIcmp1 = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(OR1K::R18).addReg(OR1K::R28);
				newBB->push_back(MIcmp1);
				MachineInstr *jumpToRecoverableErrorBB = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(RecoverableErrorBB);
				newBB->push_back(jumpToRecoverableErrorBB);
				MachineInstr *NOP1 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
				newBB->push_back(NOP1);
				MachineInstr *jumpNextCheck1 = BuildMI(MF, DL3 , TII->get(OR1K::J)).addMBB(nextCheck);
				newBB->push_back(jumpNextCheck1);



				// jumpNextCheck
				// check for false alarm
				// if ( VCR(R18) != Xdata-M) Recoverable; 
				MIcmp1 = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(OR1K::R18).addReg(memReg);
				nextCheck->push_back(MIcmp1);
				jumpToRecoverableErrorBB = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(RecoverableErrorBB);
				nextCheck->push_back(jumpToRecoverableErrorBB);
				NOP1 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
				nextCheck->push_back(NOP1);


				//Unrecoverable error affecting store address in pipeline
				MachineInstr *jumpUnrecoverable = BuildMI(MF, DL3 , TII->get(OR1K::J)).addMBB(UnrecoverableERRORBB);
				nextCheck->push_back(jumpUnrecoverable);

				return errorMBB;
			}
			MachineBasicBlock* makeDiagnosisBBNaive(MachineFunction &MF, MachineBasicBlock *sourceMB, MachineBasicBlock *UnrecoverableERRORBB, MachineBasicBlock *UnrecoverableERRORInter, MachineBasicBlock *RecoverableErrorBB, MachineBasicBlock::iterator strInst)
			{

				DebugLoc DL3= sourceMB->instr_begin()->getDebugLoc();
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				MachineBasicBlock *recovery = MF.CreateMachineBasicBlock();
				MachineFunction::iterator It = (MF.end())->getIterator();
				MF.insert(It, recovery);
				sourceMB->addSuccessor(recovery);
				recovery->addSuccessor(sourceMB);

				// Naive recovery has three steps
				// 1) store back the R28 into the memory location of store
				// 2) coping D-stream registers into the M and D strams
				// 3) jump back to the store basic block



				//step 1
				MachineInstr *memRestoreInst = BuildMI(MF, DL3 , TII->get(strInst->getOpcode()));
				for (unsigned int opcount=0; opcount < strInst->getNumOperands(); opcount++){ //
					memRestoreInst->addOperand(MF, strInst->getOperand(opcount));              
				} //end of for
				memRestoreInst->getOperand(0).setReg(OR1K::R28);
				recovery->push_back(memRestoreInst);
				//step 2
				unsigned int valReg=strInst->getOperand(0).getReg();
				unsigned int memReg=strInst->getOperand(1).getReg();
				MachineInstr *MoveValRegM = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(valReg).addReg(getSlaveReg2(valReg)).addImm(0);
				MachineInstr *MoveValRegD = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(getSlaveReg1(valReg)).addReg(getSlaveReg2(valReg)).addImm(0);
				MachineInstr *MoveMemRegM = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(memReg).addReg(getSlaveReg2(memReg)).addImm(0);
				MachineInstr *MoveMemRegD = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(getSlaveReg1(memReg)).addReg(getSlaveReg2(memReg)).addImm(0);	
				recovery->push_back(MoveValRegM);
				recovery->push_back(MoveValRegD);
				recovery->push_back(MoveMemRegM);
				recovery->push_back(MoveMemRegD);					
				//step 3

				MachineInstr *jumpBack = BuildMI(MF, DL3 , TII->get(OR1K::J)).addMBB(sourceMB);
				recovery->push_back(jumpBack);						
				MachineInstr *NOP = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
				recovery->push_back(NOP);
				return recovery;
			}




			void printInstruction (MachineBasicBlock::iterator I)
			{
				errs() << "Instruction is: " << *I << " and it has operands: " << I->getNumOperands() <<'\n';
				for (int k=0; k< I->getNumOperands(); k++)
				{
					if (I->getOperand(k).isReg() ) errs() << "op("<<k<<") is register: "<<I->getOperand(k).getReg()<<'\n';
					else if (I->getOperand(k).isImm()){ errs() <<" op("<<k<<") is Immediate: "<<I->getOperand(k).getImm()<<'\n';}
					else if (I->getOperand(k).isCImm()){	errs() << "op("<<k<<") is Constant Immediate: "<<I->getOperand(k).getCImm()<<'\n';}
					else if (I->getOperand(k).isMBB()) {errs() << "op("<<k<<") is Machine BasicBlock: "<<I->getOperand(k).getMBB()->getFullName() <<" Number("<<I->getOperand(k).getMBB()->getNumber()<< "), AND TYPE IS : "<<I->getOperand(k).getType() << '\n';}
					else if (I->getOperand(k).isSymbol()) {errs() << "op("<<k<<") is symbol: "<<I->getOperand(k).getSymbolName() <<" , AND TYPE IS : "<<I->getOperand(k).getType() << '\n';}
					else if (I->getOperand(k).isMCSymbol()) {errs() << "op("<<k<<") is machine symbol: "<<I->getOperand(k).getSymbolName() <<" , AND TYPE IS : "<<I->getOperand(k).getSymbolName() << '\n';}

					else if (I->getOperand(k).isFPImm()) {errs() << "op("<<k<<") is FT Imm: "<<I->getOperand(k).getFPImm() <<" , AND TYPE IS : "<<I->getOperand(k).getType() << '\n';}
					else if (I->getOperand(k).isBlockAddress()) {errs() << "op("<<k<<") is Block Address: "<<I->getOperand(k).getBlockAddress() <<" , AND TYPE IS : "<<I->getOperand(k).getType() << '\n';}

					else if (I->getOperand(k).isGlobal()) {errs() << "op("<<k<<") is Global: "<<I->getOperand(k).getGlobal () <<" , AND TYPE IS : "<<I->getOperand(k).getType() << '\n';}

					else if (I->getOperand(k).isMetadata()) {errs() << "op("<<k<<") is Metadata: "<<I->getOperand(k).getMetadata() <<" , AND TYPE IS : "<<I->getOperand(k).getType() << '\n';}

					else
						errs() << "op("<<k<<") Type is: " << I->getOperand(k).getType() << '\n';



				}
			}

			//triplicate all instructions but not memory write and control-flow instructions
			void triplicateInstructions(MachineFunction &MF){
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if( !(I->isBranch()) &&  !(I->mayStore())  &&  !(I->isCall()) && !(I->isReturn()) && !(I->isCompare()) &&  !(I->getOpcode() == OR1K::NOP || (I->getOpcode() > 96 && I->getOpcode() < 129) /*comparee*/) ){

							MachineInstr *slaveinst1=  MF.CloneMachineInstr (&*I);
							MachineInstr *slaveinst2=  MF.CloneMachineInstr (&*I);

							slaveinst1->setFlags(0);
							slaveinst2->setFlags(0);

							for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++){ //
								if (I->getOperand(opcount).isReg() ){
									slaveinst1->getOperand(opcount).setReg(getSlaveReg1(I->getOperand(opcount).getReg())); 
									slaveinst2->getOperand(opcount).setReg(getSlaveReg2(I->getOperand(opcount).getReg())); 
								}

							} //end of for

							MBB->insert(I, slaveinst1);
							MBB->insert(I, slaveinst2);
						}// end of if	
					}// end of for
				}//end of for
			}// end of function
			//triplicate all instructions but not memory write and control-flow instructions
			void fixedLabels(MachineFunction &MF){
				//HWISOO. Reminder
				// New basic block
				//   cmp reg, reg*
				//    beq L1
				//    l.nop
				//    mov reg, reg**
				//    mov reg*, reg**
				//  L1:  
				MachineBasicBlock::iterator checkingCMP=NULL;
				MachineBasicBlock::iterator branchToFix=NULL;
				MachineBasicBlock::iterator newBBpos=NULL;

				

				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if((I->getOpcode() > 96 && I->getOpcode() < 129))
							if(isCheckingCMP(I)){
								checkingCMP=I;
								branchToFix=std::next(I);
								newBBpos=std::next(std::next(std::next(std::next(std::next(I)))));
								MachineBasicBlock* newBB=splitBlockAfterInstr(newBBpos, MF);
								MBB->setHasAddressTaken();
								branchToFix->getOperand(0).setMBB(newBB);
								MBB->addSuccessor(newBB);
								break;
							}

					}// end of for
				}//end of for
			}// end of function
			
			
			void insertCopyingReturnAddress(MachineFunction &MF){
				//HWISOO. we only need to insert l.addi r19, r9, 0 and l.addi r29, r9, 0 at the "start of the function"

				MachineFunction::iterator MBB = MF.begin();
				MachineBasicBlock::iterator I=MBB->begin();
				
				DebugLoc DL3= I->getDebugLoc();
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				
				MachineInstr *MoveReturnToD = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(getSlaveReg1(OR1K::R9)).addReg(OR1K::R9).addImm(0);
				MachineInstr *MoveReturnToR = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(getSlaveReg2(OR1K::R9)).addReg(OR1K::R9).addImm(0);
				

				MBB->insert(I, MoveReturnToD);
				MBB->insert(I, MoveReturnToR);
				

			}
			bool isCheckingCMP(MachineBasicBlock::iterator I){
				unsigned int firstReg = I->getOperand(0).getReg();
				unsigned int secondReg;
				if(I->getOperand(1).isReg())secondReg=I->getOperand(1).getReg();
				else return false;
				std::unordered_map<unsigned int, unsigned int>::const_iterator got = GPRregistersMap1.find(firstReg);
				// Check if iterator points to end of map
				if (got == GPRregistersMap1.end()) return false;
				else if (got->second == secondReg) return true;
				return false;

			}
			void triplicateInstructionsSWIFT(MachineFunction &MF){
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if( !(I->isBranch()) && !(I->mayLoad()) &&  !(I->mayStore())  &&  !(I->isCall()) && !(I->isReturn()) && !(I->isCompare()) &&  !(I->getOpcode() == OR1K::NOP || (I->getOpcode() > 96 && I->getOpcode() < 129) /*comparee*/) ){

							MachineInstr *slaveinst1=  MF.CloneMachineInstr (&*I);
							MachineInstr *slaveinst2=  MF.CloneMachineInstr (&*I);

							slaveinst1->setFlags(0);
							slaveinst2->setFlags(0);

							for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++){ //
								if (I->getOperand(opcount).isReg() ){
									slaveinst1->getOperand(opcount).setReg(getSlaveReg1(I->getOperand(opcount).getReg())); 
									slaveinst2->getOperand(opcount).setReg(getSlaveReg2(I->getOperand(opcount).getReg())); 
								}

							} //end of for

							MBB->insert(I, slaveinst1);
							MBB->insert(I, slaveinst2);
						}// end of if
					}//end of for
				}// end of function
				
			}// end of function

			
			
			void copyLoadValuesSWIFTR(MachineFunction &MF){//copy for load
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){	
						if(I->getOpcode() != OR1K::INLINEASM && I->mayLoad() /*&& std::next(I) != E*/){
							/*
							errs()<< "HWISOO_DEBUG\n";
							I->dump();
							errs() << "Check\n F: "<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
							errs()<<I->getOpcode()<<"/"<<OR1K::NOP<<"\n";
							*/
							DebugLoc DL3= I->getDebugLoc();
							const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
							MachineInstr *copyMoveM = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(getSlaveReg1(I->getOperand(0).getReg())).addReg(I->getOperand(0).getReg()).addImm(0);
							MBB->insertAfter(I,copyMoveM); 
							MachineInstr *copyMoveD = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(getSlaveReg2(I->getOperand(0).getReg())).addReg(I->getOperand(0).getReg()).addImm(0);
							MBB->insertAfter(I,copyMoveD);
						}

					}// end of for
				}//end of for
			}
			
			
			void triplicateInstructionsTZDC(MachineFunction &MF){
				//First part: triplication 
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if( !(I->isBranch()) /*&& !(I->mayLoad()) &&  !(I->mayStore())*/  &&  !(I->isCall()) && !(I->isReturn()) && !(I->isCompare()) &&  !(I->getOpcode() == OR1K::NOP || (I->getOpcode() > 96 && I->getOpcode() < 129) /*comparee*/) && (I->getOpcode() != OR1K::INLINEASM) && (I->getOpcode() != OR1K::NOP)){

							MachineInstr *slaveinst1=  MF.CloneMachineInstr (&*I);
							MachineInstr *slaveinst2=  MF.CloneMachineInstr (&*I);

							slaveinst1->setFlags(0);
							slaveinst2->setFlags(0);

							for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++){ //
								if (I->getOperand(opcount).isReg() ){
									slaveinst1->getOperand(opcount).setReg(getSlaveReg1(I->getOperand(opcount).getReg())); 
									slaveinst2->getOperand(opcount).setReg(getSlaveReg2(I->getOperand(opcount).getReg())); 
								}
								else if (I->getOperand(opcount).isImm() && (I->mayStore() || I->mayLoad()) ){
									slaveinst1->getOperand(opcount).setImm(I->getOperand(opcount).getImm()-TZDC_OFFSET); 
									slaveinst2->getOperand(opcount).setImm(I->getOperand(opcount).getImm()-2*TZDC_OFFSET); 
								}
							} //end of for
							MBB->insert(I, slaveinst1);
							MBB->insert(I, slaveinst2);
						}// end of if
					}//end of for
				}// end of function
			}// end of function

			
			bool  isOriginalCMP(llvm::MachineBasicBlock::iterator inst){
				if ((inst->getOpcode() > 96 && inst->getOpcode() < 129) ){
					// this excludes error checking compare operations from original compare operations
					for (unsigned int opcount=0; opcount < 2; opcount++)// This is 2, because we just care about the first two operands of compare
					{
						if (inst->getOperand(opcount).isReg())
						{
							if( getSlaveReg1(inst->getOperand(opcount).getReg()) == inst->getOperand(opcount).getReg() ) 
								return false;
							if( getSlaveReg2(inst->getOperand(opcount).getReg()) == inst->getOperand(opcount).getReg() ) 
								return false;
							if(inst->getOperand(opcount).getReg()==OR1K::R20 || inst->getOperand(opcount).getReg()==OR1K::R28 || inst->getOperand(opcount).getReg()==OR1K::R30)
								return false;
						}
					}
					return true;
				}
				return false;
			}
				
			void wrongDirectionCheckingTZDC(MachineFunction &MF){
				std::list<MachineBasicBlock*> insertedBlock;
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					llvm::MachineBasicBlock::iterator cmpInst=NULL;
					//skip inserted block
					bool skipInsertedBlock = false;
					for (std::list<MachineBasicBlock*>::iterator iter = insertedBlock.begin(); iter != insertedBlock.end(); ++iter) {
						if(*iter == &(*MBB))
						{
							skipInsertedBlock=true;
							break;
						}
					}
					if(skipInsertedBlock) continue;

					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if (isOriginalCMP(I))
						{
							cmpInst=I;
						}
						else if(I->isConditionalBranch() && cmpInst)
						{					
							assert(cmpInst);
							
							DebugLoc DL3= I->getDebugLoc();
							const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();

							
							MachineInstr *shadowCMP=  MF.CloneMachineInstr(&*cmpInst);
							shadowCMP->setFlags(0);
							for (unsigned int opcount=0; opcount < cmpInst->getNumOperands(); opcount++)
								if (cmpInst->getOperand(opcount).isReg()) shadowCMP->getOperand(opcount).setReg(getSlaveReg1(cmpInst->getOperand(opcount).getReg()));

							MachineInstr *shadowCMP1=  MF.CloneMachineInstr(&*shadowCMP);

							//create a new BB newBB: this will handle taken branches
							MachineBasicBlock *NewBB =  MF.CreateMachineBasicBlock();
							MBB->addSuccessor(NewBB);
							MachineFunction::iterator It = (MF.end())->getIterator();
							MF.insert(It,NewBB);
							
							

							
							/* in taken block, we need to do like this
							cmp (do same cmp with shadow)
							l.bf (or l.bnf. same to the previous one. if same, it will return to (original) place it should go
							l.nop 0
							#Else, it should go to recovery
							
							l.mfspr r30, r0, 16 #SPR16 == NPC
							l.addi r30, r30, 16 #can I sure that it is right address? or can we just copy shadow2 of r9, and rollback it after jal?
							
							l.j RECOVERY_BLOCK_OR_FUNCTION #Can we jump that much?
							l.nop 0
							
							#Now, we need to do branch again
							
							cmp (do same cmp with original one)
							l.bf (or l.bnf) to original target
							l.nop
							l.j to original not-taken
							l.nop
						
							*/
							MachineInstr* splitPointMI=NULL;
							{
								NewBB->insert(NewBB->instr_begin(), shadowCMP);
								MachineInstr *shadowBranch=  MF.CloneMachineInstr(I);
								NewBB->push_back(shadowBranch);
								MachineInstr *MInop1 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
								NewBB->push_back(MInop1);
								//splitPointMI=MInop1;
								
								
								
								MachineInstr *MImfspr = BuildMI(MF, DL3 , TII->get(OR1K::MFSPR)).addReg(OR1K::R30).addReg(OR1K::R0).addImm(16);
								NewBB->push_back(MImfspr);
								
								splitPointMI=MImfspr;
								
								MachineInstr *MIaddi = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R30).addReg(OR1K::R30).addImm(16);
								NewBB->push_back(MIaddi);
								
								MachineInstr *MIBranch = BuildMI(MF, DL3 , TII->get(OR1K::J)).addMBB(tzdcRecoveryMBB);
								NewBB->push_back(MIBranch);
								tzdcRecoveryMBB->addSuccessor(NewBB);
								MachineInstr *MInop2 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
								NewBB->push_back(MInop2);
								
								
								
								MachineInstr *copiedCMP=  MF.CloneMachineInstr(&*cmpInst);
								NewBB->push_back(copiedCMP);
								MachineInstr *copiedBranch=  MF.CloneMachineInstr(I);
								NewBB->push_back(copiedBranch);
								MachineInstr *MInop3 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
								NewBB->push_back(MInop3);
								
								MachineFunction::iterator nextBB = MBB->getIterator();
								nextBB++;
								
								MachineInstr *MIJump = BuildMI(MF, DL3 , TII->get(OR1K::J)).addMBB(&*nextBB);
								NewBB->push_back(MIJump);
								MachineInstr *MInop4 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
								NewBB->push_back(MInop4);
							}

							
						


							/* in not taken block, we need to do like this
							1. do same comparison
							2. if TAKEN, go to recovery part of newBB
							3. In that case, it will take care for checking and recovery
							4. otherwise, we can just continue

							
							PREVIOUS idea
							
							cmp (do same cmp with shadow)
							l.bnf (or l.bf. opposite to the previous one. if same, it will return to (original) not-taken place it should go
							l.nop 0
							#Else, it should go to recovery
							
							l.mfspr r30, r0, 16 #SPR16 == NPC
							l.addi r30, r30, 16 #can I sure that it is right address? or can we just copy shadow2 of r9, and rollback it after jal?
							
							l.j RECOVERY_BLOCK_OR_FUNCTION #Can we jump that much?
							l.nop 0
							
							#Now, we need to do branch again
							
							cmp (do same cmp with original one)
							l.bf (or l.bnf) to original target
							l.nop
							
							//maybe we don't need it, if not-taken block is always after the current BB
							//l.j to original not-taken
							//l.nop
							*/
							MachineBasicBlock* detectedBB=NULL;
							{
								detectedBB=splitBlockAfterInstr(splitPointMI, MF);
								
								llvm::MachineBasicBlock::iterator nopNextI=std::next(I);

								
								MBB->insert(nopNextI, shadowCMP1);
								
								
								MachineInstr *copiedBranch=  MF.CloneMachineInstr(I);
								copiedBranch->getOperand(0).setMBB(detectedBB); 
								MBB->insert(nopNextI, copiedBranch);
								MachineInstr *MInop5 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
								MBB->insert(nopNextI, MInop5);
								
								
								
								tzdcRecoveryMBB->addSuccessor(detectedBB);
								//HWISOO. this is for converting from # BB_ to .LBBn_
								
								
							}
							
							
							//Make previous branch (if taken, branch to taken-block) -> (if taken, branch to inter-taken-block)
							I->getOperand(0).setMBB(NewBB); 
							
							//N
							insertedBlock.push_back(NewBB);
							insertedBlock.push_back(detectedBB);
							
							cmpInst=NULL;
							break;     //break for instr parsing in MBB
							
						}
						
						
						
					}//end of for
				}// end of machine function
				insertedBlock.clear();
			}// end of function
			
			//note for OR1K::INLINEASM
			void insertVotingOperations(MachineFunction &MF){
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					MachineBasicBlock* lastCheck=NULL;
					unsigned int insertedVotingForMem = 0; //HWISOO. this is for problem of "CMP-SW-BRANCH"
					bool afterCmp = false;
					MachineInstr* lastCmp = NULL;
					int lastCmpRegs[2] = {-1, -1};
					
					std::list<unsigned int> usedRegList;
					std::list<unsigned int> overwrittedRegList;
					std::list<unsigned int> overwrittedByLoadRegList;
					std::list<MachineInstr*> loadStoreList;
					
					
					bool overwriteCmps = false;
					bool overwriteCmpsTwo[2] = {false, false};
					bool isPossibleToMoveInsts= false;
					for (MachineBasicBlock::iterator I=MBB->begin(), E=(MBB->end()); I !=E ; ++I){
						
						//HWISOO. check that this inst will overwrite lastCmpRegs
						if(afterCmp)
						{
							if( !(I->isBranch()) && !(I->mayLoad()) /*&&  !(I->mayStore())*/  &&  !(I->isCall()) && !(I->isReturn()) && !(I->isCompare()) &&  !(I->getOpcode() == OR1K::NOP || (I->getOpcode() > 96 && I->getOpcode() < 129) /*comparee*/) && I->getOpcode() != OR1K::INLINEASM){
								for (unsigned int opcount = 0; opcount < I->getNumOperands(); opcount++)
									if (I->getOperand(opcount).isReg())
									{
										if(opcount == 0 && !(I->mayStore()))
										{
											int targetReg = I->getOperand(0).getReg();
											if (targetReg == lastCmpRegs[0] || targetReg == lastCmpRegs[1])
											{
												overwriteCmps = true;
												if (targetReg == lastCmpRegs[0])
													overwriteCmpsTwo[0] =true;
												if (targetReg == lastCmpRegs[1])
													overwriteCmpsTwo[1] =true;
												
											}
											
											
											//overwrittedByLoadRegList should be inserted later, as it can be caught by itself
											overwrittedRegList.push_back(I->getOperand(0).getReg());
											errs() << "DEBUG:INSERTINGusedwritten:"<<I->getOperand(0).getReg()<<"\n";
											printInstruction(I);
										}
										else
										{
											usedRegList.push_back(I->getOperand(opcount).getReg());
											errs() << "DEBUG:INSERTINGused:"<<I->getOperand(opcount).getReg()<<"\n";
											printInstruction(I);
											
											
											//impossible cond 1. if some reigster is used after load overwrite it
											unsigned target = I->getOperand(opcount).getReg();
											for (std::list<unsigned int>::const_iterator overByLoadIter = overwrittedByLoadRegList.begin(); overByLoadIter != overwrittedByLoadRegList.end(); ++overByLoadIter)
												if (target == *overByLoadIter)
												{
													errs() << "DEBUG:usedwritten:"<<target<<"\n";
													printInstruction(I);
													isPossibleToMoveInsts = false;
													break;
												}
										}
										
									}
							}
						}
						
						
						if ((I->mayLoad() || I->mayStore())){  // address register voting for memory instructions
							if (afterCmp)
							{
								insertedVotingForMem++;
								loadStoreList.push_back(I);
								
								//impossible cond 2: load/store addr is used after it is overwritten
								if(I->getOperand(1).isReg())
								{
									unsigned target = I->getOperand(1).getReg();
									for (std::list<unsigned int>::const_iterator overIter = overwrittedRegList.begin(); overIter != overwrittedRegList.end(); ++overIter)
										if (target == *overIter)
										{
											errs() << "DEBUG:usedwritten:"<<target<<"\n";
											printInstruction(I);
											isPossibleToMoveInsts = false;
											break;
										}
								}
								
								if(I->mayLoad()) //Note that we do only for load, as store is done at previous block. and it is because byLoadReg update
								{
									//impossible cond 1. if some reigster is used after load overwrite it.
									//Note that only load case it is not done yet
									if (I->getOperand(1).isReg())
									{
										unsigned target = I->getOperand(1).getReg();
										for (std::list<unsigned int>::const_iterator overByLoadIter = overwrittedByLoadRegList.begin(); overByLoadIter != overwrittedByLoadRegList.end(); ++overByLoadIter)
											if (target == *overByLoadIter)
											{
												errs() << "DEBUG:usedwritten:"<<target<<"\n";
												printInstruction(I);
												isPossibleToMoveInsts = false;
												break;
											}
									}
										
									//note. load register operand 0 also should not be overwritten.
									//it is not calculated at previous block. note that store is done for this.
									//impossible cond 2: load data will be overwritten after it is overwritten (sequence problem)
									if(I->getOperand(0).isReg())
									{
										unsigned target = I->getOperand(0).getReg();
										for (std::list<unsigned int>::const_iterator overIter = overwrittedRegList.begin(); overIter != overwrittedRegList.end(); ++overIter)
											if (target == *overIter)
											{
												errs() << "DEBUG:usedwritten:"<<target<<"\n";
												printInstruction(I);
												isPossibleToMoveInsts = false;
												break;
											}
									}
									//impossible cond 3. if load overwirte after some data uses it
									if(I->getOperand(0).isReg())
									{
										unsigned target = I->getOperand(0).getReg();
										for (std::list<unsigned int>::const_iterator usedIter = usedRegList.begin(); usedIter != usedRegList.end(); ++usedIter)
											if (target == *usedIter)
											{
												errs() << "DEBUG:usedwritten:"<<target<<"\n";
												printInstruction(I);
												isPossibleToMoveInsts = false;
												break;
											}
									}
									
									//also, check for overwriteCmps
									if(I->getOperand(0).isReg())
									{
										unsigned target = I->getOperand(0).getReg();
										if (target == lastCmpRegs[0] || target == lastCmpRegs[1])
										{
											overwriteCmps = true;
											if (target == lastCmpRegs[0])
												overwriteCmpsTwo[0] =true;
											if (target == lastCmpRegs[1])
												overwriteCmpsTwo[1] =true;
										}
									}
									
									//NOW we can insert load reg info
									
									if(I->getOperand(0).isReg())
										overwrittedByLoadRegList.push_back(I->getOperand(0).getReg());
									if(I->getOperand(1).isReg())
										usedRegList.push_back(I->getOperand(1).getReg());
								}
								
								
								
								
								
								
								
							}
							else
								if(I->getOperand(1).isReg()) lastCheck=insertVoting(MF, I, I->getOperand(1).getReg(), lastCheck);
						}
						if (I->mayStore()){ // value register voting for store instructions
							if (afterCmp)
							{
								//insertedVotingForMem++;
								//impossible cond 2-s: store data is used after it is overwritten
								unsigned target = I->getOperand(0).getReg();
								for (std::list<unsigned int>::const_iterator overIter = overwrittedRegList.begin(); overIter != overwrittedRegList.end(); ++overIter)
									if (target == *overIter)
									{
										errs() << "DEBUG:usedwritten:"<<target<<"\n";
										printInstruction(I);
										isPossibleToMoveInsts = false;
										break;
									}
								
							}
							else
								if(I->getOperand(0).isReg()) lastCheck=insertVoting(MF, I, I->getOperand(0).getReg(), lastCheck);						
						}
						
						
						
						
						
						
						
						if (I->getOpcode() > 96 && I->getOpcode() < 129) { // register operand voting for /*compare*/ instructions
							insertedVotingForMem = 0;
							afterCmp = true;
							
							if (lastCmp != NULL)
							{
								for (unsigned int opcount=0 ; opcount < 2 ;opcount++)
									if (lastCmp->getOperand(opcount).isReg() )
										lastCheck=insertVoting(MF, lastCmp, lastCmp->getOperand(opcount).getReg(), lastCheck);		
								lastCmpRegs[0] = -1;
								lastCmpRegs[1] = -1;
								lastCmp = NULL;
								overwriteCmps = false;
								overwriteCmpsTwo[0] =false;
								overwriteCmpsTwo[1] =false;
								
								std::list<MachineInstr*>::iterator iter;
								for (iter = loadStoreList.begin(); iter != loadStoreList.end(); ++iter) {
									if((*iter)->getOperand(1).isReg()) lastCheck=insertVoting(MF, *iter, (*iter)->getOperand(1).getReg(), lastCheck);
									if((*iter)->mayStore())
										if((*iter)->getOperand(0).isReg()) lastCheck=insertVoting(MF, *iter, (*iter)->getOperand(0).getReg(), lastCheck);						
								}
								usedRegList.clear();
								overwrittedRegList.clear();
								overwrittedByLoadRegList.clear();
								loadStoreList.clear();
							}
							
							
							
							int regCount = 0;
							for (unsigned int opcount=0 ; opcount < 2 ;opcount++)
								if (I->getOperand(opcount).isReg() )
								{
									//lastCheck=insertVoting(MF, I, I->getOperand(opcount).getReg(), lastCheck);					
									lastCmpRegs[regCount++] = I->getOperand(opcount).getReg();
								}
							lastCmp = I;
							isPossibleToMoveInsts=true; //check condition later
						}
						
						
						
						
						if ( I->isBranch() && I->getOpcode() != OR1K::J  ){ //insert voter for comparison
							if(lastCmp != NULL)
							{
								if(insertedVotingForMem>0 && afterCmp)
								{
									if (overwriteCmps) 
									{
										//isPossibleToMoveInsts should be calculated before
										
										if(isPossibleToMoveInsts)//instead, we will move mem instead of cmp
										{
											std::list<MachineInstr*>::iterator iter;
											for (iter = loadStoreList.begin(); iter != loadStoreList.end(); ++iter) {
												MBB->remove(*iter);
												MBB->insert(lastCmp,*iter);				
											}
											errs() << "DEBUG: move mem insts instead of cmp"<<"\n";
											errs() << "F: "<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
											
											
	
										}
										
										else//It is impossible to move comp before branch, and load before cmp.
										    //temporal solutionL: use r20, r28, r30
										{											
											if(overwriteCmpsTwo[0] == true && overwriteCmpsTwo[1] == true)
											{
												//impossible case. as we need 2 * 3 regs. we need to consider stack for this.
												errs() << "CARE!!!overwriteCmps Case"<<"\n";
												errs() << "FIX it between cmp and branch\n F: "<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
												errs() << "insertedVotingForMem == "<<insertedVotingForMem<<"\n\n\n";
												
												
												DebugLoc DL3= I->getDebugLoc();
												const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
												MachineInstr *NOPInst = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(333);
												MBB->insert(I, NOPInst);
												
	
											}
										
											else if (overwriteCmpsTwo[0] == false && overwriteCmpsTwo[1] == false)
											{
												errs() << "ERROR! something's wrong with overwrite flags"<<"\n";
												exit(1);
											}
											else
											{	
												unsigned int target = -1;
												if (overwriteCmpsTwo[0])
													target=lastCmp->getOperand(0).getReg();
												else
													target=lastCmp->getOperand(1).getReg();
												
												
												//1. insert copying insts in front of lastCmp
												DebugLoc DL3= lastCmp->getDebugLoc();
												const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
												MachineInstr *copyMoveM = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R20).addReg(target).addImm(0);
												MachineInstr *copyMoveR = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R28).addReg(getSlaveReg1(target)).addImm(0);
												MachineInstr *copyMoveD = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R30).addReg(getSlaveReg2(target)).addImm(0);
												MBB->insert(lastCmp, copyMoveM);
												MBB->insert(lastCmp, copyMoveR);
												MBB->insert(lastCmp, copyMoveD);
												
												
												//2. move cmp
												MBB->remove(lastCmp);
												MBB->insert(I,lastCmp);
												
												//3. change target to R20
												if (overwriteCmpsTwo[0])
													lastCmp->getOperand(0).setReg(OR1K::R20);
												else
													lastCmp->getOperand(1).setReg(OR1K::R20);
												
												
												
												errs() << "DEBUG: use r20, r28, r30"<<"\n";
												errs() << "F: "<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
											}
										}
										
									}
									else //move comp before branch
									{
										
										MBB->remove(lastCmp);
										MBB->insert(I,lastCmp);

									}
								}
								
								/*
								for (unsigned int opcount=0 ; opcount < 2 ;opcount++)
									if (lastCmp->getOperand(opcount).isReg() )
										lastCheck=insertVoting(MF, lastCmp, lastCmp->getOperand(opcount).getReg(), lastCheck);		
								*/
								
								//HWISOO. it works same for insertVoting, only except for R20
								for (unsigned int opcount=0 ; opcount < 2 ;opcount++)
									if (lastCmp->getOperand(opcount).isReg() )
										lastCheck=insertVotingR20(MF, lastCmp, lastCmp->getOperand(opcount).getReg(), lastCheck);		
								
								lastCmpRegs[0] = -1;
								lastCmpRegs[1] = -1;
								lastCmp = NULL;
								overwriteCmps = false;
								overwriteCmpsTwo[0] =false;
								overwriteCmpsTwo[1] =false;
								
								std::list<MachineInstr*>::iterator iter;
								for (iter = loadStoreList.begin(); iter != loadStoreList.end(); ++iter) {
									if((*iter)->getOperand(1).isReg()) lastCheck=insertVoting(MF, *iter, (*iter)->getOperand(1).getReg(), lastCheck);
									if((*iter)->mayStore())
										if((*iter)->getOperand(0).isReg()) lastCheck=insertVoting(MF, *iter, (*iter)->getOperand(0).getReg(), lastCheck);						
								}
								usedRegList.clear();
								overwrittedRegList.clear();
								overwrittedByLoadRegList.clear();
								loadStoreList.clear();
							}
						}
						else if (I->isBranch() || I->isCall() || std::next(I) == E) //insert voter for comparison
						{
							if(lastCmp != NULL)
							{
								for (unsigned int opcount=0 ; opcount < 2 ;opcount++)
									if (lastCmp->getOperand(opcount).isReg() )
										lastCheck=insertVoting(MF, lastCmp, lastCmp->getOperand(opcount).getReg(), lastCheck);		
								lastCmpRegs[0] = -1;
								lastCmpRegs[1] = -1;
								lastCmp = NULL;	
								overwriteCmps = false;
								overwriteCmpsTwo[0] =false;
								overwriteCmpsTwo[1] =false;
								
								std::list<MachineInstr*>::iterator iter;
								for (iter = loadStoreList.begin(); iter != loadStoreList.end(); ++iter) {
									if((*iter)->getOperand(1).isReg()) lastCheck=insertVoting(MF, *iter, (*iter)->getOperand(1).getReg(), lastCheck);
									if((*iter)->mayStore())
										if((*iter)->getOperand(0).isReg()) lastCheck=insertVoting(MF, *iter, (*iter)->getOperand(0).getReg(), lastCheck);						
								}
								usedRegList.clear();
								overwrittedRegList.clear();
								overwrittedByLoadRegList.clear();
								loadStoreList.clear();
							}
						}
						
						/* FOR DEBUG!
						else if (I->isBranch())
						{
							printInstruction(I);
						}
						*/



					}// end of for
				}//end of for
			}// end of function

			

			
			
			MachineBasicBlock* insertVoting(MachineFunction &MF, MachineBasicBlock::iterator CI, unsigned int reg, MachineBasicBlock* lastCheck){
				// New basic block
				//    cmp(ne) reg, reg*
				//    cmov reg, reg**, reg
				//    cmov reg*, reg**, reg*

				lastCheck=CI->getParent();
				DebugLoc DL3= CI->getDebugLoc();
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();

				/*
				   MachineBasicBlock *NewBB =  MF.CreateMachineBasicBlock();
				   NewBB->addSuccessor(lastCheck);
				   NewBB->setHasAddressTaken();
				   MachineFunction::iterator It = lastCheck->getIterator();
				   MF.insert(It,NewBB);


				 */

				MachineInstr *cmpInst = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(reg).addReg(getSlaveReg1(reg));
				lastCheck->insert(CI,cmpInst); 
				MachineInstr *copyMoveM = BuildMI(MF, DL3 , TII->get(OR1K::CMOV)).addReg(reg).addReg(getSlaveReg2(reg)).addReg(reg);
				lastCheck->insert(CI,copyMoveM); 
				MachineInstr *copyMoveD = BuildMI(MF, DL3 , TII->get(OR1K::CMOV)).addReg(getSlaveReg1(reg)).addReg(getSlaveReg2(reg)).addReg(getSlaveReg1(reg));
				lastCheck->insert(CI,copyMoveD);						



				return NULL;
			}// end-of-function
			
			MachineBasicBlock* insertVotingR20(MachineFunction &MF, MachineBasicBlock::iterator CI, unsigned int reg, MachineBasicBlock* lastCheck){
				// New basic block
				//    cmp(ne) reg, reg*
				//    cmov reg, reg**, reg
				//    cmov reg*, reg**, reg*

				lastCheck=CI->getParent();
				DebugLoc DL3= CI->getDebugLoc();
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();


				if (reg == OR1K::R20)
				{
					MachineInstr *cmpInst = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(OR1K::R20).addReg(OR1K::R28);
					lastCheck->insert(CI,cmpInst); 
					MachineInstr *copyMoveM = BuildMI(MF, DL3 , TII->get(OR1K::CMOV)).addReg(OR1K::R20).addReg(OR1K::R30).addReg(reg);
					lastCheck->insert(CI,copyMoveM); 
					MachineInstr *copyMoveD = BuildMI(MF, DL3 , TII->get(OR1K::CMOV)).addReg(OR1K::R28).addReg(OR1K::R30).addReg(OR1K::R28);
					lastCheck->insert(CI,copyMoveD);						
				}
				else
				{
					MachineInstr *cmpInst = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(reg).addReg(getSlaveReg1(reg));
					lastCheck->insert(CI,cmpInst); 
					MachineInstr *copyMoveM = BuildMI(MF, DL3 , TII->get(OR1K::CMOV)).addReg(reg).addReg(getSlaveReg2(reg)).addReg(reg);
					lastCheck->insert(CI,copyMoveM); 
					MachineInstr *copyMoveD = BuildMI(MF, DL3 , TII->get(OR1K::CMOV)).addReg(getSlaveReg1(reg)).addReg(getSlaveReg2(reg)).addReg(getSlaveReg1(reg));
					lastCheck->insert(CI,copyMoveD);	
				}


				return NULL;
			}// end-of-function


			void insertVotingOperationsCmpOnlyTZDC(MachineFunction &MF){
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					MachineBasicBlock* lastCheck=NULL;
					for (MachineBasicBlock::iterator I=MBB->begin(), E=(MBB->end()); I !=E ; ++I){
						if (I->getOpcode() > 96 && I->getOpcode() < 129) { // register operand voting for /*compare*/ instructions							
							for (unsigned int opcount=0 ; opcount < 2 ;opcount++)
								if (I->getOperand(opcount).isReg() )
								{
									lastCheck=insertVotingTZDC(MF, I, I->getOperand(opcount).getReg(), lastCheck);					
								}
						}
					}// end of for
				}//end of for
			}// end of function
			
			MachineBasicBlock* insertVotingTZDC(MachineFunction &MF, MachineBasicBlock::iterator CI, unsigned int reg, MachineBasicBlock* lastCheck){
				// New basic block
				//    cmp	reg, reg*
				//    beq L1
				//	  cmp	

				lastCheck=CI->getParent();
				DebugLoc DL3= CI->getDebugLoc();
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();


				MachineInstr *cmpInst = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(reg).addReg(getSlaveReg1(reg));
				lastCheck->insert(CI,cmpInst); 
				MachineInstr *copyMoveM = BuildMI(MF, DL3 , TII->get(OR1K::CMOV)).addReg(reg).addReg(getSlaveReg2(reg)).addReg(reg);
				lastCheck->insert(CI,copyMoveM); 
				MachineInstr *copyMoveD = BuildMI(MF, DL3 , TII->get(OR1K::CMOV)).addReg(getSlaveReg1(reg)).addReg(getSlaveReg2(reg)).addReg(getSlaveReg1(reg));
				lastCheck->insert(CI,copyMoveD);						



				return NULL;
			}// end-of-function
			
			
			
			MachineBasicBlock* oldInsertVoting(MachineFunction &MF, MachineBasicBlock::iterator CI, unsigned int reg, MachineBasicBlock* lastCheck){
				// New basic block
				//   cmp reg, reg*
				//    beq L1
				//    l.nop
				//    mov reg, reg**
				//    mov reg*, reg**
				//  L1:  

				lastCheck=CI->getParent();
				DebugLoc DL3= CI->getDebugLoc();
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();

				/*
				   MachineBasicBlock *NewBB =  MF.CreateMachineBasicBlock();
				   NewBB->addSuccessor(lastCheck);
				   NewBB->setHasAddressTaken();
				   MachineFunction::iterator It = lastCheck->getIterator();
				   MF.insert(It,NewBB);


				 */

				MachineInstr *cmpInst = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(reg).addReg(getSlaveReg1(reg));
				lastCheck->insert(CI,cmpInst); 
				MachineInstr *branch = BuildMI(MF, DL3 , TII->get(OR1K::BNF)).addMBB(lastCheck);
				lastCheck->insert(CI,branch); 		
				MachineInstr *NOP = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
				lastCheck->insert(CI,NOP); 	
				MachineInstr *copyMoveM = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(reg).addReg(getSlaveReg2(reg)).addImm(0);
				lastCheck->insert(CI,copyMoveM); 
				MachineInstr *copyMoveD = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(getSlaveReg1(reg)).addReg(getSlaveReg2(reg)).addImm(0);
				lastCheck->insert(CI,copyMoveD);						



				return NULL;
			}// end-of-function

			void storeCheck(MachineFunction &MF, MachineBasicBlock* errorBB){
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
										I->dump();
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


								MIload->getOperand(0).setReg(OR1K::R18);
								for (unsigned int opcount=1; opcount < MIload->getNumOperands(); opcount++){ //
									if (MIload->getOperand(opcount).isReg() ){
										MIload->getOperand(opcount).setReg(getSlaveReg1(I->getOperand(opcount).getReg()));
									}
								} //end of for 

								insertBr(I,MF,errorBB);
								MachineInstr *MIcmp = BuildMI(MF, DL3 , TII->get(cmpOpcode), OR1K::R18).addReg(getSlaveReg1(I->getOperand(0).getReg()));
								MBB->insertAfter(I, MIcmp); 									
								MBB->insertAfter(I, MIload);
							}

						}// end of if	
					}// end of for
				}//end of for
			}// end of function


			void storeCheckNAIVE(MachineFunction &MF, MachineBasicBlock* UnrecoverableERRORBB, MachineBasicBlock* UnrecoverableERRORInter, MachineBasicBlock* RecoverableErrorBB){
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					for (MachineBasicBlock::instr_iterator I=MBB->instr_begin(), I1=MBB->instr_begin(), E=MBB->instr_end(); I !=E ; ++I, ++I1){
						bool check=true;
						if ( I->mayStore() )
							if (I->getOperand(0).getReg() != OR1K::R28){
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
											I->dump();
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


									MIload->getOperand(0).setReg(OR1K::R18);
									for (unsigned int opcount=1; opcount < MIload->getNumOperands(); opcount++){ //
										if (MIload->getOperand(opcount).isReg() ){
											MIload->getOperand(opcount).setReg(getSlaveReg1(I->getOperand(opcount).getReg()));
										}
									} //end of for 
									// this function makes diagnosis detection BB for the current error detection point
									//I->dump();

									MachineBasicBlock* errorBB = makeDiagnosisBBNaive(MF, I->getParent(), UnrecoverableERRORBB, UnrecoverableERRORInter, RecoverableErrorBB, I);	
									MachineInstr *NOPInst = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
									MBB->insertAfter(I, NOPInst);
									MBB->addSuccessor(errorBB);
									insertBr(I,MF,errorBB);

									// this inserts error detectors after store instruction
									MachineInstr *MIcmp = BuildMI(MF, DL3 , TII->get(cmpOpcode), OR1K::R18).addReg(getSlaveReg1(I->getOperand(0).getReg()));
									MBB->insertAfter(I, MIcmp); 									
									MBB->insertAfter(I, MIload);

								}

							}// end of if	
					}// end of for
				}//end of for
			}// end of function


			void insertLoadAfterStores(MachineFunction &MF){
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					for (MachineBasicBlock::instr_iterator I=MBB->instr_begin(), E=MBB->instr_end(); I !=E ; ++I){
						bool check=true;
						if ( I->mayStore() )
							if (I->getOperand(0).getReg() != OR1K::R28){
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
											I->dump();
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


									MIload->getOperand(0).setReg(OR1K::R18);
									for (unsigned int opcount=1; opcount < MIload->getNumOperands(); opcount++){ //
										if (MIload->getOperand(opcount).isReg() ){
											MIload->getOperand(opcount).setReg(getSlaveReg1(I->getOperand(opcount).getReg()));
										}
									} //end of for 

									// this inserts error detectors after store instruction
									MBB->insertAfter(I, MIload);

								}

							}// end of if	
					}// end of for
				}//end of for
			}// end of function



			void insertBr (MachineBasicBlock::instr_iterator I, MachineFunction &MF, MachineBasicBlock* errorBB )
			{
				MachineBasicBlock *MB=I->getParent();
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				DebugLoc DL3= I->getDebugLoc();
				MachineInstr *MItest = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(errorBB);
				MB->addSuccessor(errorBB);
				MB->insertAfter(I, MItest);
				//MB->updateTerminator();
			}


	};

	char NEMESIS::ID = 0;
	FunctionPass *createNEMESISPass() 
	{
		return new NEMESIS();
	}
}




