# RUN: llvm-mc -arch=or1k -disassemble %s | FileCheck %s

    0xe4 0x01 0x10 0x00
# CHECK: l.sfeq r1, r2

    0xbc 0x01 0x00 0x03
# CHECK: l.sfeqi r1, 3

    0xe5 0x61 0x10 0x00
# CHECK: l.sfges r1, r2

    0xbd 0x61 0x00 0x03
# CHECK: l.sfgesi r1, 3

    0xe4 0x61 0x10 0x00
# CHECK: l.sfgeu r1, r2

    0xbc 0x61 0x00 0x03
# CHECK: l.sfgeui r1, 3

    0xe5 0x41 0x10 0x00
# CHECK: l.sfgts r1, r2

    0xbd 0x41 0x00 0x03
# CHECK: l.sfgtsi r1, 3

    0xe4 0x41 0x10 0x00
# CHECK: l.sfgtu r1, r2

    0xbc 0x41 0x00 0x03
# CHECK: l.sfgtui r1, 3

    0xe5 0xa1 0x10 0x00
# CHECK: l.sfles r1, r2

    0xbd 0xa1 0x00 0x03
# CHECK: l.sflesi r1, 3

    0xe4 0xa1 0x10 0x00
# CHECK: l.sfleu r1, r2

    0xbc 0xa1 0x00 0x03
# CHECK: l.sfleui r1, 3

    0xe5 0x81 0x10 0x00
# CHECK: l.sflts r1, r2

    0xbd 0x81 0x00 0x03
# CHECK: l.sfltsi r1, 3

    0xe4 0x81 0x10 0x00
# CHECK: l.sfltu r1, r2

    0xbc 0x81 0x00 0x03
# CHECK: l.sfltui r1, 3

    0xe4 0x21 0x10 0x00
# CHECK: l.sfne r1, r2

    0xbc 0x21 0x00 0x03
# CHECK: l.sfnei r1, 3