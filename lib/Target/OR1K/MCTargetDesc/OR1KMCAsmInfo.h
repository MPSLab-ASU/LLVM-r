//=====-- OR1KMCAsmInfo.h - OR1K asm properties -----------*- C++ -*--====//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file contains the declaration of the OR1KMCAsmInfo class.
//
//===----------------------------------------------------------------------===//

#ifndef OR1K_MCASM_INFO_H
#define OR1K_MCASM_INFO_H

#include "llvm/MC/MCAsmInfoELF.h"

namespace llvm {
class Triple;

class OR1KMCAsmInfo : public MCAsmInfoELF {
  virtual void anchor();
public:
  explicit OR1KMCAsmInfo(const Triple &TT);
};
} // namespace llvm

#endif
