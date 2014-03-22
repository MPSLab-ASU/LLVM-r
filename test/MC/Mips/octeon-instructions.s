# RUN: llvm-mc  %s -triple=mips64-unknown-linux -show-encoding -mcpu=octeon | FileCheck %s

# CHECK: baddu $9, $6, $7             # encoding: [0x70,0xc7,0x48,0x28]
# CHECK: baddu $17, $18, $19          # encoding: [0x72,0x53,0x88,0x28]
# CHECK: dmul  $9, $6, $7             # encoding: [0x70,0xc7,0x48,0x03]
# CHECK: dmul  $19, $24, $25          # encoding: [0x73,0x19,0x98,0x03]
# CHECK: dpop  $9, $6                 # encoding: [0x70,0xc0,0x48,0x2d]
# CHECK: dpop  $15, $22               # encoding: [0x72,0xc0,0x78,0x2d]
# CHECK: pop   $9, $6                 # encoding: [0x70,0xc0,0x48,0x2c]
# CHECK: pop   $8, $19                # encoding: [0x72,0x60,0x40,0x2c]
# CHECK: seq   $25, $23, $24          # encoding: [0x72,0xf8,0xc8,0x2a]
# CHECK: sne   $25, $23, $24          # encoding: [0x72,0xf8,0xc8,0x2b]

  baddu $9, $6, $7
  baddu $17, $18, $19
  dmul  $9, $6, $7
  dmul  $19, $24, $25
  dpop  $9, $6
  dpop  $15, $22
  pop   $9, $6
  pop   $8, $19
  seq   $25, $23, $24
  sne   $25, $23, $24
