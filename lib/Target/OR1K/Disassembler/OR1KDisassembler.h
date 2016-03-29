#ifndef OR1KDISASSEMBLER_H
#define OR1KDISASSEMBLER_H

#include "llvm/MC/MCDisassembler.h"

namespace llvm {

class MCInst;
class MemoryObject;
class raw_ostream;

struct EDInstInfo;

class OR1KDisassembler : public MCDisassembler {
public:
  /// Constructor     - Initializes the disassembler.
  ///
  OR1KDisassembler(const MCSubtargetInfo &STI, MCContext &Ctx,
                   const MCRegisterInfo *Info) :
    MCDisassembler(STI, Ctx), RegInfo(Info) {
  }

  virtual ~OR1KDisassembler() {}

  /// getInstruction - See MCDisassembler.
  MCDisassembler::DecodeStatus getInstruction(MCInst &Instr, uint64_t &Size,
                                      ArrayRef<uint8_t> Bytes, uint64_t Address,
                                      raw_ostream &VStream,
                                      raw_ostream &CStream) const override;


  /// getEDInfo - See MCDisassembler.
  const EDInstInfo *getEDInfo() const;

  const MCRegisterInfo *getRegInfo() const { return RegInfo; }

private:
  const MCRegisterInfo *RegInfo;
};

} // namespace llvm

#endif
