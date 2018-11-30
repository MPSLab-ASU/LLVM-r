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
	static cl::opt<bool> EnableTZDC_INT(
			"enable-tzdc-int",
			cl::init(false),
			cl::desc("apply interleaving for tzdc. it should be used with enable-tzdc-no-store-voting"),
			cl::Hidden);
	static cl::opt<bool> EnableTZDC_INT_4INTERLEAVING(
			"enable-tzdc-int-4interleaving",
			cl::init(false),
			cl::desc("apply interleaving for tzdc. it should be used with enable-tzdc-no-store-voting. it should not be used with enable-tzdc-int"),
			cl::Hidden);
	static cl::opt<bool> EnableTZDC_INT_5INTERLEAVING(
			"enable-tzdc-int-5interleaving",
			cl::init(false),
			cl::desc("apply interleaving for tzdc. it should be used with enable-tzdc-no-store-voting. it should not be used with enable-tzdc-int"),
			cl::Hidden);

	static cl::opt<bool> EnableTZDC_SIG(
			"enable-tzdc-sig",
			cl::init(false),
			cl::desc("add signature checking (in basic block) for tzdc. it should be used with enable-tzdc-no-store-voting"),
			cl::Hidden);
	static cl::opt<bool> EnableTZDC_3SIG(
			"enable-tzdc-3sig",
			cl::init(false),
			cl::desc("add signature checking with 3regs for tzdc. it should be used with enable-tzdc-no-store-voting"),
			cl::Hidden);
	static cl::opt<bool> EnableTZDC_3SIG_WITH_WDC(
			"enable-tzdc-3sig-with-wdc",
			cl::init(false),
			cl::desc("add signature checking with 3regs for tzdc. it should be used with enable-tzdc-no-store-voting. It also inserts end of block signature to wdc blocks"),
			cl::Hidden);
	static cl::opt<bool> EnableTZDC_3SIG_WITH_WDC_INT(
			"enable-tzdc-3sig-with-wdc-int",
			cl::init(false),
			cl::desc("add signature checking with 3regs for tzdc. it should be used with enable-tzdc-no-store-voting. It also inserts end of block signature to wdc blocks. And it will be interleaved between instructions"),
			cl::Hidden);
	static cl::opt<bool> EnableTZDC_jumpRegCheck(
			"enable-tzdc-jumpRegCheck",
			cl::init(false),
			cl::desc("add register checking before jalr and jr for tzdc. it should be used with enable-tzdc-no-store-voting"),
			cl::Hidden);	
	static cl::opt<bool> tzdcComplexVoting(
			"enable-tzdc-complexVoting",
			cl::init(false),
			cl::desc("do complex voting for tzdc. it should be used with enable-tzdc-no-store-voting"),
			cl::Hidden);	
	static cl::opt<bool> EnableSWIFTR_jumpRegCheck(
			"enable-swiftr-jumpRegCheck",
			cl::init(false),
			cl::desc("add register checking before jalr and jr for swiftr."),
			cl::Hidden);	
			
	static cl::opt<bool> DEBUG_LBB(
			"debug-lbb",
			cl::init(false),
			cl::desc("print l.slli	r30, r0, (is #BB:0, or LOBB:1. this is testing for LBB or #BB (for debug)"),
			cl::Hidden);			


	std::list<MachineBasicBlock*> intSkipBlock;
	static MachineBasicBlock* tzdcRecoveryMBB = NULL;
	unsigned int signatureIndex = 10;
			
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
					
					if(EnableTZDC_WDC || EnableTZDC_SIG || EnableTZDC_3SIG)
						splitMultipleTerminator(MF);

					
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
						
						

						
						//tzdcRecoveryMBB->addSuccessor( &*((++It)--) );
						
						
						//This part is integrated with wdc part.
						//WDCAvailabilityCheck(MF);
						
						intSkipBlock.push_back(tzdcRecoveryMBB);
					}
					FUNCSIZE=100000;
					
					
					triplicateInstructionsTZDC(MF);
					
					
					
					if(EnableTZDC_WDC)
					{
						/*
						HWISOO. WDC can not be applied if
						#1 l.sfne r3, #30 
						
						#2 l.add r3, r0, r1  #r1 is changed
						
						#3 l.bf
						
						This is because, in intermediate block, we need to execute shadow version of #1.
						But shadow register of r3 is already updated by shadow of #2.
						This part is integrated with wdc part.
						*/
						wrongDirectionCheckingTZDC(MF);
					}
					
					if(EnableTZDC_INT)
					{
						interleavingTZDC(MF);
						
					}
                    else if(EnableTZDC_INT_4INTERLEAVING)
                    {
                        interleavingTZDC_4Interleaving(MF);
                    }
                    else if(EnableTZDC_INT_5INTERLEAVING)
                    {
                        interleavingTZDC_5Interleaving(MF);
                    }
                    
					if(EnableTZDC_SIG)
						insertTZDCSignature(MF);
					else if (EnableTZDC_3SIG)
						insertTZDC_3Signature(MF);
					else if (EnableTZDC_3SIG_WITH_WDC)
                        insertTZDC_3Signature_withWDC(MF);
                    else if (EnableTZDC_3SIG_WITH_WDC_INT)
                        insertTZDC_3Signature_withWDC_INT(MF);
                    
					//insertVotingOperationsCmpOnlyTZDC(MF) //HWISOO. do we really need it? -> currently no. WDC will care for it
					
					/*HWISOO. After l.bf, is there any other instructions? -> then it will be problem
					we need to implement
					1. triplication with offset -done
					2. WDC -done
					3. SIG
					4. Recovery Block
					5. Interleaving
					6. (by hand) insert voting for critical
					
					091918: Think about current issues
					- Do we need signature comparison for every functions, or only one for the end of the program?
					  -> currently latter one.
					  -> Then, currently we need to manaully insert
					     -> voting for critical store/load
						 -> FINAL signature checking
					- How can we arrange for the sequences of current methods?
					  - It means, sequence of triplicationg, inserting signature, and WDC
				    
					
					
					*/
					
					if(tzdcComplexVoting)
						insertComplexRecoveryBlock(MF);
					else
						insertRecoveryBlock(MF);
					
					insertCopyingReturnAddress(MF);
					
					if(EnableTZDC_jumpRegCheck)
						insertRegisterCheckForJump(MF);
					
					intSkipBlock.clear();
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
					
                    if(EnableSWIFTR_jumpRegCheck)
                        insertSWIFTRRegisterCheckForJump(MF);
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
				
				
				if (DEBUG_LBB)
				{
					printLBBDebug(MF);

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
			
			int distinguishInstr(llvm::MachineBasicBlock::iterator I){
				/*
				return values
				-1: if registers are not ori/shadow regs, or >= 2 types
				1: master
				2: shadow1
				3: shadow 2
				*/
				int result = 0; //initial
				
				for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++){
					if(I->getOperand(opcount).isReg())
					{
						unsigned int target = I->getOperand(opcount).getReg();
						switch(target)
						{
							case OR1K::R1:
							case OR1K::R2:
							case OR1K::R3:
							case OR1K::R4:
							case OR1K::R5:
							case OR1K::R6:
							case OR1K::R7:
							case OR1K::R9:
							case OR1K::R11:
							if(result == 0)
								result = 1;
							else if(result != 1)
								result = -1;
							break;
							case OR1K::R10:
							case OR1K::R12:
							case OR1K::R13:
							case OR1K::R14:
							case OR1K::R15:
							case OR1K::R16:
							case OR1K::R17:
							case OR1K::R19:
							case OR1K::R8:
							if(result == 0)
								result = 2;
							else if(result != 2)
								result = -1;
							break;
							case OR1K::R21:
							case OR1K::R22:
							case OR1K::R23:
							case OR1K::R24:
							case OR1K::R25:
							case OR1K::R26:
							case OR1K::R27:
							case OR1K::R29:
							case OR1K::R31:
							if(result == 0)
								result = 3;
							else if(result != 3)
								result = -1;
							break;
							case OR1K::R18:
							case OR1K::R20:
							case OR1K::R28:
							case OR1K::R30:
								result = -1;
							break;
							default:
							break;
						}
						if(result == -1)
							break;
					}
				}
				if (result == 0)
					result = -1;
				return result;
			}
			void emitInstrs(MachineFunction::iterator MBB, MachineBasicBlock::iterator I, std::list<MachineInstr*> &instrs)
			{
				for (std::list<MachineInstr*>::iterator iter = instrs.begin(); iter != instrs.end(); ++iter) 
				{
					MBB->remove(*iter);
					MBB->insert(I, *iter);
				}
				instrs.clear();
			}


			void emitInstrs_4Interleaving(MachineFunction::iterator MBB, MachineBasicBlock::iterator I, std::list<MachineInstr*> &instrsM, std::list<MachineInstr*> &instrsS1, std::list<MachineInstr*> &instrsS2)
			{
                //count # of instrs.
                unsigned int countM=0, countS1=0, countS2=0;
                countM = instrsM.size();
                countS1 = instrsS1.size();
                countS2 = instrsS2.size();
                
                
                
                if( countM != countS1 || countM != countS2)
                {
                    if(countS1-1 == countM && countS1-1 == countS2)
                    {
                        errs()<<"\nCHECK THAT it is a bug with r12 reservation(give up interleaving4)\n";
                        MBB->dump();
                        
                        errs()<< "----I---\n";
                        I->dump();
                        
                        errs()<< "-------\n";
                        
                        errs()<<"instrsM:"<<countM<<", instrS1"<<countS1<<", instrS2"<<countS2<<"\n";
                        
                        errs()<<"----------instrM---------\n";
                        for (std::list<MachineInstr*>::iterator iter = instrsM.begin(); iter != instrsM.end(); ++iter) 
                            (*iter)->dump();
                        errs()<<"----------instrS1---------\n";
                        for (std::list<MachineInstr*>::iterator iter = instrsS1.begin(); iter != instrsS1.end(); ++iter) 
                            (*iter)->dump();                    
                        errs()<<"----------instrS2---------\n";
                        for (std::list<MachineInstr*>::iterator iter = instrsS2.begin(); iter != instrsS2.end(); ++iter) 
                            (*iter)->dump();
                        
                        
                        
                        
                        
                        emitInstrs(MBB, I, instrsM);
                        emitInstrs(MBB, I, instrsS1);
                        emitInstrs(MBB, I, instrsS2);
                        return;
                    }
                    
                    else if (!( ((countM-1) == countS1) && ((countM-1) == countS2)))
                    {
                        errs()<<"CHECK! check that why # of instrs for master, shadow1, shadow2 are different\n";
                        MBB->dump();
                        
                        errs()<< "----I---\n";
                        I->dump();
                        
                        errs()<< "-------\n";
                        
                        errs()<<"instrsM:"<<countM<<", instrS1"<<countS1<<", instrS2"<<countS2<<"\n";
                        
                        errs()<<"----------instrM---------\n";
                        for (std::list<MachineInstr*>::iterator iter = instrsM.begin(); iter != instrsM.end(); ++iter) 
                            (*iter)->dump();
                        errs()<<"----------instrS1---------\n";
                        for (std::list<MachineInstr*>::iterator iter = instrsS1.begin(); iter != instrsS1.end(); ++iter) 
                            (*iter)->dump();                    
                        errs()<<"----------instrS2---------\n";
                        for (std::list<MachineInstr*>::iterator iter = instrsS2.begin(); iter != instrsS2.end(); ++iter) 
                            (*iter)->dump();
                        
                        
                        exit(0);
                    }
                }
                
                if (countS1 <= 4)
                {
                    emitInstrs(MBB, I, instrsM);
                    emitInstrs(MBB, I, instrsS1);
                    emitInstrs(MBB, I, instrsS2);      
                }
                else
                {
                    std::list<MachineInstr*>::iterator iterM = instrsM.begin();
                    std::list<MachineInstr*>::iterator iterS1 = instrsS1.begin();
                    std::list<MachineInstr*>::iterator iterS2 = instrsS2.begin();

                    for(int i=0; i<4; i++)
                    {
                        MBB->remove(*iterM);
                        MBB->insert(I, *iterM);
                        iterM++;
                    }
                    for(int i=0; i<2; i++)
                    {
                        MBB->remove(*iterS1);
                        MBB->insert(I, *iterS1);
                        iterS1++;
                    }
                    for(int i=0; i<countS1-4; i++)
                    {
                        MBB->remove(*iterM);
                        MBB->insert(I, *iterM);
                        iterM++;
                        MBB->remove(*iterS1);
                        MBB->insert(I, *iterS1);
                        iterS1++;
                        MBB->remove(*iterS2);
                        MBB->insert(I, *iterS2);
                        iterS2++;
                    }
                    if(countM-1 == countS1)
                    {
                        MBB->remove(*iterM);
                        MBB->insert(I, *iterM);
                        iterM++;                        
                    }
                    
                    for(int i=0; i<2; i++)
                    {
                        MBB->remove(*iterS1);
                        MBB->insert(I, *iterS1);
                        iterS1++;
                    }
                    for(int i=0; i<4; i++)
                    {
                        MBB->remove(*iterS2);
                        MBB->insert(I, *iterS2);
                        iterS2++;
                    }                    
                    
                    if(iterM != instrsM.end() || iterS1 != instrsS1.end() || iterS2 != instrsS2.end())
                    {
                        errs()<<"Check that emit 4 interleaving does not work well.\n";
                        MBB->dump();
                        exit(1);

                    }
                    
                    
                    instrsM.clear();
                    instrsS1.clear();
                    instrsS2.clear();

                }
                
                /*
				for (std::list<MachineInstr*>::iterator iter = instrs.begin(); iter != instrs.end(); ++iter) 
				{
					MBB->remove(*iter);
					MBB->insert(I, *iter);
				}
				instrs.clear();
                
                */
			}




			void emitInstrs_5Interleaving(MachineFunction::iterator MBB, MachineBasicBlock::iterator I, std::list<MachineInstr*> &instrsM, std::list<MachineInstr*> &instrsS1, std::list<MachineInstr*> &instrsS2)
			{
                //count # of instrs.
                unsigned int countM=0, countS1=0, countS2=0;
                countM = instrsM.size();
                countS1 = instrsS1.size();
                countS2 = instrsS2.size();
                
                
                
                if( countM != countS1 || countM != countS2)
                {
                    if(countS1-1 == countM && countS1-1 == countS2)
                    {
                        errs()<<"\nCHECK THAT it is a bug with r12 reservation(give up interleaving4)\n";
                        MBB->dump();
                        
                        errs()<< "----I---\n";
                        I->dump();
                        
                        errs()<< "-------\n";
                        
                        errs()<<"instrsM:"<<countM<<", instrS1"<<countS1<<", instrS2"<<countS2<<"\n";
                        
                        errs()<<"----------instrM---------\n";
                        for (std::list<MachineInstr*>::iterator iter = instrsM.begin(); iter != instrsM.end(); ++iter) 
                            (*iter)->dump();
                        errs()<<"----------instrS1---------\n";
                        for (std::list<MachineInstr*>::iterator iter = instrsS1.begin(); iter != instrsS1.end(); ++iter) 
                            (*iter)->dump();                    
                        errs()<<"----------instrS2---------\n";
                        for (std::list<MachineInstr*>::iterator iter = instrsS2.begin(); iter != instrsS2.end(); ++iter) 
                            (*iter)->dump();
                        
                        
                        
                        
                        
                        emitInstrs(MBB, I, instrsM);
                        emitInstrs(MBB, I, instrsS1);
                        emitInstrs(MBB, I, instrsS2);
                        return;
                    }
                    
                    else if (!( ((countM-1) == countS1) && ((countM-1) == countS2)))
                    {
                        errs()<<"CHECK! check that why # of instrs for master, shadow1, shadow2 are different\n";
                        MBB->dump();
                        
                        errs()<< "----I---\n";
                        I->dump();
                        
                        errs()<< "-------\n";
                        
                        errs()<<"instrsM:"<<countM<<", instrS1"<<countS1<<", instrS2"<<countS2<<"\n";
                        
                        errs()<<"----------instrM---------\n";
                        for (std::list<MachineInstr*>::iterator iter = instrsM.begin(); iter != instrsM.end(); ++iter) 
                            (*iter)->dump();
                        errs()<<"----------instrS1---------\n";
                        for (std::list<MachineInstr*>::iterator iter = instrsS1.begin(); iter != instrsS1.end(); ++iter) 
                            (*iter)->dump();                    
                        errs()<<"----------instrS2---------\n";
                        for (std::list<MachineInstr*>::iterator iter = instrsS2.begin(); iter != instrsS2.end(); ++iter) 
                            (*iter)->dump();
                        
                        
                        exit(0);
                    }
                }
                
                if (countS1 <= 5)
                {
                    emitInstrs(MBB, I, instrsM);
                    emitInstrs(MBB, I, instrsS1);
                    emitInstrs(MBB, I, instrsS2);      
                }
                else
                {
                    std::list<MachineInstr*>::iterator iterM = instrsM.begin();
                    std::list<MachineInstr*>::iterator iterS1 = instrsS1.begin();
                    std::list<MachineInstr*>::iterator iterS2 = instrsS2.begin();

                    for(int i=0; i<5; i++)
                    {
                        MBB->remove(*iterM);
                        MBB->insert(I, *iterM);
                        iterM++;
                    }
                    for(int i=0; i<3; i++)
                    {
                        MBB->remove(*iterS1);
                        MBB->insert(I, *iterS1);
                        iterS1++;
                    }
                    for(int i=0; i<countS1-5; i++)
                    {
                        MBB->remove(*iterM);
                        MBB->insert(I, *iterM);
                        iterM++;
                        MBB->remove(*iterS1);
                        MBB->insert(I, *iterS1);
                        iterS1++;
                        MBB->remove(*iterS2);
                        MBB->insert(I, *iterS2);
                        iterS2++;
                    }
                    if(countM-1 == countS1)
                    {
                        MBB->remove(*iterM);
                        MBB->insert(I, *iterM);
                        iterM++;                        
                    }
                    
                    for(int i=0; i<2; i++)
                    {
                        MBB->remove(*iterS1);
                        MBB->insert(I, *iterS1);
                        iterS1++;
                    }
                    for(int i=0; i<5; i++)
                    {
                        MBB->remove(*iterS2);
                        MBB->insert(I, *iterS2);
                        iterS2++;
                    }                    
                    
                    if(iterM != instrsM.end() || iterS1 != instrsS1.end() || iterS2 != instrsS2.end())
                    {
                        errs()<<"Check that emit 4 interleaving does not work well.\n";
                        MBB->dump();
                        exit(1);

                    }
                    
                    
                    instrsM.clear();
                    instrsS1.clear();
                    instrsS2.clear();

                }
                
                /*
				for (std::list<MachineInstr*>::iterator iter = instrs.begin(); iter != instrs.end(); ++iter) 
				{
					MBB->remove(*iter);
					MBB->insert(I, *iter);
				}
				instrs.clear();
                
                */
			}
			
			void interleavingTZDC(MachineFunction &MF){
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					//skip inserted block
					
                    
                    
					bool skipInterleaving = false;
					for (std::list<MachineBasicBlock*>::iterator iter = intSkipBlock.begin(); iter != intSkipBlock.end(); ++iter) {
						if(*iter == &(*MBB))
						{
                            errs()<<"This block will be skipped\n";
                            MBB->dump();
							skipInterleaving=true;
							break;
						}
					}
					if(skipInterleaving) continue;
					
					std::list<MachineInstr*> InstrsM; //Matser
					std::list<MachineInstr*> InstrsS1; //Shadow1
					std::list<MachineInstr*> InstrsS2; //Shadow2

					//DebugLoc DL3= MBB->begin()->getDebugLoc();
					//const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();

                    
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						//break. emit point
						if(I->isTerminator())
						{
							emitInstrs(MBB, I, InstrsM);
							emitInstrs(MBB, I, InstrsS1);
							emitInstrs(MBB, I, InstrsS2);
                            
							break;
						}
                        
                        else if(std::next(I) == E)
                        {
                            
							emitInstrs(MBB, I, InstrsM);
							emitInstrs(MBB, I, InstrsS1);
							emitInstrs(MBB, I, InstrsS2);

                            
							break;
                        
                        }
						//intermediate. emit point //HWISOO:Not sure that this one will be called
						else if( (I->isBranch() &&  !(I->getOpcode() > 96 && I->getOpcode() < 129)))
						{
							emitInstrs(MBB, I, InstrsM);
							emitInstrs(MBB, I, InstrsS1);
							emitInstrs(MBB, I, InstrsS2);
                            
							
						}//intermediate. emit point
						else if( I->getOpcode() == OR1K::JAL || I->getOpcode() == OR1K::JALR)
						{
							emitInstrs(MBB, I, InstrsM);
							emitInstrs(MBB, I, InstrsS1);
							emitInstrs(MBB, I, InstrsS2);		
                            
						}
						
						else if(I->getOpcode()==OR1K::NOP)
							continue;

						else if(I->getOpcode()==OR1K::INLINEASM) //intermediate. emit point
						{
							emitInstrs(MBB, I, InstrsM);
							emitInstrs(MBB, I, InstrsS1);
							emitInstrs(MBB, I, InstrsS2);	
                         
						}
						
						else
						{
							if(I->isCFIInstruction()||I->getOpcode()==OR1K::NOP)
							{
								continue;
							}
							int distinguishResult = distinguishInstr(I);
							if(distinguishResult==-1) //intermediate. emit point
							{
								errs() << "DISTINGUISH-1\n F: "<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
								I->dump();
								for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++){
									errs()<<I->getOperand(opcount);
								}
								emitInstrs(MBB, I, InstrsM);
								emitInstrs(MBB, I, InstrsS1);
								emitInstrs(MBB, I, InstrsS2);
							}
							else
							{
								if(distinguishResult == 1)
								{
									InstrsM.push_back(I);
								}
								else if(distinguishResult == 2)
								{
									InstrsS1.push_back(I);
								}
								else if(distinguishResult == 3)
								{
									InstrsS2.push_back(I);
								}
								//errs() << "CheckNotZero\n F: "<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
								//I->dump();								
							}
							
							
						}
							
						
						
					}//end of for
					InstrsM.clear();
					InstrsS1.clear();
					InstrsS2.clear();
				}// end of function
			}// end of function
            
            
            
            
            
            
            void interleavingTZDC_4Interleaving(MachineFunction &MF){
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					//skip inserted block
					
                    
                    
					bool skipInterleaving = false;
					for (std::list<MachineBasicBlock*>::iterator iter = intSkipBlock.begin(); iter != intSkipBlock.end(); ++iter) {
						if(*iter == &(*MBB))
						{
                            errs()<<"This block will be skipped\n";
                            MBB->dump();
							skipInterleaving=true;
							break;
						}
					}
					if(skipInterleaving) continue;
					
					std::list<MachineInstr*> InstrsM; //Matser
					std::list<MachineInstr*> InstrsS1; //Shadow1
					std::list<MachineInstr*> InstrsS2; //Shadow2

					//DebugLoc DL3= MBB->begin()->getDebugLoc();
					//const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();

                    
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						//break. emit point
						if(I->isTerminator())
						{
                            //HWISOO. in some cases we need to include this for instrsM or S1 or S2
                            
                            if( !(I->isBranch()) &&   !(I->isCall()) && !(I->isReturn()) && !(I->isCompare()) &&  !(I->getOpcode() == OR1K::NOP || (I->getOpcode() > 96 && I->getOpcode() < 129) /*comparee*/) )
                            {
                                int distinguishResult = distinguishInstr(I);

                                if(distinguishResult==-1) //intermediate. emit point
                                {
                                    errs() << "distinguishResult in the end of MBB\n"<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
                                    exit(1);
                                }
                                else
                                {
                                    if(distinguishResult == 1)
                                    {
                                        InstrsM.push_back(I);
                                    }
                                    else if(distinguishResult == 2)
                                    {
                                        InstrsS1.push_back(I);
                                    }
                                    else if(distinguishResult == 3)
                                    {
                                        InstrsS2.push_back(I);
                                    }
                                    //errs() << "CheckNotZero\n F: "<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
                                    //I->dump();								
                                }
                                
                                I++;
                            }
                            
                            
							emitInstrs_4Interleaving(MBB, I, InstrsM, InstrsS1, InstrsS2);
                            
							break;
						}
                        
                        else if(std::next(I) == E)
                        {
                            //HWISOO. in some cases we need to include this for instrsM or S1 or S2
                            
                            if( !(I->isBranch()) &&   !(I->isCall()) && !(I->isReturn()) && !(I->isCompare()) &&  !(I->getOpcode() == OR1K::NOP || (I->getOpcode() > 96 && I->getOpcode() < 129) /*comparee*/) )
                            {
                                int distinguishResult = distinguishInstr(I);

                                if(distinguishResult==-1) //intermediate. emit point
                                {
                                    errs() << "distinguishResult in the end of MBB\n"<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
                                    exit(1);
                                }
                                else
                                {
                                    if(distinguishResult == 1)
                                    {
                                        InstrsM.push_back(I);
                                    }
                                    else if(distinguishResult == 2)
                                    {
                                        InstrsS1.push_back(I);
                                    }
                                    else if(distinguishResult == 3)
                                    {
                                        InstrsS2.push_back(I);
                                    }
                                    //errs() << "CheckNotZero\n F: "<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
                                    //I->dump();								
                                }
                                
                                I++;
                            }
							
                            
                            emitInstrs_4Interleaving(MBB, I, InstrsM, InstrsS1, InstrsS2);

                            
							break;
                        
                        }
						//intermediate. emit point //HWISOO:Not sure that this one will be called
						else if( (I->isBranch() &&  !(I->getOpcode() > 96 && I->getOpcode() < 129)))
						{
							emitInstrs_4Interleaving(MBB, I, InstrsM, InstrsS1, InstrsS2);
                            
							
						}//intermediate. emit point
						else if( I->getOpcode() == OR1K::JAL || I->getOpcode() == OR1K::JALR)
						{
							emitInstrs_4Interleaving(MBB, I, InstrsM, InstrsS1, InstrsS2);
                            
						}
						
						else if(I->getOpcode()==OR1K::NOP)
							continue;

						else if(I->getOpcode()==OR1K::INLINEASM) //intermediate. emit point
						{
							emitInstrs_4Interleaving(MBB, I, InstrsM, InstrsS1, InstrsS2);
                         
						}
						
						else
						{
							if(I->isCFIInstruction()||I->getOpcode()==OR1K::NOP)
							{
								continue;
							}
							int distinguishResult = distinguishInstr(I);
							if(distinguishResult==-1) //intermediate. emit point
							{
								errs() << "DISTINGUISH-1\n F: "<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
								I->dump();
								for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++){
									errs()<<I->getOperand(opcount);
								}
								emitInstrs_4Interleaving(MBB, I, InstrsM, InstrsS1, InstrsS2);
							}
							else
							{
								if(distinguishResult == 1)
								{
									InstrsM.push_back(I);
								}
								else if(distinguishResult == 2)
								{
									InstrsS1.push_back(I);
								}
								else if(distinguishResult == 3)
								{
									InstrsS2.push_back(I);
								}
								//errs() << "CheckNotZero\n F: "<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
								//I->dump();								
							}
							
							
						}
							
						
						
					}//end of for
					InstrsM.clear();
					InstrsS1.clear();
					InstrsS2.clear();
				}// end of function
			}// end of function
            
            
            
            
            void interleavingTZDC_5Interleaving(MachineFunction &MF){
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					//skip inserted block
					
                    
                    
					bool skipInterleaving = false;
					for (std::list<MachineBasicBlock*>::iterator iter = intSkipBlock.begin(); iter != intSkipBlock.end(); ++iter) {
						if(*iter == &(*MBB))
						{
                            errs()<<"This block will be skipped\n";
                            MBB->dump();
							skipInterleaving=true;
							break;
						}
					}
					if(skipInterleaving) continue;
					
					std::list<MachineInstr*> InstrsM; //Matser
					std::list<MachineInstr*> InstrsS1; //Shadow1
					std::list<MachineInstr*> InstrsS2; //Shadow2

					//DebugLoc DL3= MBB->begin()->getDebugLoc();
					//const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();

                    
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						//break. emit point
						if(I->isTerminator())
						{
                            //HWISOO. in some cases we need to include this for instrsM or S1 or S2
                            
                            if( !(I->isBranch()) &&   !(I->isCall()) && !(I->isReturn()) && !(I->isCompare()) &&  !(I->getOpcode() == OR1K::NOP || (I->getOpcode() > 96 && I->getOpcode() < 129) /*comparee*/) )
                            {
                                int distinguishResult = distinguishInstr(I);

                                if(distinguishResult==-1) //intermediate. emit point
                                {
                                    errs() << "distinguishResult in the end of MBB\n"<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
                                    exit(1);
                                }
                                else
                                {
                                    if(distinguishResult == 1)
                                    {
                                        InstrsM.push_back(I);
                                    }
                                    else if(distinguishResult == 2)
                                    {
                                        InstrsS1.push_back(I);
                                    }
                                    else if(distinguishResult == 3)
                                    {
                                        InstrsS2.push_back(I);
                                    }
                                    //errs() << "CheckNotZero\n F: "<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
                                    //I->dump();								
                                }
                                
                                I++;
                            }
                            
                            
							emitInstrs_5Interleaving(MBB, I, InstrsM, InstrsS1, InstrsS2);
                            
							break;
						}
                        
                        else if(std::next(I) == E)
                        {
                            //HWISOO. in some cases we need to include this for instrsM or S1 or S2
                            
                            if( !(I->isBranch()) &&   !(I->isCall()) && !(I->isReturn()) && !(I->isCompare()) &&  !(I->getOpcode() == OR1K::NOP || (I->getOpcode() > 96 && I->getOpcode() < 129) /*comparee*/) )
                            {
                                int distinguishResult = distinguishInstr(I);

                                if(distinguishResult==-1) //intermediate. emit point
                                {
                                    errs() << "distinguishResult in the end of MBB\n"<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
                                    exit(1);
                                }
                                else
                                {
                                    if(distinguishResult == 1)
                                    {
                                        InstrsM.push_back(I);
                                    }
                                    else if(distinguishResult == 2)
                                    {
                                        InstrsS1.push_back(I);
                                    }
                                    else if(distinguishResult == 3)
                                    {
                                        InstrsS2.push_back(I);
                                    }
                                    //errs() << "CheckNotZero\n F: "<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
                                    //I->dump();								
                                }
                                
                                I++;
                            }
							
                            
                            emitInstrs_5Interleaving(MBB, I, InstrsM, InstrsS1, InstrsS2);

                            
							break;
                        
                        }
						//intermediate. emit point //HWISOO:Not sure that this one will be called
						else if( (I->isBranch() &&  !(I->getOpcode() > 96 && I->getOpcode() < 129)))
						{
							emitInstrs_5Interleaving(MBB, I, InstrsM, InstrsS1, InstrsS2);
                            
							
						}//intermediate. emit point
						else if( I->getOpcode() == OR1K::JAL || I->getOpcode() == OR1K::JALR)
						{
							emitInstrs_5Interleaving(MBB, I, InstrsM, InstrsS1, InstrsS2);
                            
						}
						
						else if(I->getOpcode()==OR1K::NOP)
							continue;

						else if(I->getOpcode()==OR1K::INLINEASM) //intermediate. emit point
						{
							emitInstrs_5Interleaving(MBB, I, InstrsM, InstrsS1, InstrsS2);
                         
						}
						
						else
						{
							if(I->isCFIInstruction()||I->getOpcode()==OR1K::NOP)
							{
								continue;
							}
							int distinguishResult = distinguishInstr(I);
							if(distinguishResult==-1) //intermediate. emit point
							{
								errs() << "DISTINGUISH-1\n F: "<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
								I->dump();
								for (unsigned int opcount=0 ; opcount < I->getNumOperands() ;opcount++){
									errs()<<I->getOperand(opcount);
								}
								emitInstrs_5Interleaving(MBB, I, InstrsM, InstrsS1, InstrsS2);
							}
							else
							{
								if(distinguishResult == 1)
								{
									InstrsM.push_back(I);
								}
								else if(distinguishResult == 2)
								{
									InstrsS1.push_back(I);
								}
								else if(distinguishResult == 3)
								{
									InstrsS2.push_back(I);
								}
								//errs() << "CheckNotZero\n F: "<< MF.getName() << "BB: " << I->getParent()->getName() << "Instr: " << *I << "\n";
								//I->dump();								
							}
							
							
						}
							
						
						
					}//end of for
					InstrsM.clear();
					InstrsS1.clear();
					InstrsS2.clear();
				}// end of function
			}// end of function
            
            
            
			
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
			
			//HWISOO: from lib/CodeGen/AsmPrinter/AsmPrinter.cpp
			
			bool AsmPrinterisBlockOnlyReachableByFallthrough(const MachineBasicBlock *MBB) const {
			  // If this is a landing pad, it isn't a fall through.  If it has no preds,
			  // then nothing falls through to it.
			  if (MBB->isEHPad() || MBB->pred_empty())
				return false;

			  // If there isn't exactly one predecessor, it can't be a fall through.
			  if (MBB->pred_size() > 1)
				return false;

			  // The predecessor has to be immediately before this block.
			  MachineBasicBlock *Pred = *MBB->pred_begin();
			  if (!Pred->isLayoutSuccessor(MBB))
				return false;

			  // If the block is completely empty, then it definitely does fall through.
			  if (Pred->empty())
				return true;

			  // Check the terminators in the previous blocks
			  for (const auto &MI : Pred->terminators()) {
				// If it is not a simple branch, we are in a table somewhere.
				if (!MI.isBranch() || MI.isIndirectBranch())
				  return false;

				// If we are the operands of one of the branches, this is not a fall
				// through. Note that targets with delay slots will usually bundle
				// terminators with the delay slot instruction.
				for (ConstMIBundleOperands OP(MI); OP.isValid(); ++OP) {
				  if (OP->isJTI())
					return false;
				  if (OP->isMBB() && OP->getMBB() == MBB)
					return false;
				}
			  }

			  return true;
			}
			
			
			
			
			
			//HWISOO: from lib/Target/OR1K/OR1KAsmPrinter.cpp
			bool isBlockOnlyReachableByFallthrough(const MachineBasicBlock*
																   MBB) const {
			  // The predecessor has to be immediately before this block.
			  const MachineBasicBlock *Pred = *MBB->pred_begin();

			  // If the predecessor is a switch statement, assume a jump table
			  // implementation, so it is not a fall through.
			  if (const BasicBlock *bb = Pred->getBasicBlock())
				if (isa<SwitchInst>(bb->getTerminator()))
				  return false;

			  // Check default implementation
			  if (!AsmPrinterisBlockOnlyReachableByFallthrough(MBB))
				return false;

			  // Otherwise, check the last instruction.
			  // Check if the last terminator is an unconditional branch.
			  MachineBasicBlock::const_iterator I = Pred->end();
			  while (I != Pred->begin() && !(--I)->isTerminator()) ;

			  return !I->isBarrier();
			}


			void printLBBDebug(MachineFunction &MF){ 
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					MachineBasicBlock::iterator I=MBB->begin();
					DebugLoc DL3= I->getDebugLoc();
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					
					
					//HWISOO. this is a method to distinguish between .LBBM_N and BB#N
					if (MBB->pred_empty() ||
					(isBlockOnlyReachableByFallthrough(&*MBB) && !( MBB->isEHFuncletEntry()) ))
					{
						MachineInstr *MI_subi = BuildMI(MF, DL3 , TII->get(OR1K::SLLI)).addReg(OR1K::R30).addReg(OR1K::R0).addImm(0);
						MBB->insert(I, MI_subi);
					}
					else
					{
						MachineInstr *MI_subi = BuildMI(MF, DL3 , TII->get(OR1K::SLLI)).addReg(OR1K::R30).addReg(OR1K::R0).addImm(1);
						MBB->insert(I, MI_subi);						
					}
	  
	  
					//setH

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
			
			void splitMultipleTerminator(MachineFunction &MF){
				std::list<MachineBasicBlock*> insertedBlock;
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					//count number of terminators
					unsigned int count=0;
					
					
					for (const auto &MI : MBB->terminators()) {
						count++;
					}
					
					
					if(count>1)
					{
						//If all insts after the first terminator, we split it and automatically signitaure inserter will not insert SIG
						MachineInstr* firstTerminator = MBB->getFirstTerminator();
						
						
						/*
						MachineBasicBlock::iterator firstT_iter;
						bool shouldWeSplit=false;
						*/
						//for (firstT_iter=MBB->begin(); &(*firstT_iter) != firstTerminator;  ++firstT_iter);
						
						/*
						//if we could not find it, firstT_iter will cause error as it is not initialized.
						//if(firstT_iter!=MBB->end()) //HWISOO. there should be any instrs (second terminator should exist)
						{
							firstT_iter++;
							for (MachineBasicBlock::iterator E=MBB->end(); firstT_iter !=E ; ++firstT_iter){
								//HWISOO: we only want to exclude "l.j" "l.bf" "l.jr" "l.jal" something like it
								if(!firstT_iter->isBranch() || (firstT_iter->getOpcode() > 96 && firstT_iter->getOpcode() < 129) )
								{
									errs()<<"DEBUG:not branch!\n";
									firstT_iter->dump();
									shouldWeSplit=true;
									break;
								}

							}//end of for
						}
						*/
						
						//if(!shouldWeSplit)
						//	continue;

						
						
						//HWISOO. it seems that splitBlockAfterInstr puts instr to nextBB
						MachineBasicBlock::iterator instrAfterFirstTerminator;
						for (instrAfterFirstTerminator=MBB->begin(); &(*instrAfterFirstTerminator) != firstTerminator;  ++instrAfterFirstTerminator);
						instrAfterFirstTerminator++;
						
						MachineBasicBlock *newBB = splitBlockAfterInstr(instrAfterFirstTerminator, MF);
						

						
						
						//HWISOO. move previous block's successors to new block
						//except successor for branch's successor, and newBB
						MachineBasicBlock* succ_branch=NULL;
						if(firstTerminator->getOperand(0).isMBB())
							succ_branch=firstTerminator->getOperand(0).getMBB();
						
						for (MachineBasicBlock::succ_iterator SI = MBB->succ_begin(),
						SE = MBB->succ_end(); SI != SE; ++SI)
						{
							if((*SI) != succ_branch && (*SI) != newBB)
							{
								newBB->addSuccessor(*SI);
							}
						}
						
						for (MachineBasicBlock::succ_iterator SI = newBB->succ_begin(),
						SE = newBB->succ_end(); SI != SE; ++SI)
						{
							MBB->removeSuccessor(*SI);
						}
						
						
						
						
						//DEBUG_REMOVEIT
						/*
						errs() <<"--debug--";
						//if (MBB->pred_empty() ||
						//(isBlockOnlyReachableByFallthrough(&*MBB) && !( MBB->isEHFuncletEntry()) ))
						errs() <<newBB->pred_empty();
						errs() <<isBlockOnlyReachableByFallthrough(&*newBB);
						errs() <<!( newBB->isEHFuncletEntry());
						*/

					}
					

				}// end of machine function
			}// end of function
			
				
			void insertTZDCSignature(MachineFunction &MF){
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					//HWISOO. we need 3 signature-point
					//1. start of the blcok
					//2. just before the first terminator (assume that there is only 0 ir 1 terminator)
					//3. intermediate point: how can we select this point? and do we need it? (it means, do we still need asymmetric signature?)
					//if there is only 1 inst, we skip inserting signature
					
					//skip inserted block
					bool skipSIG = false;
					for (std::list<MachineBasicBlock*>::iterator iter = intSkipBlock.begin(); iter != intSkipBlock.end(); ++iter) {
						if(*iter == &(*MBB))
						{
							skipSIG=true;
							break;
						}
					}
					
					
					if(skipSIG) continue;
					
					
					
					DebugLoc DL3= MBB->begin()->getDebugLoc();
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					
					
					MachineBasicBlock::iterator startPoint = MBB->begin();
					MachineBasicBlock::iterator intermediatePoint;
					//MachineBasicBlock::iterator firstTerminator = MBB->getFirstTerminator();
					//HWISOO. getFirstTerminator does not work well (maybe) as our previous codes modified it too much.
					MachineBasicBlock::iterator firstTerminator;
					MachineBasicBlock::iterator I=MBB->begin();
					for (MachineBasicBlock::iterator E=MBB->end(); I !=E ; ++I){
						unsigned int opcode = I->getOpcode();
						if (I->isBranch() && !(opcode > 96 && opcode < 129))
						{
							//errs()<<"isBranch and notCmp?\n";
							//I->dump();
							break;
						}
						else if (opcode == OR1K::JR || opcode == OR1K::RET || opcode == OR1K::J)
						{
							//errs()<<"JR or RET\n";
							//I->dump();
							break;							
						}
						
					}//end of for
					firstTerminator = I;
					
					unsigned int count = 0;
					
					for (MachineBasicBlock::iterator I=MBB->begin(); I !=firstTerminator ; ++I){
						count++;
					}//end of for
					
					if(count<=1)
						continue;
					
					intermediatePoint = MBB->begin();
					for (unsigned int i=0; i<(count/2) ; ++intermediatePoint,i++);
					
					//Now we calculated for all 3 positions
					
					MachineInstr *Signature1 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R20).addReg(OR1K::R20).addImm(signatureIndex*3);
					MachineInstr *Signature2 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R28).addReg(OR1K::R28).addImm(signatureIndex*1);
					MachineInstr *Signature3 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R28).addReg(OR1K::R28).addImm(signatureIndex*2);
					signatureIndex+=1;
					
					MBB->insert(startPoint,Signature1);
					MBB->insert(intermediatePoint,Signature2);
					MBB->insert(firstTerminator,Signature3);
					
					
					//startPoint
					//for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
					//}//end of for
				}// end of machine function
			}// end of function
				
			void insertTZDC_3Signature(MachineFunction &MF){
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {					
					//skip inserted block
					bool skipSIG = false;
					for (std::list<MachineBasicBlock*>::iterator iter = intSkipBlock.begin(); iter != intSkipBlock.end(); ++iter) {
						if(*iter == &(*MBB))
						{
							skipSIG=true;
							break;
						}
					}
					
					
					if(skipSIG) continue;
					
					
					
					DebugLoc DL3= MBB->begin()->getDebugLoc();
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					
					
					MachineBasicBlock::iterator startPoint = MBB->begin();
					//MachineBasicBlock::iterator firstTerminator = MBB->getFirstTerminator();
					//HWISOO. getFirstTerminator does not work well (maybe) as our previous codes modified it too much.
					MachineBasicBlock::iterator firstTerminator;
					MachineBasicBlock::iterator I=MBB->begin();
					for (MachineBasicBlock::iterator E=MBB->end(); I !=E ; ++I){
						unsigned int opcode = I->getOpcode();
						if (I->isBranch() && !(opcode > 96 && opcode < 129))
						{
							//errs()<<"isBranch and notCmp?\n";
							//I->dump();
							break;
						}
						else if (opcode == OR1K::JR || opcode == OR1K::RET || opcode == OR1K::J)
						{
							//errs()<<"JR or RET\n";
							//I->dump();
							break;							
						}
						
					}//end of for
					firstTerminator = I;
					
					unsigned int count = 0;
					
					for (MachineBasicBlock::iterator I=MBB->begin(); I !=firstTerminator ; ++I){
						count++;
					}//end of for
					
					if(count<=1)
						continue;
					
					
					MachineInstr *Signature1 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R18).addReg(OR1K::R18).addImm(signatureIndex*1);
					MachineInstr *Signature2 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R20).addReg(OR1K::R20).addImm(signatureIndex*2);
					MachineInstr *Signature3 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R28).addReg(OR1K::R28).addImm(signatureIndex*6);
					MachineInstr *Signature4 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R18).addReg(OR1K::R18).addImm(signatureIndex*5);
					MachineInstr *Signature5 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R20).addReg(OR1K::R20).addImm(signatureIndex*4);
					signatureIndex+=1;
					
					MBB->insert(startPoint,Signature1);
					MBB->insert(startPoint,Signature2);
					MBB->insert(startPoint,Signature3);
					MBB->insert(firstTerminator,Signature4);
					MBB->insert(firstTerminator,Signature5);
					
				}// end of machine function
			}// end of function
				
                
                
			void insertTZDC_3Signature_withWDC(MachineFunction &MF){
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {					
					//skip inserted block
					bool skipSIG = false;
					for (std::list<MachineBasicBlock*>::iterator iter = intSkipBlock.begin(); iter != intSkipBlock.end(); ++iter) {
						if(*iter == &(*MBB))
						{
							skipSIG=true;
							break;
						}
					}
					
					
					if(skipSIG) continue;
					
					
					
					DebugLoc DL3= MBB->begin()->getDebugLoc();
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					
					
					MachineBasicBlock::iterator startPoint = MBB->begin();
					//MachineBasicBlock::iterator firstTerminator = MBB->getFirstTerminator();
					//HWISOO. getFirstTerminator does not work well (maybe) as our previous codes modified it too much.
					MachineBasicBlock::iterator firstTerminator;
					MachineBasicBlock::iterator I=MBB->begin();
                    bool originalCompareFlag = false;
					for (MachineBasicBlock::iterator E=MBB->end(); I !=E ; ++I){ 
						unsigned int opcode = I->getOpcode();
                        
                        if(isOriginalCMP(I))
                            originalCompareFlag = true;
						else if (I->isBranch() && !(opcode > 96 && opcode < 129))
						{
							//errs()<<"isBranch and notCmp?\n";
							//I->dump();
							break;
						}
						else if (opcode == OR1K::JR || opcode == OR1K::RET || opcode == OR1K::J)
						{
							//errs()<<"JR or RET\n";
							//I->dump();
							break;							
						}
						
					}//end of for
					firstTerminator = I;
					
					unsigned int count = 0;
					
					for (MachineBasicBlock::iterator I=MBB->begin(); I !=firstTerminator ; ++I){
						count++;
					}//end of for
					
					if(count<=1)
						continue;
					
					
                    if(originalCompareFlag == true)
                    {
                        MachineBasicBlock::iterator afterAfterFirstTerminator = firstTerminator;
                        (afterAfterFirstTerminator++)++;
                        if (distinguishInstr(afterAfterFirstTerminator) != 2) 
                        {
                            errs() << "DEBUG:CHECK TERMINATOR\n";
                            firstTerminator->dump();
                            afterAfterFirstTerminator->dump();
                            exit(1);
                        }
                        MachineBasicBlock* targetWDCMBB = firstTerminator->getOperand(0).getMBB();
                        MachineBasicBlock::iterator beginOfWDCBlock = targetWDCMBB->begin();
                        if (!(beginOfWDCBlock->getOpcode() > 96 && beginOfWDCBlock->getOpcode() < 129))
                        {
                            errs() << "DEBUG:CHECK THAT FIRSTTERMINATOR IS A BRANCH TO WDC BLOCK\n";
                            firstTerminator->dump();
                            beginOfWDCBlock->dump();
                            targetWDCMBB->dump();
                            exit(1);
                        }
                        
                        
                        MachineInstr *Signature1 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R18).addReg(OR1K::R18).addImm(signatureIndex*1);
                        MachineInstr *Signature2 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R20).addReg(OR1K::R20).addImm(signatureIndex*2);
                        MachineInstr *Signature3 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R28).addReg(OR1K::R28).addImm(signatureIndex*6);
                        MachineInstr *Signature4 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R18).addReg(OR1K::R18).addImm(signatureIndex*5);
                        MachineInstr *Signature5 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R20).addReg(OR1K::R20).addImm(signatureIndex*4);

                        
                        
                        MBB->insert(startPoint,Signature1);
                        MBB->insert(startPoint,Signature2);
                        MBB->insert(startPoint,Signature3);
                        MBB->insert(afterAfterFirstTerminator,Signature4);
                        MBB->insert(afterAfterFirstTerminator,Signature5);



                        MachineInstr *Signature6 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R18).addReg(OR1K::R18).addImm(signatureIndex*5);
                        MachineInstr *Signature7 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R20).addReg(OR1K::R20).addImm(signatureIndex*4);                        
                        targetWDCMBB->insert(beginOfWDCBlock,Signature6);
                        targetWDCMBB->insert(beginOfWDCBlock,Signature7);
                    
                        signatureIndex+=1;
                    }
                    else
                    {
                        MachineInstr *Signature1 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R18).addReg(OR1K::R18).addImm(signatureIndex*1);
                        MachineInstr *Signature2 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R20).addReg(OR1K::R20).addImm(signatureIndex*2);
                        MachineInstr *Signature3 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R28).addReg(OR1K::R28).addImm(signatureIndex*6);
                        MachineInstr *Signature4 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R18).addReg(OR1K::R18).addImm(signatureIndex*5);
                        MachineInstr *Signature5 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R20).addReg(OR1K::R20).addImm(signatureIndex*4);
                        signatureIndex+=1;
                        
                        MBB->insert(startPoint,Signature1);
                        MBB->insert(startPoint,Signature2);
                        MBB->insert(startPoint,Signature3);
                        MBB->insert(firstTerminator,Signature4);
                        MBB->insert(firstTerminator,Signature5);
                    }
                    

					
				}// end of machine function
			}// end of function
		


            void insertTZDC_3Signature_withWDC_INT(MachineFunction &MF){
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {					
					//skip inserted block
					bool skipSIG = false;
					for (std::list<MachineBasicBlock*>::iterator iter = intSkipBlock.begin(); iter != intSkipBlock.end(); ++iter) {
						if(*iter == &(*MBB))
						{
							skipSIG=true;
							break;
						}
					}
					
					
					if(skipSIG) continue;
					
					
					
					DebugLoc DL3= MBB->begin()->getDebugLoc();
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
					
					
					MachineBasicBlock::iterator startPoint = MBB->begin();
					//MachineBasicBlock::iterator firstTerminator = MBB->getFirstTerminator();
					//HWISOO. getFirstTerminator does not work well (maybe) as our previous codes modified it too much.
					MachineBasicBlock::iterator firstTerminator;
					MachineBasicBlock::iterator I=MBB->begin();
                    bool originalCompareFlag = false;
					for (MachineBasicBlock::iterator E=MBB->end(); I !=E ; ++I){ 
						unsigned int opcode = I->getOpcode();
                        
                        if(isOriginalCMP(I))
                            originalCompareFlag = true;
						else if (I->isBranch() && !(opcode > 96 && opcode < 129))
						{
							//errs()<<"isBranch and notCmp?\n";
							//I->dump();
							break;
						}
						else if (opcode == OR1K::JR || opcode == OR1K::RET || opcode == OR1K::J)
						{
							//errs()<<"JR or RET\n";
							//I->dump();
							break;							
						}
						
					}//end of for
					firstTerminator = I;
					
					unsigned int count = 0;
					
					for (MachineBasicBlock::iterator I=MBB->begin(); I !=firstTerminator ; ++I){
						count++;
					}//end of for
					
					if(count<=1)
						continue;
					
					
                    if(originalCompareFlag == true)
                    {
                        MachineBasicBlock::iterator afterAfterFirstTerminator = firstTerminator;
                        (afterAfterFirstTerminator++)++;
                        if (distinguishInstr(afterAfterFirstTerminator) != 2) 
                        {
                            errs() << "DEBUG:CHECK TERMINATOR\n";
                            firstTerminator->dump();
                            afterAfterFirstTerminator->dump();
                            exit(1);
                        }
                        MachineBasicBlock* targetWDCMBB = firstTerminator->getOperand(0).getMBB();
                        MachineBasicBlock::iterator beginOfWDCBlock = targetWDCMBB->begin();
                        if (!(beginOfWDCBlock->getOpcode() > 96 && beginOfWDCBlock->getOpcode() < 129))
                        {
                            errs() << "DEBUG:CHECK THAT FIRSTTERMINATOR IS A BRANCH TO WDC BLOCK\n";
                            firstTerminator->dump();
                            beginOfWDCBlock->dump();
                            targetWDCMBB->dump();
                            exit(1);
                        }
                        
                        
                        MachineInstr *Signature1 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R18).addReg(OR1K::R18).addImm(signatureIndex*1);
                        MachineInstr *Signature2 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R20).addReg(OR1K::R20).addImm(signatureIndex*2);
                        MachineInstr *Signature3 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R28).addReg(OR1K::R28).addImm(signatureIndex*6);
                        MachineInstr *Signature4 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R18).addReg(OR1K::R18).addImm(signatureIndex*5);
                        MachineInstr *Signature5 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R20).addReg(OR1K::R20).addImm(signatureIndex*4);

                        
                        
                        MachineBasicBlock::iterator interPoint1 = MBB->begin();
                        MachineBasicBlock::iterator interPoint2 = MBB->begin();
                        unsigned int point1Count=(count)/3, point2Count=(count*2)/3;
                        
                        unsigned int currentIndex=0;
                        for (MachineBasicBlock::iterator I=MBB->begin(); I !=firstTerminator ; ++I)
                        {
                            if(currentIndex == point1Count)
                                interPoint1 = I;
                            if(currentIndex == point2Count)
                                interPoint2 = I;

                            currentIndex++;
                        }
                        if (interPoint2 == MBB->begin())
                            interPoint2 = firstTerminator;
                        
                        MBB->insert(startPoint,Signature1);
                        MBB->insert(interPoint1,Signature2); // 1/3
                        MBB->insert(interPoint2,Signature3); // 2/3
                        MBB->insert(afterAfterFirstTerminator,Signature4);
                        afterAfterFirstTerminator++;
                        MBB->insert(afterAfterFirstTerminator,Signature5);



                        MachineInstr *Signature6 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R18).addReg(OR1K::R18).addImm(signatureIndex*5);
                        MachineInstr *Signature7 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R20).addReg(OR1K::R20).addImm(signatureIndex*4);                        
                        targetWDCMBB->insert(beginOfWDCBlock,Signature6);
                        beginOfWDCBlock++;
                        targetWDCMBB->insert(beginOfWDCBlock,Signature7);
                    
                        signatureIndex+=1;
                    }
                    else
                    {
                        MachineInstr *Signature1 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R18).addReg(OR1K::R18).addImm(signatureIndex*1);
                        MachineInstr *Signature2 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R20).addReg(OR1K::R20).addImm(signatureIndex*2);
                        MachineInstr *Signature3 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R28).addReg(OR1K::R28).addImm(signatureIndex*6);
                        MachineInstr *Signature4 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R18).addReg(OR1K::R18).addImm(signatureIndex*5);
                        MachineInstr *Signature5 = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R20).addReg(OR1K::R20).addImm(signatureIndex*4);
                        signatureIndex+=1;
                        
                        
                        MachineBasicBlock::iterator interPoint1 = MBB->begin();
                        MachineBasicBlock::iterator interPoint2 = MBB->begin();
                        MachineBasicBlock::iterator interPoint3 = MBB->begin();
                        unsigned int point1Count=(count)/4, point2Count=(count*2)/4, point3Count=(count*3)/4;
                        
                        unsigned int currentIndex=0;
                        for (MachineBasicBlock::iterator I=MBB->begin(); I !=firstTerminator ; ++I)
                        {
                            if(currentIndex == point1Count)
                                interPoint1 = I;
                            if(currentIndex == point2Count)
                                interPoint2 = I;
                            if(currentIndex == point3Count)
                                interPoint3 = I;

                            currentIndex++;
                        }
                        if (interPoint3 == MBB->begin())
                            interPoint3 = firstTerminator;
                        
                        MBB->insert(startPoint,Signature1);
                        MBB->insert(interPoint1,Signature2); //1/4
                        MBB->insert(interPoint2,Signature3); //2/4
                        MBB->insert(interPoint3,Signature4); //3/4
                        MBB->insert(firstTerminator,Signature5);
                    }
                    

					
				}// end of machine function
			}// end of function
				
			void insertRegisterCheckForJump(MachineFunction &MF){
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					//DebugLoc DL3= MBB->begin()->getDebugLoc(); //HWISOO. this makes some problem
                    DebugLoc DL3= MF.begin()->begin()->getDebugLoc(); 
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if(I->getOpcode()==OR1K::JALR || I->getOpcode()==OR1K::JR || I->getOpcode() == OR1K::RET)
						{
							unsigned int targetReg=OR1K::R30;
							if(I->getOpcode()==OR1K::RET)
								targetReg=OR1K::R9; //HWISOO. can I sure that it is always R9?
							else
							{
								assert(I->getOperand(0).isReg());
								targetReg = I->getOperand(0).getReg();
							}
							if(targetReg == OR1K::R30) continue;
							
							
							MachineInstr *cmpInst = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(targetReg).addReg(getSlaveReg1(targetReg));
							MBB->insert(I,cmpInst);
							
							MachineInstr *MImfspr = BuildMI(MF, DL3 , TII->get(OR1K::MFSPR)).addReg(OR1K::R30).addReg(OR1K::R0).addImm(16);
							MBB->insert(I,MImfspr);
							
							
							MachineInstr *MIaddi = BuildMI(MF, DL3 , TII->get(OR1K::ADDI)).addReg(OR1K::R30).addReg(OR1K::R30).addImm(16);
							MBB->insert(I,MIaddi);
							
							MachineInstr *MIBranch = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(tzdcRecoveryMBB);
							MBB->insert(I,MIBranch);
							
							MachineInstr *MInop = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
							MBB->insert(I,MInop);
						}					
						else{

						}
						
					}
				}// end of machine function

			}
			
			void insertSWIFTRRegisterCheckForJump(MachineFunction &MF){
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					//DebugLoc DL3= MBB->begin()->getDebugLoc(); //HWISOO. this makes some problem
                    DebugLoc DL3= MF.begin()->begin()->getDebugLoc(); 
					const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
				
					for (MachineBasicBlock::iterator I=MBB->begin(), E=MBB->end(); I !=E ; ++I){
						if(I->getOpcode()==OR1K::JALR || I->getOpcode()==OR1K::JR || I->getOpcode() == OR1K::RET)
						{
							unsigned int targetReg=OR1K::R30;
							if(I->getOpcode()==OR1K::RET)
								targetReg=OR1K::R9; //HWISOO. can I sure that it is always R9?
							else
							{
								assert(I->getOperand(0).isReg());
								targetReg = I->getOperand(0).getReg();
							}
							if(targetReg == OR1K::R30) continue;
							
							insertVoting(MF, &(*I), targetReg, &(*MBB));
                            //newBB=insertVoting(MF, MI, Reg, lastCheck);
						}					
						else{

						}
						
					}
				}// end of machine function

			}			



			void insertComplexRecoveryBlock(MachineFunction &MF){
				
				DebugLoc DL3= MF.begin()->begin()->getDebugLoc();
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();

				MachineBasicBlock* targetBlock = tzdcRecoveryMBB;
				MachineBasicBlock* nextBlock = MF.CreateMachineBasicBlock();
				
				targetBlock->addSuccessor(nextBlock);
				//hwisoo. temporal method
				MF.begin()->addSuccessor(nextBlock);
				
				MachineFunction::iterator It = MF.begin();
				for(MachineFunction::iterator E = MF.end(); It != E; It++)
				{
					if(&*It == targetBlock)
						break;
				}
				It++;
				MF.insert(It, nextBlock);
				
				intSkipBlock.push_back(nextBlock);
				/*
	
				l.sfeq	M, S1
				cmov M->S2
				l.bf SKIP(NEXT)
				l.sfeq	S1, S2
				cmov S1->M
				l.bf SKIP(NEXT)
				l.sfeq	S2, M
				cmov S2->S1
				l.bf SKIP(NEXT)
				l.nop 0
				l.nop ERROR!
				
				*/
	
				
				for (auto& reg : functionCallArgs ){
					unsigned int shadow1 = getSlaveReg1(reg);
					unsigned int shadow2 = getSlaveReg2(reg);
					
					
					MachineInstr *cmpInst = BuildMI(MF, DL3 , TII->get(OR1K::SFEQ)).addReg(reg).addReg(shadow1);
					MachineInstr *cmovInst = BuildMI(MF, DL3 , TII->get(OR1K::CMOV)).addReg(shadow2).addReg(reg).addReg(shadow2);
					MachineInstr *skipInst = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(nextBlock);
					
					targetBlock->insert(targetBlock->end(), cmpInst);
					targetBlock->insert(targetBlock->end(), cmovInst);
					targetBlock->insert(targetBlock->end(), skipInst);
					
					cmpInst = BuildMI(MF, DL3 , TII->get(OR1K::SFEQ)).addReg(shadow1).addReg(shadow2);
					cmovInst = BuildMI(MF, DL3 , TII->get(OR1K::CMOV)).addReg(reg).addReg(shadow1).addReg(reg);
					skipInst = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(nextBlock);
					
					targetBlock->insert(targetBlock->end(), cmpInst);
					targetBlock->insert(targetBlock->end(), cmovInst);
					targetBlock->insert(targetBlock->end(), skipInst);
					
					cmpInst = BuildMI(MF, DL3 , TII->get(OR1K::SFEQ)).addReg(shadow2).addReg(reg);
					cmovInst = BuildMI(MF, DL3 , TII->get(OR1K::CMOV)).addReg(shadow1).addReg(shadow2).addReg(shadow1);
					skipInst = BuildMI(MF, DL3 , TII->get(OR1K::BF)).addMBB(nextBlock);
					
					targetBlock->insert(targetBlock->end(), cmpInst);
					targetBlock->insert(targetBlock->end(), cmovInst);
					targetBlock->insert(targetBlock->end(), skipInst);
					
					MachineInstr *nopInst = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
					targetBlock->insert(targetBlock->end(), nopInst);
					
					MachineInstr *errorInst = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(205);
					targetBlock->insert(targetBlock->end(), errorInst);
					
					
					targetBlock = nextBlock;
					nextBlock = MF.CreateMachineBasicBlock();
					targetBlock->addSuccessor(nextBlock);
					MF.begin()->addSuccessor(nextBlock); //HWISOO. temporal solution
					MF.insert(It, nextBlock);
					
					intSkipBlock.push_back(nextBlock);
				}
				
				
						
				MachineInstr* returnInstr = BuildMI(MF, DL3 , TII->get(OR1K::JR)).addReg(OR1K::R30);
				nextBlock->push_back(returnInstr);
				
				MachineInstr *MInop = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
				nextBlock->push_back(MInop);


			}
			
				
			void insertRecoveryBlock(MachineFunction &MF){
				
				DebugLoc DL3= MF.begin()->begin()->getDebugLoc();
				const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();

				for (auto& reg : functionCallArgs ){
					MachineInstr *cmpInst = BuildMI(MF, DL3 , TII->get(OR1K::SFNE)).addReg(reg).addReg(getSlaveReg1(reg));
					MachineInstr *copyMoveM = BuildMI(MF, DL3 , TII->get(OR1K::CMOV)).addReg(reg).addReg(getSlaveReg2(reg)).addReg(reg);
					MachineInstr *copyMoveD = BuildMI(MF, DL3 , TII->get(OR1K::CMOV)).addReg(getSlaveReg1(reg)).addReg(getSlaveReg2(reg)).addReg(getSlaveReg1(reg));

					tzdcRecoveryMBB->insert(tzdcRecoveryMBB->end(), cmpInst);
					tzdcRecoveryMBB->insert(tzdcRecoveryMBB->end(), copyMoveM);
					tzdcRecoveryMBB->insert(tzdcRecoveryMBB->end(), copyMoveD);
				}
				
				
						
				MachineInstr* returnInstr = BuildMI(MF, DL3 , TII->get(OR1K::JR)).addReg(OR1K::R30);
				tzdcRecoveryMBB->push_back(returnInstr);
				
				MachineInstr *MInop = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
				tzdcRecoveryMBB->push_back(MInop);


			}
			
				
			void wrongDirectionCheckingTZDC(MachineFunction &MF){
				std::list<MachineBasicBlock*> insertedBlock;
				for(MachineFunction::iterator MBB = MF.begin(), MBE = MF.end(); MBB != MBE; ++MBB) {
					llvm::MachineBasicBlock::iterator cmpInst=NULL;
					
					
					
					std::list<unsigned int> changedRelatedRegs;
					std::list<unsigned int> usedRelatedRegs;
					std::list<MachineInstr*> relatedInstrs;
					int lastCmpRegs[2] = {-1, -1};
					bool existRelatedInstr = false;
					
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
							for (unsigned int opcount = 0; opcount < 2; opcount++)
							{
								if(I->getOperand(opcount).isReg())
									lastCmpRegs[opcount] = I->getOperand(opcount).getReg();
							}
						}
						else if(cmpInst)
						{
							if(!I->isConditionalBranch())
							{	
								/* HWISOO
								Now we need to find out which instr should be moved and copied to intermediate blocks (of WDC)
								1. any instruction which overwrite one of lastCmpRegs
								2. any instruction which uses (both read and write) any changedRelatedRegs
								3. any instruction which overwrite any related usedRegs
									1 & 2 & 3 -> We need to insert this insrt to relatedInstrs, and also "destination" register to changedRelatedRegs
									
								Maybe later we can find better way with llvm-provided dependency
								And can dependencies between memory make problem?
								*/
								
								bool alreadyInserted = false;
								for (unsigned int opcount = 0; opcount < I->getNumOperands(); opcount++)
								{
									if (alreadyInserted) break;
									
									if (I->getOperand(opcount).isReg())
									{
										if(opcount == 0 && !(I->mayStore())) //Destination reg
										{
											int targetReg = I->getOperand(0).getReg();
											if (targetReg == lastCmpRegs[0] || targetReg == lastCmpRegs[1])
											{
												changedRelatedRegs.push_back(targetReg);
												relatedInstrs.push_back(I);
												alreadyInserted = true;
												existRelatedInstr = true;
												errs()<<"DEBUG1\n";
												I->dump();
												
												for (unsigned int inside_opcount = 1; inside_opcount < I->getNumOperands(); inside_opcount++)
												{
													if(I->getOperand(inside_opcount).isReg())
														usedRelatedRegs.push_back(I->getOperand(inside_opcount).getReg());
												}
												
											}
											else
											{
												for (std::list<unsigned int>::const_iterator changedRegIter = changedRelatedRegs.begin(); changedRegIter != changedRelatedRegs.end(); ++changedRegIter)
													if (targetReg == *changedRegIter)
													{
														changedRelatedRegs.push_back(targetReg);
														relatedInstrs.push_back(I);
														alreadyInserted = true;
														existRelatedInstr = true;
														
														errs()<<"DEBUG2\n";
														I->dump();
														
														for (unsigned int inside_opcount = 1; inside_opcount < I->getNumOperands(); inside_opcount++)
														{
															if(I->getOperand(inside_opcount).isReg())
																usedRelatedRegs.push_back(I->getOperand(inside_opcount).getReg());
														}
														
														break;

													}
													
												if(!alreadyInserted)
												{
													for (std::list<unsigned int>::const_iterator usedRegIter = usedRelatedRegs.begin(); usedRegIter != usedRelatedRegs.end(); ++usedRegIter)
														if (targetReg == *usedRegIter)
														{
															changedRelatedRegs.push_back(targetReg);
															relatedInstrs.push_back(I);
															alreadyInserted = true;
															existRelatedInstr = true;
															
															errs()<<"DEBUG4\n";
															I->dump();
														
															for (unsigned int inside_opcount = 1; inside_opcount < I->getNumOperands(); inside_opcount++)
															{
															if(I->getOperand(inside_opcount).isReg())
																usedRelatedRegs.push_back(I->getOperand(inside_opcount).getReg());
															}
															
															break;

														}
												}
											}
										}
										else //Source reg
										{
											//impossible cond 1. if some reigster is used after load overwrite it
											unsigned sourceReg = I->getOperand(opcount).getReg();
											for (std::list<unsigned int>::const_iterator changedRegIter = changedRelatedRegs.begin(); changedRegIter != changedRelatedRegs.end(); ++changedRegIter)
												if (sourceReg == *changedRegIter)
												{
													relatedInstrs.push_back(I);
													if(!(I->mayStore())) //HWISOO. operand0 may not be source. need to find better way
													{
														assert(I->getOperand(0).isReg());
														changedRelatedRegs.push_back(I->getOperand(0).getReg());
														
														for (unsigned int inside_opcount = 1; inside_opcount < I->getNumOperands(); inside_opcount++)
														{
															if(I->getOperand(inside_opcount).isReg())
																usedRelatedRegs.push_back(I->getOperand(inside_opcount).getReg());
														}
													}
													else//store
													{
														for (unsigned int inside_opcount = 0; inside_opcount < I->getNumOperands(); inside_opcount++)
														{
															if(I->getOperand(inside_opcount).isReg())
																usedRelatedRegs.push_back(I->getOperand(inside_opcount).getReg());
														}
													}
													alreadyInserted = true;
													existRelatedInstr = true;
														errs()<<"DEBUG3\n";
														I->dump();
													break;
												}
										}
									}
								}
							}
							
							else //Conditional branch. now we need to check if there is any related Instr
							{
								if(existRelatedInstr)
								{
									errs() << "==============================================\n";
									errs() << "Check\n F: "<< MF.getName() << "BB: " << MBB->getName() << "\n";
									errs() << "------------compare instrs-------------------\n";
									cmpInst->dump();
									errs() << "------------related instrs-------------------\n";
									for (std::list<MachineInstr*>::iterator iter = relatedInstrs.begin(); iter != relatedInstrs.end(); ++iter) {
										(*iter)->dump();					
									}
									
									errs() << "==============================================\n";
								}
								
								
								//before here we checked "related insts"
								//which should be copied(and moved) to intermediate blocks
								//Now, make WDC
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
								MachineFunction::iterator nextBB;
								MachineInstr* splitPointMI=NULL;
								//MachineInstr* relatedMovePointTaken=NULL;
								//MachineInstr* relatedMovePointNotTaken=NULL; this is simply end of MBB
								MachineInstr* branchInTaken;
								MachineInstr* branchInDetected;
								MachineInstr* jumpInDetected;
								{
									NewBB->insert(NewBB->instr_begin(), shadowCMP);
									MachineInstr *shadowBranch=  MF.CloneMachineInstr(I);
									NewBB->push_back(shadowBranch);
									
									branchInTaken=shadowBranch;
									
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
									
									//relatedMovePointTaken=copiedCMP;

									MachineInstr *copiedBranch=  MF.CloneMachineInstr(I);
									NewBB->push_back(copiedBranch);
									
									branchInDetected=copiedBranch;
									
									MachineInstr *MInop3 = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
									NewBB->push_back(MInop3);
									
									nextBB = MBB->getIterator();
									nextBB++;
									
									MachineInstr *MIJump = BuildMI(MF, DL3 , TII->get(OR1K::J)).addMBB(&*nextBB);
									NewBB->push_back(MIJump);
									
									jumpInDetected=MIJump;
									
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
									//PROBLEM: setHasAddressTaken causes segmentation fault when emitting BB
									//#5 0x0000000000ea4160 llvm::Value::getSubclassDataFromValue() const /home/sohwisoo/LLVM-or1k/llvm-or1k/include/llvm/IR/Value.h:604:0
									//#6 0x0000000001e2c2d2 llvm::BasicBlock::hasAddressTaken() const /home/sohwisoo/LLVM-or1k/llvm-or1k/include/llvm/IR/BasicBlock.h:307:0
									//#7 0x0000000001e28c28 llvm::AsmPrinter::EmitBasicBlockStart(llvm::MachineBasicBlock const&) const /home/sohwisoo/LLVM-or1k/llvm-or1k/lib/CodeGen/AsmPrinter/AsmPrinter.cpp:2493:0

									//detectedBB->setHasAddressTaken();
									detectedBB->addSuccessor(&(*nextBB));
									
								}
								
								
								//Make previous branch (if taken, branch to taken-block) -> (if taken, branch to inter-taken-block)
								I->getOperand(0).setMBB(NewBB); 
								
								//N
								insertedBlock.push_back(NewBB);
								insertedBlock.push_back(detectedBB);
								intSkipBlock.push_back(NewBB);
								intSkipBlock.push_back(detectedBB);
								
								cmpInst=NULL;
								
								
								
								//HWISOO: in here, we need to insert "moving" part if there is any related instrs
								//Note that we also SHOULD move shadow instrs
								if(existRelatedInstr)
								{
									//HWISOO: I realized that we need to generate "new block" for this
									//both for taken/not taken
									
									MachineBasicBlock *takenRemainedBlock =  MF.CreateMachineBasicBlock();
									MachineBasicBlock *notTakenRemainedBlock =  MF.CreateMachineBasicBlock();

									detectedBB->addSuccessor(takenRemainedBlock);
									detectedBB->addSuccessor(notTakenRemainedBlock);
									MBB->addSuccessor(notTakenRemainedBlock);
									
									//notTakenRemainedBlock should be placed between MBB and nextBB
									
									
									MachineFunction::iterator It = (MF.end())->getIterator();
									MF.insert(It,takenRemainedBlock);
									
									It = MBB->getIterator();
									MF.insert(++It,notTakenRemainedBlock);
									
									
									//MachineFunction::iterator It = (MF.end())->getIterator();
									//MF.insert(It,NewBB);
									
									for (std::list<MachineInstr*>::iterator iter = relatedInstrs.begin(); iter != relatedInstrs.end(); ++iter) {
										//find iterator from the block
										MachineBasicBlock::iterator mbb_I;
										for (mbb_I=MBB->begin(); &(*mbb_I) !=(*iter) ; ++mbb_I);
										
										
										
										MachineInstr* target3 = (mbb_I--);
										MachineInstr* target2 = (mbb_I--);
										MachineInstr* target1 = (mbb_I);

										MBB->remove(target1);
										takenRemainedBlock->insert(takenRemainedBlock->end(), target1);
										MachineInstr* target1_inNotTaken = MF.CloneMachineInstr(target1);
										notTakenRemainedBlock->insert(notTakenRemainedBlock->end(), target1_inNotTaken);
										
										
										MBB->remove(target2);
										takenRemainedBlock->insert(takenRemainedBlock->end(), target2);
										MachineInstr* target2_inNotTaken = MF.CloneMachineInstr(target2);
										notTakenRemainedBlock->insert(notTakenRemainedBlock->end(), target2_inNotTaken);
										
										MBB->remove(target3);
										takenRemainedBlock->insert(takenRemainedBlock->end(), target3);
										MachineInstr* target3_inNotTaken = MF.CloneMachineInstr(target3);
										notTakenRemainedBlock->insert(notTakenRemainedBlock->end(), target3_inNotTaken);
										

									}
									
									
									
									//we need to change target of previous branch
									//1. branch in NewBB(taken-branch) //branchInTaken
									//2. branch in detected block  //branchInDetected
									//3. jump in detected block //jumpInDetected
									//+ notTakenRemainedBlock should be placed between MBB and nextBB
									
									MachineInstr* takenRemainedJumpInstr = BuildMI(MF, DL3 , TII->get(OR1K::J)).addMBB(branchInTaken->getOperand(0).getMBB());
									takenRemainedBlock->insert(takenRemainedBlock->end(), takenRemainedJumpInstr);

                                    MachineInstr *MInopTakenRemained = BuildMI(MF, DL3 , TII->get(OR1K::NOP)).addImm(0);
                                    takenRemainedBlock->insert(takenRemainedBlock->end(), MInopTakenRemained);
									
									//if notTakenRemainedBlock is placed well, we don't need it
									//MachineInstr* notTakenRemainedJumpInstr = BuildMI(MF, DL3 , TII->get(OR1K::J)).addMBB(jumpInDetected->getOperand(0).getMBB());
									//notTakenRemainedBlock->insert(notTakenRemainedBlock->end(), notTakenRemainedJumpInstr);
									
										
									branchInTaken->getOperand(0).setMBB(takenRemainedBlock);
									branchInDetected->getOperand(0).setMBB(takenRemainedBlock);
									jumpInDetected->getOperand(0).setMBB(notTakenRemainedBlock);
									
									insertedBlock.push_back(takenRemainedBlock);
									insertedBlock.push_back(notTakenRemainedBlock);
									//intSkipBlock.push_back(takenRemainedBlock);
									//intSkipBlock.push_back(notTakenRemainedBlock);
								}
								break;     //break for instr parsing in MBB
							
							}
						}
					}//end of for
					
					changedRelatedRegs.clear();
					usedRelatedRegs.clear();
					relatedInstrs.clear();
					
				}// end of machine function
				insertedBlock.clear();
			}
				
			void oldWrongDirectionCheckingTZDC(MachineFunction &MF){
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
							MachineFunction::iterator nextBB;
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
								
								nextBB = MBB->getIterator();
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
								//PROBLEM: setHasAddressTaken causes segmentation fault when emitting BB
								//#5 0x0000000000ea4160 llvm::Value::getSubclassDataFromValue() const /home/sohwisoo/LLVM-or1k/llvm-or1k/include/llvm/IR/Value.h:604:0
								//#6 0x0000000001e2c2d2 llvm::BasicBlock::hasAddressTaken() const /home/sohwisoo/LLVM-or1k/llvm-or1k/include/llvm/IR/BasicBlock.h:307:0
								//#7 0x0000000001e28c28 llvm::AsmPrinter::EmitBasicBlockStart(llvm::MachineBasicBlock const&) const /home/sohwisoo/LLVM-or1k/llvm-or1k/lib/CodeGen/AsmPrinter/AsmPrinter.cpp:2493:0

								
								//detectedBB->setHasAddressTaken();
								detectedBB->addSuccessor(&(*nextBB));
								
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
											isPossibleToMoveInsts=false;
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




