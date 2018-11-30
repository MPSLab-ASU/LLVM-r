	.text
	.file	"CRC.LL"
	.hidden	__addsf3
	.globl	__addsf3
	.p2align	2
	.type	__addsf3,@function
__addsf3:                               # @__addsf3
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 10
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.movhi	r5, 1023
	l.ori	r5, r5, 65528
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -16
	l.slli	r6, r4, 3
	l.movhi	r15, 1023
	l.sw	5092(r21), r22
	l.and	r6, r6, r5
	l.ori	r15, r15, 65528
	l.addi	r22, r21, 0             # CFC
	l.addi	r20, r20, 20            # CFC
	l.sw	-12(r2), r6
	l.slli	r16, r14, 3
	l.addi	r21, r21, -16           # CFC
	l.slli	r6, r3, 3
	l.and	r16, r16, r15
	l.movhi	r25, 1023
	l.and	r5, r6, r5
	l.sw	2536(r12), r16
	l.ori	r25, r25, 65528
	l.sw	-8(r2), r5
	l.slli	r16, r13, 3
	l.slli	r26, r24, 3
	l.srli	r5, r4, 23
	l.and	r15, r16, r15
	l.and	r26, r26, r25
	l.andi	r5, r5, 255
	l.sw	2540(r12), r15
	l.sw	5084(r22), r26
	l.srli	r11, r3, 23
	l.srli	r15, r14, 23
	l.addi	r28, r28, 60
	l.slli	r26, r23, 3
	l.andi	r7, r11, 255
	l.andi	r15, r15, 255
	l.and	r25, r26, r25
	l.sub	r6, r7, r5
	l.srli	r8, r13, 23
	l.sw	5088(r22), r25
	l.srli	r4, r4, 31
	l.andi	r17, r8, 255
	l.srli	r25, r24, 23
	l.srli	r3, r3, 31
	l.sub	r16, r17, r15
	l.andi	r25, r25, 255
	l.sfne	r3, r4
	l.srli	r14, r14, 31
	l.srli	r13, r13, 31
	l.srli	r31, r23, 23
	l.andi	r27, r31, 255
	l.sub	r26, r27, r25
	l.srli	r24, r24, 31
	l.srli	r23, r23, 31
	l.bf	.LBB0_146
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 50
	l.sfne	r13, r14
	l.addi	r20, r20, 40            # CFC
	l.bf	.LBB0_147
	l.nop	0
.LBB0_1:                                # %if.then
	l.sfltsi	r6, 1
	l.bf	.LBB0_148
	l.nop	0                       # in delay slot
	l.sfltsi	r16, 1
	l.bf	.LBB0_149
	l.nop	0
.LBB0_2:                                # %if.then40
	l.sfnei	r5, 0
	l.bf	.LBB0_150
	l.nop	0                       # in delay slot
	l.sfnei	r15, 0
	l.bf	.LBB0_151
	l.nop	0
.LBB0_3:                                # %if.then42
	l.addi	r18, r18, 11
	l.lwz	r4, -12(r2)
	l.sfeqi	r4, 0
	l.addi	r20, r20, 22            # CFC
	l.lwz	r11, -8(r2)
	l.lwz	r14, 2536(r12)
	l.addi	r28, r28, 66
	l.lwz	r8, 2540(r12)
	l.lwz	r24, 5084(r22)
	l.lwz	r31, 5088(r22)
	l.bf	.LBB0_152
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 55
	l.sfeqi	r14, 0
	l.addi	r20, r20, 44            # CFC
	l.bf	.LBB0_153
	l.nop	0
.LBB0_155:
	l.addi	r18, r18, 12
	l.addi	r20, r20, 24            # CFC
	l.ori	r4, r7, 0
	l.addi	r28, r28, 72
	l.ori	r14, r17, 0
	l.addi	r18, r18, 60
	l.ori	r24, r27, 0
	l.addi	r20, r20, 48            # CFC
.LBB0_4:                                # %if.else
	l.addi	r18, r18, 13
	l.addi	r6, r6, -1
	l.addi	r20, r20, 26            # CFC
	l.sfnei	r6, 0
	l.addi	r28, r28, 78
	l.addi	r16, r16, -1
	l.addi	r26, r26, -1
	l.bf	.LBB0_156
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 65
	l.sfnei	r16, 0
	l.addi	r20, r20, 52            # CFC
	l.bf	.LBB0_157
	l.nop	0
.LBB0_5:                                # %if.then55
	l.addi	r18, r18, 14
	l.addi	r20, r20, 28            # CFC
	l.lwz	r4, -12(r2)
	l.addi	r28, r28, 84
	l.lwz	r14, 2536(r12)
	l.addi	r18, r18, 70
	l.lwz	r24, 5084(r22)
	l.addi	r20, r20, 56            # CFC
	l.j	.LBB0_58
	l.nop	0                       # in delay slot
.LBB0_6:                                # %if.else333
	l.sfltsi	r6, 1
	l.bf	.LBB0_158
	l.nop	0                       # in delay slot
	l.sfltsi	r16, 1
	l.bf	.LBB0_159
	l.nop	0
.LBB0_7:                                # %if.then338
	l.sfnei	r5, 0
	l.bf	.LBB0_160
	l.nop	0                       # in delay slot
	l.sfnei	r15, 0
	l.bf	.LBB0_161
	l.nop	0
.LBB0_8:                                # %if.then341
	l.addi	r18, r18, 15
	l.lwz	r4, -12(r2)
	l.sfeqi	r4, 0
	l.addi	r20, r20, 30            # CFC
	l.lwz	r11, -8(r2)
	l.lwz	r14, 2536(r12)
	l.addi	r28, r28, 90
	l.lwz	r8, 2540(r12)
	l.lwz	r24, 5084(r22)
	l.lwz	r31, 5088(r22)
	l.bf	.LBB0_162
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 75
	l.sfeqi	r14, 0
	l.addi	r20, r20, 60            # CFC
	l.bf	.LBB0_163
	l.nop	0
.LBB0_165:
	l.addi	r18, r18, 16
	l.addi	r20, r20, 32            # CFC
	l.ori	r4, r7, 0
	l.addi	r28, r28, 96
	l.ori	r14, r17, 0
	l.addi	r18, r18, 80
	l.ori	r24, r27, 0
	l.addi	r20, r20, 64            # CFC
.LBB0_9:                                # %if.else363
	l.addi	r18, r18, 17
	l.addi	r6, r6, -1
	l.addi	r20, r20, 34            # CFC
	l.sfnei	r6, 0
	l.addi	r28, r28, 102
	l.addi	r16, r16, -1
	l.addi	r26, r26, -1
	l.bf	.LBB0_166
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 85
	l.sfnei	r16, 0
	l.addi	r20, r20, 68            # CFC
	l.bf	.LBB0_167
	l.nop	0
.LBB0_10:                               # %if.then367
	l.addi	r18, r18, 18
	l.addi	r20, r20, 36            # CFC
	l.lwz	r4, -12(r2)
	l.addi	r28, r28, 108
	l.lwz	r14, 2536(r12)
	l.addi	r18, r18, 90
	l.lwz	r24, 5084(r22)
	l.addi	r20, r20, 72            # CFC
	l.j	.LBB0_66
	l.nop	0                       # in delay slot
.LBB0_11:                               # %if.else76
	l.addi	r18, r18, 19
	l.addi	r4, r0, 255
	l.sfeqi	r7, 255
	l.addi	r20, r20, 38            # CFC
	l.lwz	r11, -8(r2)
	l.addi	r14, r0, 255
	l.addi	r28, r28, 114
	l.lwz	r8, 2540(r12)
	l.addi	r24, r0, 255
	l.lwz	r31, 5088(r22)
	l.bf	.LBB0_168
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 95
	l.sfeqi	r17, 255
	l.addi	r20, r20, 76            # CFC
	l.bf	.LBB0_169
	l.nop	0
.LBB0_12:                               # %if.end96
	l.addi	r18, r18, 20
	l.movhi	r4, 1024
	l.lwz	r5, -12(r2)
	l.or	r5, r5, r4
	l.addi	r20, r20, 40            # CFC
	l.sw	-12(r2), r5
	l.movhi	r14, 1024
	l.lwz	r15, 2536(r12)
	l.addi	r28, r28, 120
	l.or	r15, r15, r14
	l.sw	2536(r12), r15
	l.movhi	r24, 1024
	l.addi	r18, r18, 100
	l.lwz	r25, 5084(r22)
	l.or	r25, r25, r24
	l.sw	5084(r22), r25
	l.addi	r20, r20, 80            # CFC
.LBB0_13:                               # %add1
	l.sfgtsi	r6, 27
	l.bf	.LBB0_170
	l.nop	0                       # in delay slot
	l.sfgtsi	r16, 27
	l.bf	.LBB0_171
	l.nop	0
.LBB0_14:                               # %if.then98
	l.addi	r18, r18, 21
	l.addi	r4, r0, 32
	l.sub	r4, r4, r6
	l.lwz	r11, -12(r2)
	l.sll	r5, r11, r4
	l.addi	r4, r0, 1
	l.addi	r20, r20, 42            # CFC
	l.sfnei	r5, 0
	l.addi	r14, r0, 32
	l.sub	r14, r14, r16
	l.lwz	r8, 2536(r12)
	l.sll	r15, r8, r14
	l.addi	r28, r28, 126
	l.addi	r14, r0, 1
	l.addi	r24, r0, 32
	l.sub	r24, r24, r26
	l.lwz	r31, 5084(r22)
	l.sll	r25, r31, r24
	l.addi	r24, r0, 1
	l.bf	.LBB0_172
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 105
	l.sfnei	r15, 0
	l.addi	r20, r20, 84            # CFC
	l.bf	.LBB0_173
	l.nop	0
.LBB0_15:                               # %if.then98
	l.addi	r18, r18, 22
	l.addi	r20, r20, 44            # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 132
	l.movhi	r14, 0
	l.addi	r18, r18, 110
	l.movhi	r24, 0
	l.addi	r20, r20, 88            # CFC
.LBB0_16:                               # %if.then98
	l.addi	r18, r18, 23
	l.srl	r5, r11, r6
	l.andi	r4, r4, 1
	l.addi	r20, r20, 46            # CFC
	l.or	r4, r4, r5
	l.srl	r15, r8, r16
	l.addi	r28, r28, 138
	l.andi	r14, r14, 1
	l.or	r14, r14, r15
	l.addi	r18, r18, 115
	l.srl	r25, r31, r26
	l.andi	r24, r24, 1
	l.or	r24, r24, r25
	l.addi	r20, r20, 92            # CFC
	l.j	.LBB0_58
	l.nop	0                       # in delay slot
.LBB0_17:                               # %if.else392
	l.addi	r18, r18, 24
	l.addi	r4, r0, 255
	l.sfeqi	r7, 255
	l.addi	r20, r20, 48            # CFC
	l.lwz	r11, -8(r2)
	l.addi	r14, r0, 255
	l.addi	r28, r28, 144
	l.lwz	r8, 2540(r12)
	l.addi	r24, r0, 255
	l.lwz	r31, 5088(r22)
	l.bf	.LBB0_174
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 120
	l.sfeqi	r17, 255
	l.addi	r20, r20, 96            # CFC
	l.bf	.LBB0_175
	l.nop	0
.LBB0_18:                               # %if.end415
	l.addi	r18, r18, 25
	l.movhi	r4, 1024
	l.lwz	r5, -12(r2)
	l.or	r5, r5, r4
	l.addi	r20, r20, 50            # CFC
	l.sw	-12(r2), r5
	l.movhi	r14, 1024
	l.lwz	r15, 2536(r12)
	l.addi	r28, r28, 150
	l.or	r15, r15, r14
	l.sw	2536(r12), r15
	l.movhi	r24, 1024
	l.addi	r18, r18, 125
	l.lwz	r25, 5084(r22)
	l.or	r25, r25, r24
	l.sw	5084(r22), r25
	l.addi	r20, r20, 100           # CFC
.LBB0_19:                               # %sub1
	l.sfgtsi	r6, 27
	l.bf	.LBB0_176
	l.nop	0                       # in delay slot
	l.sfgtsi	r16, 27
	l.bf	.LBB0_177
	l.nop	0
.LBB0_20:                               # %if.then419
	l.addi	r18, r18, 26
	l.addi	r4, r0, 32
	l.sub	r4, r4, r6
	l.lwz	r11, -12(r2)
	l.sll	r5, r11, r4
	l.addi	r4, r0, 1
	l.addi	r20, r20, 52            # CFC
	l.sfnei	r5, 0
	l.addi	r14, r0, 32
	l.sub	r14, r14, r16
	l.lwz	r8, 2536(r12)
	l.sll	r15, r8, r14
	l.addi	r28, r28, 156
	l.addi	r14, r0, 1
	l.addi	r24, r0, 32
	l.sub	r24, r24, r26
	l.lwz	r31, 5084(r22)
	l.sll	r25, r31, r24
	l.addi	r24, r0, 1
	l.bf	.LBB0_178
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 130
	l.sfnei	r15, 0
	l.addi	r20, r20, 104           # CFC
	l.bf	.LBB0_179
	l.nop	0
.LBB0_21:                               # %if.then419
	l.addi	r18, r18, 27
	l.addi	r20, r20, 54            # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 162
	l.movhi	r14, 0
	l.addi	r18, r18, 135
	l.movhi	r24, 0
	l.addi	r20, r20, 108           # CFC
.LBB0_22:                               # %if.then419
	l.addi	r18, r18, 28
	l.srl	r5, r11, r6
	l.andi	r4, r4, 1
	l.addi	r20, r20, 56            # CFC
	l.or	r4, r4, r5
	l.srl	r15, r8, r16
	l.addi	r28, r28, 168
	l.andi	r14, r14, 1
	l.or	r14, r14, r15
	l.addi	r18, r18, 140
	l.srl	r25, r31, r26
	l.andi	r24, r24, 1
	l.or	r24, r24, r25
	l.addi	r20, r20, 112           # CFC
	l.j	.LBB0_66
	l.nop	0                       # in delay slot
.LBB0_23:                               # %if.else110
	l.sfgtsi	r6, -1
	l.bf	.LBB0_180
	l.nop	0                       # in delay slot
	l.sfgtsi	r16, -1
	l.bf	.LBB0_181
	l.nop	0
.LBB0_24:                               # %if.then113
	l.sfnei	r7, 0
	l.bf	.LBB0_182
	l.nop	0                       # in delay slot
	l.sfnei	r17, 0
	l.bf	.LBB0_183
	l.nop	0
.LBB0_25:                               # %if.then117
	l.addi	r18, r18, 29
	l.lwz	r4, -8(r2)
	l.sfeqi	r4, 0
	l.addi	r20, r20, 58            # CFC
	l.lwz	r11, -12(r2)
	l.lwz	r14, 2540(r12)
	l.addi	r28, r28, 174
	l.lwz	r8, 2536(r12)
	l.lwz	r24, 5088(r22)
	l.lwz	r31, 5084(r22)
	l.bf	.LBB0_184
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 145
	l.sfeqi	r14, 0
	l.addi	r20, r20, 116           # CFC
	l.bf	.LBB0_185
	l.nop	0
.LBB0_187:
	l.addi	r18, r18, 30
	l.addi	r20, r20, 60            # CFC
	l.ori	r4, r5, 0
	l.addi	r28, r28, 180
	l.ori	r14, r15, 0
	l.addi	r18, r18, 150
	l.ori	r24, r25, 0
	l.addi	r20, r20, 120           # CFC
.LBB0_26:                               # %if.else139
	l.sfnei	r6, -1
	l.bf	.LBB0_188
	l.nop	0                       # in delay slot
	l.sfnei	r16, -1
	l.bf	.LBB0_189
	l.nop	0
.LBB0_27:                               # %if.then143
	l.addi	r18, r18, 31
	l.lwz	r4, -12(r2)
	l.addi	r20, r20, 62            # CFC
	l.lwz	r6, -8(r2)
	l.lwz	r14, 2536(r12)
	l.addi	r28, r28, 186
	l.lwz	r16, 2540(r12)
	l.addi	r18, r18, 155
	l.lwz	r24, 5084(r22)
	l.lwz	r26, 5088(r22)
	l.addi	r20, r20, 124           # CFC
	l.j	.LBB0_126
	l.nop	0                       # in delay slot
.LBB0_28:                               # %if.else433
	l.sfgtsi	r6, -1
	l.bf	.LBB0_190
	l.nop	0                       # in delay slot
	l.sfgtsi	r16, -1
	l.bf	.LBB0_191
	l.nop	0
.LBB0_29:                               # %if.then436
	l.sfnei	r7, 0
	l.bf	.LBB0_192
	l.nop	0                       # in delay slot
	l.sfnei	r17, 0
	l.bf	.LBB0_193
	l.nop	0
.LBB0_30:                               # %if.then440
	l.addi	r18, r18, 32
	l.lwz	r3, -8(r2)
	l.sfeqi	r3, 0
	l.ori	r7, r4, 0
	l.addi	r20, r20, 64            # CFC
	l.lwz	r11, -12(r2)
	l.lwz	r13, 2540(r12)
	l.ori	r17, r14, 0
	l.addi	r28, r28, 192
	l.lwz	r8, 2536(r12)
	l.lwz	r23, 5088(r22)
	l.ori	r27, r24, 0
	l.lwz	r31, 5084(r22)
	l.bf	.LBB0_194
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 160
	l.sfeqi	r13, 0
	l.addi	r20, r20, 128           # CFC
	l.bf	.LBB0_195
	l.nop	0
.LBB0_197:
	l.addi	r18, r18, 33
	l.ori	r3, r4, 0
	l.addi	r20, r20, 66            # CFC
	l.ori	r4, r5, 0
	l.ori	r13, r14, 0
	l.addi	r28, r28, 198
	l.ori	r14, r15, 0
	l.addi	r18, r18, 165
	l.ori	r23, r24, 0
	l.ori	r24, r25, 0
	l.addi	r20, r20, 132           # CFC
.LBB0_31:                               # %if.else462
	l.sfnei	r6, -1
	l.bf	.LBB0_198
	l.nop	0                       # in delay slot
	l.sfnei	r16, -1
	l.bf	.LBB0_199
	l.nop	0
.LBB0_32:                               # %if.then466
	l.addi	r18, r18, 34
	l.lwz	r3, -12(r2)
	l.lwz	r4, -8(r2)
	l.addi	r20, r20, 68            # CFC
	l.sub	r11, r3, r4
	l.lwz	r13, 2536(r12)
	l.addi	r28, r28, 204
	l.lwz	r14, 2540(r12)
	l.sub	r8, r13, r14
	l.addi	r18, r18, 170
	l.lwz	r23, 5084(r22)
	l.lwz	r24, 5088(r22)
	l.sub	r31, r23, r24
	l.addi	r20, r20, 136           # CFC
	l.j	.LBB0_132
	l.nop	0                       # in delay slot
.LBB0_33:                               # %if.else209
	l.addi	r18, r18, 35
	l.addi	r4, r11, 1
	l.andi	r4, r4, 254
	l.addi	r20, r20, 70            # CFC
	l.sfnei	r4, 0
	l.addi	r14, r8, 1
	l.addi	r28, r28, 210
	l.andi	r14, r14, 254
	l.addi	r24, r31, 1
	l.andi	r24, r24, 254
	l.bf	.LBB0_200
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 175
	l.sfnei	r14, 0
	l.addi	r20, r20, 140           # CFC
	l.bf	.LBB0_201
	l.nop	0
.LBB0_34:                               # %if.then214
	l.addi	r18, r18, 36
	l.addi	r4, r0, 1
	l.lwz	r6, -12(r2)
	l.sfeqi	r6, 0
	l.addi	r20, r20, 72            # CFC
	l.ori	r5, r4, 0
	l.addi	r14, r0, 1
	l.lwz	r16, 2536(r12)
	l.addi	r28, r28, 216
	l.ori	r15, r14, 0
	l.addi	r24, r0, 1
	l.lwz	r26, 5084(r22)
	l.ori	r25, r24, 0
	l.bf	.LBB0_202
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 180
	l.sfeqi	r16, 0
	l.addi	r20, r20, 144           # CFC
	l.bf	.LBB0_203
	l.nop	0
.LBB0_35:                               # %if.then214
	l.addi	r18, r18, 37
	l.addi	r20, r20, 74            # CFC
	l.movhi	r5, 0
	l.addi	r28, r28, 222
	l.movhi	r15, 0
	l.addi	r18, r18, 185
	l.movhi	r25, 0
	l.addi	r20, r20, 148           # CFC
.LBB0_36:                               # %if.then214
	l.addi	r18, r18, 38
	l.lwz	r11, -8(r2)
	l.addi	r20, r20, 76            # CFC
	l.sfeqi	r11, 0
	l.addi	r28, r28, 228
	l.lwz	r8, 2540(r12)
	l.lwz	r31, 5088(r22)
	l.bf	.LBB0_204
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 190
	l.sfeqi	r8, 0
	l.addi	r20, r20, 152           # CFC
	l.bf	.LBB0_205
	l.nop	0
.LBB0_37:                               # %if.then214
	l.addi	r18, r18, 39
	l.addi	r20, r20, 78            # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 234
	l.movhi	r14, 0
	l.addi	r18, r18, 195
	l.movhi	r24, 0
	l.addi	r20, r20, 156           # CFC
.LBB0_38:                               # %if.then214
	l.sfeqi	r11, 0
	l.bf	.LBB0_206
	l.nop	0                       # in delay slot
	l.sfeqi	r8, 0
	l.bf	.LBB0_207
	l.nop	0
.LBB0_209:
	l.addi	r18, r18, 40
	l.addi	r20, r20, 80            # CFC
	l.ori	r11, r6, 0
	l.addi	r28, r28, 240
	l.ori	r8, r16, 0
	l.addi	r18, r18, 200
	l.ori	r31, r26, 0
	l.addi	r20, r20, 160           # CFC
.LBB0_39:                               # %if.then214
	l.addi	r18, r18, 41
	l.addi	r20, r20, 82            # CFC
	l.lwz	r11, -8(r2)
	l.addi	r28, r28, 246
	l.lwz	r8, 2540(r12)
	l.addi	r18, r18, 205
	l.lwz	r31, 5088(r22)
	l.addi	r20, r20, 164           # CFC
.LBB0_40:                               # %if.then214
	l.addi	r18, r18, 42
	l.or	r5, r4, r5
	l.addi	r20, r20, 84            # CFC
	l.sfnei	r7, 0
	l.addi	r28, r28, 252
	l.or	r15, r14, r15
	l.or	r25, r24, r25
	l.bf	.LBB0_210
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 210
	l.sfnei	r17, 0
	l.addi	r20, r20, 168           # CFC
	l.bf	.LBB0_211
	l.nop	0
.LBB0_41:                               # %if.then217
	l.addi	r18, r18, 43
	l.movhi	r4, 0
	l.andi	r5, r5, 1
	l.addi	r20, r20, 86            # CFC
	l.sfnei	r5, 0
	l.movhi	r14, 0
	l.addi	r28, r28, 258
	l.andi	r15, r15, 1
	l.movhi	r24, 0
	l.andi	r25, r25, 1
	l.bf	.LBB0_212
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 215
	l.sfnei	r15, 0
	l.addi	r20, r20, 172           # CFC
	l.bf	.LBB0_213
	l.nop	0
.LBB0_42:                               # %if.else229
	l.addi	r18, r18, 44
	l.lwz	r4, -12(r2)
	l.lwz	r5, -8(r2)
	l.add	r4, r4, r5
	l.movhi	r5, 1024
	l.and	r5, r4, r5
	l.lwz	r14, 2536(r12)
	l.addi	r20, r20, 88            # CFC
	l.lwz	r15, 2540(r12)
	l.add	r14, r14, r15
	l.sfeqi	r5, 0
	l.movhi	r15, 1024
	l.lwz	r24, 5084(r22)
	l.ori	r11, r4, 0
	l.addi	r28, r28, 264
	l.and	r15, r14, r15
	l.ori	r8, r14, 0
	l.lwz	r25, 5088(r22)
	l.add	r24, r24, r25
	l.movhi	r25, 1024
	l.and	r25, r24, r25
	l.ori	r31, r24, 0
	l.bf	.LBB0_214
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 220
	l.sfeqi	r15, 0
	l.addi	r20, r20, 176           # CFC
	l.bf	.LBB0_215
	l.nop	0
.LBB0_43:                               # %if.else229
	l.addi	r18, r18, 45
	l.movhi	r5, 1023
	l.ori	r5, r5, 65528
	l.addi	r20, r20, 90            # CFC
	l.and	r11, r4, r5
	l.movhi	r15, 1023
	l.addi	r28, r28, 270
	l.ori	r15, r15, 65528
	l.and	r8, r14, r15
	l.addi	r18, r18, 225
	l.movhi	r25, 1023
	l.ori	r25, r25, 65528
	l.and	r31, r24, r25
	l.addi	r20, r20, 180           # CFC
.LBB0_44:                               # %if.else229
	l.addi	r18, r18, 46
	l.addi	r20, r20, 92            # CFC
	l.srli	r4, r4, 26
	l.addi	r28, r28, 276
	l.srli	r14, r14, 26
	l.addi	r18, r18, 230
	l.srli	r24, r24, 26
	l.addi	r20, r20, 184           # CFC
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_45:                               # %if.else532
	l.addi	r18, r18, 47
	l.sw	-16(r2), r4
	l.addi	r4, r11, 1
	l.andi	r4, r4, 254
	l.addi	r20, r20, 94            # CFC
	l.sfnei	r4, 0
	l.sw	2532(r12), r14
	l.addi	r14, r8, 1
	l.addi	r28, r28, 282
	l.andi	r14, r14, 254
	l.sw	5080(r22), r24
	l.addi	r24, r31, 1
	l.andi	r24, r24, 254
	l.bf	.LBB0_216
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 235
	l.sfnei	r14, 0
	l.addi	r20, r20, 188           # CFC
	l.bf	.LBB0_217
	l.nop	0
.LBB0_46:                               # %if.then537
	l.addi	r18, r18, 48
	l.sfnei	r7, 0
	l.lwz	r5, -12(r2)
	l.addi	r20, r20, 96            # CFC
	l.lwz	r6, -8(r2)
	l.lwz	r15, 2536(r12)
	l.addi	r28, r28, 288
	l.lwz	r16, 2540(r12)
	l.lwz	r25, 5084(r22)
	l.lwz	r26, 5088(r22)
	l.bf	.LBB0_218
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 240
	l.sfnei	r17, 0
	l.addi	r20, r20, 192           # CFC
	l.bf	.LBB0_219
	l.nop	0
.LBB0_47:                               # %if.then540
	l.sfnei	r6, 0
	l.bf	.LBB0_220
	l.nop	0                       # in delay slot
	l.sfnei	r16, 0
	l.bf	.LBB0_221
	l.nop	0
.LBB0_48:                               # %if.then543
	l.addi	r18, r18, 49
	l.movhi	r4, 0
	l.sfeqi	r5, 0
	l.addi	r20, r20, 98            # CFC
	l.movhi	r3, 0
	l.movhi	r14, 0
	l.addi	r28, r28, 294
	l.movhi	r13, 0
	l.movhi	r24, 0
	l.movhi	r23, 0
	l.bf	.LBB0_222
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 245
	l.sfeqi	r15, 0
	l.addi	r20, r20, 196           # CFC
	l.bf	.LBB0_223
	l.nop	0
.LBB0_49:                               # %if.then543
	l.addi	r18, r18, 50
	l.addi	r20, r20, 100           # CFC
	l.lwz	r3, -16(r2)
	l.addi	r28, r28, 300
	l.lwz	r13, 2532(r12)
	l.addi	r18, r18, 250
	l.lwz	r23, 5080(r22)
	l.addi	r20, r20, 200           # CFC
.LBB0_50:                               # %if.then543
	l.addi	r18, r18, 51
	l.addi	r20, r20, 102           # CFC
	l.ori	r11, r5, 0
	l.addi	r28, r28, 306
	l.ori	r8, r15, 0
	l.addi	r18, r18, 255
	l.ori	r31, r25, 0
	l.addi	r20, r20, 204           # CFC
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_51:                               # %if.end303
	l.addi	r18, r18, 52
	l.addi	r4, r7, 1
	l.movhi	r11, 0
	l.addi	r20, r20, 104           # CFC
	l.sfeqi	r4, 255
	l.addi	r14, r17, 1
	l.addi	r28, r28, 312
	l.movhi	r8, 0
	l.addi	r24, r27, 1
	l.movhi	r31, 0
	l.bf	.LBB0_224
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 260
	l.sfeqi	r14, 255
	l.addi	r20, r20, 208           # CFC
	l.bf	.LBB0_225
	l.nop	0
.LBB0_52:                               # %if.end303
	l.addi	r18, r18, 53
	l.lwz	r5, -12(r2)
	l.lwz	r6, -8(r2)
	l.add	r5, r5, r6
	l.addi	r20, r20, 106           # CFC
	l.srli	r11, r5, 1
	l.lwz	r15, 2536(r12)
	l.lwz	r16, 2540(r12)
	l.addi	r28, r28, 318
	l.add	r15, r15, r16
	l.srli	r8, r15, 1
	l.lwz	r25, 5084(r22)
	l.addi	r18, r18, 265
	l.lwz	r26, 5088(r22)
	l.add	r25, r25, r26
	l.srli	r31, r25, 1
	l.addi	r20, r20, 212           # CFC
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_53:                               # %if.end641
	l.addi	r18, r18, 54
	l.lwz	r6, -12(r2)
	l.lwz	r11, -8(r2)
	l.sub	r5, r11, r6
	l.movhi	r4, 1024
	l.and	r4, r5, r4
	l.addi	r20, r20, 108           # CFC
	l.sfeqi	r4, 0
	l.lwz	r16, 2536(r12)
	l.lwz	r8, 2540(r12)
	l.sub	r15, r8, r16
	l.movhi	r14, 1024
	l.addi	r28, r28, 324
	l.and	r14, r15, r14
	l.lwz	r26, 5084(r22)
	l.lwz	r31, 5088(r22)
	l.sub	r25, r31, r26
	l.movhi	r24, 1024
	l.and	r24, r25, r24
	l.bf	.LBB0_226
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 270
	l.sfeqi	r14, 0
	l.addi	r20, r20, 216           # CFC
	l.bf	.LBB0_227
	l.nop	0
.LBB0_54:                               # %if.then645
	l.addi	r18, r18, 55
	l.addi	r20, r20, 110           # CFC
	l.sub	r5, r6, r11
	l.addi	r28, r28, 330
	l.sub	r15, r16, r8
	l.addi	r18, r18, 275
	l.sub	r25, r26, r31
	l.addi	r20, r20, 220           # CFC
	l.j	.LBB0_84
	l.nop	0                       # in delay slot
.LBB0_55:                               # %if.else103
	l.addi	r18, r18, 56
	l.addi	r4, r0, 1
	l.lwz	r5, -12(r2)
	l.addi	r20, r20, 112           # CFC
	l.sfnei	r5, 0
	l.addi	r14, r0, 1
	l.addi	r28, r28, 336
	l.lwz	r15, 2536(r12)
	l.addi	r24, r0, 1
	l.lwz	r25, 5084(r22)
	l.bf	.LBB0_228
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 280
	l.sfnei	r15, 0
	l.addi	r20, r20, 224           # CFC
	l.bf	.LBB0_229
	l.nop	0
.LBB0_56:                               # %if.else103
	l.addi	r18, r18, 57
	l.addi	r20, r20, 114           # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 342
	l.movhi	r14, 0
	l.addi	r18, r18, 285
	l.movhi	r24, 0
	l.addi	r20, r20, 228           # CFC
.LBB0_57:                               # %if.else103
	l.addi	r18, r18, 58
	l.addi	r20, r20, 116           # CFC
	l.andi	r4, r4, 1
	l.addi	r28, r28, 348
	l.andi	r14, r14, 1
	l.addi	r18, r18, 290
	l.andi	r24, r24, 1
	l.addi	r20, r20, 232           # CFC
.LBB0_58:                               # %add3
	l.addi	r18, r18, 59
	l.lwz	r5, -8(r2)
	l.add	r11, r4, r5
	l.addi	r20, r20, 118           # CFC
	l.ori	r4, r7, 0
	l.lwz	r15, 2540(r12)
	l.addi	r28, r28, 354
	l.add	r8, r14, r15
	l.ori	r14, r17, 0
	l.addi	r18, r18, 295
	l.lwz	r25, 5088(r22)
	l.add	r31, r24, r25
	l.ori	r24, r27, 0
	l.addi	r20, r20, 236           # CFC
.LBB0_59:                               # %add3
	l.addi	r18, r18, 60
	l.movhi	r5, 1024
	l.and	r5, r11, r5
	l.addi	r20, r20, 120           # CFC
	l.sfeqi	r5, 0
	l.movhi	r15, 1024
	l.addi	r28, r28, 360
	l.and	r15, r8, r15
	l.movhi	r25, 1024
	l.and	r25, r31, r25
	l.bf	.LBB0_230
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 300
	l.sfeqi	r15, 0
	l.addi	r20, r20, 240           # CFC
	l.bf	.LBB0_231
	l.nop	0
.LBB0_60:                               # %if.then320
	l.addi	r18, r18, 61
	l.addi	r4, r4, 1
	l.movhi	r5, 0
	l.addi	r20, r20, 122           # CFC
	l.sfeqi	r4, 255
	l.addi	r14, r14, 1
	l.addi	r28, r28, 366
	l.movhi	r15, 0
	l.addi	r24, r24, 1
	l.movhi	r25, 0
	l.bf	.LBB0_232
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 305
	l.sfeqi	r14, 255
	l.addi	r20, r20, 244           # CFC
	l.bf	.LBB0_233
	l.nop	0
.LBB0_61:                               # %if.then320
	l.addi	r18, r18, 62
	l.movhi	r5, 32255
	l.ori	r5, r5, 65535
	l.srli	r6, r11, 1
	l.and	r5, r6, r5
	l.addi	r20, r20, 124           # CFC
	l.andi	r6, r11, 1
	l.movhi	r15, 32255
	l.ori	r15, r15, 65535
	l.srli	r16, r8, 1
	l.or	r5, r5, r6
	l.addi	r28, r28, 372
	l.and	r15, r16, r15
	l.movhi	r25, 32255
	l.andi	r16, r8, 1
	l.or	r15, r15, r16
	l.addi	r18, r18, 310
	l.ori	r25, r25, 65535
	l.srli	r26, r31, 1
	l.and	r25, r26, r25
	l.andi	r26, r31, 1
	l.or	r25, r25, r26
	l.addi	r20, r20, 248           # CFC
.LBB0_62:                               # %if.then320
	l.addi	r18, r18, 63
	l.addi	r20, r20, 126           # CFC
	l.ori	r11, r5, 0
	l.addi	r28, r28, 378
	l.ori	r8, r15, 0
	l.addi	r18, r18, 315
	l.ori	r31, r25, 0
	l.addi	r20, r20, 252           # CFC
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_63:                               # %if.else426
	l.addi	r18, r18, 64
	l.addi	r4, r0, 1
	l.lwz	r5, -12(r2)
	l.addi	r20, r20, 128           # CFC
	l.sfnei	r5, 0
	l.addi	r14, r0, 1
	l.addi	r28, r28, 384
	l.lwz	r15, 2536(r12)
	l.addi	r24, r0, 1
	l.lwz	r25, 5084(r22)
	l.bf	.LBB0_234
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 320
	l.sfnei	r15, 0
	l.addi	r20, r20, 256           # CFC
	l.bf	.LBB0_235
	l.nop	0
.LBB0_64:                               # %if.else426
	l.addi	r18, r18, 65
	l.addi	r20, r20, 130           # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 390
	l.movhi	r14, 0
	l.addi	r18, r18, 325
	l.movhi	r24, 0
	l.addi	r20, r20, 260           # CFC
.LBB0_65:                               # %if.else426
	l.addi	r18, r18, 66
	l.addi	r20, r20, 132           # CFC
	l.andi	r4, r4, 1
	l.addi	r28, r28, 396
	l.andi	r14, r14, 1
	l.addi	r18, r18, 330
	l.andi	r24, r24, 1
	l.addi	r20, r20, 264           # CFC
.LBB0_66:                               # %sub3
	l.addi	r18, r18, 67
	l.lwz	r5, -8(r2)
	l.sub	r11, r5, r4
	l.addi	r20, r20, 134           # CFC
	l.ori	r4, r7, 0
	l.lwz	r15, 2540(r12)
	l.addi	r28, r28, 402
	l.sub	r8, r15, r14
	l.ori	r14, r17, 0
	l.addi	r18, r18, 335
	l.lwz	r25, 5088(r22)
	l.sub	r31, r25, r24
	l.ori	r24, r27, 0
	l.addi	r20, r20, 268           # CFC
.LBB0_67:                               # %sub3
	l.addi	r18, r18, 68
	l.movhi	r5, 1024
	l.and	r5, r11, r5
	l.addi	r20, r20, 136           # CFC
	l.sfeqi	r5, 0
	l.movhi	r15, 1024
	l.addi	r28, r28, 408
	l.and	r15, r8, r15
	l.movhi	r25, 1024
	l.and	r25, r31, r25
	l.bf	.LBB0_236
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 340
	l.sfeqi	r15, 0
	l.addi	r20, r20, 272           # CFC
	l.bf	.LBB0_237
	l.nop	0
.LBB0_68:                               # %if.then657
	l.addi	r18, r18, 69
	l.movhi	r5, 1023
	l.ori	r5, r5, 65535
	l.and	r5, r11, r5
	l.addi	r20, r20, 138           # CFC
	l.sw	-16(r2), r3
	l.ori	r7, r4, 0
	l.movhi	r15, 1023
	l.ori	r15, r15, 65535
	l.addi	r28, r28, 414
	l.and	r15, r8, r15
	l.sw	2532(r12), r13
	l.ori	r17, r14, 0
	l.movhi	r25, 1023
	l.addi	r18, r18, 345
	l.ori	r25, r25, 65535
	l.and	r25, r31, r25
	l.sw	5080(r22), r23
	l.ori	r27, r24, 0
	l.addi	r20, r20, 276           # CFC
	l.j	.LBB0_84
	l.nop	0                       # in delay slot
.LBB0_69:                               # %if.end56
	l.addi	r18, r18, 70
	l.addi	r4, r0, 255
	l.sfeqi	r7, 255
	l.addi	r20, r20, 140           # CFC
	l.lwz	r11, -8(r2)
	l.addi	r14, r0, 255
	l.addi	r28, r28, 420
	l.lwz	r8, 2540(r12)
	l.addi	r24, r0, 255
	l.lwz	r31, 5088(r22)
	l.bf	.LBB0_238
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 350
	l.sfeqi	r17, 255
	l.addi	r20, r20, 280           # CFC
	l.bf	.LBB0_239
	l.nop	0
.LBB0_141:                              # %if.end56
	l.j	.LBB0_13
	l.nop	0                       # in delay slot
.LBB0_70:                               # %if.end369
	l.addi	r18, r18, 71
	l.addi	r4, r0, 255
	l.sfeqi	r7, 255
	l.addi	r20, r20, 142           # CFC
	l.lwz	r11, -8(r2)
	l.addi	r14, r0, 255
	l.addi	r28, r28, 426
	l.lwz	r8, 2540(r12)
	l.addi	r24, r0, 255
	l.lwz	r31, 5088(r22)
	l.bf	.LBB0_240
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 355
	l.sfeqi	r17, 255
	l.addi	r20, r20, 284           # CFC
	l.bf	.LBB0_241
	l.nop	0
.LBB0_142:                              # %if.end369
	l.j	.LBB0_19
	l.nop	0                       # in delay slot
.LBB0_71:                               # %if.else168
	l.addi	r18, r18, 72
	l.addi	r4, r0, 255
	l.sfeqi	r5, 255
	l.addi	r20, r20, 144           # CFC
	l.lwz	r11, -12(r2)
	l.addi	r14, r0, 255
	l.addi	r28, r28, 432
	l.lwz	r8, 2536(r12)
	l.addi	r24, r0, 255
	l.lwz	r31, 5084(r22)
	l.bf	.LBB0_242
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 360
	l.sfeqi	r15, 255
	l.addi	r20, r20, 288           # CFC
	l.bf	.LBB0_243
	l.nop	0
.LBB0_72:                               # %if.end191
	l.addi	r18, r18, 73
	l.movhi	r4, 0
	l.sub	r6, r4, r6
	l.movhi	r4, 1024
	l.lwz	r7, -8(r2)
	l.addi	r20, r20, 146           # CFC
	l.or	r7, r7, r4
	l.movhi	r14, 0
	l.sub	r16, r14, r16
	l.movhi	r14, 1024
	l.sw	-8(r2), r7
	l.addi	r28, r28, 438
	l.lwz	r17, 2540(r12)
	l.movhi	r24, 0
	l.or	r17, r17, r14
	l.sw	2540(r12), r17
	l.addi	r18, r18, 365
	l.sub	r26, r24, r26
	l.movhi	r24, 1024
	l.lwz	r27, 5088(r22)
	l.or	r27, r27, r24
	l.sw	5088(r22), r27
	l.addi	r20, r20, 292           # CFC
.LBB0_73:                               # %add2
	l.sfgtsi	r6, 27
	l.bf	.LBB0_244
	l.nop	0                       # in delay slot
	l.sfgtsi	r16, 27
	l.bf	.LBB0_245
	l.nop	0
.LBB0_74:                               # %if.then195
	l.addi	r18, r18, 74
	l.addi	r4, r0, 32
	l.sub	r4, r4, r6
	l.lwz	r11, -8(r2)
	l.sll	r7, r11, r4
	l.addi	r4, r0, 1
	l.addi	r20, r20, 148           # CFC
	l.sfnei	r7, 0
	l.addi	r14, r0, 32
	l.sub	r14, r14, r16
	l.lwz	r8, 2540(r12)
	l.sll	r17, r8, r14
	l.addi	r28, r28, 444
	l.addi	r14, r0, 1
	l.addi	r24, r0, 32
	l.sub	r24, r24, r26
	l.lwz	r31, 5088(r22)
	l.sll	r27, r31, r24
	l.addi	r24, r0, 1
	l.bf	.LBB0_246
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 370
	l.sfnei	r17, 0
	l.addi	r20, r20, 296           # CFC
	l.bf	.LBB0_247
	l.nop	0
.LBB0_249:
	l.addi	r18, r18, 75
	l.addi	r20, r20, 150           # CFC
	l.lwz	r7, -12(r2)
	l.addi	r28, r28, 450
	l.lwz	r17, 2536(r12)
	l.addi	r18, r18, 375
	l.lwz	r27, 5084(r22)
	l.addi	r20, r20, 300           # CFC
.LBB0_75:                               # %if.then195
	l.addi	r18, r18, 76
	l.addi	r20, r20, 152           # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 456
	l.movhi	r14, 0
	l.addi	r18, r18, 380
	l.movhi	r24, 0
	l.addi	r20, r20, 304           # CFC
.LBB0_76:                               # %if.then195
	l.addi	r18, r18, 77
	l.srl	r6, r11, r6
	l.andi	r4, r4, 1
	l.or	r4, r4, r6
	l.addi	r20, r20, 154           # CFC
	l.add	r11, r4, r7
	l.srl	r16, r8, r16
	l.andi	r14, r14, 1
	l.addi	r28, r28, 462
	l.or	r14, r14, r16
	l.add	r8, r14, r17
	l.srl	r26, r31, r26
	l.addi	r18, r18, 385
	l.andi	r24, r24, 1
	l.or	r24, r24, r26
	l.add	r31, r24, r27
	l.addi	r20, r20, 308           # CFC
	l.j	.LBB0_127
	l.nop	0                       # in delay slot
.LBB0_77:                               # %if.else491
	l.addi	r18, r18, 78
	l.ori	r3, r4, 0
	l.addi	r4, r0, 255
	l.sfeqi	r5, 255
	l.ori	r7, r3, 0
	l.addi	r20, r20, 156           # CFC
	l.lwz	r11, -12(r2)
	l.ori	r13, r14, 0
	l.addi	r14, r0, 255
	l.ori	r17, r13, 0
	l.addi	r28, r28, 468
	l.lwz	r8, 2536(r12)
	l.ori	r23, r24, 0
	l.addi	r24, r0, 255
	l.ori	r27, r23, 0
	l.lwz	r31, 5084(r22)
	l.bf	.LBB0_250
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 390
	l.sfeqi	r15, 255
	l.addi	r20, r20, 312           # CFC
	l.bf	.LBB0_251
	l.nop	0
.LBB0_78:                               # %if.end514
	l.addi	r18, r18, 79
	l.movhi	r3, 0
	l.sub	r6, r3, r6
	l.movhi	r3, 1024
	l.lwz	r4, -8(r2)
	l.addi	r20, r20, 158           # CFC
	l.or	r4, r4, r3
	l.movhi	r13, 0
	l.sub	r16, r13, r16
	l.movhi	r13, 1024
	l.sw	-8(r2), r4
	l.addi	r28, r28, 474
	l.lwz	r14, 2540(r12)
	l.movhi	r23, 0
	l.or	r14, r14, r13
	l.sw	2540(r12), r14
	l.addi	r18, r18, 395
	l.sub	r26, r23, r26
	l.movhi	r23, 1024
	l.lwz	r24, 5088(r22)
	l.or	r24, r24, r23
	l.sw	5088(r22), r24
	l.addi	r20, r20, 316           # CFC
.LBB0_79:                               # %sub2
	l.sfgtsi	r6, 27
	l.bf	.LBB0_252
	l.nop	0                       # in delay slot
	l.sfgtsi	r16, 27
	l.bf	.LBB0_253
	l.nop	0
.LBB0_80:                               # %if.then518
	l.addi	r18, r18, 80
	l.addi	r3, r0, 32
	l.sub	r3, r3, r6
	l.lwz	r11, -8(r2)
	l.sll	r4, r11, r3
	l.addi	r3, r0, 1
	l.addi	r20, r20, 160           # CFC
	l.sfnei	r4, 0
	l.addi	r13, r0, 32
	l.sub	r13, r13, r16
	l.lwz	r8, 2540(r12)
	l.sll	r14, r8, r13
	l.addi	r28, r28, 480
	l.addi	r13, r0, 1
	l.addi	r23, r0, 32
	l.sub	r23, r23, r26
	l.lwz	r31, 5088(r22)
	l.sll	r24, r31, r23
	l.addi	r23, r0, 1
	l.bf	.LBB0_254
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 400
	l.sfnei	r14, 0
	l.addi	r20, r20, 320           # CFC
	l.bf	.LBB0_255
	l.nop	0
.LBB0_257:
	l.addi	r18, r18, 81
	l.addi	r20, r20, 162           # CFC
	l.lwz	r4, -12(r2)
	l.addi	r28, r28, 486
	l.lwz	r14, 2536(r12)
	l.addi	r18, r18, 405
	l.lwz	r24, 5084(r22)
	l.addi	r20, r20, 324           # CFC
.LBB0_81:                               # %if.then518
	l.addi	r18, r18, 82
	l.addi	r20, r20, 164           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 492
	l.movhi	r13, 0
	l.addi	r18, r18, 410
	l.movhi	r23, 0
	l.addi	r20, r20, 328           # CFC
.LBB0_82:                               # %if.then518
	l.addi	r18, r18, 83
	l.srl	r4, r11, r6
	l.andi	r3, r3, 1
	l.or	r3, r3, r4
	l.addi	r20, r20, 166           # CFC
	l.lwz	r4, -12(r2)
	l.srl	r14, r8, r16
	l.andi	r13, r13, 1
	l.addi	r28, r28, 498
	l.or	r13, r13, r14
	l.lwz	r14, 2536(r12)
	l.srl	r24, r31, r26
	l.addi	r18, r18, 415
	l.andi	r23, r23, 1
	l.or	r23, r23, r24
	l.lwz	r24, 5084(r22)
	l.addi	r20, r20, 332           # CFC
	l.j	.LBB0_131
	l.nop	0                       # in delay slot
.LBB0_83:                               # %if.else647
	l.addi	r18, r18, 84
	l.movhi	r4, 0
	l.sfeqi	r5, 0
	l.sw	-16(r2), r3
	l.movhi	r3, 0
	l.addi	r20, r20, 168           # CFC
	l.movhi	r11, 0
	l.movhi	r14, 0
	l.sw	2532(r12), r13
	l.movhi	r13, 0
	l.addi	r28, r28, 504
	l.movhi	r8, 0
	l.movhi	r24, 0
	l.sw	5080(r22), r23
	l.movhi	r23, 0
	l.movhi	r31, 0
	l.bf	.LBB0_258
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 420
	l.sfeqi	r15, 0
	l.addi	r20, r20, 336           # CFC
	l.bf	.LBB0_259
	l.nop	0
.LBB0_84:                               # %do.body659
	l.addi	r18, r18, 85
	l.srli	r3, r5, 1
	l.or	r3, r5, r3
	l.srli	r4, r3, 2
	l.or	r3, r3, r4
	l.srli	r4, r3, 4
	l.srli	r13, r15, 1
	l.or	r13, r15, r13
	l.srli	r14, r13, 2
	l.or	r3, r3, r4
	l.or	r13, r13, r14
	l.srli	r23, r25, 1
	l.srli	r4, r3, 8
	l.srli	r14, r13, 4
	l.or	r23, r25, r23
	l.or	r3, r3, r4
	l.or	r13, r13, r14
	l.srli	r24, r23, 2
	l.srli	r4, r3, 16
	l.srli	r14, r13, 8
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.or	r13, r13, r14
	l.srli	r24, r23, 4
	l.movhi	r4, 21845
	l.srli	r14, r13, 16
	l.or	r23, r23, r24
	l.ori	r4, r4, 21845
	l.or	r13, r13, r14
	l.srli	r24, r23, 8
	l.xori	r3, r3, -1
	l.movhi	r14, 21845
	l.or	r23, r23, r24
	l.srli	r6, r3, 1
	l.addi	r20, r20, 170           # CFC
	l.ori	r14, r14, 21845
	l.srli	r24, r23, 16
	l.and	r4, r6, r4
	l.xori	r13, r13, -1
	l.or	r23, r23, r24
	l.sub	r3, r3, r4
	l.srli	r16, r13, 1
	l.movhi	r24, 21845
	l.movhi	r4, 13107
	l.and	r14, r16, r14
	l.ori	r24, r24, 21845
	l.ori	r4, r4, 13107
	l.sub	r13, r13, r14
	l.xori	r23, r23, -1
	l.and	r6, r3, r4
	l.movhi	r14, 13107
	l.srli	r26, r23, 1
	l.srli	r3, r3, 2
	l.ori	r14, r14, 13107
	l.and	r24, r26, r24
	l.and	r3, r3, r4
	l.and	r16, r13, r14
	l.sub	r23, r23, r24
	l.add	r3, r6, r3
	l.srli	r13, r13, 2
	l.movhi	r24, 13107
	l.srli	r4, r3, 4
	l.and	r13, r13, r14
	l.ori	r24, r24, 13107
	l.add	r3, r3, r4
	l.add	r13, r16, r13
	l.and	r26, r23, r24
	l.movhi	r4, 3855
	l.addi	r28, r28, 510
	l.srli	r14, r13, 4
	l.srli	r23, r23, 2
	l.ori	r4, r4, 3855
	l.add	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.movhi	r14, 3855
	l.add	r23, r26, r23
	l.movhi	r4, 257
	l.ori	r14, r14, 3855
	l.srli	r24, r23, 4
	l.ori	r4, r4, 257
	l.and	r13, r13, r14
	l.add	r23, r23, r24
	l.mul	r3, r3, r4
	l.movhi	r14, 257
	l.movhi	r24, 3855
	l.srli	r3, r3, 24
	l.ori	r14, r14, 257
	l.ori	r24, r24, 3855
	l.addi	r4, r3, -5
	l.mul	r13, r13, r14
	l.and	r23, r23, r24
	l.sll	r3, r5, r4
	l.srli	r13, r13, 24
	l.movhi	r24, 257
	l.sfgts	r7, r4
	l.addi	r14, r13, -5
	l.sll	r13, r15, r14
	l.ori	r24, r24, 257
	l.mul	r23, r23, r24
	l.srli	r23, r23, 24
	l.addi	r24, r23, -5
	l.sll	r23, r25, r24
	l.bf	.LBB0_260
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 425
	l.sfgts	r17, r14
	l.addi	r20, r20, 340           # CFC
	l.bf	.LBB0_261
	l.nop	0
.LBB0_85:                               # %if.then669
	l.addi	r18, r18, 86
	l.sub	r4, r4, r7
	l.addi	r5, r0, 31
	l.sub	r6, r5, r4
	l.addi	r4, r4, 1
	l.srl	r5, r3, r4
	l.sub	r14, r14, r17
	l.addi	r15, r0, 31
	l.sub	r16, r15, r14
	l.addi	r20, r20, 172           # CFC
	l.sll	r6, r3, r6
	l.addi	r14, r14, 1
	l.sub	r24, r24, r27
	l.movhi	r4, 0
	l.srl	r15, r13, r14
	l.addi	r25, r0, 31
	l.addi	r3, r0, 1
	l.sll	r16, r13, r16
	l.addi	r28, r28, 516
	l.sub	r26, r25, r24
	l.sfnei	r6, 0
	l.movhi	r14, 0
	l.addi	r13, r0, 1
	l.addi	r24, r24, 1
	l.srl	r25, r23, r24
	l.sll	r26, r23, r26
	l.movhi	r24, 0
	l.addi	r23, r0, 1
	l.bf	.LBB0_262
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 430
	l.sfnei	r16, 0
	l.addi	r20, r20, 344           # CFC
	l.bf	.LBB0_263
	l.nop	0
.LBB0_86:                               # %if.then669
	l.addi	r18, r18, 87
	l.addi	r20, r20, 174           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 522
	l.movhi	r13, 0
	l.addi	r18, r18, 435
	l.movhi	r23, 0
	l.addi	r20, r20, 348           # CFC
.LBB0_87:                               # %if.then669
	l.addi	r18, r18, 88
	l.andi	r3, r3, 1
	l.addi	r20, r20, 176           # CFC
	l.or	r11, r3, r5
	l.andi	r13, r13, 1
	l.addi	r28, r28, 528
	l.or	r8, r13, r15
	l.addi	r18, r18, 440
	l.andi	r23, r23, 1
	l.or	r31, r23, r25
	l.addi	r20, r20, 352           # CFC
	l.j	.LBB0_89
	l.nop	0                       # in delay slot
.LBB0_88:                               # %if.else678
	l.addi	r18, r18, 89
	l.sub	r4, r7, r4
	l.movhi	r5, 64511
	l.ori	r5, r5, 65535
	l.addi	r20, r20, 178           # CFC
	l.and	r11, r3, r5
	l.sub	r14, r17, r14
	l.movhi	r15, 64511
	l.addi	r28, r28, 534
	l.ori	r15, r15, 65535
	l.and	r8, r13, r15
	l.sub	r24, r27, r24
	l.addi	r18, r18, 445
	l.movhi	r25, 64511
	l.ori	r25, r25, 65535
	l.and	r31, r23, r25
	l.addi	r20, r20, 356           # CFC
.LBB0_89:                               # %do.body687
	l.addi	r18, r18, 90
	l.addi	r20, r20, 180           # CFC
	l.lwz	r3, -16(r2)
	l.addi	r28, r28, 540
	l.lwz	r13, 2532(r12)
	l.addi	r18, r18, 450
	l.lwz	r23, 5080(r22)
	l.addi	r20, r20, 360           # CFC
.LBB0_90:                               # %do.body687
	l.addi	r18, r18, 91
	l.andi	r5, r11, 15
	l.addi	r20, r20, 182           # CFC
	l.sfeqi	r5, 4
	l.addi	r28, r28, 546
	l.andi	r15, r8, 15
	l.andi	r25, r31, 15
	l.bf	.LBB0_264
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 455
	l.sfeqi	r15, 4
	l.addi	r20, r20, 364           # CFC
	l.bf	.LBB0_265
	l.nop	0
.LBB0_267:
	l.addi	r18, r18, 92
	l.addi	r20, r20, 184           # CFC
	l.ori	r5, r11, 0
	l.addi	r28, r28, 552
	l.ori	r15, r8, 0
	l.addi	r18, r18, 460
	l.ori	r25, r31, 0
	l.addi	r20, r20, 368           # CFC
.LBB0_91:                               # %do.body687
	l.addi	r18, r18, 93
	l.addi	r20, r20, 186           # CFC
	l.addi	r5, r11, 4
	l.addi	r28, r28, 558
	l.addi	r15, r8, 4
	l.addi	r18, r18, 465
	l.addi	r25, r31, 4
	l.addi	r20, r20, 372           # CFC
.LBB0_92:                               # %do.body687
	l.addi	r18, r18, 94
	l.andi	r6, r11, 7
	l.addi	r20, r20, 188           # CFC
	l.sfeqi	r6, 0
	l.addi	r28, r28, 564
	l.andi	r16, r8, 7
	l.andi	r26, r31, 7
	l.bf	.LBB0_268
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 470
	l.sfeqi	r16, 0
	l.addi	r20, r20, 376           # CFC
	l.bf	.LBB0_269
	l.nop	0
.LBB0_93:                               # %do.body687
	l.addi	r18, r18, 95
	l.addi	r20, r20, 190           # CFC
	l.ori	r11, r5, 0
	l.addi	r28, r28, 570
	l.ori	r8, r15, 0
	l.addi	r18, r18, 475
	l.ori	r31, r25, 0
	l.addi	r20, r20, 380           # CFC
.LBB0_94:                               # %do.body687
	l.addi	r18, r18, 96
	l.movhi	r5, 1024
	l.and	r5, r11, r5
	l.addi	r20, r20, 192           # CFC
	l.sfeqi	r5, 0
	l.movhi	r15, 1024
	l.addi	r28, r28, 576
	l.and	r15, r8, r15
	l.movhi	r25, 1024
	l.and	r25, r31, r25
	l.bf	.LBB0_270
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 480
	l.sfeqi	r15, 0
	l.addi	r20, r20, 384           # CFC
	l.bf	.LBB0_271
	l.nop	0
.LBB0_95:                               # %if.then718
	l.addi	r18, r18, 97
	l.addi	r4, r4, 1
	l.movhi	r5, 0
	l.addi	r20, r20, 194           # CFC
	l.sfeqi	r4, 255
	l.addi	r14, r14, 1
	l.addi	r28, r28, 582
	l.movhi	r15, 0
	l.addi	r24, r24, 1
	l.movhi	r25, 0
	l.bf	.LBB0_272
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 485
	l.sfeqi	r14, 255
	l.addi	r20, r20, 388           # CFC
	l.bf	.LBB0_273
	l.nop	0
.LBB0_96:                               # %if.then718
	l.addi	r18, r18, 98
	l.movhi	r5, 64511
	l.ori	r5, r5, 65535
	l.addi	r20, r20, 196           # CFC
	l.and	r5, r11, r5
	l.movhi	r15, 64511
	l.addi	r28, r28, 588
	l.ori	r15, r15, 65535
	l.and	r15, r8, r15
	l.addi	r18, r18, 490
	l.movhi	r25, 64511
	l.ori	r25, r25, 65535
	l.and	r25, r31, r25
	l.addi	r20, r20, 392           # CFC
.LBB0_97:                               # %if.then718
	l.addi	r18, r18, 99
	l.addi	r20, r20, 198           # CFC
	l.ori	r11, r5, 0
	l.addi	r28, r28, 594
	l.ori	r8, r15, 0
	l.addi	r18, r18, 495
	l.ori	r31, r25, 0
	l.addi	r20, r20, 396           # CFC
.LBB0_98:                               # %if.end728
	l.addi	r18, r18, 100
	l.srli	r5, r11, 3
	l.sfeqi	r5, 0
	l.addi	r20, r20, 200           # CFC
	l.ori	r6, r5, 0
	l.srli	r15, r8, 3
	l.addi	r28, r28, 600
	l.ori	r16, r15, 0
	l.srli	r25, r31, 3
	l.ori	r26, r25, 0
	l.bf	.LBB0_274
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 500
	l.sfeqi	r15, 0
	l.addi	r20, r20, 400           # CFC
	l.bf	.LBB0_275
	l.nop	0
.LBB0_99:                               # %if.end728
	l.addi	r18, r18, 101
	l.movhi	r6, 64
	l.addi	r20, r20, 202           # CFC
	l.or	r6, r5, r6
	l.movhi	r16, 64
	l.addi	r28, r28, 606
	l.or	r16, r15, r16
	l.addi	r18, r18, 505
	l.movhi	r26, 64
	l.or	r26, r25, r26
	l.addi	r20, r20, 404           # CFC
.LBB0_100:                              # %if.end728
	l.sfnei	r4, 255
	l.bf	.LBB0_276
	l.nop	0                       # in delay slot
	l.sfnei	r14, 255
	l.bf	.LBB0_277
	l.nop	0
.LBB0_101:                              # %if.end728
	l.addi	r18, r18, 102
	l.addi	r20, r20, 204           # CFC
	l.ori	r5, r6, 0
	l.addi	r28, r28, 612
	l.ori	r15, r16, 0
	l.addi	r18, r18, 510
	l.ori	r25, r26, 0
	l.addi	r20, r20, 408           # CFC
.LBB0_102:                              # %if.end728
	l.addi	r18, r18, 103
	l.slli	r4, r4, 23
	l.movhi	r6, 32640
	l.and	r4, r4, r6
	l.slli	r3, r3, 31
	l.or	r3, r4, r3
	l.slli	r14, r14, 23
	l.movhi	r16, 32640
	l.and	r14, r14, r16
	l.addi	r20, r20, 206           # CFC
	l.movhi	r4, 127
	l.slli	r13, r13, 31
	l.slli	r24, r24, 23
	l.ori	r4, r4, 65535
	l.or	r13, r14, r13
	l.movhi	r26, 32640
	l.and	r4, r5, r4
	l.movhi	r14, 127
	l.addi	r28, r28, 618
	l.and	r24, r24, r26
	l.or	r11, r3, r4
	l.ori	r14, r14, 65535
	l.slli	r23, r23, 31
	l.addi	r1, r2, 0
	l.and	r14, r15, r14
	l.or	r23, r24, r23
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 515
	l.or	r8, r13, r14
	l.movhi	r24, 127
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.ori	r24, r24, 65535
	l.and	r24, r25, r24
	l.or	r31, r23, r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 412           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB0_145
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB0_103:                              # %do.body237
	l.addi	r18, r18, 104
	l.addi	r4, r0, 255
	l.andi	r5, r5, 1
	l.addi	r20, r20, 208           # CFC
	l.sfnei	r5, 0
	l.addi	r14, r0, 255
	l.addi	r28, r28, 624
	l.andi	r15, r15, 1
	l.addi	r24, r0, 255
	l.andi	r25, r25, 1
	l.bf	.LBB0_278
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 520
	l.sfnei	r15, 0
	l.addi	r20, r20, 416           # CFC
	l.bf	.LBB0_279
	l.nop	0
.LBB0_104:                              # %do.body281
	l.addi	r18, r18, 105
	l.lwz	r5, -8(r2)
	l.srli	r5, r5, 3
	l.lwz	r6, -12(r2)
	l.srli	r6, r6, 3
	l.movhi	r7, 64
	l.lwz	r15, 2540(r12)
	l.addi	r20, r20, 210           # CFC
	l.srli	r15, r15, 3
	l.lwz	r16, 2536(r12)
	l.and	r11, r6, r7
	l.srli	r16, r16, 3
	l.lwz	r25, 5088(r22)
	l.sfeqi	r11, 0
	l.addi	r28, r28, 630
	l.movhi	r17, 64
	l.and	r8, r16, r17
	l.srli	r25, r25, 3
	l.lwz	r26, 5084(r22)
	l.srli	r26, r26, 3
	l.movhi	r27, 64
	l.and	r31, r26, r27
	l.bf	.LBB0_280
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 525
	l.sfeqi	r8, 0
	l.addi	r20, r20, 420           # CFC
	l.bf	.LBB0_281
	l.nop	0
.LBB0_105:                              # %do.body281
	l.addi	r18, r18, 106
	l.addi	r20, r20, 212           # CFC
	l.ori	r6, r5, 0
	l.addi	r28, r28, 636
	l.ori	r16, r15, 0
	l.addi	r18, r18, 530
	l.ori	r26, r25, 0
	l.addi	r20, r20, 424           # CFC
.LBB0_106:                              # %do.body281
	l.addi	r18, r18, 107
	l.and	r7, r5, r7
	l.addi	r20, r20, 214           # CFC
	l.sfnei	r7, 0
	l.addi	r28, r28, 642
	l.and	r17, r15, r17
	l.and	r27, r25, r27
	l.bf	.LBB0_282
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 535
	l.sfnei	r17, 0
	l.addi	r20, r20, 428           # CFC
	l.bf	.LBB0_283
	l.nop	0
.LBB0_107:                              # %do.body281
	l.addi	r18, r18, 108
	l.addi	r20, r20, 216           # CFC
	l.ori	r6, r5, 0
	l.addi	r28, r28, 648
	l.ori	r16, r15, 0
	l.addi	r18, r18, 540
	l.ori	r26, r25, 0
	l.addi	r20, r20, 432           # CFC
.LBB0_108:                              # %do.body281
	l.addi	r18, r18, 109
	l.addi	r20, r20, 218           # CFC
	l.slli	r11, r6, 3
	l.addi	r28, r28, 654
	l.slli	r8, r16, 3
	l.addi	r18, r18, 545
	l.slli	r31, r26, 3
	l.addi	r20, r20, 436           # CFC
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_109:                              # %do.body566
	l.sfnei	r6, 0
	l.bf	.LBB0_284
	l.nop	0                       # in delay slot
	l.sfnei	r16, 0
	l.bf	.LBB0_285
	l.nop	0
.LBB0_110:                              # %if.then604
	l.addi	r18, r18, 110
	l.addi	r3, r0, 1
	l.addi	r20, r20, 220           # CFC
	l.sfeqi	r5, 0
	l.addi	r28, r28, 660
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.bf	.LBB0_286
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 550
	l.sfeqi	r15, 0
	l.addi	r20, r20, 440           # CFC
	l.bf	.LBB0_287
	l.nop	0
.LBB0_111:                              # %if.then604
	l.addi	r18, r18, 111
	l.addi	r20, r20, 222           # CFC
	l.lwz	r3, -16(r2)
	l.addi	r28, r28, 666
	l.lwz	r13, 2532(r12)
	l.addi	r18, r18, 555
	l.lwz	r23, 5080(r22)
	l.addi	r20, r20, 444           # CFC
.LBB0_112:                              # %if.then604
	l.addi	r18, r18, 112
	l.movhi	r11, 512
	l.addi	r20, r20, 224           # CFC
	l.sfeqi	r5, 0
	l.addi	r28, r28, 672
	l.movhi	r8, 512
	l.movhi	r31, 512
	l.bf	.LBB0_288
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 560
	l.sfeqi	r15, 0
	l.addi	r20, r20, 448           # CFC
	l.bf	.LBB0_289
	l.nop	0
.LBB0_113:                              # %if.then604
	l.addi	r18, r18, 113
	l.addi	r20, r20, 226           # CFC
	l.ori	r11, r5, 0
	l.addi	r28, r28, 678
	l.ori	r8, r15, 0
	l.addi	r18, r18, 565
	l.ori	r31, r25, 0
	l.addi	r20, r20, 452           # CFC
.LBB0_114:                              # %if.then604
	l.addi	r18, r18, 114
	l.addi	r20, r20, 228           # CFC
	l.addi	r4, r0, 255
	l.addi	r28, r28, 684
	l.addi	r14, r0, 255
	l.addi	r18, r18, 570
	l.addi	r24, r0, 255
	l.addi	r20, r20, 456           # CFC
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_115:                              # %if.else614
	l.addi	r18, r18, 115
	l.addi	r4, r0, 255
	l.sfeqi	r5, 0
	l.addi	r20, r20, 230           # CFC
	l.ori	r11, r6, 0
	l.addi	r14, r0, 255
	l.addi	r28, r28, 690
	l.ori	r8, r16, 0
	l.addi	r24, r0, 255
	l.ori	r31, r26, 0
	l.bf	.LBB0_290
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 575
	l.sfeqi	r15, 0
	l.addi	r20, r20, 460           # CFC
	l.bf	.LBB0_291
	l.nop	0
.LBB0_116:                              # %do.body619
	l.addi	r18, r18, 116
	l.lwz	r5, -12(r2)
	l.srli	r5, r5, 3
	l.movhi	r6, 64
	l.and	r7, r5, r6
	l.addi	r6, r0, 1
	l.addi	r20, r20, 232           # CFC
	l.sfeqi	r7, 0
	l.lwz	r15, 2536(r12)
	l.srli	r15, r15, 3
	l.movhi	r16, 64
	l.and	r17, r15, r16
	l.addi	r28, r28, 696
	l.addi	r16, r0, 1
	l.lwz	r25, 5084(r22)
	l.srli	r25, r25, 3
	l.movhi	r26, 64
	l.and	r27, r25, r26
	l.addi	r26, r0, 1
	l.bf	.LBB0_292
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 580
	l.sfeqi	r17, 0
	l.addi	r20, r20, 464           # CFC
	l.bf	.LBB0_293
	l.nop	0
.LBB0_117:                              # %do.body619
	l.addi	r18, r18, 117
	l.addi	r20, r20, 234           # CFC
	l.movhi	r6, 0
	l.addi	r28, r28, 702
	l.movhi	r16, 0
	l.addi	r18, r18, 585
	l.movhi	r26, 0
	l.addi	r20, r20, 468           # CFC
.LBB0_118:                              # %do.body619
	l.addi	r18, r18, 118
	l.lwz	r11, -8(r2)
	l.srli	r7, r11, 25
	l.and	r6, r7, r6
	l.andi	r6, r6, 1
	l.addi	r20, r20, 236           # CFC
	l.sfnei	r6, 0
	l.lwz	r8, 2540(r12)
	l.srli	r17, r8, 25
	l.and	r16, r17, r16
	l.addi	r28, r28, 708
	l.andi	r16, r16, 1
	l.lwz	r31, 5088(r22)
	l.srli	r27, r31, 25
	l.and	r26, r27, r26
	l.andi	r26, r26, 1
	l.bf	.LBB0_294
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 590
	l.sfnei	r16, 0
	l.addi	r20, r20, 472           # CFC
	l.bf	.LBB0_295
	l.nop	0
.LBB0_119:                              # %do.body619
	l.addi	r18, r18, 119
	l.addi	r20, r20, 238           # CFC
	l.sw	-16(r2), r3
	l.addi	r28, r28, 714
	l.sw	2532(r12), r13
	l.addi	r18, r18, 595
	l.sw	5080(r22), r23
	l.addi	r20, r20, 476           # CFC
.LBB0_120:                              # %do.body619
	l.sfnei	r6, 0
	l.bf	.LBB0_296
	l.nop	0                       # in delay slot
	l.sfnei	r16, 0
	l.bf	.LBB0_297
	l.nop	0
.LBB0_121:                              # %do.body619
	l.addi	r18, r18, 120
	l.addi	r20, r20, 240           # CFC
	l.srli	r5, r11, 3
	l.addi	r28, r28, 720
	l.srli	r15, r8, 3
	l.addi	r18, r18, 600
	l.srli	r25, r31, 3
	l.addi	r20, r20, 480           # CFC
.LBB0_122:                              # %do.body619
	l.addi	r18, r18, 121
	l.addi	r20, r20, 242           # CFC
	l.slli	r11, r5, 3
	l.addi	r28, r28, 726
	l.slli	r8, r15, 3
	l.addi	r18, r18, 605
	l.slli	r31, r25, 3
	l.addi	r20, r20, 484           # CFC
	l.j	.LBB0_89
	l.nop	0                       # in delay slot
.LBB0_123:                              # %if.else202
	l.addi	r18, r18, 122
	l.addi	r4, r0, 1
	l.lwz	r6, -8(r2)
	l.addi	r20, r20, 244           # CFC
	l.sfnei	r6, 0
	l.addi	r14, r0, 1
	l.addi	r28, r28, 732
	l.lwz	r16, 2540(r12)
	l.addi	r24, r0, 1
	l.lwz	r26, 5088(r22)
	l.bf	.LBB0_298
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 610
	l.sfnei	r16, 0
	l.addi	r20, r20, 488           # CFC
	l.bf	.LBB0_299
	l.nop	0
.LBB0_301:
	l.addi	r18, r18, 123
	l.addi	r20, r20, 246           # CFC
	l.lwz	r6, -12(r2)
	l.addi	r28, r28, 738
	l.lwz	r16, 2536(r12)
	l.addi	r18, r18, 615
	l.lwz	r26, 5084(r22)
	l.addi	r20, r20, 492           # CFC
.LBB0_124:                              # %if.else202
	l.addi	r18, r18, 124
	l.addi	r20, r20, 248           # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 744
	l.movhi	r14, 0
	l.addi	r18, r18, 620
	l.movhi	r24, 0
	l.addi	r20, r20, 496           # CFC
.LBB0_125:                              # %if.else202
	l.addi	r18, r18, 125
	l.addi	r20, r20, 250           # CFC
	l.andi	r4, r4, 1
	l.addi	r28, r28, 750
	l.andi	r14, r14, 1
	l.addi	r18, r18, 625
	l.andi	r24, r24, 1
	l.addi	r20, r20, 500           # CFC
.LBB0_126:                              # %add3
	l.addi	r18, r18, 126
	l.addi	r20, r20, 252           # CFC
	l.add	r11, r4, r6
	l.addi	r28, r28, 756
	l.add	r8, r14, r16
	l.addi	r18, r18, 630
	l.add	r31, r24, r26
	l.addi	r20, r20, 504           # CFC
.LBB0_127:                              # %add3
	l.addi	r18, r18, 127
	l.addi	r20, r20, 254           # CFC
	l.ori	r4, r5, 0
	l.addi	r28, r28, 762
	l.ori	r14, r15, 0
	l.addi	r18, r18, 635
	l.ori	r24, r25, 0
	l.addi	r20, r20, 508           # CFC
	l.j	.LBB0_59
	l.nop	0                       # in delay slot
.LBB0_128:                              # %if.else525
	l.addi	r18, r18, 128
	l.addi	r3, r0, 1
	l.lwz	r4, -8(r2)
	l.addi	r20, r20, 256           # CFC
	l.sfnei	r4, 0
	l.addi	r13, r0, 1
	l.addi	r28, r28, 768
	l.lwz	r14, 2540(r12)
	l.addi	r23, r0, 1
	l.lwz	r24, 5088(r22)
	l.bf	.LBB0_302
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 640
	l.sfnei	r14, 0
	l.addi	r20, r20, 512           # CFC
	l.bf	.LBB0_303
	l.nop	0
.LBB0_305:
	l.addi	r18, r18, 129
	l.addi	r20, r20, 258           # CFC
	l.lwz	r4, -12(r2)
	l.addi	r28, r28, 774
	l.lwz	r14, 2536(r12)
	l.addi	r18, r18, 645
	l.lwz	r24, 5084(r22)
	l.addi	r20, r20, 516           # CFC
.LBB0_129:                              # %if.else525
	l.addi	r18, r18, 130
	l.addi	r20, r20, 260           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 780
	l.movhi	r13, 0
	l.addi	r18, r18, 650
	l.movhi	r23, 0
	l.addi	r20, r20, 520           # CFC
.LBB0_130:                              # %if.else525
	l.addi	r18, r18, 131
	l.addi	r20, r20, 262           # CFC
	l.andi	r3, r3, 1
	l.addi	r28, r28, 786
	l.andi	r13, r13, 1
	l.addi	r18, r18, 655
	l.andi	r23, r23, 1
	l.addi	r20, r20, 524           # CFC
.LBB0_131:                              # %sub3
	l.addi	r18, r18, 132
	l.addi	r20, r20, 264           # CFC
	l.sub	r11, r4, r3
	l.addi	r28, r28, 792
	l.sub	r8, r14, r13
	l.addi	r18, r18, 660
	l.sub	r31, r24, r23
	l.addi	r20, r20, 528           # CFC
.LBB0_132:                              # %sub3
	l.addi	r18, r18, 133
	l.ori	r3, r7, 0
	l.addi	r20, r20, 266           # CFC
	l.ori	r4, r5, 0
	l.ori	r13, r17, 0
	l.addi	r28, r28, 798
	l.ori	r14, r15, 0
	l.addi	r18, r18, 665
	l.ori	r23, r27, 0
	l.ori	r24, r25, 0
	l.addi	r20, r20, 532           # CFC
	l.j	.LBB0_67
	l.nop	0                       # in delay slot
.LBB0_133:                              # %if.end145
	l.addi	r18, r18, 134
	l.addi	r4, r0, 255
	l.xori	r6, r6, -1
	l.sfeqi	r5, 255
	l.addi	r20, r20, 268           # CFC
	l.lwz	r11, -12(r2)
	l.addi	r14, r0, 255
	l.xori	r16, r16, -1
	l.addi	r28, r28, 804
	l.lwz	r8, 2536(r12)
	l.addi	r24, r0, 255
	l.xori	r26, r26, -1
	l.lwz	r31, 5084(r22)
	l.bf	.LBB0_306
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 670
	l.sfeqi	r15, 255
	l.addi	r20, r20, 536           # CFC
	l.bf	.LBB0_307
	l.nop	0
.LBB0_143:                              # %if.end145
	l.j	.LBB0_73
	l.nop	0                       # in delay slot
.LBB0_134:                              # %if.end468
	l.addi	r18, r18, 135
	l.addi	r4, r0, 255
	l.xori	r6, r6, -1
	l.sfeqi	r5, 255
	l.ori	r3, r7, 0
	l.addi	r20, r20, 270           # CFC
	l.lwz	r11, -12(r2)
	l.addi	r14, r0, 255
	l.xori	r16, r16, -1
	l.ori	r13, r17, 0
	l.addi	r28, r28, 810
	l.lwz	r8, 2536(r12)
	l.addi	r24, r0, 255
	l.xori	r26, r26, -1
	l.ori	r23, r27, 0
	l.lwz	r31, 5084(r22)
	l.bf	.LBB0_308
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 675
	l.sfeqi	r15, 255
	l.addi	r20, r20, 540           # CFC
	l.bf	.LBB0_309
	l.nop	0
.LBB0_144:                              # %if.end468
	l.j	.LBB0_79
	l.nop	0                       # in delay slot
.LBB0_135:                              # %if.else549
	l.addi	r18, r18, 136
	l.movhi	r4, 0
	l.sfeqi	r5, 0
	l.addi	r20, r20, 272           # CFC
	l.ori	r11, r6, 0
	l.movhi	r14, 0
	l.addi	r28, r28, 816
	l.ori	r8, r16, 0
	l.movhi	r24, 0
	l.ori	r31, r26, 0
	l.bf	.LBB0_310
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 680
	l.sfeqi	r15, 0
	l.addi	r20, r20, 544           # CFC
	l.bf	.LBB0_311
	l.nop	0
.LBB0_136:                              # %if.else553
	l.addi	r18, r18, 137
	l.lwz	r6, -12(r2)
	l.lwz	r7, -8(r2)
	l.sub	r11, r7, r6
	l.movhi	r5, 1024
	l.and	r5, r11, r5
	l.addi	r20, r20, 274           # CFC
	l.sfeqi	r5, 0
	l.lwz	r16, 2536(r12)
	l.lwz	r17, 2540(r12)
	l.sub	r8, r17, r16
	l.movhi	r15, 1024
	l.addi	r28, r28, 822
	l.and	r15, r8, r15
	l.lwz	r26, 5084(r22)
	l.lwz	r27, 5088(r22)
	l.sub	r31, r27, r26
	l.movhi	r25, 1024
	l.and	r25, r31, r25
	l.bf	.LBB0_312
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 685
	l.sfeqi	r15, 0
	l.addi	r20, r20, 548           # CFC
	l.bf	.LBB0_313
	l.nop	0
.LBB0_137:                              # %if.then557
	l.addi	r18, r18, 138
	l.addi	r20, r20, 276           # CFC
	l.sub	r11, r6, r7
	l.addi	r28, r28, 828
	l.sub	r8, r16, r17
	l.addi	r18, r18, 690
	l.sub	r31, r26, r27
	l.addi	r20, r20, 552           # CFC
	l.j	.LBB0_89
	l.nop	0                       # in delay slot
.LBB0_138:                              # %if.else559
	l.addi	r18, r18, 139
	l.movhi	r4, 0
	l.sfeqi	r11, 0
	l.addi	r20, r20, 278           # CFC
	l.movhi	r5, 0
	l.movhi	r14, 0
	l.addi	r28, r28, 834
	l.movhi	r15, 0
	l.movhi	r24, 0
	l.movhi	r25, 0
	l.bf	.LBB0_314
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 695
	l.sfeqi	r8, 0
	l.addi	r20, r20, 556           # CFC
	l.bf	.LBB0_315
	l.nop	0
.LBB0_139:                              # %if.else559
	l.addi	r18, r18, 140
	l.addi	r20, r20, 280           # CFC
	l.ori	r5, r3, 0
	l.addi	r28, r28, 840
	l.ori	r15, r13, 0
	l.addi	r18, r18, 700
	l.ori	r25, r23, 0
	l.addi	r20, r20, 560           # CFC
.LBB0_140:                              # %if.else559
	l.addi	r18, r18, 141
	l.addi	r20, r20, 282           # CFC
	l.ori	r3, r5, 0
	l.addi	r28, r28, 846
	l.ori	r13, r15, 0
	l.addi	r18, r18, 705
	l.ori	r23, r25, 0
	l.addi	r20, r20, 564           # CFC
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_145:                              # %if.else559
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB0_316
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB0_316
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB0_316
	l.nop	0
	l.nop	205
.LBB0_316:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB0_317
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB0_317
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB0_317
	l.nop	0
	l.nop	205
.LBB0_317:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB0_318
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB0_318
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB0_318
	l.nop	0
	l.nop	205
.LBB0_318:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB0_319
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB0_319
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB0_319
	l.nop	0
	l.nop	205
.LBB0_319:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB0_320
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB0_320
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB0_320
	l.nop	0
	l.nop	205
.LBB0_320:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB0_321
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB0_321
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB0_321
	l.nop	0
	l.nop	205
.LBB0_321:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB0_322
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB0_322
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB0_322
	l.nop	0
	l.nop	205
.LBB0_322:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB0_323
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB0_323
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB0_323
	l.nop	0
	l.nop	205
.LBB0_323:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB0_324
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB0_324
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB0_324
	l.nop	0
	l.nop	205
.LBB0_324:
.LBB0_325:
	l.jr	r30
	l.nop	0
.LBB0_146:
	l.addi	r18, r18, 50
	l.sfne	r13, r14
	l.addi	r20, r20, 40            # CFC
	l.bf	.LBB0_6
	l.nop	0
.LBB0_147:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfne	r3, r4
	l.bf	.LBB0_6
	l.nop	0
	l.j	.LBB0_1
	l.nop	0
.LBB0_148:
	l.sfltsi	r16, 1
	l.bf	.LBB0_23
	l.nop	0
.LBB0_149:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfltsi	r6, 1
	l.bf	.LBB0_23
	l.nop	0
	l.j	.LBB0_2
	l.nop	0
.LBB0_150:
	l.sfnei	r15, 0
	l.bf	.LBB0_11
	l.nop	0
.LBB0_151:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB0_11
	l.nop	0
	l.j	.LBB0_3
	l.nop	0
.LBB0_152:
	l.addi	r18, r18, 55
	l.sfeqi	r14, 0
	l.addi	r20, r20, 44            # CFC
	l.bf	.LBB0_154
	l.nop	0
.LBB0_153:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB0_154
	l.nop	0
	l.j	.LBB0_155
	l.nop	0
.LBB0_154:
	l.addi	r18, r18, 142
	l.addi	r20, r20, 284           # CFC
	l.ori	r4, r7, 0
	l.addi	r28, r28, 852
	l.ori	r14, r17, 0
	l.addi	r18, r18, 710
	l.ori	r24, r27, 0
	l.addi	r20, r20, 568           # CFC
	l.j	.LBB0_90
	l.nop	0
.LBB0_156:
	l.addi	r18, r18, 65
	l.sfnei	r16, 0
	l.addi	r20, r20, 52            # CFC
	l.bf	.LBB0_69
	l.nop	0
.LBB0_157:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r6, 0
	l.bf	.LBB0_69
	l.nop	0
	l.j	.LBB0_5
	l.nop	0
.LBB0_158:
	l.sfltsi	r16, 1
	l.bf	.LBB0_28
	l.nop	0
.LBB0_159:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfltsi	r6, 1
	l.bf	.LBB0_28
	l.nop	0
	l.j	.LBB0_7
	l.nop	0
.LBB0_160:
	l.sfnei	r15, 0
	l.bf	.LBB0_17
	l.nop	0
.LBB0_161:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB0_17
	l.nop	0
	l.j	.LBB0_8
	l.nop	0
.LBB0_162:
	l.addi	r18, r18, 75
	l.sfeqi	r14, 0
	l.addi	r20, r20, 60            # CFC
	l.bf	.LBB0_164
	l.nop	0
.LBB0_163:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB0_164
	l.nop	0
	l.j	.LBB0_165
	l.nop	0
.LBB0_164:
	l.addi	r18, r18, 143
	l.addi	r20, r20, 286           # CFC
	l.ori	r4, r7, 0
	l.addi	r28, r28, 858
	l.ori	r14, r17, 0
	l.addi	r18, r18, 715
	l.ori	r24, r27, 0
	l.addi	r20, r20, 572           # CFC
	l.j	.LBB0_90
	l.nop	0
.LBB0_166:
	l.addi	r18, r18, 85
	l.sfnei	r16, 0
	l.addi	r20, r20, 68            # CFC
	l.bf	.LBB0_70
	l.nop	0
.LBB0_167:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r6, 0
	l.bf	.LBB0_70
	l.nop	0
	l.j	.LBB0_10
	l.nop	0
.LBB0_168:
	l.addi	r18, r18, 95
	l.sfeqi	r17, 255
	l.addi	r20, r20, 76            # CFC
	l.bf	.LBB0_90
	l.nop	0
.LBB0_169:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r7, 255
	l.bf	.LBB0_90
	l.nop	0
	l.j	.LBB0_12
	l.nop	0
.LBB0_170:
	l.sfgtsi	r16, 27
	l.bf	.LBB0_55
	l.nop	0
.LBB0_171:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfgtsi	r6, 27
	l.bf	.LBB0_55
	l.nop	0
	l.j	.LBB0_14
	l.nop	0
.LBB0_172:
	l.addi	r18, r18, 105
	l.sfnei	r15, 0
	l.addi	r20, r20, 84            # CFC
	l.bf	.LBB0_16
	l.nop	0
.LBB0_173:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB0_16
	l.nop	0
	l.j	.LBB0_15
	l.nop	0
.LBB0_174:
	l.addi	r18, r18, 120
	l.sfeqi	r17, 255
	l.addi	r20, r20, 96            # CFC
	l.bf	.LBB0_90
	l.nop	0
.LBB0_175:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r7, 255
	l.bf	.LBB0_90
	l.nop	0
	l.j	.LBB0_18
	l.nop	0
.LBB0_176:
	l.sfgtsi	r16, 27
	l.bf	.LBB0_63
	l.nop	0
.LBB0_177:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfgtsi	r6, 27
	l.bf	.LBB0_63
	l.nop	0
	l.j	.LBB0_20
	l.nop	0
.LBB0_178:
	l.addi	r18, r18, 130
	l.sfnei	r15, 0
	l.addi	r20, r20, 104           # CFC
	l.bf	.LBB0_22
	l.nop	0
.LBB0_179:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB0_22
	l.nop	0
	l.j	.LBB0_21
	l.nop	0
.LBB0_180:
	l.sfgtsi	r16, -1
	l.bf	.LBB0_33
	l.nop	0
.LBB0_181:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfgtsi	r6, -1
	l.bf	.LBB0_33
	l.nop	0
	l.j	.LBB0_24
	l.nop	0
.LBB0_182:
	l.sfnei	r17, 0
	l.bf	.LBB0_71
	l.nop	0
.LBB0_183:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB0_71
	l.nop	0
	l.j	.LBB0_25
	l.nop	0
.LBB0_184:
	l.addi	r18, r18, 145
	l.sfeqi	r14, 0
	l.addi	r20, r20, 116           # CFC
	l.bf	.LBB0_186
	l.nop	0
.LBB0_185:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB0_186
	l.nop	0
	l.j	.LBB0_187
	l.nop	0
.LBB0_186:
	l.addi	r18, r18, 144
	l.addi	r20, r20, 288           # CFC
	l.ori	r4, r5, 0
	l.addi	r28, r28, 864
	l.ori	r14, r15, 0
	l.addi	r18, r18, 720
	l.ori	r24, r25, 0
	l.addi	r20, r20, 576           # CFC
	l.j	.LBB0_90
	l.nop	0
.LBB0_188:
	l.sfnei	r16, -1
	l.bf	.LBB0_133
	l.nop	0
.LBB0_189:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r6, -1
	l.bf	.LBB0_133
	l.nop	0
	l.j	.LBB0_27
	l.nop	0
.LBB0_190:
	l.sfgtsi	r16, -1
	l.bf	.LBB0_45
	l.nop	0
.LBB0_191:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfgtsi	r6, -1
	l.bf	.LBB0_45
	l.nop	0
	l.j	.LBB0_29
	l.nop	0
.LBB0_192:
	l.sfnei	r17, 0
	l.bf	.LBB0_77
	l.nop	0
.LBB0_193:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB0_77
	l.nop	0
	l.j	.LBB0_30
	l.nop	0
.LBB0_194:
	l.addi	r18, r18, 160
	l.sfeqi	r13, 0
	l.addi	r20, r20, 128           # CFC
	l.bf	.LBB0_196
	l.nop	0
.LBB0_195:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB0_196
	l.nop	0
	l.j	.LBB0_197
	l.nop	0
.LBB0_196:
	l.addi	r18, r18, 145
	l.ori	r3, r4, 0
	l.addi	r20, r20, 290           # CFC
	l.ori	r4, r5, 0
	l.ori	r13, r14, 0
	l.addi	r28, r28, 870
	l.ori	r14, r15, 0
	l.addi	r18, r18, 725
	l.ori	r23, r24, 0
	l.ori	r24, r25, 0
	l.addi	r20, r20, 580           # CFC
	l.j	.LBB0_90
	l.nop	0
.LBB0_198:
	l.sfnei	r16, -1
	l.bf	.LBB0_134
	l.nop	0
.LBB0_199:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r6, -1
	l.bf	.LBB0_134
	l.nop	0
	l.j	.LBB0_32
	l.nop	0
.LBB0_200:
	l.addi	r18, r18, 175
	l.sfnei	r14, 0
	l.addi	r20, r20, 140           # CFC
	l.bf	.LBB0_51
	l.nop	0
.LBB0_201:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB0_51
	l.nop	0
	l.j	.LBB0_34
	l.nop	0
.LBB0_202:
	l.addi	r18, r18, 180
	l.sfeqi	r16, 0
	l.addi	r20, r20, 144           # CFC
	l.bf	.LBB0_36
	l.nop	0
.LBB0_203:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r6, 0
	l.bf	.LBB0_36
	l.nop	0
	l.j	.LBB0_35
	l.nop	0
.LBB0_204:
	l.addi	r18, r18, 190
	l.sfeqi	r8, 0
	l.addi	r20, r20, 152           # CFC
	l.bf	.LBB0_38
	l.nop	0
.LBB0_205:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB0_38
	l.nop	0
	l.j	.LBB0_37
	l.nop	0
.LBB0_206:
	l.sfeqi	r8, 0
	l.bf	.LBB0_208
	l.nop	0
.LBB0_207:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB0_208
	l.nop	0
	l.j	.LBB0_209
	l.nop	0
.LBB0_208:
	l.addi	r18, r18, 146
	l.addi	r20, r20, 292           # CFC
	l.ori	r11, r6, 0
	l.addi	r28, r28, 876
	l.ori	r8, r16, 0
	l.addi	r18, r18, 730
	l.ori	r31, r26, 0
	l.addi	r20, r20, 584           # CFC
	l.j	.LBB0_40
	l.nop	0
.LBB0_210:
	l.addi	r18, r18, 210
	l.sfnei	r17, 0
	l.addi	r20, r20, 168           # CFC
	l.bf	.LBB0_103
	l.nop	0
.LBB0_211:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB0_103
	l.nop	0
	l.j	.LBB0_41
	l.nop	0
.LBB0_212:
	l.addi	r18, r18, 215
	l.sfnei	r15, 0
	l.addi	r20, r20, 172           # CFC
	l.bf	.LBB0_90
	l.nop	0
.LBB0_213:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB0_90
	l.nop	0
	l.j	.LBB0_42
	l.nop	0
.LBB0_214:
	l.addi	r18, r18, 220
	l.sfeqi	r15, 0
	l.addi	r20, r20, 176           # CFC
	l.bf	.LBB0_44
	l.nop	0
.LBB0_215:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB0_44
	l.nop	0
	l.j	.LBB0_43
	l.nop	0
.LBB0_216:
	l.addi	r18, r18, 235
	l.sfnei	r14, 0
	l.addi	r20, r20, 188           # CFC
	l.bf	.LBB0_53
	l.nop	0
.LBB0_217:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB0_53
	l.nop	0
	l.j	.LBB0_46
	l.nop	0
.LBB0_218:
	l.addi	r18, r18, 240
	l.sfnei	r17, 0
	l.addi	r20, r20, 192           # CFC
	l.bf	.LBB0_109
	l.nop	0
.LBB0_219:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB0_109
	l.nop	0
	l.j	.LBB0_47
	l.nop	0
.LBB0_220:
	l.sfnei	r16, 0
	l.bf	.LBB0_135
	l.nop	0
.LBB0_221:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r6, 0
	l.bf	.LBB0_135
	l.nop	0
	l.j	.LBB0_48
	l.nop	0
.LBB0_222:
	l.addi	r18, r18, 245
	l.sfeqi	r15, 0
	l.addi	r20, r20, 196           # CFC
	l.bf	.LBB0_50
	l.nop	0
.LBB0_223:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB0_50
	l.nop	0
	l.j	.LBB0_49
	l.nop	0
.LBB0_224:
	l.addi	r18, r18, 260
	l.sfeqi	r14, 255
	l.addi	r20, r20, 208           # CFC
	l.bf	.LBB0_90
	l.nop	0
.LBB0_225:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r4, 255
	l.bf	.LBB0_90
	l.nop	0
	l.j	.LBB0_52
	l.nop	0
.LBB0_226:
	l.addi	r18, r18, 270
	l.sfeqi	r14, 0
	l.addi	r20, r20, 216           # CFC
	l.bf	.LBB0_83
	l.nop	0
.LBB0_227:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB0_83
	l.nop	0
	l.j	.LBB0_54
	l.nop	0
.LBB0_228:
	l.addi	r18, r18, 280
	l.sfnei	r15, 0
	l.addi	r20, r20, 224           # CFC
	l.bf	.LBB0_57
	l.nop	0
.LBB0_229:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB0_57
	l.nop	0
	l.j	.LBB0_56
	l.nop	0
.LBB0_230:
	l.addi	r18, r18, 300
	l.sfeqi	r15, 0
	l.addi	r20, r20, 240           # CFC
	l.bf	.LBB0_90
	l.nop	0
.LBB0_231:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB0_90
	l.nop	0
	l.j	.LBB0_60
	l.nop	0
.LBB0_232:
	l.addi	r18, r18, 305
	l.sfeqi	r14, 255
	l.addi	r20, r20, 244           # CFC
	l.bf	.LBB0_62
	l.nop	0
.LBB0_233:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r4, 255
	l.bf	.LBB0_62
	l.nop	0
	l.j	.LBB0_61
	l.nop	0
.LBB0_234:
	l.addi	r18, r18, 320
	l.sfnei	r15, 0
	l.addi	r20, r20, 256           # CFC
	l.bf	.LBB0_65
	l.nop	0
.LBB0_235:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB0_65
	l.nop	0
	l.j	.LBB0_64
	l.nop	0
.LBB0_236:
	l.addi	r18, r18, 340
	l.sfeqi	r15, 0
	l.addi	r20, r20, 272           # CFC
	l.bf	.LBB0_90
	l.nop	0
.LBB0_237:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB0_90
	l.nop	0
	l.j	.LBB0_68
	l.nop	0
.LBB0_238:
	l.addi	r18, r18, 350
	l.sfeqi	r17, 255
	l.addi	r20, r20, 280           # CFC
	l.bf	.LBB0_90
	l.nop	0
.LBB0_239:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r7, 255
	l.bf	.LBB0_90
	l.nop	0
	l.j	.LBB0_141
	l.nop	0
.LBB0_240:
	l.addi	r18, r18, 355
	l.sfeqi	r17, 255
	l.addi	r20, r20, 284           # CFC
	l.bf	.LBB0_90
	l.nop	0
.LBB0_241:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r7, 255
	l.bf	.LBB0_90
	l.nop	0
	l.j	.LBB0_142
	l.nop	0
.LBB0_242:
	l.addi	r18, r18, 360
	l.sfeqi	r15, 255
	l.addi	r20, r20, 288           # CFC
	l.bf	.LBB0_90
	l.nop	0
.LBB0_243:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r5, 255
	l.bf	.LBB0_90
	l.nop	0
	l.j	.LBB0_72
	l.nop	0
.LBB0_244:
	l.sfgtsi	r16, 27
	l.bf	.LBB0_123
	l.nop	0
.LBB0_245:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfgtsi	r6, 27
	l.bf	.LBB0_123
	l.nop	0
	l.j	.LBB0_74
	l.nop	0
.LBB0_246:
	l.addi	r18, r18, 370
	l.sfnei	r17, 0
	l.addi	r20, r20, 296           # CFC
	l.bf	.LBB0_248
	l.nop	0
.LBB0_247:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB0_248
	l.nop	0
	l.j	.LBB0_249
	l.nop	0
.LBB0_248:
	l.addi	r18, r18, 147
	l.addi	r20, r20, 294           # CFC
	l.lwz	r7, -12(r2)
	l.addi	r28, r28, 882
	l.lwz	r17, 2536(r12)
	l.addi	r18, r18, 735
	l.lwz	r27, 5084(r22)
	l.addi	r20, r20, 588           # CFC
	l.j	.LBB0_76
	l.nop	0
.LBB0_250:
	l.addi	r18, r18, 390
	l.sfeqi	r15, 255
	l.addi	r20, r20, 312           # CFC
	l.bf	.LBB0_90
	l.nop	0
.LBB0_251:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r5, 255
	l.bf	.LBB0_90
	l.nop	0
	l.j	.LBB0_78
	l.nop	0
.LBB0_252:
	l.sfgtsi	r16, 27
	l.bf	.LBB0_128
	l.nop	0
.LBB0_253:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfgtsi	r6, 27
	l.bf	.LBB0_128
	l.nop	0
	l.j	.LBB0_80
	l.nop	0
.LBB0_254:
	l.addi	r18, r18, 400
	l.sfnei	r14, 0
	l.addi	r20, r20, 320           # CFC
	l.bf	.LBB0_256
	l.nop	0
.LBB0_255:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB0_256
	l.nop	0
	l.j	.LBB0_257
	l.nop	0
.LBB0_256:
	l.addi	r18, r18, 148
	l.addi	r20, r20, 296           # CFC
	l.lwz	r4, -12(r2)
	l.addi	r28, r28, 888
	l.lwz	r14, 2536(r12)
	l.addi	r18, r18, 740
	l.lwz	r24, 5084(r22)
	l.addi	r20, r20, 592           # CFC
	l.j	.LBB0_82
	l.nop	0
.LBB0_258:
	l.addi	r18, r18, 420
	l.sfeqi	r15, 0
	l.addi	r20, r20, 336           # CFC
	l.bf	.LBB0_90
	l.nop	0
.LBB0_259:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB0_90
	l.nop	0
	l.j	.LBB0_84
	l.nop	0
.LBB0_260:
	l.addi	r18, r18, 425
	l.sfgts	r17, r14
	l.addi	r20, r20, 340           # CFC
	l.bf	.LBB0_88
	l.nop	0
.LBB0_261:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfgts	r7, r4
	l.bf	.LBB0_88
	l.nop	0
	l.j	.LBB0_85
	l.nop	0
.LBB0_262:
	l.addi	r18, r18, 430
	l.sfnei	r16, 0
	l.addi	r20, r20, 344           # CFC
	l.bf	.LBB0_87
	l.nop	0
.LBB0_263:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r6, 0
	l.bf	.LBB0_87
	l.nop	0
	l.j	.LBB0_86
	l.nop	0
.LBB0_264:
	l.addi	r18, r18, 455
	l.sfeqi	r15, 4
	l.addi	r20, r20, 364           # CFC
	l.bf	.LBB0_266
	l.nop	0
.LBB0_265:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r5, 4
	l.bf	.LBB0_266
	l.nop	0
	l.j	.LBB0_267
	l.nop	0
.LBB0_266:
	l.addi	r18, r18, 149
	l.addi	r20, r20, 298           # CFC
	l.ori	r5, r11, 0
	l.addi	r28, r28, 894
	l.ori	r15, r8, 0
	l.addi	r18, r18, 745
	l.ori	r25, r31, 0
	l.addi	r20, r20, 596           # CFC
	l.j	.LBB0_92
	l.nop	0
.LBB0_268:
	l.addi	r18, r18, 470
	l.sfeqi	r16, 0
	l.addi	r20, r20, 376           # CFC
	l.bf	.LBB0_94
	l.nop	0
.LBB0_269:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r6, 0
	l.bf	.LBB0_94
	l.nop	0
	l.j	.LBB0_93
	l.nop	0
.LBB0_270:
	l.addi	r18, r18, 480
	l.sfeqi	r15, 0
	l.addi	r20, r20, 384           # CFC
	l.bf	.LBB0_98
	l.nop	0
.LBB0_271:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB0_98
	l.nop	0
	l.j	.LBB0_95
	l.nop	0
.LBB0_272:
	l.addi	r18, r18, 485
	l.sfeqi	r14, 255
	l.addi	r20, r20, 388           # CFC
	l.bf	.LBB0_97
	l.nop	0
.LBB0_273:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r4, 255
	l.bf	.LBB0_97
	l.nop	0
	l.j	.LBB0_96
	l.nop	0
.LBB0_274:
	l.addi	r18, r18, 500
	l.sfeqi	r15, 0
	l.addi	r20, r20, 400           # CFC
	l.bf	.LBB0_100
	l.nop	0
.LBB0_275:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB0_100
	l.nop	0
	l.j	.LBB0_99
	l.nop	0
.LBB0_276:
	l.sfnei	r14, 255
	l.bf	.LBB0_102
	l.nop	0
.LBB0_277:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r4, 255
	l.bf	.LBB0_102
	l.nop	0
	l.j	.LBB0_101
	l.nop	0
.LBB0_278:
	l.addi	r18, r18, 520
	l.sfnei	r15, 0
	l.addi	r20, r20, 416           # CFC
	l.bf	.LBB0_90
	l.nop	0
.LBB0_279:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB0_90
	l.nop	0
	l.j	.LBB0_104
	l.nop	0
.LBB0_280:
	l.addi	r18, r18, 525
	l.sfeqi	r8, 0
	l.addi	r20, r20, 420           # CFC
	l.bf	.LBB0_106
	l.nop	0
.LBB0_281:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB0_106
	l.nop	0
	l.j	.LBB0_105
	l.nop	0
.LBB0_282:
	l.addi	r18, r18, 535
	l.sfnei	r17, 0
	l.addi	r20, r20, 428           # CFC
	l.bf	.LBB0_108
	l.nop	0
.LBB0_283:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB0_108
	l.nop	0
	l.j	.LBB0_107
	l.nop	0
.LBB0_284:
	l.sfnei	r16, 0
	l.bf	.LBB0_115
	l.nop	0
.LBB0_285:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r6, 0
	l.bf	.LBB0_115
	l.nop	0
	l.j	.LBB0_110
	l.nop	0
.LBB0_286:
	l.addi	r18, r18, 550
	l.sfeqi	r15, 0
	l.addi	r20, r20, 440           # CFC
	l.bf	.LBB0_112
	l.nop	0
.LBB0_287:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB0_112
	l.nop	0
	l.j	.LBB0_111
	l.nop	0
.LBB0_288:
	l.addi	r18, r18, 560
	l.sfeqi	r15, 0
	l.addi	r20, r20, 448           # CFC
	l.bf	.LBB0_114
	l.nop	0
.LBB0_289:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB0_114
	l.nop	0
	l.j	.LBB0_113
	l.nop	0
.LBB0_290:
	l.addi	r18, r18, 575
	l.sfeqi	r15, 0
	l.addi	r20, r20, 460           # CFC
	l.bf	.LBB0_90
	l.nop	0
.LBB0_291:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB0_90
	l.nop	0
	l.j	.LBB0_116
	l.nop	0
.LBB0_292:
	l.addi	r18, r18, 580
	l.sfeqi	r17, 0
	l.addi	r20, r20, 464           # CFC
	l.bf	.LBB0_118
	l.nop	0
.LBB0_293:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r7, 0
	l.bf	.LBB0_118
	l.nop	0
	l.j	.LBB0_117
	l.nop	0
.LBB0_294:
	l.addi	r18, r18, 590
	l.sfnei	r16, 0
	l.addi	r20, r20, 472           # CFC
	l.bf	.LBB0_120
	l.nop	0
.LBB0_295:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r6, 0
	l.bf	.LBB0_120
	l.nop	0
	l.j	.LBB0_119
	l.nop	0
.LBB0_296:
	l.sfnei	r16, 0
	l.bf	.LBB0_122
	l.nop	0
.LBB0_297:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r6, 0
	l.bf	.LBB0_122
	l.nop	0
	l.j	.LBB0_121
	l.nop	0
.LBB0_298:
	l.addi	r18, r18, 610
	l.sfnei	r16, 0
	l.addi	r20, r20, 488           # CFC
	l.bf	.LBB0_300
	l.nop	0
.LBB0_299:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r6, 0
	l.bf	.LBB0_300
	l.nop	0
	l.j	.LBB0_301
	l.nop	0
.LBB0_300:
	l.addi	r18, r18, 150
	l.addi	r20, r20, 300           # CFC
	l.lwz	r6, -12(r2)
	l.addi	r28, r28, 900
	l.lwz	r16, 2536(r12)
	l.addi	r18, r18, 750
	l.lwz	r26, 5084(r22)
	l.addi	r20, r20, 600           # CFC
	l.j	.LBB0_125
	l.nop	0
.LBB0_302:
	l.addi	r18, r18, 640
	l.sfnei	r14, 0
	l.addi	r20, r20, 512           # CFC
	l.bf	.LBB0_304
	l.nop	0
.LBB0_303:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB0_304
	l.nop	0
	l.j	.LBB0_305
	l.nop	0
.LBB0_304:
	l.addi	r18, r18, 151
	l.addi	r20, r20, 302           # CFC
	l.lwz	r4, -12(r2)
	l.addi	r28, r28, 906
	l.lwz	r14, 2536(r12)
	l.addi	r18, r18, 755
	l.lwz	r24, 5084(r22)
	l.addi	r20, r20, 604           # CFC
	l.j	.LBB0_130
	l.nop	0
.LBB0_306:
	l.addi	r18, r18, 670
	l.sfeqi	r15, 255
	l.addi	r20, r20, 536           # CFC
	l.bf	.LBB0_90
	l.nop	0
.LBB0_307:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r5, 255
	l.bf	.LBB0_90
	l.nop	0
	l.j	.LBB0_143
	l.nop	0
.LBB0_308:
	l.addi	r18, r18, 675
	l.sfeqi	r15, 255
	l.addi	r20, r20, 540           # CFC
	l.bf	.LBB0_90
	l.nop	0
.LBB0_309:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r5, 255
	l.bf	.LBB0_90
	l.nop	0
	l.j	.LBB0_144
	l.nop	0
.LBB0_310:
	l.addi	r18, r18, 680
	l.sfeqi	r15, 0
	l.addi	r20, r20, 544           # CFC
	l.bf	.LBB0_90
	l.nop	0
.LBB0_311:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB0_90
	l.nop	0
	l.j	.LBB0_136
	l.nop	0
.LBB0_312:
	l.addi	r18, r18, 685
	l.sfeqi	r15, 0
	l.addi	r20, r20, 548           # CFC
	l.bf	.LBB0_138
	l.nop	0
.LBB0_313:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB0_138
	l.nop	0
	l.j	.LBB0_137
	l.nop	0
.LBB0_314:
	l.addi	r18, r18, 695
	l.sfeqi	r8, 0
	l.addi	r20, r20, 556           # CFC
	l.bf	.LBB0_140
	l.nop	0
.LBB0_315:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB0_145
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB0_140
	l.nop	0
	l.j	.LBB0_139
	l.nop	0
.Lfunc_end0:
	.size	__addsf3, .Lfunc_end0-__addsf3

	.hidden	__muldi3
	.globl	__muldi3
	.p2align	2
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 152
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -28
	l.sw	-12(r2), r5
	l.sw	-24(r2), r3
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -28
	l.andi	r5, r4, 65535
	l.sw	2536(r12), r15
	l.sw	5092(r21), r22
	l.andi	r7, r6, 65535
	l.sw	2524(r12), r13
	l.addi	r22, r21, 0             # CFC
	l.mul	r11, r7, r5
	l.andi	r15, r14, 65535
	l.addi	r21, r21, -28           # CFC
	l.sw	-16(r2), r6
	l.andi	r17, r16, 65535
	l.addi	r20, r20, 304           # CFC
	l.sw	5084(r22), r25
	l.srli	r3, r6, 16
	l.mul	r8, r17, r15
	l.sw	5072(r22), r23
	l.sw	-28(r2), r3
	l.sw	2532(r12), r16
	l.andi	r25, r24, 65535
	l.mul	r5, r3, r5
	l.srli	r13, r16, 16
	l.andi	r27, r26, 65535
	l.sw	-20(r2), r4
	l.sw	2520(r12), r13
	l.mul	r31, r27, r25
	l.srli	r3, r4, 16
	l.mul	r15, r13, r15
	l.sw	5080(r22), r26
	l.mul	r6, r7, r3
	l.sw	2528(r12), r14
	l.srli	r23, r26, 16
	l.add	r5, r6, r5
	l.srli	r13, r14, 16
	l.sw	5068(r22), r23
	l.sw	-8(r2), r11
	l.mul	r16, r17, r13
	l.mul	r25, r23, r25
	l.addi	r28, r28, 912
	l.srli	r7, r11, 16
	l.add	r15, r16, r15
	l.sw	5076(r22), r24
	l.add	r7, r5, r7
	l.sw	2540(r12), r8
	l.srli	r23, r24, 16
	l.lwz	r4, -28(r2)
	l.srli	r17, r8, 16
	l.mul	r26, r27, r23
	l.mul	r11, r4, r3
	l.add	r17, r15, r17
	l.add	r25, r26, r25
	l.movhi	r3, 1
	l.lwz	r14, 2520(r12)
	l.sw	5088(r22), r31
	l.add	r5, r11, r3
	l.mul	r8, r14, r13
	l.srli	r27, r31, 16
	l.sfltu	r7, r6
	l.movhi	r13, 1
	l.add	r15, r8, r13
	l.add	r27, r25, r27
	l.lwz	r24, 5068(r22)
	l.mul	r31, r24, r23
	l.movhi	r23, 1
	l.add	r25, r31, r23
	l.bf	.LBB1_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 760
	l.sfltu	r17, r16
	l.addi	r20, r20, 608           # CFC
	l.bf	.LBB1_5
	l.nop	0
.LBB1_1:                                # %entry
	l.addi	r18, r18, 153
	l.addi	r20, r20, 306           # CFC
	l.ori	r5, r11, 0
	l.addi	r28, r28, 918
	l.ori	r15, r8, 0
	l.addi	r18, r18, 765
	l.ori	r25, r31, 0
	l.addi	r20, r20, 612           # CFC
.LBB1_2:                                # %entry
	l.addi	r18, r18, 154
	l.lwz	r3, -16(r2)
	l.lwz	r4, -24(r2)
	l.mul	r3, r4, r3
	l.lwz	r4, -12(r2)
	l.lwz	r6, -20(r2)
	l.mul	r4, r4, r6
	l.add	r3, r4, r3
	l.srli	r4, r7, 16
	l.add	r3, r3, r4
	l.add	r11, r3, r5
	l.slli	r3, r7, 16
	l.lwz	r4, -8(r2)
	l.addi	r20, r20, 308           # CFC
	l.andi	r4, r4, 65535
	l.lwz	r13, 2532(r12)
	l.lwz	r14, 2524(r12)
	l.mul	r13, r14, r13
	l.lwz	r14, 2536(r12)
	l.lwz	r16, 2528(r12)
	l.mul	r14, r14, r16
	l.add	r13, r14, r13
	l.srli	r14, r17, 16
	l.add	r13, r13, r14
	l.add	r8, r13, r15
	l.slli	r13, r17, 16
	l.addi	r28, r28, 924
	l.lwz	r14, 2540(r12)
	l.andi	r14, r14, 65535
	l.or	r12, r13, r14
	l.lwz	r23, 5080(r22)
	l.lwz	r24, 5072(r22)
	l.mul	r23, r24, r23
	l.lwz	r24, 5084(r22)
	l.lwz	r26, 5076(r22)
	l.mul	r24, r24, r26
	l.add	r23, r24, r23
	l.srli	r24, r27, 16
	l.add	r23, r23, r24
	l.addi	r18, r18, 770
	l.add	r31, r23, r25
	l.slli	r23, r27, 16
	l.lwz	r24, 5088(r22)
	l.andi	r24, r24, 65535
	l.or	r12, r23, r24
	l.or	r12, r3, r4
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 616           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB1_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB1_3:                                # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB1_6
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB1_6
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB1_6
	l.nop	0
	l.nop	205
.LBB1_6:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB1_7
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB1_7
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB1_7
	l.nop	0
	l.nop	205
.LBB1_7:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB1_8
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB1_8
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB1_8
	l.nop	0
	l.nop	205
.LBB1_8:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB1_9
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB1_9
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB1_9
	l.nop	0
	l.nop	205
.LBB1_9:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB1_10
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB1_10
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB1_10
	l.nop	0
	l.nop	205
.LBB1_10:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB1_11
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB1_11
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB1_11
	l.nop	0
	l.nop	205
.LBB1_11:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB1_12
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB1_12
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB1_12
	l.nop	0
	l.nop	205
.LBB1_12:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB1_13
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB1_13
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB1_13
	l.nop	0
	l.nop	205
.LBB1_13:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB1_14
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB1_14
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB1_14
	l.nop	0
	l.nop	205
.LBB1_14:
.LBB1_15:
	l.jr	r30
	l.nop	0
.LBB1_4:
	l.addi	r18, r18, 760
	l.sfltu	r17, r16
	l.addi	r20, r20, 608           # CFC
	l.bf	.LBB1_2
	l.nop	0
.LBB1_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_3
	l.nop	0
	l.sfltu	r7, r6
	l.bf	.LBB1_2
	l.nop	0
	l.j	.LBB1_1
	l.nop	0
.Lfunc_end1:
	.size	__muldi3, .Lfunc_end1-__muldi3

	.hidden	__udivdi3
	.globl	__udivdi3
	.p2align	2
	.type	__udivdi3,@function
__udivdi3:                              # @__udivdi3
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 155
	l.addi	r20, r20, 310           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -36
	l.sfnei	r5, 0
	l.addi	r28, r28, 930
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -36
	l.sw	5092(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -36           # CFC
	l.bf	.LBB2_74
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 775
	l.sfnei	r15, 0
	l.addi	r20, r20, 620           # CFC
	l.bf	.LBB2_75
	l.nop	0
.LBB2_1:                                # %if.then.i
	l.addi	r18, r18, 156
	l.movhi	r5, 256
	l.addi	r11, r0, 16
	l.addi	r20, r20, 312           # CFC
	l.sfltu	r6, r5
	l.movhi	r15, 256
	l.addi	r28, r28, 936
	l.addi	r8, r0, 16
	l.movhi	r25, 256
	l.addi	r31, r0, 16
	l.bf	.LBB2_76
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 780
	l.sfltu	r16, r15
	l.addi	r20, r20, 624           # CFC
	l.bf	.LBB2_77
	l.nop	0
.LBB2_2:                                # %if.then.i
	l.addi	r18, r18, 157
	l.addi	r20, r20, 314           # CFC
	l.addi	r11, r0, 24
	l.addi	r28, r28, 942
	l.addi	r8, r0, 24
	l.addi	r18, r18, 785
	l.addi	r31, r0, 24
	l.addi	r20, r20, 628           # CFC
.LBB2_3:                                # %if.then.i
	l.addi	r18, r18, 158
	l.movhi	r5, 0
	l.addi	r20, r20, 316           # CFC
	l.sfltui	r6, 256
	l.addi	r28, r28, 948
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.bf	.LBB2_78
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 790
	l.sfltui	r16, 256
	l.addi	r20, r20, 632           # CFC
	l.bf	.LBB2_79
	l.nop	0
.LBB2_4:                                # %if.then.i
	l.addi	r18, r18, 159
	l.addi	r20, r20, 318           # CFC
	l.addi	r5, r0, 8
	l.addi	r28, r28, 954
	l.addi	r15, r0, 8
	l.addi	r18, r18, 795
	l.addi	r25, r0, 8
	l.addi	r20, r20, 636           # CFC
.LBB2_5:                                # %if.then.i
	l.addi	r18, r18, 160
	l.movhi	r7, 1
	l.sw	-12(r2), r6
	l.addi	r20, r20, 320           # CFC
	l.sfltu	r6, r7
	l.movhi	r17, 1
	l.addi	r28, r28, 960
	l.sw	2536(r12), r16
	l.movhi	r27, 1
	l.sw	5084(r22), r26
	l.bf	.LBB2_80
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 800
	l.sfltu	r16, r17
	l.addi	r20, r20, 640           # CFC
	l.bf	.LBB2_81
	l.nop	0
.LBB2_6:                                # %if.then.i
	l.addi	r18, r18, 161
	l.addi	r20, r20, 322           # CFC
	l.ori	r5, r11, 0
	l.addi	r28, r28, 966
	l.ori	r15, r8, 0
	l.addi	r18, r18, 805
	l.ori	r25, r31, 0
	l.addi	r20, r20, 644           # CFC
.LBB2_7:                                # %if.then.i
	l.addi	r18, r18, 162
	l.movhi	r6, hi(__clz_tab)
	l.ori	r6, r6, lo(__clz_tab)
	l.lwz	r11, -12(r2)
	l.srl	r7, r11, r5
	l.add	r6, r7, r6
	l.movhi	r16, hi(__clz_tab)
	l.ori	r16, r16, lo(__clz_tab)
	l.lwz	r8, 2536(r12)
	l.lbz	r6, 0(r6)
	l.addi	r20, r20, 324           # CFC
	l.srl	r17, r8, r15
	l.movhi	r26, hi(__clz_tab)
	l.add	r6, r6, r5
	l.add	r16, r17, r16
	l.ori	r26, r26, lo(__clz_tab)
	l.addi	r5, r0, 32
	l.lbz	r16, 2548(r16)
	l.lwz	r31, 5084(r22)
	l.sub	r7, r5, r6
	l.addi	r28, r28, 972
	l.add	r16, r16, r15
	l.srl	r27, r31, r25
	l.sfgeu	r3, r11
	l.addi	r15, r0, 32
	l.sub	r17, r15, r16
	l.add	r26, r27, r26
	l.lbz	r26, 5096(r26)
	l.add	r26, r26, r25
	l.addi	r25, r0, 32
	l.sub	r27, r25, r26
	l.bf	.LBB2_82
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 810
	l.sfgeu	r13, r8
	l.addi	r20, r20, 648           # CFC
	l.bf	.LBB2_83
	l.nop	0
.LBB2_8:                                # %do.body.i
	l.addi	r18, r18, 163
	l.sfeqi	r7, 0
	l.addi	r20, r20, 326           # CFC
	l.lwz	r5, -12(r2)
	l.addi	r28, r28, 978
	l.lwz	r15, 2536(r12)
	l.lwz	r25, 5084(r22)
	l.bf	.LBB2_84
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 815
	l.sfeqi	r17, 0
	l.addi	r20, r20, 652           # CFC
	l.bf	.LBB2_85
	l.nop	0
.LBB2_9:                                # %if.then16.i
	l.addi	r18, r18, 164
	l.srl	r6, r4, r6
	l.sll	r3, r3, r7
	l.or	r3, r3, r6
	l.addi	r20, r20, 328           # CFC
	l.sll	r4, r4, r7
	l.sll	r5, r5, r7
	l.srl	r16, r14, r16
	l.sll	r13, r13, r17
	l.addi	r28, r28, 984
	l.or	r13, r13, r16
	l.sll	r14, r14, r17
	l.sll	r15, r15, r17
	l.srl	r26, r24, r26
	l.addi	r18, r18, 820
	l.sll	r23, r23, r27
	l.or	r23, r23, r26
	l.sll	r24, r24, r27
	l.sll	r25, r25, r27
	l.addi	r20, r20, 656           # CFC
.LBB2_10:                               # %do.body21.i
	l.addi	r18, r18, 165
	l.srli	r7, r5, 16
	l.ori	r6, r4, 0
	l.divu	r11, r3, r7
	l.sw	-16(r2), r7
	l.mul	r4, r11, r7
	l.srli	r17, r15, 16
	l.ori	r16, r14, 0
	l.divu	r8, r13, r17
	l.sub	r3, r3, r4
	l.sw	2532(r12), r17
	l.srli	r27, r25, 16
	l.slli	r3, r3, 16
	l.mul	r14, r8, r17
	l.ori	r26, r24, 0
	l.addi	r20, r20, 330           # CFC
	l.sw	-8(r2), r6
	l.sub	r13, r13, r14
	l.divu	r31, r23, r27
	l.srli	r4, r6, 16
	l.slli	r13, r13, 16
	l.sw	5080(r22), r27
	l.or	r7, r3, r4
	l.sw	2540(r12), r16
	l.mul	r24, r31, r27
	l.andi	r4, r5, 65535
	l.srli	r14, r16, 16
	l.sub	r23, r23, r24
	l.mul	r3, r11, r4
	l.or	r17, r13, r14
	l.addi	r28, r28, 990
	l.slli	r23, r23, 16
	l.sfgeu	r7, r3
	l.andi	r14, r15, 65535
	l.sw	5088(r22), r26
	l.sw	-12(r2), r11
	l.mul	r13, r8, r14
	l.srli	r24, r26, 16
	l.ori	r6, r5, 0
	l.sw	2536(r12), r8
	l.ori	r16, r15, 0
	l.or	r27, r23, r24
	l.andi	r24, r25, 65535
	l.mul	r23, r31, r24
	l.sw	5084(r22), r31
	l.ori	r26, r25, 0
	l.bf	.LBB2_86
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 825
	l.sfgeu	r17, r13
	l.addi	r20, r20, 660           # CFC
	l.bf	.LBB2_87
	l.nop	0
.LBB2_11:                               # %if.then28.i
	l.addi	r18, r18, 166
	l.addi	r5, r11, -1
	l.sw	-12(r2), r5
	l.add	r7, r7, r6
	l.addi	r20, r20, 332           # CFC
	l.sfltu	r7, r6
	l.addi	r15, r8, -1
	l.sw	2536(r12), r15
	l.addi	r28, r28, 996
	l.add	r17, r17, r16
	l.addi	r25, r31, -1
	l.sw	5084(r22), r25
	l.add	r27, r27, r26
	l.bf	.LBB2_88
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 830
	l.sfltu	r17, r16
	l.addi	r20, r20, 664           # CFC
	l.bf	.LBB2_89
	l.nop	0
.LBB2_12:                               # %if.then28.i
	l.sfgeu	r7, r3
	l.bf	.LBB2_90
	l.nop	0                       # in delay slot
	l.sfgeu	r17, r13
	l.bf	.LBB2_91
	l.nop	0
.LBB2_13:                               # %if.then35.i
	l.addi	r18, r18, 167
	l.add	r7, r7, r6
	l.addi	r5, r11, -2
	l.addi	r20, r20, 334           # CFC
	l.sw	-12(r2), r5
	l.add	r17, r17, r16
	l.addi	r28, r28, 1002
	l.addi	r15, r8, -2
	l.sw	2536(r12), r15
	l.addi	r18, r18, 835
	l.add	r27, r27, r26
	l.addi	r25, r31, -2
	l.sw	5084(r22), r25
	l.addi	r20, r20, 668           # CFC
.LBB2_14:                               # %if.end40.i
	l.addi	r18, r18, 168
	l.sub	r3, r7, r3
	l.lwz	r5, -16(r2)
	l.divu	r7, r3, r5
	l.mul	r5, r7, r5
	l.sub	r3, r3, r5
	l.sub	r13, r17, r13
	l.lwz	r15, 2532(r12)
	l.divu	r17, r13, r15
	l.slli	r3, r3, 16
	l.mul	r15, r17, r15
	l.addi	r20, r20, 336           # CFC
	l.sub	r23, r27, r23
	l.lwz	r5, -8(r2)
	l.sub	r13, r13, r15
	l.lwz	r25, 5080(r22)
	l.andi	r5, r5, 65535
	l.slli	r13, r13, 16
	l.divu	r27, r23, r25
	l.or	r3, r3, r5
	l.lwz	r15, 2540(r12)
	l.mul	r25, r27, r25
	l.addi	r28, r28, 1008
	l.mul	r11, r7, r4
	l.andi	r15, r15, 65535
	l.sub	r23, r23, r25
	l.sfgeu	r3, r11
	l.or	r13, r13, r15
	l.mul	r8, r17, r14
	l.slli	r23, r23, 16
	l.lwz	r25, 5088(r22)
	l.andi	r25, r25, 65535
	l.or	r23, r23, r25
	l.mul	r31, r27, r24
	l.bf	.LBB2_92
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 840
	l.sfgeu	r13, r8
	l.addi	r20, r20, 672           # CFC
	l.bf	.LBB2_93
	l.nop	0
.LBB2_15:                               # %if.then50.i
	l.addi	r18, r18, 169
	l.add	r5, r3, r6
	l.addi	r3, r0, -1
	l.addi	r4, r0, -2
	l.addi	r20, r20, 338           # CFC
	l.sfltu	r5, r11
	l.add	r15, r13, r16
	l.addi	r13, r0, -1
	l.addi	r28, r28, 1014
	l.addi	r14, r0, -2
	l.add	r25, r23, r26
	l.addi	r23, r0, -1
	l.addi	r24, r0, -2
	l.bf	.LBB2_94
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 845
	l.sfltu	r15, r8
	l.addi	r20, r20, 676           # CFC
	l.bf	.LBB2_95
	l.nop	0
.LBB2_16:                               # %if.then50.i
	l.addi	r18, r18, 170
	l.addi	r20, r20, 340           # CFC
	l.ori	r4, r3, 0
	l.addi	r28, r28, 1020
	l.ori	r14, r13, 0
	l.addi	r18, r18, 850
	l.ori	r24, r23, 0
	l.addi	r20, r20, 680           # CFC
.LBB2_17:                               # %if.then50.i
	l.sfgeu	r5, r6
	l.bf	.LBB2_96
	l.nop	0                       # in delay slot
	l.sfgeu	r15, r16
	l.bf	.LBB2_97
	l.nop	0
.LBB2_18:                               # %if.then50.i
	l.addi	r18, r18, 171
	l.addi	r20, r20, 342           # CFC
	l.ori	r4, r3, 0
	l.addi	r28, r28, 1026
	l.ori	r14, r13, 0
	l.addi	r18, r18, 855
	l.ori	r24, r23, 0
	l.addi	r20, r20, 684           # CFC
.LBB2_19:                               # %if.then50.i
	l.addi	r18, r18, 172
	l.addi	r20, r20, 344           # CFC
	l.add	r7, r7, r4
	l.addi	r28, r28, 1032
	l.add	r17, r17, r14
	l.addi	r18, r18, 860
	l.add	r27, r27, r24
	l.addi	r20, r20, 688           # CFC
.LBB2_20:                               # %if.end63.i
	l.addi	r18, r18, 173
	l.lwz	r3, -12(r2)
	l.slli	r3, r3, 16
	l.or	r7, r7, r3
	l.addi	r20, r20, 346           # CFC
	l.movhi	r11, 0
	l.lwz	r13, 2536(r12)
	l.slli	r13, r13, 16
	l.addi	r28, r28, 1038
	l.or	r17, r17, r13
	l.movhi	r8, 0
	l.lwz	r23, 5084(r22)
	l.addi	r18, r18, 865
	l.slli	r23, r23, 16
	l.or	r27, r27, r23
	l.movhi	r31, 0
	l.addi	r20, r20, 692           # CFC
	l.j	.LBB2_72
	l.nop	0                       # in delay slot
.LBB2_43:                               # %if.else240.i
	l.addi	r18, r18, 174
	l.sw	-8(r2), r4
	l.movhi	r11, 0
	l.sfltu	r3, r5
	l.addi	r20, r20, 348           # CFC
	l.movhi	r7, 0
	l.sw	2540(r12), r14
	l.movhi	r8, 0
	l.addi	r28, r28, 1044
	l.movhi	r17, 0
	l.sw	5088(r22), r24
	l.movhi	r31, 0
	l.movhi	r27, 0
	l.bf	.LBB2_98
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 870
	l.sfltu	r13, r15
	l.addi	r20, r20, 696           # CFC
	l.bf	.LBB2_99
	l.nop	0
.LBB2_44:                               # %do.body254.i
	l.addi	r18, r18, 175
	l.movhi	r7, 256
	l.addi	r4, r0, 16
	l.addi	r20, r20, 350           # CFC
	l.sfltu	r5, r7
	l.movhi	r17, 256
	l.addi	r28, r28, 1050
	l.addi	r14, r0, 16
	l.movhi	r27, 256
	l.addi	r24, r0, 16
	l.bf	.LBB2_100
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 875
	l.sfltu	r15, r17
	l.addi	r20, r20, 700           # CFC
	l.bf	.LBB2_101
	l.nop	0
.LBB2_45:                               # %do.body254.i
	l.addi	r18, r18, 176
	l.addi	r20, r20, 352           # CFC
	l.addi	r4, r0, 24
	l.addi	r28, r28, 1056
	l.addi	r14, r0, 24
	l.addi	r18, r18, 880
	l.addi	r24, r0, 24
	l.addi	r20, r20, 704           # CFC
.LBB2_46:                               # %do.body254.i
	l.addi	r18, r18, 177
	l.movhi	r7, 0
	l.addi	r20, r20, 354           # CFC
	l.sfltui	r5, 256
	l.addi	r28, r28, 1062
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.bf	.LBB2_102
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 885
	l.sfltui	r15, 256
	l.addi	r20, r20, 708           # CFC
	l.bf	.LBB2_103
	l.nop	0
.LBB2_47:                               # %do.body254.i
	l.addi	r18, r18, 178
	l.addi	r20, r20, 356           # CFC
	l.addi	r7, r0, 8
	l.addi	r28, r28, 1068
	l.addi	r17, r0, 8
	l.addi	r18, r18, 890
	l.addi	r27, r0, 8
	l.addi	r20, r20, 712           # CFC
.LBB2_48:                               # %do.body254.i
	l.addi	r18, r18, 179
	l.movhi	r11, 1
	l.addi	r20, r20, 358           # CFC
	l.sfltu	r5, r11
	l.addi	r28, r28, 1074
	l.movhi	r8, 1
	l.movhi	r31, 1
	l.bf	.LBB2_104
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 895
	l.sfltu	r15, r8
	l.addi	r20, r20, 716           # CFC
	l.bf	.LBB2_105
	l.nop	0
.LBB2_49:                               # %do.body254.i
	l.addi	r18, r18, 180
	l.addi	r20, r20, 360           # CFC
	l.ori	r7, r4, 0
	l.addi	r28, r28, 1080
	l.ori	r17, r14, 0
	l.addi	r18, r18, 900
	l.ori	r27, r24, 0
	l.addi	r20, r20, 720           # CFC
.LBB2_50:                               # %do.body254.i
	l.addi	r18, r18, 181
	l.srl	r4, r5, r7
	l.movhi	r11, hi(__clz_tab)
	l.ori	r11, r11, lo(__clz_tab)
	l.add	r4, r4, r11
	l.lbz	r4, 0(r4)
	l.srl	r14, r15, r17
	l.movhi	r8, hi(__clz_tab)
	l.ori	r8, r8, lo(__clz_tab)
	l.addi	r20, r20, 362           # CFC
	l.add	r4, r4, r7
	l.add	r14, r14, r8
	l.srl	r24, r25, r27
	l.addi	r7, r0, 32
	l.lbz	r14, 2548(r14)
	l.movhi	r31, hi(__clz_tab)
	l.sub	r7, r7, r4
	l.add	r14, r14, r17
	l.addi	r28, r28, 1086
	l.ori	r31, r31, lo(__clz_tab)
	l.sfnei	r7, 0
	l.addi	r17, r0, 32
	l.sub	r17, r17, r14
	l.add	r24, r24, r31
	l.lbz	r24, 5096(r24)
	l.add	r24, r24, r27
	l.addi	r27, r0, 32
	l.sub	r27, r27, r24
	l.bf	.LBB2_106
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 905
	l.sfnei	r17, 0
	l.addi	r20, r20, 724           # CFC
	l.bf	.LBB2_107
	l.nop	0
.LBB2_51:                               # %if.then278.i
	l.addi	r18, r18, 182
	l.movhi	r11, 0
	l.addi	r4, r0, 1
	l.addi	r20, r20, 364           # CFC
	l.sfleu	r3, r5
	l.movhi	r8, 0
	l.addi	r28, r28, 1092
	l.addi	r14, r0, 1
	l.movhi	r31, 0
	l.addi	r24, r0, 1
	l.bf	.LBB2_108
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 910
	l.sfleu	r13, r15
	l.addi	r20, r20, 728           # CFC
	l.bf	.LBB2_109
	l.nop	0
.LBB2_111:
	l.addi	r18, r18, 183
	l.addi	r20, r20, 366           # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 1098
	l.ori	r13, r14, 0
	l.addi	r18, r18, 915
	l.ori	r23, r24, 0
	l.addi	r20, r20, 732           # CFC
.LBB2_52:                               # %if.then278.i
	l.addi	r18, r18, 184
	l.addi	r20, r20, 368           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 1104
	l.movhi	r13, 0
	l.addi	r18, r18, 920
	l.movhi	r23, 0
	l.addi	r20, r20, 736           # CFC
.LBB2_53:                               # %if.then278.i
	l.addi	r18, r18, 185
	l.lwz	r5, -8(r2)
	l.addi	r20, r20, 370           # CFC
	l.sfltu	r5, r6
	l.addi	r28, r28, 1110
	l.lwz	r15, 2540(r12)
	l.lwz	r25, 5088(r22)
	l.bf	.LBB2_112
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 925
	l.sfltu	r15, r16
	l.addi	r20, r20, 740           # CFC
	l.bf	.LBB2_113
	l.nop	0
.LBB2_54:                               # %if.then278.i
	l.addi	r18, r18, 186
	l.addi	r20, r20, 372           # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 1116
	l.movhi	r14, 0
	l.addi	r18, r18, 930
	l.movhi	r24, 0
	l.addi	r20, r20, 744           # CFC
.LBB2_55:                               # %if.then278.i
	l.addi	r18, r18, 187
	l.and	r3, r4, r3
	l.xori	r3, r3, -1
	l.addi	r20, r20, 374           # CFC
	l.andi	r7, r3, 1
	l.and	r13, r14, r13
	l.addi	r28, r28, 1122
	l.xori	r13, r13, -1
	l.andi	r17, r13, 1
	l.addi	r18, r18, 935
	l.and	r23, r24, r23
	l.xori	r23, r23, -1
	l.andi	r27, r23, 1
	l.addi	r20, r20, 748           # CFC
	l.j	.LBB2_72
	l.nop	0                       # in delay slot
.LBB2_56:                               # %if.else303.i
	l.addi	r18, r18, 188
	l.sll	r5, r5, r7
	l.sw	-12(r2), r6
	l.sw	-16(r2), r7
	l.srl	r7, r6, r4
	l.or	r5, r5, r7
	l.sll	r15, r15, r17
	l.sw	2536(r12), r16
	l.sw	2532(r12), r17
	l.sw	-36(r2), r5
	l.srl	r17, r16, r14
	l.sll	r25, r25, r27
	l.srli	r6, r5, 16
	l.or	r15, r15, r17
	l.sw	5084(r22), r26
	l.srl	r5, r3, r4
	l.sw	2512(r12), r15
	l.sw	5080(r22), r27
	l.divu	r11, r5, r6
	l.srli	r16, r15, 16
	l.srl	r27, r26, r24
	l.sw	-24(r2), r6
	l.srl	r15, r13, r14
	l.or	r25, r25, r27
	l.mul	r7, r11, r6
	l.divu	r8, r15, r16
	l.sw	5060(r22), r25
	l.addi	r20, r20, 376           # CFC
	l.sub	r5, r5, r7
	l.sw	2524(r12), r16
	l.srli	r26, r25, 16
	l.lwz	r7, -16(r2)
	l.mul	r17, r8, r16
	l.srl	r25, r23, r24
	l.lwz	r6, -8(r2)
	l.sub	r15, r15, r17
	l.divu	r31, r25, r26
	l.srl	r4, r6, r4
	l.lwz	r17, 2532(r12)
	l.sw	5072(r22), r26
	l.lwz	r6, -36(r2)
	l.lwz	r16, 2540(r12)
	l.mul	r27, r31, r26
	l.sll	r3, r3, r7
	l.srl	r14, r16, r14
	l.sub	r25, r25, r27
	l.or	r4, r3, r4
	l.lwz	r16, 2512(r12)
	l.lwz	r27, 5080(r22)
	l.slli	r3, r5, 16
	l.sll	r13, r13, r17
	l.lwz	r26, 5088(r22)
	l.sw	-28(r2), r4
	l.or	r14, r13, r14
	l.addi	r28, r28, 1128
	l.srl	r24, r26, r24
	l.srli	r4, r4, 16
	l.slli	r13, r15, 16
	l.lwz	r26, 5060(r22)
	l.or	r3, r3, r4
	l.sw	2520(r12), r14
	l.sll	r23, r23, r27
	l.andi	r4, r6, 65535
	l.srli	r14, r14, 16
	l.or	r24, r23, r24
	l.sw	-32(r2), r4
	l.or	r13, r13, r14
	l.slli	r23, r25, 16
	l.mul	r4, r11, r4
	l.andi	r14, r16, 65535
	l.sw	5068(r22), r24
	l.sfgeu	r3, r4
	l.sw	2516(r12), r14
	l.srli	r24, r24, 16
	l.ori	r5, r11, 0
	l.mul	r14, r8, r14
	l.ori	r15, r8, 0
	l.or	r23, r23, r24
	l.andi	r24, r26, 65535
	l.sw	5064(r22), r24
	l.mul	r24, r31, r24
	l.ori	r25, r31, 0
	l.bf	.LBB2_114
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 940
	l.sfgeu	r13, r14
	l.addi	r20, r20, 752           # CFC
	l.bf	.LBB2_115
	l.nop	0
.LBB2_57:                               # %if.then332.i
	l.addi	r18, r18, 189
	l.addi	r5, r11, -1
	l.add	r3, r3, r6
	l.addi	r20, r20, 378           # CFC
	l.sfltu	r3, r6
	l.addi	r15, r8, -1
	l.addi	r28, r28, 1134
	l.add	r13, r13, r16
	l.addi	r25, r31, -1
	l.add	r23, r23, r26
	l.bf	.LBB2_116
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 945
	l.sfltu	r13, r16
	l.addi	r20, r20, 756           # CFC
	l.bf	.LBB2_117
	l.nop	0
.LBB2_58:                               # %if.then332.i
	l.sfgeu	r3, r4
	l.bf	.LBB2_118
	l.nop	0                       # in delay slot
	l.sfgeu	r13, r14
	l.bf	.LBB2_119
	l.nop	0
.LBB2_59:                               # %if.then340.i
	l.addi	r18, r18, 190
	l.add	r3, r3, r6
	l.addi	r20, r20, 380           # CFC
	l.addi	r5, r11, -2
	l.add	r13, r13, r16
	l.addi	r28, r28, 1140
	l.addi	r15, r8, -2
	l.addi	r18, r18, 950
	l.add	r23, r23, r26
	l.addi	r25, r31, -2
	l.addi	r20, r20, 760           # CFC
.LBB2_60:                               # %if.end345.i
	l.addi	r18, r18, 191
	l.sw	-20(r2), r5
	l.lwz	r5, -12(r2)
	l.sll	r11, r5, r7
	l.sub	r3, r3, r4
	l.lwz	r5, -24(r2)
	l.sw	2528(r12), r15
	l.lwz	r15, 2536(r12)
	l.sll	r8, r15, r17
	l.divu	r4, r3, r5
	l.sub	r13, r13, r14
	l.sw	5076(r22), r25
	l.mul	r5, r4, r5
	l.lwz	r15, 2524(r12)
	l.lwz	r25, 5084(r22)
	l.sub	r3, r3, r5
	l.addi	r20, r20, 382           # CFC
	l.divu	r14, r13, r15
	l.sll	r31, r25, r27
	l.slli	r3, r3, 16
	l.mul	r15, r14, r15
	l.sub	r23, r23, r24
	l.lwz	r5, -28(r2)
	l.sub	r13, r13, r15
	l.lwz	r25, 5072(r22)
	l.andi	r5, r5, 65535
	l.slli	r13, r13, 16
	l.divu	r24, r23, r25
	l.or	r3, r3, r5
	l.lwz	r15, 2520(r12)
	l.mul	r25, r24, r25
	l.lwz	r5, -32(r2)
	l.addi	r28, r28, 1146
	l.andi	r15, r15, 65535
	l.sub	r23, r23, r25
	l.mul	r5, r4, r5
	l.or	r13, r13, r15
	l.slli	r23, r23, 16
	l.sfgeu	r3, r5
	l.lwz	r15, 2516(r12)
	l.lwz	r25, 5068(r22)
	l.ori	r7, r4, 0
	l.mul	r15, r14, r15
	l.ori	r17, r14, 0
	l.andi	r25, r25, 65535
	l.or	r23, r23, r25
	l.lwz	r25, 5064(r22)
	l.mul	r25, r24, r25
	l.ori	r27, r24, 0
	l.bf	.LBB2_120
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 955
	l.sfgeu	r13, r15
	l.addi	r20, r20, 764           # CFC
	l.bf	.LBB2_121
	l.nop	0
.LBB2_61:                               # %if.then355.i
	l.addi	r18, r18, 192
	l.addi	r7, r4, -1
	l.add	r3, r3, r6
	l.addi	r20, r20, 384           # CFC
	l.sfltu	r3, r6
	l.addi	r17, r14, -1
	l.addi	r28, r28, 1152
	l.add	r13, r13, r16
	l.addi	r27, r24, -1
	l.add	r23, r23, r26
	l.bf	.LBB2_122
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 960
	l.sfltu	r13, r16
	l.addi	r20, r20, 768           # CFC
	l.bf	.LBB2_123
	l.nop	0
.LBB2_62:                               # %if.then355.i
	l.sfgeu	r3, r5
	l.bf	.LBB2_124
	l.nop	0                       # in delay slot
	l.sfgeu	r13, r15
	l.bf	.LBB2_125
	l.nop	0
.LBB2_63:                               # %if.then363.i
	l.addi	r18, r18, 193
	l.add	r3, r3, r6
	l.addi	r20, r20, 386           # CFC
	l.addi	r7, r4, -2
	l.add	r13, r13, r16
	l.addi	r28, r28, 1158
	l.addi	r17, r14, -2
	l.addi	r18, r18, 965
	l.add	r23, r23, r26
	l.addi	r27, r24, -2
	l.addi	r20, r20, 772           # CFC
.LBB2_64:                               # %if.end368.i
	l.addi	r18, r18, 194
	l.sw	-24(r2), r5
	l.sw	-12(r2), r3
	l.andi	r4, r11, 65535
	l.srli	r11, r11, 16
	l.andi	r3, r7, 65535
	l.sw	2524(r12), r15
	l.sw	2536(r12), r13
	l.andi	r14, r8, 65535
	l.mul	r5, r3, r11
	l.srli	r8, r8, 16
	l.sw	5072(r22), r25
	l.mul	r3, r3, r4
	l.andi	r13, r17, 65535
	l.sw	5084(r22), r23
	l.sw	-28(r2), r3
	l.mul	r15, r13, r8
	l.andi	r24, r31, 65535
	l.addi	r20, r20, 388           # CFC
	l.srli	r3, r3, 16
	l.mul	r13, r13, r14
	l.srli	r31, r31, 16
	l.add	r6, r3, r5
	l.sw	2520(r12), r13
	l.andi	r23, r27, 65535
	l.lwz	r3, -20(r2)
	l.srli	r13, r13, 16
	l.mul	r25, r23, r31
	l.slli	r3, r3, 16
	l.add	r16, r13, r15
	l.mul	r23, r23, r24
	l.or	r7, r7, r3
	l.lwz	r13, 2528(r12)
	l.sw	5068(r22), r23
	l.srli	r3, r7, 16
	l.slli	r13, r13, 16
	l.addi	r28, r28, 1164
	l.srli	r23, r23, 16
	l.mul	r4, r3, r4
	l.or	r17, r17, r13
	l.add	r26, r23, r25
	l.add	r5, r6, r4
	l.srli	r13, r17, 16
	l.lwz	r23, 5076(r22)
	l.addi	r4, r0, 1
	l.mul	r14, r13, r14
	l.slli	r23, r23, 16
	l.sfltu	r5, r6
	l.add	r15, r16, r14
	l.addi	r14, r0, 1
	l.or	r27, r27, r23
	l.srli	r23, r27, 16
	l.mul	r24, r23, r24
	l.add	r25, r26, r24
	l.addi	r24, r0, 1
	l.bf	.LBB2_126
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 970
	l.sfltu	r15, r16
	l.addi	r20, r20, 776           # CFC
	l.bf	.LBB2_127
	l.nop	0
.LBB2_65:                               # %if.end368.i
	l.addi	r18, r18, 195
	l.addi	r20, r20, 390           # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 1170
	l.movhi	r14, 0
	l.addi	r18, r18, 975
	l.movhi	r24, 0
	l.addi	r20, r20, 780           # CFC
.LBB2_66:                               # %if.end368.i
	l.addi	r18, r18, 196
	l.mul	r3, r3, r11
	l.movhi	r6, 1
	l.add	r11, r3, r6
	l.addi	r20, r20, 392           # CFC
	l.sfnei	r4, 0
	l.mul	r13, r13, r8
	l.movhi	r16, 1
	l.addi	r28, r28, 1176
	l.add	r8, r13, r16
	l.mul	r23, r23, r31
	l.movhi	r26, 1
	l.add	r31, r23, r26
	l.bf	.LBB2_128
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 980
	l.sfnei	r14, 0
	l.addi	r20, r20, 784           # CFC
	l.bf	.LBB2_129
	l.nop	0
.LBB2_67:                               # %if.end368.i
	l.addi	r18, r18, 197
	l.addi	r20, r20, 394           # CFC
	l.ori	r11, r3, 0
	l.addi	r28, r28, 1182
	l.ori	r8, r13, 0
	l.addi	r18, r18, 985
	l.ori	r31, r23, 0
	l.addi	r20, r20, 788           # CFC
.LBB2_68:                               # %if.end368.i
	l.addi	r18, r18, 198
	l.lwz	r3, -12(r2)
	l.lwz	r4, -24(r2)
	l.sub	r3, r3, r4
	l.srli	r4, r5, 16
	l.add	r6, r11, r4
	l.addi	r20, r20, 396           # CFC
	l.sfgtu	r6, r3
	l.lwz	r13, 2536(r12)
	l.lwz	r14, 2524(r12)
	l.sub	r13, r13, r14
	l.srli	r14, r15, 16
	l.addi	r28, r28, 1188
	l.add	r16, r8, r14
	l.lwz	r23, 5084(r22)
	l.lwz	r24, 5072(r22)
	l.sub	r23, r23, r24
	l.srli	r24, r25, 16
	l.add	r26, r31, r24
	l.bf	.LBB2_130
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 990
	l.sfgtu	r16, r13
	l.addi	r20, r20, 792           # CFC
	l.bf	.LBB2_131
	l.nop	0
.LBB2_69:                               # %lor.lhs.false401.i
	l.addi	r18, r18, 199
	l.lwz	r4, -8(r2)
	l.lwz	r11, -16(r2)
	l.sll	r4, r4, r11
	l.lwz	r11, -28(r2)
	l.andi	r11, r11, 65535
	l.lwz	r14, 2540(r12)
	l.lwz	r8, 2532(r12)
	l.sll	r14, r14, r8
	l.addi	r20, r20, 398           # CFC
	l.slli	r5, r5, 16
	l.lwz	r8, 2520(r12)
	l.lwz	r24, 5088(r22)
	l.or	r5, r5, r11
	l.andi	r8, r8, 65535
	l.lwz	r31, 5080(r22)
	l.movhi	r11, 0
	l.slli	r15, r15, 16
	l.addi	r28, r28, 1194
	l.sll	r24, r24, r31
	l.sfleu	r5, r4
	l.or	r15, r15, r8
	l.movhi	r8, 0
	l.lwz	r31, 5068(r22)
	l.andi	r31, r31, 65535
	l.slli	r25, r25, 16
	l.or	r25, r25, r31
	l.movhi	r31, 0
	l.bf	.LBB2_132
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 995
	l.sfleu	r15, r14
	l.addi	r20, r20, 796           # CFC
	l.bf	.LBB2_133
	l.nop	0
.LBB2_70:                               # %lor.lhs.false401.i
	l.sfne	r6, r3
	l.bf	.LBB2_134
	l.nop	0                       # in delay slot
	l.sfne	r16, r13
	l.bf	.LBB2_135
	l.nop	0
.LBB2_71:                               # %if.then406.i
	l.addi	r18, r18, 200
	l.movhi	r11, 0
	l.addi	r20, r20, 400           # CFC
	l.addi	r7, r7, -1
	l.movhi	r8, 0
	l.addi	r28, r28, 1200
	l.addi	r17, r17, -1
	l.addi	r18, r18, 1000
	l.movhi	r31, 0
	l.addi	r27, r27, -1
	l.addi	r20, r20, 800           # CFC
	l.j	.LBB2_72
	l.nop	0                       # in delay slot
.LBB2_21:                               # %if.else.i
	l.sfnei	r7, 0
	l.bf	.LBB2_136
	l.nop	0                       # in delay slot
	l.sfnei	r17, 0
	l.bf	.LBB2_137
	l.nop	0
.LBB2_22:                               # %if.then98.i
	l.addi	r18, r18, 201
	l.lwz	r6, -12(r2)
	l.sub	r3, r3, r6
	l.ori	r5, r4, 0
	l.addi	r20, r20, 402           # CFC
	l.ori	r4, r3, 0
	l.addi	r3, r0, 1
	l.lwz	r16, 2536(r12)
	l.sub	r13, r13, r16
	l.addi	r28, r28, 1206
	l.ori	r15, r14, 0
	l.ori	r14, r13, 0
	l.addi	r13, r0, 1
	l.lwz	r26, 5084(r22)
	l.addi	r18, r18, 1005
	l.sub	r23, r23, r26
	l.ori	r25, r24, 0
	l.ori	r24, r23, 0
	l.addi	r23, r0, 1
	l.addi	r20, r20, 804           # CFC
	l.j	.LBB2_32
	l.nop	0                       # in delay slot
.LBB2_23:                               # %if.else100.i
	l.addi	r18, r18, 202
	l.sw	-8(r2), r4
	l.srl	r4, r4, r6
	l.sll	r11, r3, r7
	l.or	r11, r11, r4
	l.srl	r3, r3, r6
	l.sw	2540(r12), r14
	l.srl	r14, r14, r16
	l.sll	r8, r13, r17
	l.lwz	r6, -12(r2)
	l.or	r8, r8, r14
	l.sw	5088(r22), r24
	l.sll	r6, r6, r7
	l.srl	r13, r13, r16
	l.srl	r24, r24, r26
	l.srli	r4, r6, 16
	l.lwz	r16, 2536(r12)
	l.sll	r31, r23, r27
	l.divu	r5, r3, r4
	l.sll	r16, r16, r17
	l.addi	r20, r20, 404           # CFC
	l.or	r31, r31, r24
	l.sw	-20(r2), r4
	l.srli	r14, r16, 16
	l.srl	r23, r23, r26
	l.mul	r4, r5, r4
	l.divu	r15, r13, r14
	l.lwz	r26, 5084(r22)
	l.sub	r3, r3, r4
	l.sw	2528(r12), r14
	l.sll	r26, r26, r27
	l.slli	r3, r3, 16
	l.mul	r14, r15, r14
	l.srli	r24, r26, 16
	l.sw	-16(r2), r11
	l.sub	r13, r13, r14
	l.divu	r25, r23, r24
	l.srli	r4, r11, 16
	l.slli	r13, r13, 16
	l.sw	5076(r22), r24
	l.addi	r28, r28, 1212
	l.or	r3, r3, r4
	l.sw	2532(r12), r8
	l.mul	r24, r25, r24
	l.andi	r11, r6, 65535
	l.srli	r14, r8, 16
	l.sub	r23, r23, r24
	l.mul	r4, r5, r11
	l.or	r13, r13, r14
	l.slli	r23, r23, 16
	l.sfgeu	r3, r4
	l.andi	r8, r16, 65535
	l.sw	5080(r22), r31
	l.sw	-12(r2), r5
	l.mul	r14, r15, r8
	l.sw	2536(r12), r15
	l.srli	r24, r31, 16
	l.or	r23, r23, r24
	l.andi	r31, r26, 65535
	l.mul	r24, r25, r31
	l.sw	5084(r22), r25
	l.bf	.LBB2_138
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1010
	l.sfgeu	r13, r14
	l.addi	r20, r20, 808           # CFC
	l.bf	.LBB2_139
	l.nop	0
.LBB2_24:                               # %if.then126.i
	l.addi	r18, r18, 203
	l.sw	-24(r2), r4
	l.addi	r4, r5, -1
	l.sw	-12(r2), r4
	l.lwz	r4, -24(r2)
	l.add	r3, r3, r6
	l.addi	r20, r20, 406           # CFC
	l.sfltu	r3, r6
	l.sw	2524(r12), r14
	l.addi	r14, r15, -1
	l.sw	2536(r12), r14
	l.lwz	r14, 2524(r12)
	l.addi	r28, r28, 1218
	l.add	r13, r13, r16
	l.sw	5072(r22), r24
	l.addi	r24, r25, -1
	l.sw	5084(r22), r24
	l.lwz	r24, 5072(r22)
	l.add	r23, r23, r26
	l.bf	.LBB2_140
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1015
	l.sfltu	r13, r16
	l.addi	r20, r20, 812           # CFC
	l.bf	.LBB2_141
	l.nop	0
.LBB2_25:                               # %if.then126.i
	l.sfgeu	r3, r4
	l.bf	.LBB2_142
	l.nop	0                       # in delay slot
	l.sfgeu	r13, r14
	l.bf	.LBB2_143
	l.nop	0
.LBB2_26:                               # %if.then134.i
	l.addi	r18, r18, 204
	l.add	r3, r3, r6
	l.addi	r5, r5, -2
	l.addi	r20, r20, 408           # CFC
	l.sw	-12(r2), r5
	l.add	r13, r13, r16
	l.addi	r28, r28, 1224
	l.addi	r15, r15, -2
	l.sw	2536(r12), r15
	l.addi	r18, r18, 1020
	l.add	r23, r23, r26
	l.addi	r25, r25, -2
	l.sw	5084(r22), r25
	l.addi	r20, r20, 816           # CFC
.LBB2_27:                               # %if.end139.i
	l.addi	r18, r18, 205
	l.sub	r3, r3, r4
	l.lwz	r4, -20(r2)
	l.divu	r5, r3, r4
	l.mul	r4, r5, r4
	l.sub	r3, r3, r4
	l.sub	r13, r13, r14
	l.lwz	r14, 2528(r12)
	l.divu	r15, r13, r14
	l.slli	r3, r3, 16
	l.mul	r14, r15, r14
	l.sub	r23, r23, r24
	l.addi	r20, r20, 410           # CFC
	l.lwz	r4, -16(r2)
	l.sub	r13, r13, r14
	l.lwz	r24, 5076(r22)
	l.andi	r4, r4, 65535
	l.slli	r13, r13, 16
	l.divu	r25, r23, r24
	l.or	r3, r3, r4
	l.lwz	r14, 2532(r12)
	l.mul	r24, r25, r24
	l.mul	r4, r5, r11
	l.andi	r14, r14, 65535
	l.addi	r28, r28, 1230
	l.sub	r23, r23, r24
	l.sfgeu	r3, r4
	l.or	r13, r13, r14
	l.slli	r23, r23, 16
	l.ori	r11, r5, 0
	l.mul	r14, r15, r8
	l.ori	r8, r15, 0
	l.lwz	r24, 5080(r22)
	l.andi	r24, r24, 65535
	l.or	r23, r23, r24
	l.mul	r24, r25, r31
	l.ori	r31, r25, 0
	l.bf	.LBB2_144
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1025
	l.sfgeu	r13, r14
	l.addi	r20, r20, 820           # CFC
	l.bf	.LBB2_145
	l.nop	0
.LBB2_28:                               # %if.then149.i
	l.addi	r18, r18, 206
	l.addi	r11, r5, -1
	l.add	r3, r3, r6
	l.addi	r20, r20, 412           # CFC
	l.sfltu	r3, r6
	l.addi	r8, r15, -1
	l.addi	r28, r28, 1236
	l.add	r13, r13, r16
	l.addi	r31, r25, -1
	l.add	r23, r23, r26
	l.bf	.LBB2_146
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1030
	l.sfltu	r13, r16
	l.addi	r20, r20, 824           # CFC
	l.bf	.LBB2_147
	l.nop	0
.LBB2_29:                               # %if.then149.i
	l.sfgeu	r3, r4
	l.bf	.LBB2_148
	l.nop	0                       # in delay slot
	l.sfgeu	r13, r14
	l.bf	.LBB2_149
	l.nop	0
.LBB2_30:                               # %if.then157.i
	l.addi	r18, r18, 207
	l.add	r3, r3, r6
	l.addi	r20, r20, 414           # CFC
	l.addi	r11, r5, -2
	l.add	r13, r13, r16
	l.addi	r28, r28, 1242
	l.addi	r8, r15, -2
	l.addi	r18, r18, 1035
	l.add	r23, r23, r26
	l.addi	r31, r25, -2
	l.addi	r20, r20, 828           # CFC
.LBB2_31:                               # %if.end162.i
	l.addi	r18, r18, 208
	l.lwz	r5, -8(r2)
	l.sll	r5, r5, r7
	l.sub	r4, r3, r4
	l.lwz	r3, -12(r2)
	l.addi	r20, r20, 416           # CFC
	l.slli	r3, r3, 16
	l.lwz	r15, 2540(r12)
	l.sll	r15, r15, r17
	l.sub	r14, r13, r14
	l.or	r3, r11, r3
	l.addi	r28, r28, 1248
	l.lwz	r13, 2536(r12)
	l.lwz	r25, 5088(r22)
	l.slli	r13, r13, 16
	l.or	r13, r8, r13
	l.addi	r18, r18, 1040
	l.sll	r25, r25, r27
	l.sub	r24, r23, r24
	l.lwz	r23, 5084(r22)
	l.slli	r23, r23, 16
	l.or	r23, r31, r23
	l.addi	r20, r20, 832           # CFC
.LBB2_32:                               # %do.body169.i
	l.addi	r18, r18, 209
	l.sw	-16(r2), r3
	l.srli	r11, r6, 16
	l.divu	r3, r4, r11
	l.mul	r7, r3, r11
	l.sub	r4, r4, r7
	l.sw	2532(r12), r13
	l.srli	r8, r16, 16
	l.divu	r13, r14, r8
	l.slli	r4, r4, 16
	l.mul	r17, r13, r8
	l.sw	5080(r22), r23
	l.sw	-8(r2), r5
	l.sub	r14, r14, r17
	l.addi	r20, r20, 418           # CFC
	l.srli	r31, r26, 16
	l.srli	r7, r5, 16
	l.slli	r14, r14, 16
	l.divu	r23, r24, r31
	l.or	r7, r4, r7
	l.sw	2540(r12), r15
	l.mul	r27, r23, r31
	l.andi	r4, r6, 65535
	l.srli	r17, r15, 16
	l.sub	r24, r24, r27
	l.sw	-12(r2), r4
	l.or	r17, r14, r17
	l.slli	r24, r24, 16
	l.addi	r28, r28, 1254
	l.mul	r4, r3, r4
	l.andi	r14, r16, 65535
	l.sw	5088(r22), r25
	l.sfgeu	r7, r4
	l.sw	2536(r12), r14
	l.srli	r27, r25, 16
	l.ori	r5, r3, 0
	l.mul	r14, r13, r14
	l.ori	r15, r13, 0
	l.or	r27, r24, r27
	l.andi	r24, r26, 65535
	l.sw	5084(r22), r24
	l.mul	r24, r23, r24
	l.ori	r25, r23, 0
	l.bf	.LBB2_150
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1045
	l.sfgeu	r17, r14
	l.addi	r20, r20, 836           # CFC
	l.bf	.LBB2_151
	l.nop	0
.LBB2_33:                               # %if.then187.i
	l.addi	r18, r18, 210
	l.addi	r5, r3, -1
	l.add	r7, r7, r6
	l.addi	r20, r20, 420           # CFC
	l.sfltu	r7, r6
	l.addi	r15, r13, -1
	l.addi	r28, r28, 1260
	l.add	r17, r17, r16
	l.addi	r25, r23, -1
	l.add	r27, r27, r26
	l.bf	.LBB2_152
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1050
	l.sfltu	r17, r16
	l.addi	r20, r20, 840           # CFC
	l.bf	.LBB2_153
	l.nop	0
.LBB2_34:                               # %if.then187.i
	l.sfgeu	r7, r4
	l.bf	.LBB2_154
	l.nop	0                       # in delay slot
	l.sfgeu	r17, r14
	l.bf	.LBB2_155
	l.nop	0
.LBB2_35:                               # %if.then195.i
	l.addi	r18, r18, 211
	l.add	r7, r7, r6
	l.addi	r20, r20, 422           # CFC
	l.addi	r5, r3, -2
	l.add	r17, r17, r16
	l.addi	r28, r28, 1266
	l.addi	r15, r13, -2
	l.addi	r18, r18, 1055
	l.add	r27, r27, r26
	l.addi	r25, r23, -2
	l.addi	r20, r20, 844           # CFC
.LBB2_36:                               # %if.end200.i
	l.addi	r18, r18, 212
	l.sub	r3, r7, r4
	l.divu	r7, r3, r11
	l.mul	r4, r7, r11
	l.sub	r3, r3, r4
	l.slli	r3, r3, 16
	l.sub	r13, r17, r14
	l.divu	r17, r13, r8
	l.mul	r14, r17, r8
	l.lwz	r4, -8(r2)
	l.sub	r13, r13, r14
	l.sub	r23, r27, r24
	l.addi	r20, r20, 424           # CFC
	l.andi	r4, r4, 65535
	l.slli	r13, r13, 16
	l.divu	r27, r23, r31
	l.or	r4, r3, r4
	l.lwz	r14, 2540(r12)
	l.mul	r24, r27, r31
	l.lwz	r3, -12(r2)
	l.andi	r14, r14, 65535
	l.sub	r23, r23, r24
	l.mul	r3, r7, r3
	l.or	r14, r13, r14
	l.addi	r28, r28, 1272
	l.slli	r23, r23, 16
	l.sfgeu	r4, r3
	l.lwz	r13, 2536(r12)
	l.lwz	r24, 5088(r22)
	l.lwz	r11, -16(r2)
	l.mul	r13, r17, r13
	l.lwz	r8, 2532(r12)
	l.andi	r24, r24, 65535
	l.or	r24, r23, r24
	l.lwz	r23, 5084(r22)
	l.mul	r23, r27, r23
	l.lwz	r31, 5080(r22)
	l.bf	.LBB2_156
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1060
	l.sfgeu	r14, r13
	l.addi	r20, r20, 848           # CFC
	l.bf	.LBB2_157
	l.nop	0
.LBB2_37:                               # %if.then210.i
	l.addi	r18, r18, 213
	l.sw	-8(r2), r5
	l.add	r5, r4, r6
	l.addi	r4, r0, -1
	l.sw	-12(r2), r4
	l.addi	r4, r0, -2
	l.addi	r20, r20, 426           # CFC
	l.sfltu	r5, r3
	l.sw	2540(r12), r15
	l.add	r15, r14, r16
	l.addi	r14, r0, -1
	l.sw	2536(r12), r14
	l.addi	r28, r28, 1278
	l.addi	r14, r0, -2
	l.sw	5088(r22), r25
	l.add	r25, r24, r26
	l.addi	r24, r0, -1
	l.sw	5084(r22), r24
	l.addi	r24, r0, -2
	l.bf	.LBB2_158
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1065
	l.sfltu	r15, r13
	l.addi	r20, r20, 852           # CFC
	l.bf	.LBB2_159
	l.nop	0
.LBB2_38:                               # %if.then210.i
	l.addi	r18, r18, 214
	l.addi	r20, r20, 428           # CFC
	l.lwz	r4, -12(r2)
	l.addi	r28, r28, 1284
	l.lwz	r14, 2536(r12)
	l.addi	r18, r18, 1070
	l.lwz	r24, 5084(r22)
	l.addi	r20, r20, 856           # CFC
.LBB2_39:                               # %if.then210.i
	l.sfgeu	r5, r6
	l.bf	.LBB2_160
	l.nop	0                       # in delay slot
	l.sfgeu	r15, r16
	l.bf	.LBB2_161
	l.nop	0
.LBB2_40:                               # %if.then210.i
	l.addi	r18, r18, 215
	l.addi	r20, r20, 430           # CFC
	l.lwz	r4, -12(r2)
	l.addi	r28, r28, 1290
	l.lwz	r14, 2536(r12)
	l.addi	r18, r18, 1075
	l.lwz	r24, 5084(r22)
	l.addi	r20, r20, 860           # CFC
.LBB2_41:                               # %if.then210.i
	l.addi	r18, r18, 216
	l.add	r7, r7, r4
	l.addi	r20, r20, 432           # CFC
	l.lwz	r5, -8(r2)
	l.add	r17, r17, r14
	l.addi	r28, r28, 1296
	l.lwz	r15, 2540(r12)
	l.addi	r18, r18, 1080
	l.add	r27, r27, r24
	l.lwz	r25, 5088(r22)
	l.addi	r20, r20, 864           # CFC
.LBB2_42:                               # %if.end223.i
	l.addi	r18, r18, 217
	l.slli	r3, r5, 16
	l.addi	r20, r20, 434           # CFC
	l.or	r7, r7, r3
	l.slli	r13, r15, 16
	l.addi	r28, r28, 1302
	l.or	r17, r17, r13
	l.addi	r18, r18, 1085
	l.slli	r23, r25, 16
	l.or	r27, r27, r23
	l.addi	r20, r20, 868           # CFC
.LBB2_72:                               # %__udivmoddi4.exit
	l.addi	r18, r18, 218
	l.ori	r12, r17, 0
	l.ori	r12, r27, 0
	l.addi	r20, r20, 436           # CFC
	l.ori	r12, r7, 0
	l.addi	r1, r2, 0
	l.addi	r28, r28, 1308
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r18, r18, 1090
	l.lwz	r12, 2544(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 872           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB2_73
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB2_73:                               # %__udivmoddi4.exit
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB2_162
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB2_162
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB2_162
	l.nop	0
	l.nop	205
.LBB2_162:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB2_163
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB2_163
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB2_163
	l.nop	0
	l.nop	205
.LBB2_163:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB2_164
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB2_164
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB2_164
	l.nop	0
	l.nop	205
.LBB2_164:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB2_165
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB2_165
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB2_165
	l.nop	0
	l.nop	205
.LBB2_165:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB2_166
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB2_166
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB2_166
	l.nop	0
	l.nop	205
.LBB2_166:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB2_167
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB2_167
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB2_167
	l.nop	0
	l.nop	205
.LBB2_167:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB2_168
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB2_168
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB2_168
	l.nop	0
	l.nop	205
.LBB2_168:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB2_169
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB2_169
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB2_169
	l.nop	0
	l.nop	205
.LBB2_169:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB2_170
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB2_170
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB2_170
	l.nop	0
	l.nop	205
.LBB2_170:
.LBB2_171:
	l.jr	r30
	l.nop	0
.LBB2_74:
	l.addi	r18, r18, 775
	l.sfnei	r15, 0
	l.addi	r20, r20, 620           # CFC
	l.bf	.LBB2_43
	l.nop	0
.LBB2_75:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB2_43
	l.nop	0
	l.j	.LBB2_1
	l.nop	0
.LBB2_76:
	l.addi	r18, r18, 780
	l.sfltu	r16, r15
	l.addi	r20, r20, 624           # CFC
	l.bf	.LBB2_3
	l.nop	0
.LBB2_77:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfltu	r6, r5
	l.bf	.LBB2_3
	l.nop	0
	l.j	.LBB2_2
	l.nop	0
.LBB2_78:
	l.addi	r18, r18, 790
	l.sfltui	r16, 256
	l.addi	r20, r20, 632           # CFC
	l.bf	.LBB2_5
	l.nop	0
.LBB2_79:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfltui	r6, 256
	l.bf	.LBB2_5
	l.nop	0
	l.j	.LBB2_4
	l.nop	0
.LBB2_80:
	l.addi	r18, r18, 800
	l.sfltu	r16, r17
	l.addi	r20, r20, 640           # CFC
	l.bf	.LBB2_7
	l.nop	0
.LBB2_81:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfltu	r6, r7
	l.bf	.LBB2_7
	l.nop	0
	l.j	.LBB2_6
	l.nop	0
.LBB2_82:
	l.addi	r18, r18, 810
	l.sfgeu	r13, r8
	l.addi	r20, r20, 648           # CFC
	l.bf	.LBB2_21
	l.nop	0
.LBB2_83:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgeu	r3, r11
	l.bf	.LBB2_21
	l.nop	0
	l.j	.LBB2_8
	l.nop	0
.LBB2_84:
	l.addi	r18, r18, 815
	l.sfeqi	r17, 0
	l.addi	r20, r20, 652           # CFC
	l.bf	.LBB2_10
	l.nop	0
.LBB2_85:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfeqi	r7, 0
	l.bf	.LBB2_10
	l.nop	0
	l.j	.LBB2_9
	l.nop	0
.LBB2_86:
	l.addi	r18, r18, 825
	l.sfgeu	r17, r13
	l.addi	r20, r20, 660           # CFC
	l.bf	.LBB2_14
	l.nop	0
.LBB2_87:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgeu	r7, r3
	l.bf	.LBB2_14
	l.nop	0
	l.j	.LBB2_11
	l.nop	0
.LBB2_88:
	l.addi	r18, r18, 830
	l.sfltu	r17, r16
	l.addi	r20, r20, 664           # CFC
	l.bf	.LBB2_14
	l.nop	0
.LBB2_89:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfltu	r7, r6
	l.bf	.LBB2_14
	l.nop	0
	l.j	.LBB2_12
	l.nop	0
.LBB2_90:
	l.sfgeu	r17, r13
	l.bf	.LBB2_14
	l.nop	0
.LBB2_91:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgeu	r7, r3
	l.bf	.LBB2_14
	l.nop	0
	l.j	.LBB2_13
	l.nop	0
.LBB2_92:
	l.addi	r18, r18, 840
	l.sfgeu	r13, r8
	l.addi	r20, r20, 672           # CFC
	l.bf	.LBB2_20
	l.nop	0
.LBB2_93:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgeu	r3, r11
	l.bf	.LBB2_20
	l.nop	0
	l.j	.LBB2_15
	l.nop	0
.LBB2_94:
	l.addi	r18, r18, 845
	l.sfltu	r15, r8
	l.addi	r20, r20, 676           # CFC
	l.bf	.LBB2_17
	l.nop	0
.LBB2_95:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfltu	r5, r11
	l.bf	.LBB2_17
	l.nop	0
	l.j	.LBB2_16
	l.nop	0
.LBB2_96:
	l.sfgeu	r15, r16
	l.bf	.LBB2_19
	l.nop	0
.LBB2_97:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgeu	r5, r6
	l.bf	.LBB2_19
	l.nop	0
	l.j	.LBB2_18
	l.nop	0
.LBB2_98:
	l.addi	r18, r18, 870
	l.sfltu	r13, r15
	l.addi	r20, r20, 696           # CFC
	l.bf	.LBB2_72
	l.nop	0
.LBB2_99:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfltu	r3, r5
	l.bf	.LBB2_72
	l.nop	0
	l.j	.LBB2_44
	l.nop	0
.LBB2_100:
	l.addi	r18, r18, 875
	l.sfltu	r15, r17
	l.addi	r20, r20, 700           # CFC
	l.bf	.LBB2_46
	l.nop	0
.LBB2_101:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfltu	r5, r7
	l.bf	.LBB2_46
	l.nop	0
	l.j	.LBB2_45
	l.nop	0
.LBB2_102:
	l.addi	r18, r18, 885
	l.sfltui	r15, 256
	l.addi	r20, r20, 708           # CFC
	l.bf	.LBB2_48
	l.nop	0
.LBB2_103:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfltui	r5, 256
	l.bf	.LBB2_48
	l.nop	0
	l.j	.LBB2_47
	l.nop	0
.LBB2_104:
	l.addi	r18, r18, 895
	l.sfltu	r15, r8
	l.addi	r20, r20, 716           # CFC
	l.bf	.LBB2_50
	l.nop	0
.LBB2_105:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfltu	r5, r11
	l.bf	.LBB2_50
	l.nop	0
	l.j	.LBB2_49
	l.nop	0
.LBB2_106:
	l.addi	r18, r18, 905
	l.sfnei	r17, 0
	l.addi	r20, r20, 724           # CFC
	l.bf	.LBB2_56
	l.nop	0
.LBB2_107:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB2_56
	l.nop	0
	l.j	.LBB2_51
	l.nop	0
.LBB2_108:
	l.addi	r18, r18, 910
	l.sfleu	r13, r15
	l.addi	r20, r20, 728           # CFC
	l.bf	.LBB2_110
	l.nop	0
.LBB2_109:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfleu	r3, r5
	l.bf	.LBB2_110
	l.nop	0
	l.j	.LBB2_111
	l.nop	0
.LBB2_110:
	l.addi	r18, r18, 219
	l.addi	r20, r20, 438           # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 1314
	l.ori	r13, r14, 0
	l.addi	r18, r18, 1095
	l.ori	r23, r24, 0
	l.addi	r20, r20, 876           # CFC
	l.j	.LBB2_53
	l.nop	0
.LBB2_112:
	l.addi	r18, r18, 925
	l.sfltu	r15, r16
	l.addi	r20, r20, 740           # CFC
	l.bf	.LBB2_55
	l.nop	0
.LBB2_113:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfltu	r5, r6
	l.bf	.LBB2_55
	l.nop	0
	l.j	.LBB2_54
	l.nop	0
.LBB2_114:
	l.addi	r18, r18, 940
	l.sfgeu	r13, r14
	l.addi	r20, r20, 752           # CFC
	l.bf	.LBB2_60
	l.nop	0
.LBB2_115:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB2_60
	l.nop	0
	l.j	.LBB2_57
	l.nop	0
.LBB2_116:
	l.addi	r18, r18, 945
	l.sfltu	r13, r16
	l.addi	r20, r20, 756           # CFC
	l.bf	.LBB2_60
	l.nop	0
.LBB2_117:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfltu	r3, r6
	l.bf	.LBB2_60
	l.nop	0
	l.j	.LBB2_58
	l.nop	0
.LBB2_118:
	l.sfgeu	r13, r14
	l.bf	.LBB2_60
	l.nop	0
.LBB2_119:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB2_60
	l.nop	0
	l.j	.LBB2_59
	l.nop	0
.LBB2_120:
	l.addi	r18, r18, 955
	l.sfgeu	r13, r15
	l.addi	r20, r20, 764           # CFC
	l.bf	.LBB2_64
	l.nop	0
.LBB2_121:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgeu	r3, r5
	l.bf	.LBB2_64
	l.nop	0
	l.j	.LBB2_61
	l.nop	0
.LBB2_122:
	l.addi	r18, r18, 960
	l.sfltu	r13, r16
	l.addi	r20, r20, 768           # CFC
	l.bf	.LBB2_64
	l.nop	0
.LBB2_123:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfltu	r3, r6
	l.bf	.LBB2_64
	l.nop	0
	l.j	.LBB2_62
	l.nop	0
.LBB2_124:
	l.sfgeu	r13, r15
	l.bf	.LBB2_64
	l.nop	0
.LBB2_125:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgeu	r3, r5
	l.bf	.LBB2_64
	l.nop	0
	l.j	.LBB2_63
	l.nop	0
.LBB2_126:
	l.addi	r18, r18, 970
	l.sfltu	r15, r16
	l.addi	r20, r20, 776           # CFC
	l.bf	.LBB2_66
	l.nop	0
.LBB2_127:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfltu	r5, r6
	l.bf	.LBB2_66
	l.nop	0
	l.j	.LBB2_65
	l.nop	0
.LBB2_128:
	l.addi	r18, r18, 980
	l.sfnei	r14, 0
	l.addi	r20, r20, 784           # CFC
	l.bf	.LBB2_68
	l.nop	0
.LBB2_129:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB2_68
	l.nop	0
	l.j	.LBB2_67
	l.nop	0
.LBB2_130:
	l.addi	r18, r18, 990
	l.sfgtu	r16, r13
	l.addi	r20, r20, 792           # CFC
	l.bf	.LBB2_71
	l.nop	0
.LBB2_131:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgtu	r6, r3
	l.bf	.LBB2_71
	l.nop	0
	l.j	.LBB2_69
	l.nop	0
.LBB2_132:
	l.addi	r18, r18, 995
	l.sfleu	r15, r14
	l.addi	r20, r20, 796           # CFC
	l.bf	.LBB2_72
	l.nop	0
.LBB2_133:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfleu	r5, r4
	l.bf	.LBB2_72
	l.nop	0
	l.j	.LBB2_70
	l.nop	0
.LBB2_134:
	l.sfne	r16, r13
	l.bf	.LBB2_72
	l.nop	0
.LBB2_135:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfne	r6, r3
	l.bf	.LBB2_72
	l.nop	0
	l.j	.LBB2_71
	l.nop	0
.LBB2_136:
	l.sfnei	r17, 0
	l.bf	.LBB2_23
	l.nop	0
.LBB2_137:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB2_23
	l.nop	0
	l.j	.LBB2_22
	l.nop	0
.LBB2_138:
	l.addi	r18, r18, 1010
	l.sfgeu	r13, r14
	l.addi	r20, r20, 808           # CFC
	l.bf	.LBB2_27
	l.nop	0
.LBB2_139:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB2_27
	l.nop	0
	l.j	.LBB2_24
	l.nop	0
.LBB2_140:
	l.addi	r18, r18, 1015
	l.sfltu	r13, r16
	l.addi	r20, r20, 812           # CFC
	l.bf	.LBB2_27
	l.nop	0
.LBB2_141:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfltu	r3, r6
	l.bf	.LBB2_27
	l.nop	0
	l.j	.LBB2_25
	l.nop	0
.LBB2_142:
	l.sfgeu	r13, r14
	l.bf	.LBB2_27
	l.nop	0
.LBB2_143:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB2_27
	l.nop	0
	l.j	.LBB2_26
	l.nop	0
.LBB2_144:
	l.addi	r18, r18, 1025
	l.sfgeu	r13, r14
	l.addi	r20, r20, 820           # CFC
	l.bf	.LBB2_31
	l.nop	0
.LBB2_145:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB2_31
	l.nop	0
	l.j	.LBB2_28
	l.nop	0
.LBB2_146:
	l.addi	r18, r18, 1030
	l.sfltu	r13, r16
	l.addi	r20, r20, 824           # CFC
	l.bf	.LBB2_31
	l.nop	0
.LBB2_147:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfltu	r3, r6
	l.bf	.LBB2_31
	l.nop	0
	l.j	.LBB2_29
	l.nop	0
.LBB2_148:
	l.sfgeu	r13, r14
	l.bf	.LBB2_31
	l.nop	0
.LBB2_149:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB2_31
	l.nop	0
	l.j	.LBB2_30
	l.nop	0
.LBB2_150:
	l.addi	r18, r18, 1045
	l.sfgeu	r17, r14
	l.addi	r20, r20, 836           # CFC
	l.bf	.LBB2_36
	l.nop	0
.LBB2_151:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgeu	r7, r4
	l.bf	.LBB2_36
	l.nop	0
	l.j	.LBB2_33
	l.nop	0
.LBB2_152:
	l.addi	r18, r18, 1050
	l.sfltu	r17, r16
	l.addi	r20, r20, 840           # CFC
	l.bf	.LBB2_36
	l.nop	0
.LBB2_153:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfltu	r7, r6
	l.bf	.LBB2_36
	l.nop	0
	l.j	.LBB2_34
	l.nop	0
.LBB2_154:
	l.sfgeu	r17, r14
	l.bf	.LBB2_36
	l.nop	0
.LBB2_155:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgeu	r7, r4
	l.bf	.LBB2_36
	l.nop	0
	l.j	.LBB2_35
	l.nop	0
.LBB2_156:
	l.addi	r18, r18, 1060
	l.sfgeu	r14, r13
	l.addi	r20, r20, 848           # CFC
	l.bf	.LBB2_42
	l.nop	0
.LBB2_157:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgeu	r4, r3
	l.bf	.LBB2_42
	l.nop	0
	l.j	.LBB2_37
	l.nop	0
.LBB2_158:
	l.addi	r18, r18, 1065
	l.sfltu	r15, r13
	l.addi	r20, r20, 852           # CFC
	l.bf	.LBB2_39
	l.nop	0
.LBB2_159:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfltu	r5, r3
	l.bf	.LBB2_39
	l.nop	0
	l.j	.LBB2_38
	l.nop	0
.LBB2_160:
	l.sfgeu	r15, r16
	l.bf	.LBB2_41
	l.nop	0
.LBB2_161:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_73
	l.nop	0
	l.sfgeu	r5, r6
	l.bf	.LBB2_41
	l.nop	0
	l.j	.LBB2_40
	l.nop	0
.Lfunc_end2:
	.size	__udivdi3, .Lfunc_end2-__udivdi3

	.hidden	memset
	.globl	memset
	.p2align	2
	.type	memset,@function
memset:                                 # @memset
l.addi	r10, r1, 0
l.addi	r12, r2, 0
l.addi	r13, r3, 0
l.addi	r14, r4, 0
l.addi	r15, r5, 0
l.addi	r16, r6, 0
l.addi	r17, r7, 0
l.addi	r19, r9, 0
l.addi	r8, r11, 0

l.addi	r21, r1, 0
l.addi	r22, r2, 0
l.addi	r23, r3, 0
l.addi	r24, r4, 0
l.addi	r25, r5, 0
l.addi	r26, r6, 0
l.addi	r27, r7, 0
l.addi	r29, r9, 0
l.addi	r31, r11, 0
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 220
	l.addi	r20, r20, 440           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.sfltui	r5, 8
	l.ori	r7, r3, 0
	l.sw	2544(r10), r12
	l.addi	r28, r28, 1320
	l.addi	r12, r10, 0
	l.addi	r10, r10, -16
	l.ori	r17, r13, 0
	l.sw	5092(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -16           # CFC
	l.ori	r27, r23, 0
	l.bf	.LBB3_17
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1100
	l.sfltui	r15, 8
	l.addi	r20, r20, 880           # CFC
	l.bf	.LBB3_18
	l.nop	0
.LBB3_1:                                # %if.then
	l.addi	r18, r18, 221
	l.andi	r6, r4, 255
	l.ori	r11, r4, 0
	l.slli	r4, r6, 8
	l.or	r6, r4, r6
	l.slli	r4, r6, 16
	l.andi	r16, r14, 255
	l.ori	r8, r14, 0
	l.slli	r14, r16, 8
	l.addi	r20, r20, 442           # CFC
	l.sw	-16(r2), r4
	l.or	r16, r14, r16
	l.andi	r26, r24, 255
	l.andi	r4, r3, 3
	l.slli	r14, r16, 16
	l.ori	r31, r24, 0
	l.sfeqi	r4, 0
	l.sw	2532(r12), r14
	l.addi	r28, r28, 1326
	l.slli	r24, r26, 8
	l.ori	r7, r3, 0
	l.andi	r14, r13, 3
	l.ori	r17, r13, 0
	l.or	r26, r24, r26
	l.slli	r24, r26, 16
	l.sw	5080(r22), r24
	l.andi	r24, r23, 3
	l.ori	r27, r23, 0
	l.bf	.LBB3_19
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1105
	l.sfeqi	r14, 0
	l.addi	r20, r20, 884           # CFC
	l.bf	.LBB3_20
	l.nop	0
.LBB3_2:                                # %while.body.preheader
	l.addi	r18, r18, 222
	l.addi	r20, r20, 444           # CFC
	l.ori	r7, r3, 0
	l.addi	r28, r28, 1332
	l.ori	r17, r13, 0
	l.addi	r18, r18, 1110
	l.ori	r27, r23, 0
	l.addi	r20, r20, 888           # CFC
.LBB3_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 223
	l.sb	0(r7), r11
	l.addi	r5, r5, -1
	l.addi	r7, r7, 1
	l.andi	r4, r7, 3
	l.addi	r20, r20, 446           # CFC
	l.sfnei	r4, 0
	l.sb	2548(r17), r8
	l.addi	r15, r15, -1
	l.addi	r17, r17, 1
	l.addi	r28, r28, 1338
	l.andi	r14, r17, 3
	l.sb	5096(r27), r31
	l.addi	r25, r25, -1
	l.addi	r27, r27, 1
	l.andi	r24, r27, 3
	l.bf	.LBB3_21
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1115
	l.sfnei	r14, 0
	l.addi	r20, r20, 892           # CFC
	l.bf	.LBB3_22
	l.nop	0
.LBB3_4:                                # %while.end
	l.addi	r18, r18, 224
	l.sw	-12(r2), r11
	l.lwz	r4, -16(r2)
	l.or	r4, r4, r6
	l.srli	r11, r5, 5
	l.sfeqi	r11, 0
	l.addi	r20, r20, 448           # CFC
	l.sw	-8(r2), r3
	l.sw	2536(r12), r8
	l.lwz	r14, 2532(r12)
	l.or	r14, r14, r16
	l.srli	r8, r15, 5
	l.addi	r28, r28, 1344
	l.sw	2540(r12), r13
	l.sw	5084(r22), r31
	l.lwz	r24, 5080(r22)
	l.or	r24, r24, r26
	l.srli	r31, r25, 5
	l.sw	5088(r22), r23
	l.bf	.LBB3_23
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1120
	l.sfeqi	r8, 0
	l.addi	r20, r20, 896           # CFC
	l.bf	.LBB3_24
	l.nop	0
.LBB3_5:                                # %while.body10.preheader
	l.addi	r18, r18, 225
	l.movhi	r6, 0
	l.ori	r3, r11, 0
	l.sub	r11, r6, r3
	l.slli	r6, r3, 5
	l.addi	r20, r20, 450           # CFC
	l.sw	-16(r2), r6
	l.movhi	r16, 0
	l.ori	r13, r8, 0
	l.sub	r8, r16, r13
	l.ori	r6, r7, 0
	l.addi	r28, r28, 1350
	l.slli	r16, r13, 5
	l.movhi	r26, 0
	l.sw	2532(r12), r16
	l.ori	r16, r17, 0
	l.addi	r18, r18, 1125
	l.ori	r23, r31, 0
	l.sub	r31, r26, r23
	l.slli	r26, r23, 5
	l.sw	5080(r22), r26
	l.ori	r26, r27, 0
	l.addi	r20, r20, 900           # CFC
.LBB3_6:                                # %while.body10
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 226
	l.sw	0(r6), r4
	l.sw	4(r6), r4
	l.sw	8(r6), r4
	l.sw	12(r6), r4
	l.sw	16(r6), r4
	l.sw	2548(r16), r14
	l.sw	2552(r16), r14
	l.sw	2556(r16), r14
	l.sw	20(r6), r4
	l.sw	2560(r16), r14
	l.addi	r20, r20, 452           # CFC
	l.sw	5096(r26), r24
	l.sw	24(r6), r4
	l.sw	2564(r16), r14
	l.sw	5100(r26), r24
	l.sw	28(r6), r4
	l.sw	2568(r16), r14
	l.sw	5104(r26), r24
	l.addi	r6, r6, 32
	l.sw	2572(r16), r14
	l.sw	5108(r26), r24
	l.addi	r28, r28, 1356
	l.addi	r11, r11, 1
	l.sw	2576(r16), r14
	l.sw	5112(r26), r24
	l.sfnei	r11, 0
	l.addi	r16, r16, 32
	l.addi	r8, r8, 1
	l.sw	5116(r26), r24
	l.sw	5120(r26), r24
	l.sw	5124(r26), r24
	l.addi	r26, r26, 32
	l.addi	r31, r31, 1
	l.bf	.LBB3_25
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1130
	l.sfnei	r8, 0
	l.addi	r20, r20, 904           # CFC
	l.bf	.LBB3_26
	l.nop	0
.LBB3_7:                                # %while.end21.loopexit
	l.addi	r18, r18, 227
	l.lwz	r6, -16(r2)
	l.add	r7, r7, r6
	l.addi	r20, r20, 454           # CFC
	l.lwz	r3, -8(r2)
	l.lwz	r16, 2532(r12)
	l.addi	r28, r28, 1362
	l.add	r17, r17, r16
	l.lwz	r13, 2540(r12)
	l.addi	r18, r18, 1135
	l.lwz	r26, 5080(r22)
	l.add	r27, r27, r26
	l.lwz	r23, 5088(r22)
	l.addi	r20, r20, 908           # CFC
.LBB3_8:                                # %while.end21
	l.addi	r18, r18, 228
	l.srli	r6, r5, 2
	l.andi	r11, r6, 7
	l.addi	r20, r20, 456           # CFC
	l.sfeqi	r11, 0
	l.srli	r16, r15, 2
	l.addi	r28, r28, 1368
	l.andi	r8, r16, 7
	l.srli	r26, r25, 2
	l.andi	r31, r26, 7
	l.bf	.LBB3_27
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1140
	l.sfeqi	r8, 0
	l.addi	r20, r20, 912           # CFC
	l.bf	.LBB3_28
	l.nop	0
.LBB3_9:                                # %while.body27.preheader
	l.addi	r18, r18, 229
	l.movhi	r6, 0
	l.ori	r3, r11, 0
	l.sub	r11, r6, r3
	l.addi	r20, r20, 458           # CFC
	l.slli	r6, r3, 2
	l.ori	r3, r7, 0
	l.movhi	r16, 0
	l.ori	r13, r8, 0
	l.addi	r28, r28, 1374
	l.sub	r8, r16, r13
	l.slli	r16, r13, 2
	l.ori	r13, r17, 0
	l.movhi	r26, 0
	l.addi	r18, r18, 1145
	l.ori	r23, r31, 0
	l.sub	r31, r26, r23
	l.slli	r26, r23, 2
	l.ori	r23, r27, 0
	l.addi	r20, r20, 916           # CFC
.LBB3_10:                               # %while.body27
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 230
	l.sw	0(r3), r4
	l.addi	r3, r3, 4
	l.addi	r11, r11, 1
	l.addi	r20, r20, 460           # CFC
	l.sfnei	r11, 0
	l.sw	2548(r13), r14
	l.addi	r13, r13, 4
	l.addi	r28, r28, 1380
	l.addi	r8, r8, 1
	l.sw	5096(r23), r24
	l.addi	r23, r23, 4
	l.addi	r31, r31, 1
	l.bf	.LBB3_29
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1150
	l.sfnei	r8, 0
	l.addi	r20, r20, 920           # CFC
	l.bf	.LBB3_30
	l.nop	0
.LBB3_11:                               # %while.end31.loopexit
	l.addi	r18, r18, 231
	l.add	r7, r7, r6
	l.addi	r20, r20, 462           # CFC
	l.lwz	r3, -8(r2)
	l.add	r17, r17, r16
	l.addi	r28, r28, 1386
	l.lwz	r13, 2540(r12)
	l.addi	r18, r18, 1155
	l.add	r27, r27, r26
	l.lwz	r23, 5088(r22)
	l.addi	r20, r20, 924           # CFC
.LBB3_12:                               # %while.end31
	l.addi	r18, r18, 232
	l.andi	r5, r5, 3
	l.addi	r20, r20, 464           # CFC
	l.lwz	r4, -12(r2)
	l.andi	r15, r15, 3
	l.addi	r28, r28, 1392
	l.lwz	r14, 2536(r12)
	l.addi	r18, r18, 1160
	l.andi	r25, r25, 3
	l.lwz	r24, 5084(r22)
	l.addi	r20, r20, 928           # CFC
.LBB3_13:                               # %while.cond33.preheader
	l.sfeqi	r5, 0
	l.bf	.LBB3_31
	l.nop	0                       # in delay slot
	l.sfeqi	r15, 0
	l.bf	.LBB3_32
	l.nop	0
.LBB3_14:                               # %while.body36
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 233
	l.sb	0(r7), r4
	l.addi	r7, r7, 1
	l.addi	r5, r5, -1
	l.addi	r20, r20, 466           # CFC
	l.sfnei	r5, 0
	l.sb	2548(r17), r14
	l.addi	r17, r17, 1
	l.addi	r28, r28, 1398
	l.addi	r15, r15, -1
	l.sb	5096(r27), r24
	l.addi	r27, r27, 1
	l.addi	r25, r25, -1
	l.bf	.LBB3_33
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1165
	l.sfnei	r15, 0
	l.addi	r20, r20, 932           # CFC
	l.bf	.LBB3_34
	l.nop	0
.LBB3_15:                               # %while.end41
	l.addi	r18, r18, 234
	l.ori	r11, r3, 0
	l.addi	r1, r2, 0
	l.addi	r20, r20, 468           # CFC
	l.lwz	r2, -4(r1)
	l.ori	r8, r13, 0
	l.addi	r28, r28, 1404
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.addi	r18, r18, 1170
	l.ori	r31, r23, 0
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 936           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB3_16
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB3_16:                               # %while.end41
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB3_35
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB3_35
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB3_35
	l.nop	0
	l.nop	205
.LBB3_35:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB3_36
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB3_36
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB3_36
	l.nop	0
	l.nop	205
.LBB3_36:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB3_37
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB3_37
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB3_37
	l.nop	0
	l.nop	205
.LBB3_37:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB3_38
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB3_38
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB3_38
	l.nop	0
	l.nop	205
.LBB3_38:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB3_39
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB3_39
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB3_39
	l.nop	0
	l.nop	205
.LBB3_39:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB3_40
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB3_40
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB3_40
	l.nop	0
	l.nop	205
.LBB3_40:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB3_41
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB3_41
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB3_41
	l.nop	0
	l.nop	205
.LBB3_41:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB3_42
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB3_42
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB3_42
	l.nop	0
	l.nop	205
.LBB3_42:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB3_43
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB3_43
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB3_43
	l.nop	0
	l.nop	205
.LBB3_43:
.LBB3_44:
	l.jr	r30
	l.nop	0
.LBB3_17:
	l.addi	r18, r18, 1100
	l.sfltui	r15, 8
	l.addi	r20, r20, 880           # CFC
	l.bf	.LBB3_13
	l.nop	0
.LBB3_18:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_16
	l.nop	0
	l.sfltui	r5, 8
	l.bf	.LBB3_13
	l.nop	0
	l.j	.LBB3_1
	l.nop	0
.LBB3_19:
	l.addi	r18, r18, 1105
	l.sfeqi	r14, 0
	l.addi	r20, r20, 884           # CFC
	l.bf	.LBB3_4
	l.nop	0
.LBB3_20:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_16
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB3_4
	l.nop	0
	l.j	.LBB3_2
	l.nop	0
.LBB3_21:
	l.addi	r18, r18, 1115
	l.sfnei	r14, 0
	l.addi	r20, r20, 892           # CFC
	l.bf	.LBB3_3
	l.nop	0
.LBB3_22:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_16
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB3_3
	l.nop	0
	l.j	.LBB3_4
	l.nop	0
.LBB3_23:
	l.addi	r18, r18, 1120
	l.sfeqi	r8, 0
	l.addi	r20, r20, 896           # CFC
	l.bf	.LBB3_8
	l.nop	0
.LBB3_24:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_16
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB3_8
	l.nop	0
	l.j	.LBB3_5
	l.nop	0
.LBB3_25:
	l.addi	r18, r18, 1130
	l.sfnei	r8, 0
	l.addi	r20, r20, 904           # CFC
	l.bf	.LBB3_6
	l.nop	0
.LBB3_26:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_16
	l.nop	0
	l.sfnei	r11, 0
	l.bf	.LBB3_6
	l.nop	0
	l.j	.LBB3_7
	l.nop	0
.LBB3_27:
	l.addi	r18, r18, 1140
	l.sfeqi	r8, 0
	l.addi	r20, r20, 912           # CFC
	l.bf	.LBB3_12
	l.nop	0
.LBB3_28:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_16
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB3_12
	l.nop	0
	l.j	.LBB3_9
	l.nop	0
.LBB3_29:
	l.addi	r18, r18, 1150
	l.sfnei	r8, 0
	l.addi	r20, r20, 920           # CFC
	l.bf	.LBB3_10
	l.nop	0
.LBB3_30:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_16
	l.nop	0
	l.sfnei	r11, 0
	l.bf	.LBB3_10
	l.nop	0
	l.j	.LBB3_11
	l.nop	0
.LBB3_31:
	l.sfeqi	r15, 0
	l.bf	.LBB3_15
	l.nop	0
.LBB3_32:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_16
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB3_15
	l.nop	0
	l.j	.LBB3_14
	l.nop	0
.LBB3_33:
	l.addi	r18, r18, 1165
	l.sfnei	r15, 0
	l.addi	r20, r20, 932           # CFC
	l.bf	.LBB3_14
	l.nop	0
.LBB3_34:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_16
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB3_14
	l.nop	0
	l.j	.LBB3_15
	l.nop	0
.Lfunc_end3:
	.size	memset, .Lfunc_end3-memset

	.hidden	updateCRC32
	.globl	updateCRC32
	.p2align	2
	.type	updateCRC32,@function
updateCRC32:                            # @updateCRC32
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 235
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.andi	r5, r4, 255
	l.xor	r3, r5, r3
	l.sw	2544(r10), r12
	l.addi	r20, r20, 470           # CFC
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.slli	r3, r3, 2
	l.andi	r15, r14, 255
	l.sw	5092(r21), r22
	l.movhi	r5, hi(crc_32_tab)
	l.xor	r13, r15, r13
	l.addi	r22, r21, 0             # CFC
	l.ori	r5, r5, lo(crc_32_tab)
	l.slli	r13, r13, 2
	l.addi	r21, r21, -4            # CFC
	l.add	r3, r3, r5
	l.addi	r28, r28, 1410
	l.movhi	r15, hi(crc_32_tab)
	l.andi	r25, r24, 255
	l.lwz	r3, 0(r3)
	l.ori	r15, r15, lo(crc_32_tab)
	l.xor	r23, r25, r23
	l.srli	r4, r4, 8
	l.add	r13, r13, r15
	l.slli	r23, r23, 2
	l.xor	r11, r3, r4
	l.lwz	r13, 2548(r13)
	l.movhi	r25, hi(crc_32_tab)
	l.addi	r1, r2, 0
	l.addi	r18, r18, 1175
	l.srli	r14, r14, 8
	l.ori	r25, r25, lo(crc_32_tab)
	l.lwz	r2, -4(r1)
	l.xor	r8, r13, r14
	l.add	r23, r23, r25
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.lwz	r23, 5096(r23)
	l.srli	r24, r24, 8
	l.xor	r31, r23, r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 940           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB4_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB4_1:                                # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB4_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB4_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB4_2
	l.nop	0
	l.nop	205
.LBB4_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB4_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB4_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB4_3
	l.nop	0
	l.nop	205
.LBB4_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB4_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB4_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB4_4
	l.nop	0
	l.nop	205
.LBB4_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB4_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB4_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB4_5
	l.nop	0
	l.nop	205
.LBB4_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB4_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB4_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB4_6
	l.nop	0
	l.nop	205
.LBB4_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB4_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB4_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB4_7
	l.nop	0
	l.nop	205
.LBB4_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB4_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB4_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB4_8
	l.nop	0
	l.nop	205
.LBB4_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB4_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB4_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB4_9
	l.nop	0
	l.nop	205
.LBB4_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB4_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB4_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB4_10
	l.nop	0
	l.nop	205
.LBB4_10:
.LBB4_11:
	l.jr	r30
	l.nop	0
.Lfunc_end4:
	.size	updateCRC32, .Lfunc_end4-updateCRC32

	.hidden	crc32file
	.globl	crc32file
	.p2align	2
	.type	crc32file,@function
crc32file:                              # @crc32file
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 236
	l.sw	-4(r1), r2
	l.addi	r20, r20, 472           # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r6, 0
	l.sw	0(r4), r6
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.addi	r5, r0, -1
	l.addi	r28, r28, 1416
	l.movhi	r16, 0
	l.sw	5092(r21), r22
	l.movhi	r7, hi(crc_32_tab)
	l.sw	2548(r14), r16
	l.addi	r22, r21, 0             # CFC
	l.ori	r7, r7, lo(crc_32_tab)
	l.addi	r15, r0, -1
	l.addi	r18, r18, 1180
	l.addi	r21, r21, -4            # CFC
	l.movhi	r17, hi(crc_32_tab)
	l.ori	r17, r17, lo(crc_32_tab)
	l.movhi	r26, 0
	l.sw	5096(r24), r26
	l.addi	r25, r0, -1
	l.movhi	r27, hi(crc_32_tab)
	l.ori	r27, r27, lo(crc_32_tab)
	l.addi	r20, r20, 944           # CFC
.LBB5_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 237
	l.xor	r11, r6, r5
	l.andi	r11, r11, 255
	l.slli	r11, r11, 2
	l.add	r11, r11, r7
	l.lwz	r11, 0(r11)
	l.xor	r8, r16, r15
	l.andi	r8, r8, 255
	l.slli	r8, r8, 2
	l.addi	r20, r20, 474           # CFC
	l.srli	r5, r5, 8
	l.add	r8, r8, r17
	l.xor	r31, r26, r25
	l.xor	r5, r11, r5
	l.lwz	r8, 2548(r8)
	l.andi	r31, r31, 255
	l.addi	r6, r6, 1
	l.srli	r15, r15, 8
	l.addi	r28, r28, 1422
	l.slli	r31, r31, 2
	l.sfnei	r6, 2216
	l.xor	r15, r8, r15
	l.addi	r16, r16, 1
	l.add	r31, r31, r27
	l.lwz	r31, 5096(r31)
	l.srli	r25, r25, 8
	l.xor	r25, r31, r25
	l.addi	r26, r26, 1
	l.bf	.LBB5_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1185
	l.sfnei	r16, 2216
	l.addi	r20, r20, 948           # CFC
	l.bf	.LBB5_5
	l.nop	0
.LBB5_2:                                # %while.end
	l.addi	r18, r18, 238
	l.addi	r6, r0, 2216
	l.sw	0(r4), r6
	l.xori	r4, r5, -1
	l.sw	0(r3), r4
	l.movhi	r11, 0
	l.addi	r20, r20, 476           # CFC
	l.addi	r16, r0, 2216
	l.sw	2548(r14), r16
	l.xori	r14, r15, -1
	l.addi	r1, r2, 0
	l.sw	2548(r13), r14
	l.addi	r28, r28, 1428
	l.addi	r26, r0, 2216
	l.lwz	r2, -4(r1)
	l.movhi	r8, 0
	l.sw	5096(r24), r26
	l.addi	r10, r12, 0
	l.addi	r18, r18, 1190
	l.lwz	r12, 2544(r10)
	l.xori	r24, r25, -1
	l.sw	5096(r23), r24
	l.movhi	r31, 0
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 952           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB5_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB5_3:                                # %while.end
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB5_6
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB5_6
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB5_6
	l.nop	0
	l.nop	205
.LBB5_6:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB5_7
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB5_7
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB5_7
	l.nop	0
	l.nop	205
.LBB5_7:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB5_8
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB5_8
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB5_8
	l.nop	0
	l.nop	205
.LBB5_8:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB5_9
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB5_9
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB5_9
	l.nop	0
	l.nop	205
.LBB5_9:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB5_10
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB5_10
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB5_10
	l.nop	0
	l.nop	205
.LBB5_10:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB5_11
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB5_11
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB5_11
	l.nop	0
	l.nop	205
.LBB5_11:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB5_12
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB5_12
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB5_12
	l.nop	0
	l.nop	205
.LBB5_12:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB5_13
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB5_13
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB5_13
	l.nop	0
	l.nop	205
.LBB5_13:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB5_14
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB5_14
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB5_14
	l.nop	0
	l.nop	205
.LBB5_14:
.LBB5_15:
	l.jr	r30
	l.nop	0
.LBB5_4:
	l.addi	r18, r18, 1185
	l.sfnei	r16, 2216
	l.addi	r20, r20, 948           # CFC
	l.bf	.LBB5_1
	l.nop	0
.LBB5_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB5_3
	l.nop	0
	l.sfnei	r6, 2216
	l.bf	.LBB5_1
	l.nop	0
	l.j	.LBB5_2
	l.nop	0
.Lfunc_end5:
	.size	crc32file, .Lfunc_end5-crc32file

	.hidden	crc32buf
	.globl	crc32buf
	.p2align	2
	.type	crc32buf,@function
crc32buf:                               # @crc32buf
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 239
	l.addi	r20, r20, 478           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r11, 0
	l.sfeqi	r4, 0
	l.sw	2544(r10), r12
	l.addi	r28, r28, 1434
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.movhi	r8, 0
	l.sw	5092(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r31, 0
	l.bf	.LBB6_6
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1195
	l.sfeqi	r14, 0
	l.addi	r20, r20, 956           # CFC
	l.bf	.LBB6_7
	l.nop	0
.LBB6_1:                                # %for.body.preheader
	l.addi	r18, r18, 240
	l.addi	r5, r0, -1
	l.movhi	r6, hi(crc_32_tab)
	l.addi	r20, r20, 480           # CFC
	l.ori	r6, r6, lo(crc_32_tab)
	l.addi	r15, r0, -1
	l.addi	r28, r28, 1440
	l.movhi	r16, hi(crc_32_tab)
	l.ori	r16, r16, lo(crc_32_tab)
	l.addi	r18, r18, 1200
	l.addi	r25, r0, -1
	l.movhi	r26, hi(crc_32_tab)
	l.ori	r26, r26, lo(crc_32_tab)
	l.addi	r20, r20, 960           # CFC
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 241
	l.andi	r7, r5, 255
	l.lbz	r11, 0(r3)
	l.xor	r7, r11, r7
	l.slli	r7, r7, 2
	l.add	r7, r7, r6
	l.andi	r17, r15, 255
	l.lbz	r8, 2548(r13)
	l.xor	r17, r8, r17
	l.lwz	r7, 0(r7)
	l.slli	r17, r17, 2
	l.addi	r20, r20, 482           # CFC
	l.andi	r27, r25, 255
	l.srli	r5, r5, 8
	l.add	r17, r17, r16
	l.lbz	r31, 5096(r23)
	l.xor	r5, r7, r5
	l.lwz	r17, 2548(r17)
	l.xor	r27, r31, r27
	l.addi	r3, r3, 1
	l.srli	r15, r15, 8
	l.slli	r27, r27, 2
	l.addi	r28, r28, 1446
	l.addi	r4, r4, -1
	l.xor	r15, r17, r15
	l.add	r27, r27, r26
	l.sfnei	r4, 0
	l.addi	r13, r13, 1
	l.addi	r14, r14, -1
	l.lwz	r27, 5096(r27)
	l.srli	r25, r25, 8
	l.xor	r25, r27, r25
	l.addi	r23, r23, 1
	l.addi	r24, r24, -1
	l.bf	.LBB6_8
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1205
	l.sfnei	r14, 0
	l.addi	r20, r20, 964           # CFC
	l.bf	.LBB6_9
	l.nop	0
.LBB6_3:                                # %for.end.loopexit
	l.addi	r18, r18, 242
	l.addi	r20, r20, 484           # CFC
	l.xori	r11, r5, -1
	l.addi	r28, r28, 1452
	l.xori	r8, r15, -1
	l.addi	r18, r18, 1210
	l.xori	r31, r25, -1
	l.addi	r20, r20, 968           # CFC
.LBB6_4:                                # %for.end
	l.addi	r18, r18, 243
	l.addi	r1, r2, 0
	l.addi	r20, r20, 486           # CFC
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 1458
	l.lwz	r12, 2544(r10)
	l.addi	r18, r18, 1215
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 972           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB6_5
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB6_5:                                # %for.end
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB6_10
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB6_10
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB6_10
	l.nop	0
	l.nop	205
.LBB6_10:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB6_11
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB6_11
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB6_11
	l.nop	0
	l.nop	205
.LBB6_11:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB6_12
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB6_12
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB6_12
	l.nop	0
	l.nop	205
.LBB6_12:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB6_13
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB6_13
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB6_13
	l.nop	0
	l.nop	205
.LBB6_13:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB6_14
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB6_14
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB6_14
	l.nop	0
	l.nop	205
.LBB6_14:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB6_15
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB6_15
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB6_15
	l.nop	0
	l.nop	205
.LBB6_15:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB6_16
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB6_16
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB6_16
	l.nop	0
	l.nop	205
.LBB6_16:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB6_17
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB6_17
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB6_17
	l.nop	0
	l.nop	205
.LBB6_17:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB6_18
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB6_18
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB6_18
	l.nop	0
	l.nop	205
.LBB6_18:
.LBB6_19:
	l.jr	r30
	l.nop	0
.LBB6_6:
	l.addi	r18, r18, 1195
	l.sfeqi	r14, 0
	l.addi	r20, r20, 956           # CFC
	l.bf	.LBB6_4
	l.nop	0
.LBB6_7:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB6_5
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB6_4
	l.nop	0
	l.j	.LBB6_1
	l.nop	0
.LBB6_8:
	l.addi	r18, r18, 1205
	l.sfnei	r14, 0
	l.addi	r20, r20, 964           # CFC
	l.bf	.LBB6_2
	l.nop	0
.LBB6_9:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB6_5
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB6_2
	l.nop	0
	l.j	.LBB6_3
	l.nop	0
.Lfunc_end6:
	.size	crc32buf, .Lfunc_end6-crc32buf

	.hidden	main
	.globl	main
	.p2align	2
	.type	main,@function
main:                                   # @main
l.addi	r10, r1, 0
l.addi	r12, r2, 0
l.addi	r13, r3, 0
l.addi	r14, r4, 0
l.addi	r15, r5, 0
l.addi	r16, r6, 0
l.addi	r17, r7, 0
l.addi	r19, r9, 0
l.addi	r8, r11, 0

l.addi	r21, r1, 0
l.addi	r22, r2, 0
l.addi	r23, r3, 0
l.addi	r24, r4, 0
l.addi	r25, r5, 0
l.addi	r26, r6, 0
l.addi	r27, r7, 0
l.addi	r29, r9, 0
l.addi	r31, r11, 0
l.addi	r18, r0, 0
l.addi	r20, r0, 0
l.addi	r28, r0, 0
	l.nop 100
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 244
	l.addi	r20, r20, 488           # CFC
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.addi	r3, r0, -1
	l.sw	2544(r10), r19
	l.sw	2540(r10), r12
	l.addi	r28, r28, 1464
	l.addi	r12, r10, 0
	l.movhi	r4, 0
	l.addi	r10, r10, -16
	l.sw	5092(r21), r29
	l.movhi	r5, hi(crc_32_tab)
	l.addi	r13, r0, -1
	l.sw	5088(r21), r22
	l.ori	r5, r5, lo(crc_32_tab)
	l.addi	r18, r18, 1220
	l.movhi	r14, 0
	l.addi	r22, r21, 0             # CFC
	l.movhi	r15, hi(crc_32_tab)
	l.ori	r15, r15, lo(crc_32_tab)
	l.addi	r21, r21, -16           # CFC
	l.addi	r23, r0, -1
	l.movhi	r24, 0
	l.movhi	r25, hi(crc_32_tab)
	l.ori	r25, r25, lo(crc_32_tab)
	l.addi	r20, r20, 976           # CFC
.LBB7_1:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 245
	l.xor	r6, r3, r4
	l.andi	r6, r6, 255
	l.slli	r6, r6, 2
	l.add	r6, r6, r5
	l.lwz	r6, 0(r6)
	l.xor	r16, r13, r14
	l.andi	r16, r16, 255
	l.slli	r16, r16, 2
	l.addi	r20, r20, 490           # CFC
	l.srli	r3, r3, 8
	l.add	r16, r16, r15
	l.xor	r26, r23, r24
	l.xor	r3, r6, r3
	l.lwz	r16, 2548(r16)
	l.andi	r26, r26, 255
	l.addi	r4, r4, 1
	l.srli	r13, r13, 8
	l.addi	r28, r28, 1470
	l.slli	r26, r26, 2
	l.sfnei	r4, 2216
	l.xor	r13, r16, r13
	l.addi	r14, r14, 1
	l.add	r26, r26, r25
	l.lwz	r26, 5096(r26)
	l.srli	r23, r23, 8
	l.xor	r23, r26, r23
	l.addi	r24, r24, 1
	l.bf	.LBB7_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1225
	l.sfnei	r14, 2216
	l.addi	r20, r20, 980           # CFC
	l.bf	.LBB7_5
	l.nop	0
.LBB7_2:                                # %crc32file.exit
	l.addi	r18, r18, 246
	l.addi	r4, r0, 2216
	l.sw	4(r1), r4
	l.xori	r3, r3, -1
	l.sw	0(r1), r3
	l.movhi	r3, hi(.L.str)
	l.addi	r14, r0, 2216
	l.sw	2552(r10), r14
	l.addi	r20, r20, 492           # CFC
	l.xori	r13, r13, -1
	l.ori	r3, r3, lo(.L.str)
	l.sw	2548(r10), r13
	l.addi	r24, r0, 2216
	l.movhi	r13, hi(.L.str)
	l.ori	r13, r13, lo(.L.str)
	l.sw	5100(r21), r24
	l.xori	r23, r23, -1
	l.addi	r28, r28, 1476
	l.sw	5096(r21), r23
	l.movhi	r23, hi(.L.str)
	l.ori	r23, r23, lo(.L.str)
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.movhi	r11, 0
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r18, r18, 1230
	l.movhi	r8, 0
	l.addi	r10, r12, 0
	l.lwz	r12, 2540(r10)
	l.lwz	r19, 2544(r10)
	l.movhi	r31, 0
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5088(r21)
	l.lwz	r29, 5092(r21)
	l.addi	r20, r20, 984           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB7_3
	l.nop	0
    l.sfeq	r18, r20
	l.bf	.LBB33_NOTCF
	l.sfeq	r20, r28
	l.bf	.LBB33_NOTCF
	l.sfeq	r18, r28
	l.bf	.LBB33_NOTCF	
	l.nop 0
	
	
	l.nop 204
	
	
.LBB33_NOTCF:
	
	l.nop 200
	#l.jr	r9
	l.nop 1111
	l.nop	0   
.LBB7_3:                                # %crc32file.exit
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB7_6
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB7_6
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB7_6
	l.nop	0
	l.nop	205
.LBB7_6:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB7_7
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB7_7
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB7_7
	l.nop	0
	l.nop	205
.LBB7_7:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB7_8
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB7_8
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB7_8
	l.nop	0
	l.nop	205
.LBB7_8:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB7_9
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB7_9
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB7_9
	l.nop	0
	l.nop	205
.LBB7_9:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB7_10
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB7_10
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB7_10
	l.nop	0
	l.nop	205
.LBB7_10:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB7_11
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB7_11
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB7_11
	l.nop	0
	l.nop	205
.LBB7_11:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB7_12
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB7_12
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB7_12
	l.nop	0
	l.nop	205
.LBB7_12:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB7_13
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB7_13
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB7_13
	l.nop	0
	l.nop	205
.LBB7_13:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB7_14
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB7_14
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB7_14
	l.nop	0
	l.nop	205
.LBB7_14:
.LBB7_15:
	l.jr	r30
	l.nop	0
.LBB7_4:
	l.addi	r18, r18, 1225
	l.sfnei	r14, 2216
	l.addi	r20, r20, 980           # CFC
	l.bf	.LBB7_1
	l.nop	0
.LBB7_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB7_3
	l.nop	0
	l.sfnei	r4, 2216
	l.bf	.LBB7_1
	l.nop	0
	l.j	.LBB7_2
	l.nop	0
.Lfunc_end7:
	.size	main, .Lfunc_end7-main

	.hidden	__divsf3
	.globl	__divsf3
	.p2align	2
	.type	__divsf3,@function
__divsf3:                               # @__divsf3
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 247
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -28
	l.sw	-12(r2), r4
	l.movhi	r5, 127
	l.sw	2544(r10), r12
	l.addi	r20, r20, 494           # CFC
	l.addi	r12, r10, 0
	l.addi	r10, r10, -28
	l.ori	r5, r5, 65535
	l.sw	2536(r12), r14
	l.sw	5092(r21), r22
	l.and	r11, r3, r5
	l.movhi	r15, 127
	l.addi	r22, r21, 0             # CFC
	l.sw	-16(r2), r3
	l.ori	r15, r15, 65535
	l.addi	r21, r21, -28           # CFC
	l.srli	r5, r3, 23
	l.addi	r28, r28, 1482
	l.and	r8, r13, r15
	l.sw	5084(r22), r24
	l.andi	r3, r5, 255
	l.sw	2532(r12), r13
	l.movhi	r25, 127
	l.sfeqi	r3, 0
	l.srli	r15, r13, 23
	l.andi	r13, r15, 255
	l.ori	r25, r25, 65535
	l.and	r31, r23, r25
	l.sw	5080(r22), r23
	l.srli	r25, r23, 23
	l.andi	r23, r25, 255
	l.bf	.LBB8_66
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1235
	l.sfeqi	r13, 0
	l.addi	r20, r20, 988           # CFC
	l.bf	.LBB8_67
	l.nop	0
.LBB8_1:                                # %entry
	l.sfeqi	r3, 255
	l.bf	.LBB8_68
	l.nop	0                       # in delay slot
	l.sfeqi	r13, 255
	l.bf	.LBB8_69
	l.nop	0
.LBB8_2:                                # %sw.default
	l.addi	r18, r18, 248
	l.slli	r5, r11, 3
	l.movhi	r7, 1024
	l.or	r4, r5, r7
	l.movhi	r5, 0
	l.addi	r20, r20, 496           # CFC
	l.sw	-8(r2), r5
	l.slli	r15, r8, 3
	l.movhi	r17, 1024
	l.or	r14, r15, r17
	l.addi	r3, r3, -127
	l.addi	r28, r28, 1488
	l.movhi	r15, 0
	l.slli	r25, r31, 3
	l.sw	2540(r12), r15
	l.addi	r13, r13, -127
	l.addi	r18, r18, 1240
	l.movhi	r27, 1024
	l.or	r24, r25, r27
	l.movhi	r25, 0
	l.sw	5088(r22), r25
	l.addi	r23, r23, -127
	l.addi	r20, r20, 992           # CFC
	l.j	.LBB8_8
	l.nop	0                       # in delay slot
.LBB8_3:                                # %sw.bb
	l.addi	r18, r18, 249
	l.addi	r4, r0, 1
	l.sw	-8(r2), r4
	l.movhi	r4, 0
	l.addi	r20, r20, 498           # CFC
	l.sfeqi	r11, 0
	l.addi	r14, r0, 1
	l.sw	2540(r12), r14
	l.addi	r28, r28, 1494
	l.movhi	r14, 0
	l.addi	r24, r0, 1
	l.sw	5088(r22), r24
	l.movhi	r24, 0
	l.bf	.LBB8_70
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1245
	l.sfeqi	r8, 0
	l.addi	r20, r20, 996           # CFC
	l.bf	.LBB8_71
	l.nop	0
.LBB8_4:                                # %if.else
	l.addi	r18, r18, 250
	l.srli	r5, r11, 1
	l.or	r5, r11, r5
	l.srli	r7, r5, 2
	l.or	r5, r5, r7
	l.srli	r7, r5, 4
	l.srli	r15, r8, 1
	l.or	r15, r8, r15
	l.srli	r17, r15, 2
	l.or	r5, r5, r7
	l.or	r15, r15, r17
	l.srli	r25, r31, 1
	l.srli	r7, r5, 8
	l.srli	r17, r15, 4
	l.or	r25, r31, r25
	l.or	r5, r5, r7
	l.or	r15, r15, r17
	l.srli	r27, r25, 2
	l.srli	r7, r5, 16
	l.srli	r17, r15, 8
	l.or	r25, r25, r27
	l.or	r5, r5, r7
	l.or	r15, r15, r17
	l.srli	r27, r25, 4
	l.movhi	r7, 21845
	l.srli	r17, r15, 16
	l.or	r25, r25, r27
	l.ori	r4, r7, 21845
	l.or	r15, r15, r17
	l.addi	r20, r20, 500           # CFC
	l.srli	r27, r25, 8
	l.xori	r5, r5, -1
	l.movhi	r17, 21845
	l.or	r25, r25, r27
	l.srli	r7, r5, 1
	l.ori	r14, r17, 21845
	l.srli	r27, r25, 16
	l.and	r7, r7, r4
	l.xori	r15, r15, -1
	l.or	r25, r25, r27
	l.sub	r5, r5, r7
	l.srli	r17, r15, 1
	l.movhi	r27, 21845
	l.movhi	r7, 13107
	l.and	r17, r17, r14
	l.ori	r24, r27, 21845
	l.ori	r7, r7, 13107
	l.sub	r15, r15, r17
	l.xori	r25, r25, -1
	l.and	r4, r5, r7
	l.movhi	r17, 13107
	l.srli	r27, r25, 1
	l.srli	r5, r5, 2
	l.ori	r17, r17, 13107
	l.and	r27, r27, r24
	l.and	r5, r5, r7
	l.and	r14, r15, r17
	l.sub	r25, r25, r27
	l.add	r5, r4, r5
	l.addi	r28, r28, 1500
	l.srli	r15, r15, 2
	l.movhi	r27, 13107
	l.srli	r7, r5, 4
	l.and	r15, r15, r17
	l.ori	r27, r27, 13107
	l.add	r5, r5, r7
	l.add	r15, r14, r15
	l.and	r24, r25, r27
	l.movhi	r7, 3855
	l.srli	r17, r15, 4
	l.srli	r25, r25, 2
	l.ori	r7, r7, 3855
	l.add	r15, r15, r17
	l.and	r25, r25, r27
	l.and	r5, r5, r7
	l.movhi	r17, 3855
	l.add	r25, r24, r25
	l.movhi	r7, 257
	l.ori	r17, r17, 3855
	l.srli	r27, r25, 4
	l.ori	r7, r7, 257
	l.and	r15, r15, r17
	l.add	r25, r25, r27
	l.mul	r5, r5, r7
	l.movhi	r17, 257
	l.movhi	r27, 3855
	l.srli	r5, r5, 24
	l.ori	r17, r17, 257
	l.addi	r18, r18, 1250
	l.ori	r27, r27, 3855
	l.addi	r7, r0, -118
	l.mul	r15, r15, r17
	l.and	r25, r25, r27
	l.sub	r7, r7, r5
	l.srli	r15, r15, 24
	l.movhi	r27, 257
	l.add	r3, r7, r3
	l.addi	r17, r0, -118
	l.ori	r27, r27, 257
	l.addi	r5, r5, -5
	l.sub	r17, r17, r15
	l.mul	r25, r25, r27
	l.sll	r4, r11, r5
	l.add	r13, r17, r13
	l.srli	r25, r25, 24
	l.movhi	r5, 0
	l.addi	r15, r15, -5
	l.addi	r27, r0, -118
	l.sw	-8(r2), r5
	l.sll	r14, r8, r15
	l.sub	r27, r27, r25
	l.movhi	r15, 0
	l.sw	2540(r12), r15
	l.add	r23, r27, r23
	l.addi	r25, r25, -5
	l.sll	r24, r31, r25
	l.movhi	r25, 0
	l.sw	5088(r22), r25
	l.addi	r20, r20, 1000          # CFC
	l.j	.LBB8_8
	l.nop	0                       # in delay slot
.LBB8_5:                                # %sw.bb25
	l.addi	r18, r18, 251
	l.addi	r4, r0, 2
	l.addi	r20, r20, 502           # CFC
	l.sfeqi	r11, 0
	l.addi	r28, r28, 1506
	l.addi	r14, r0, 2
	l.addi	r24, r0, 2
	l.bf	.LBB8_72
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1255
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1004          # CFC
	l.bf	.LBB8_73
	l.nop	0
.LBB8_6:                                # %sw.bb25
	l.addi	r18, r18, 252
	l.addi	r20, r20, 504           # CFC
	l.addi	r4, r0, 3
	l.addi	r28, r28, 1512
	l.addi	r14, r0, 3
	l.addi	r18, r18, 1260
	l.addi	r24, r0, 3
	l.addi	r20, r20, 1008          # CFC
.LBB8_7:                                # %sw.bb25
	l.addi	r18, r18, 253
	l.sw	-8(r2), r4
	l.addi	r20, r20, 506           # CFC
	l.ori	r4, r11, 0
	l.sw	2540(r12), r14
	l.addi	r28, r28, 1518
	l.ori	r14, r8, 0
	l.addi	r18, r18, 1265
	l.sw	5088(r22), r24
	l.ori	r24, r31, 0
	l.addi	r20, r20, 1012          # CFC
.LBB8_8:                                # %do.body39
	l.addi	r18, r18, 254
	l.sw	-20(r2), r4
	l.movhi	r5, 127
	l.ori	r5, r5, 65535
	l.lwz	r4, -12(r2)
	l.and	r5, r4, r5
	l.sw	2528(r12), r14
	l.movhi	r15, 127
	l.addi	r20, r20, 508           # CFC
	l.ori	r15, r15, 65535
	l.srli	r7, r4, 23
	l.lwz	r14, 2536(r12)
	l.sw	5076(r22), r24
	l.andi	r11, r7, 255
	l.and	r15, r14, r15
	l.movhi	r25, 127
	l.addi	r28, r28, 1524
	l.sfeqi	r11, 0
	l.srli	r17, r14, 23
	l.andi	r8, r17, 255
	l.ori	r25, r25, 65535
	l.lwz	r24, 5084(r22)
	l.and	r25, r24, r25
	l.srli	r27, r24, 23
	l.andi	r31, r27, 255
	l.bf	.LBB8_74
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1270
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1016          # CFC
	l.bf	.LBB8_75
	l.nop	0
.LBB8_9:                                # %do.body39
	l.addi	r18, r18, 255
	l.sfeqi	r11, 255
	l.addi	r20, r20, 510           # CFC
	l.lwz	r4, -8(r2)
	l.addi	r28, r28, 1530
	l.lwz	r14, 2540(r12)
	l.lwz	r24, 5088(r22)
	l.bf	.LBB8_76
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1275
	l.sfeqi	r8, 255
	l.addi	r20, r20, 1020          # CFC
	l.bf	.LBB8_77
	l.nop	0
.LBB8_10:                               # %sw.default55
	l.addi	r18, r18, 256
	l.slli	r5, r5, 3
	l.movhi	r7, 1024
	l.or	r7, r5, r7
	l.addi	r20, r20, 512           # CFC
	l.movhi	r6, 0
	l.addi	r11, r11, -127
	l.slli	r15, r15, 3
	l.movhi	r17, 1024
	l.addi	r28, r28, 1536
	l.or	r17, r15, r17
	l.movhi	r16, 0
	l.addi	r8, r8, -127
	l.slli	r25, r25, 3
	l.addi	r18, r18, 1280
	l.movhi	r27, 1024
	l.or	r27, r25, r27
	l.movhi	r26, 0
	l.addi	r31, r31, -127
	l.addi	r20, r20, 1024          # CFC
	l.j	.LBB8_16
	l.nop	0                       # in delay slot
.LBB8_11:                               # %sw.bb62
	l.addi	r18, r18, 257
	l.addi	r6, r0, 1
	l.movhi	r7, 0
	l.sfeqi	r5, 0
	l.addi	r20, r20, 514           # CFC
	l.lwz	r4, -8(r2)
	l.addi	r16, r0, 1
	l.movhi	r17, 0
	l.addi	r28, r28, 1542
	l.lwz	r14, 2540(r12)
	l.addi	r26, r0, 1
	l.movhi	r27, 0
	l.lwz	r24, 5088(r22)
	l.bf	.LBB8_78
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1285
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1028          # CFC
	l.bf	.LBB8_79
	l.nop	0
.LBB8_12:                               # %if.else65
	l.addi	r18, r18, 258
	l.srli	r7, r5, 1
	l.or	r4, r5, r7
	l.srli	r7, r4, 2
	l.or	r4, r4, r7
	l.srli	r7, r4, 4
	l.srli	r17, r15, 1
	l.or	r14, r15, r17
	l.srli	r17, r14, 2
	l.or	r4, r4, r7
	l.or	r14, r14, r17
	l.srli	r27, r25, 1
	l.srli	r7, r4, 8
	l.srli	r17, r14, 4
	l.or	r24, r25, r27
	l.or	r4, r4, r7
	l.or	r14, r14, r17
	l.srli	r27, r24, 2
	l.srli	r7, r4, 16
	l.srli	r17, r14, 8
	l.or	r24, r24, r27
	l.or	r4, r4, r7
	l.or	r14, r14, r17
	l.srli	r27, r24, 4
	l.movhi	r7, 21845
	l.srli	r17, r14, 16
	l.or	r24, r24, r27
	l.ori	r6, r7, 21845
	l.or	r14, r14, r17
	l.addi	r20, r20, 516           # CFC
	l.srli	r27, r24, 8
	l.xori	r4, r4, -1
	l.movhi	r17, 21845
	l.or	r24, r24, r27
	l.srli	r7, r4, 1
	l.ori	r16, r17, 21845
	l.srli	r27, r24, 16
	l.and	r7, r7, r6
	l.xori	r14, r14, -1
	l.or	r24, r24, r27
	l.sub	r4, r4, r7
	l.srli	r17, r14, 1
	l.movhi	r27, 21845
	l.movhi	r7, 13107
	l.and	r17, r17, r16
	l.ori	r26, r27, 21845
	l.ori	r7, r7, 13107
	l.sub	r14, r14, r17
	l.xori	r24, r24, -1
	l.and	r6, r4, r7
	l.movhi	r17, 13107
	l.srli	r27, r24, 1
	l.srli	r4, r4, 2
	l.ori	r17, r17, 13107
	l.and	r27, r27, r26
	l.and	r4, r4, r7
	l.and	r16, r14, r17
	l.sub	r24, r24, r27
	l.add	r4, r6, r4
	l.addi	r28, r28, 1548
	l.srli	r14, r14, 2
	l.movhi	r27, 13107
	l.srli	r7, r4, 4
	l.and	r14, r14, r17
	l.ori	r27, r27, 13107
	l.add	r4, r4, r7
	l.add	r14, r16, r14
	l.and	r26, r24, r27
	l.movhi	r7, 3855
	l.srli	r17, r14, 4
	l.srli	r24, r24, 2
	l.ori	r7, r7, 3855
	l.add	r14, r14, r17
	l.and	r24, r24, r27
	l.and	r4, r4, r7
	l.movhi	r17, 3855
	l.add	r24, r26, r24
	l.movhi	r7, 257
	l.ori	r17, r17, 3855
	l.srli	r27, r24, 4
	l.ori	r7, r7, 257
	l.and	r14, r14, r17
	l.add	r24, r24, r27
	l.mul	r4, r4, r7
	l.movhi	r17, 257
	l.movhi	r27, 3855
	l.srli	r4, r4, 24
	l.ori	r17, r17, 257
	l.addi	r18, r18, 1290
	l.ori	r27, r27, 3855
	l.addi	r7, r0, -118
	l.mul	r14, r14, r17
	l.and	r24, r24, r27
	l.sub	r7, r7, r4
	l.srli	r14, r14, 24
	l.movhi	r27, 257
	l.add	r11, r7, r11
	l.addi	r17, r0, -118
	l.ori	r27, r27, 257
	l.addi	r4, r4, -5
	l.sub	r17, r17, r14
	l.mul	r24, r24, r27
	l.sll	r7, r5, r4
	l.add	r8, r17, r8
	l.srli	r24, r24, 24
	l.lwz	r4, -8(r2)
	l.addi	r14, r14, -5
	l.addi	r27, r0, -118
	l.movhi	r6, 0
	l.sll	r17, r15, r14
	l.sub	r27, r27, r24
	l.lwz	r14, 2540(r12)
	l.movhi	r16, 0
	l.add	r31, r27, r31
	l.addi	r24, r24, -5
	l.sll	r27, r25, r24
	l.lwz	r24, 5088(r22)
	l.movhi	r26, 0
	l.addi	r20, r20, 1032          # CFC
	l.j	.LBB8_16
	l.nop	0                       # in delay slot
.LBB8_13:                               # %sw.bb79
	l.addi	r18, r18, 259
	l.addi	r6, r0, 2
	l.addi	r20, r20, 518           # CFC
	l.sfeqi	r5, 0
	l.addi	r28, r28, 1554
	l.addi	r16, r0, 2
	l.addi	r26, r0, 2
	l.bf	.LBB8_80
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1295
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1036          # CFC
	l.bf	.LBB8_81
	l.nop	0
.LBB8_14:                               # %sw.bb79
	l.addi	r18, r18, 260
	l.addi	r20, r20, 520           # CFC
	l.addi	r6, r0, 3
	l.addi	r28, r28, 1560
	l.addi	r16, r0, 3
	l.addi	r18, r18, 1300
	l.addi	r26, r0, 3
	l.addi	r20, r20, 1040          # CFC
.LBB8_15:                               # %sw.bb79
	l.addi	r18, r18, 261
	l.addi	r20, r20, 522           # CFC
	l.ori	r7, r5, 0
	l.addi	r28, r28, 1566
	l.ori	r17, r15, 0
	l.addi	r18, r18, 1305
	l.ori	r27, r25, 0
	l.addi	r20, r20, 1044          # CFC
.LBB8_16:                               # %do.body98
	l.addi	r18, r18, 262
	l.sw	-24(r2), r7
	l.lwz	r5, -16(r2)
	l.srli	r7, r5, 31
	l.sub	r3, r3, r11
	l.sw	-16(r2), r3
	l.sw	2524(r12), r17
	l.lwz	r15, 2532(r12)
	l.srli	r17, r15, 31
	l.slli	r4, r4, 2
	l.addi	r20, r20, 524           # CFC
	l.sub	r13, r13, r8
	l.sw	5072(r22), r27
	l.sw	-28(r2), r6
	l.sw	2532(r12), r13
	l.lwz	r25, 5080(r22)
	l.or	r4, r6, r4
	l.slli	r14, r14, 2
	l.srli	r27, r25, 31
	l.andi	r6, r4, 15
	l.addi	r28, r28, 1572
	l.sw	2520(r12), r16
	l.sub	r23, r23, r31
	l.sfgtui	r6, 15
	l.or	r14, r16, r14
	l.andi	r16, r14, 15
	l.sw	5080(r22), r23
	l.slli	r24, r24, 2
	l.sw	5068(r22), r26
	l.or	r24, r26, r24
	l.andi	r26, r24, 15
	l.bf	.LBB8_82
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1310
	l.sfgtui	r16, 15
	l.addi	r20, r20, 1048          # CFC
	l.bf	.LBB8_83
	l.nop	0
.LBB8_17:                               # %do.body98
	l.addi	r18, r18, 263
	l.lwz	r3, -12(r2)
	l.srli	r5, r3, 31
	l.xor	r11, r5, r7
	l.addi	r3, r0, 1
	l.sw	-12(r2), r3
	l.lwz	r13, 2536(r12)
	l.srli	r15, r13, 31
	l.xor	r8, r15, r17
	l.addi	r20, r20, 526           # CFC
	l.movhi	r4, 64
	l.addi	r13, r0, 1
	l.lwz	r23, 5084(r22)
	l.movhi	r3, hi(.LJTI8_0)
	l.sw	2536(r12), r13
	l.srli	r25, r23, 31
	l.ori	r3, r3, lo(.LJTI8_0)
	l.movhi	r14, 64
	l.addi	r28, r28, 1578
	l.xor	r31, r25, r27
	l.slli	r6, r6, 2
	l.movhi	r13, hi(.LJTI8_0)
	l.addi	r23, r0, 1
	l.add	r3, r6, r3
	l.ori	r13, r13, lo(.LJTI8_0)
	l.sw	5084(r22), r23
	l.lwz	r3, 0(r3)
	l.addi	r18, r18, 1315
	l.slli	r16, r16, 2
	l.movhi	r24, 64
	l.add	r13, r16, r13
	l.lwz	r13, 2548(r13)
	l.movhi	r23, hi(.LJTI8_0)
	l.ori	r23, r23, lo(.LJTI8_0)
	l.slli	r26, r26, 2
	l.add	r23, r26, r23
	l.lwz	r23, 5096(r23)
	l.addi	r20, r20, 1052          # CFC
	l.sfne	r3, r13
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB8_65
	l.nop	0
	l.jr	r3
	l.nop	0                       # in delay slot
.LBB8_41:                               # %sw.bb159
	l.addi	r18, r18, 264
	l.lwz	r3, -28(r2)
	l.sw	-8(r2), r3
	l.ori	r7, r5, 0
	l.addi	r20, r20, 528           # CFC
	l.lwz	r3, -24(r2)
	l.sw	-20(r2), r3
	l.lwz	r13, 2520(r12)
	l.sw	2540(r12), r13
	l.addi	r28, r28, 1584
	l.ori	r17, r15, 0
	l.lwz	r13, 2524(r12)
	l.sw	2528(r12), r13
	l.lwz	r23, 5068(r22)
	l.addi	r18, r18, 1320
	l.sw	5088(r22), r23
	l.ori	r27, r25, 0
	l.lwz	r23, 5072(r22)
	l.sw	5076(r22), r23
	l.addi	r20, r20, 1056          # CFC
.LBB8_42:                               # %do.body169
	l.addi	r18, r18, 265
	l.lwz	r4, -8(r2)
	l.sfgtui	r4, 3
	l.lwz	r5, -20(r2)
	l.ori	r11, r7, 0
	l.addi	r20, r20, 530           # CFC
	l.lwz	r6, -16(r2)
	l.lwz	r14, 2540(r12)
	l.lwz	r15, 2528(r12)
	l.ori	r8, r17, 0
	l.addi	r28, r28, 1590
	l.lwz	r16, 2532(r12)
	l.lwz	r24, 5088(r22)
	l.lwz	r25, 5076(r22)
	l.ori	r31, r27, 0
	l.lwz	r26, 5080(r22)
	l.bf	.LBB8_84
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1325
	l.sfgtui	r14, 3
	l.addi	r20, r20, 1060          # CFC
	l.bf	.LBB8_85
	l.nop	0
.LBB8_43:                               # %do.body169
	l.addi	r18, r18, 266
	l.movhi	r3, hi(.LJTI8_1)
	l.ori	r3, r3, lo(.LJTI8_1)
	l.slli	r4, r4, 2
	l.add	r3, r4, r3
	l.lwz	r3, 0(r3)
	l.movhi	r13, hi(.LJTI8_1)
	l.addi	r20, r20, 532           # CFC
	l.ori	r13, r13, lo(.LJTI8_1)
	l.slli	r14, r14, 2
	l.ori	r4, r11, 0
	l.add	r13, r14, r13
	l.movhi	r23, hi(.LJTI8_1)
	l.ori	r6, r4, 0
	l.lwz	r13, 2548(r13)
	l.addi	r28, r28, 1596
	l.ori	r23, r23, lo(.LJTI8_1)
	l.ori	r4, r5, 0
	l.ori	r14, r8, 0
	l.slli	r24, r24, 2
	l.sw	-12(r2), r6
	l.ori	r16, r14, 0
	l.add	r23, r24, r23
	l.addi	r18, r18, 1330
	l.ori	r14, r15, 0
	l.sw	2536(r12), r16
	l.lwz	r23, 5096(r23)
	l.ori	r24, r31, 0
	l.ori	r26, r24, 0
	l.ori	r24, r25, 0
	l.sw	5084(r22), r26
	l.addi	r20, r20, 1064          # CFC
	l.sfne	r3, r13
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB8_65
	l.nop	0
	l.jr	r3
	l.nop	0                       # in delay slot
.LBB8_62:                               # %sw.bb269
	l.addi	r18, r18, 267
	l.movhi	r6, 0
	l.addi	r20, r20, 534           # CFC
	l.movhi	r5, 0
	l.movhi	r16, 0
	l.addi	r28, r28, 1602
	l.movhi	r15, 0
	l.addi	r18, r18, 1335
	l.movhi	r26, 0
	l.movhi	r25, 0
	l.addi	r20, r20, 1068          # CFC
	l.j	.LBB8_64
	l.nop	0                       # in delay slot
.LBB8_63:                               # %sw.bb270
	l.addi	r18, r18, 268
	l.movhi	r5, 0
	l.addi	r20, r20, 536           # CFC
	l.addi	r6, r0, 255
	l.movhi	r15, 0
	l.addi	r28, r28, 1608
	l.addi	r16, r0, 255
	l.addi	r18, r18, 1340
	l.movhi	r25, 0
	l.addi	r26, r0, 255
	l.addi	r20, r20, 1072          # CFC
	l.j	.LBB8_64
	l.nop	0                       # in delay slot
.LBB8_18:                               # %sw.bb102
	l.addi	r18, r18, 269
	l.sw	-28(r2), r11
	l.lwz	r3, -24(r2)
	l.slli	r4, r3, 5
	l.lwz	r3, -20(r2)
	l.slli	r7, r3, 5
	l.sw	2520(r12), r8
	l.addi	r20, r20, 538           # CFC
	l.lwz	r13, 2524(r12)
	l.slli	r14, r13, 5
	l.sfltu	r7, r4
	l.lwz	r13, 2528(r12)
	l.sw	5068(r22), r31
	l.sw	-12(r2), r4
	l.addi	r28, r28, 1614
	l.slli	r17, r13, 5
	l.sw	2536(r12), r14
	l.lwz	r23, 5072(r22)
	l.slli	r24, r23, 5
	l.lwz	r23, 5076(r22)
	l.slli	r27, r23, 5
	l.sw	5084(r22), r24
	l.bf	.LBB8_86
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1345
	l.sfltu	r17, r14
	l.addi	r20, r20, 1076          # CFC
	l.bf	.LBB8_87
	l.nop	0
.LBB8_19:                               # %if.then113
	l.addi	r18, r18, 270
	l.sub	r7, r7, r4
	l.addi	r3, r0, 26
	l.addi	r20, r20, 540           # CFC
	l.addi	r5, r0, 1
	l.sub	r17, r17, r14
	l.addi	r28, r28, 1620
	l.addi	r13, r0, 26
	l.addi	r15, r0, 1
	l.addi	r18, r18, 1350
	l.sub	r27, r27, r24
	l.addi	r23, r0, 26
	l.addi	r25, r0, 1
	l.addi	r20, r20, 1080          # CFC
	l.j	.LBB8_21
	l.nop	0                       # in delay slot
.LBB8_33:                               # %do.body148
	l.addi	r18, r18, 271
	l.ori	r11, r5, 0
	l.ori	r5, r7, 0
	l.movhi	r4, 64
	l.lwz	r3, -24(r2)
	l.and	r3, r3, r4
	l.ori	r8, r15, 0
	l.addi	r20, r20, 542           # CFC
	l.ori	r15, r17, 0
	l.movhi	r14, 64
	l.addi	r6, r0, 1
	l.lwz	r13, 2524(r12)
	l.ori	r31, r25, 0
	l.sfeqi	r3, 0
	l.addi	r28, r28, 1626
	l.and	r13, r13, r14
	l.addi	r16, r0, 1
	l.ori	r25, r27, 0
	l.movhi	r24, 64
	l.lwz	r23, 5072(r22)
	l.and	r23, r23, r24
	l.addi	r26, r0, 1
	l.bf	.LBB8_88
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1355
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1084          # CFC
	l.bf	.LBB8_89
	l.nop	0
.LBB8_34:                               # %do.body148
	l.addi	r18, r18, 272
	l.addi	r20, r20, 544           # CFC
	l.movhi	r6, 0
	l.addi	r28, r28, 1632
	l.movhi	r16, 0
	l.addi	r18, r18, 1360
	l.movhi	r26, 0
	l.addi	r20, r20, 1088          # CFC
.LBB8_35:                               # %do.body148
	l.addi	r18, r18, 273
	l.lwz	r7, -20(r2)
	l.and	r3, r7, r4
	l.srli	r3, r3, 22
	l.and	r4, r3, r6
	l.addi	r20, r20, 546           # CFC
	l.sfnei	r4, 0
	l.lwz	r17, 2528(r12)
	l.and	r13, r17, r14
	l.srli	r13, r13, 22
	l.addi	r28, r28, 1638
	l.and	r14, r13, r16
	l.lwz	r27, 5076(r22)
	l.and	r23, r27, r24
	l.srli	r23, r23, 22
	l.and	r24, r23, r26
	l.bf	.LBB8_90
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1365
	l.sfnei	r14, 0
	l.addi	r20, r20, 1092          # CFC
	l.bf	.LBB8_91
	l.nop	0
.LBB8_36:                               # %do.body148
	l.addi	r18, r18, 274
	l.addi	r20, r20, 548           # CFC
	l.sw	-24(r2), r7
	l.addi	r28, r28, 1644
	l.sw	2524(r12), r17
	l.addi	r18, r18, 1370
	l.sw	5072(r22), r27
	l.addi	r20, r20, 1096          # CFC
.LBB8_37:                               # %do.body148
	l.sfnei	r4, 0
	l.bf	.LBB8_92
	l.nop	0                       # in delay slot
	l.sfnei	r14, 0
	l.bf	.LBB8_93
	l.nop	0
.LBB8_38:                               # %do.body148
	l.addi	r18, r18, 275
	l.addi	r20, r20, 550           # CFC
	l.ori	r11, r5, 0
	l.addi	r28, r28, 1650
	l.ori	r8, r15, 0
	l.addi	r18, r18, 1375
	l.ori	r31, r25, 0
	l.addi	r20, r20, 1100          # CFC
.LBB8_39:                               # %do.body148
	l.addi	r18, r18, 276
	l.lwz	r4, -24(r2)
	l.addi	r20, r20, 552           # CFC
	l.sw	-12(r2), r11
	l.lwz	r14, 2524(r12)
	l.addi	r28, r28, 1656
	l.sw	2536(r12), r8
	l.addi	r18, r18, 1380
	l.lwz	r24, 5072(r22)
	l.sw	5084(r22), r31
	l.addi	r20, r20, 1104          # CFC
.LBB8_40:                               # %sw.bb271
	l.addi	r18, r18, 277
	l.movhi	r3, 64
	l.or	r5, r4, r3
	l.addi	r6, r0, 255
	l.addi	r20, r20, 554           # CFC
	l.lwz	r11, -12(r2)
	l.movhi	r13, 64
	l.or	r15, r14, r13
	l.addi	r28, r28, 1662
	l.addi	r16, r0, 255
	l.lwz	r8, 2536(r12)
	l.movhi	r23, 64
	l.addi	r18, r18, 1385
	l.or	r25, r24, r23
	l.addi	r26, r0, 255
	l.lwz	r31, 5084(r22)
	l.addi	r20, r20, 1108          # CFC
.LBB8_64:                               # %do.body279
	l.addi	r18, r18, 278
	l.movhi	r3, 127
	l.ori	r3, r3, 65535
	l.and	r3, r5, r3
	l.slli	r4, r6, 23
	l.movhi	r5, 32640
	l.movhi	r13, 127
	l.ori	r13, r13, 65535
	l.and	r13, r15, r13
	l.addi	r20, r20, 556           # CFC
	l.and	r4, r4, r5
	l.slli	r14, r16, 23
	l.movhi	r23, 127
	l.slli	r5, r11, 31
	l.movhi	r15, 32640
	l.ori	r23, r23, 65535
	l.or	r4, r4, r5
	l.and	r14, r14, r15
	l.addi	r28, r28, 1668
	l.and	r23, r25, r23
	l.or	r11, r4, r3
	l.slli	r15, r8, 31
	l.slli	r24, r26, 23
	l.addi	r1, r2, 0
	l.or	r14, r14, r15
	l.movhi	r25, 32640
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 1390
	l.or	r8, r14, r13
	l.and	r24, r24, r25
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.slli	r25, r31, 31
	l.or	r24, r24, r25
	l.or	r31, r24, r23
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 1112          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB8_65
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB8_20:                               # %if.else116
	l.addi	r18, r18, 279
	l.addi	r3, r0, 27
	l.movhi	r5, 0
	l.lwz	r4, -16(r2)
	l.addi	r20, r20, 558           # CFC
	l.addi	r4, r4, -1
	l.sw	-16(r2), r4
	l.addi	r13, r0, 27
	l.movhi	r15, 0
	l.addi	r28, r28, 1674
	l.lwz	r14, 2532(r12)
	l.addi	r14, r14, -1
	l.sw	2532(r12), r14
	l.addi	r23, r0, 27
	l.addi	r18, r18, 1395
	l.movhi	r25, 0
	l.lwz	r24, 5080(r22)
	l.addi	r24, r24, -1
	l.sw	5080(r22), r24
	l.addi	r20, r20, 1116          # CFC
.LBB8_21:                               # %do.body119.preheader
	l.addi	r18, r18, 280
	l.addi	r20, r20, 560           # CFC
	l.addi	r11, r3, 1
	l.addi	r28, r28, 1680
	l.addi	r8, r13, 1
	l.addi	r18, r18, 1400
	l.addi	r31, r23, 1
	l.addi	r20, r20, 1120          # CFC
.LBB8_22:                               # %do.body119
	l.addi	r18, r18, 281
	l.sw	-8(r2), r5
	l.movhi	r3, 0
	l.addi	r6, r0, 1
	l.sfgtsi	r7, -1
	l.addi	r20, r20, 562           # CFC
	l.ori	r4, r6, 0
	l.sw	2540(r12), r15
	l.movhi	r13, 0
	l.addi	r16, r0, 1
	l.addi	r28, r28, 1686
	l.ori	r14, r16, 0
	l.sw	5088(r22), r25
	l.movhi	r23, 0
	l.addi	r26, r0, 1
	l.ori	r24, r26, 0
	l.bf	.LBB8_94
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1405
	l.sfgtsi	r17, -1
	l.addi	r20, r20, 1124          # CFC
	l.bf	.LBB8_95
	l.nop	0
.LBB8_23:                               # %do.body119
	l.addi	r18, r18, 282
	l.addi	r20, r20, 564           # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 1692
	l.movhi	r14, 0
	l.addi	r18, r18, 1410
	l.movhi	r24, 0
	l.addi	r20, r20, 1128          # CFC
.LBB8_24:                               # %do.body119
	l.addi	r18, r18, 283
	l.slli	r7, r7, 1
	l.lwz	r5, -12(r2)
	l.addi	r20, r20, 566           # CFC
	l.sfltu	r7, r5
	l.slli	r17, r17, 1
	l.addi	r28, r28, 1698
	l.lwz	r15, 2536(r12)
	l.slli	r27, r27, 1
	l.lwz	r25, 5084(r22)
	l.bf	.LBB8_96
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1415
	l.sfltu	r17, r15
	l.addi	r20, r20, 1132          # CFC
	l.bf	.LBB8_97
	l.nop	0
.LBB8_25:                               # %do.body119
	l.addi	r18, r18, 284
	l.addi	r20, r20, 568           # CFC
	l.movhi	r6, 0
	l.addi	r28, r28, 1704
	l.movhi	r16, 0
	l.addi	r18, r18, 1420
	l.movhi	r26, 0
	l.addi	r20, r20, 1136          # CFC
.LBB8_26:                               # %do.body119
	l.addi	r18, r18, 285
	l.and	r4, r4, r6
	l.sfnei	r4, 0
	l.addi	r20, r20, 570           # CFC
	l.lwz	r5, -8(r2)
	l.and	r14, r14, r16
	l.addi	r28, r28, 1710
	l.lwz	r15, 2540(r12)
	l.and	r24, r24, r26
	l.lwz	r25, 5088(r22)
	l.bf	.LBB8_98
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1425
	l.sfnei	r14, 0
	l.addi	r20, r20, 1140          # CFC
	l.bf	.LBB8_99
	l.nop	0
.LBB8_27:                               # %do.body119
	l.addi	r18, r18, 286
	l.addi	r20, r20, 572           # CFC
	l.lwz	r3, -12(r2)
	l.addi	r28, r28, 1716
	l.lwz	r13, 2536(r12)
	l.addi	r18, r18, 1430
	l.lwz	r23, 5084(r22)
	l.addi	r20, r20, 1144          # CFC
.LBB8_28:                               # %do.body119
	l.addi	r18, r18, 287
	l.sub	r7, r7, r3
	l.andi	r3, r4, 1
	l.slli	r4, r5, 1
	l.or	r3, r3, r4
	l.xori	r5, r3, 1
	l.sub	r17, r17, r13
	l.addi	r20, r20, 574           # CFC
	l.andi	r13, r14, 1
	l.slli	r14, r15, 1
	l.addi	r11, r11, -1
	l.or	r13, r13, r14
	l.sub	r27, r27, r23
	l.sfgtsi	r11, 1
	l.addi	r28, r28, 1722
	l.xori	r15, r13, 1
	l.addi	r8, r8, -1
	l.andi	r23, r24, 1
	l.slli	r24, r25, 1
	l.or	r23, r23, r24
	l.xori	r25, r23, 1
	l.addi	r31, r31, -1
	l.bf	.LBB8_100
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1435
	l.sfgtsi	r8, 1
	l.addi	r20, r20, 1148          # CFC
	l.bf	.LBB8_101
	l.nop	0
.LBB8_29:                               # %do.body169.thread439
	l.addi	r18, r18, 288
	l.addi	r3, r0, 1
	l.addi	r20, r20, 576           # CFC
	l.sfnei	r7, 0
	l.addi	r28, r28, 1728
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.bf	.LBB8_102
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1440
	l.sfnei	r17, 0
	l.addi	r20, r20, 1152          # CFC
	l.bf	.LBB8_103
	l.nop	0
.LBB8_30:                               # %do.body169.thread439
	l.addi	r18, r18, 289
	l.addi	r20, r20, 578           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 1734
	l.movhi	r13, 0
	l.addi	r18, r18, 1445
	l.movhi	r23, 0
	l.addi	r20, r20, 1156          # CFC
.LBB8_31:                               # %do.body169.thread439
	l.addi	r18, r18, 290
	l.andi	r3, r3, 1
	l.or	r3, r3, r5
	l.sw	-20(r2), r3
	l.addi	r20, r20, 580           # CFC
	l.lwz	r6, -28(r2)
	l.andi	r13, r13, 1
	l.or	r13, r13, r15
	l.addi	r28, r28, 1740
	l.sw	2528(r12), r13
	l.lwz	r16, 2520(r12)
	l.andi	r23, r23, 1
	l.addi	r18, r18, 1450
	l.or	r23, r23, r25
	l.sw	5076(r22), r23
	l.lwz	r26, 5068(r22)
	l.addi	r20, r20, 1160          # CFC
.LBB8_32:                               # %sw.bb170
	l.addi	r18, r18, 291
	l.ori	r11, r6, 0
	l.lwz	r7, -16(r2)
	l.lwz	r4, -20(r2)
	l.addi	r20, r20, 582           # CFC
	l.sfltsi	r7, -126
	l.ori	r8, r16, 0
	l.lwz	r17, 2532(r12)
	l.addi	r28, r28, 1746
	l.lwz	r14, 2528(r12)
	l.ori	r31, r26, 0
	l.lwz	r27, 5080(r22)
	l.lwz	r24, 5076(r22)
	l.bf	.LBB8_104
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1455
	l.sfltsi	r17, -126
	l.addi	r20, r20, 1164          # CFC
	l.bf	.LBB8_105
	l.nop	0
.LBB8_44:                               # %do.body175
	l.addi	r18, r18, 292
	l.andi	r3, r4, 15
	l.sfeqi	r3, 4
	l.addi	r20, r20, 584           # CFC
	l.ori	r6, r4, 0
	l.andi	r13, r14, 15
	l.addi	r28, r28, 1752
	l.ori	r16, r14, 0
	l.andi	r23, r24, 15
	l.ori	r26, r24, 0
	l.bf	.LBB8_106
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1460
	l.sfeqi	r13, 4
	l.addi	r20, r20, 1168          # CFC
	l.bf	.LBB8_107
	l.nop	0
.LBB8_45:                               # %do.body175
	l.addi	r18, r18, 293
	l.addi	r20, r20, 586           # CFC
	l.addi	r6, r4, 4
	l.addi	r28, r28, 1758
	l.addi	r16, r14, 4
	l.addi	r18, r18, 1465
	l.addi	r26, r24, 4
	l.addi	r20, r20, 1172          # CFC
.LBB8_46:                               # %do.body175
	l.addi	r18, r18, 294
	l.andi	r3, r4, 7
	l.addi	r20, r20, 588           # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 1764
	l.andi	r13, r14, 7
	l.andi	r23, r24, 7
	l.bf	.LBB8_108
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1470
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1176          # CFC
	l.bf	.LBB8_109
	l.nop	0
.LBB8_47:                               # %do.body175
	l.addi	r18, r18, 295
	l.addi	r20, r20, 590           # CFC
	l.ori	r4, r6, 0
	l.addi	r28, r28, 1770
	l.ori	r14, r16, 0
	l.addi	r18, r18, 1475
	l.ori	r24, r26, 0
	l.addi	r20, r20, 1180          # CFC
.LBB8_48:                               # %do.body175
	l.addi	r18, r18, 296
	l.srli	r3, r4, 27
	l.andi	r3, r3, 1
	l.add	r3, r7, r3
	l.addi	r7, r3, 127
	l.movhi	r5, 0
	l.addi	r20, r20, 592           # CFC
	l.sfgtsi	r7, 254
	l.srli	r13, r14, 27
	l.andi	r13, r13, 1
	l.add	r13, r17, r13
	l.addi	r17, r13, 127
	l.addi	r28, r28, 1776
	l.movhi	r15, 0
	l.srli	r23, r24, 27
	l.andi	r23, r23, 1
	l.add	r23, r27, r23
	l.addi	r27, r23, 127
	l.movhi	r25, 0
	l.bf	.LBB8_110
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1480
	l.sfgtsi	r17, 254
	l.addi	r20, r20, 1184          # CFC
	l.bf	.LBB8_111
	l.nop	0
.LBB8_49:                               # %do.body175
	l.addi	r18, r18, 297
	l.movhi	r3, 7935
	l.ori	r3, r3, 65535
	l.srli	r4, r4, 3
	l.addi	r20, r20, 594           # CFC
	l.and	r5, r4, r3
	l.movhi	r13, 7935
	l.ori	r13, r13, 65535
	l.addi	r28, r28, 1782
	l.srli	r14, r14, 3
	l.and	r15, r14, r13
	l.movhi	r23, 7935
	l.addi	r18, r18, 1485
	l.ori	r23, r23, 65535
	l.srli	r24, r24, 3
	l.and	r25, r24, r23
	l.addi	r20, r20, 1188          # CFC
.LBB8_50:                               # %do.body175
	l.addi	r18, r18, 298
	l.addi	r6, r0, 255
	l.addi	r20, r20, 596           # CFC
	l.sfgtsi	r7, 254
	l.addi	r28, r28, 1788
	l.addi	r16, r0, 255
	l.addi	r26, r0, 255
	l.bf	.LBB8_112
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1490
	l.sfgtsi	r17, 254
	l.addi	r20, r20, 1192          # CFC
	l.bf	.LBB8_113
	l.nop	0
.LBB8_51:                               # %do.body175
	l.addi	r18, r18, 299
	l.addi	r20, r20, 598           # CFC
	l.ori	r6, r7, 0
	l.addi	r28, r28, 1794
	l.ori	r16, r17, 0
	l.addi	r18, r18, 1495
	l.ori	r26, r27, 0
	l.addi	r20, r20, 1196          # CFC
	l.j	.LBB8_64
	l.nop	0                       # in delay slot
.LBB8_52:                               # %if.else205
	l.addi	r18, r18, 300
	l.addi	r3, r0, -126
	l.sub	r3, r3, r7
	l.movhi	r6, 0
	l.sfgtsi	r3, 27
	l.addi	r20, r20, 600           # CFC
	l.movhi	r5, 0
	l.addi	r13, r0, -126
	l.sub	r13, r13, r17
	l.movhi	r16, 0
	l.addi	r28, r28, 1800
	l.movhi	r15, 0
	l.addi	r23, r0, -126
	l.sub	r23, r23, r27
	l.movhi	r26, 0
	l.movhi	r25, 0
	l.bf	.LBB8_114
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1500
	l.sfgtsi	r13, 27
	l.addi	r20, r20, 1200          # CFC
	l.bf	.LBB8_115
	l.nop	0
.LBB8_53:                               # %if.then210
	l.addi	r18, r18, 301
	l.ori	r6, r3, 0
	l.addi	r3, r0, -127
	l.sub	r3, r3, r7
	l.addi	r5, r0, 31
	l.sub	r3, r5, r3
	l.ori	r16, r13, 0
	l.addi	r13, r0, -127
	l.sub	r13, r13, r17
	l.addi	r20, r20, 602           # CFC
	l.srl	r5, r4, r6
	l.addi	r15, r0, 31
	l.ori	r26, r23, 0
	l.sll	r3, r4, r3
	l.sub	r13, r15, r13
	l.addi	r23, r0, -127
	l.addi	r4, r0, 1
	l.srl	r15, r14, r16
	l.addi	r28, r28, 1806
	l.sub	r23, r23, r27
	l.sfnei	r3, 0
	l.sll	r13, r14, r13
	l.addi	r14, r0, 1
	l.addi	r25, r0, 31
	l.sub	r23, r25, r23
	l.srl	r25, r24, r26
	l.sll	r23, r24, r23
	l.addi	r24, r0, 1
	l.bf	.LBB8_116
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1505
	l.sfnei	r13, 0
	l.addi	r20, r20, 1204          # CFC
	l.bf	.LBB8_117
	l.nop	0
.LBB8_54:                               # %if.then210
	l.addi	r18, r18, 302
	l.addi	r20, r20, 604           # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 1812
	l.movhi	r14, 0
	l.addi	r18, r18, 1510
	l.movhi	r24, 0
	l.addi	r20, r20, 1208          # CFC
.LBB8_55:                               # %if.then210
	l.addi	r18, r18, 303
	l.andi	r3, r4, 1
	l.or	r4, r3, r5
	l.andi	r3, r4, 15
	l.sfeqi	r3, 4
	l.addi	r20, r20, 606           # CFC
	l.ori	r5, r4, 0
	l.andi	r13, r14, 1
	l.or	r14, r13, r15
	l.andi	r13, r14, 15
	l.addi	r28, r28, 1818
	l.ori	r15, r14, 0
	l.andi	r23, r24, 1
	l.or	r24, r23, r25
	l.andi	r23, r24, 15
	l.ori	r25, r24, 0
	l.bf	.LBB8_118
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1515
	l.sfeqi	r13, 4
	l.addi	r20, r20, 1212          # CFC
	l.bf	.LBB8_119
	l.nop	0
.LBB8_56:                               # %if.then210
	l.addi	r18, r18, 304
	l.addi	r20, r20, 608           # CFC
	l.addi	r5, r4, 4
	l.addi	r28, r28, 1824
	l.addi	r15, r14, 4
	l.addi	r18, r18, 1520
	l.addi	r25, r24, 4
	l.addi	r20, r20, 1216          # CFC
.LBB8_57:                               # %if.then210
	l.addi	r18, r18, 305
	l.andi	r3, r4, 7
	l.addi	r20, r20, 610           # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 1830
	l.andi	r13, r14, 7
	l.andi	r23, r24, 7
	l.bf	.LBB8_120
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1525
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1220          # CFC
	l.bf	.LBB8_121
	l.nop	0
.LBB8_58:                               # %if.then210
	l.addi	r18, r18, 306
	l.addi	r20, r20, 612           # CFC
	l.ori	r4, r5, 0
	l.addi	r28, r28, 1836
	l.ori	r14, r15, 0
	l.addi	r18, r18, 1530
	l.ori	r24, r25, 0
	l.addi	r20, r20, 1224          # CFC
.LBB8_59:                               # %if.then210
	l.addi	r18, r18, 307
	l.movhi	r3, 1024
	l.and	r3, r4, r3
	l.srli	r5, r4, 3
	l.addi	r20, r20, 614           # CFC
	l.sfeqi	r3, 0
	l.movhi	r13, 1024
	l.and	r13, r14, r13
	l.addi	r28, r28, 1842
	l.srli	r15, r14, 3
	l.movhi	r23, 1024
	l.and	r23, r24, r23
	l.srli	r25, r24, 3
	l.bf	.LBB8_122
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1535
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1228          # CFC
	l.bf	.LBB8_123
	l.nop	0
.LBB8_60:                               # %if.then210
	l.addi	r18, r18, 308
	l.addi	r20, r20, 616           # CFC
	l.movhi	r5, 0
	l.addi	r28, r28, 1848
	l.movhi	r15, 0
	l.addi	r18, r18, 1540
	l.movhi	r25, 0
	l.addi	r20, r20, 1232          # CFC
.LBB8_61:                               # %if.then210
	l.addi	r18, r18, 309
	l.addi	r20, r20, 618           # CFC
	l.srli	r6, r3, 26
	l.addi	r28, r28, 1854
	l.srli	r16, r13, 26
	l.addi	r18, r18, 1545
	l.srli	r26, r23, 26
	l.addi	r20, r20, 1236          # CFC
	l.j	.LBB8_64
	l.nop	0                       # in delay slot
.LBB8_65:                               # %if.then210
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB8_124
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB8_124
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB8_124
	l.nop	0
	l.nop	205
.LBB8_124:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB8_125
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB8_125
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB8_125
	l.nop	0
	l.nop	205
.LBB8_125:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB8_126
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB8_126
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB8_126
	l.nop	0
	l.nop	205
.LBB8_126:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB8_127
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB8_127
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB8_127
	l.nop	0
	l.nop	205
.LBB8_127:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB8_128
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB8_128
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB8_128
	l.nop	0
	l.nop	205
.LBB8_128:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB8_129
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB8_129
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB8_129
	l.nop	0
	l.nop	205
.LBB8_129:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB8_130
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB8_130
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB8_130
	l.nop	0
	l.nop	205
.LBB8_130:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB8_131
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB8_131
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB8_131
	l.nop	0
	l.nop	205
.LBB8_131:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB8_132
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB8_132
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB8_132
	l.nop	0
	l.nop	205
.LBB8_132:
.LBB8_133:
	l.jr	r30
	l.nop	0
.LBB8_66:
	l.addi	r18, r18, 1235
	l.sfeqi	r13, 0
	l.addi	r20, r20, 988           # CFC
	l.bf	.LBB8_3
	l.nop	0
.LBB8_67:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB8_3
	l.nop	0
	l.j	.LBB8_1
	l.nop	0
.LBB8_68:
	l.sfeqi	r13, 255
	l.bf	.LBB8_5
	l.nop	0
.LBB8_69:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfeqi	r3, 255
	l.bf	.LBB8_5
	l.nop	0
	l.j	.LBB8_2
	l.nop	0
.LBB8_70:
	l.addi	r18, r18, 1245
	l.sfeqi	r8, 0
	l.addi	r20, r20, 996           # CFC
	l.bf	.LBB8_8
	l.nop	0
.LBB8_71:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB8_8
	l.nop	0
	l.j	.LBB8_4
	l.nop	0
.LBB8_72:
	l.addi	r18, r18, 1255
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1004          # CFC
	l.bf	.LBB8_7
	l.nop	0
.LBB8_73:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB8_7
	l.nop	0
	l.j	.LBB8_6
	l.nop	0
.LBB8_74:
	l.addi	r18, r18, 1270
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1016          # CFC
	l.bf	.LBB8_11
	l.nop	0
.LBB8_75:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB8_11
	l.nop	0
	l.j	.LBB8_9
	l.nop	0
.LBB8_76:
	l.addi	r18, r18, 1275
	l.sfeqi	r8, 255
	l.addi	r20, r20, 1020          # CFC
	l.bf	.LBB8_13
	l.nop	0
.LBB8_77:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfeqi	r11, 255
	l.bf	.LBB8_13
	l.nop	0
	l.j	.LBB8_10
	l.nop	0
.LBB8_78:
	l.addi	r18, r18, 1285
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1028          # CFC
	l.bf	.LBB8_16
	l.nop	0
.LBB8_79:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB8_16
	l.nop	0
	l.j	.LBB8_12
	l.nop	0
.LBB8_80:
	l.addi	r18, r18, 1295
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1036          # CFC
	l.bf	.LBB8_15
	l.nop	0
.LBB8_81:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB8_15
	l.nop	0
	l.j	.LBB8_14
	l.nop	0
.LBB8_82:
	l.addi	r18, r18, 1310
	l.sfgtui	r16, 15
	l.addi	r20, r20, 1048          # CFC
	l.bf	.LBB8_42
	l.nop	0
.LBB8_83:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfgtui	r6, 15
	l.bf	.LBB8_42
	l.nop	0
	l.j	.LBB8_17
	l.nop	0
.LBB8_84:
	l.addi	r18, r18, 1325
	l.sfgtui	r14, 3
	l.addi	r20, r20, 1060          # CFC
	l.bf	.LBB8_64
	l.nop	0
.LBB8_85:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfgtui	r4, 3
	l.bf	.LBB8_64
	l.nop	0
	l.j	.LBB8_43
	l.nop	0
.LBB8_86:
	l.addi	r18, r18, 1345
	l.sfltu	r17, r14
	l.addi	r20, r20, 1076          # CFC
	l.bf	.LBB8_20
	l.nop	0
.LBB8_87:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfltu	r7, r4
	l.bf	.LBB8_20
	l.nop	0
	l.j	.LBB8_19
	l.nop	0
.LBB8_88:
	l.addi	r18, r18, 1355
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1084          # CFC
	l.bf	.LBB8_35
	l.nop	0
.LBB8_89:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB8_35
	l.nop	0
	l.j	.LBB8_34
	l.nop	0
.LBB8_90:
	l.addi	r18, r18, 1365
	l.sfnei	r14, 0
	l.addi	r20, r20, 1092          # CFC
	l.bf	.LBB8_37
	l.nop	0
.LBB8_91:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB8_37
	l.nop	0
	l.j	.LBB8_36
	l.nop	0
.LBB8_92:
	l.sfnei	r14, 0
	l.bf	.LBB8_39
	l.nop	0
.LBB8_93:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB8_39
	l.nop	0
	l.j	.LBB8_38
	l.nop	0
.LBB8_94:
	l.addi	r18, r18, 1405
	l.sfgtsi	r17, -1
	l.addi	r20, r20, 1124          # CFC
	l.bf	.LBB8_24
	l.nop	0
.LBB8_95:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfgtsi	r7, -1
	l.bf	.LBB8_24
	l.nop	0
	l.j	.LBB8_23
	l.nop	0
.LBB8_96:
	l.addi	r18, r18, 1415
	l.sfltu	r17, r15
	l.addi	r20, r20, 1132          # CFC
	l.bf	.LBB8_26
	l.nop	0
.LBB8_97:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfltu	r7, r5
	l.bf	.LBB8_26
	l.nop	0
	l.j	.LBB8_25
	l.nop	0
.LBB8_98:
	l.addi	r18, r18, 1425
	l.sfnei	r14, 0
	l.addi	r20, r20, 1140          # CFC
	l.bf	.LBB8_28
	l.nop	0
.LBB8_99:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB8_28
	l.nop	0
	l.j	.LBB8_27
	l.nop	0
.LBB8_100:
	l.addi	r18, r18, 1435
	l.sfgtsi	r8, 1
	l.addi	r20, r20, 1148          # CFC
	l.bf	.LBB8_22
	l.nop	0
.LBB8_101:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfgtsi	r11, 1
	l.bf	.LBB8_22
	l.nop	0
	l.j	.LBB8_29
	l.nop	0
.LBB8_102:
	l.addi	r18, r18, 1440
	l.sfnei	r17, 0
	l.addi	r20, r20, 1152          # CFC
	l.bf	.LBB8_31
	l.nop	0
.LBB8_103:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB8_31
	l.nop	0
	l.j	.LBB8_30
	l.nop	0
.LBB8_104:
	l.addi	r18, r18, 1455
	l.sfltsi	r17, -126
	l.addi	r20, r20, 1164          # CFC
	l.bf	.LBB8_52
	l.nop	0
.LBB8_105:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfltsi	r7, -126
	l.bf	.LBB8_52
	l.nop	0
	l.j	.LBB8_44
	l.nop	0
.LBB8_106:
	l.addi	r18, r18, 1460
	l.sfeqi	r13, 4
	l.addi	r20, r20, 1168          # CFC
	l.bf	.LBB8_46
	l.nop	0
.LBB8_107:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfeqi	r3, 4
	l.bf	.LBB8_46
	l.nop	0
	l.j	.LBB8_45
	l.nop	0
.LBB8_108:
	l.addi	r18, r18, 1470
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1176          # CFC
	l.bf	.LBB8_48
	l.nop	0
.LBB8_109:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB8_48
	l.nop	0
	l.j	.LBB8_47
	l.nop	0
.LBB8_110:
	l.addi	r18, r18, 1480
	l.sfgtsi	r17, 254
	l.addi	r20, r20, 1184          # CFC
	l.bf	.LBB8_50
	l.nop	0
.LBB8_111:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfgtsi	r7, 254
	l.bf	.LBB8_50
	l.nop	0
	l.j	.LBB8_49
	l.nop	0
.LBB8_112:
	l.addi	r18, r18, 1490
	l.sfgtsi	r17, 254
	l.addi	r20, r20, 1192          # CFC
	l.bf	.LBB8_64
	l.nop	0
.LBB8_113:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfgtsi	r7, 254
	l.bf	.LBB8_64
	l.nop	0
	l.j	.LBB8_51
	l.nop	0
.LBB8_114:
	l.addi	r18, r18, 1500
	l.sfgtsi	r13, 27
	l.addi	r20, r20, 1200          # CFC
	l.bf	.LBB8_64
	l.nop	0
.LBB8_115:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfgtsi	r3, 27
	l.bf	.LBB8_64
	l.nop	0
	l.j	.LBB8_53
	l.nop	0
.LBB8_116:
	l.addi	r18, r18, 1505
	l.sfnei	r13, 0
	l.addi	r20, r20, 1204          # CFC
	l.bf	.LBB8_55
	l.nop	0
.LBB8_117:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB8_55
	l.nop	0
	l.j	.LBB8_54
	l.nop	0
.LBB8_118:
	l.addi	r18, r18, 1515
	l.sfeqi	r13, 4
	l.addi	r20, r20, 1212          # CFC
	l.bf	.LBB8_57
	l.nop	0
.LBB8_119:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfeqi	r3, 4
	l.bf	.LBB8_57
	l.nop	0
	l.j	.LBB8_56
	l.nop	0
.LBB8_120:
	l.addi	r18, r18, 1525
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1220          # CFC
	l.bf	.LBB8_59
	l.nop	0
.LBB8_121:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB8_59
	l.nop	0
	l.j	.LBB8_58
	l.nop	0
.LBB8_122:
	l.addi	r18, r18, 1535
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1228          # CFC
	l.bf	.LBB8_61
	l.nop	0
.LBB8_123:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_65
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB8_61
	l.nop	0
	l.j	.LBB8_60
	l.nop	0
.Lfunc_end8:
	.size	__divsf3, .Lfunc_end8-__divsf3

	.text
	.hidden	__fixsfsi
	.globl	__fixsfsi
	.p2align	2
	.type	__fixsfsi,@function
__fixsfsi:                              # @__fixsfsi
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 310
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r20, r20, 620           # CFC
	l.addi	r1, r1, -4
	l.movhi	r11, 0
	l.srli	r4, r3, 23
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.andi	r5, r4, 255
	l.movhi	r8, 0
	l.addi	r28, r28, 1860
	l.sw	5092(r21), r22
	l.sfgtui	r5, 126
	l.srli	r14, r13, 23
	l.andi	r15, r14, 255
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r31, 0
	l.srli	r24, r23, 23
	l.andi	r25, r24, 255
	l.bf	.LBB9_9
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1550
	l.sfgtui	r15, 126
	l.addi	r20, r20, 1240          # CFC
	l.bf	.LBB9_10
	l.nop	0
.LBB9_1:                                # %if.then
	l.addi	r18, r18, 311
	l.addi	r1, r2, 0
	l.addi	r20, r20, 622           # CFC
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 1866
	l.lwz	r12, 2544(r10)
	l.addi	r18, r18, 1555
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 1244          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB9_8
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB9_2:                                # %if.else16
	l.addi	r18, r18, 312
	l.srli	r4, r3, 31
	l.addi	r20, r20, 624           # CFC
	l.sfltui	r5, 158
	l.addi	r28, r28, 1872
	l.srli	r14, r13, 31
	l.srli	r24, r23, 31
	l.bf	.LBB9_11
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1560
	l.sfltui	r15, 158
	l.addi	r20, r20, 1248          # CFC
	l.bf	.LBB9_12
	l.nop	0
.LBB9_3:                                # %if.then18
	l.addi	r18, r18, 313
	l.xori	r3, r4, 1
	l.movhi	r4, 32768
	l.addi	r20, r20, 626           # CFC
	l.sub	r11, r4, r3
	l.xori	r13, r14, 1
	l.addi	r28, r28, 1878
	l.movhi	r14, 32768
	l.sub	r8, r14, r13
	l.addi	r18, r18, 1565
	l.xori	r23, r24, 1
	l.movhi	r24, 32768
	l.sub	r31, r24, r23
	l.addi	r20, r20, 1252          # CFC
	l.j	.LBB9_1
	l.nop	0                       # in delay slot
.LBB9_4:                                # %if.else31
	l.addi	r18, r18, 314
	l.movhi	r6, 127
	l.ori	r6, r6, 65535
	l.and	r3, r3, r6
	l.movhi	r6, 128
	l.or	r3, r3, r6
	l.movhi	r16, 127
	l.ori	r16, r16, 65535
	l.addi	r20, r20, 628           # CFC
	l.and	r13, r13, r16
	l.addi	r6, r5, -150
	l.movhi	r16, 128
	l.movhi	r26, 127
	l.sll	r11, r3, r6
	l.or	r13, r13, r16
	l.ori	r26, r26, 65535
	l.addi	r28, r28, 1884
	l.sfgtui	r5, 149
	l.addi	r16, r15, -150
	l.sll	r8, r13, r16
	l.and	r23, r23, r26
	l.movhi	r26, 128
	l.or	r23, r23, r26
	l.addi	r26, r25, -150
	l.sll	r31, r23, r26
	l.bf	.LBB9_13
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1570
	l.sfgtui	r15, 149
	l.addi	r20, r20, 1256          # CFC
	l.bf	.LBB9_14
	l.nop	0
.LBB9_5:                                # %if.else31
	l.addi	r18, r18, 315
	l.addi	r6, r0, 150
	l.sub	r5, r6, r5
	l.addi	r20, r20, 630           # CFC
	l.srl	r11, r3, r5
	l.addi	r16, r0, 150
	l.addi	r28, r28, 1890
	l.sub	r15, r16, r15
	l.srl	r8, r13, r15
	l.addi	r18, r18, 1575
	l.addi	r26, r0, 150
	l.sub	r25, r26, r25
	l.srl	r31, r23, r25
	l.addi	r20, r20, 1260          # CFC
.LBB9_6:                                # %if.else31
	l.sfeqi	r4, 0
	l.bf	.LBB9_15
	l.nop	0                       # in delay slot
	l.sfeqi	r14, 0
	l.bf	.LBB9_16
	l.nop	0
.LBB9_7:                                # %if.else31
	l.addi	r18, r18, 316
	l.movhi	r3, 0
	l.addi	r20, r20, 632           # CFC
	l.sub	r11, r3, r11
	l.movhi	r13, 0
	l.addi	r28, r28, 1896
	l.sub	r8, r13, r8
	l.addi	r18, r18, 1580
	l.movhi	r23, 0
	l.sub	r31, r23, r31
	l.addi	r20, r20, 1264          # CFC
	l.j	.LBB9_1
	l.nop	0                       # in delay slot
.LBB9_8:                                # %if.else31
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB9_17
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB9_17
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB9_17
	l.nop	0
	l.nop	205
.LBB9_17:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB9_18
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB9_18
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB9_18
	l.nop	0
	l.nop	205
.LBB9_18:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB9_19
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB9_19
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB9_19
	l.nop	0
	l.nop	205
.LBB9_19:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB9_20
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB9_20
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB9_20
	l.nop	0
	l.nop	205
.LBB9_20:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB9_21
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB9_21
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB9_21
	l.nop	0
	l.nop	205
.LBB9_21:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB9_22
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB9_22
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB9_22
	l.nop	0
	l.nop	205
.LBB9_22:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB9_23
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB9_23
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB9_23
	l.nop	0
	l.nop	205
.LBB9_23:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB9_24
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB9_24
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB9_24
	l.nop	0
	l.nop	205
.LBB9_24:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB9_25
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB9_25
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB9_25
	l.nop	0
	l.nop	205
.LBB9_25:
.LBB9_26:
	l.jr	r30
	l.nop	0
.LBB9_9:
	l.addi	r18, r18, 1550
	l.sfgtui	r15, 126
	l.addi	r20, r20, 1240          # CFC
	l.bf	.LBB9_2
	l.nop	0
.LBB9_10:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_8
	l.nop	0
	l.sfgtui	r5, 126
	l.bf	.LBB9_2
	l.nop	0
	l.j	.LBB9_1
	l.nop	0
.LBB9_11:
	l.addi	r18, r18, 1560
	l.sfltui	r15, 158
	l.addi	r20, r20, 1248          # CFC
	l.bf	.LBB9_4
	l.nop	0
.LBB9_12:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_8
	l.nop	0
	l.sfltui	r5, 158
	l.bf	.LBB9_4
	l.nop	0
	l.j	.LBB9_3
	l.nop	0
.LBB9_13:
	l.addi	r18, r18, 1570
	l.sfgtui	r15, 149
	l.addi	r20, r20, 1256          # CFC
	l.bf	.LBB9_6
	l.nop	0
.LBB9_14:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_8
	l.nop	0
	l.sfgtui	r5, 149
	l.bf	.LBB9_6
	l.nop	0
	l.j	.LBB9_5
	l.nop	0
.LBB9_15:
	l.sfeqi	r14, 0
	l.bf	.LBB9_1
	l.nop	0
.LBB9_16:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_8
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB9_1
	l.nop	0
	l.j	.LBB9_7
	l.nop	0
.Lfunc_end9:
	.size	__fixsfsi, .Lfunc_end9-__fixsfsi

	.hidden	__floatsisf
	.globl	__floatsisf
	.p2align	2
	.type	__floatsisf,@function
__floatsisf:                            # @__floatsisf
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 317
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r20, r20, 634           # CFC
	l.addi	r1, r1, -4
	l.movhi	r6, 0
	l.sfeqi	r3, 0
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.movhi	r5, 0
	l.movhi	r16, 0
	l.addi	r28, r28, 1902
	l.sw	5092(r21), r22
	l.movhi	r4, 0
	l.movhi	r15, 0
	l.movhi	r14, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r26, 0
	l.movhi	r25, 0
	l.movhi	r24, 0
	l.bf	.LBB10_25
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1585
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1268          # CFC
	l.bf	.LBB10_26
	l.nop	0
.LBB10_1:                               # %if.then
	l.addi	r18, r18, 318
	l.srai	r4, r3, 31
	l.add	r5, r3, r4
	l.xor	r6, r5, r4
	l.srli	r4, r6, 1
	l.or	r4, r6, r4
	l.srai	r14, r13, 31
	l.add	r15, r13, r14
	l.xor	r16, r15, r14
	l.srli	r5, r4, 2
	l.srli	r14, r16, 1
	l.srai	r24, r23, 31
	l.or	r5, r4, r5
	l.or	r14, r16, r14
	l.add	r25, r23, r24
	l.movhi	r4, 32768
	l.srli	r15, r14, 2
	l.xor	r26, r25, r24
	l.and	r4, r3, r4
	l.or	r15, r14, r15
	l.srli	r24, r26, 1
	l.srli	r3, r5, 4
	l.movhi	r14, 32768
	l.or	r24, r26, r24
	l.or	r3, r5, r3
	l.and	r14, r13, r14
	l.srli	r25, r24, 2
	l.srli	r5, r3, 8
	l.srli	r13, r15, 4
	l.or	r25, r24, r25
	l.or	r3, r3, r5
	l.or	r13, r15, r13
	l.movhi	r24, 32768
	l.srli	r5, r3, 16
	l.srli	r15, r13, 8
	l.and	r24, r23, r24
	l.or	r3, r3, r5
	l.or	r13, r13, r15
	l.srli	r23, r25, 4
	l.addi	r20, r20, 636           # CFC
	l.movhi	r5, 21845
	l.srli	r15, r13, 16
	l.or	r23, r25, r23
	l.ori	r5, r5, 21845
	l.or	r13, r13, r15
	l.srli	r25, r23, 8
	l.xori	r3, r3, -1
	l.movhi	r15, 21845
	l.or	r23, r23, r25
	l.srli	r7, r3, 1
	l.ori	r15, r15, 21845
	l.srli	r25, r23, 16
	l.and	r5, r7, r5
	l.xori	r13, r13, -1
	l.or	r23, r23, r25
	l.sub	r3, r3, r5
	l.srli	r17, r13, 1
	l.movhi	r25, 21845
	l.movhi	r5, 13107
	l.and	r15, r17, r15
	l.ori	r25, r25, 21845
	l.ori	r5, r5, 13107
	l.sub	r13, r13, r15
	l.xori	r23, r23, -1
	l.and	r7, r3, r5
	l.movhi	r15, 13107
	l.srli	r27, r23, 1
	l.srli	r3, r3, 2
	l.ori	r15, r15, 13107
	l.and	r25, r27, r25
	l.and	r3, r3, r5
	l.and	r17, r13, r15
	l.sub	r23, r23, r25
	l.add	r3, r7, r3
	l.srli	r13, r13, 2
	l.movhi	r25, 13107
	l.srli	r5, r3, 4
	l.and	r13, r13, r15
	l.addi	r28, r28, 1908
	l.ori	r25, r25, 13107
	l.add	r3, r3, r5
	l.add	r13, r17, r13
	l.and	r27, r23, r25
	l.movhi	r5, 3855
	l.srli	r15, r13, 4
	l.srli	r23, r23, 2
	l.ori	r5, r5, 3855
	l.add	r13, r13, r15
	l.and	r23, r23, r25
	l.and	r3, r3, r5
	l.movhi	r15, 3855
	l.add	r23, r27, r23
	l.movhi	r5, 257
	l.ori	r15, r15, 3855
	l.srli	r25, r23, 4
	l.ori	r5, r5, 257
	l.and	r13, r13, r15
	l.add	r23, r23, r25
	l.mul	r3, r3, r5
	l.movhi	r15, 257
	l.movhi	r25, 3855
	l.srli	r3, r3, 24
	l.ori	r15, r15, 257
	l.ori	r25, r25, 3855
	l.addi	r5, r0, 158
	l.mul	r13, r13, r15
	l.and	r23, r23, r25
	l.sub	r5, r5, r3
	l.srli	r13, r13, 24
	l.movhi	r25, 257
	l.sfgtui	r5, 150
	l.addi	r15, r0, 158
	l.sub	r15, r15, r13
	l.ori	r25, r25, 257
	l.mul	r23, r23, r25
	l.srli	r23, r23, 24
	l.addi	r25, r0, 158
	l.sub	r25, r25, r23
	l.bf	.LBB10_27
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1590
	l.sfgtui	r15, 150
	l.addi	r20, r20, 1272          # CFC
	l.bf	.LBB10_28
	l.nop	0
.LBB10_2:                               # %if.then9
	l.addi	r18, r18, 319
	l.addi	r3, r0, 150
	l.sub	r3, r3, r5
	l.addi	r20, r20, 638           # CFC
	l.sfgtsi	r3, 0
	l.addi	r13, r0, 150
	l.addi	r28, r28, 1914
	l.sub	r13, r13, r15
	l.addi	r23, r0, 150
	l.sub	r23, r23, r25
	l.bf	.LBB10_29
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1595
	l.sfgtsi	r13, 0
	l.addi	r20, r20, 1276          # CFC
	l.bf	.LBB10_30
	l.nop	0
.LBB10_3:                               # %if.then9
	l.addi	r18, r18, 320
	l.addi	r20, r20, 640           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 1920
	l.movhi	r13, 0
	l.addi	r18, r18, 1600
	l.movhi	r23, 0
	l.addi	r20, r20, 1280          # CFC
.LBB10_4:                               # %if.then9
	l.addi	r18, r18, 321
	l.addi	r20, r20, 642           # CFC
	l.sll	r6, r6, r3
	l.addi	r28, r28, 1926
	l.sll	r16, r16, r13
	l.addi	r18, r18, 1605
	l.sll	r26, r26, r23
	l.addi	r20, r20, 1284          # CFC
	l.j	.LBB10_23
	l.nop	0                       # in delay slot
.LBB10_5:                               # %if.else
	l.sfltui	r5, 154
	l.bf	.LBB10_31
	l.nop	0                       # in delay slot
	l.sfltui	r15, 154
	l.bf	.LBB10_32
	l.nop	0
.LBB10_6:                               # %if.then21
	l.addi	r18, r18, 322
	l.addi	r3, r0, 185
	l.sub	r3, r3, r5
	l.sll	r7, r6, r3
	l.addi	r3, r0, 1
	l.addi	r20, r20, 644           # CFC
	l.sfnei	r7, 0
	l.addi	r13, r0, 185
	l.sub	r13, r13, r15
	l.sll	r17, r16, r13
	l.addi	r28, r28, 1932
	l.addi	r13, r0, 1
	l.addi	r23, r0, 185
	l.sub	r23, r23, r25
	l.sll	r27, r26, r23
	l.addi	r23, r0, 1
	l.bf	.LBB10_33
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1610
	l.sfnei	r17, 0
	l.addi	r20, r20, 1288          # CFC
	l.bf	.LBB10_34
	l.nop	0
.LBB10_7:                               # %if.then21
	l.addi	r18, r18, 323
	l.addi	r20, r20, 646           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 1938
	l.movhi	r13, 0
	l.addi	r18, r18, 1615
	l.movhi	r23, 0
	l.addi	r20, r20, 1292          # CFC
.LBB10_8:                               # %if.then21
	l.addi	r18, r18, 324
	l.addi	r7, r5, -153
	l.srl	r6, r6, r7
	l.andi	r3, r3, 1
	l.addi	r20, r20, 648           # CFC
	l.or	r6, r3, r6
	l.addi	r17, r15, -153
	l.srl	r16, r16, r17
	l.addi	r28, r28, 1944
	l.andi	r13, r13, 1
	l.or	r16, r13, r16
	l.addi	r27, r25, -153
	l.addi	r18, r18, 1620
	l.srl	r26, r26, r27
	l.andi	r23, r23, 1
	l.or	r26, r23, r26
	l.addi	r20, r20, 1296          # CFC
.LBB10_9:                               # %if.end31
	l.addi	r18, r18, 325
	l.addi	r3, r0, 153
	l.sub	r3, r3, r5
	l.addi	r20, r20, 650           # CFC
	l.sfgtsi	r3, 0
	l.addi	r13, r0, 153
	l.addi	r28, r28, 1950
	l.sub	r13, r13, r15
	l.addi	r23, r0, 153
	l.sub	r23, r23, r25
	l.bf	.LBB10_35
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1625
	l.sfgtsi	r13, 0
	l.addi	r20, r20, 1300          # CFC
	l.bf	.LBB10_36
	l.nop	0
.LBB10_10:                              # %if.end31
	l.addi	r18, r18, 326
	l.addi	r20, r20, 652           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 1956
	l.movhi	r13, 0
	l.addi	r18, r18, 1630
	l.movhi	r23, 0
	l.addi	r20, r20, 1304          # CFC
.LBB10_11:                              # %if.end31
	l.addi	r18, r18, 327
	l.sll	r6, r6, r3
	l.movhi	r3, 64511
	l.ori	r3, r3, 65535
	l.and	r3, r6, r3
	l.andi	r7, r6, 15
	l.addi	r20, r20, 654           # CFC
	l.sfeqi	r7, 4
	l.sll	r16, r16, r13
	l.movhi	r13, 64511
	l.ori	r13, r13, 65535
	l.and	r13, r16, r13
	l.addi	r28, r28, 1962
	l.andi	r17, r16, 15
	l.sll	r26, r26, r23
	l.movhi	r23, 64511
	l.ori	r23, r23, 65535
	l.and	r23, r26, r23
	l.andi	r27, r26, 15
	l.bf	.LBB10_37
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1635
	l.sfeqi	r17, 4
	l.addi	r20, r20, 1308          # CFC
	l.bf	.LBB10_38
	l.nop	0
.LBB10_40:
	l.addi	r18, r18, 328
	l.addi	r20, r20, 656           # CFC
	l.ori	r7, r3, 0
	l.addi	r28, r28, 1968
	l.ori	r17, r13, 0
	l.addi	r18, r18, 1640
	l.ori	r27, r23, 0
	l.addi	r20, r20, 1312          # CFC
.LBB10_12:                              # %if.end31
	l.addi	r18, r18, 329
	l.addi	r20, r20, 658           # CFC
	l.addi	r7, r3, 4
	l.addi	r28, r28, 1974
	l.addi	r17, r13, 4
	l.addi	r18, r18, 1645
	l.addi	r27, r23, 4
	l.addi	r20, r20, 1316          # CFC
.LBB10_13:                              # %if.end31
	l.addi	r18, r18, 330
	l.andi	r6, r6, 7
	l.addi	r20, r20, 660           # CFC
	l.sfeqi	r6, 0
	l.addi	r28, r28, 1980
	l.andi	r16, r16, 7
	l.andi	r26, r26, 7
	l.bf	.LBB10_41
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1650
	l.sfeqi	r16, 0
	l.addi	r20, r20, 1320          # CFC
	l.bf	.LBB10_42
	l.nop	0
.LBB10_14:                              # %if.end31
	l.addi	r18, r18, 331
	l.addi	r20, r20, 662           # CFC
	l.ori	r3, r7, 0
	l.addi	r28, r28, 1986
	l.ori	r13, r17, 0
	l.addi	r18, r18, 1655
	l.ori	r23, r27, 0
	l.addi	r20, r20, 1324          # CFC
.LBB10_15:                              # %if.end31
	l.addi	r18, r18, 332
	l.movhi	r6, 1024
	l.and	r6, r3, r6
	l.addi	r20, r20, 664           # CFC
	l.sfeqi	r6, 0
	l.movhi	r16, 1024
	l.addi	r28, r28, 1992
	l.and	r16, r13, r16
	l.movhi	r26, 1024
	l.and	r26, r23, r26
	l.bf	.LBB10_43
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1660
	l.sfeqi	r16, 0
	l.addi	r20, r20, 1328          # CFC
	l.bf	.LBB10_44
	l.nop	0
.LBB10_16:                              # %if.then73
	l.addi	r18, r18, 333
	l.addi	r5, r5, 1
	l.movhi	r6, 0
	l.addi	r20, r20, 666           # CFC
	l.sfeqi	r5, 255
	l.addi	r15, r15, 1
	l.addi	r28, r28, 1998
	l.movhi	r16, 0
	l.addi	r25, r25, 1
	l.movhi	r26, 0
	l.bf	.LBB10_45
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1665
	l.sfeqi	r15, 255
	l.addi	r20, r20, 1332          # CFC
	l.bf	.LBB10_46
	l.nop	0
.LBB10_17:                              # %if.then73
	l.addi	r18, r18, 334
	l.movhi	r6, 64511
	l.ori	r6, r6, 65535
	l.addi	r20, r20, 668           # CFC
	l.and	r6, r3, r6
	l.movhi	r16, 64511
	l.addi	r28, r28, 2004
	l.ori	r16, r16, 65535
	l.and	r16, r13, r16
	l.addi	r18, r18, 1670
	l.movhi	r26, 64511
	l.ori	r26, r26, 65535
	l.and	r26, r23, r26
	l.addi	r20, r20, 1336          # CFC
.LBB10_18:                              # %if.then73
	l.addi	r18, r18, 335
	l.addi	r20, r20, 670           # CFC
	l.ori	r3, r6, 0
	l.addi	r28, r28, 2010
	l.ori	r13, r16, 0
	l.addi	r18, r18, 1675
	l.ori	r23, r26, 0
	l.addi	r20, r20, 1340          # CFC
.LBB10_19:                              # %if.end82
	l.addi	r18, r18, 336
	l.srli	r6, r3, 3
	l.sfeqi	r6, 0
	l.addi	r20, r20, 672           # CFC
	l.ori	r3, r6, 0
	l.srli	r16, r13, 3
	l.addi	r28, r28, 2016
	l.ori	r13, r16, 0
	l.srli	r26, r23, 3
	l.ori	r23, r26, 0
	l.bf	.LBB10_47
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1680
	l.sfeqi	r16, 0
	l.addi	r20, r20, 1344          # CFC
	l.bf	.LBB10_48
	l.nop	0
.LBB10_20:                              # %if.end82
	l.addi	r18, r18, 337
	l.movhi	r3, 64
	l.addi	r20, r20, 674           # CFC
	l.or	r3, r6, r3
	l.movhi	r13, 64
	l.addi	r28, r28, 2022
	l.or	r13, r16, r13
	l.addi	r18, r18, 1685
	l.movhi	r23, 64
	l.or	r23, r26, r23
	l.addi	r20, r20, 1348          # CFC
.LBB10_21:                              # %if.end82
	l.sfnei	r5, 255
	l.bf	.LBB10_49
	l.nop	0                       # in delay slot
	l.sfnei	r15, 255
	l.bf	.LBB10_50
	l.nop	0
.LBB10_22:                              # %if.end82
	l.addi	r18, r18, 338
	l.addi	r20, r20, 676           # CFC
	l.ori	r6, r3, 0
	l.addi	r28, r28, 2028
	l.ori	r16, r13, 0
	l.addi	r18, r18, 1690
	l.ori	r26, r23, 0
	l.addi	r20, r20, 1352          # CFC
.LBB10_23:                              # %do.body101
	l.addi	r18, r18, 339
	l.slli	r3, r5, 23
	l.movhi	r5, 32640
	l.and	r3, r3, r5
	l.movhi	r5, 127
	l.ori	r5, r5, 65535
	l.slli	r13, r15, 23
	l.movhi	r15, 32640
	l.addi	r20, r20, 678           # CFC
	l.and	r13, r13, r15
	l.and	r5, r6, r5
	l.movhi	r15, 127
	l.slli	r23, r25, 23
	l.or	r4, r4, r5
	l.ori	r15, r15, 65535
	l.movhi	r25, 32640
	l.or	r11, r4, r3
	l.addi	r28, r28, 2034
	l.and	r15, r16, r15
	l.and	r23, r23, r25
	l.addi	r1, r2, 0
	l.or	r14, r14, r15
	l.movhi	r25, 127
	l.lwz	r2, -4(r1)
	l.or	r8, r14, r13
	l.addi	r18, r18, 1695
	l.ori	r25, r25, 65535
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.and	r25, r26, r25
	l.or	r24, r24, r25
	l.or	r31, r24, r23
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 1356          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB10_24
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB10_24:                              # %do.body101
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB10_51
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB10_51
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB10_51
	l.nop	0
	l.nop	205
.LBB10_51:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB10_52
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB10_52
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB10_52
	l.nop	0
	l.nop	205
.LBB10_52:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB10_53
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB10_53
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB10_53
	l.nop	0
	l.nop	205
.LBB10_53:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB10_54
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB10_54
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB10_54
	l.nop	0
	l.nop	205
.LBB10_54:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB10_55
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB10_55
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB10_55
	l.nop	0
	l.nop	205
.LBB10_55:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB10_56
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB10_56
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB10_56
	l.nop	0
	l.nop	205
.LBB10_56:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB10_57
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB10_57
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB10_57
	l.nop	0
	l.nop	205
.LBB10_57:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB10_58
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB10_58
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB10_58
	l.nop	0
	l.nop	205
.LBB10_58:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB10_59
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB10_59
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB10_59
	l.nop	0
	l.nop	205
.LBB10_59:
.LBB10_60:
	l.jr	r30
	l.nop	0
.LBB10_25:
	l.addi	r18, r18, 1585
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1268          # CFC
	l.bf	.LBB10_23
	l.nop	0
.LBB10_26:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_24
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB10_23
	l.nop	0
	l.j	.LBB10_1
	l.nop	0
.LBB10_27:
	l.addi	r18, r18, 1590
	l.sfgtui	r15, 150
	l.addi	r20, r20, 1272          # CFC
	l.bf	.LBB10_5
	l.nop	0
.LBB10_28:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_24
	l.nop	0
	l.sfgtui	r5, 150
	l.bf	.LBB10_5
	l.nop	0
	l.j	.LBB10_2
	l.nop	0
.LBB10_29:
	l.addi	r18, r18, 1595
	l.sfgtsi	r13, 0
	l.addi	r20, r20, 1276          # CFC
	l.bf	.LBB10_4
	l.nop	0
.LBB10_30:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_24
	l.nop	0
	l.sfgtsi	r3, 0
	l.bf	.LBB10_4
	l.nop	0
	l.j	.LBB10_3
	l.nop	0
.LBB10_31:
	l.sfltui	r15, 154
	l.bf	.LBB10_9
	l.nop	0
.LBB10_32:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_24
	l.nop	0
	l.sfltui	r5, 154
	l.bf	.LBB10_9
	l.nop	0
	l.j	.LBB10_6
	l.nop	0
.LBB10_33:
	l.addi	r18, r18, 1610
	l.sfnei	r17, 0
	l.addi	r20, r20, 1288          # CFC
	l.bf	.LBB10_8
	l.nop	0
.LBB10_34:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_24
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB10_8
	l.nop	0
	l.j	.LBB10_7
	l.nop	0
.LBB10_35:
	l.addi	r18, r18, 1625
	l.sfgtsi	r13, 0
	l.addi	r20, r20, 1300          # CFC
	l.bf	.LBB10_11
	l.nop	0
.LBB10_36:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_24
	l.nop	0
	l.sfgtsi	r3, 0
	l.bf	.LBB10_11
	l.nop	0
	l.j	.LBB10_10
	l.nop	0
.LBB10_37:
	l.addi	r18, r18, 1635
	l.sfeqi	r17, 4
	l.addi	r20, r20, 1308          # CFC
	l.bf	.LBB10_39
	l.nop	0
.LBB10_38:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_24
	l.nop	0
	l.sfeqi	r7, 4
	l.bf	.LBB10_39
	l.nop	0
	l.j	.LBB10_40
	l.nop	0
.LBB10_39:
	l.addi	r18, r18, 340
	l.addi	r20, r20, 680           # CFC
	l.ori	r7, r3, 0
	l.addi	r28, r28, 2040
	l.ori	r17, r13, 0
	l.addi	r18, r18, 1700
	l.ori	r27, r23, 0
	l.addi	r20, r20, 1360          # CFC
	l.j	.LBB10_13
	l.nop	0
.LBB10_41:
	l.addi	r18, r18, 1650
	l.sfeqi	r16, 0
	l.addi	r20, r20, 1320          # CFC
	l.bf	.LBB10_15
	l.nop	0
.LBB10_42:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_24
	l.nop	0
	l.sfeqi	r6, 0
	l.bf	.LBB10_15
	l.nop	0
	l.j	.LBB10_14
	l.nop	0
.LBB10_43:
	l.addi	r18, r18, 1660
	l.sfeqi	r16, 0
	l.addi	r20, r20, 1328          # CFC
	l.bf	.LBB10_19
	l.nop	0
.LBB10_44:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_24
	l.nop	0
	l.sfeqi	r6, 0
	l.bf	.LBB10_19
	l.nop	0
	l.j	.LBB10_16
	l.nop	0
.LBB10_45:
	l.addi	r18, r18, 1665
	l.sfeqi	r15, 255
	l.addi	r20, r20, 1332          # CFC
	l.bf	.LBB10_18
	l.nop	0
.LBB10_46:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_24
	l.nop	0
	l.sfeqi	r5, 255
	l.bf	.LBB10_18
	l.nop	0
	l.j	.LBB10_17
	l.nop	0
.LBB10_47:
	l.addi	r18, r18, 1680
	l.sfeqi	r16, 0
	l.addi	r20, r20, 1344          # CFC
	l.bf	.LBB10_21
	l.nop	0
.LBB10_48:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_24
	l.nop	0
	l.sfeqi	r6, 0
	l.bf	.LBB10_21
	l.nop	0
	l.j	.LBB10_20
	l.nop	0
.LBB10_49:
	l.sfnei	r15, 255
	l.bf	.LBB10_23
	l.nop	0
.LBB10_50:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_24
	l.nop	0
	l.sfnei	r5, 255
	l.bf	.LBB10_23
	l.nop	0
	l.j	.LBB10_22
	l.nop	0
.Lfunc_end10:
	.size	__floatsisf, .Lfunc_end10-__floatsisf

	.hidden	int_init
	.globl	int_init
	.p2align	2
	.type	int_init,@function
int_init:                               # @int_init
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 341
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r20, r20, 682           # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -8
	l.movhi	r3, hi(int_handlers)
	l.sw	2544(r10), r19
	l.sw	2540(r10), r12
	l.addi	r12, r10, 0
	l.ori	r3, r3, lo(int_handlers)
	l.addi	r10, r10, -8
	l.sw	5092(r21), r29
	l.addi	r5, r0, 256
	l.movhi	r13, hi(int_handlers)
	l.sw	5088(r21), r22
	l.addi	r28, r28, 2046
	l.movhi	r4, 0
	l.ori	r13, r13, lo(int_handlers)
	l.addi	r22, r21, 0             # CFC
	l.addi	r15, r0, 256
	l.movhi	r14, 0
	l.addi	r21, r21, -8            # CFC
	l.movhi	r23, hi(int_handlers)
	l.ori	r23, r23, lo(int_handlers)
	l.addi	r25, r0, 256
	l.movhi	r24, 0
	l.jal	memset
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1705
	l.movhi	r11, 0
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.movhi	r8, 0
	l.addi	r10, r12, 0
	l.lwz	r12, 2540(r10)
	l.lwz	r19, 2544(r10)
	l.movhi	r31, 0
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5088(r21)
	l.lwz	r29, 5092(r21)
	l.addi	r20, r20, 1364          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB11_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB11_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB11_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB11_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB11_2
	l.nop	0
	l.nop	205
.LBB11_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB11_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB11_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB11_3
	l.nop	0
	l.nop	205
.LBB11_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB11_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB11_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB11_4
	l.nop	0
	l.nop	205
.LBB11_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB11_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB11_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB11_5
	l.nop	0
	l.nop	205
.LBB11_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB11_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB11_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB11_6
	l.nop	0
	l.nop	205
.LBB11_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB11_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB11_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB11_7
	l.nop	0
	l.nop	205
.LBB11_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB11_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB11_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB11_8
	l.nop	0
	l.nop	205
.LBB11_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB11_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB11_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB11_9
	l.nop	0
	l.nop	205
.LBB11_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB11_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB11_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB11_10
	l.nop	0
	l.nop	205
.LBB11_10:
.LBB11_11:
	l.jr	r30
	l.nop	0
.Lfunc_end11:
	.size	int_init, .Lfunc_end11-int_init

	.hidden	int_add
	.globl	int_add
	.p2align	2
	.type	int_add,@function
int_add:                                # @int_add
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 342
	l.addi	r20, r20, 684           # CFC
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.addi	r11, r0, -1
	l.sfgtui	r3, 31
	l.sw	2544(r10), r19
	l.addi	r28, r28, 2052
	l.sw	2540(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -16
	l.addi	r8, r0, -1
	l.sw	5092(r21), r29
	l.sw	5088(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -16           # CFC
	l.addi	r31, r0, -1
	l.bf	.LBB12_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1710
	l.sfgtui	r13, 31
	l.addi	r20, r20, 1368          # CFC
	l.bf	.LBB12_5
	l.nop	0
.LBB12_1:                               # %if.end
	l.addi	r18, r18, 343
	l.movhi	r6, hi(int_handlers)
	l.ori	r6, r6, lo(int_handlers)
	l.slli	r7, r3, 3
	l.add	r6, r7, r6
	l.sw	0(r6), r4
	l.movhi	r16, hi(int_handlers)
	l.ori	r16, r16, lo(int_handlers)
	l.slli	r17, r13, 3
	l.movhi	r4, hi(int_handlers+4)
	l.add	r16, r17, r16
	l.movhi	r26, hi(int_handlers)
	l.ori	r4, r4, lo(int_handlers+4)
	l.sw	2548(r16), r14
	l.ori	r26, r26, lo(int_handlers)
	l.addi	r20, r20, 686           # CFC
	l.add	r4, r7, r4
	l.movhi	r14, hi(int_handlers+4)
	l.slli	r27, r23, 3
	l.sw	0(r4), r5
	l.ori	r14, r14, lo(int_handlers+4)
	l.add	r26, r27, r26
	l.addi	r4, r0, 1
	l.add	r14, r17, r14
	l.sw	5096(r26), r24
	l.sll	r3, r4, r3
	l.sw	2548(r14), r15
	l.movhi	r24, hi(int_handlers+4)
	l.sw	-12(r2), r3
	l.addi	r14, r0, 1
	l.addi	r28, r28, 2058
	l.ori	r24, r24, lo(int_handlers+4)
	l.addi	r3, r0, 18432
	l.sll	r13, r14, r13
	l.add	r24, r27, r24
	l.sw	-16(r2), r3
	l.sw	2536(r12), r13
	l.sw	5096(r24), r25
	l.addi	r13, r0, 18432
	l.sw	2532(r12), r13
	l.addi	r24, r0, 1
	l.sll	r23, r24, r23
	l.sw	5084(r22), r23
	l.addi	r23, r0, 18432
	l.sw	5080(r22), r23
	l.addi	r18, r18, 1715
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.lwz	r3, -12(r2)
	l.or	r4, r11, r3
	l.lwz	r3, -16(r2)
	l.lwz	r13, 2536(r12)
	l.or	r14, r8, r13
	l.lwz	r13, 2532(r12)
	l.lwz	r23, 5084(r22)
	l.or	r24, r31, r23
	l.lwz	r23, 5080(r22)
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r11, 0
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.addi	r20, r20, 1372          # CFC
.LBB12_2:                               # %return
	l.addi	r18, r18, 344
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 688           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 2064
	l.lwz	r12, 2540(r10)
	l.lwz	r19, 2544(r10)
	l.addi	r18, r18, 1720
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5088(r21)
	l.lwz	r29, 5092(r21)
	l.addi	r20, r20, 1376          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB12_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB12_3:                               # %return
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB12_6
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB12_6
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB12_6
	l.nop	0
	l.nop	205
.LBB12_6:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB12_7
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB12_7
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB12_7
	l.nop	0
	l.nop	205
.LBB12_7:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB12_8
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB12_8
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB12_8
	l.nop	0
	l.nop	205
.LBB12_8:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB12_9
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB12_9
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB12_9
	l.nop	0
	l.nop	205
.LBB12_9:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB12_10
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB12_10
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB12_10
	l.nop	0
	l.nop	205
.LBB12_10:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB12_11
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB12_11
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB12_11
	l.nop	0
	l.nop	205
.LBB12_11:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB12_12
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB12_12
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB12_12
	l.nop	0
	l.nop	205
.LBB12_12:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB12_13
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB12_13
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB12_13
	l.nop	0
	l.nop	205
.LBB12_13:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB12_14
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB12_14
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB12_14
	l.nop	0
	l.nop	205
.LBB12_14:
.LBB12_15:
	l.jr	r30
	l.nop	0
.LBB12_4:
	l.addi	r18, r18, 1710
	l.sfgtui	r13, 31
	l.addi	r20, r20, 1368          # CFC
	l.bf	.LBB12_2
	l.nop	0
.LBB12_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB12_3
	l.nop	0
	l.sfgtui	r3, 31
	l.bf	.LBB12_2
	l.nop	0
	l.j	.LBB12_1
	l.nop	0
.Lfunc_end12:
	.size	int_add, .Lfunc_end12-int_add

	.hidden	int_disable
	.globl	int_disable
	.p2align	2
	.type	int_disable,@function
int_disable:                            # @int_disable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 345
	l.addi	r20, r20, 690           # CFC
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.addi	r11, r0, -1
	l.sfgtui	r3, 31
	l.sw	2544(r10), r19
	l.addi	r28, r28, 2070
	l.sw	2540(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -16
	l.addi	r8, r0, -1
	l.sw	5092(r21), r29
	l.sw	5088(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -16           # CFC
	l.addi	r31, r0, -1
	l.bf	.LBB13_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1725
	l.sfgtui	r13, 31
	l.addi	r20, r20, 1380          # CFC
	l.bf	.LBB13_5
	l.nop	0
.LBB13_1:                               # %if.end
	l.addi	r18, r18, 346
	l.addi	r4, r0, 1
	l.sll	r3, r4, r3
	l.xori	r3, r3, -1
	l.sw	-12(r2), r3
	l.addi	r3, r0, 18432
	l.addi	r14, r0, 1
	l.sll	r13, r14, r13
	l.xori	r13, r13, -1
	l.addi	r20, r20, 692           # CFC
	l.sw	-16(r2), r3
	l.sw	2536(r12), r13
	l.addi	r24, r0, 1
	l.addi	r13, r0, 18432
	l.sw	2532(r12), r13
	l.sll	r23, r24, r23
	l.xori	r23, r23, -1
	l.sw	5084(r22), r23
	l.addi	r28, r28, 2076
	l.addi	r23, r0, 18432
	l.sw	5080(r22), r23
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.lwz	r3, -12(r2)
	l.and	r4, r11, r3
	l.lwz	r3, -16(r2)
	l.lwz	r13, 2536(r12)
	l.and	r14, r8, r13
	l.addi	r18, r18, 1730
	l.lwz	r13, 2532(r12)
	l.lwz	r23, 5084(r22)
	l.and	r24, r31, r23
	l.lwz	r23, 5080(r22)
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r11, 0
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.addi	r20, r20, 1384          # CFC
.LBB13_2:                               # %return
	l.addi	r18, r18, 347
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 694           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 2082
	l.lwz	r12, 2540(r10)
	l.lwz	r19, 2544(r10)
	l.addi	r18, r18, 1735
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5088(r21)
	l.lwz	r29, 5092(r21)
	l.addi	r20, r20, 1388          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB13_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB13_3:                               # %return
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB13_6
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB13_6
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB13_6
	l.nop	0
	l.nop	205
.LBB13_6:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB13_7
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB13_7
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB13_7
	l.nop	0
	l.nop	205
.LBB13_7:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB13_8
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB13_8
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB13_8
	l.nop	0
	l.nop	205
.LBB13_8:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB13_9
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB13_9
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB13_9
	l.nop	0
	l.nop	205
.LBB13_9:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB13_10
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB13_10
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB13_10
	l.nop	0
	l.nop	205
.LBB13_10:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB13_11
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB13_11
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB13_11
	l.nop	0
	l.nop	205
.LBB13_11:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB13_12
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB13_12
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB13_12
	l.nop	0
	l.nop	205
.LBB13_12:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB13_13
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB13_13
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB13_13
	l.nop	0
	l.nop	205
.LBB13_13:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB13_14
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB13_14
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB13_14
	l.nop	0
	l.nop	205
.LBB13_14:
.LBB13_15:
	l.jr	r30
	l.nop	0
.LBB13_4:
	l.addi	r18, r18, 1725
	l.sfgtui	r13, 31
	l.addi	r20, r20, 1380          # CFC
	l.bf	.LBB13_2
	l.nop	0
.LBB13_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB13_3
	l.nop	0
	l.sfgtui	r3, 31
	l.bf	.LBB13_2
	l.nop	0
	l.j	.LBB13_1
	l.nop	0
.Lfunc_end13:
	.size	int_disable, .Lfunc_end13-int_disable

	.hidden	int_enable
	.globl	int_enable
	.p2align	2
	.type	int_enable,@function
int_enable:                             # @int_enable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 348
	l.addi	r20, r20, 696           # CFC
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.addi	r11, r0, -1
	l.sfgtui	r3, 31
	l.sw	2544(r10), r19
	l.addi	r28, r28, 2088
	l.sw	2540(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -16
	l.addi	r8, r0, -1
	l.sw	5092(r21), r29
	l.sw	5088(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -16           # CFC
	l.addi	r31, r0, -1
	l.bf	.LBB14_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1740
	l.sfgtui	r13, 31
	l.addi	r20, r20, 1392          # CFC
	l.bf	.LBB14_5
	l.nop	0
.LBB14_1:                               # %if.end
	l.addi	r18, r18, 349
	l.addi	r4, r0, 1
	l.sll	r3, r4, r3
	l.sw	-12(r2), r3
	l.addi	r3, r0, 18432
	l.sw	-16(r2), r3
	l.addi	r14, r0, 1
	l.sll	r13, r14, r13
	l.addi	r20, r20, 698           # CFC
	l.sw	2536(r12), r13
	l.addi	r13, r0, 18432
	l.sw	2532(r12), r13
	l.addi	r24, r0, 1
	l.sll	r23, r24, r23
	l.sw	5084(r22), r23
	l.addi	r23, r0, 18432
	l.addi	r28, r28, 2094
	l.sw	5080(r22), r23
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.lwz	r3, -12(r2)
	l.or	r4, r11, r3
	l.lwz	r3, -16(r2)
	l.lwz	r13, 2536(r12)
	l.or	r14, r8, r13
	l.addi	r18, r18, 1745
	l.lwz	r13, 2532(r12)
	l.lwz	r23, 5084(r22)
	l.or	r24, r31, r23
	l.lwz	r23, 5080(r22)
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r11, 0
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.addi	r20, r20, 1396          # CFC
.LBB14_2:                               # %return
	l.addi	r18, r18, 350
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 700           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 2100
	l.lwz	r12, 2540(r10)
	l.lwz	r19, 2544(r10)
	l.addi	r18, r18, 1750
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5088(r21)
	l.lwz	r29, 5092(r21)
	l.addi	r20, r20, 1400          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB14_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB14_3:                               # %return
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB14_6
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB14_6
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB14_6
	l.nop	0
	l.nop	205
.LBB14_6:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB14_7
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB14_7
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB14_7
	l.nop	0
	l.nop	205
.LBB14_7:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB14_8
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB14_8
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB14_8
	l.nop	0
	l.nop	205
.LBB14_8:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB14_9
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB14_9
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB14_9
	l.nop	0
	l.nop	205
.LBB14_9:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB14_10
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB14_10
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB14_10
	l.nop	0
	l.nop	205
.LBB14_10:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB14_11
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB14_11
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB14_11
	l.nop	0
	l.nop	205
.LBB14_11:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB14_12
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB14_12
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB14_12
	l.nop	0
	l.nop	205
.LBB14_12:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB14_13
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB14_13
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB14_13
	l.nop	0
	l.nop	205
.LBB14_13:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB14_14
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB14_14
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB14_14
	l.nop	0
	l.nop	205
.LBB14_14:
.LBB14_15:
	l.jr	r30
	l.nop	0
.LBB14_4:
	l.addi	r18, r18, 1740
	l.sfgtui	r13, 31
	l.addi	r20, r20, 1392          # CFC
	l.bf	.LBB14_2
	l.nop	0
.LBB14_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_3
	l.nop	0
	l.sfgtui	r3, 31
	l.bf	.LBB14_2
	l.nop	0
	l.j	.LBB14_1
	l.nop	0
.Lfunc_end14:
	.size	int_enable, .Lfunc_end14-int_enable

	.hidden	int_main
	.globl	int_main
	.p2align	2
	.type	int_main,@function
int_main:                               # @int_main
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 351
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r20, r20, 702           # CFC
	l.addi	r1, r1, -28
	l.addi	r3, r0, 18434
	l.sw	2544(r10), r19
	l.sw	2540(r10), r12
	l.addi	r12, r10, 0
	l.sw	-12(r2), r3
	l.addi	r10, r10, -28
	l.sw	5092(r21), r29
	l.addi	r13, r0, 18434
	l.sw	2536(r12), r13
	l.sw	5088(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -28           # CFC
	l.addi	r28, r28, 2106
	l.addi	r23, r0, 18434
	l.sw	5084(r22), r23
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.sw	-28(r2), r11
	l.lwz	r3, -12(r2)
	l.movhi	r4, 0
	l.sw	2520(r12), r8
	l.lwz	r13, 2536(r12)
	l.movhi	r14, 0
	l.sw	5068(r22), r31
	l.lwz	r23, 5084(r22)
	l.movhi	r24, 0
	l.addi	r18, r18, 1755
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r6, 0
	l.lwz	r5, -28(r2)
	l.movhi	r3, hi(int_handlers+4)
	l.ori	r7, r3, lo(int_handlers+4)
	l.movhi	r16, 0
	l.lwz	r15, 2520(r12)
	l.movhi	r13, hi(int_handlers+4)
	l.ori	r17, r13, lo(int_handlers+4)
	l.movhi	r26, 0
	l.lwz	r25, 5068(r22)
	l.movhi	r23, hi(int_handlers+4)
	l.ori	r27, r23, lo(int_handlers+4)
	l.addi	r20, r20, 1404          # CFC
.LBB15_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 352
	l.addi	r3, r0, 1
	l.sll	r11, r3, r6
	l.and	r3, r11, r5
	l.addi	r20, r20, 704           # CFC
	l.sfeqi	r3, 0
	l.addi	r13, r0, 1
	l.sll	r8, r13, r16
	l.addi	r28, r28, 2112
	l.and	r13, r8, r15
	l.addi	r23, r0, 1
	l.sll	r31, r23, r26
	l.and	r23, r31, r25
	l.bf	.LBB15_7
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1760
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1408          # CFC
	l.bf	.LBB15_8
	l.nop	0
.LBB15_2:                               # %land.lhs.true
                                        #   in Loop: Header=BB15_1 Depth=1
	l.addi	r18, r18, 353
	l.lwz	r4, -4(r7)
	l.addi	r20, r20, 706           # CFC
	l.sfeqi	r4, 0
	l.addi	r28, r28, 2118
	l.lwz	r14, 2544(r17)
	l.lwz	r24, 5092(r27)
	l.bf	.LBB15_9
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1765
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1412          # CFC
	l.bf	.LBB15_10
	l.nop	0
.LBB15_3:                               # %if.then
                                        #   in Loop: Header=BB15_1 Depth=1
	l.addi	r18, r18, 354
	l.lwz	r3, 0(r7)
	l.sw	-12(r2), r6
	l.sw	-16(r2), r7
	l.sw	-20(r2), r11
	l.lwz	r13, 2548(r17)
	l.sw	2536(r12), r16
	l.sw	2532(r12), r17
	l.sw	2528(r12), r8
	l.lwz	r23, 5096(r27)
	l.sw	5084(r22), r26
	l.addi	r20, r20, 708           # CFC
	l.sw	5080(r22), r27
	l.sw	5076(r22), r31
	l.sfne	r4, r14
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB15_6
	l.nop	0
	l.jalr	r4
	l.nop	0                       # in delay slot
	l.addi	r3, r0, 18434
	l.sw	-24(r2), r3
	l.addi	r13, r0, 18434
	l.sw	2524(r12), r13
	l.addi	r23, r0, 18434
	l.sw	5072(r22), r23
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.lwz	r3, -20(r2)
	l.addi	r28, r28, 2124
	l.xori	r3, r3, -1
	l.and	r4, r11, r3
	l.lwz	r3, -24(r2)
	l.lwz	r13, 2528(r12)
	l.xori	r13, r13, -1
	l.and	r14, r8, r13
	l.lwz	r13, 2524(r12)
	l.lwz	r23, 5076(r22)
	l.xori	r23, r23, -1
	l.and	r24, r31, r23
	l.addi	r18, r18, 1770
	l.lwz	r23, 5072(r22)
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.lwz	r7, -16(r2)
	l.lwz	r6, -12(r2)
	l.lwz	r5, -28(r2)
	l.lwz	r17, 2532(r12)
	l.lwz	r16, 2536(r12)
	l.lwz	r15, 2520(r12)
	l.lwz	r27, 5080(r22)
	l.lwz	r26, 5084(r22)
	l.lwz	r25, 5068(r22)
	l.addi	r20, r20, 1416          # CFC
.LBB15_4:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	l.addi	r18, r18, 355
	l.addi	r7, r7, 8
	l.addi	r6, r6, 1
	l.addi	r20, r20, 710           # CFC
	l.sfnei	r6, 32
	l.addi	r17, r17, 8
	l.addi	r28, r28, 2130
	l.addi	r16, r16, 1
	l.addi	r27, r27, 8
	l.addi	r26, r26, 1
	l.bf	.LBB15_11
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1775
	l.sfnei	r16, 32
	l.addi	r20, r20, 1420          # CFC
	l.bf	.LBB15_12
	l.nop	0
.LBB15_5:                               # %while.end
                                        #   in Loop: Header=BB15_1 Depth=1
	l.addi	r18, r18, 356
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 712           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 2136
	l.lwz	r12, 2540(r10)
	l.lwz	r19, 2544(r10)
	l.addi	r18, r18, 1780
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5088(r21)
	l.lwz	r29, 5092(r21)
	l.addi	r20, r20, 1424          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB15_6
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB15_6:                               # %while.end
                                        #   in Loop: Header=BB15_1 Depth=1
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB15_13
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB15_13
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB15_13
	l.nop	0
	l.nop	205
.LBB15_13:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB15_14
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB15_14
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB15_14
	l.nop	0
	l.nop	205
.LBB15_14:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB15_15
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB15_15
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB15_15
	l.nop	0
	l.nop	205
.LBB15_15:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB15_16
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB15_16
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB15_16
	l.nop	0
	l.nop	205
.LBB15_16:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB15_17
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB15_17
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB15_17
	l.nop	0
	l.nop	205
.LBB15_17:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB15_18
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB15_18
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB15_18
	l.nop	0
	l.nop	205
.LBB15_18:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB15_19
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB15_19
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB15_19
	l.nop	0
	l.nop	205
.LBB15_19:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB15_20
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB15_20
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB15_20
	l.nop	0
	l.nop	205
.LBB15_20:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB15_21
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB15_21
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB15_21
	l.nop	0
	l.nop	205
.LBB15_21:
.LBB15_22:
	l.jr	r30
	l.nop	0
.LBB15_7:                               #   in Loop: Header=BB15_1 Depth=1
	l.addi	r18, r18, 1760
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1408          # CFC
	l.bf	.LBB15_4
	l.nop	0
.LBB15_8:                               #   in Loop: Header=BB15_1 Depth=1
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB15_6
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB15_4
	l.nop	0
	l.j	.LBB15_2
	l.nop	0
.LBB15_9:                               #   in Loop: Header=BB15_1 Depth=1
	l.addi	r18, r18, 1765
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1412          # CFC
	l.bf	.LBB15_4
	l.nop	0
.LBB15_10:                              #   in Loop: Header=BB15_1 Depth=1
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB15_6
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB15_4
	l.nop	0
	l.j	.LBB15_3
	l.nop	0
.LBB15_11:                              #   in Loop: Header=BB15_1 Depth=1
	l.addi	r18, r18, 1775
	l.sfnei	r16, 32
	l.addi	r20, r20, 1420          # CFC
	l.bf	.LBB15_1
	l.nop	0
.LBB15_12:                              #   in Loop: Header=BB15_1 Depth=1
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB15_6
	l.nop	0
	l.sfnei	r6, 32
	l.bf	.LBB15_1
	l.nop	0
	l.j	.LBB15_5
	l.nop	0
.Lfunc_end15:
	.size	int_main, .Lfunc_end15-int_main

	.hidden	int_clear_all_pending
	.globl	int_clear_all_pending
	.p2align	2
	.type	int_clear_all_pending,@function
int_clear_all_pending:                  # @int_clear_all_pending
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 357
	l.addi	r20, r20, 714           # CFC
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -8
	l.addi	r3, r0, 18434
	l.sw	2544(r10), r19
	l.sw	2540(r10), r12
	l.addi	r12, r10, 0
	l.movhi	r4, 0
	l.addi	r28, r28, 2142
	l.addi	r10, r10, -8
	l.sw	5092(r21), r29
	l.addi	r13, r0, 18434
	l.movhi	r14, 0
	l.sw	5088(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -8            # CFC
	l.addi	r23, r0, 18434
	l.movhi	r24, 0
	l.addi	r18, r18, 1785
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 2540(r10)
	l.lwz	r19, 2544(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5088(r21)
	l.lwz	r29, 5092(r21)
	l.addi	r20, r20, 1428          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB16_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB16_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB16_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB16_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB16_2
	l.nop	0
	l.nop	205
.LBB16_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB16_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB16_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB16_3
	l.nop	0
	l.nop	205
.LBB16_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB16_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB16_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB16_4
	l.nop	0
	l.nop	205
.LBB16_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB16_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB16_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB16_5
	l.nop	0
	l.nop	205
.LBB16_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB16_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB16_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB16_6
	l.nop	0
	l.nop	205
.LBB16_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB16_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB16_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB16_7
	l.nop	0
	l.nop	205
.LBB16_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB16_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB16_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB16_8
	l.nop	0
	l.nop	205
.LBB16_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB16_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB16_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB16_9
	l.nop	0
	l.nop	205
.LBB16_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB16_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB16_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB16_10
	l.nop	0
	l.nop	205
.LBB16_10:
.LBB16_11:
	l.jr	r30
	l.nop	0
.Lfunc_end16:
	.size	int_clear_all_pending, .Lfunc_end16-int_clear_all_pending

	.hidden	memcpy
	.globl	memcpy
	.p2align	2
	.type	memcpy,@function
memcpy:                                 # @memcpy
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 358
	l.addi	r20, r20, 716           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sfeqi	r5, 0
	l.addi	r28, r28, 2148
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.sw	5092(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.bf	.LBB17_5
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1790
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1432          # CFC
	l.bf	.LBB17_6
	l.nop	0
.LBB17_1:                               # %while.body.preheader
	l.addi	r18, r18, 359
	l.addi	r20, r20, 718           # CFC
	l.ori	r6, r3, 0
	l.addi	r28, r28, 2154
	l.ori	r16, r13, 0
	l.addi	r18, r18, 1795
	l.ori	r26, r23, 0
	l.addi	r20, r20, 1436          # CFC
.LBB17_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 360
	l.lbz	r7, 0(r4)
	l.sb	0(r6), r7
	l.addi	r6, r6, 1
	l.addi	r4, r4, 1
	l.addi	r5, r5, -1
	l.addi	r20, r20, 720           # CFC
	l.sfnei	r5, 0
	l.lbz	r17, 2548(r14)
	l.sb	2548(r16), r17
	l.addi	r16, r16, 1
	l.addi	r14, r14, 1
	l.addi	r28, r28, 2160
	l.addi	r15, r15, -1
	l.lbz	r27, 5096(r24)
	l.sb	5096(r26), r27
	l.addi	r26, r26, 1
	l.addi	r24, r24, 1
	l.addi	r25, r25, -1
	l.bf	.LBB17_7
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1800
	l.sfnei	r15, 0
	l.addi	r20, r20, 1440          # CFC
	l.bf	.LBB17_8
	l.nop	0
.LBB17_3:                               # %while.end
	l.addi	r18, r18, 361
	l.ori	r11, r3, 0
	l.addi	r1, r2, 0
	l.addi	r20, r20, 722           # CFC
	l.lwz	r2, -4(r1)
	l.ori	r8, r13, 0
	l.addi	r28, r28, 2166
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.addi	r18, r18, 1805
	l.ori	r31, r23, 0
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 1444          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB17_4
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB17_4:                               # %while.end
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB17_9
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB17_9
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB17_9
	l.nop	0
	l.nop	205
.LBB17_9:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB17_10
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB17_10
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB17_10
	l.nop	0
	l.nop	205
.LBB17_10:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB17_11
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB17_11
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB17_11
	l.nop	0
	l.nop	205
.LBB17_11:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB17_12
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB17_12
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB17_12
	l.nop	0
	l.nop	205
.LBB17_12:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB17_13
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB17_13
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB17_13
	l.nop	0
	l.nop	205
.LBB17_13:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB17_14
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB17_14
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB17_14
	l.nop	0
	l.nop	205
.LBB17_14:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB17_15
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB17_15
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB17_15
	l.nop	0
	l.nop	205
.LBB17_15:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB17_16
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB17_16
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB17_16
	l.nop	0
	l.nop	205
.LBB17_16:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB17_17
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB17_17
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB17_17
	l.nop	0
	l.nop	205
.LBB17_17:
.LBB17_18:
	l.jr	r30
	l.nop	0
.LBB17_5:
	l.addi	r18, r18, 1790
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1432          # CFC
	l.bf	.LBB17_3
	l.nop	0
.LBB17_6:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB17_4
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB17_3
	l.nop	0
	l.j	.LBB17_1
	l.nop	0
.LBB17_7:
	l.addi	r18, r18, 1800
	l.sfnei	r15, 0
	l.addi	r20, r20, 1440          # CFC
	l.bf	.LBB17_2
	l.nop	0
.LBB17_8:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB17_4
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB17_2
	l.nop	0
	l.j	.LBB17_3
	l.nop	0
.Lfunc_end17:
	.size	memcpy, .Lfunc_end17-memcpy

	.hidden	strlen
	.globl	strlen
	.p2align	2
	.type	strlen,@function
strlen:                                 # @strlen
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 362
	l.addi	r20, r20, 724           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r28, r28, 2172
	l.addi	r4, r3, -1
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.addi	r18, r18, 1810
	l.addi	r14, r13, -1
	l.sw	5092(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.addi	r24, r23, -1
	l.addi	r20, r20, 1448          # CFC
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 363
	l.addi	r5, r4, 1
	l.lbz	r4, 1(r4)
	l.addi	r20, r20, 726           # CFC
	l.sfnei	r4, 0
	l.addi	r15, r14, 1
	l.addi	r28, r28, 2178
	l.lbz	r14, 2549(r14)
	l.addi	r25, r24, 1
	l.lbz	r24, 5097(r24)
	l.bf	.LBB18_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1815
	l.sfnei	r14, 0
	l.addi	r20, r20, 1452          # CFC
	l.bf	.LBB18_5
	l.nop	0
.LBB18_7:
	l.addi	r18, r18, 364
	l.addi	r20, r20, 728           # CFC
	l.ori	r4, r5, 0
	l.addi	r28, r28, 2184
	l.ori	r14, r15, 0
	l.addi	r18, r18, 1820
	l.ori	r24, r25, 0
	l.addi	r20, r20, 1456          # CFC
.LBB18_2:                               # %for.end
	l.addi	r18, r18, 365
	l.sub	r11, r5, r3
	l.addi	r1, r2, 0
	l.addi	r20, r20, 730           # CFC
	l.lwz	r2, -4(r1)
	l.sub	r8, r15, r13
	l.addi	r28, r28, 2190
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.addi	r18, r18, 1825
	l.sub	r31, r25, r23
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 1460          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB18_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB18_3:                               # %for.end
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB18_8
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB18_8
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB18_8
	l.nop	0
	l.nop	205
.LBB18_8:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB18_9
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB18_9
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB18_9
	l.nop	0
	l.nop	205
.LBB18_9:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB18_10
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB18_10
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB18_10
	l.nop	0
	l.nop	205
.LBB18_10:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB18_11
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB18_11
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB18_11
	l.nop	0
	l.nop	205
.LBB18_11:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB18_12
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB18_12
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB18_12
	l.nop	0
	l.nop	205
.LBB18_12:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB18_13
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB18_13
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB18_13
	l.nop	0
	l.nop	205
.LBB18_13:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB18_14
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB18_14
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB18_14
	l.nop	0
	l.nop	205
.LBB18_14:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB18_15
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB18_15
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB18_15
	l.nop	0
	l.nop	205
.LBB18_15:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB18_16
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB18_16
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB18_16
	l.nop	0
	l.nop	205
.LBB18_16:
.LBB18_17:
	l.jr	r30
	l.nop	0
.LBB18_4:
	l.addi	r18, r18, 1815
	l.sfnei	r14, 0
	l.addi	r20, r20, 1452          # CFC
	l.bf	.LBB18_6
	l.nop	0
.LBB18_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB18_3
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB18_6
	l.nop	0
	l.j	.LBB18_7
	l.nop	0
.LBB18_6:
	l.addi	r18, r18, 366
	l.addi	r20, r20, 732           # CFC
	l.ori	r4, r5, 0
	l.addi	r28, r28, 2196
	l.ori	r14, r15, 0
	l.addi	r18, r18, 1830
	l.ori	r24, r25, 0
	l.addi	r20, r20, 1464          # CFC
	l.j	.LBB18_1
	l.nop	0
.Lfunc_end18:
	.size	strlen, .Lfunc_end18-strlen

	.hidden	memchr
	.globl	memchr
	.p2align	2
	.type	memchr,@function
memchr:                                 # @memchr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 367
	l.addi	r20, r20, 734           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r11, 0
	l.sfeqi	r5, 0
	l.sw	2544(r10), r12
	l.addi	r28, r28, 2202
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.movhi	r8, 0
	l.sw	5092(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r31, 0
	l.bf	.LBB19_6
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1835
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1468          # CFC
	l.bf	.LBB19_7
	l.nop	0
.LBB19_1:                               # %while.body.lr.ph
	l.addi	r18, r18, 368
	l.addi	r20, r20, 736           # CFC
	l.andi	r4, r4, 255
	l.addi	r28, r28, 2208
	l.andi	r14, r14, 255
	l.addi	r18, r18, 1840
	l.andi	r24, r24, 255
	l.addi	r20, r20, 1472          # CFC
.LBB19_2:                               # %while.body
	l.addi	r18, r18, 369
	l.lbz	r6, 0(r3)
	l.sfeq	r6, r4
	l.addi	r20, r20, 738           # CFC
	l.ori	r11, r3, 0
	l.lbz	r16, 2548(r13)
	l.addi	r28, r28, 2214
	l.ori	r8, r13, 0
	l.lbz	r26, 5096(r23)
	l.ori	r31, r23, 0
	l.bf	.LBB19_8
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1845
	l.sfeq	r16, r14
	l.addi	r20, r20, 1476          # CFC
	l.bf	.LBB19_9
	l.nop	0
.LBB19_3:                               # %if.end
	l.addi	r18, r18, 370
	l.addi	r3, r3, 1
	l.addi	r5, r5, -1
	l.sfnei	r5, 0
	l.addi	r20, r20, 740           # CFC
	l.movhi	r11, 0
	l.addi	r13, r13, 1
	l.addi	r15, r15, -1
	l.addi	r28, r28, 2220
	l.movhi	r8, 0
	l.addi	r23, r23, 1
	l.addi	r25, r25, -1
	l.movhi	r31, 0
	l.bf	.LBB19_10
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1850
	l.sfnei	r15, 0
	l.addi	r20, r20, 1480          # CFC
	l.bf	.LBB19_11
	l.nop	0
.LBB19_4:                               # %cleanup
	l.addi	r18, r18, 371
	l.addi	r1, r2, 0
	l.addi	r20, r20, 742           # CFC
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 2226
	l.lwz	r12, 2544(r10)
	l.addi	r18, r18, 1855
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 1484          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB19_5
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB19_5:                               # %cleanup
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB19_12
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB19_12
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB19_12
	l.nop	0
	l.nop	205
.LBB19_12:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB19_13
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB19_13
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB19_13
	l.nop	0
	l.nop	205
.LBB19_13:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB19_14
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB19_14
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB19_14
	l.nop	0
	l.nop	205
.LBB19_14:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB19_15
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB19_15
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB19_15
	l.nop	0
	l.nop	205
.LBB19_15:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB19_16
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB19_16
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB19_16
	l.nop	0
	l.nop	205
.LBB19_16:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB19_17
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB19_17
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB19_17
	l.nop	0
	l.nop	205
.LBB19_17:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB19_18
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB19_18
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB19_18
	l.nop	0
	l.nop	205
.LBB19_18:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB19_19
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB19_19
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB19_19
	l.nop	0
	l.nop	205
.LBB19_19:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB19_20
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB19_20
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB19_20
	l.nop	0
	l.nop	205
.LBB19_20:
.LBB19_21:
	l.jr	r30
	l.nop	0
.LBB19_6:
	l.addi	r18, r18, 1835
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1468          # CFC
	l.bf	.LBB19_4
	l.nop	0
.LBB19_7:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB19_5
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB19_4
	l.nop	0
	l.j	.LBB19_1
	l.nop	0
.LBB19_8:
	l.addi	r18, r18, 1845
	l.sfeq	r16, r14
	l.addi	r20, r20, 1476          # CFC
	l.bf	.LBB19_4
	l.nop	0
.LBB19_9:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB19_5
	l.nop	0
	l.sfeq	r6, r4
	l.bf	.LBB19_4
	l.nop	0
	l.j	.LBB19_3
	l.nop	0
.LBB19_10:
	l.addi	r18, r18, 1850
	l.sfnei	r15, 0
	l.addi	r20, r20, 1480          # CFC
	l.bf	.LBB19_2
	l.nop	0
.LBB19_11:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB19_5
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB19_2
	l.nop	0
	l.j	.LBB19_4
	l.nop	0
.Lfunc_end19:
	.size	memchr, .Lfunc_end19-memchr

	.hidden	rand
	.globl	rand
	.p2align	2
	.type	rand,@function
rand:                                   # @rand
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 372
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, hi(rand.lfsr)
	l.ori	r3, r3, lo(rand.lfsr)
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lwz	r4, 0(r3)
	l.movhi	r13, hi(rand.lfsr)
	l.sw	5092(r21), r22
	l.andi	r5, r4, 1
	l.addi	r20, r20, 744           # CFC
	l.ori	r13, r13, lo(rand.lfsr)
	l.addi	r22, r21, 0             # CFC
	l.movhi	r6, 0
	l.lwz	r14, 2548(r13)
	l.addi	r21, r21, -4            # CFC
	l.sub	r5, r6, r5
	l.andi	r15, r14, 1
	l.movhi	r23, hi(rand.lfsr)
	l.movhi	r6, 53248
	l.movhi	r16, 0
	l.ori	r23, r23, lo(rand.lfsr)
	l.ori	r6, r6, 1
	l.sub	r15, r16, r15
	l.lwz	r24, 5096(r23)
	l.and	r5, r5, r6
	l.movhi	r16, 53248
	l.andi	r25, r24, 1
	l.srli	r4, r4, 1
	l.addi	r28, r28, 2232
	l.ori	r16, r16, 1
	l.movhi	r26, 0
	l.xor	r11, r5, r4
	l.and	r15, r15, r16
	l.sub	r25, r26, r25
	l.sw	0(r3), r11
	l.srli	r14, r14, 1
	l.movhi	r26, 53248
	l.movhi	r3, hi(rand.period)
	l.xor	r8, r15, r14
	l.ori	r26, r26, 1
	l.ori	r3, r3, lo(rand.period)
	l.sw	2548(r13), r8
	l.and	r25, r25, r26
	l.lwz	r4, 0(r3)
	l.movhi	r13, hi(rand.period)
	l.srli	r24, r24, 1
	l.addi	r4, r4, 1
	l.addi	r18, r18, 1860
	l.ori	r13, r13, lo(rand.period)
	l.xor	r31, r25, r24
	l.sw	0(r3), r4
	l.lwz	r14, 2548(r13)
	l.sw	5096(r23), r31
	l.addi	r1, r2, 0
	l.addi	r14, r14, 1
	l.movhi	r23, hi(rand.period)
	l.lwz	r2, -4(r1)
	l.sw	2548(r13), r14
	l.ori	r23, r23, lo(rand.period)
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.lwz	r24, 5096(r23)
	l.addi	r24, r24, 1
	l.sw	5096(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 1488          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB20_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB20_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB20_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB20_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB20_2
	l.nop	0
	l.nop	205
.LBB20_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB20_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB20_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB20_3
	l.nop	0
	l.nop	205
.LBB20_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB20_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB20_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB20_4
	l.nop	0
	l.nop	205
.LBB20_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB20_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB20_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB20_5
	l.nop	0
	l.nop	205
.LBB20_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB20_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB20_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB20_6
	l.nop	0
	l.nop	205
.LBB20_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB20_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB20_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB20_7
	l.nop	0
	l.nop	205
.LBB20_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB20_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB20_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB20_8
	l.nop	0
	l.nop	205
.LBB20_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB20_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB20_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB20_9
	l.nop	0
	l.nop	205
.LBB20_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB20_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB20_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB20_10
	l.nop	0
	l.nop	205
.LBB20_10:
.LBB20_11:
	l.jr	r30
	l.nop	0
.Lfunc_end20:
	.size	rand, .Lfunc_end20-rand

	.hidden	mtspr
	.globl	mtspr
	.p2align	2
	.type	mtspr,@function
mtspr:                                  # @mtspr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 373
	l.addi	r20, r20, 746           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r28, r28, 2238
	l.addi	r10, r10, -4
	l.sw	5092(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r18, r18, 1865
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 1492          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB21_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB21_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB21_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB21_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB21_2
	l.nop	0
	l.nop	205
.LBB21_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB21_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB21_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB21_3
	l.nop	0
	l.nop	205
.LBB21_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB21_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB21_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB21_4
	l.nop	0
	l.nop	205
.LBB21_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB21_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB21_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB21_5
	l.nop	0
	l.nop	205
.LBB21_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB21_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB21_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB21_6
	l.nop	0
	l.nop	205
.LBB21_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB21_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB21_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB21_7
	l.nop	0
	l.nop	205
.LBB21_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB21_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB21_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB21_8
	l.nop	0
	l.nop	205
.LBB21_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB21_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB21_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB21_9
	l.nop	0
	l.nop	205
.LBB21_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB21_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB21_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB21_10
	l.nop	0
	l.nop	205
.LBB21_10:
.LBB21_11:
	l.jr	r30
	l.nop	0
.Lfunc_end21:
	.size	mtspr, .Lfunc_end21-mtspr

	.hidden	mfspr
	.globl	mfspr
	.p2align	2
	.type	mfspr,@function
mfspr:                                  # @mfspr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 374
	l.addi	r20, r20, 748           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r28, r28, 2244
	l.addi	r10, r10, -4
	l.sw	5092(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	#APP
	l.mfspr		r11,r3,0
	#NO_APP
	l.addi	r18, r18, 1870
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 1496          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB22_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB22_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB22_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB22_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB22_2
	l.nop	0
	l.nop	205
.LBB22_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB22_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB22_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB22_3
	l.nop	0
	l.nop	205
.LBB22_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB22_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB22_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB22_4
	l.nop	0
	l.nop	205
.LBB22_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB22_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB22_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB22_5
	l.nop	0
	l.nop	205
.LBB22_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB22_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB22_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB22_6
	l.nop	0
	l.nop	205
.LBB22_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB22_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB22_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB22_7
	l.nop	0
	l.nop	205
.LBB22_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB22_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB22_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB22_8
	l.nop	0
	l.nop	205
.LBB22_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB22_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB22_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB22_9
	l.nop	0
	l.nop	205
.LBB22_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB22_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB22_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB22_10
	l.nop	0
	l.nop	205
.LBB22_10:
.LBB22_11:
	l.jr	r30
	l.nop	0
.Lfunc_end22:
	.size	mfspr, .Lfunc_end22-mfspr

	.hidden	sim_putc
	.globl	sim_putc
	.p2align	2
	.type	sim_putc,@function
sim_putc:                               # @sim_putc
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 375
	l.addi	r20, r20, 750           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r28, r28, 2250
	l.addi	r10, r10, -4
	l.sw	5092(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	#APP
	l.addi	r3,r3,0
	#NO_APP
	#APP

	l.sfne	r3, r13
	
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB23_1
	l.nop	0

	l.nop 4
	#NO_APP
	l.addi	r18, r18, 1875
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 1500          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB23_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB23_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB23_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB23_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB23_2
	l.nop	0
	l.nop	205
.LBB23_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB23_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB23_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB23_3
	l.nop	0
	l.nop	205
.LBB23_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB23_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB23_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB23_4
	l.nop	0
	l.nop	205
.LBB23_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB23_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB23_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB23_5
	l.nop	0
	l.nop	205
.LBB23_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB23_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB23_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB23_6
	l.nop	0
	l.nop	205
.LBB23_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB23_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB23_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB23_7
	l.nop	0
	l.nop	205
.LBB23_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB23_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB23_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB23_8
	l.nop	0
	l.nop	205
.LBB23_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB23_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB23_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB23_9
	l.nop	0
	l.nop	205
.LBB23_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB23_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB23_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB23_10
	l.nop	0
	l.nop	205
.LBB23_10:
.LBB23_11:
	l.jr	r30
	l.nop	0
.Lfunc_end23:
	.size	sim_putc, .Lfunc_end23-sim_putc

	.hidden	report
	.globl	report
	.p2align	2
	.type	report,@function
report:                                 # @report
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 376
	l.addi	r20, r20, 752           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r28, r28, 2256
	l.addi	r10, r10, -4
	l.sw	5092(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	#APP
	l.addi	r3,r3,0
	#NO_APP
	#APP
	l.nop 2
	#NO_APP
	l.addi	r18, r18, 1880
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 1504          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB24_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB24_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB24_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB24_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB24_2
	l.nop	0
	l.nop	205
.LBB24_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB24_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB24_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB24_3
	l.nop	0
	l.nop	205
.LBB24_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB24_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB24_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB24_4
	l.nop	0
	l.nop	205
.LBB24_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB24_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB24_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB24_5
	l.nop	0
	l.nop	205
.LBB24_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB24_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB24_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB24_6
	l.nop	0
	l.nop	205
.LBB24_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB24_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB24_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB24_7
	l.nop	0
	l.nop	205
.LBB24_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB24_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB24_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB24_8
	l.nop	0
	l.nop	205
.LBB24_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB24_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB24_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB24_9
	l.nop	0
	l.nop	205
.LBB24_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB24_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB24_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB24_10
	l.nop	0
	l.nop	205
.LBB24_10:
.LBB24_11:
	l.jr	r30
	l.nop	0
.Lfunc_end24:
	.size	report, .Lfunc_end24-report

	.hidden	cpu_enable_user_interrupts
	.globl	cpu_enable_user_interrupts
	.p2align	2
	.type	cpu_enable_user_interrupts,@function
cpu_enable_user_interrupts:             # @cpu_enable_user_interrupts
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 377
	l.sw	-4(r1), r2
	l.addi	r20, r20, 754           # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r3, r0, 17
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.addi	r13, r0, 17
	l.addi	r28, r28, 2262
	l.sw	5092(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.addi	r23, r0, 17
	#APP
	l.mfspr		r4,r3,0
	#NO_APP
	l.ori	r4, r4, 4
	l.ori	r14, r14, 4
	l.addi	r18, r18, 1885
	l.ori	r24, r24, 4
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 1508          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB25_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB25_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB25_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB25_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB25_2
	l.nop	0
	l.nop	205
.LBB25_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB25_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB25_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB25_3
	l.nop	0
	l.nop	205
.LBB25_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB25_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB25_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB25_4
	l.nop	0
	l.nop	205
.LBB25_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB25_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB25_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB25_5
	l.nop	0
	l.nop	205
.LBB25_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB25_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB25_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB25_6
	l.nop	0
	l.nop	205
.LBB25_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB25_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB25_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB25_7
	l.nop	0
	l.nop	205
.LBB25_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB25_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB25_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB25_8
	l.nop	0
	l.nop	205
.LBB25_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB25_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB25_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB25_9
	l.nop	0
	l.nop	205
.LBB25_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB25_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB25_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB25_10
	l.nop	0
	l.nop	205
.LBB25_10:
.LBB25_11:
	l.jr	r30
	l.nop	0
.Lfunc_end25:
	.size	cpu_enable_user_interrupts, .Lfunc_end25-cpu_enable_user_interrupts

	.hidden	cpu_enable_timer
	.globl	cpu_enable_timer
	.p2align	2
	.type	cpu_enable_timer,@function
cpu_enable_timer:                       # @cpu_enable_timer
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 378
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 756           # CFC
	l.movhi	r3, 24576
	l.ori	r3, r3, 1000
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.addi	r4, r0, 20480
	l.movhi	r13, 24576
	l.sw	5092(r21), r22
	l.ori	r13, r13, 1000
	l.addi	r14, r0, 20480
	l.addi	r28, r28, 2268
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r23, 24576
	l.ori	r23, r23, 1000
	l.addi	r24, r0, 20480
	#APP
	l.mtspr		r4,r3,0
	#NO_APP
	l.addi	r3, r0, 17
	l.addi	r13, r0, 17
	l.addi	r23, r0, 17
	#APP
	l.mfspr		r4,r3,0
	#NO_APP
	l.addi	r18, r18, 1890
	l.ori	r4, r4, 2
	l.ori	r14, r14, 2
	l.ori	r24, r24, 2
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 1512          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB26_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB26_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB26_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB26_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB26_2
	l.nop	0
	l.nop	205
.LBB26_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB26_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB26_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB26_3
	l.nop	0
	l.nop	205
.LBB26_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB26_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB26_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB26_4
	l.nop	0
	l.nop	205
.LBB26_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB26_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB26_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB26_5
	l.nop	0
	l.nop	205
.LBB26_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB26_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB26_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB26_6
	l.nop	0
	l.nop	205
.LBB26_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB26_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB26_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB26_7
	l.nop	0
	l.nop	205
.LBB26_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB26_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB26_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB26_8
	l.nop	0
	l.nop	205
.LBB26_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB26_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB26_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB26_9
	l.nop	0
	l.nop	205
.LBB26_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB26_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB26_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB26_10
	l.nop	0
	l.nop	205
.LBB26_10:
.LBB26_11:
	l.jr	r30
	l.nop	0
.Lfunc_end26:
	.size	cpu_enable_timer, .Lfunc_end26-cpu_enable_timer

	.hidden	cpu_disable_timer
	.globl	cpu_disable_timer
	.p2align	2
	.type	cpu_disable_timer,@function
cpu_disable_timer:                      # @cpu_disable_timer
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 379
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 758           # CFC
	l.addi	r3, r0, 17
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.addi	r13, r0, 17
	l.sw	5092(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.addi	r23, r0, 17
	#APP
	l.mfspr		r4,r3,0
	#NO_APP
	l.addi	r28, r28, 2274
	l.addi	r5, r0, -3
	l.and	r4, r4, r5
	l.addi	r15, r0, -3
	l.and	r14, r14, r15
	l.addi	r25, r0, -3
	l.and	r24, r24, r25
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r3, r0, 20480
	l.movhi	r4, 0
	l.addi	r13, r0, 20480
	l.addi	r18, r18, 1895
	l.movhi	r14, 0
	l.addi	r23, r0, 20480
	l.movhi	r24, 0
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 1516          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB27_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB27_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB27_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB27_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB27_2
	l.nop	0
	l.nop	205
.LBB27_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB27_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB27_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB27_3
	l.nop	0
	l.nop	205
.LBB27_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB27_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB27_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB27_4
	l.nop	0
	l.nop	205
.LBB27_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB27_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB27_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB27_5
	l.nop	0
	l.nop	205
.LBB27_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB27_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB27_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB27_6
	l.nop	0
	l.nop	205
.LBB27_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB27_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB27_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB27_7
	l.nop	0
	l.nop	205
.LBB27_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB27_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB27_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB27_8
	l.nop	0
	l.nop	205
.LBB27_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB27_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB27_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB27_9
	l.nop	0
	l.nop	205
.LBB27_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB27_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB27_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB27_10
	l.nop	0
	l.nop	205
.LBB27_10:
.LBB27_11:
	l.jr	r30
	l.nop	0
.Lfunc_end27:
	.size	cpu_disable_timer, .Lfunc_end27-cpu_disable_timer

	.hidden	cpu_timer_tick
	.globl	cpu_timer_tick
	.p2align	2
	.type	cpu_timer_tick,@function
cpu_timer_tick:                         # @cpu_timer_tick
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 380
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, hi(timer_ticks)
	l.ori	r3, r3, lo(timer_ticks)
	l.addi	r20, r20, 760           # CFC
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lwz	r4, 0(r3)
	l.movhi	r13, hi(timer_ticks)
	l.sw	5092(r21), r22
	l.addi	r4, r4, 1
	l.ori	r13, r13, lo(timer_ticks)
	l.addi	r22, r21, 0             # CFC
	l.sw	0(r3), r4
	l.lwz	r14, 2548(r13)
	l.addi	r21, r21, -4            # CFC
	l.addi	r28, r28, 2280
	l.movhi	r3, 24576
	l.addi	r14, r14, 1
	l.movhi	r23, hi(timer_ticks)
	l.ori	r3, r3, 1000
	l.sw	2548(r13), r14
	l.ori	r23, r23, lo(timer_ticks)
	l.addi	r4, r0, 20480
	l.movhi	r13, 24576
	l.lwz	r24, 5096(r23)
	l.ori	r13, r13, 1000
	l.addi	r14, r0, 20480
	l.addi	r18, r18, 1900
	l.addi	r24, r24, 1
	l.sw	5096(r23), r24
	l.movhi	r23, 24576
	l.ori	r23, r23, 1000
	l.addi	r24, r0, 20480
	#APP
	l.mtspr		r4,r3,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 1520          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB28_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB28_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB28_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB28_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB28_2
	l.nop	0
	l.nop	205
.LBB28_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB28_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB28_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB28_3
	l.nop	0
	l.nop	205
.LBB28_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB28_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB28_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB28_4
	l.nop	0
	l.nop	205
.LBB28_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB28_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB28_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB28_5
	l.nop	0
	l.nop	205
.LBB28_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB28_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB28_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB28_6
	l.nop	0
	l.nop	205
.LBB28_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB28_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB28_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB28_7
	l.nop	0
	l.nop	205
.LBB28_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB28_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB28_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB28_8
	l.nop	0
	l.nop	205
.LBB28_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB28_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB28_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB28_9
	l.nop	0
	l.nop	205
.LBB28_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB28_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB28_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB28_10
	l.nop	0
	l.nop	205
.LBB28_10:
.LBB28_11:
	l.jr	r30
	l.nop	0
.Lfunc_end28:
	.size	cpu_timer_tick, .Lfunc_end28-cpu_timer_tick

	.hidden	cpu_reset_timer_ticks
	.globl	cpu_reset_timer_ticks
	.p2align	2
	.type	cpu_reset_timer_ticks,@function
cpu_reset_timer_ticks:                  # @cpu_reset_timer_ticks
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 381
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r20, r20, 762           # CFC
	l.addi	r1, r1, -4
	l.movhi	r3, hi(timer_ticks)
	l.ori	r3, r3, lo(timer_ticks)
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.movhi	r4, 0
	l.movhi	r13, hi(timer_ticks)
	l.addi	r28, r28, 2286
	l.sw	5092(r21), r22
	l.sw	0(r3), r4
	l.ori	r13, r13, lo(timer_ticks)
	l.addi	r22, r21, 0             # CFC
	l.addi	r1, r2, 0
	l.movhi	r14, 0
	l.addi	r21, r21, -4            # CFC
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 1905
	l.sw	2548(r13), r14
	l.movhi	r23, hi(timer_ticks)
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.ori	r23, r23, lo(timer_ticks)
	l.movhi	r24, 0
	l.sw	5096(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 1524          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB29_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB29_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB29_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB29_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB29_2
	l.nop	0
	l.nop	205
.LBB29_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB29_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB29_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB29_3
	l.nop	0
	l.nop	205
.LBB29_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB29_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB29_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB29_4
	l.nop	0
	l.nop	205
.LBB29_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB29_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB29_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB29_5
	l.nop	0
	l.nop	205
.LBB29_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB29_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB29_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB29_6
	l.nop	0
	l.nop	205
.LBB29_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB29_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB29_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB29_7
	l.nop	0
	l.nop	205
.LBB29_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB29_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB29_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB29_8
	l.nop	0
	l.nop	205
.LBB29_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB29_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB29_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB29_9
	l.nop	0
	l.nop	205
.LBB29_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB29_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB29_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB29_10
	l.nop	0
	l.nop	205
.LBB29_10:
.LBB29_11:
	l.jr	r30
	l.nop	0
.Lfunc_end29:
	.size	cpu_reset_timer_ticks, .Lfunc_end29-cpu_reset_timer_ticks

	.hidden	cpu_get_timer_ticks
	.globl	cpu_get_timer_ticks
	.p2align	2
	.type	cpu_get_timer_ticks,@function
cpu_get_timer_ticks:                    # @cpu_get_timer_ticks
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 382
	l.sw	-4(r1), r2
	l.addi	r20, r20, 764           # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, hi(timer_ticks)
	l.ori	r3, r3, lo(timer_ticks)
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lwz	r11, 0(r3)
	l.addi	r28, r28, 2292
	l.movhi	r13, hi(timer_ticks)
	l.sw	5092(r21), r22
	l.addi	r1, r2, 0
	l.ori	r13, r13, lo(timer_ticks)
	l.addi	r22, r21, 0             # CFC
	l.lwz	r2, -4(r1)
	l.lwz	r8, 2548(r13)
	l.addi	r18, r18, 1910
	l.addi	r21, r21, -4            # CFC
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.movhi	r23, hi(timer_ticks)
	l.ori	r23, r23, lo(timer_ticks)
	l.lwz	r31, 5096(r23)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 1528          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB30_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB30_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB30_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB30_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB30_2
	l.nop	0
	l.nop	205
.LBB30_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB30_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB30_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB30_3
	l.nop	0
	l.nop	205
.LBB30_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB30_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB30_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB30_4
	l.nop	0
	l.nop	205
.LBB30_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB30_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB30_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB30_5
	l.nop	0
	l.nop	205
.LBB30_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB30_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB30_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB30_6
	l.nop	0
	l.nop	205
.LBB30_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB30_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB30_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB30_7
	l.nop	0
	l.nop	205
.LBB30_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB30_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB30_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB30_8
	l.nop	0
	l.nop	205
.LBB30_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB30_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB30_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB30_9
	l.nop	0
	l.nop	205
.LBB30_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB30_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB30_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB30_10
	l.nop	0
	l.nop	205
.LBB30_10:
.LBB30_11:
	l.jr	r30
	l.nop	0
.Lfunc_end30:
	.size	cpu_get_timer_ticks, .Lfunc_end30-cpu_get_timer_ticks

	.hidden	cpu_sleep_10ms
	.globl	cpu_sleep_10ms
	.p2align	2
	.type	cpu_sleep_10ms,@function
cpu_sleep_10ms:                         # @cpu_sleep_10ms
# BB#0:                                 # %while.cond.preheader
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 383
	l.addi	r20, r20, 766           # CFC
	l.sw	-4(r1), r2
	l.addi	r28, r28, 2298
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r18, r18, 1915
	l.addi	r10, r10, -4
	l.sw	5092(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.addi	r20, r20, 1532          # CFC
.LBB31_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	l.j	.LBB31_1
	l.nop	0                       # in delay slot
.LBB31_2:                               # %while.cond
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB31_3
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB31_3
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB31_3
	l.nop	0
	l.nop	205
.LBB31_3:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB31_4
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB31_4
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB31_4
	l.nop	0
	l.nop	205
.LBB31_4:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB31_5
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB31_5
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB31_5
	l.nop	0
	l.nop	205
.LBB31_5:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB31_6
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB31_6
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB31_6
	l.nop	0
	l.nop	205
.LBB31_6:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB31_7
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB31_7
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB31_7
	l.nop	0
	l.nop	205
.LBB31_7:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB31_8
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB31_8
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB31_8
	l.nop	0
	l.nop	205
.LBB31_8:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB31_9
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB31_9
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB31_9
	l.nop	0
	l.nop	205
.LBB31_9:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB31_10
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB31_10
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB31_10
	l.nop	0
	l.nop	205
.LBB31_10:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB31_11
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB31_11
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB31_11
	l.nop	0
	l.nop	205
.LBB31_11:
.LBB31_12:
	l.jr	r30
	l.nop	0
.Lfunc_end31:
	.size	cpu_sleep_10ms, .Lfunc_end31-cpu_sleep_10ms

	.hidden	print_back_to_string
	.globl	print_back_to_string
	.p2align	2
	.type	print_back_to_string,@function
print_back_to_string:                   # @print_back_to_string
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 384
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -20
	l.ori	r11, r3, 0
	l.sw	2544(r10), r19
	l.sw	2540(r10), r12
	l.addi	r12, r10, 0
	l.addi	r20, r20, 768           # CFC
	l.lwz	r5, 0(r5)
	l.addi	r10, r10, -20
	l.sw	5092(r21), r29
	l.sw	-20(r2), r6
	l.ori	r8, r13, 0
	l.sw	5088(r21), r22
	l.lwz	r6, 0(r6)
	l.lwz	r15, 2548(r15)
	l.addi	r22, r21, 0             # CFC
	l.lwz	r3, 0(r7)
	l.sw	2528(r12), r16
	l.addi	r21, r21, -20           # CFC
	l.add	r3, r3, r6
	l.lwz	r16, 2548(r16)
	l.ori	r31, r23, 0
	l.sub	r5, r5, r6
	l.lwz	r13, 2548(r17)
	l.addi	r28, r28, 2304
	l.lwz	r25, 5096(r25)
	l.addi	r6, r5, -1
	l.add	r13, r13, r16
	l.sw	5076(r22), r26
	l.sfgtu	r6, r4
	l.sub	r15, r15, r16
	l.lwz	r26, 5096(r26)
	l.sw	-12(r2), r4
	l.addi	r16, r15, -1
	l.lwz	r23, 5096(r27)
	l.ori	r5, r4, 0
	l.sw	2536(r12), r14
	l.ori	r15, r14, 0
	l.add	r23, r23, r26
	l.sub	r25, r25, r26
	l.addi	r26, r25, -1
	l.sw	5084(r22), r24
	l.ori	r25, r24, 0
	l.bf	.LBB32_6
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1920
	l.sfgtu	r16, r14
	l.addi	r20, r20, 1536          # CFC
	l.bf	.LBB32_7
	l.nop	0
.LBB32_1:                               # %entry
	l.addi	r18, r18, 385
	l.addi	r20, r20, 770           # CFC
	l.ori	r5, r6, 0
	l.addi	r28, r28, 2310
	l.ori	r15, r16, 0
	l.addi	r18, r18, 1925
	l.ori	r25, r26, 0
	l.addi	r20, r20, 1540          # CFC
.LBB32_2:                               # %entry
	l.addi	r18, r18, 386
	l.sw	-16(r2), r5
	l.ori	r4, r11, 0
	l.sw	2532(r12), r15
	l.ori	r14, r8, 0
	l.sw	5080(r22), r25
	l.addi	r20, r20, 772           # CFC
	l.ori	r24, r31, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r5, -16(r2)
	l.movhi	r11, 0
	l.lwz	r3, -12(r2)
	l.sfges	r5, r3
	l.addi	r28, r28, 2316
	l.lwz	r15, 2532(r12)
	l.movhi	r8, 0
	l.lwz	r13, 2536(r12)
	l.lwz	r25, 5080(r22)
	l.movhi	r31, 0
	l.lwz	r23, 5084(r22)
	l.bf	.LBB32_8
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1930
	l.sfges	r15, r13
	l.addi	r20, r20, 1544          # CFC
	l.bf	.LBB32_9
	l.nop	0
.LBB32_3:                               # %cleanup
	l.addi	r18, r18, 387
	l.lwz	r4, -20(r2)
	l.lwz	r3, 0(r4)
	l.add	r3, r3, r5
	l.addi	r20, r20, 774           # CFC
	l.sw	0(r4), r3
	l.addi	r11, r0, 1
	l.lwz	r14, 2528(r12)
	l.lwz	r13, 2548(r14)
	l.addi	r28, r28, 2322
	l.add	r13, r13, r15
	l.sw	2548(r14), r13
	l.addi	r8, r0, 1
	l.lwz	r24, 5076(r22)
	l.addi	r18, r18, 1935
	l.lwz	r23, 5096(r24)
	l.add	r23, r23, r25
	l.sw	5096(r24), r23
	l.addi	r31, r0, 1
	l.addi	r20, r20, 1548          # CFC
.LBB32_4:
	l.addi	r18, r18, 388
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 776           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 2328
	l.lwz	r12, 2540(r10)
	l.lwz	r19, 2544(r10)
	l.addi	r18, r18, 1940
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5088(r21)
	l.lwz	r29, 5092(r21)
	l.addi	r20, r20, 1552          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB32_5
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB32_5:
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB32_10
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB32_10
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB32_10
	l.nop	0
	l.nop	205
.LBB32_10:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB32_11
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB32_11
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB32_11
	l.nop	0
	l.nop	205
.LBB32_11:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB32_12
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB32_12
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB32_12
	l.nop	0
	l.nop	205
.LBB32_12:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB32_13
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB32_13
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB32_13
	l.nop	0
	l.nop	205
.LBB32_13:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB32_14
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB32_14
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB32_14
	l.nop	0
	l.nop	205
.LBB32_14:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB32_15
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB32_15
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB32_15
	l.nop	0
	l.nop	205
.LBB32_15:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB32_16
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB32_16
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB32_16
	l.nop	0
	l.nop	205
.LBB32_16:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB32_17
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB32_17
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB32_17
	l.nop	0
	l.nop	205
.LBB32_17:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB32_18
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB32_18
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB32_18
	l.nop	0
	l.nop	205
.LBB32_18:
.LBB32_19:
	l.jr	r30
	l.nop	0
.LBB32_6:
	l.addi	r18, r18, 1920
	l.sfgtu	r16, r14
	l.addi	r20, r20, 1536          # CFC
	l.bf	.LBB32_2
	l.nop	0
.LBB32_7:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB32_5
	l.nop	0
	l.sfgtu	r6, r4
	l.bf	.LBB32_2
	l.nop	0
	l.j	.LBB32_1
	l.nop	0
.LBB32_8:
	l.addi	r18, r18, 1930
	l.sfges	r15, r13
	l.addi	r20, r20, 1544          # CFC
	l.bf	.LBB32_4
	l.nop	0
.LBB32_9:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB32_5
	l.nop	0
	l.sfges	r5, r3
	l.bf	.LBB32_4
	l.nop	0
	l.j	.LBB32_3
	l.nop	0
.Lfunc_end32:
	.size	print_back_to_string, .Lfunc_end32-print_back_to_string

	.hidden	vfnprintf
	.globl	vfnprintf
	.p2align	2
	.type	vfnprintf,@function
vfnprintf:                              # @vfnprintf
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 389
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -164
	l.sw	-92(r2), r4
	l.sw	2544(r10), r19
	l.sw	2540(r10), r12
	l.addi	r12, r10, 0
	l.sw	-104(r2), r3
	l.addi	r10, r10, -164
	l.sw	5092(r21), r29
	l.sw	-12(r2), r6
	l.addi	r20, r20, 778           # CFC
	l.sw	2456(r12), r14
	l.sw	5088(r21), r22
	l.movhi	r7, 0
	l.sw	2444(r12), r13
	l.addi	r22, r21, 0             # CFC
	l.addi	r3, r2, -53
	l.sw	2536(r12), r16
	l.addi	r21, r21, -164          # CFC
	l.addi	r4, r3, 39
	l.movhi	r17, 0
	l.sw	5004(r22), r24
	l.sw	-152(r2), r4
	l.addi	r13, r12, -53
	l.sw	4992(r22), r23
	l.addi	r3, r3, 40
	l.addi	r14, r13, 39
	l.sw	5084(r22), r26
	l.sw	-144(r2), r3
	l.sw	2396(r12), r14
	l.movhi	r27, 0
	l.movhi	r11, hi(.L.str.1)
	l.addi	r28, r28, 2334
	l.addi	r13, r13, 40
	l.addi	r23, r22, -53
	l.movhi	r3, hi(vfnprintf.blanks)
	l.sw	2404(r12), r13
	l.addi	r24, r23, 39
	l.ori	r3, r3, lo(vfnprintf.blanks)
	l.movhi	r8, hi(.L.str.1)
	l.sw	4944(r22), r24
	l.sw	-108(r2), r3
	l.movhi	r13, hi(vfnprintf.blanks)
	l.addi	r23, r23, 40
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r13, r13, lo(vfnprintf.blanks)
	l.sw	4952(r22), r23
	l.ori	r3, r3, lo(vfnprintf.zeroes)
	l.sw	2440(r12), r13
	l.movhi	r31, hi(.L.str.1)
	l.sw	-96(r2), r3
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.movhi	r23, hi(vfnprintf.blanks)
	l.movhi	r3, hi(.LJTI33_0)
	l.addi	r18, r18, 1945
	l.ori	r13, r13, lo(vfnprintf.zeroes)
	l.ori	r23, r23, lo(vfnprintf.blanks)
	l.ori	r3, r3, lo(.LJTI33_0)
	l.sw	2452(r12), r13
	l.sw	4988(r22), r23
	l.sw	-72(r2), r3
	l.movhi	r13, hi(.LJTI33_0)
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.movhi	r3, 0
	l.ori	r13, r13, lo(.LJTI33_0)
	l.ori	r23, r23, lo(vfnprintf.zeroes)
	l.sw	-128(r2), r3
	l.sw	2476(r12), r13
	l.sw	5000(r22), r23
	l.movhi	r13, 0
	l.sw	2420(r12), r13
	l.movhi	r23, hi(.LJTI33_0)
	l.ori	r23, r23, lo(.LJTI33_0)
	l.sw	5024(r22), r23
	l.movhi	r23, 0
	l.sw	4968(r22), r23
	l.addi	r20, r20, 1556          # CFC
	l.j	.LBB33_1
	l.nop	0                       # in delay slot
.LBB33_229:                             # %do.end551
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r18, r18, 390
	l.lwz	r7, -76(r2)
	l.lwz	r3, -88(r2)
	l.add	r7, r7, r3
	l.addi	r20, r20, 780           # CFC
	l.movhi	r11, hi(.L.str.1)
	l.lwz	r5, -60(r2)
	l.lwz	r17, 2472(r12)
	l.lwz	r13, 2460(r12)
	l.addi	r28, r28, 2340
	l.add	r17, r17, r13
	l.movhi	r8, hi(.L.str.1)
	l.lwz	r15, 2488(r12)
	l.lwz	r27, 5020(r22)
	l.addi	r18, r18, 1950
	l.lwz	r23, 5008(r22)
	l.add	r27, r27, r23
	l.movhi	r31, hi(.L.str.1)
	l.lwz	r25, 5036(r22)
	l.addi	r20, r20, 1560          # CFC
.LBB33_1:                               # %for.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_2 Depth 2
                                        #       Child Loop BB33_3 Depth 3
                                        #         Child Loop BB33_160 Depth 4
                                        #         Child Loop BB33_188 Depth 4
                                        #         Child Loop BB33_202 Depth 4
                                        #         Child Loop BB33_221 Depth 4
                                        #         Child Loop BB33_116 Depth 4
                                        #         Child Loop BB33_132 Depth 4
                                        #         Child Loop BB33_118 Depth 4
                                        #         Child Loop BB33_42 Depth 4
                                        #         Child Loop BB33_33 Depth 4
	l.addi	r18, r18, 391
	l.addi	r20, r20, 782           # CFC
	l.ori	r6, r7, 0
	l.addi	r28, r28, 2346
	l.ori	r16, r17, 0
	l.addi	r18, r18, 1955
	l.ori	r26, r27, 0
	l.addi	r20, r20, 1564          # CFC
	l.j	.LBB33_2
	l.nop	0                       # in delay slot
.LBB33_62:                              # %sw.bb125
                                        #   in Loop: Header=BB33_2 Depth=2
	l.addi	r18, r18, 392
	l.lwz	r4, -88(r2)
	l.andi	r3, r4, 32
	l.addi	r20, r20, 784           # CFC
	l.sfeqi	r3, 0
	l.lwz	r14, 2460(r12)
	l.addi	r28, r28, 2352
	l.andi	r13, r14, 32
	l.lwz	r24, 5008(r22)
	l.andi	r23, r24, 32
	l.bf	.LBB33_237
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1960
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1568          # CFC
	l.bf	.LBB33_238
	l.nop	0
.LBB33_63:                              # %if.then128
                                        #   in Loop: Header=BB33_2 Depth=2
	l.addi	r18, r18, 393
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.addi	r20, r20, 786           # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 5084(r22)
	l.lwz	r3, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r6, -76(r2)
	l.sw	2536(r12), r14
	l.addi	r24, r0, -4
	l.sw	4(r3), r6
	l.addi	r28, r28, 2358
	l.lwz	r13, 2548(r13)
	l.and	r23, r23, r24
	l.srai	r4, r6, 31
	l.lwz	r16, 2472(r12)
	l.addi	r24, r23, 4
	l.sw	0(r3), r4
	l.sw	2552(r13), r16
	l.sw	5084(r22), r24
	l.lwz	r5, -60(r2)
	l.addi	r18, r18, 1965
	l.srai	r14, r16, 31
	l.lwz	r23, 5096(r23)
	l.sw	2548(r13), r14
	l.lwz	r15, 2488(r12)
	l.lwz	r26, 5020(r22)
	l.sw	5100(r23), r26
	l.srai	r24, r26, 31
	l.sw	5096(r23), r24
	l.lwz	r25, 5036(r22)
	l.addi	r20, r20, 1572          # CFC
.LBB33_2:                               # %for.cond
                                        #   Parent Loop BB33_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB33_3 Depth 3
                                        #         Child Loop BB33_160 Depth 4
                                        #         Child Loop BB33_188 Depth 4
                                        #         Child Loop BB33_202 Depth 4
                                        #         Child Loop BB33_221 Depth 4
                                        #         Child Loop BB33_116 Depth 4
                                        #         Child Loop BB33_132 Depth 4
                                        #         Child Loop BB33_118 Depth 4
                                        #         Child Loop BB33_42 Depth 4
                                        #         Child Loop BB33_33 Depth 4
	l.addi	r18, r18, 394
	l.sw	-60(r2), r5
	l.addi	r20, r20, 788           # CFC
	l.ori	r4, r5, 0
	l.sw	2488(r12), r15
	l.addi	r28, r28, 2364
	l.ori	r14, r15, 0
	l.addi	r18, r18, 1970
	l.sw	5036(r22), r25
	l.ori	r24, r25, 0
	l.addi	r20, r20, 1576          # CFC
.LBB33_3:                               # %while.cond
                                        #   Parent Loop BB33_1 Depth=1
                                        #     Parent Loop BB33_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB33_160 Depth 4
                                        #         Child Loop BB33_188 Depth 4
                                        #         Child Loop BB33_202 Depth 4
                                        #         Child Loop BB33_221 Depth 4
                                        #         Child Loop BB33_116 Depth 4
                                        #         Child Loop BB33_132 Depth 4
                                        #         Child Loop BB33_118 Depth 4
                                        #         Child Loop BB33_42 Depth 4
                                        #         Child Loop BB33_33 Depth 4
	l.addi	r18, r18, 395
	l.ori	r7, r4, 0
	l.movhi	r5, 0
	l.lbz	r3, 0(r7)
	l.addi	r20, r20, 790           # CFC
	l.sfeqi	r3, 0
	l.ori	r17, r14, 0
	l.movhi	r15, 0
	l.addi	r28, r28, 2370
	l.lbz	r13, 2548(r17)
	l.ori	r27, r24, 0
	l.movhi	r25, 0
	l.lbz	r23, 5096(r27)
	l.bf	.LBB33_239
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1975
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1580          # CFC
	l.bf	.LBB33_240
	l.nop	0
.LBB33_4:                               # %while.body
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 396
	l.addi	r5, r0, 1
	l.addi	r4, r7, 1
	l.addi	r20, r20, 792           # CFC
	l.sfnei	r3, 37
	l.addi	r15, r0, 1
	l.addi	r28, r28, 2376
	l.addi	r14, r17, 1
	l.addi	r25, r0, 1
	l.addi	r24, r27, 1
	l.bf	.LBB33_241
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1980
	l.sfnei	r13, 37
	l.addi	r20, r20, 1584          # CFC
	l.bf	.LBB33_242
	l.nop	0
.LBB33_5:                               # %while.end
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 397
	l.sw	-64(r2), r5
	l.lwz	r4, -60(r2)
	l.sub	r3, r7, r4
	l.addi	r20, r20, 794           # CFC
	l.sfeqi	r3, 0
	l.sw	2484(r12), r15
	l.lwz	r14, 2488(r12)
	l.addi	r28, r28, 2382
	l.sub	r13, r17, r14
	l.sw	5032(r22), r25
	l.lwz	r24, 5036(r22)
	l.sub	r23, r27, r24
	l.bf	.LBB33_243
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1985
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1588          # CFC
	l.bf	.LBB33_244
	l.nop	0
.LBB33_6:                               # %if.then6
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 398
	l.ori	r11, r4, 0
	l.sw	-84(r2), r7
	l.ori	r7, r3, 0
	l.lwz	r3, -104(r2)
	l.add	r3, r3, r6
	l.ori	r8, r14, 0
	l.sw	2464(r12), r17
	l.ori	r17, r13, 0
	l.sw	-76(r2), r6
	l.lwz	r13, 2444(r12)
	l.ori	r31, r24, 0
	l.addi	r20, r20, 796           # CFC
	l.lwz	r4, -92(r2)
	l.add	r13, r13, r16
	l.sw	5012(r22), r27
	l.sub	r4, r4, r6
	l.sw	2472(r12), r16
	l.ori	r27, r23, 0
	l.addi	r4, r4, -1
	l.lwz	r14, 2456(r12)
	l.lwz	r23, 4992(r22)
	l.sfgtu	r4, r7
	l.sub	r14, r14, r16
	l.addi	r28, r28, 2388
	l.add	r23, r23, r26
	l.sw	-68(r2), r7
	l.addi	r14, r14, -1
	l.sw	5020(r22), r26
	l.ori	r5, r7, 0
	l.sw	2480(r12), r17
	l.ori	r15, r17, 0
	l.lwz	r24, 5004(r22)
	l.sub	r24, r24, r26
	l.addi	r24, r24, -1
	l.sw	5028(r22), r27
	l.ori	r25, r27, 0
	l.bf	.LBB33_245
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1990
	l.sfgtu	r14, r17
	l.addi	r20, r20, 1592          # CFC
	l.bf	.LBB33_246
	l.nop	0
.LBB33_7:                               # %if.then6
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 399
	l.addi	r20, r20, 798           # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 2394
	l.ori	r15, r14, 0
	l.addi	r18, r18, 1995
	l.ori	r25, r24, 0
	l.addi	r20, r20, 1596          # CFC
.LBB33_8:                               # %if.then6
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 400
	l.sw	-80(r2), r5
	l.ori	r4, r11, 0
	l.sw	2468(r12), r15
	l.ori	r14, r8, 0
	l.addi	r20, r20, 800           # CFC
	l.sw	5016(r22), r25
	l.ori	r24, r31, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r4, -80(r2)
	l.lwz	r3, -68(r2)
	l.addi	r28, r28, 2400
	l.sfges	r4, r3
	l.lwz	r14, 2468(r12)
	l.lwz	r13, 2480(r12)
	l.lwz	r24, 5016(r22)
	l.lwz	r23, 5028(r22)
	l.bf	.LBB33_247
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2000
	l.sfges	r14, r13
	l.addi	r20, r20, 1600          # CFC
	l.bf	.LBB33_248
	l.nop	0
.LBB33_9:                               # %print_back_to_string.exit
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 401
	l.addi	r20, r20, 802           # CFC
	l.lwz	r3, -76(r2)
	l.addi	r28, r28, 2406
	l.lwz	r13, 2472(r12)
	l.addi	r18, r18, 2005
	l.lwz	r23, 5020(r22)
	l.addi	r20, r20, 1604          # CFC
	l.j	.LBB33_10
	l.nop	0                       # in delay slot
.LBB33_12:                              # %if.end8
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 402
	l.lwz	r6, -76(r2)
	l.add	r6, r3, r6
	l.movhi	r11, hi(.L.str.1)
	l.addi	r20, r20, 804           # CFC
	l.lwz	r7, -84(r2)
	l.lwz	r16, 2472(r12)
	l.add	r16, r13, r16
	l.addi	r28, r28, 2412
	l.movhi	r8, hi(.L.str.1)
	l.lwz	r17, 2464(r12)
	l.lwz	r26, 5020(r22)
	l.addi	r18, r18, 2010
	l.add	r26, r23, r26
	l.movhi	r31, hi(.L.str.1)
	l.lwz	r27, 5012(r22)
	l.addi	r20, r20, 1608          # CFC
.LBB33_13:                              # %if.end9
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 403
	l.addi	r3, r0, 1
	l.lwz	r4, -92(r2)
	l.sw	-76(r2), r6
	l.addi	r20, r20, 806           # CFC
	l.sflts	r6, r4
	l.addi	r13, r0, 1
	l.lwz	r14, 2456(r12)
	l.addi	r28, r28, 2418
	l.sw	2472(r12), r16
	l.addi	r23, r0, 1
	l.lwz	r24, 5004(r22)
	l.sw	5020(r22), r26
	l.bf	.LBB33_249
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2015
	l.sflts	r16, r14
	l.addi	r20, r20, 1612          # CFC
	l.bf	.LBB33_250
	l.nop	0
.LBB33_14:                              # %if.end9
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 404
	l.addi	r20, r20, 808           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 2424
	l.movhi	r13, 0
	l.addi	r18, r18, 2020
	l.movhi	r23, 0
	l.addi	r20, r20, 1616          # CFC
.LBB33_15:                              # %if.end9
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 405
	l.lwz	r4, -64(r2)
	l.and	r3, r4, r3
	l.addi	r20, r20, 810           # CFC
	l.sfnei	r3, 1
	l.lwz	r14, 2484(r12)
	l.addi	r28, r28, 2430
	l.and	r13, r14, r13
	l.lwz	r24, 5032(r22)
	l.and	r23, r24, r23
	l.bf	.LBB33_251
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2025
	l.sfnei	r13, 1
	l.addi	r20, r20, 1620          # CFC
	l.bf	.LBB33_252
	l.nop	0
.LBB33_16:                              # %if.end15
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 406
	l.addi	r6, r0, -1
	l.movhi	r4, 0
	l.movhi	r3, 0
	l.sw	-120(r2), r3
	l.sb	-13(r2), r4
	l.addi	r16, r0, -1
	l.addi	r20, r20, 812           # CFC
	l.movhi	r14, 0
	l.movhi	r13, 0
	l.addi	r5, r7, 1
	l.sw	2428(r12), r13
	l.addi	r26, r0, -1
	l.movhi	r4, 0
	l.sb	2535(r12), r14
	l.addi	r28, r28, 2436
	l.movhi	r24, 0
	l.movhi	r3, 0
	l.addi	r15, r17, 1
	l.movhi	r23, 0
	l.sw	-88(r2), r3
	l.movhi	r14, 0
	l.sw	4976(r22), r23
	l.addi	r18, r18, 2030
	l.movhi	r13, 0
	l.sw	2460(r12), r13
	l.sb	5083(r22), r24
	l.addi	r25, r27, 1
	l.movhi	r24, 0
	l.movhi	r23, 0
	l.sw	5008(r22), r23
	l.addi	r20, r20, 1624          # CFC
	l.j	.LBB33_17
	l.nop	0                       # in delay slot
.LBB33_25:                              # %rflag
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 407
	l.lwz	r4, -68(r2)
	l.addi	r20, r20, 814           # CFC
	l.lwz	r6, -84(r2)
	l.lwz	r14, 2480(r12)
	l.addi	r28, r28, 2442
	l.lwz	r16, 2464(r12)
	l.addi	r18, r18, 2035
	l.lwz	r24, 5028(r22)
	l.lwz	r26, 5012(r22)
	l.addi	r20, r20, 1628          # CFC
.LBB33_17:                              # %rflag
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 408
	l.sw	-84(r2), r6
	l.lbs	r7, 0(r5)
	l.addi	r20, r20, 816           # CFC
	l.addi	r5, r5, 1
	l.sw	2464(r12), r16
	l.addi	r28, r28, 2448
	l.lbs	r17, 2548(r15)
	l.addi	r15, r15, 1
	l.addi	r18, r18, 2040
	l.sw	5012(r22), r26
	l.lbs	r27, 5096(r25)
	l.addi	r25, r25, 1
	l.addi	r20, r20, 1632          # CFC
	l.j	.LBB33_18
	l.nop	0                       # in delay slot
.LBB33_39:                              # %while.end50
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 409
	l.sw	-84(r2), r6
	l.ori	r5, r3, 0
	l.addi	r20, r20, 818           # CFC
	l.lwz	r4, -68(r2)
	l.sw	2464(r12), r16
	l.addi	r28, r28, 2454
	l.ori	r15, r13, 0
	l.lwz	r14, 2480(r12)
	l.addi	r18, r18, 2045
	l.sw	5012(r22), r26
	l.ori	r25, r23, 0
	l.lwz	r24, 5028(r22)
	l.addi	r20, r20, 1636          # CFC
.LBB33_18:                              # %reswitch
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 410
	l.sw	-68(r2), r4
	l.sw	-60(r2), r5
	l.sfgtui	r7, 122
	l.addi	r20, r20, 820           # CFC
	l.sw	-64(r2), r7
	l.sw	2480(r12), r14
	l.sw	2488(r12), r15
	l.addi	r28, r28, 2460
	l.sw	2484(r12), r17
	l.sw	5028(r22), r24
	l.sw	5036(r22), r25
	l.sw	5032(r22), r27
	l.bf	.LBB33_253
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2050
	l.sfgtui	r17, 122
	l.addi	r20, r20, 1640          # CFC
	l.bf	.LBB33_254
	l.nop	0
.LBB33_19:                              # %reswitch
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 411
	l.addi	r5, r0, 117
	l.addi	r6, r0, 111
	l.ori	r4, r11, lo(.L.str.1)
	l.slli	r3, r7, 2
	l.lwz	r7, -72(r2)
	l.addi	r15, r0, 117
	l.addi	r20, r20, 822           # CFC
	l.addi	r16, r0, 111
	l.ori	r14, r8, lo(.L.str.1)
	l.add	r3, r3, r7
	l.slli	r13, r17, 2
	l.addi	r25, r0, 117
	l.lwz	r7, -64(r2)
	l.addi	r28, r28, 2466
	l.lwz	r17, 2476(r12)
	l.addi	r26, r0, 111
	l.lwz	r3, 0(r3)
	l.add	r13, r13, r17
	l.ori	r24, r31, lo(.L.str.1)
	l.lwz	r17, 2484(r12)
	l.addi	r18, r18, 2055
	l.lwz	r13, 2548(r13)
	l.slli	r23, r27, 2
	l.lwz	r27, 5024(r22)
	l.add	r23, r23, r27
	l.lwz	r27, 5032(r22)
	l.lwz	r23, 5096(r23)
	l.addi	r20, r20, 1644          # CFC
	l.sfne	r3, r13
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB33_236
	l.nop	0
	l.jr	r3
	l.nop	0                       # in delay slot
.LBB33_41:                              # %do.body.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 412
	l.movhi	r4, 0
	l.addi	r20, r20, 824           # CFC
	l.lwz	r3, -60(r2)
	l.movhi	r14, 0
	l.addi	r28, r28, 2472
	l.lwz	r13, 2488(r12)
	l.addi	r18, r18, 2060
	l.movhi	r24, 0
	l.lwz	r23, 5036(r22)
	l.addi	r20, r20, 1648          # CFC
.LBB33_42:                              # %do.body
                                        #   Parent Loop BB33_1 Depth=1
                                        #     Parent Loop BB33_2 Depth=2
                                        #       Parent Loop BB33_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 413
	l.muli	r4, r4, 10
	l.add	r4, r7, r4
	l.addi	r5, r3, 1
	l.addi	r4, r4, -48
	l.lbs	r7, 0(r3)
	l.muli	r14, r14, 10
	l.addi	r20, r20, 826           # CFC
	l.add	r14, r17, r14
	l.addi	r15, r13, 1
	l.addi	r3, r7, -48
	l.addi	r14, r14, -48
	l.muli	r24, r24, 10
	l.sfltui	r3, 10
	l.addi	r28, r28, 2478
	l.lbs	r17, 2548(r13)
	l.addi	r13, r17, -48
	l.add	r24, r27, r24
	l.addi	r25, r23, 1
	l.addi	r24, r24, -48
	l.lbs	r27, 5096(r23)
	l.addi	r23, r27, -48
	l.bf	.LBB33_255
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2065
	l.sfltui	r13, 10
	l.addi	r20, r20, 1652          # CFC
	l.bf	.LBB33_256
	l.nop	0
.LBB33_258:
	l.addi	r18, r18, 414
	l.addi	r20, r20, 828           # CFC
	l.ori	r3, r5, 0
	l.addi	r28, r28, 2484
	l.ori	r13, r15, 0
	l.addi	r18, r18, 2070
	l.ori	r23, r25, 0
	l.addi	r20, r20, 1656          # CFC
.LBB33_234:                             # %do.body
                                        #   in Loop: Header=BB33_3 Depth=3
	l.j	.LBB33_18
	l.nop	0                       # in delay slot
.LBB33_30:                              # %sw.bb31
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 415
	l.lwz	r4, -60(r2)
	l.addi	r3, r4, 1
	l.lbs	r7, 0(r4)
	l.addi	r20, r20, 830           # CFC
	l.sfeqi	r7, 42
	l.lwz	r14, 2488(r12)
	l.addi	r13, r14, 1
	l.addi	r28, r28, 2490
	l.lbs	r17, 2548(r14)
	l.lwz	r24, 5036(r22)
	l.addi	r23, r24, 1
	l.lbs	r27, 5096(r24)
	l.bf	.LBB33_259
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2075
	l.sfeqi	r17, 42
	l.addi	r20, r20, 1660          # CFC
	l.bf	.LBB33_260
	l.nop	0
.LBB33_31:                              # %while.cond41.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 416
	l.movhi	r6, 0
	l.addi	r4, r7, -48
	l.addi	r20, r20, 832           # CFC
	l.sfgtui	r4, 9
	l.movhi	r16, 0
	l.addi	r28, r28, 2496
	l.addi	r14, r17, -48
	l.movhi	r26, 0
	l.addi	r24, r27, -48
	l.bf	.LBB33_261
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2080
	l.sfgtui	r14, 9
	l.addi	r20, r20, 1664          # CFC
	l.bf	.LBB33_262
	l.nop	0
.LBB33_32:                              # %while.body45.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 417
	l.movhi	r6, 0
	l.addi	r20, r20, 834           # CFC
	l.ori	r5, r3, 0
	l.movhi	r16, 0
	l.addi	r28, r28, 2502
	l.ori	r15, r13, 0
	l.addi	r18, r18, 2085
	l.movhi	r26, 0
	l.ori	r25, r23, 0
	l.addi	r20, r20, 1668          # CFC
.LBB33_33:                              # %while.body45
                                        #   Parent Loop BB33_1 Depth=1
                                        #     Parent Loop BB33_2 Depth=2
                                        #       Parent Loop BB33_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 418
	l.muli	r3, r6, 10
	l.add	r6, r3, r4
	l.addi	r3, r5, 1
	l.lbs	r7, 0(r5)
	l.addi	r4, r7, -48
	l.muli	r13, r16, 10
	l.addi	r20, r20, 836           # CFC
	l.add	r16, r13, r14
	l.addi	r13, r15, 1
	l.sfltui	r4, 10
	l.lbs	r17, 2548(r15)
	l.muli	r23, r26, 10
	l.ori	r5, r3, 0
	l.addi	r28, r28, 2508
	l.addi	r14, r17, -48
	l.ori	r15, r13, 0
	l.add	r26, r23, r24
	l.addi	r23, r25, 1
	l.lbs	r27, 5096(r25)
	l.addi	r24, r27, -48
	l.ori	r25, r23, 0
	l.bf	.LBB33_263
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2090
	l.sfltui	r14, 10
	l.addi	r20, r20, 1672          # CFC
	l.bf	.LBB33_264
	l.nop	0
.LBB33_37:                              # %while.end50
                                        #   in Loop: Header=BB33_3 Depth=3
	l.sfgtsi	r6, -1
	l.bf	.LBB33_265
	l.nop	0                       # in delay slot
	l.sfgtsi	r16, -1
	l.bf	.LBB33_266
	l.nop	0
.LBB33_38:                              # %while.end50
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 419
	l.addi	r20, r20, 838           # CFC
	l.addi	r6, r0, -1
	l.addi	r28, r28, 2514
	l.addi	r16, r0, -1
	l.addi	r18, r18, 2095
	l.addi	r26, r0, -1
	l.addi	r20, r20, 1676          # CFC
	l.j	.LBB33_39
	l.nop	0                       # in delay slot
.LBB33_20:                              # %sw.bb
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 420
	l.lwz	r3, -120(r2)
	l.andi	r3, r3, 255
	l.sfnei	r3, 0
	l.lwz	r5, -60(r2)
	l.lwz	r4, -68(r2)
	l.addi	r20, r20, 840           # CFC
	l.lwz	r6, -84(r2)
	l.lwz	r13, 2428(r12)
	l.andi	r13, r13, 255
	l.lwz	r15, 2488(r12)
	l.lwz	r14, 2480(r12)
	l.addi	r28, r28, 2520
	l.lwz	r16, 2464(r12)
	l.lwz	r23, 4976(r22)
	l.andi	r23, r23, 255
	l.lwz	r25, 5036(r22)
	l.lwz	r24, 5028(r22)
	l.lwz	r26, 5012(r22)
	l.bf	.LBB33_267
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2100
	l.sfnei	r13, 0
	l.addi	r20, r20, 1680          # CFC
	l.bf	.LBB33_268
	l.nop	0
.LBB33_21:                              # %if.then20
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 421
	l.addi	r3, r0, 32
	l.sw	-120(r2), r3
	l.addi	r20, r20, 842           # CFC
	l.sb	-13(r2), r3
	l.addi	r13, r0, 32
	l.addi	r28, r28, 2526
	l.sw	2428(r12), r13
	l.sb	2535(r12), r13
	l.addi	r18, r18, 2105
	l.addi	r23, r0, 32
	l.sw	4976(r22), r23
	l.sb	5083(r22), r23
	l.addi	r20, r20, 1684          # CFC
	l.j	.LBB33_17
	l.nop	0                       # in delay slot
.LBB33_22:                              # %sw.bb22
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 422
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 844           # CFC
	l.ori	r3, r3, 1
	l.lwz	r13, 2460(r12)
	l.addi	r28, r28, 2532
	l.ori	r13, r13, 1
	l.addi	r18, r18, 2110
	l.lwz	r23, 5008(r22)
	l.ori	r23, r23, 1
	l.addi	r20, r20, 1688          # CFC
	l.j	.LBB33_23
	l.nop	0                       # in delay slot
.LBB33_26:                              # %sw.bb23
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 423
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.addi	r20, r20, 846           # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 5084(r22)
	l.lwz	r4, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.sfgtsi	r4, -1
	l.sw	2536(r12), r14
	l.addi	r24, r0, -4
	l.lwz	r5, -60(r2)
	l.addi	r28, r28, 2538
	l.lwz	r14, 2548(r13)
	l.and	r23, r23, r24
	l.lwz	r6, -84(r2)
	l.lwz	r15, 2488(r12)
	l.lwz	r16, 2464(r12)
	l.addi	r24, r23, 4
	l.sw	5084(r22), r24
	l.lwz	r24, 5096(r23)
	l.lwz	r25, 5036(r22)
	l.lwz	r26, 5012(r22)
	l.bf	.LBB33_269
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2115
	l.sfgtsi	r14, -1
	l.addi	r20, r20, 1692          # CFC
	l.bf	.LBB33_270
	l.nop	0
.LBB33_27:                              # %if.end27
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 424
	l.movhi	r3, 0
	l.sub	r4, r3, r4
	l.addi	r20, r20, 848           # CFC
	l.sw	-68(r2), r4
	l.movhi	r13, 0
	l.addi	r28, r28, 2544
	l.sub	r14, r13, r14
	l.sw	2480(r12), r14
	l.addi	r18, r18, 2120
	l.movhi	r23, 0
	l.sub	r24, r23, r24
	l.sw	5028(r22), r24
	l.addi	r20, r20, 1696          # CFC
.LBB33_28:                              # %sw.bb28
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 425
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 850           # CFC
	l.ori	r3, r3, 4
	l.lwz	r13, 2460(r12)
	l.addi	r28, r28, 2550
	l.ori	r13, r13, 4
	l.addi	r18, r18, 2125
	l.lwz	r23, 5008(r22)
	l.ori	r23, r23, 4
	l.addi	r20, r20, 1700          # CFC
	l.j	.LBB33_23
	l.nop	0                       # in delay slot
.LBB33_29:                              # %sw.bb30
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 426
	l.addi	r3, r0, 43
	l.sw	-120(r2), r3
	l.addi	r20, r20, 852           # CFC
	l.sb	-13(r2), r3
	l.addi	r13, r0, 43
	l.addi	r28, r28, 2556
	l.sw	2428(r12), r13
	l.sb	2535(r12), r13
	l.addi	r18, r18, 2130
	l.addi	r23, r0, 43
	l.sw	4976(r22), r23
	l.sb	5083(r22), r23
	l.addi	r20, r20, 1704          # CFC
	l.j	.LBB33_24
	l.nop	0                       # in delay slot
.LBB33_40:                              # %sw.bb57
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 427
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 854           # CFC
	l.ori	r3, r3, 128
	l.lwz	r13, 2460(r12)
	l.addi	r28, r28, 2562
	l.ori	r13, r13, 128
	l.addi	r18, r18, 2135
	l.lwz	r23, 5008(r22)
	l.ori	r23, r23, 128
	l.addi	r20, r20, 1708          # CFC
	l.j	.LBB33_23
	l.nop	0                       # in delay slot
.LBB33_43:                              # %sw.bb68
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 428
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 856           # CFC
	l.ori	r3, r3, 64
	l.lwz	r13, 2460(r12)
	l.addi	r28, r28, 2568
	l.ori	r13, r13, 64
	l.addi	r18, r18, 2140
	l.lwz	r23, 5008(r22)
	l.ori	r23, r23, 64
	l.addi	r20, r20, 1712          # CFC
	l.j	.LBB33_23
	l.nop	0                       # in delay slot
.LBB33_44:                              # %sw.bb70
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 429
	l.lwz	r5, -60(r2)
	l.lbz	r3, 0(r5)
	l.addi	r20, r20, 858           # CFC
	l.sfnei	r3, 108
	l.lwz	r15, 2488(r12)
	l.addi	r28, r28, 2574
	l.lbz	r13, 2548(r15)
	l.lwz	r25, 5036(r22)
	l.lbz	r23, 5096(r25)
	l.bf	.LBB33_271
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2145
	l.sfnei	r13, 108
	l.addi	r20, r20, 1716          # CFC
	l.bf	.LBB33_272
	l.nop	0
.LBB33_45:                              # %if.then74
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 430
	l.lwz	r3, -88(r2)
	l.ori	r3, r3, 32
	l.sw	-88(r2), r3
	l.addi	r20, r20, 860           # CFC
	l.addi	r5, r5, 1
	l.lwz	r13, 2460(r12)
	l.ori	r13, r13, 32
	l.addi	r28, r28, 2580
	l.sw	2460(r12), r13
	l.addi	r15, r15, 1
	l.lwz	r23, 5008(r22)
	l.addi	r18, r18, 2150
	l.ori	r23, r23, 32
	l.sw	5008(r22), r23
	l.addi	r25, r25, 1
	l.addi	r20, r20, 1720          # CFC
	l.j	.LBB33_25
	l.nop	0                       # in delay slot
.LBB33_47:                              # %sw.bb79
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 431
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 862           # CFC
	l.ori	r3, r3, 32
	l.lwz	r13, 2460(r12)
	l.addi	r28, r28, 2586
	l.ori	r13, r13, 32
	l.addi	r18, r18, 2155
	l.lwz	r23, 5008(r22)
	l.ori	r23, r23, 32
	l.addi	r20, r20, 1724          # CFC
	l.j	.LBB33_23
	l.nop	0                       # in delay slot
.LBB33_143:                             # %sw.bb374
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 432
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 864           # CFC
	l.ori	r3, r3, 512
	l.lwz	r13, 2460(r12)
	l.addi	r28, r28, 2592
	l.ori	r13, r13, 512
	l.addi	r18, r18, 2160
	l.lwz	r23, 5008(r22)
	l.ori	r23, r23, 512
	l.addi	r20, r20, 1728          # CFC
.LBB33_23:                              # %rflag
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 433
	l.addi	r20, r20, 866           # CFC
	l.sw	-88(r2), r3
	l.addi	r28, r28, 2598
	l.sw	2460(r12), r13
	l.addi	r18, r18, 2165
	l.sw	5008(r22), r23
	l.addi	r20, r20, 1732          # CFC
.LBB33_24:                              # %rflag
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 434
	l.addi	r20, r20, 868           # CFC
	l.lwz	r5, -60(r2)
	l.addi	r28, r28, 2604
	l.lwz	r15, 2488(r12)
	l.addi	r18, r18, 2170
	l.lwz	r25, 5036(r22)
	l.addi	r20, r20, 1736          # CFC
	l.j	.LBB33_25
	l.nop	0                       # in delay slot
.LBB33_46:                              # %if.else
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 435
	l.lwz	r3, -88(r2)
	l.ori	r3, r3, 16
	l.addi	r20, r20, 870           # CFC
	l.sw	-88(r2), r3
	l.lwz	r13, 2460(r12)
	l.addi	r28, r28, 2610
	l.ori	r13, r13, 16
	l.sw	2460(r12), r13
	l.addi	r18, r18, 2175
	l.lwz	r23, 5008(r22)
	l.ori	r23, r23, 16
	l.sw	5008(r22), r23
	l.addi	r20, r20, 1740          # CFC
	l.j	.LBB33_25
	l.nop	0                       # in delay slot
.LBB33_34:                              # %if.then36
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 436
	l.lwz	r4, -12(r2)
	l.addi	r4, r4, 3
	l.addi	r5, r0, -4
	l.and	r4, r4, r5
	l.addi	r5, r4, 4
	l.lwz	r14, 2536(r12)
	l.addi	r14, r14, 3
	l.addi	r20, r20, 872           # CFC
	l.addi	r15, r0, -4
	l.sw	-12(r2), r5
	l.and	r14, r14, r15
	l.lwz	r24, 5084(r22)
	l.lwz	r6, 0(r4)
	l.addi	r15, r14, 4
	l.addi	r24, r24, 3
	l.addi	r28, r28, 2616
	l.sfgtsi	r6, -1
	l.sw	2536(r12), r15
	l.lwz	r16, 2548(r14)
	l.addi	r25, r0, -4
	l.and	r24, r24, r25
	l.addi	r25, r24, 4
	l.sw	5084(r22), r25
	l.lwz	r26, 5096(r24)
	l.bf	.LBB33_273
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2180
	l.sfgtsi	r16, -1
	l.addi	r20, r20, 1744          # CFC
	l.bf	.LBB33_274
	l.nop	0
.LBB33_35:                              # %if.then36
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 437
	l.addi	r20, r20, 874           # CFC
	l.addi	r6, r0, -1
	l.addi	r28, r28, 2622
	l.addi	r16, r0, -1
	l.addi	r18, r18, 2185
	l.addi	r26, r0, -1
	l.addi	r20, r20, 1748          # CFC
.LBB33_36:                              # %if.then36
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 438
	l.ori	r5, r3, 0
	l.addi	r20, r20, 876           # CFC
	l.lwz	r4, -68(r2)
	l.ori	r15, r13, 0
	l.addi	r28, r28, 2628
	l.lwz	r14, 2480(r12)
	l.addi	r18, r18, 2190
	l.ori	r25, r23, 0
	l.lwz	r24, 5028(r22)
	l.addi	r20, r20, 1752          # CFC
	l.j	.LBB33_17
	l.nop	0                       # in delay slot
.LBB33_64:                              # %if.else131
                                        #   in Loop: Header=BB33_2 Depth=2
	l.addi	r18, r18, 439
	l.andi	r3, r4, 16
	l.addi	r20, r20, 878           # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 2634
	l.andi	r13, r14, 16
	l.andi	r23, r24, 16
	l.bf	.LBB33_275
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2195
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1756          # CFC
	l.bf	.LBB33_276
	l.nop	0
.LBB33_65:                              # %if.then134
                                        #   in Loop: Header=BB33_2 Depth=2
	l.addi	r18, r18, 440
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r20, r20, 880           # CFC
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 5084(r22)
	l.lwz	r3, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r6, -76(r2)
	l.addi	r28, r28, 2640
	l.sw	2536(r12), r14
	l.addi	r24, r0, -4
	l.sw	0(r3), r6
	l.lwz	r13, 2548(r13)
	l.and	r23, r23, r24
	l.lwz	r5, -60(r2)
	l.lwz	r16, 2472(r12)
	l.addi	r18, r18, 2200
	l.addi	r24, r23, 4
	l.sw	2548(r13), r16
	l.lwz	r15, 2488(r12)
	l.sw	5084(r22), r24
	l.lwz	r23, 5096(r23)
	l.lwz	r26, 5020(r22)
	l.sw	5096(r23), r26
	l.lwz	r25, 5036(r22)
	l.addi	r20, r20, 1760          # CFC
	l.j	.LBB33_2
	l.nop	0                       # in delay slot
.LBB33_66:                              # %if.else136
                                        #   in Loop: Header=BB33_2 Depth=2
	l.addi	r18, r18, 441
	l.andi	r3, r4, 64
	l.addi	r20, r20, 882           # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 2646
	l.andi	r13, r14, 64
	l.andi	r23, r24, 64
	l.bf	.LBB33_277
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2205
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1764          # CFC
	l.bf	.LBB33_278
	l.nop	0
.LBB33_67:                              # %if.then139
                                        #   in Loop: Header=BB33_2 Depth=2
	l.addi	r18, r18, 442
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r20, r20, 884           # CFC
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 5084(r22)
	l.lwz	r3, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r6, -76(r2)
	l.addi	r28, r28, 2652
	l.sw	2536(r12), r14
	l.addi	r24, r0, -4
	l.sh	0(r3), r6
	l.lwz	r13, 2548(r13)
	l.and	r23, r23, r24
	l.lwz	r5, -60(r2)
	l.lwz	r16, 2472(r12)
	l.addi	r18, r18, 2210
	l.addi	r24, r23, 4
	l.sh	2548(r13), r16
	l.lwz	r15, 2488(r12)
	l.sw	5084(r22), r24
	l.lwz	r23, 5096(r23)
	l.lwz	r26, 5020(r22)
	l.sh	5096(r23), r26
	l.lwz	r25, 5036(r22)
	l.addi	r20, r20, 1768          # CFC
	l.j	.LBB33_2
	l.nop	0                       # in delay slot
.LBB33_61:                              # %sw.bb123
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 443
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r3, r3, 4
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r3
	l.addi	r20, r20, 886           # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 5084(r22)
	l.movhi	r7, 0
	l.addi	r13, r13, 4
	l.addi	r23, r23, 3
	l.sb	-13(r2), r7
	l.sw	2536(r12), r13
	l.addi	r24, r0, -4
	l.movhi	r3, hi(.L.str.5)
	l.addi	r28, r28, 2658
	l.movhi	r17, 0
	l.and	r23, r23, r24
	l.ori	r3, r3, lo(.L.str.5)
	l.sb	2535(r12), r17
	l.addi	r23, r23, 4
	l.sw	-136(r2), r3
	l.movhi	r13, hi(.L.str.5)
	l.sw	5084(r22), r23
	l.movhi	r4, 0
	l.addi	r18, r18, 2215
	l.ori	r13, r13, lo(.L.str.5)
	l.movhi	r27, 0
	l.sw	2412(r12), r13
	l.movhi	r14, 0
	l.sb	5083(r22), r27
	l.movhi	r23, hi(.L.str.5)
	l.ori	r23, r23, lo(.L.str.5)
	l.sw	4960(r22), r23
	l.movhi	r24, 0
	l.addi	r20, r20, 1772          # CFC
	l.j	.LBB33_146
	l.nop	0                       # in delay slot
.LBB33_144:                             # %if.end380
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 444
	l.sb	-53(r2), r7
	l.addi	r4, r0, 1
	l.movhi	r7, 0
	l.addi	r20, r20, 888           # CFC
	l.sb	-13(r2), r7
	l.sb	2495(r12), r17
	l.addi	r14, r0, 1
	l.addi	r28, r28, 2664
	l.movhi	r17, 0
	l.sb	2535(r12), r17
	l.sb	5043(r22), r27
	l.addi	r18, r18, 2220
	l.addi	r24, r0, 1
	l.movhi	r27, 0
	l.sb	5083(r22), r27
	l.addi	r20, r20, 1776          # CFC
	l.j	.LBB33_145
	l.nop	0                       # in delay slot
.LBB33_49:                              # %sw.bb84
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 445
	l.addi	r7, r0, 68
	l.lwz	r3, -88(r2)
	l.ori	r3, r3, 16
	l.addi	r20, r20, 890           # CFC
	l.sw	-88(r2), r3
	l.addi	r17, r0, 68
	l.lwz	r13, 2460(r12)
	l.addi	r28, r28, 2670
	l.ori	r13, r13, 16
	l.sw	2460(r12), r13
	l.addi	r27, r0, 68
	l.addi	r18, r18, 2225
	l.lwz	r23, 5008(r22)
	l.ori	r23, r23, 16
	l.sw	5008(r22), r23
	l.addi	r20, r20, 1780          # CFC
.LBB33_50:                              # %sw.bb86
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 446
	l.lwz	r5, -88(r2)
	l.andi	r3, r5, 32
	l.sfeqi	r3, 0
	l.addi	r20, r20, 892           # CFC
	l.sw	-64(r2), r7
	l.lwz	r15, 2460(r12)
	l.andi	r13, r15, 32
	l.addi	r28, r28, 2676
	l.sw	2484(r12), r17
	l.lwz	r25, 5008(r22)
	l.andi	r23, r25, 32
	l.sw	5032(r22), r27
	l.bf	.LBB33_279
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2230
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1784          # CFC
	l.bf	.LBB33_280
	l.nop	0
.LBB33_51:                              # %cond.true88
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 447
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.addi	r20, r20, 894           # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 5084(r22)
	l.lwz	r6, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r3, -12(r2)
	l.sw	2536(r12), r14
	l.addi	r24, r0, -4
	l.addi	r4, r3, 4
	l.lwz	r16, 2548(r13)
	l.addi	r28, r28, 2682
	l.and	r23, r23, r24
	l.sw	-12(r2), r4
	l.lwz	r13, 2536(r12)
	l.addi	r24, r23, 4
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.sw	5084(r22), r24
	l.lwz	r7, -84(r2)
	l.sw	2536(r12), r14
	l.lwz	r26, 5096(r23)
	l.addi	r18, r18, 2235
	l.lwz	r4, -120(r2)
	l.lwz	r8, 2548(r13)
	l.lwz	r23, 5084(r22)
	l.lwz	r17, 2464(r12)
	l.lwz	r14, 2428(r12)
	l.addi	r24, r23, 4
	l.sw	5084(r22), r24
	l.lwz	r31, 5096(r23)
	l.lwz	r27, 5012(r22)
	l.lwz	r24, 4976(r22)
	l.addi	r20, r20, 1788          # CFC
	l.j	.LBB33_57
	l.nop	0                       # in delay slot
.LBB33_52:                              # %cond.false90
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 448
	l.andi	r3, r5, 16
	l.addi	r20, r20, 896           # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 2688
	l.andi	r13, r15, 16
	l.andi	r23, r25, 16
	l.bf	.LBB33_281
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2240
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1792          # CFC
	l.bf	.LBB33_282
	l.nop	0
.LBB33_53:                              # %cond.true93
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 449
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 2536(r12)
	l.addi	r20, r20, 898           # CFC
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 5084(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r28, r28, 2694
	l.addi	r23, r23, 3
	l.lwz	r7, -84(r2)
	l.sw	2536(r12), r14
	l.addi	r24, r0, -4
	l.lwz	r4, -120(r2)
	l.lwz	r8, 2548(r13)
	l.and	r23, r23, r24
	l.addi	r18, r18, 2245
	l.lwz	r17, 2464(r12)
	l.lwz	r14, 2428(r12)
	l.addi	r24, r23, 4
	l.sw	5084(r22), r24
	l.lwz	r31, 5096(r23)
	l.lwz	r27, 5012(r22)
	l.lwz	r24, 4976(r22)
	l.addi	r20, r20, 1796          # CFC
	l.j	.LBB33_56
	l.nop	0                       # in delay slot
.LBB33_68:                              # %sw.bb153
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 450
	l.addi	r6, r0, 79
	l.lwz	r3, -88(r2)
	l.ori	r3, r3, 16
	l.addi	r20, r20, 900           # CFC
	l.sw	-88(r2), r3
	l.addi	r16, r0, 79
	l.lwz	r13, 2460(r12)
	l.addi	r28, r28, 2700
	l.ori	r13, r13, 16
	l.sw	2460(r12), r13
	l.addi	r26, r0, 79
	l.addi	r18, r18, 2250
	l.lwz	r23, 5008(r22)
	l.ori	r23, r23, 16
	l.sw	5008(r22), r23
	l.addi	r20, r20, 1800          # CFC
.LBB33_69:                              # %sw.bb155
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 451
	l.lwz	r5, -88(r2)
	l.andi	r3, r5, 32
	l.addi	r20, r20, 902           # CFC
	l.sfeqi	r3, 0
	l.lwz	r15, 2460(r12)
	l.addi	r28, r28, 2706
	l.andi	r13, r15, 32
	l.lwz	r25, 5008(r22)
	l.andi	r23, r25, 32
	l.bf	.LBB33_283
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2255
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1804          # CFC
	l.bf	.LBB33_284
	l.nop	0
.LBB33_70:                              # %cond.true158
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 452
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 5084(r22)
	l.lwz	r7, 0(r3)
	l.addi	r20, r20, 904           # CFC
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r4, -12(r2)
	l.sw	2536(r12), r14
	l.addi	r24, r0, -4
	l.addi	r3, r4, 4
	l.lwz	r17, 2548(r13)
	l.and	r23, r23, r24
	l.sw	-12(r2), r3
	l.lwz	r14, 2536(r12)
	l.addi	r24, r23, 4
	l.movhi	r3, 0
	l.addi	r28, r28, 2712
	l.addi	r13, r14, 4
	l.sw	5084(r22), r24
	l.sw	-112(r2), r3
	l.sw	2536(r12), r13
	l.lwz	r27, 5096(r23)
	l.lwz	r11, 0(r4)
	l.movhi	r13, 0
	l.lwz	r24, 5084(r22)
	l.sw	-64(r2), r6
	l.sw	2436(r12), r13
	l.addi	r23, r24, 4
	l.ori	r6, r7, 0
	l.addi	r18, r18, 2260
	l.lwz	r8, 2548(r14)
	l.sw	5084(r22), r23
	l.lwz	r7, -84(r2)
	l.sw	2484(r12), r16
	l.movhi	r23, 0
	l.ori	r16, r17, 0
	l.lwz	r17, 2464(r12)
	l.sw	4984(r22), r23
	l.lwz	r31, 5096(r24)
	l.sw	5032(r22), r26
	l.ori	r26, r27, 0
	l.lwz	r27, 5012(r22)
	l.addi	r20, r20, 1808          # CFC
	l.j	.LBB33_107
	l.nop	0                       # in delay slot
.LBB33_86:                              # %sw.bb217
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 453
	l.addi	r5, r0, 85
	l.lwz	r3, -88(r2)
	l.ori	r3, r3, 16
	l.addi	r20, r20, 906           # CFC
	l.sw	-88(r2), r3
	l.addi	r15, r0, 85
	l.lwz	r13, 2460(r12)
	l.addi	r28, r28, 2718
	l.ori	r13, r13, 16
	l.sw	2460(r12), r13
	l.addi	r25, r0, 85
	l.addi	r18, r18, 2265
	l.lwz	r23, 5008(r22)
	l.ori	r23, r23, 16
	l.sw	5008(r22), r23
	l.addi	r20, r20, 1812          # CFC
.LBB33_87:                              # %sw.bb219
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 454
	l.lwz	r6, -88(r2)
	l.andi	r3, r6, 32
	l.addi	r20, r20, 908           # CFC
	l.sfeqi	r3, 0
	l.lwz	r16, 2460(r12)
	l.addi	r28, r28, 2724
	l.andi	r13, r16, 32
	l.lwz	r26, 5008(r22)
	l.andi	r23, r26, 32
	l.bf	.LBB33_285
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2270
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1816          # CFC
	l.bf	.LBB33_286
	l.nop	0
.LBB33_88:                              # %cond.true222
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 455
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 5084(r22)
	l.lwz	r7, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r20, r20, 910           # CFC
	l.addi	r23, r23, 3
	l.lwz	r4, -12(r2)
	l.sw	2536(r12), r14
	l.addi	r24, r0, -4
	l.addi	r3, r4, 4
	l.lwz	r17, 2548(r13)
	l.and	r23, r23, r24
	l.sw	-12(r2), r3
	l.lwz	r14, 2536(r12)
	l.addi	r24, r23, 4
	l.addi	r3, r0, 1
	l.addi	r13, r14, 4
	l.sw	5084(r22), r24
	l.sw	-112(r2), r3
	l.addi	r28, r28, 2730
	l.sw	2536(r12), r13
	l.lwz	r27, 5096(r23)
	l.lwz	r11, 0(r4)
	l.addi	r13, r0, 1
	l.lwz	r24, 5084(r22)
	l.sw	-64(r2), r5
	l.sw	2436(r12), r13
	l.addi	r23, r24, 4
	l.lwz	r4, -84(r2)
	l.lwz	r8, 2548(r14)
	l.sw	5084(r22), r23
	l.ori	r5, r6, 0
	l.sw	2484(r12), r15
	l.addi	r18, r18, 2275
	l.addi	r23, r0, 1
	l.ori	r6, r7, 0
	l.lwz	r14, 2464(r12)
	l.sw	4984(r22), r23
	l.ori	r7, r4, 0
	l.ori	r15, r16, 0
	l.lwz	r31, 5096(r24)
	l.ori	r16, r17, 0
	l.ori	r17, r14, 0
	l.sw	5032(r22), r25
	l.lwz	r24, 5012(r22)
	l.ori	r25, r26, 0
	l.ori	r26, r27, 0
	l.ori	r27, r24, 0
	l.addi	r20, r20, 1820          # CFC
	l.j	.LBB33_107
	l.nop	0                       # in delay slot
.LBB33_94:                              # %hex.loopexit
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 456
	l.movhi	r3, hi(.L.str.3)
	l.addi	r20, r20, 912           # CFC
	l.ori	r4, r3, lo(.L.str.3)
	l.movhi	r13, hi(.L.str.3)
	l.addi	r28, r28, 2736
	l.ori	r14, r13, lo(.L.str.3)
	l.addi	r18, r18, 2280
	l.movhi	r23, hi(.L.str.3)
	l.ori	r24, r23, lo(.L.str.3)
	l.addi	r20, r20, 1824          # CFC
.LBB33_95:                              # %hex
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 457
	l.lwz	r5, -88(r2)
	l.andi	r3, r5, 32
	l.addi	r20, r20, 914           # CFC
	l.sfeqi	r3, 0
	l.lwz	r15, 2460(r12)
	l.addi	r28, r28, 2742
	l.andi	r13, r15, 32
	l.lwz	r25, 5008(r22)
	l.andi	r23, r25, 32
	l.bf	.LBB33_287
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2285
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1828          # CFC
	l.bf	.LBB33_288
	l.nop	0
.LBB33_96:                              # %cond.true256
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 458
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r5, r0, -4
	l.and	r3, r3, r5
	l.addi	r5, r3, 4
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r15, r0, -4
	l.sw	-12(r2), r5
	l.addi	r20, r20, 916           # CFC
	l.and	r13, r13, r15
	l.lwz	r23, 5084(r22)
	l.lwz	r6, 0(r3)
	l.addi	r15, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r3, -12(r2)
	l.sw	2536(r12), r15
	l.addi	r25, r0, -4
	l.addi	r5, r3, 4
	l.addi	r28, r28, 2748
	l.lwz	r16, 2548(r13)
	l.and	r23, r23, r25
	l.sw	-12(r2), r5
	l.lwz	r13, 2536(r12)
	l.addi	r25, r23, 4
	l.lwz	r5, -88(r2)
	l.addi	r15, r13, 4
	l.sw	5084(r22), r25
	l.lwz	r11, 0(r3)
	l.addi	r18, r18, 2290
	l.sw	2536(r12), r15
	l.lwz	r26, 5096(r23)
	l.lwz	r15, 2460(r12)
	l.lwz	r8, 2548(r13)
	l.lwz	r23, 5084(r22)
	l.addi	r25, r23, 4
	l.sw	5084(r22), r25
	l.lwz	r25, 5008(r22)
	l.lwz	r31, 5096(r23)
	l.addi	r20, r20, 1832          # CFC
	l.j	.LBB33_102
	l.nop	0                       # in delay slot
.LBB33_48:                              # %sw.bb81
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 459
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.addi	r20, r20, 918           # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 5084(r22)
	l.lwz	r3, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.sb	-53(r2), r3
	l.sw	2536(r12), r14
	l.addi	r24, r0, -4
	l.addi	r4, r0, 1
	l.lwz	r13, 2548(r13)
	l.addi	r28, r28, 2754
	l.and	r23, r23, r24
	l.movhi	r7, 0
	l.sb	2495(r12), r13
	l.addi	r24, r23, 4
	l.sb	-13(r2), r7
	l.addi	r14, r0, 1
	l.sw	5084(r22), r24
	l.addi	r3, r0, 99
	l.movhi	r17, 0
	l.lwz	r23, 5096(r23)
	l.addi	r18, r18, 2295
	l.sw	-64(r2), r3
	l.sb	2535(r12), r17
	l.sb	5043(r22), r23
	l.addi	r13, r0, 99
	l.sw	2484(r12), r13
	l.addi	r24, r0, 1
	l.movhi	r27, 0
	l.sb	5083(r22), r27
	l.addi	r23, r0, 99
	l.sw	5032(r22), r23
	l.addi	r20, r20, 1836          # CFC
.LBB33_145:                             # %if.else386
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 460
	l.addi	r3, r2, -53
	l.addi	r20, r20, 920           # CFC
	l.sw	-136(r2), r3
	l.addi	r13, r12, -53
	l.addi	r28, r28, 2760
	l.sw	2412(r12), r13
	l.addi	r18, r18, 2300
	l.addi	r23, r22, -53
	l.sw	4960(r22), r23
	l.addi	r20, r20, 1840          # CFC
.LBB33_146:                             # %if.else386
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 461
	l.lwz	r6, -76(r2)
	l.addi	r20, r20, 922           # CFC
	l.lwz	r5, -88(r2)
	l.lwz	r16, 2472(r12)
	l.addi	r28, r28, 2766
	l.lwz	r15, 2460(r12)
	l.addi	r18, r18, 2305
	l.lwz	r26, 5020(r22)
	l.lwz	r25, 5008(r22)
	l.addi	r20, r20, 1844          # CFC
	l.j	.LBB33_147
	l.nop	0                       # in delay slot
.LBB33_76:                              # %sw.bb188
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 462
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r4, r3, r4
	l.addi	r3, r4, 4
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r3
	l.and	r14, r13, r14
	l.lwz	r23, 5084(r22)
	l.movhi	r6, 0
	l.addi	r13, r14, 4
	l.addi	r20, r20, 924           # CFC
	l.addi	r23, r23, 3
	l.addi	r3, r0, 120
	l.sw	2536(r12), r13
	l.addi	r24, r0, -4
	l.sw	-64(r2), r3
	l.movhi	r16, 0
	l.and	r24, r23, r24
	l.addi	r3, r0, 2
	l.addi	r13, r0, 120
	l.addi	r23, r24, 4
	l.sw	-112(r2), r3
	l.sw	2484(r12), r13
	l.sw	5084(r22), r23
	l.movhi	r5, hi(.L.str.1)
	l.addi	r28, r28, 2772
	l.addi	r13, r0, 2
	l.movhi	r26, 0
	l.ori	r5, r5, lo(.L.str.1)
	l.sw	2436(r12), r13
	l.addi	r23, r0, 120
	l.sw	-128(r2), r5
	l.movhi	r15, hi(.L.str.1)
	l.sw	5032(r22), r23
	l.lwz	r5, -88(r2)
	l.ori	r15, r15, lo(.L.str.1)
	l.addi	r23, r0, 2
	l.ori	r5, r5, 2
	l.sw	2420(r12), r15
	l.addi	r18, r18, 2310
	l.sw	4984(r22), r23
	l.lwz	r11, 0(r4)
	l.lwz	r15, 2460(r12)
	l.movhi	r25, hi(.L.str.1)
	l.lwz	r7, -84(r2)
	l.ori	r15, r15, 2
	l.ori	r25, r25, lo(.L.str.1)
	l.lwz	r8, 2548(r14)
	l.lwz	r17, 2464(r12)
	l.sw	4968(r22), r25
	l.lwz	r25, 5008(r22)
	l.ori	r25, r25, 2
	l.lwz	r31, 5096(r24)
	l.lwz	r27, 5012(r22)
	l.addi	r20, r20, 1848          # CFC
	l.j	.LBB33_107
	l.nop	0                       # in delay slot
.LBB33_77:                              # %sw.bb192
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 463
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.addi	r20, r20, 926           # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 5084(r22)
	l.lwz	r3, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.movhi	r4, hi(.L.str.2)
	l.sw	2536(r12), r14
	l.addi	r24, r0, -4
	l.ori	r4, r4, lo(.L.str.2)
	l.addi	r28, r28, 2778
	l.lwz	r13, 2548(r13)
	l.and	r23, r23, r24
	l.sfeqi	r3, 0
	l.movhi	r14, hi(.L.str.2)
	l.ori	r14, r14, lo(.L.str.2)
	l.addi	r24, r23, 4
	l.sw	5084(r22), r24
	l.lwz	r23, 5096(r23)
	l.movhi	r24, hi(.L.str.2)
	l.ori	r24, r24, lo(.L.str.2)
	l.bf	.LBB33_289
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2315
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1852          # CFC
	l.bf	.LBB33_290
	l.nop	0
.LBB33_78:                              # %sw.bb192
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 464
	l.addi	r20, r20, 928           # CFC
	l.ori	r4, r3, 0
	l.addi	r28, r28, 2784
	l.ori	r14, r13, 0
	l.addi	r18, r18, 2320
	l.ori	r24, r23, 0
	l.addi	r20, r20, 1856          # CFC
.LBB33_79:                              # %sw.bb192
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 465
	l.sw	-136(r2), r4
	l.lwz	r3, -76(r2)
	l.lwz	r5, -84(r2)
	l.addi	r20, r20, 930           # CFC
	l.sfltsi	r5, 0
	l.sw	2412(r12), r14
	l.lwz	r13, 2472(r12)
	l.addi	r28, r28, 2790
	l.lwz	r15, 2464(r12)
	l.sw	4960(r22), r24
	l.lwz	r23, 5020(r22)
	l.lwz	r25, 5012(r22)
	l.bf	.LBB33_291
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2325
	l.sfltsi	r15, 0
	l.addi	r20, r20, 1860          # CFC
	l.bf	.LBB33_292
	l.nop	0
.LBB33_80:                              # %if.then200
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 466
	l.lwz	r3, -136(r2)
	l.movhi	r4, 0
	l.lwz	r13, 2412(r12)
	l.movhi	r14, 0
	l.lwz	r23, 4960(r22)
	l.addi	r20, r20, 932           # CFC
	l.movhi	r24, 0
	l.jal	memchr
	l.nop	0                       # in delay slot
	l.lwz	r4, -84(r2)
	l.sfeqi	r11, 0
	l.ori	r3, r4, 0
	l.lwz	r5, -88(r2)
	l.addi	r28, r28, 2796
	l.lwz	r14, 2464(r12)
	l.ori	r13, r14, 0
	l.lwz	r15, 2460(r12)
	l.lwz	r24, 5012(r22)
	l.ori	r23, r24, 0
	l.lwz	r25, 5008(r22)
	l.bf	.LBB33_293
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2330
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1864          # CFC
	l.bf	.LBB33_294
	l.nop	0
.LBB33_81:                              # %if.then204
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 467
	l.lwz	r3, -136(r2)
	l.sub	r3, r11, r3
	l.addi	r20, r20, 934           # CFC
	l.sfgts	r3, r4
	l.lwz	r13, 2412(r12)
	l.addi	r28, r28, 2802
	l.sub	r13, r8, r13
	l.lwz	r23, 4960(r22)
	l.sub	r23, r31, r23
	l.bf	.LBB33_295
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2335
	l.sfgts	r13, r14
	l.addi	r20, r20, 1868          # CFC
	l.bf	.LBB33_296
	l.nop	0
.LBB33_82:                              # %if.then204
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 468
	l.addi	r20, r20, 936           # CFC
	l.ori	r4, r3, 0
	l.addi	r28, r28, 2808
	l.ori	r14, r13, 0
	l.addi	r18, r18, 2340
	l.ori	r24, r23, 0
	l.addi	r20, r20, 1872          # CFC
.LBB33_83:                              # %if.then204
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 469
	l.addi	r20, r20, 938           # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 2814
	l.ori	r13, r14, 0
	l.addi	r18, r18, 2345
	l.ori	r23, r24, 0
	l.addi	r20, r20, 1876          # CFC
	l.j	.LBB33_85
	l.nop	0                       # in delay slot
.LBB33_71:                              # %cond.false160
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 470
	l.andi	r3, r5, 16
	l.sfeqi	r3, 0
	l.addi	r20, r20, 940           # CFC
	l.lwz	r7, -84(r2)
	l.andi	r13, r15, 16
	l.addi	r28, r28, 2820
	l.lwz	r17, 2464(r12)
	l.andi	r23, r25, 16
	l.lwz	r27, 5012(r22)
	l.bf	.LBB33_297
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2350
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1880          # CFC
	l.bf	.LBB33_298
	l.nop	0
.LBB33_72:                              # %cond.true163
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 471
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.addi	r20, r20, 942           # CFC
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.addi	r28, r28, 2826
	l.lwz	r23, 5084(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.sw	2536(r12), r14
	l.addi	r18, r18, 2355
	l.lwz	r8, 2548(r13)
	l.addi	r24, r0, -4
	l.and	r23, r23, r24
	l.addi	r24, r23, 4
	l.sw	5084(r22), r24
	l.lwz	r31, 5096(r23)
	l.addi	r20, r20, 1884          # CFC
	l.j	.LBB33_75
	l.nop	0                       # in delay slot
.LBB33_89:                              # %cond.false224
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 472
	l.andi	r3, r6, 16
	l.addi	r20, r20, 944           # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 2832
	l.andi	r13, r16, 16
	l.andi	r23, r26, 16
	l.bf	.LBB33_299
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2360
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1888          # CFC
	l.bf	.LBB33_300
	l.nop	0
.LBB33_90:                              # %cond.true227
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 473
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.addi	r20, r20, 946           # CFC
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.addi	r28, r28, 2838
	l.lwz	r23, 5084(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.sw	2536(r12), r14
	l.addi	r18, r18, 2365
	l.lwz	r8, 2548(r13)
	l.addi	r24, r0, -4
	l.and	r23, r23, r24
	l.addi	r24, r23, 4
	l.sw	5084(r22), r24
	l.lwz	r31, 5096(r23)
	l.addi	r20, r20, 1892          # CFC
	l.j	.LBB33_93
	l.nop	0                       # in delay slot
.LBB33_97:                              # %cond.false258
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 474
	l.andi	r3, r5, 16
	l.sfeqi	r3, 0
	l.addi	r20, r20, 948           # CFC
	l.ori	r6, r5, 0
	l.andi	r13, r15, 16
	l.addi	r28, r28, 2844
	l.ori	r16, r15, 0
	l.andi	r23, r25, 16
	l.ori	r26, r25, 0
	l.bf	.LBB33_301
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2370
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1896          # CFC
	l.bf	.LBB33_302
	l.nop	0
.LBB33_98:                              # %cond.true261
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 475
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r5, r0, -4
	l.and	r3, r3, r5
	l.addi	r5, r3, 4
	l.lwz	r13, 2536(r12)
	l.addi	r20, r20, 950           # CFC
	l.addi	r13, r13, 3
	l.addi	r15, r0, -4
	l.sw	-12(r2), r5
	l.and	r13, r13, r15
	l.lwz	r23, 5084(r22)
	l.lwz	r11, 0(r3)
	l.addi	r28, r28, 2850
	l.addi	r15, r13, 4
	l.addi	r23, r23, 3
	l.ori	r5, r6, 0
	l.sw	2536(r12), r15
	l.addi	r25, r0, -4
	l.lwz	r8, 2548(r13)
	l.addi	r18, r18, 2375
	l.ori	r15, r16, 0
	l.and	r23, r23, r25
	l.addi	r25, r23, 4
	l.sw	5084(r22), r25
	l.lwz	r31, 5096(r23)
	l.ori	r25, r26, 0
	l.addi	r20, r20, 1900          # CFC
	l.j	.LBB33_101
	l.nop	0                       # in delay slot
.LBB33_54:                              # %cond.false95
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 476
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.addi	r20, r20, 952           # CFC
	l.lwz	r23, 5084(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.andi	r3, r5, 64
	l.sw	2536(r12), r14
	l.addi	r24, r0, -4
	l.sfeqi	r3, 0
	l.lwz	r8, 2548(r13)
	l.and	r23, r23, r24
	l.addi	r28, r28, 2856
	l.lwz	r7, -84(r2)
	l.andi	r13, r15, 64
	l.addi	r24, r23, 4
	l.lwz	r4, -120(r2)
	l.lwz	r17, 2464(r12)
	l.lwz	r14, 2428(r12)
	l.sw	5084(r22), r24
	l.lwz	r31, 5096(r23)
	l.andi	r23, r25, 64
	l.lwz	r27, 5012(r22)
	l.lwz	r24, 4976(r22)
	l.bf	.LBB33_303
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2380
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1904          # CFC
	l.bf	.LBB33_304
	l.nop	0
.LBB33_55:                              # %cond.true98
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 477
	l.slli	r3, r11, 16
	l.addi	r20, r20, 954           # CFC
	l.srai	r11, r3, 16
	l.slli	r13, r8, 16
	l.addi	r28, r28, 2862
	l.srai	r8, r13, 16
	l.addi	r18, r18, 2385
	l.slli	r23, r31, 16
	l.srai	r31, r23, 16
	l.addi	r20, r20, 1908          # CFC
.LBB33_56:                              # %cond.end113
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 478
	l.addi	r20, r20, 956           # CFC
	l.srai	r6, r11, 31
	l.addi	r28, r28, 2868
	l.srai	r16, r8, 31
	l.addi	r18, r18, 2390
	l.srai	r26, r31, 31
	l.addi	r20, r20, 1912          # CFC
.LBB33_57:                              # %cond.end116
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 479
	l.addi	r3, r0, 1
	l.sw	-112(r2), r3
	l.addi	r20, r20, 958           # CFC
	l.sfgtsi	r6, -1
	l.addi	r13, r0, 1
	l.addi	r28, r28, 2874
	l.sw	2436(r12), r13
	l.addi	r23, r0, 1
	l.sw	4984(r22), r23
	l.bf	.LBB33_305
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2395
	l.sfgtsi	r16, -1
	l.addi	r20, r20, 1916          # CFC
	l.bf	.LBB33_306
	l.nop	0
.LBB33_58:                              # %if.then120
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 480
	l.movhi	r4, 0
	l.sub	r5, r4, r6
	l.addi	r6, r0, 1
	l.sfnei	r11, 0
	l.addi	r20, r20, 960           # CFC
	l.sw	-112(r2), r6
	l.movhi	r14, 0
	l.sub	r15, r14, r16
	l.addi	r16, r0, 1
	l.addi	r28, r28, 2880
	l.sw	2436(r12), r16
	l.movhi	r24, 0
	l.sub	r25, r24, r26
	l.addi	r26, r0, 1
	l.sw	4984(r22), r26
	l.bf	.LBB33_307
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2400
	l.sfnei	r8, 0
	l.addi	r20, r20, 1920          # CFC
	l.bf	.LBB33_308
	l.nop	0
.LBB33_59:                              # %if.then120
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 481
	l.addi	r20, r20, 962           # CFC
	l.movhi	r6, 0
	l.addi	r28, r28, 2886
	l.movhi	r16, 0
	l.addi	r18, r18, 2405
	l.movhi	r26, 0
	l.addi	r20, r20, 1924          # CFC
.LBB33_60:                              # %if.then120
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 482
	l.sub	r6, r5, r6
	l.sub	r11, r4, r11
	l.addi	r4, r0, 45
	l.addi	r20, r20, 964           # CFC
	l.sb	-13(r2), r4
	l.lwz	r5, -88(r2)
	l.sub	r16, r15, r16
	l.sub	r8, r14, r8
	l.addi	r28, r28, 2892
	l.addi	r14, r0, 45
	l.sb	2535(r12), r14
	l.lwz	r15, 2460(r12)
	l.sub	r26, r25, r26
	l.addi	r18, r18, 2410
	l.sub	r31, r24, r31
	l.addi	r24, r0, 45
	l.sb	5083(r22), r24
	l.lwz	r25, 5008(r22)
	l.addi	r20, r20, 1928          # CFC
	l.j	.LBB33_108
	l.nop	0                       # in delay slot
.LBB33_73:                              # %cond.false165
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 483
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.addi	r20, r20, 966           # CFC
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 5084(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.andi	r3, r5, 64
	l.sw	2536(r12), r14
	l.addi	r28, r28, 2898
	l.addi	r24, r0, -4
	l.sfeqi	r3, 0
	l.lwz	r8, 2548(r13)
	l.andi	r13, r15, 64
	l.and	r23, r23, r24
	l.addi	r24, r23, 4
	l.sw	5084(r22), r24
	l.lwz	r31, 5096(r23)
	l.andi	r23, r25, 64
	l.bf	.LBB33_309
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2415
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1932          # CFC
	l.bf	.LBB33_310
	l.nop	0
.LBB33_74:                              # %cond.false165
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 484
	l.addi	r20, r20, 968           # CFC
	l.andi	r11, r11, 65535
	l.addi	r28, r28, 2904
	l.andi	r8, r8, 65535
	l.addi	r18, r18, 2420
	l.andi	r31, r31, 65535
	l.addi	r20, r20, 1936          # CFC
.LBB33_75:                              # %cond.end183
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 485
	l.movhi	r3, 0
	l.sw	-112(r2), r3
	l.sw	-64(r2), r6
	l.addi	r20, r20, 970           # CFC
	l.movhi	r6, 0
	l.movhi	r13, 0
	l.sw	2436(r12), r13
	l.addi	r28, r28, 2910
	l.sw	2484(r12), r16
	l.movhi	r16, 0
	l.movhi	r23, 0
	l.addi	r18, r18, 2425
	l.sw	4984(r22), r23
	l.sw	5032(r22), r26
	l.movhi	r26, 0
	l.addi	r20, r20, 1940          # CFC
	l.j	.LBB33_107
	l.nop	0                       # in delay slot
.LBB33_91:                              # %cond.false229
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 486
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.addi	r20, r20, 972           # CFC
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 5084(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.andi	r3, r6, 64
	l.sw	2536(r12), r14
	l.addi	r28, r28, 2916
	l.addi	r24, r0, -4
	l.sfeqi	r3, 0
	l.lwz	r8, 2548(r13)
	l.andi	r13, r16, 64
	l.and	r23, r23, r24
	l.addi	r24, r23, 4
	l.sw	5084(r22), r24
	l.lwz	r31, 5096(r23)
	l.andi	r23, r26, 64
	l.bf	.LBB33_311
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2430
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1944          # CFC
	l.bf	.LBB33_312
	l.nop	0
.LBB33_92:                              # %cond.false229
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 487
	l.addi	r20, r20, 974           # CFC
	l.andi	r11, r11, 65535
	l.addi	r28, r28, 2922
	l.andi	r8, r8, 65535
	l.addi	r18, r18, 2435
	l.andi	r31, r31, 65535
	l.addi	r20, r20, 1948          # CFC
.LBB33_93:                              # %cond.false229
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 488
	l.lwz	r7, -84(r2)
	l.movhi	r6, 0
	l.addi	r3, r0, 1
	l.sw	-112(r2), r3
	l.addi	r20, r20, 976           # CFC
	l.sw	-64(r2), r5
	l.lwz	r17, 2464(r12)
	l.movhi	r16, 0
	l.addi	r13, r0, 1
	l.lwz	r5, -88(r2)
	l.addi	r28, r28, 2928
	l.sw	2436(r12), r13
	l.lwz	r27, 5012(r22)
	l.sw	2484(r12), r15
	l.lwz	r15, 2460(r12)
	l.addi	r18, r18, 2440
	l.movhi	r26, 0
	l.addi	r23, r0, 1
	l.sw	4984(r22), r23
	l.sw	5032(r22), r25
	l.lwz	r25, 5008(r22)
	l.addi	r20, r20, 1952          # CFC
	l.j	.LBB33_107
	l.nop	0                       # in delay slot
.LBB33_99:                              # %cond.false263
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 489
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r5, r0, -4
	l.and	r3, r3, r5
	l.addi	r5, r3, 4
	l.lwz	r13, 2536(r12)
	l.addi	r13, r13, 3
	l.addi	r15, r0, -4
	l.sw	-12(r2), r5
	l.addi	r20, r20, 978           # CFC
	l.and	r13, r13, r15
	l.lwz	r23, 5084(r22)
	l.lwz	r11, 0(r3)
	l.addi	r15, r13, 4
	l.addi	r23, r23, 3
	l.andi	r3, r6, 64
	l.sw	2536(r12), r15
	l.addi	r25, r0, -4
	l.sfeqi	r3, 0
	l.addi	r28, r28, 2934
	l.lwz	r8, 2548(r13)
	l.and	r23, r23, r25
	l.ori	r5, r6, 0
	l.andi	r13, r16, 64
	l.ori	r15, r16, 0
	l.addi	r25, r23, 4
	l.sw	5084(r22), r25
	l.lwz	r31, 5096(r23)
	l.andi	r23, r26, 64
	l.ori	r25, r26, 0
	l.bf	.LBB33_313
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2445
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1956          # CFC
	l.bf	.LBB33_314
	l.nop	0
.LBB33_100:                             # %cond.false263
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 490
	l.addi	r20, r20, 980           # CFC
	l.andi	r11, r11, 65535
	l.addi	r28, r28, 2940
	l.andi	r8, r8, 65535
	l.addi	r18, r18, 2450
	l.andi	r31, r31, 65535
	l.addi	r20, r20, 1960          # CFC
.LBB33_101:                             # %cond.end281
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 491
	l.addi	r20, r20, 982           # CFC
	l.movhi	r6, 0
	l.addi	r28, r28, 2946
	l.movhi	r16, 0
	l.addi	r18, r18, 2455
	l.movhi	r26, 0
	l.addi	r20, r20, 1964          # CFC
.LBB33_102:                             # %cond.end284
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 492
	l.sw	-80(r2), r6
	l.or	r3, r11, r6
	l.ori	r6, r5, 0
	l.ori	r5, r6, 2
	l.addi	r20, r20, 984           # CFC
	l.sfnei	r3, 0
	l.sw	2468(r12), r16
	l.or	r13, r8, r16
	l.ori	r16, r15, 0
	l.addi	r28, r28, 2952
	l.ori	r15, r16, 2
	l.sw	5016(r22), r26
	l.or	r23, r31, r26
	l.ori	r26, r25, 0
	l.ori	r25, r26, 2
	l.bf	.LBB33_315
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2460
	l.sfnei	r13, 0
	l.addi	r20, r20, 1968          # CFC
	l.bf	.LBB33_316
	l.nop	0
.LBB33_103:                             # %cond.end284
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 493
	l.addi	r20, r20, 986           # CFC
	l.ori	r5, r6, 0
	l.addi	r28, r28, 2958
	l.ori	r15, r16, 0
	l.addi	r18, r18, 2465
	l.ori	r25, r26, 0
	l.addi	r20, r20, 1972          # CFC
.LBB33_104:                             # %cond.end284
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 494
	l.andi	r3, r6, 1
	l.sfnei	r3, 0
	l.addi	r20, r20, 988           # CFC
	l.lwz	r7, -84(r2)
	l.andi	r13, r16, 1
	l.addi	r28, r28, 2964
	l.lwz	r17, 2464(r12)
	l.andi	r23, r26, 1
	l.lwz	r27, 5012(r22)
	l.bf	.LBB33_317
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2470
	l.sfnei	r13, 0
	l.addi	r20, r20, 1976          # CFC
	l.bf	.LBB33_318
	l.nop	0
.LBB33_105:                             # %cond.end284
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 495
	l.addi	r20, r20, 990           # CFC
	l.ori	r5, r6, 0
	l.addi	r28, r28, 2970
	l.ori	r15, r16, 0
	l.addi	r18, r18, 2475
	l.ori	r25, r26, 0
	l.addi	r20, r20, 1980          # CFC
.LBB33_106:                             # %cond.end284
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 496
	l.addi	r3, r0, 2
	l.sw	-112(r2), r3
	l.sw	-128(r2), r4
	l.addi	r20, r20, 992           # CFC
	l.lwz	r6, -80(r2)
	l.addi	r13, r0, 2
	l.sw	2436(r12), r13
	l.addi	r28, r28, 2976
	l.sw	2420(r12), r14
	l.lwz	r16, 2468(r12)
	l.addi	r23, r0, 2
	l.addi	r18, r18, 2480
	l.sw	4984(r22), r23
	l.sw	4968(r22), r24
	l.lwz	r26, 5016(r22)
	l.addi	r20, r20, 1984          # CFC
.LBB33_107:                             # %nosign
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 497
	l.movhi	r4, 0
	l.addi	r20, r20, 994           # CFC
	l.sb	-13(r2), r4
	l.movhi	r14, 0
	l.addi	r28, r28, 2982
	l.sb	2535(r12), r14
	l.addi	r18, r18, 2485
	l.movhi	r24, 0
	l.sb	5083(r22), r24
	l.addi	r20, r20, 1988          # CFC
.LBB33_108:                             # %number
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 498
	l.ori	r3, r4, 0
	l.sw	-80(r2), r6
	l.addi	r4, r0, -129
	l.and	r4, r5, r4
	l.sw	-88(r2), r4
	l.addi	r20, r20, 996           # CFC
	l.sfgtsi	r7, -1
	l.ori	r13, r14, 0
	l.sw	2468(r12), r16
	l.addi	r14, r0, -129
	l.and	r14, r15, r14
	l.addi	r28, r28, 2988
	l.sw	2460(r12), r14
	l.ori	r23, r24, 0
	l.sw	5016(r22), r26
	l.addi	r24, r0, -129
	l.and	r24, r25, r24
	l.sw	5008(r22), r24
	l.bf	.LBB33_319
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2490
	l.sfgtsi	r17, -1
	l.addi	r20, r20, 1992          # CFC
	l.bf	.LBB33_320
	l.nop	0
.LBB33_109:                             # %number
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 499
	l.addi	r20, r20, 998           # CFC
	l.sw	-88(r2), r5
	l.addi	r28, r28, 2994
	l.sw	2460(r12), r15
	l.addi	r18, r18, 2495
	l.sw	5008(r22), r25
	l.addi	r20, r20, 1996          # CFC
.LBB33_110:                             # %number
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 500
	l.sw	-84(r2), r7
	l.sfnei	r7, 0
	l.lwz	r6, -76(r2)
	l.addi	r20, r20, 1000          # CFC
	l.lwz	r4, -80(r2)
	l.sw	2464(r12), r17
	l.lwz	r16, 2472(r12)
	l.addi	r28, r28, 3000
	l.lwz	r14, 2468(r12)
	l.sw	5012(r22), r27
	l.lwz	r26, 5020(r22)
	l.lwz	r24, 5016(r22)
	l.bf	.LBB33_321
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2500
	l.sfnei	r17, 0
	l.addi	r20, r20, 2000          # CFC
	l.bf	.LBB33_322
	l.nop	0
.LBB33_111:                             # %number
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 501
	l.or	r4, r11, r4
	l.sfeqi	r4, 0
	l.addi	r20, r20, 1002          # CFC
	l.lwz	r5, -144(r2)
	l.or	r14, r8, r14
	l.addi	r28, r28, 3006
	l.lwz	r15, 2404(r12)
	l.or	r24, r31, r24
	l.lwz	r25, 4952(r22)
	l.bf	.LBB33_323
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2505
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2004          # CFC
	l.bf	.LBB33_324
	l.nop	0
.LBB33_112:                             # %if.then305
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 502
	l.lwz	r4, -112(r2)
	l.addi	r20, r20, 1004          # CFC
	l.sfeqi	r4, 0
	l.addi	r28, r28, 3012
	l.lwz	r14, 2436(r12)
	l.lwz	r24, 4984(r22)
	l.bf	.LBB33_325
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2510
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2008          # CFC
	l.bf	.LBB33_326
	l.nop	0
.LBB33_113:                             # %if.then305
                                        #   in Loop: Header=BB33_3 Depth=3
	l.sfeqi	r4, 1
	l.bf	.LBB33_327
	l.nop	0                       # in delay slot
	l.sfeqi	r14, 1
	l.bf	.LBB33_328
	l.nop	0
.LBB33_114:                             # %if.then305
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 503
	l.sw	-100(r2), r11
	l.lwz	r11, -84(r2)
	l.addi	r7, r0, 25
	l.sw	-112(r2), r4
	l.movhi	r4, hi(.L.str.4)
	l.sw	2448(r12), r8
	l.lwz	r8, 2464(r12)
	l.addi	r20, r20, 1006          # CFC
	l.addi	r17, r0, 25
	l.ori	r5, r4, lo(.L.str.4)
	l.sw	2436(r12), r14
	l.sw	4996(r22), r31
	l.lwz	r4, -112(r2)
	l.movhi	r14, hi(.L.str.4)
	l.lwz	r31, 5012(r22)
	l.addi	r28, r28, 3018
	l.sfnei	r4, 2
	l.ori	r15, r14, lo(.L.str.4)
	l.lwz	r14, 2436(r12)
	l.addi	r27, r0, 25
	l.sw	4984(r22), r24
	l.movhi	r24, hi(.L.str.4)
	l.ori	r25, r24, lo(.L.str.4)
	l.lwz	r24, 4984(r22)
	l.bf	.LBB33_329
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2515
	l.sfnei	r14, 2
	l.addi	r20, r20, 2012          # CFC
	l.bf	.LBB33_330
	l.nop	0
.LBB33_115:                             # %do.body360.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 504
	l.lwz	r5, -144(r2)
	l.lwz	r11, -100(r2)
	l.addi	r20, r20, 1008          # CFC
	l.lwz	r7, -80(r2)
	l.lwz	r15, 2404(r12)
	l.addi	r28, r28, 3024
	l.lwz	r8, 2448(r12)
	l.lwz	r17, 2468(r12)
	l.addi	r18, r18, 2520
	l.lwz	r25, 4952(r22)
	l.lwz	r31, 4996(r22)
	l.lwz	r27, 5016(r22)
	l.addi	r20, r20, 2016          # CFC
.LBB33_116:                             # %do.body360
                                        #   Parent Loop BB33_1 Depth=1
                                        #     Parent Loop BB33_2 Depth=2
                                        #       Parent Loop BB33_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 505
	l.andi	r3, r11, 15
	l.lwz	r4, -128(r2)
	l.add	r3, r4, r3
	l.lbz	r3, 0(r3)
	l.sb	-1(r5), r3
	l.andi	r13, r8, 15
	l.lwz	r14, 2420(r12)
	l.add	r13, r14, r13
	l.srli	r3, r11, 4
	l.lbz	r13, 2548(r13)
	l.andi	r23, r31, 15
	l.addi	r20, r20, 1010          # CFC
	l.slli	r4, r7, 28
	l.sb	2547(r15), r13
	l.lwz	r24, 4968(r22)
	l.or	r11, r3, r4
	l.srli	r13, r8, 4
	l.add	r23, r24, r23
	l.addi	r5, r5, -1
	l.slli	r14, r17, 28
	l.lbz	r23, 5096(r23)
	l.srli	r7, r7, 4
	l.or	r8, r13, r14
	l.addi	r28, r28, 3030
	l.sb	5095(r25), r23
	l.or	r3, r11, r7
	l.addi	r15, r15, -1
	l.srli	r23, r31, 4
	l.sfnei	r3, 0
	l.srli	r17, r17, 4
	l.or	r13, r8, r17
	l.slli	r24, r27, 28
	l.or	r31, r23, r24
	l.addi	r25, r25, -1
	l.srli	r27, r27, 4
	l.or	r23, r31, r27
	l.bf	.LBB33_331
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2525
	l.sfnei	r13, 0
	l.addi	r20, r20, 2020          # CFC
	l.bf	.LBB33_332
	l.nop	0
.LBB33_235:                             # %do.body360
                                        #   in Loop: Header=BB33_3 Depth=3
	l.j	.LBB33_141
	l.nop	0                       # in delay slot
.LBB33_117:                             # %do.body307.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 506
	l.lwz	r3, -152(r2)
	l.addi	r20, r20, 1012          # CFC
	l.lwz	r7, -80(r2)
	l.lwz	r13, 2396(r12)
	l.addi	r28, r28, 3036
	l.lwz	r17, 2468(r12)
	l.addi	r18, r18, 2530
	l.lwz	r23, 4944(r22)
	l.lwz	r27, 5016(r22)
	l.addi	r20, r20, 2024          # CFC
.LBB33_118:                             # %do.body307
                                        #   Parent Loop BB33_1 Depth=1
                                        #     Parent Loop BB33_2 Depth=2
                                        #       Parent Loop BB33_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 507
	l.slli	r4, r7, 29
	l.srli	r5, r11, 3
	l.or	r5, r5, r4
	l.andi	r4, r11, 7
	l.ori	r4, r4, 48
	l.slli	r14, r17, 29
	l.srli	r15, r8, 3
	l.or	r15, r15, r14
	l.sb	0(r3), r4
	l.andi	r14, r8, 7
	l.addi	r20, r20, 1014          # CFC
	l.slli	r24, r27, 29
	l.addi	r3, r3, -1
	l.ori	r14, r14, 48
	l.srli	r25, r31, 3
	l.srli	r7, r7, 3
	l.sb	2548(r13), r14
	l.or	r25, r25, r24
	l.or	r6, r5, r7
	l.addi	r13, r13, -1
	l.andi	r24, r31, 7
	l.addi	r28, r28, 3042
	l.sfnei	r6, 0
	l.srli	r17, r17, 3
	l.ori	r24, r24, 48
	l.ori	r11, r5, 0
	l.or	r16, r15, r17
	l.ori	r8, r15, 0
	l.sb	5096(r23), r24
	l.addi	r23, r23, -1
	l.srli	r27, r27, 3
	l.or	r26, r25, r27
	l.ori	r31, r25, 0
	l.bf	.LBB33_333
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2535
	l.sfnei	r16, 0
	l.addi	r20, r20, 2028          # CFC
	l.bf	.LBB33_334
	l.nop	0
.LBB33_119:                             # %do.end314
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 508
	l.addi	r6, r3, 1
	l.lwz	r5, -88(r2)
	l.andi	r5, r5, 1
	l.addi	r20, r20, 1016          # CFC
	l.sfeqi	r5, 0
	l.addi	r16, r13, 1
	l.lwz	r15, 2460(r12)
	l.addi	r28, r28, 3048
	l.andi	r15, r15, 1
	l.addi	r26, r23, 1
	l.lwz	r25, 5008(r22)
	l.andi	r25, r25, 1
	l.bf	.LBB33_335
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2540
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2032          # CFC
	l.bf	.LBB33_336
	l.nop	0
.LBB33_338:
	l.addi	r18, r18, 509
	l.ori	r5, r6, 0
	l.addi	r20, r20, 1018          # CFC
	l.lwz	r6, -76(r2)
	l.ori	r15, r16, 0
	l.addi	r28, r28, 3054
	l.lwz	r16, 2472(r12)
	l.addi	r18, r18, 2545
	l.ori	r25, r26, 0
	l.lwz	r26, 5020(r22)
	l.addi	r20, r20, 2036          # CFC
.LBB33_120:                             # %do.end314
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 510
	l.xori	r4, r4, 48
	l.addi	r20, r20, 1020          # CFC
	l.sfeqi	r4, 0
	l.addi	r28, r28, 3060
	l.xori	r14, r14, 48
	l.xori	r24, r24, 48
	l.bf	.LBB33_339
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2550
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2040          # CFC
	l.bf	.LBB33_340
	l.nop	0
.LBB33_121:                             # %if.then321
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 511
	l.addi	r4, r0, 48
	l.sb	0(r3), r4
	l.addi	r20, r20, 1022          # CFC
	l.ori	r5, r3, 0
	l.addi	r14, r0, 48
	l.addi	r28, r28, 3066
	l.sb	2548(r13), r14
	l.ori	r15, r13, 0
	l.addi	r18, r18, 2555
	l.addi	r24, r0, 48
	l.sb	5096(r23), r24
	l.ori	r25, r23, 0
	l.addi	r20, r20, 2044          # CFC
	l.j	.LBB33_141
	l.nop	0                       # in delay slot
.LBB33_122:                             # %sw.bb324
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 512
	l.lwz	r3, -88(r2)
	l.andi	r3, r3, 32
	l.sfeqi	r3, 0
	l.addi	r20, r20, 1024          # CFC
	l.lwz	r5, -84(r2)
	l.lwz	r13, 2460(r12)
	l.andi	r13, r13, 32
	l.addi	r28, r28, 3072
	l.lwz	r15, 2464(r12)
	l.lwz	r23, 5008(r22)
	l.andi	r23, r23, 32
	l.lwz	r25, 5012(r22)
	l.bf	.LBB33_341
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2560
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2048          # CFC
	l.bf	.LBB33_342
	l.nop	0
.LBB33_123:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 513
	l.addi	r3, r0, 1
	l.addi	r20, r20, 1026          # CFC
	l.sfltui	r11, 10
	l.addi	r28, r28, 3078
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.bf	.LBB33_343
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2565
	l.sfltui	r8, 10
	l.addi	r20, r20, 2052          # CFC
	l.bf	.LBB33_344
	l.nop	0
.LBB33_124:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 514
	l.addi	r20, r20, 1028          # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 3084
	l.movhi	r13, 0
	l.addi	r18, r18, 2570
	l.movhi	r23, 0
	l.addi	r20, r20, 2056          # CFC
.LBB33_125:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 515
	l.lwz	r4, -80(r2)
	l.addi	r20, r20, 1030          # CFC
	l.sfeqi	r4, 0
	l.addi	r28, r28, 3090
	l.lwz	r14, 2468(r12)
	l.lwz	r24, 5016(r22)
	l.bf	.LBB33_345
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2575
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2060          # CFC
	l.bf	.LBB33_346
	l.nop	0
.LBB33_126:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 516
	l.addi	r20, r20, 1032          # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 3096
	l.movhi	r13, 0
	l.addi	r18, r18, 2580
	l.movhi	r23, 0
	l.addi	r20, r20, 2064          # CFC
.LBB33_127:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 517
	l.andi	r3, r3, 1
	l.sfnei	r3, 0
	l.addi	r20, r20, 1034          # CFC
	l.lwz	r7, -144(r2)
	l.andi	r13, r13, 1
	l.addi	r28, r28, 3102
	l.lwz	r17, 2404(r12)
	l.andi	r23, r23, 1
	l.lwz	r27, 4952(r22)
	l.bf	.LBB33_347
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2585
	l.sfnei	r13, 0
	l.addi	r20, r20, 2068          # CFC
	l.bf	.LBB33_348
	l.nop	0
.LBB33_350:
	l.addi	r18, r18, 518
	l.addi	r20, r20, 1036          # CFC
	l.lwz	r3, -80(r2)
	l.addi	r28, r28, 3108
	l.lwz	r13, 2468(r12)
	l.addi	r18, r18, 2590
	l.lwz	r23, 5016(r22)
	l.addi	r20, r20, 2072          # CFC
.LBB33_128:                             # %while.body346.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 519
	l.lwz	r7, -144(r2)
	l.addi	r20, r20, 1038          # CFC
	l.ori	r4, r11, 0
	l.lwz	r17, 2404(r12)
	l.addi	r28, r28, 3114
	l.ori	r14, r8, 0
	l.addi	r18, r18, 2595
	l.lwz	r27, 4952(r22)
	l.ori	r24, r31, 0
	l.addi	r20, r20, 2076          # CFC
.LBB33_129:                             # %while.body346
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 520
	l.sw	-112(r2), r7
	l.addi	r6, r0, 10
	l.sw	-80(r2), r3
	l.sw	-116(r2), r4
	l.movhi	r5, 0
	l.sw	2436(r12), r17
	l.addi	r16, r0, 10
	l.sw	2468(r12), r13
	l.sw	2432(r12), r14
	l.movhi	r15, 0
	l.sw	4984(r22), r27
	l.addi	r26, r0, 10
	l.sw	5016(r22), r23
	l.sw	4980(r22), r24
	l.movhi	r25, 0
	l.addi	r20, r20, 1040          # CFC
	l.jal	__udivdi3
	l.nop	0                       # in delay slot
	l.ori	r14, r12, 0
	l.ori	r24, r12, 0
	l.ori	r4, r12, 0
	l.addi	r5, r0, -1
	l.addi	r6, r0, -10
	l.sw	-120(r2), r11
	l.ori	r3, r11, 0
	l.sw	-100(r2), r4
	l.addi	r15, r0, -1
	l.addi	r16, r0, -10
	l.sw	2428(r12), r8
	l.ori	r13, r8, 0
	l.sw	2448(r12), r14
	l.addi	r25, r0, -1
	l.addi	r28, r28, 3120
	l.addi	r26, r0, -10
	l.sw	4976(r22), r31
	l.ori	r23, r31, 0
	l.sw	4996(r22), r24
	l.jal	__muldi3
	l.nop	0                       # in delay slot
	l.addi	r3, r0, 1
	l.lwz	r5, -80(r2)
	l.sfnei	r5, 0
	l.ori	r4, r3, 0
	l.addi	r13, r0, 1
	l.lwz	r15, 2468(r12)
	l.ori	r14, r13, 0
	l.addi	r23, r0, 1
	l.lwz	r25, 5016(r22)
	l.ori	r24, r23, 0
	l.bf	.LBB33_351
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2600
	l.sfnei	r15, 0
	l.addi	r20, r20, 2080          # CFC
	l.bf	.LBB33_352
	l.nop	0
.LBB33_134:                             # %while.body346
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 521
	l.addi	r20, r20, 1042          # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 3126
	l.movhi	r14, 0
	l.addi	r18, r18, 2605
	l.movhi	r24, 0
	l.addi	r20, r20, 2084          # CFC
.LBB33_135:                             # %while.body346
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 522
	l.lwz	r7, -116(r2)
	l.addi	r20, r20, 1044          # CFC
	l.sfgtui	r7, 99
	l.addi	r28, r28, 3132
	l.lwz	r17, 2432(r12)
	l.lwz	r27, 4980(r22)
	l.bf	.LBB33_353
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2610
	l.sfgtui	r17, 99
	l.addi	r20, r20, 2088          # CFC
	l.bf	.LBB33_354
	l.nop	0
.LBB33_136:                             # %while.body346
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 523
	l.addi	r20, r20, 1046          # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 3138
	l.movhi	r13, 0
	l.addi	r18, r18, 2615
	l.movhi	r23, 0
	l.addi	r20, r20, 2092          # CFC
.LBB33_137:                             # %while.body346
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 524
	l.sfeqi	r5, 0
	l.lwz	r6, -76(r2)
	l.addi	r20, r20, 1048          # CFC
	l.lwz	r11, -100(r2)
	l.lwz	r16, 2472(r12)
	l.addi	r28, r28, 3144
	l.lwz	r8, 2448(r12)
	l.lwz	r26, 5020(r22)
	l.lwz	r31, 4996(r22)
	l.bf	.LBB33_355
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2620
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2096          # CFC
	l.bf	.LBB33_356
	l.nop	0
.LBB33_358:
	l.addi	r18, r18, 525
	l.addi	r20, r20, 1050          # CFC
	l.lwz	r5, -84(r2)
	l.addi	r28, r28, 3150
	l.lwz	r15, 2464(r12)
	l.addi	r18, r18, 2625
	l.lwz	r25, 5012(r22)
	l.addi	r20, r20, 2100          # CFC
.LBB33_138:                             # %while.body346
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 526
	l.addi	r20, r20, 1052          # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 3156
	l.ori	r13, r14, 0
	l.addi	r18, r18, 2630
	l.ori	r23, r24, 0
	l.addi	r20, r20, 2104          # CFC
.LBB33_139:                             # %while.body346
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 527
	l.add	r14, r17, r12
	l.add	r24, r27, r12
	l.add	r4, r7, r12
	l.addi	r4, r4, 48
	l.lwz	r7, -112(r2)
	l.sb	-1(r7), r4
	l.addi	r7, r7, -1
	l.addi	r20, r20, 1054          # CFC
	l.andi	r3, r3, 1
	l.addi	r14, r14, 48
	l.lwz	r17, 2436(r12)
	l.sb	2547(r17), r14
	l.sfnei	r3, 0
	l.addi	r17, r17, -1
	l.addi	r24, r24, 48
	l.addi	r28, r28, 3162
	l.ori	r4, r11, 0
	l.andi	r13, r13, 1
	l.ori	r14, r8, 0
	l.lwz	r27, 4984(r22)
	l.sb	5095(r27), r24
	l.addi	r27, r27, -1
	l.andi	r23, r23, 1
	l.ori	r24, r31, 0
	l.bf	.LBB33_359
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2635
	l.sfnei	r13, 0
	l.addi	r20, r20, 2108          # CFC
	l.bf	.LBB33_360
	l.nop	0
.LBB33_362:
	l.addi	r18, r18, 528
	l.addi	r20, r20, 1056          # CFC
	l.lwz	r3, -120(r2)
	l.addi	r28, r28, 3168
	l.lwz	r13, 2428(r12)
	l.addi	r18, r18, 2640
	l.lwz	r23, 4976(r22)
	l.addi	r20, r20, 2112          # CFC
.LBB33_140:                             # %while.end354
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 529
	l.addi	r3, r11, 48
	l.sb	-1(r7), r3
	l.addi	r20, r20, 1058          # CFC
	l.addi	r5, r7, -1
	l.addi	r13, r8, 48
	l.addi	r28, r28, 3174
	l.sb	2547(r17), r13
	l.addi	r15, r17, -1
	l.addi	r18, r18, 2645
	l.addi	r23, r31, 48
	l.sb	5095(r27), r23
	l.addi	r25, r27, -1
	l.addi	r20, r20, 2116          # CFC
	l.j	.LBB33_141
	l.nop	0                       # in delay slot
.LBB33_130:                             # %if.then327
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 530
	l.sfltui	r11, 10
	l.addi	r20, r20, 1060          # CFC
	l.lwz	r3, -144(r2)
	l.addi	r28, r28, 3180
	l.lwz	r13, 2404(r12)
	l.lwz	r23, 4952(r22)
	l.bf	.LBB33_363
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2650
	l.sfltui	r8, 10
	l.addi	r20, r20, 2120          # CFC
	l.bf	.LBB33_364
	l.nop	0
.LBB33_131:                             # %while.body332.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 531
	l.ori	r4, r11, 0
	l.addi	r20, r20, 1062          # CFC
	l.lwz	r3, -144(r2)
	l.ori	r14, r8, 0
	l.addi	r28, r28, 3186
	l.lwz	r13, 2404(r12)
	l.addi	r18, r18, 2655
	l.ori	r24, r31, 0
	l.lwz	r23, 4952(r22)
	l.addi	r20, r20, 2124          # CFC
.LBB33_132:                             # %while.body332
                                        #   Parent Loop BB33_1 Depth=1
                                        #     Parent Loop BB33_2 Depth=2
                                        #       Parent Loop BB33_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 532
	l.addi	r5, r0, 10
	l.divu	r11, r4, r5
	l.muli	r5, r11, -10
	l.add	r5, r4, r5
	l.addi	r5, r5, 48
	l.addi	r15, r0, 10
	l.divu	r8, r14, r15
	l.addi	r20, r20, 1064          # CFC
	l.muli	r15, r8, -10
	l.sb	-1(r3), r5
	l.add	r15, r14, r15
	l.addi	r25, r0, 10
	l.addi	r3, r3, -1
	l.addi	r15, r15, 48
	l.divu	r31, r24, r25
	l.addi	r28, r28, 3192
	l.sfgtui	r4, 99
	l.sb	2547(r13), r15
	l.addi	r13, r13, -1
	l.muli	r25, r31, -10
	l.add	r25, r24, r25
	l.addi	r25, r25, 48
	l.sb	5095(r23), r25
	l.addi	r23, r23, -1
	l.bf	.LBB33_365
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2660
	l.sfgtui	r14, 99
	l.addi	r20, r20, 2128          # CFC
	l.bf	.LBB33_366
	l.nop	0
.LBB33_368:
	l.addi	r18, r18, 533
	l.addi	r20, r20, 1066          # CFC
	l.ori	r4, r11, 0
	l.addi	r28, r28, 3198
	l.ori	r14, r8, 0
	l.addi	r18, r18, 2665
	l.ori	r24, r31, 0
	l.addi	r20, r20, 2132          # CFC
.LBB33_133:                             # %while.end338
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 534
	l.addi	r4, r11, 48
	l.sb	-1(r3), r4
	l.addi	r20, r20, 1068          # CFC
	l.addi	r5, r3, -1
	l.addi	r14, r8, 48
	l.addi	r28, r28, 3204
	l.sb	2547(r13), r14
	l.addi	r15, r13, -1
	l.addi	r18, r18, 2670
	l.addi	r24, r31, 48
	l.sb	5095(r23), r24
	l.addi	r25, r23, -1
	l.addi	r20, r20, 2136          # CFC
.LBB33_141:                             # %if.end368
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 535
	l.lwz	r11, -84(r2)
	l.lwz	r3, -144(r2)
	l.sub	r7, r3, r5
	l.addi	r20, r20, 1070          # CFC
	l.lbz	r3, -13(r2)
	l.lwz	r8, 2464(r12)
	l.lwz	r13, 2404(r12)
	l.addi	r28, r28, 3210
	l.sub	r17, r13, r15
	l.lbz	r13, 2535(r12)
	l.lwz	r31, 5012(r22)
	l.addi	r18, r18, 2675
	l.lwz	r23, 4952(r22)
	l.sub	r27, r23, r25
	l.lbz	r23, 5083(r22)
	l.addi	r20, r20, 2140          # CFC
.LBB33_142:                             # %sw.epilog383
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 536
	l.sw	-136(r2), r5
	l.sw	-120(r2), r3
	l.andi	r3, r3, 255
	l.sfeqi	r3, 0
	l.ori	r4, r7, 0
	l.addi	r20, r20, 1072          # CFC
	l.ori	r7, r11, 0
	l.sw	2412(r12), r15
	l.sw	2428(r12), r13
	l.andi	r13, r13, 255
	l.ori	r14, r17, 0
	l.addi	r28, r28, 3216
	l.ori	r17, r8, 0
	l.sw	4960(r22), r25
	l.sw	4976(r22), r23
	l.andi	r23, r23, 255
	l.ori	r24, r27, 0
	l.ori	r27, r31, 0
	l.bf	.LBB33_369
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2680
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2144          # CFC
	l.bf	.LBB33_370
	l.nop	0
.LBB33_372:
	l.addi	r18, r18, 537
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 1074          # CFC
	l.ori	r5, r3, 0
	l.lwz	r13, 2460(r12)
	l.addi	r28, r28, 3222
	l.ori	r15, r13, 0
	l.addi	r18, r18, 2685
	l.lwz	r23, 5008(r22)
	l.ori	r25, r23, 0
	l.addi	r20, r20, 2148          # CFC
.LBB33_230:                             # %if.then385
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 538
	l.addi	r11, r4, 1
	l.sw	-88(r2), r3
	l.lwz	r5, -68(r2)
	l.addi	r20, r20, 1076          # CFC
	l.ori	r3, r4, 0
	l.lwz	r4, -120(r2)
	l.addi	r8, r14, 1
	l.sw	2460(r12), r13
	l.addi	r28, r28, 3228
	l.lwz	r15, 2480(r12)
	l.ori	r13, r14, 0
	l.lwz	r14, 2428(r12)
	l.addi	r31, r24, 1
	l.addi	r18, r18, 2690
	l.sw	5008(r22), r23
	l.lwz	r25, 5028(r22)
	l.ori	r23, r24, 0
	l.lwz	r24, 4976(r22)
	l.addi	r20, r20, 2152          # CFC
	l.j	.LBB33_150
	l.nop	0                       # in delay slot
.LBB33_84:                              # %if.else214
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 539
	l.lwz	r3, -136(r2)
	l.lwz	r13, 2412(r12)
	l.addi	r20, r20, 1078          # CFC
	l.lwz	r23, 4960(r22)
	l.jal	strlen
	l.nop	0                       # in delay slot
	l.ori	r3, r11, 0
	l.addi	r28, r28, 3234
	l.lwz	r5, -88(r2)
	l.ori	r13, r8, 0
	l.addi	r18, r18, 2695
	l.lwz	r15, 2460(r12)
	l.ori	r23, r31, 0
	l.lwz	r25, 5008(r22)
	l.addi	r20, r20, 2156          # CFC
.LBB33_85:                              # %if.end216
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 540
	l.movhi	r7, 0
	l.sb	-13(r2), r7
	l.ori	r4, r3, 0
	l.addi	r3, r0, 115
	l.addi	r20, r20, 1080          # CFC
	l.sw	-64(r2), r3
	l.movhi	r17, 0
	l.sb	2535(r12), r17
	l.ori	r14, r13, 0
	l.lwz	r6, -76(r2)
	l.addi	r28, r28, 3240
	l.addi	r13, r0, 115
	l.movhi	r27, 0
	l.sw	2484(r12), r13
	l.lwz	r16, 2472(r12)
	l.addi	r18, r18, 2700
	l.sb	5083(r22), r27
	l.ori	r24, r23, 0
	l.addi	r23, r0, 115
	l.sw	5032(r22), r23
	l.lwz	r26, 5020(r22)
	l.addi	r20, r20, 2160          # CFC
.LBB33_147:                             # %if.else386
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 541
	l.sw	-88(r2), r5
	l.andi	r3, r5, 2
	l.sfeqi	r3, 0
	l.addi	r20, r20, 1082          # CFC
	l.ori	r11, r4, 0
	l.sw	2460(r12), r15
	l.andi	r13, r15, 2
	l.addi	r28, r28, 3246
	l.ori	r8, r14, 0
	l.sw	5008(r22), r25
	l.andi	r23, r25, 2
	l.ori	r31, r24, 0
	l.bf	.LBB33_373
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2705
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2164          # CFC
	l.bf	.LBB33_374
	l.nop	0
.LBB33_376:
	l.addi	r18, r18, 542
	l.addi	r20, r20, 1084          # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 3252
	l.ori	r13, r14, 0
	l.addi	r18, r18, 2710
	l.ori	r23, r24, 0
	l.addi	r20, r20, 2168          # CFC
.LBB33_148:                             # %if.else386
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 543
	l.addi	r20, r20, 1086          # CFC
	l.addi	r11, r3, 2
	l.addi	r28, r28, 3258
	l.addi	r8, r13, 2
	l.addi	r18, r18, 2715
	l.addi	r31, r23, 2
	l.addi	r20, r20, 2172          # CFC
.LBB33_149:                             # %if.else386
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 544
	l.movhi	r4, 0
	l.addi	r20, r20, 1088          # CFC
	l.lwz	r5, -68(r2)
	l.movhi	r14, 0
	l.addi	r28, r28, 3264
	l.lwz	r15, 2480(r12)
	l.addi	r18, r18, 2720
	l.movhi	r24, 0
	l.lwz	r25, 5028(r22)
	l.addi	r20, r20, 2176          # CFC
.LBB33_150:                             # %if.end392
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 545
	l.sw	-124(r2), r3
	l.sfgts	r7, r11
	l.addi	r20, r20, 1090          # CFC
	l.sw	-116(r2), r7
	l.sw	2424(r12), r13
	l.addi	r28, r28, 3270
	l.sw	2432(r12), r17
	l.sw	4972(r22), r23
	l.sw	4980(r22), r27
	l.bf	.LBB33_377
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2725
	l.sfgts	r17, r8
	l.addi	r20, r20, 2180          # CFC
	l.bf	.LBB33_378
	l.nop	0
.LBB33_151:                             # %if.end392
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 546
	l.addi	r20, r20, 1092          # CFC
	l.sw	-116(r2), r11
	l.addi	r28, r28, 3276
	l.sw	2432(r12), r8
	l.addi	r18, r18, 2730
	l.sw	4980(r22), r31
	l.addi	r20, r20, 2184          # CFC
.LBB33_152:                             # %if.end392
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 547
	l.lwz	r3, -88(r2)
	l.andi	r3, r3, 132
	l.sw	-140(r2), r3
	l.sfnei	r3, 0
	l.sw	-84(r2), r7
	l.addi	r20, r20, 1094          # CFC
	l.sw	-132(r2), r11
	l.lwz	r13, 2460(r12)
	l.andi	r13, r13, 132
	l.sw	2408(r12), r13
	l.sw	2464(r12), r17
	l.addi	r28, r28, 3282
	l.sw	2416(r12), r8
	l.lwz	r23, 5008(r22)
	l.andi	r23, r23, 132
	l.sw	4956(r22), r23
	l.sw	5012(r22), r27
	l.sw	4964(r22), r31
	l.bf	.LBB33_379
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2735
	l.sfnei	r13, 0
	l.addi	r20, r20, 2188          # CFC
	l.bf	.LBB33_380
	l.nop	0
.LBB33_153:                             # %if.then402
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 548
	l.lwz	r3, -116(r2)
	l.lwz	r5, -68(r2)
	l.sub	r5, r5, r3
	l.addi	r20, r20, 1096          # CFC
	l.sfltsi	r5, 1
	l.lwz	r13, 2432(r12)
	l.lwz	r15, 2480(r12)
	l.addi	r28, r28, 3288
	l.sub	r15, r15, r13
	l.lwz	r23, 4980(r22)
	l.lwz	r25, 5028(r22)
	l.sub	r25, r25, r23
	l.bf	.LBB33_381
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2740
	l.sfltsi	r15, 1
	l.addi	r20, r20, 2192          # CFC
	l.bf	.LBB33_382
	l.nop	0
.LBB33_154:                             # %while.cond412.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 549
	l.lwz	r3, -92(r2)
	l.sub	r3, r3, r6
	l.addi	r11, r3, -1
	l.sfgtsi	r5, 16
	l.ori	r7, r5, 0
	l.lwz	r13, 2456(r12)
	l.addi	r20, r20, 1098          # CFC
	l.sub	r13, r13, r16
	l.addi	r8, r13, -1
	l.sw	-120(r2), r4
	l.ori	r17, r15, 0
	l.lwz	r23, 5004(r22)
	l.sw	-148(r2), r7
	l.addi	r28, r28, 3294
	l.sw	2428(r12), r14
	l.sw	2400(r12), r17
	l.sub	r23, r23, r26
	l.addi	r31, r23, -1
	l.ori	r27, r25, 0
	l.sw	4976(r22), r24
	l.sw	4948(r22), r27
	l.bf	.LBB33_383
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2745
	l.sfgtsi	r15, 16
	l.addi	r20, r20, 2196          # CFC
	l.bf	.LBB33_384
	l.nop	0
.LBB33_155:                             # %while.cond412.preheader.while.end421_crit_edge
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 550
	l.lwz	r3, -104(r2)
	l.add	r3, r3, r6
	l.addi	r20, r20, 1100          # CFC
	l.ori	r5, r7, 0
	l.lwz	r13, 2444(r12)
	l.addi	r28, r28, 3300
	l.add	r13, r13, r16
	l.ori	r15, r17, 0
	l.addi	r18, r18, 2750
	l.lwz	r23, 4992(r22)
	l.add	r23, r23, r26
	l.ori	r25, r27, 0
	l.addi	r20, r20, 2200          # CFC
	l.j	.LBB33_162
	l.nop	0                       # in delay slot
.LBB33_156:                             # %while.body415.lr.ph
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 551
	l.addi	r5, r0, 16
	l.addi	r20, r20, 1102          # CFC
	l.sfgtui	r11, 16
	l.addi	r28, r28, 3306
	l.addi	r15, r0, 16
	l.addi	r25, r0, 16
	l.bf	.LBB33_385
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2755
	l.sfgtui	r8, 16
	l.addi	r20, r20, 2204          # CFC
	l.bf	.LBB33_386
	l.nop	0
.LBB33_157:                             # %while.body415.lr.ph
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 552
	l.addi	r20, r20, 1104          # CFC
	l.ori	r5, r11, 0
	l.addi	r28, r28, 3312
	l.ori	r15, r8, 0
	l.addi	r18, r18, 2760
	l.ori	r25, r31, 0
	l.addi	r20, r20, 2208          # CFC
.LBB33_158:                             # %while.body415.lr.ph
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 553
	l.lwz	r3, -104(r2)
	l.add	r3, r3, r6
	l.sw	-100(r2), r3
	l.sw	-112(r2), r5
	l.addi	r20, r20, 1106          # CFC
	l.sfltsi	r5, 16
	l.lwz	r13, 2444(r12)
	l.add	r13, r13, r16
	l.sw	2448(r12), r13
	l.addi	r28, r28, 3318
	l.sw	2436(r12), r15
	l.lwz	r23, 4992(r22)
	l.add	r23, r23, r26
	l.sw	4996(r22), r23
	l.sw	4984(r22), r25
	l.bf	.LBB33_387
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2765
	l.sfltsi	r15, 16
	l.addi	r20, r20, 2212          # CFC
	l.bf	.LBB33_388
	l.nop	0
.LBB33_390:
	l.addi	r18, r18, 554
	l.addi	r20, r20, 1108          # CFC
	l.lwz	r5, -68(r2)
	l.addi	r28, r28, 3324
	l.lwz	r15, 2480(r12)
	l.addi	r18, r18, 2770
	l.lwz	r25, 5028(r22)
	l.addi	r20, r20, 2216          # CFC
.LBB33_159:                             # %while.body415.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 555
	l.sw	-156(r2), r11
	l.addi	r3, r5, -17
	l.lwz	r4, -116(r2)
	l.sub	r3, r3, r4
	l.addi	r4, r0, -16
	l.sw	2392(r12), r8
	l.addi	r13, r15, -17
	l.lwz	r14, 2432(r12)
	l.and	r3, r3, r4
	l.addi	r20, r20, 1110          # CFC
	l.sub	r13, r13, r14
	l.sw	4940(r22), r31
	l.sw	-160(r2), r3
	l.addi	r14, r0, -16
	l.addi	r23, r25, -17
	l.addi	r3, r5, -16
	l.and	r13, r13, r14
	l.lwz	r24, 4980(r22)
	l.sw	-164(r2), r3
	l.sw	2388(r12), r13
	l.addi	r28, r28, 3330
	l.sub	r23, r23, r24
	l.ori	r4, r7, 0
	l.addi	r13, r15, -16
	l.addi	r24, r0, -16
	l.lwz	r3, -108(r2)
	l.sw	2384(r12), r13
	l.and	r23, r23, r24
	l.lwz	r3, -100(r2)
	l.ori	r14, r17, 0
	l.sw	4936(r22), r23
	l.addi	r18, r18, 2775
	l.lwz	r3, -112(r2)
	l.lwz	r13, 2440(r12)
	l.addi	r23, r25, -16
	l.lwz	r13, 2448(r12)
	l.lwz	r13, 2436(r12)
	l.sw	4932(r22), r23
	l.ori	r24, r27, 0
	l.lwz	r23, 4988(r22)
	l.lwz	r23, 4996(r22)
	l.lwz	r23, 4984(r22)
	l.addi	r20, r20, 2220          # CFC
.LBB33_160:                             # %while.body415
                                        #   Parent Loop BB33_1 Depth=1
                                        #     Parent Loop BB33_2 Depth=2
                                        #       Parent Loop BB33_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 556
	l.sw	-80(r2), r4
	l.lwz	r3, -100(r2)
	l.lwz	r4, -108(r2)
	l.lwz	r5, -112(r2)
	l.sw	2468(r12), r14
	l.lwz	r13, 2448(r12)
	l.addi	r20, r20, 1112          # CFC
	l.lwz	r14, 2440(r12)
	l.lwz	r15, 2436(r12)
	l.sw	5016(r22), r24
	l.lwz	r23, 4996(r22)
	l.lwz	r24, 4988(r22)
	l.lwz	r25, 4984(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.addi	r28, r28, 3336
	l.lwz	r4, -80(r2)
	l.addi	r4, r4, -16
	l.sfgtsi	r4, 16
	l.lwz	r14, 2468(r12)
	l.addi	r14, r14, -16
	l.lwz	r24, 5016(r22)
	l.addi	r24, r24, -16
	l.bf	.LBB33_391
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2780
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 2224          # CFC
	l.bf	.LBB33_392
	l.nop	0
.LBB33_161:                             # %while.end421.loopexit
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 557
	l.lwz	r3, -116(r2)
	l.lwz	r4, -164(r2)
	l.sub	r3, r4, r3
	l.lwz	r4, -160(r2)
	l.sub	r5, r3, r4
	l.lwz	r13, 2432(r12)
	l.lwz	r14, 2384(r12)
	l.addi	r20, r20, 1114          # CFC
	l.sub	r13, r14, r13
	l.lwz	r6, -76(r2)
	l.lwz	r14, 2388(r12)
	l.lwz	r23, 4980(r22)
	l.lwz	r4, -120(r2)
	l.sub	r15, r13, r14
	l.lwz	r24, 4932(r22)
	l.lwz	r7, -148(r2)
	l.addi	r28, r28, 3342
	l.lwz	r16, 2472(r12)
	l.sub	r23, r24, r23
	l.lwz	r11, -156(r2)
	l.lwz	r14, 2428(r12)
	l.lwz	r24, 4936(r22)
	l.lwz	r3, -100(r2)
	l.lwz	r17, 2400(r12)
	l.addi	r18, r18, 2785
	l.sub	r25, r23, r24
	l.lwz	r8, 2392(r12)
	l.lwz	r13, 2448(r12)
	l.lwz	r26, 5020(r22)
	l.lwz	r24, 4976(r22)
	l.lwz	r27, 4948(r22)
	l.lwz	r31, 4940(r22)
	l.lwz	r23, 4996(r22)
	l.addi	r20, r20, 2228          # CFC
.LBB33_162:                             # %while.end421
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 558
	l.sfgtu	r11, r5
	l.sw	-100(r2), r5
	l.addi	r20, r20, 1116          # CFC
	l.movhi	r4, hi(vfnprintf.blanks)
	l.sw	2448(r12), r15
	l.addi	r28, r28, 3348
	l.movhi	r14, hi(vfnprintf.blanks)
	l.sw	4996(r22), r25
	l.movhi	r24, hi(vfnprintf.blanks)
	l.bf	.LBB33_393
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2790
	l.sfgtu	r8, r15
	l.addi	r20, r20, 2232          # CFC
	l.bf	.LBB33_394
	l.nop	0
.LBB33_163:                             # %while.end421
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 559
	l.addi	r20, r20, 1118          # CFC
	l.ori	r5, r11, 0
	l.addi	r28, r28, 3354
	l.ori	r15, r8, 0
	l.addi	r18, r18, 2795
	l.ori	r25, r31, 0
	l.addi	r20, r20, 2236          # CFC
.LBB33_164:                             # %while.end421
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 560
	l.sw	-80(r2), r5
	l.ori	r4, r4, lo(vfnprintf.blanks)
	l.lwz	r5, -80(r2)
	l.sw	2468(r12), r15
	l.ori	r14, r14, lo(vfnprintf.blanks)
	l.addi	r20, r20, 1120          # CFC
	l.lwz	r15, 2468(r12)
	l.sw	5016(r22), r25
	l.ori	r24, r24, lo(vfnprintf.blanks)
	l.lwz	r25, 5016(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r4, -80(r2)
	l.addi	r28, r28, 3360
	l.lwz	r3, -100(r2)
	l.sfges	r4, r3
	l.lwz	r14, 2468(r12)
	l.lwz	r13, 2448(r12)
	l.lwz	r24, 5016(r22)
	l.lwz	r23, 4996(r22)
	l.bf	.LBB33_395
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2800
	l.sfges	r14, r13
	l.addi	r20, r20, 2240          # CFC
	l.bf	.LBB33_396
	l.nop	0
.LBB33_165:                             # %print_back_to_string.exit819
                                        #   in Loop: Header=BB33_3 Depth=3
	l.j	.LBB33_9
	l.nop	0                       # in delay slot
.LBB33_166:                             # %do.end428
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 561
	l.lwz	r6, -76(r2)
	l.lwz	r3, -148(r2)
	l.add	r6, r3, r6
	l.lwz	r3, -68(r2)
	l.lwz	r7, -84(r2)
	l.addi	r20, r20, 1122          # CFC
	l.lwz	r16, 2472(r12)
	l.lwz	r13, 2400(r12)
	l.add	r16, r13, r16
	l.lwz	r4, -120(r2)
	l.lwz	r13, 2480(r12)
	l.addi	r28, r28, 3366
	l.lwz	r26, 5020(r22)
	l.lwz	r11, -132(r2)
	l.lwz	r17, 2464(r12)
	l.lwz	r23, 4948(r22)
	l.lwz	r14, 2428(r12)
	l.addi	r18, r18, 2805
	l.lwz	r8, 2416(r12)
	l.add	r26, r23, r26
	l.lwz	r23, 5028(r22)
	l.lwz	r27, 5012(r22)
	l.lwz	r24, 4976(r22)
	l.lwz	r31, 4964(r22)
	l.addi	r20, r20, 2244          # CFC
.LBB33_167:                             # %if.end432
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 562
	l.andi	r3, r4, 255
	l.addi	r20, r20, 1124          # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 3372
	l.andi	r13, r14, 255
	l.andi	r23, r24, 255
	l.bf	.LBB33_397
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2810
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2248          # CFC
	l.bf	.LBB33_398
	l.nop	0
.LBB33_168:                             # %if.then434
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 563
	l.lwz	r3, -104(r2)
	l.add	r3, r3, r6
	l.sw	-76(r2), r6
	l.lwz	r4, -92(r2)
	l.sub	r4, r4, r6
	l.lwz	r13, 2444(r12)
	l.add	r13, r13, r16
	l.addi	r20, r20, 1126          # CFC
	l.sw	2472(r12), r16
	l.addi	r4, r4, -1
	l.lwz	r14, 2456(r12)
	l.lwz	r23, 4992(r22)
	l.addi	r5, r0, 1
	l.sub	r14, r14, r16
	l.add	r23, r23, r26
	l.addi	r28, r28, 3378
	l.sfgtui	r4, 1
	l.addi	r14, r14, -1
	l.addi	r15, r0, 1
	l.sw	5020(r22), r26
	l.lwz	r24, 5004(r22)
	l.sub	r24, r24, r26
	l.addi	r24, r24, -1
	l.addi	r25, r0, 1
	l.bf	.LBB33_399
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2815
	l.sfgtui	r14, 1
	l.addi	r20, r20, 2252          # CFC
	l.bf	.LBB33_400
	l.nop	0
.LBB33_169:                             # %if.then434
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 564
	l.addi	r20, r20, 1128          # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 3384
	l.ori	r15, r14, 0
	l.addi	r18, r18, 2820
	l.ori	r25, r24, 0
	l.addi	r20, r20, 2256          # CFC
.LBB33_170:                             # %if.then434
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 565
	l.sw	-64(r2), r5
	l.addi	r4, r2, -13
	l.lwz	r5, -64(r2)
	l.sw	2484(r12), r15
	l.addi	r20, r20, 1130          # CFC
	l.addi	r14, r12, -13
	l.lwz	r15, 2484(r12)
	l.sw	5032(r22), r25
	l.addi	r24, r22, -13
	l.lwz	r25, 5032(r22)
	l.addi	r28, r28, 3390
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r4, -64(r2)
	l.sfgtsi	r4, 0
	l.lwz	r14, 2484(r12)
	l.lwz	r24, 5032(r22)
	l.bf	.LBB33_401
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2825
	l.sfgtsi	r14, 0
	l.addi	r20, r20, 2260          # CFC
	l.bf	.LBB33_402
	l.nop	0
.LBB33_171:                             # %print_back_to_string.exit810
                                        #   in Loop: Header=BB33_3 Depth=3
	l.j	.LBB33_9
	l.nop	0                       # in delay slot
.LBB33_172:                             # %if.end438
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 566
	l.lwz	r6, -76(r2)
	l.addi	r20, r20, 1132          # CFC
	l.addi	r6, r6, 1
	l.lwz	r16, 2472(r12)
	l.addi	r28, r28, 3396
	l.addi	r16, r16, 1
	l.addi	r18, r18, 2830
	l.lwz	r26, 5020(r22)
	l.addi	r26, r26, 1
	l.addi	r20, r20, 2264          # CFC
	l.j	.LBB33_179
	l.nop	0                       # in delay slot
.LBB33_173:                             # %if.else440
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 567
	l.lwz	r3, -88(r2)
	l.andi	r3, r3, 2
	l.sfeqi	r3, 0
	l.addi	r20, r20, 1134          # CFC
	l.lwz	r5, -68(r2)
	l.lwz	r13, 2460(r12)
	l.andi	r13, r13, 2
	l.addi	r28, r28, 3402
	l.lwz	r15, 2480(r12)
	l.lwz	r23, 5008(r22)
	l.andi	r23, r23, 2
	l.lwz	r25, 5028(r22)
	l.bf	.LBB33_403
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2835
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2268          # CFC
	l.bf	.LBB33_404
	l.nop	0
.LBB33_174:                             # %if.then443
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 568
	l.addi	r3, r0, 48
	l.sb	-55(r2), r3
	l.lwz	r3, -64(r2)
	l.sb	-54(r2), r3
	l.lwz	r3, -104(r2)
	l.addi	r13, r0, 48
	l.sb	2493(r12), r13
	l.lwz	r13, 2484(r12)
	l.add	r3, r3, r6
	l.sb	2494(r12), r13
	l.addi	r23, r0, 48
	l.addi	r20, r20, 1136          # CFC
	l.sw	-76(r2), r6
	l.lwz	r13, 2444(r12)
	l.sb	5041(r22), r23
	l.lwz	r4, -92(r2)
	l.add	r13, r13, r16
	l.lwz	r23, 5032(r22)
	l.sub	r4, r4, r6
	l.sw	2472(r12), r16
	l.sb	5042(r22), r23
	l.addi	r4, r4, -1
	l.lwz	r14, 2456(r12)
	l.addi	r28, r28, 3408
	l.lwz	r23, 4992(r22)
	l.addi	r5, r0, 2
	l.sub	r14, r14, r16
	l.add	r23, r23, r26
	l.sfgtui	r4, 2
	l.addi	r14, r14, -1
	l.addi	r15, r0, 2
	l.sw	5020(r22), r26
	l.lwz	r24, 5004(r22)
	l.sub	r24, r24, r26
	l.addi	r24, r24, -1
	l.addi	r25, r0, 2
	l.bf	.LBB33_405
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2840
	l.sfgtui	r14, 2
	l.addi	r20, r20, 2272          # CFC
	l.bf	.LBB33_406
	l.nop	0
.LBB33_175:                             # %if.then443
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 569
	l.addi	r20, r20, 1138          # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 3414
	l.ori	r15, r14, 0
	l.addi	r18, r18, 2845
	l.ori	r25, r24, 0
	l.addi	r20, r20, 2276          # CFC
.LBB33_176:                             # %if.then443
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 570
	l.sw	-64(r2), r5
	l.addi	r4, r2, -55
	l.lwz	r5, -64(r2)
	l.sw	2484(r12), r15
	l.addi	r20, r20, 1140          # CFC
	l.addi	r14, r12, -55
	l.lwz	r15, 2484(r12)
	l.sw	5032(r22), r25
	l.addi	r24, r22, -55
	l.lwz	r25, 5032(r22)
	l.addi	r28, r28, 3420
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r4, -64(r2)
	l.sfgtsi	r4, 1
	l.lwz	r14, 2484(r12)
	l.lwz	r24, 5032(r22)
	l.bf	.LBB33_407
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2850
	l.sfgtsi	r14, 1
	l.addi	r20, r20, 2280          # CFC
	l.bf	.LBB33_408
	l.nop	0
.LBB33_177:                             # %print_back_to_string.exit801
                                        #   in Loop: Header=BB33_3 Depth=3
	l.j	.LBB33_9
	l.nop	0                       # in delay slot
.LBB33_178:                             # %if.end451
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 571
	l.lwz	r6, -76(r2)
	l.addi	r20, r20, 1142          # CFC
	l.addi	r6, r6, 2
	l.lwz	r16, 2472(r12)
	l.addi	r28, r28, 3426
	l.addi	r16, r16, 2
	l.addi	r18, r18, 2855
	l.lwz	r26, 5020(r22)
	l.addi	r26, r26, 2
	l.addi	r20, r20, 2284          # CFC
.LBB33_179:                             # %if.end454
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 572
	l.lwz	r5, -68(r2)
	l.lwz	r7, -84(r2)
	l.addi	r20, r20, 1144          # CFC
	l.lwz	r11, -132(r2)
	l.lwz	r15, 2480(r12)
	l.addi	r28, r28, 3432
	l.lwz	r17, 2464(r12)
	l.lwz	r8, 2416(r12)
	l.addi	r18, r18, 2860
	l.lwz	r25, 5028(r22)
	l.lwz	r27, 5012(r22)
	l.lwz	r31, 4964(r22)
	l.addi	r20, r20, 2288          # CFC
.LBB33_180:                             # %if.end454
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 573
	l.lwz	r3, -140(r2)
	l.addi	r20, r20, 1146          # CFC
	l.sfnei	r3, 128
	l.addi	r28, r28, 3438
	l.lwz	r13, 2408(r12)
	l.lwz	r23, 4956(r22)
	l.bf	.LBB33_409
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2865
	l.sfnei	r13, 128
	l.addi	r20, r20, 2292          # CFC
	l.bf	.LBB33_410
	l.nop	0
.LBB33_181:                             # %if.then458
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 574
	l.lwz	r3, -116(r2)
	l.sub	r4, r5, r3
	l.addi	r20, r20, 1148          # CFC
	l.sfltsi	r4, 1
	l.lwz	r13, 2432(r12)
	l.addi	r28, r28, 3444
	l.sub	r14, r15, r13
	l.lwz	r23, 4980(r22)
	l.sub	r24, r25, r23
	l.bf	.LBB33_411
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2870
	l.sfltsi	r14, 1
	l.addi	r20, r20, 2296          # CFC
	l.bf	.LBB33_412
	l.nop	0
.LBB33_182:                             # %while.cond468.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 575
	l.lwz	r3, -92(r2)
	l.sub	r3, r3, r6
	l.addi	r7, r3, -1
	l.sfgtsi	r4, 16
	l.sw	-76(r2), r6
	l.addi	r20, r20, 1150          # CFC
	l.sw	-112(r2), r4
	l.lwz	r13, 2456(r12)
	l.sub	r13, r13, r16
	l.addi	r17, r13, -1
	l.sw	2472(r12), r16
	l.addi	r28, r28, 3450
	l.sw	2436(r12), r14
	l.lwz	r23, 5004(r22)
	l.sub	r23, r23, r26
	l.addi	r27, r23, -1
	l.sw	5020(r22), r26
	l.sw	4984(r22), r24
	l.bf	.LBB33_413
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2875
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 2300          # CFC
	l.bf	.LBB33_414
	l.nop	0
.LBB33_183:                             # %while.cond468.preheader.while.end477_crit_edge
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 576
	l.lwz	r3, -104(r2)
	l.add	r11, r3, r6
	l.addi	r20, r20, 1152          # CFC
	l.ori	r3, r4, 0
	l.lwz	r13, 2444(r12)
	l.addi	r28, r28, 3456
	l.add	r8, r13, r16
	l.ori	r13, r14, 0
	l.addi	r18, r18, 2880
	l.lwz	r23, 4992(r22)
	l.add	r31, r23, r26
	l.ori	r23, r24, 0
	l.addi	r20, r20, 2304          # CFC
	l.j	.LBB33_190
	l.nop	0                       # in delay slot
.LBB33_184:                             # %while.body471.lr.ph
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 577
	l.addi	r3, r0, 16
	l.addi	r20, r20, 1154          # CFC
	l.sfgtui	r7, 16
	l.addi	r28, r28, 3462
	l.addi	r13, r0, 16
	l.addi	r23, r0, 16
	l.bf	.LBB33_415
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2885
	l.sfgtui	r17, 16
	l.addi	r20, r20, 2308          # CFC
	l.bf	.LBB33_416
	l.nop	0
.LBB33_185:                             # %while.body471.lr.ph
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 578
	l.addi	r20, r20, 1156          # CFC
	l.ori	r3, r7, 0
	l.addi	r28, r28, 3468
	l.ori	r13, r17, 0
	l.addi	r18, r18, 2890
	l.ori	r23, r27, 0
	l.addi	r20, r20, 2312          # CFC
.LBB33_186:                             # %while.body471.lr.ph
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 579
	l.sw	-80(r2), r3
	l.lwz	r3, -104(r2)
	l.add	r11, r3, r6
	l.lwz	r3, -80(r2)
	l.addi	r20, r20, 1158          # CFC
	l.sfltsi	r3, 16
	l.sw	2468(r12), r13
	l.lwz	r13, 2444(r12)
	l.add	r8, r13, r16
	l.addi	r28, r28, 3474
	l.lwz	r13, 2468(r12)
	l.sw	5016(r22), r23
	l.lwz	r23, 4992(r22)
	l.add	r31, r23, r26
	l.lwz	r23, 5016(r22)
	l.bf	.LBB33_417
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2895
	l.sfltsi	r13, 16
	l.addi	r20, r20, 2316          # CFC
	l.bf	.LBB33_418
	l.nop	0
.LBB33_187:                             # %while.body471.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 580
	l.sw	-120(r2), r7
	l.addi	r3, r5, -17
	l.ori	r6, r4, 0
	l.lwz	r4, -116(r2)
	l.sub	r3, r3, r4
	l.sw	2428(r12), r17
	l.addi	r13, r15, -17
	l.ori	r16, r14, 0
	l.addi	r4, r0, -16
	l.addi	r20, r20, 1160          # CFC
	l.lwz	r14, 2432(r12)
	l.sw	4976(r22), r27
	l.and	r3, r3, r4
	l.sub	r13, r13, r14
	l.addi	r23, r25, -17
	l.sw	-140(r2), r3
	l.addi	r14, r0, -16
	l.ori	r26, r24, 0
	l.addi	r3, r5, -16
	l.and	r13, r13, r14
	l.addi	r28, r28, 3480
	l.lwz	r24, 4980(r22)
	l.sw	-148(r2), r3
	l.sw	2408(r12), r13
	l.sub	r23, r23, r24
	l.ori	r3, r6, 0
	l.addi	r13, r15, -16
	l.addi	r24, r0, -16
	l.lwz	r4, -96(r2)
	l.sw	2400(r12), r13
	l.and	r23, r23, r24
	l.addi	r18, r18, 2900
	l.sw	-100(r2), r11
	l.ori	r13, r16, 0
	l.sw	4956(r22), r23
	l.lwz	r14, 2452(r12)
	l.sw	2448(r12), r8
	l.addi	r23, r25, -16
	l.sw	4948(r22), r23
	l.ori	r23, r26, 0
	l.lwz	r24, 5000(r22)
	l.sw	4996(r22), r31
	l.addi	r20, r20, 2320          # CFC
.LBB33_188:                             # %while.body471
                                        #   Parent Loop BB33_1 Depth=1
                                        #     Parent Loop BB33_2 Depth=2
                                        #       Parent Loop BB33_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 581
	l.sw	-64(r2), r3
	l.ori	r3, r11, 0
	l.lwz	r4, -96(r2)
	l.lwz	r5, -80(r2)
	l.sw	2484(r12), r13
	l.ori	r13, r8, 0
	l.lwz	r14, 2452(r12)
	l.addi	r20, r20, 1162          # CFC
	l.lwz	r15, 2468(r12)
	l.sw	5032(r22), r23
	l.ori	r23, r31, 0
	l.lwz	r24, 5000(r22)
	l.lwz	r25, 5016(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r3, -64(r2)
	l.lwz	r11, -100(r2)
	l.addi	r28, r28, 3486
	l.addi	r3, r3, -16
	l.sfgtsi	r3, 16
	l.lwz	r13, 2484(r12)
	l.lwz	r8, 2448(r12)
	l.addi	r13, r13, -16
	l.lwz	r23, 5032(r22)
	l.lwz	r31, 4996(r22)
	l.addi	r23, r23, -16
	l.bf	.LBB33_419
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2905
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 2324          # CFC
	l.bf	.LBB33_420
	l.nop	0
.LBB33_189:                             # %while.end477.loopexit
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 582
	l.lwz	r3, -116(r2)
	l.lwz	r4, -148(r2)
	l.sub	r3, r4, r3
	l.lwz	r4, -140(r2)
	l.sub	r3, r3, r4
	l.addi	r20, r20, 1164          # CFC
	l.lwz	r13, 2432(r12)
	l.lwz	r14, 2400(r12)
	l.sub	r13, r14, r13
	l.lwz	r4, -112(r2)
	l.lwz	r14, 2408(r12)
	l.addi	r28, r28, 3492
	l.lwz	r23, 4980(r22)
	l.lwz	r7, -120(r2)
	l.sub	r13, r13, r14
	l.lwz	r24, 4948(r22)
	l.lwz	r14, 2436(r12)
	l.addi	r18, r18, 2910
	l.lwz	r17, 2428(r12)
	l.sub	r23, r24, r23
	l.lwz	r24, 4956(r22)
	l.sub	r23, r23, r24
	l.lwz	r24, 4984(r22)
	l.lwz	r27, 4976(r22)
	l.addi	r20, r20, 2328          # CFC
.LBB33_190:                             # %while.end477
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 583
	l.sfgtu	r7, r3
	l.sw	-80(r2), r3
	l.addi	r20, r20, 1166          # CFC
	l.ori	r4, r3, 0
	l.sw	2468(r12), r13
	l.addi	r28, r28, 3498
	l.ori	r14, r13, 0
	l.sw	5016(r22), r23
	l.ori	r24, r23, 0
	l.bf	.LBB33_421
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2915
	l.sfgtu	r17, r13
	l.addi	r20, r20, 2332          # CFC
	l.bf	.LBB33_422
	l.nop	0
.LBB33_424:
	l.addi	r18, r18, 584
	l.addi	r20, r20, 1168          # CFC
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 3504
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r18, r18, 2920
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.addi	r20, r20, 2336          # CFC
.LBB33_191:                             # %while.end477
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 585
	l.addi	r20, r20, 1170          # CFC
	l.ori	r4, r7, 0
	l.addi	r28, r28, 3510
	l.ori	r14, r17, 0
	l.addi	r18, r18, 2925
	l.ori	r24, r27, 0
	l.addi	r20, r20, 2340          # CFC
.LBB33_192:                             # %while.end477
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 586
	l.sw	-64(r2), r4
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r3, r11, 0
	l.lwz	r5, -64(r2)
	l.sw	2484(r12), r14
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.addi	r20, r20, 1172          # CFC
	l.ori	r13, r8, 0
	l.lwz	r15, 2484(r12)
	l.sw	5032(r22), r24
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r23, r31, 0
	l.lwz	r25, 5032(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.addi	r28, r28, 3516
	l.lwz	r4, -64(r2)
	l.lwz	r3, -80(r2)
	l.sfges	r4, r3
	l.lwz	r14, 2484(r12)
	l.lwz	r13, 2468(r12)
	l.lwz	r24, 5032(r22)
	l.lwz	r23, 5016(r22)
	l.bf	.LBB33_425
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2930
	l.sfges	r14, r13
	l.addi	r20, r20, 2344          # CFC
	l.bf	.LBB33_426
	l.nop	0
.LBB33_193:                             # %print_back_to_string.exit783
                                        #   in Loop: Header=BB33_3 Depth=3
	l.j	.LBB33_9
	l.nop	0                       # in delay slot
.LBB33_194:                             # %do.end484
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 587
	l.lwz	r6, -76(r2)
	l.lwz	r3, -112(r2)
	l.add	r6, r6, r3
	l.addi	r20, r20, 1174          # CFC
	l.lwz	r7, -84(r2)
	l.lwz	r11, -132(r2)
	l.lwz	r16, 2472(r12)
	l.lwz	r13, 2436(r12)
	l.addi	r28, r28, 3522
	l.add	r16, r16, r13
	l.lwz	r17, 2464(r12)
	l.lwz	r8, 2416(r12)
	l.lwz	r26, 5020(r22)
	l.addi	r18, r18, 2935
	l.lwz	r23, 4984(r22)
	l.add	r26, r26, r23
	l.lwz	r27, 5012(r22)
	l.lwz	r31, 4964(r22)
	l.addi	r20, r20, 2348          # CFC
.LBB33_195:                             # %if.end488
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 588
	l.sub	r5, r7, r11
	l.addi	r20, r20, 1176          # CFC
	l.sfltsi	r5, 1
	l.addi	r28, r28, 3528
	l.sub	r15, r17, r8
	l.sub	r25, r27, r31
	l.bf	.LBB33_427
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2940
	l.sfltsi	r15, 1
	l.addi	r20, r20, 2352          # CFC
	l.bf	.LBB33_428
	l.nop	0
.LBB33_196:                             # %while.cond498.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 589
	l.lwz	r3, -92(r2)
	l.sub	r3, r3, r6
	l.addi	r4, r3, -1
	l.sfgtsi	r5, 16
	l.sw	-76(r2), r6
	l.addi	r20, r20, 1178          # CFC
	l.sw	-100(r2), r5
	l.lwz	r13, 2456(r12)
	l.sub	r13, r13, r16
	l.addi	r14, r13, -1
	l.sw	2472(r12), r16
	l.addi	r28, r28, 3534
	l.sw	2448(r12), r15
	l.lwz	r23, 5004(r22)
	l.sub	r23, r23, r26
	l.addi	r24, r23, -1
	l.sw	5020(r22), r26
	l.sw	4996(r22), r25
	l.bf	.LBB33_429
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2945
	l.sfgtsi	r15, 16
	l.addi	r20, r20, 2356          # CFC
	l.bf	.LBB33_430
	l.nop	0
.LBB33_197:                             # %while.cond498.preheader.while.end507_crit_edge
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 590
	l.lwz	r3, -104(r2)
	l.add	r6, r3, r6
	l.addi	r20, r20, 1180          # CFC
	l.ori	r3, r5, 0
	l.lwz	r13, 2444(r12)
	l.addi	r28, r28, 3540
	l.add	r16, r13, r16
	l.ori	r13, r15, 0
	l.addi	r18, r18, 2950
	l.lwz	r23, 4992(r22)
	l.add	r26, r23, r26
	l.ori	r23, r25, 0
	l.addi	r20, r20, 2360          # CFC
	l.j	.LBB33_204
	l.nop	0                       # in delay slot
.LBB33_198:                             # %while.body501.lr.ph
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 591
	l.addi	r3, r0, 16
	l.addi	r20, r20, 1182          # CFC
	l.sfgtui	r4, 16
	l.addi	r28, r28, 3546
	l.addi	r13, r0, 16
	l.addi	r23, r0, 16
	l.bf	.LBB33_431
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2955
	l.sfgtui	r14, 16
	l.addi	r20, r20, 2364          # CFC
	l.bf	.LBB33_432
	l.nop	0
.LBB33_199:                             # %while.body501.lr.ph
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 592
	l.addi	r20, r20, 1184          # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 3552
	l.ori	r13, r14, 0
	l.addi	r18, r18, 2960
	l.ori	r23, r24, 0
	l.addi	r20, r20, 2368          # CFC
.LBB33_200:                             # %while.body501.lr.ph
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 593
	l.sw	-80(r2), r3
	l.lwz	r3, -104(r2)
	l.add	r6, r3, r6
	l.lwz	r3, -80(r2)
	l.addi	r20, r20, 1186          # CFC
	l.sfltsi	r3, 16
	l.sw	2468(r12), r13
	l.lwz	r13, 2444(r12)
	l.add	r16, r13, r16
	l.addi	r28, r28, 3558
	l.lwz	r13, 2468(r12)
	l.sw	5016(r22), r23
	l.lwz	r23, 4992(r22)
	l.add	r26, r23, r26
	l.lwz	r23, 5016(r22)
	l.bf	.LBB33_433
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2965
	l.sfltsi	r13, 16
	l.addi	r20, r20, 2372          # CFC
	l.bf	.LBB33_434
	l.nop	0
.LBB33_201:                             # %while.body501.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 594
	l.sw	-112(r2), r4
	l.addi	r3, r7, -17
	l.sub	r3, r3, r11
	l.addi	r4, r0, -16
	l.and	r3, r3, r4
	l.sw	2436(r12), r14
	l.addi	r13, r17, -17
	l.addi	r20, r20, 1188          # CFC
	l.sub	r13, r13, r8
	l.sw	-120(r2), r3
	l.addi	r14, r0, -16
	l.sw	4984(r22), r24
	l.addi	r3, r7, -16
	l.and	r13, r13, r14
	l.addi	r23, r27, -17
	l.sw	-140(r2), r3
	l.addi	r28, r28, 3564
	l.sw	2428(r12), r13
	l.sub	r23, r23, r31
	l.ori	r3, r5, 0
	l.addi	r13, r17, -16
	l.addi	r24, r0, -16
	l.sw	-84(r2), r6
	l.sw	2408(r12), r13
	l.addi	r18, r18, 2970
	l.and	r23, r23, r24
	l.ori	r13, r15, 0
	l.sw	2464(r12), r16
	l.sw	4976(r22), r23
	l.addi	r23, r27, -16
	l.sw	4956(r22), r23
	l.ori	r23, r25, 0
	l.sw	5012(r22), r26
	l.addi	r20, r20, 2376          # CFC
.LBB33_202:                             # %while.body501
                                        #   Parent Loop BB33_1 Depth=1
                                        #     Parent Loop BB33_2 Depth=2
                                        #       Parent Loop BB33_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 595
	l.sw	-64(r2), r3
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r3, r6, 0
	l.lwz	r5, -80(r2)
	l.sw	2484(r12), r13
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.addi	r20, r20, 1190          # CFC
	l.ori	r13, r16, 0
	l.lwz	r15, 2468(r12)
	l.sw	5032(r22), r23
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r23, r26, 0
	l.lwz	r25, 5016(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r3, -64(r2)
	l.addi	r28, r28, 3570
	l.lwz	r6, -84(r2)
	l.addi	r3, r3, -16
	l.sfgtsi	r3, 16
	l.lwz	r13, 2484(r12)
	l.lwz	r16, 2464(r12)
	l.addi	r13, r13, -16
	l.lwz	r23, 5032(r22)
	l.lwz	r26, 5012(r22)
	l.addi	r23, r23, -16
	l.bf	.LBB33_435
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2975
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 2380          # CFC
	l.bf	.LBB33_436
	l.nop	0
.LBB33_203:                             # %while.end507.loopexit
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 596
	l.lwz	r3, -132(r2)
	l.lwz	r4, -140(r2)
	l.sub	r3, r4, r3
	l.lwz	r4, -120(r2)
	l.sub	r3, r3, r4
	l.addi	r20, r20, 1192          # CFC
	l.lwz	r13, 2416(r12)
	l.lwz	r14, 2408(r12)
	l.sub	r13, r14, r13
	l.lwz	r5, -100(r2)
	l.lwz	r14, 2428(r12)
	l.addi	r28, r28, 3576
	l.lwz	r23, 4964(r22)
	l.lwz	r4, -112(r2)
	l.sub	r13, r13, r14
	l.lwz	r24, 4956(r22)
	l.lwz	r15, 2448(r12)
	l.addi	r18, r18, 2980
	l.lwz	r14, 2436(r12)
	l.sub	r23, r24, r23
	l.lwz	r24, 4976(r22)
	l.sub	r23, r23, r24
	l.lwz	r25, 4996(r22)
	l.lwz	r24, 4984(r22)
	l.addi	r20, r20, 2384          # CFC
.LBB33_204:                             # %while.end507
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 597
	l.sfgtu	r4, r3
	l.sw	-80(r2), r3
	l.addi	r20, r20, 1194          # CFC
	l.ori	r5, r3, 0
	l.sw	2468(r12), r13
	l.addi	r28, r28, 3582
	l.ori	r15, r13, 0
	l.sw	5016(r22), r23
	l.ori	r25, r23, 0
	l.bf	.LBB33_437
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2985
	l.sfgtu	r14, r13
	l.addi	r20, r20, 2388          # CFC
	l.bf	.LBB33_438
	l.nop	0
.LBB33_440:
	l.addi	r18, r18, 598
	l.addi	r20, r20, 1196          # CFC
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 3588
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r18, r18, 2990
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.addi	r20, r20, 2392          # CFC
.LBB33_205:                             # %while.end507
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 599
	l.addi	r20, r20, 1198          # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 3594
	l.ori	r15, r14, 0
	l.addi	r18, r18, 2995
	l.ori	r25, r24, 0
	l.addi	r20, r20, 2396          # CFC
.LBB33_206:                             # %while.end507
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 600
	l.sw	-64(r2), r5
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r3, r6, 0
	l.lwz	r5, -64(r2)
	l.sw	2484(r12), r15
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.addi	r20, r20, 1200          # CFC
	l.ori	r13, r16, 0
	l.lwz	r15, 2484(r12)
	l.sw	5032(r22), r25
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r23, r26, 0
	l.lwz	r25, 5032(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.addi	r28, r28, 3600
	l.lwz	r4, -64(r2)
	l.lwz	r3, -80(r2)
	l.sfges	r4, r3
	l.lwz	r14, 2484(r12)
	l.lwz	r13, 2468(r12)
	l.lwz	r24, 5032(r22)
	l.lwz	r23, 5016(r22)
	l.bf	.LBB33_441
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3000
	l.sfges	r14, r13
	l.addi	r20, r20, 2400          # CFC
	l.bf	.LBB33_442
	l.nop	0
.LBB33_207:                             # %print_back_to_string.exit765
                                        #   in Loop: Header=BB33_3 Depth=3
	l.j	.LBB33_9
	l.nop	0                       # in delay slot
.LBB33_208:                             # %do.end514
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 601
	l.lwz	r6, -76(r2)
	l.lwz	r3, -100(r2)
	l.addi	r20, r20, 1202          # CFC
	l.add	r6, r6, r3
	l.lwz	r16, 2472(r12)
	l.addi	r28, r28, 3606
	l.lwz	r13, 2448(r12)
	l.add	r16, r16, r13
	l.addi	r18, r18, 3005
	l.lwz	r26, 5020(r22)
	l.lwz	r23, 4996(r22)
	l.add	r26, r26, r23
	l.addi	r20, r20, 2404          # CFC
.LBB33_209:                             # %if.end517
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 602
	l.lwz	r3, -104(r2)
	l.add	r3, r3, r6
	l.sw	-76(r2), r6
	l.lwz	r4, -92(r2)
	l.sub	r4, r4, r6
	l.lwz	r13, 2444(r12)
	l.add	r13, r13, r16
	l.sw	2472(r12), r16
	l.addi	r20, r20, 1204          # CFC
	l.addi	r6, r4, -1
	l.lwz	r14, 2456(r12)
	l.lwz	r23, 4992(r22)
	l.lwz	r5, -124(r2)
	l.sub	r14, r14, r16
	l.add	r23, r23, r26
	l.sfgtu	r6, r5
	l.addi	r16, r14, -1
	l.addi	r28, r28, 3612
	l.sw	5020(r22), r26
	l.lwz	r4, -136(r2)
	l.lwz	r15, 2424(r12)
	l.lwz	r14, 2412(r12)
	l.lwz	r24, 5004(r22)
	l.sub	r24, r24, r26
	l.addi	r26, r24, -1
	l.lwz	r25, 4972(r22)
	l.lwz	r24, 4960(r22)
	l.bf	.LBB33_443
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3010
	l.sfgtu	r16, r15
	l.addi	r20, r20, 2408          # CFC
	l.bf	.LBB33_444
	l.nop	0
.LBB33_210:                             # %if.end517
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 603
	l.addi	r20, r20, 1206          # CFC
	l.ori	r5, r6, 0
	l.addi	r28, r28, 3618
	l.ori	r15, r16, 0
	l.addi	r18, r18, 3015
	l.ori	r25, r26, 0
	l.addi	r20, r20, 2412          # CFC
.LBB33_211:                             # %if.end517
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 604
	l.sw	-64(r2), r5
	l.sw	2484(r12), r15
	l.sw	5032(r22), r25
	l.addi	r20, r20, 1208          # CFC
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r4, -64(r2)
	l.lwz	r3, -124(r2)
	l.sfges	r4, r3
	l.addi	r28, r28, 3624
	l.lwz	r14, 2484(r12)
	l.lwz	r13, 2424(r12)
	l.lwz	r24, 5032(r22)
	l.lwz	r23, 4972(r22)
	l.bf	.LBB33_445
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3020
	l.sfges	r14, r13
	l.addi	r20, r20, 2416          # CFC
	l.bf	.LBB33_446
	l.nop	0
.LBB33_212:                             # %print_back_to_string.exit756
                                        #   in Loop: Header=BB33_3 Depth=3
	l.j	.LBB33_9
	l.nop	0                       # in delay slot
.LBB33_213:                             # %if.end521
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 605
	l.lwz	r7, -76(r2)
	l.add	r7, r7, r3
	l.lwz	r3, -88(r2)
	l.andi	r3, r3, 4
	l.sfeqi	r3, 0
	l.lwz	r17, 2472(r12)
	l.add	r17, r17, r13
	l.addi	r20, r20, 1210          # CFC
	l.lwz	r13, 2460(r12)
	l.movhi	r11, hi(.L.str.1)
	l.andi	r13, r13, 4
	l.lwz	r27, 5020(r22)
	l.lwz	r5, -60(r2)
	l.movhi	r8, hi(.L.str.1)
	l.add	r27, r27, r23
	l.addi	r28, r28, 3630
	l.lwz	r6, -68(r2)
	l.lwz	r15, 2488(r12)
	l.lwz	r16, 2480(r12)
	l.lwz	r23, 5008(r22)
	l.andi	r23, r23, 4
	l.movhi	r31, hi(.L.str.1)
	l.lwz	r25, 5036(r22)
	l.lwz	r26, 5028(r22)
	l.bf	.LBB33_447
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3025
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2420          # CFC
	l.bf	.LBB33_448
	l.nop	0
.LBB33_214:                             # %if.then525
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 606
	l.lwz	r3, -116(r2)
	l.sub	r4, r6, r3
	l.addi	r20, r20, 1212          # CFC
	l.sfltsi	r4, 1
	l.lwz	r13, 2432(r12)
	l.addi	r28, r28, 3636
	l.sub	r14, r16, r13
	l.lwz	r23, 4980(r22)
	l.sub	r24, r26, r23
	l.bf	.LBB33_449
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3030
	l.sfltsi	r14, 1
	l.addi	r20, r20, 2424          # CFC
	l.bf	.LBB33_450
	l.nop	0
.LBB33_215:                             # %while.cond535.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 607
	l.lwz	r3, -92(r2)
	l.ori	r11, r7, 0
	l.sub	r3, r3, r11
	l.addi	r3, r3, -1
	l.sfgtsi	r4, 16
	l.lwz	r13, 2456(r12)
	l.ori	r8, r17, 0
	l.sub	r13, r13, r8
	l.addi	r20, r20, 1214          # CFC
	l.ori	r5, r4, 0
	l.addi	r13, r13, -1
	l.lwz	r23, 5004(r22)
	l.sw	-76(r2), r7
	l.ori	r15, r14, 0
	l.ori	r31, r27, 0
	l.sw	-88(r2), r5
	l.sw	2472(r12), r17
	l.addi	r28, r28, 3642
	l.sub	r23, r23, r31
	l.sw	-100(r2), r3
	l.sw	2460(r12), r15
	l.sw	2448(r12), r13
	l.addi	r23, r23, -1
	l.ori	r25, r24, 0
	l.sw	5020(r22), r27
	l.sw	5008(r22), r25
	l.sw	4996(r22), r23
	l.bf	.LBB33_451
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3035
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 2428          # CFC
	l.bf	.LBB33_452
	l.nop	0
.LBB33_216:                             # %while.cond535.preheader.while.end544_crit_edge
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 608
	l.lwz	r3, -104(r2)
	l.add	r7, r3, r11
	l.addi	r20, r20, 1216          # CFC
	l.ori	r3, r5, 0
	l.lwz	r13, 2444(r12)
	l.addi	r28, r28, 3648
	l.add	r17, r13, r8
	l.ori	r13, r15, 0
	l.addi	r18, r18, 3040
	l.lwz	r23, 4992(r22)
	l.add	r27, r23, r31
	l.ori	r23, r25, 0
	l.addi	r20, r20, 2432          # CFC
	l.j	.LBB33_225
	l.nop	0                       # in delay slot
.LBB33_217:                             # %while.body538.lr.ph
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 609
	l.ori	r11, r5, 0
	l.addi	r5, r0, 16
	l.sfgtui	r3, 16
	l.addi	r20, r20, 1218          # CFC
	l.ori	r4, r3, 0
	l.ori	r8, r15, 0
	l.addi	r15, r0, 16
	l.addi	r28, r28, 3654
	l.ori	r14, r13, 0
	l.ori	r31, r25, 0
	l.addi	r25, r0, 16
	l.ori	r24, r23, 0
	l.bf	.LBB33_453
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3045
	l.sfgtui	r13, 16
	l.addi	r20, r20, 2436          # CFC
	l.bf	.LBB33_454
	l.nop	0
.LBB33_218:                             # %while.body538.lr.ph
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 610
	l.addi	r20, r20, 1220          # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 3660
	l.ori	r15, r14, 0
	l.addi	r18, r18, 3050
	l.ori	r25, r24, 0
	l.addi	r20, r20, 2440          # CFC
.LBB33_219:                             # %while.body538.lr.ph
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 611
	l.lwz	r3, -104(r2)
	l.add	r7, r3, r7
	l.sfltsi	r5, 16
	l.addi	r20, r20, 1222          # CFC
	l.sw	-80(r2), r5
	l.lwz	r13, 2444(r12)
	l.add	r17, r13, r17
	l.addi	r28, r28, 3666
	l.sw	2468(r12), r15
	l.lwz	r23, 4992(r22)
	l.add	r27, r23, r27
	l.sw	5016(r22), r25
	l.bf	.LBB33_455
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3055
	l.sfltsi	r15, 16
	l.addi	r20, r20, 2444          # CFC
	l.bf	.LBB33_456
	l.nop	0
.LBB33_220:                             # %while.body538.preheader
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 612
	l.addi	r3, r6, -17
	l.lwz	r4, -116(r2)
	l.sub	r3, r3, r4
	l.addi	r4, r0, -16
	l.and	r3, r3, r4
	l.addi	r13, r16, -17
	l.lwz	r14, 2432(r12)
	l.addi	r20, r20, 1224          # CFC
	l.sub	r13, r13, r14
	l.sw	-112(r2), r3
	l.addi	r14, r0, -16
	l.addi	r23, r26, -17
	l.addi	r3, r6, -16
	l.and	r13, r13, r14
	l.lwz	r24, 4980(r22)
	l.sw	-68(r2), r3
	l.addi	r28, r28, 3672
	l.sw	2436(r12), r13
	l.sub	r23, r23, r24
	l.ori	r3, r11, 0
	l.addi	r13, r16, -16
	l.addi	r24, r0, -16
	l.sw	-84(r2), r7
	l.sw	2480(r12), r13
	l.addi	r18, r18, 3060
	l.and	r23, r23, r24
	l.ori	r13, r8, 0
	l.sw	2464(r12), r17
	l.sw	4984(r22), r23
	l.addi	r23, r26, -16
	l.sw	5028(r22), r23
	l.ori	r23, r31, 0
	l.sw	5012(r22), r27
	l.addi	r20, r20, 2448          # CFC
.LBB33_221:                             # %while.body538
                                        #   Parent Loop BB33_1 Depth=1
                                        #     Parent Loop BB33_2 Depth=2
                                        #       Parent Loop BB33_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 613
	l.sw	-64(r2), r3
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r3, r7, 0
	l.sw	2484(r12), r13
	l.movhi	r13, hi(vfnprintf.blanks)
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.ori	r13, r17, 0
	l.addi	r20, r20, 1226          # CFC
	l.sw	5032(r22), r23
	l.movhi	r23, hi(vfnprintf.blanks)
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r23, r27, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r3, -64(r2)
	l.lwz	r5, -80(r2)
	l.lwz	r7, -84(r2)
	l.addi	r3, r3, -16
	l.addi	r28, r28, 3678
	l.sfgtsi	r3, 16
	l.lwz	r13, 2484(r12)
	l.lwz	r15, 2468(r12)
	l.lwz	r17, 2464(r12)
	l.addi	r13, r13, -16
	l.lwz	r23, 5032(r22)
	l.lwz	r25, 5016(r22)
	l.lwz	r27, 5012(r22)
	l.addi	r23, r23, -16
	l.bf	.LBB33_457
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3065
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 2452          # CFC
	l.bf	.LBB33_458
	l.nop	0
.LBB33_224:                             # %while.end544.loopexit
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 614
	l.lwz	r3, -116(r2)
	l.lwz	r4, -68(r2)
	l.sub	r3, r4, r3
	l.lwz	r4, -112(r2)
	l.sub	r3, r3, r4
	l.addi	r20, r20, 1228          # CFC
	l.lwz	r13, 2432(r12)
	l.lwz	r14, 2480(r12)
	l.sub	r13, r14, r13
	l.lwz	r4, -76(r2)
	l.lwz	r14, 2436(r12)
	l.addi	r28, r28, 3684
	l.lwz	r23, 4980(r22)
	l.lwz	r5, -88(r2)
	l.sub	r13, r13, r14
	l.lwz	r24, 5028(r22)
	l.lwz	r14, 2472(r12)
	l.addi	r18, r18, 3070
	l.lwz	r15, 2460(r12)
	l.sub	r23, r24, r23
	l.lwz	r24, 4984(r22)
	l.sub	r23, r23, r24
	l.lwz	r24, 5020(r22)
	l.lwz	r25, 5008(r22)
	l.addi	r20, r20, 2456          # CFC
.LBB33_225:                             # %while.end544
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 615
	l.lwz	r4, -100(r2)
	l.sfgtu	r4, r3
	l.sw	-68(r2), r3
	l.addi	r20, r20, 1230          # CFC
	l.ori	r5, r3, 0
	l.lwz	r14, 2448(r12)
	l.sw	2480(r12), r13
	l.addi	r28, r28, 3690
	l.ori	r15, r13, 0
	l.lwz	r24, 4996(r22)
	l.sw	5028(r22), r23
	l.ori	r25, r23, 0
	l.bf	.LBB33_459
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3075
	l.sfgtu	r14, r13
	l.addi	r20, r20, 2460          # CFC
	l.bf	.LBB33_460
	l.nop	0
.LBB33_462:
	l.addi	r18, r18, 616
	l.addi	r20, r20, 1232          # CFC
	l.movhi	r3, hi(vfnprintf.blanks)
	l.addi	r28, r28, 3696
	l.movhi	r13, hi(vfnprintf.blanks)
	l.addi	r18, r18, 3080
	l.movhi	r23, hi(vfnprintf.blanks)
	l.addi	r20, r20, 2464          # CFC
.LBB33_226:                             # %while.end544
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 617
	l.addi	r20, r20, 1234          # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 3702
	l.ori	r15, r14, 0
	l.addi	r18, r18, 3085
	l.ori	r25, r24, 0
	l.addi	r20, r20, 2468          # CFC
.LBB33_227:                             # %while.end544
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 618
	l.sw	-64(r2), r5
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r3, r7, 0
	l.lwz	r5, -64(r2)
	l.sw	2484(r12), r15
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.addi	r20, r20, 1236          # CFC
	l.ori	r13, r17, 0
	l.lwz	r15, 2484(r12)
	l.sw	5032(r22), r25
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r23, r27, 0
	l.lwz	r25, 5032(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.addi	r28, r28, 3708
	l.lwz	r4, -64(r2)
	l.lwz	r3, -68(r2)
	l.sfges	r4, r3
	l.lwz	r14, 2484(r12)
	l.lwz	r13, 2480(r12)
	l.lwz	r24, 5032(r22)
	l.lwz	r23, 5028(r22)
	l.bf	.LBB33_463
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3090
	l.sfges	r14, r13
	l.addi	r20, r20, 2472          # CFC
	l.bf	.LBB33_464
	l.nop	0
.LBB33_228:                             # %print_back_to_string.exit738
                                        #   in Loop: Header=BB33_3 Depth=3
	l.j	.LBB33_9
	l.nop	0                       # in delay slot
.LBB33_233:                             # %while.body501.us
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 619
	l.ori	r5, r3, 0
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.addi	r20, r20, 1238          # CFC
	l.ori	r3, r6, 0
	l.ori	r15, r13, 0
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 3714
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.ori	r13, r16, 0
	l.ori	r25, r23, 0
	l.addi	r18, r18, 3095
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r23, r26, 0
	l.addi	r20, r20, 2476          # CFC
	l.j	.LBB33_223
	l.nop	0                       # in delay slot
.LBB33_232:                             # %while.body471.us
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 620
	l.ori	r5, r3, 0
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.addi	r20, r20, 1240          # CFC
	l.ori	r3, r11, 0
	l.ori	r15, r13, 0
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 3720
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.ori	r13, r8, 0
	l.ori	r25, r23, 0
	l.addi	r18, r18, 3100
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r23, r31, 0
	l.addi	r20, r20, 2480          # CFC
	l.j	.LBB33_223
	l.nop	0                       # in delay slot
.LBB33_231:                             # %while.body415.us
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 621
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.lwz	r3, -100(r2)
	l.lwz	r5, -112(r2)
	l.addi	r20, r20, 1242          # CFC
	l.movhi	r13, hi(vfnprintf.blanks)
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.lwz	r13, 2448(r12)
	l.lwz	r15, 2436(r12)
	l.movhi	r23, hi(vfnprintf.blanks)
	l.addi	r28, r28, 3726
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.lwz	r23, 4996(r22)
	l.lwz	r25, 4984(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r3, -76(r2)
	l.addi	r18, r18, 3105
	l.lwz	r4, -112(r2)
	l.lwz	r13, 2472(r12)
	l.lwz	r14, 2436(r12)
	l.lwz	r23, 5020(r22)
	l.lwz	r24, 4984(r22)
	l.addi	r20, r20, 2484          # CFC
	l.j	.LBB33_10
	l.nop	0                       # in delay slot
.LBB33_222:                             # %while.body538.us
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 622
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.addi	r20, r20, 1244          # CFC
	l.ori	r3, r7, 0
	l.movhi	r13, hi(vfnprintf.blanks)
	l.addi	r28, r28, 3732
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.ori	r13, r17, 0
	l.addi	r18, r18, 3110
	l.movhi	r23, hi(vfnprintf.blanks)
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r23, r27, 0
	l.addi	r20, r20, 2488          # CFC
.LBB33_223:                             # %error
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 623
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.addi	r20, r20, 1246          # CFC
	l.lwz	r3, -76(r2)
	l.lwz	r4, -80(r2)
	l.addi	r28, r28, 3738
	l.lwz	r13, 2472(r12)
	l.lwz	r14, 2468(r12)
	l.addi	r18, r18, 3115
	l.lwz	r23, 5020(r22)
	l.lwz	r24, 5016(r22)
	l.addi	r20, r20, 2492          # CFC
.LBB33_10:                              # %error
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 624
	l.add	r3, r4, r3
	l.addi	r20, r20, 1248          # CFC
	l.sw	-76(r2), r3
	l.add	r13, r14, r13
	l.addi	r28, r28, 3744
	l.sw	2472(r12), r13
	l.addi	r18, r18, 3120
	l.add	r23, r24, r23
	l.sw	5020(r22), r23
	l.addi	r20, r20, 2496          # CFC
.LBB33_11:                              # %error
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 625
	l.lwz	r11, -76(r2)
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 1250          # CFC
	l.lwz	r9, -4(r1)
	l.lwz	r8, 2472(r12)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 3750
	l.lwz	r12, 2540(r10)
	l.lwz	r19, 2544(r10)
	l.lwz	r31, 5020(r22)
	l.addi	r18, r18, 3125
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5088(r21)
	l.lwz	r29, 5092(r21)
	l.addi	r20, r20, 2500          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB33_236
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB33_236:                             # %error
                                        #   in Loop: Header=BB33_3 Depth=3
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB33_465
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB33_465
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB33_465
	l.nop	0
	l.nop	205
.LBB33_465:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB33_466
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB33_466
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB33_466
	l.nop	0
	l.nop	205
.LBB33_466:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB33_467
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB33_467
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB33_467
	l.nop	0
	l.nop	205
.LBB33_467:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB33_468
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB33_468
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB33_468
	l.nop	0
	l.nop	205
.LBB33_468:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB33_469
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB33_469
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB33_469
	l.nop	0
	l.nop	205
.LBB33_469:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB33_470
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB33_470
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB33_470
	l.nop	0
	l.nop	205
.LBB33_470:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB33_471
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB33_471
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB33_471
	l.nop	0
	l.nop	205
.LBB33_471:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB33_472
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB33_472
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB33_472
	l.nop	0
	l.nop	205
.LBB33_472:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB33_473
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB33_473
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB33_473
	l.nop	0
	l.nop	205
.LBB33_473:
.LBB33_474:
	l.jr	r30
	l.nop	0
.LBB33_237:                             #   in Loop: Header=BB33_2 Depth=2
	l.addi	r18, r18, 1960
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1568          # CFC
	l.bf	.LBB33_64
	l.nop	0
.LBB33_238:                             #   in Loop: Header=BB33_2 Depth=2
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_64
	l.nop	0
	l.j	.LBB33_63
	l.nop	0
.LBB33_239:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 1975
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1580          # CFC
	l.bf	.LBB33_5
	l.nop	0
.LBB33_240:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_5
	l.nop	0
	l.j	.LBB33_4
	l.nop	0
.LBB33_241:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 1980
	l.sfnei	r13, 37
	l.addi	r20, r20, 1584          # CFC
	l.bf	.LBB33_3
	l.nop	0
.LBB33_242:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfnei	r3, 37
	l.bf	.LBB33_3
	l.nop	0
	l.j	.LBB33_5
	l.nop	0
.LBB33_243:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 1985
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1588          # CFC
	l.bf	.LBB33_13
	l.nop	0
.LBB33_244:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_13
	l.nop	0
	l.j	.LBB33_6
	l.nop	0
.LBB33_245:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 1990
	l.sfgtu	r14, r17
	l.addi	r20, r20, 1592          # CFC
	l.bf	.LBB33_8
	l.nop	0
.LBB33_246:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtu	r4, r7
	l.bf	.LBB33_8
	l.nop	0
	l.j	.LBB33_7
	l.nop	0
.LBB33_247:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2000
	l.sfges	r14, r13
	l.addi	r20, r20, 1600          # CFC
	l.bf	.LBB33_12
	l.nop	0
.LBB33_248:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB33_12
	l.nop	0
	l.j	.LBB33_9
	l.nop	0
.LBB33_249:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2015
	l.sflts	r16, r14
	l.addi	r20, r20, 1612          # CFC
	l.bf	.LBB33_15
	l.nop	0
.LBB33_250:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sflts	r6, r4
	l.bf	.LBB33_15
	l.nop	0
	l.j	.LBB33_14
	l.nop	0
.LBB33_251:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2025
	l.sfnei	r13, 1
	l.addi	r20, r20, 1620          # CFC
	l.bf	.LBB33_11
	l.nop	0
.LBB33_252:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfnei	r3, 1
	l.bf	.LBB33_11
	l.nop	0
	l.j	.LBB33_16
	l.nop	0
.LBB33_253:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2050
	l.sfgtui	r17, 122
	l.addi	r20, r20, 1640          # CFC
	l.bf	.LBB33_144
	l.nop	0
.LBB33_254:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtui	r7, 122
	l.bf	.LBB33_144
	l.nop	0
	l.j	.LBB33_19
	l.nop	0
.LBB33_255:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2065
	l.sfltui	r13, 10
	l.addi	r20, r20, 1652          # CFC
	l.bf	.LBB33_257
	l.nop	0
.LBB33_256:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfltui	r3, 10
	l.bf	.LBB33_257
	l.nop	0
	l.j	.LBB33_258
	l.nop	0
.LBB33_257:
	l.addi	r18, r18, 626
	l.addi	r20, r20, 1252          # CFC
	l.ori	r3, r5, 0
	l.addi	r28, r28, 3756
	l.ori	r13, r15, 0
	l.addi	r18, r18, 3130
	l.ori	r23, r25, 0
	l.addi	r20, r20, 2504          # CFC
	l.j	.LBB33_42
	l.nop	0
.LBB33_259:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2075
	l.sfeqi	r17, 42
	l.addi	r20, r20, 1660          # CFC
	l.bf	.LBB33_34
	l.nop	0
.LBB33_260:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r7, 42
	l.bf	.LBB33_34
	l.nop	0
	l.j	.LBB33_31
	l.nop	0
.LBB33_261:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2080
	l.sfgtui	r14, 9
	l.addi	r20, r20, 1664          # CFC
	l.bf	.LBB33_37
	l.nop	0
.LBB33_262:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtui	r4, 9
	l.bf	.LBB33_37
	l.nop	0
	l.j	.LBB33_32
	l.nop	0
.LBB33_263:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2090
	l.sfltui	r14, 10
	l.addi	r20, r20, 1672          # CFC
	l.bf	.LBB33_33
	l.nop	0
.LBB33_264:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfltui	r4, 10
	l.bf	.LBB33_33
	l.nop	0
	l.j	.LBB33_37
	l.nop	0
.LBB33_265:                             #   in Loop: Header=BB33_3 Depth=3
	l.sfgtsi	r16, -1
	l.bf	.LBB33_39
	l.nop	0
.LBB33_266:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtsi	r6, -1
	l.bf	.LBB33_39
	l.nop	0
	l.j	.LBB33_38
	l.nop	0
.LBB33_267:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2100
	l.sfnei	r13, 0
	l.addi	r20, r20, 1680          # CFC
	l.bf	.LBB33_17
	l.nop	0
.LBB33_268:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB33_17
	l.nop	0
	l.j	.LBB33_21
	l.nop	0
.LBB33_269:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2115
	l.sfgtsi	r14, -1
	l.addi	r20, r20, 1692          # CFC
	l.bf	.LBB33_17
	l.nop	0
.LBB33_270:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtsi	r4, -1
	l.bf	.LBB33_17
	l.nop	0
	l.j	.LBB33_27
	l.nop	0
.LBB33_271:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2145
	l.sfnei	r13, 108
	l.addi	r20, r20, 1716          # CFC
	l.bf	.LBB33_46
	l.nop	0
.LBB33_272:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfnei	r3, 108
	l.bf	.LBB33_46
	l.nop	0
	l.j	.LBB33_45
	l.nop	0
.LBB33_273:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2180
	l.sfgtsi	r16, -1
	l.addi	r20, r20, 1744          # CFC
	l.bf	.LBB33_36
	l.nop	0
.LBB33_274:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtsi	r6, -1
	l.bf	.LBB33_36
	l.nop	0
	l.j	.LBB33_35
	l.nop	0
.LBB33_275:                             #   in Loop: Header=BB33_2 Depth=2
	l.addi	r18, r18, 2195
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1756          # CFC
	l.bf	.LBB33_66
	l.nop	0
.LBB33_276:                             #   in Loop: Header=BB33_2 Depth=2
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_66
	l.nop	0
	l.j	.LBB33_65
	l.nop	0
.LBB33_277:                             #   in Loop: Header=BB33_2 Depth=2
	l.addi	r18, r18, 2205
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1764          # CFC
	l.bf	.LBB33_65
	l.nop	0
.LBB33_278:                             #   in Loop: Header=BB33_2 Depth=2
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_65
	l.nop	0
	l.j	.LBB33_67
	l.nop	0
.LBB33_279:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2230
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1784          # CFC
	l.bf	.LBB33_52
	l.nop	0
.LBB33_280:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_52
	l.nop	0
	l.j	.LBB33_51
	l.nop	0
.LBB33_281:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2240
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1792          # CFC
	l.bf	.LBB33_54
	l.nop	0
.LBB33_282:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_54
	l.nop	0
	l.j	.LBB33_53
	l.nop	0
.LBB33_283:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2255
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1804          # CFC
	l.bf	.LBB33_71
	l.nop	0
.LBB33_284:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_71
	l.nop	0
	l.j	.LBB33_70
	l.nop	0
.LBB33_285:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2270
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1816          # CFC
	l.bf	.LBB33_89
	l.nop	0
.LBB33_286:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_89
	l.nop	0
	l.j	.LBB33_88
	l.nop	0
.LBB33_287:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2285
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1828          # CFC
	l.bf	.LBB33_97
	l.nop	0
.LBB33_288:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_97
	l.nop	0
	l.j	.LBB33_96
	l.nop	0
.LBB33_289:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2315
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1852          # CFC
	l.bf	.LBB33_79
	l.nop	0
.LBB33_290:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_79
	l.nop	0
	l.j	.LBB33_78
	l.nop	0
.LBB33_291:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2325
	l.sfltsi	r15, 0
	l.addi	r20, r20, 1860          # CFC
	l.bf	.LBB33_84
	l.nop	0
.LBB33_292:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfltsi	r5, 0
	l.bf	.LBB33_84
	l.nop	0
	l.j	.LBB33_80
	l.nop	0
.LBB33_293:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2330
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1864          # CFC
	l.bf	.LBB33_85
	l.nop	0
.LBB33_294:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB33_85
	l.nop	0
	l.j	.LBB33_81
	l.nop	0
.LBB33_295:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2335
	l.sfgts	r13, r14
	l.addi	r20, r20, 1868          # CFC
	l.bf	.LBB33_83
	l.nop	0
.LBB33_296:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgts	r3, r4
	l.bf	.LBB33_83
	l.nop	0
	l.j	.LBB33_82
	l.nop	0
.LBB33_297:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2350
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1880          # CFC
	l.bf	.LBB33_73
	l.nop	0
.LBB33_298:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_73
	l.nop	0
	l.j	.LBB33_72
	l.nop	0
.LBB33_299:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2360
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1888          # CFC
	l.bf	.LBB33_91
	l.nop	0
.LBB33_300:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_91
	l.nop	0
	l.j	.LBB33_90
	l.nop	0
.LBB33_301:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2370
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1896          # CFC
	l.bf	.LBB33_99
	l.nop	0
.LBB33_302:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_99
	l.nop	0
	l.j	.LBB33_98
	l.nop	0
.LBB33_303:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2380
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1904          # CFC
	l.bf	.LBB33_56
	l.nop	0
.LBB33_304:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_56
	l.nop	0
	l.j	.LBB33_55
	l.nop	0
.LBB33_305:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2395
	l.sfgtsi	r16, -1
	l.addi	r20, r20, 1916          # CFC
	l.bf	.LBB33_108
	l.nop	0
.LBB33_306:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtsi	r6, -1
	l.bf	.LBB33_108
	l.nop	0
	l.j	.LBB33_58
	l.nop	0
.LBB33_307:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2400
	l.sfnei	r8, 0
	l.addi	r20, r20, 1920          # CFC
	l.bf	.LBB33_60
	l.nop	0
.LBB33_308:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfnei	r11, 0
	l.bf	.LBB33_60
	l.nop	0
	l.j	.LBB33_59
	l.nop	0
.LBB33_309:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2415
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1932          # CFC
	l.bf	.LBB33_75
	l.nop	0
.LBB33_310:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_75
	l.nop	0
	l.j	.LBB33_74
	l.nop	0
.LBB33_311:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2430
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1944          # CFC
	l.bf	.LBB33_93
	l.nop	0
.LBB33_312:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_93
	l.nop	0
	l.j	.LBB33_92
	l.nop	0
.LBB33_313:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2445
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1956          # CFC
	l.bf	.LBB33_101
	l.nop	0
.LBB33_314:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_101
	l.nop	0
	l.j	.LBB33_100
	l.nop	0
.LBB33_315:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2460
	l.sfnei	r13, 0
	l.addi	r20, r20, 1968          # CFC
	l.bf	.LBB33_104
	l.nop	0
.LBB33_316:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB33_104
	l.nop	0
	l.j	.LBB33_103
	l.nop	0
.LBB33_317:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2470
	l.sfnei	r13, 0
	l.addi	r20, r20, 1976          # CFC
	l.bf	.LBB33_106
	l.nop	0
.LBB33_318:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB33_106
	l.nop	0
	l.j	.LBB33_105
	l.nop	0
.LBB33_319:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2490
	l.sfgtsi	r17, -1
	l.addi	r20, r20, 1992          # CFC
	l.bf	.LBB33_110
	l.nop	0
.LBB33_320:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtsi	r7, -1
	l.bf	.LBB33_110
	l.nop	0
	l.j	.LBB33_109
	l.nop	0
.LBB33_321:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2500
	l.sfnei	r17, 0
	l.addi	r20, r20, 2000          # CFC
	l.bf	.LBB33_112
	l.nop	0
.LBB33_322:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB33_112
	l.nop	0
	l.j	.LBB33_111
	l.nop	0
.LBB33_323:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2505
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2004          # CFC
	l.bf	.LBB33_141
	l.nop	0
.LBB33_324:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB33_141
	l.nop	0
	l.j	.LBB33_112
	l.nop	0
.LBB33_325:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2510
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2008          # CFC
	l.bf	.LBB33_117
	l.nop	0
.LBB33_326:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB33_117
	l.nop	0
	l.j	.LBB33_113
	l.nop	0
.LBB33_327:                             #   in Loop: Header=BB33_3 Depth=3
	l.sfeqi	r14, 1
	l.bf	.LBB33_122
	l.nop	0
.LBB33_328:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r4, 1
	l.bf	.LBB33_122
	l.nop	0
	l.j	.LBB33_114
	l.nop	0
.LBB33_329:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2515
	l.sfnei	r14, 2
	l.addi	r20, r20, 2012          # CFC
	l.bf	.LBB33_142
	l.nop	0
.LBB33_330:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfnei	r4, 2
	l.bf	.LBB33_142
	l.nop	0
	l.j	.LBB33_115
	l.nop	0
.LBB33_331:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2525
	l.sfnei	r13, 0
	l.addi	r20, r20, 2020          # CFC
	l.bf	.LBB33_116
	l.nop	0
.LBB33_332:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB33_116
	l.nop	0
	l.j	.LBB33_235
	l.nop	0
.LBB33_333:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2535
	l.sfnei	r16, 0
	l.addi	r20, r20, 2028          # CFC
	l.bf	.LBB33_118
	l.nop	0
.LBB33_334:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfnei	r6, 0
	l.bf	.LBB33_118
	l.nop	0
	l.j	.LBB33_119
	l.nop	0
.LBB33_335:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2540
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2032          # CFC
	l.bf	.LBB33_337
	l.nop	0
.LBB33_336:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB33_337
	l.nop	0
	l.j	.LBB33_338
	l.nop	0
.LBB33_337:
	l.addi	r18, r18, 627
	l.ori	r5, r6, 0
	l.addi	r20, r20, 1254          # CFC
	l.lwz	r6, -76(r2)
	l.ori	r15, r16, 0
	l.addi	r28, r28, 3762
	l.lwz	r16, 2472(r12)
	l.addi	r18, r18, 3135
	l.ori	r25, r26, 0
	l.lwz	r26, 5020(r22)
	l.addi	r20, r20, 2508          # CFC
	l.j	.LBB33_141
	l.nop	0
.LBB33_339:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2550
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2040          # CFC
	l.bf	.LBB33_141
	l.nop	0
.LBB33_340:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB33_141
	l.nop	0
	l.j	.LBB33_121
	l.nop	0
.LBB33_341:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2560
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2048          # CFC
	l.bf	.LBB33_130
	l.nop	0
.LBB33_342:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_130
	l.nop	0
	l.j	.LBB33_123
	l.nop	0
.LBB33_343:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2565
	l.sfltui	r8, 10
	l.addi	r20, r20, 2052          # CFC
	l.bf	.LBB33_125
	l.nop	0
.LBB33_344:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfltui	r11, 10
	l.bf	.LBB33_125
	l.nop	0
	l.j	.LBB33_124
	l.nop	0
.LBB33_345:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2575
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2060          # CFC
	l.bf	.LBB33_127
	l.nop	0
.LBB33_346:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB33_127
	l.nop	0
	l.j	.LBB33_126
	l.nop	0
.LBB33_347:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2585
	l.sfnei	r13, 0
	l.addi	r20, r20, 2068          # CFC
	l.bf	.LBB33_349
	l.nop	0
.LBB33_348:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB33_349
	l.nop	0
	l.j	.LBB33_350
	l.nop	0
.LBB33_349:
	l.addi	r18, r18, 628
	l.addi	r20, r20, 1256          # CFC
	l.lwz	r3, -80(r2)
	l.addi	r28, r28, 3768
	l.lwz	r13, 2468(r12)
	l.addi	r18, r18, 3140
	l.lwz	r23, 5016(r22)
	l.addi	r20, r20, 2512          # CFC
	l.j	.LBB33_140
	l.nop	0
.LBB33_351:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2600
	l.sfnei	r15, 0
	l.addi	r20, r20, 2080          # CFC
	l.bf	.LBB33_135
	l.nop	0
.LBB33_352:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB33_135
	l.nop	0
	l.j	.LBB33_134
	l.nop	0
.LBB33_353:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2610
	l.sfgtui	r17, 99
	l.addi	r20, r20, 2088          # CFC
	l.bf	.LBB33_137
	l.nop	0
.LBB33_354:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtui	r7, 99
	l.bf	.LBB33_137
	l.nop	0
	l.j	.LBB33_136
	l.nop	0
.LBB33_355:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2620
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2096          # CFC
	l.bf	.LBB33_357
	l.nop	0
.LBB33_356:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB33_357
	l.nop	0
	l.j	.LBB33_358
	l.nop	0
.LBB33_357:
	l.addi	r18, r18, 629
	l.addi	r20, r20, 1258          # CFC
	l.lwz	r5, -84(r2)
	l.addi	r28, r28, 3774
	l.lwz	r15, 2464(r12)
	l.addi	r18, r18, 3145
	l.lwz	r25, 5012(r22)
	l.addi	r20, r20, 2516          # CFC
	l.j	.LBB33_139
	l.nop	0
.LBB33_359:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2635
	l.sfnei	r13, 0
	l.addi	r20, r20, 2108          # CFC
	l.bf	.LBB33_361
	l.nop	0
.LBB33_360:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB33_361
	l.nop	0
	l.j	.LBB33_362
	l.nop	0
.LBB33_361:
	l.addi	r18, r18, 630
	l.addi	r20, r20, 1260          # CFC
	l.lwz	r3, -120(r2)
	l.addi	r28, r28, 3780
	l.lwz	r13, 2428(r12)
	l.addi	r18, r18, 3150
	l.lwz	r23, 4976(r22)
	l.addi	r20, r20, 2520          # CFC
	l.j	.LBB33_129
	l.nop	0
.LBB33_363:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2650
	l.sfltui	r8, 10
	l.addi	r20, r20, 2120          # CFC
	l.bf	.LBB33_133
	l.nop	0
.LBB33_364:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfltui	r11, 10
	l.bf	.LBB33_133
	l.nop	0
	l.j	.LBB33_131
	l.nop	0
.LBB33_365:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2660
	l.sfgtui	r14, 99
	l.addi	r20, r20, 2128          # CFC
	l.bf	.LBB33_367
	l.nop	0
.LBB33_366:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtui	r4, 99
	l.bf	.LBB33_367
	l.nop	0
	l.j	.LBB33_368
	l.nop	0
.LBB33_367:
	l.addi	r18, r18, 631
	l.addi	r20, r20, 1262          # CFC
	l.ori	r4, r11, 0
	l.addi	r28, r28, 3786
	l.ori	r14, r8, 0
	l.addi	r18, r18, 3155
	l.ori	r24, r31, 0
	l.addi	r20, r20, 2524          # CFC
	l.j	.LBB33_132
	l.nop	0
.LBB33_369:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2680
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2144          # CFC
	l.bf	.LBB33_371
	l.nop	0
.LBB33_370:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_371
	l.nop	0
	l.j	.LBB33_372
	l.nop	0
.LBB33_371:
	l.addi	r18, r18, 632
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 1264          # CFC
	l.ori	r5, r3, 0
	l.lwz	r13, 2460(r12)
	l.addi	r28, r28, 3792
	l.ori	r15, r13, 0
	l.addi	r18, r18, 3160
	l.lwz	r23, 5008(r22)
	l.ori	r25, r23, 0
	l.addi	r20, r20, 2528          # CFC
	l.j	.LBB33_147
	l.nop	0
.LBB33_373:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2705
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2164          # CFC
	l.bf	.LBB33_375
	l.nop	0
.LBB33_374:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_375
	l.nop	0
	l.j	.LBB33_376
	l.nop	0
.LBB33_375:
	l.addi	r18, r18, 633
	l.addi	r20, r20, 1266          # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 3798
	l.ori	r13, r14, 0
	l.addi	r18, r18, 3165
	l.ori	r23, r24, 0
	l.addi	r20, r20, 2532          # CFC
	l.j	.LBB33_149
	l.nop	0
.LBB33_377:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2725
	l.sfgts	r17, r8
	l.addi	r20, r20, 2180          # CFC
	l.bf	.LBB33_152
	l.nop	0
.LBB33_378:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgts	r7, r11
	l.bf	.LBB33_152
	l.nop	0
	l.j	.LBB33_151
	l.nop	0
.LBB33_379:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2735
	l.sfnei	r13, 0
	l.addi	r20, r20, 2188          # CFC
	l.bf	.LBB33_167
	l.nop	0
.LBB33_380:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB33_167
	l.nop	0
	l.j	.LBB33_153
	l.nop	0
.LBB33_381:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2740
	l.sfltsi	r15, 1
	l.addi	r20, r20, 2192          # CFC
	l.bf	.LBB33_167
	l.nop	0
.LBB33_382:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfltsi	r5, 1
	l.bf	.LBB33_167
	l.nop	0
	l.j	.LBB33_154
	l.nop	0
.LBB33_383:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2745
	l.sfgtsi	r15, 16
	l.addi	r20, r20, 2196          # CFC
	l.bf	.LBB33_156
	l.nop	0
.LBB33_384:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtsi	r5, 16
	l.bf	.LBB33_156
	l.nop	0
	l.j	.LBB33_155
	l.nop	0
.LBB33_385:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2755
	l.sfgtui	r8, 16
	l.addi	r20, r20, 2204          # CFC
	l.bf	.LBB33_158
	l.nop	0
.LBB33_386:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtui	r11, 16
	l.bf	.LBB33_158
	l.nop	0
	l.j	.LBB33_157
	l.nop	0
.LBB33_387:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2765
	l.sfltsi	r15, 16
	l.addi	r20, r20, 2212          # CFC
	l.bf	.LBB33_389
	l.nop	0
.LBB33_388:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfltsi	r5, 16
	l.bf	.LBB33_389
	l.nop	0
	l.j	.LBB33_390
	l.nop	0
.LBB33_389:
	l.addi	r18, r18, 634
	l.addi	r20, r20, 1268          # CFC
	l.lwz	r5, -68(r2)
	l.addi	r28, r28, 3804
	l.lwz	r15, 2480(r12)
	l.addi	r18, r18, 3170
	l.lwz	r25, 5028(r22)
	l.addi	r20, r20, 2536          # CFC
	l.j	.LBB33_231
	l.nop	0
.LBB33_391:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2780
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 2224          # CFC
	l.bf	.LBB33_160
	l.nop	0
.LBB33_392:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtsi	r4, 16
	l.bf	.LBB33_160
	l.nop	0
	l.j	.LBB33_161
	l.nop	0
.LBB33_393:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2790
	l.sfgtu	r8, r15
	l.addi	r20, r20, 2232          # CFC
	l.bf	.LBB33_164
	l.nop	0
.LBB33_394:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtu	r11, r5
	l.bf	.LBB33_164
	l.nop	0
	l.j	.LBB33_163
	l.nop	0
.LBB33_395:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2800
	l.sfges	r14, r13
	l.addi	r20, r20, 2240          # CFC
	l.bf	.LBB33_166
	l.nop	0
.LBB33_396:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB33_166
	l.nop	0
	l.j	.LBB33_165
	l.nop	0
.LBB33_397:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2810
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2248          # CFC
	l.bf	.LBB33_173
	l.nop	0
.LBB33_398:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_173
	l.nop	0
	l.j	.LBB33_168
	l.nop	0
.LBB33_399:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2815
	l.sfgtui	r14, 1
	l.addi	r20, r20, 2252          # CFC
	l.bf	.LBB33_170
	l.nop	0
.LBB33_400:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtui	r4, 1
	l.bf	.LBB33_170
	l.nop	0
	l.j	.LBB33_169
	l.nop	0
.LBB33_401:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2825
	l.sfgtsi	r14, 0
	l.addi	r20, r20, 2260          # CFC
	l.bf	.LBB33_172
	l.nop	0
.LBB33_402:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtsi	r4, 0
	l.bf	.LBB33_172
	l.nop	0
	l.j	.LBB33_171
	l.nop	0
.LBB33_403:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2835
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2268          # CFC
	l.bf	.LBB33_180
	l.nop	0
.LBB33_404:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_180
	l.nop	0
	l.j	.LBB33_174
	l.nop	0
.LBB33_405:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2840
	l.sfgtui	r14, 2
	l.addi	r20, r20, 2272          # CFC
	l.bf	.LBB33_176
	l.nop	0
.LBB33_406:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtui	r4, 2
	l.bf	.LBB33_176
	l.nop	0
	l.j	.LBB33_175
	l.nop	0
.LBB33_407:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2850
	l.sfgtsi	r14, 1
	l.addi	r20, r20, 2280          # CFC
	l.bf	.LBB33_178
	l.nop	0
.LBB33_408:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtsi	r4, 1
	l.bf	.LBB33_178
	l.nop	0
	l.j	.LBB33_177
	l.nop	0
.LBB33_409:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2865
	l.sfnei	r13, 128
	l.addi	r20, r20, 2292          # CFC
	l.bf	.LBB33_195
	l.nop	0
.LBB33_410:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfnei	r3, 128
	l.bf	.LBB33_195
	l.nop	0
	l.j	.LBB33_181
	l.nop	0
.LBB33_411:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2870
	l.sfltsi	r14, 1
	l.addi	r20, r20, 2296          # CFC
	l.bf	.LBB33_195
	l.nop	0
.LBB33_412:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfltsi	r4, 1
	l.bf	.LBB33_195
	l.nop	0
	l.j	.LBB33_182
	l.nop	0
.LBB33_413:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2875
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 2300          # CFC
	l.bf	.LBB33_184
	l.nop	0
.LBB33_414:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtsi	r4, 16
	l.bf	.LBB33_184
	l.nop	0
	l.j	.LBB33_183
	l.nop	0
.LBB33_415:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2885
	l.sfgtui	r17, 16
	l.addi	r20, r20, 2308          # CFC
	l.bf	.LBB33_186
	l.nop	0
.LBB33_416:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtui	r7, 16
	l.bf	.LBB33_186
	l.nop	0
	l.j	.LBB33_185
	l.nop	0
.LBB33_417:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2895
	l.sfltsi	r13, 16
	l.addi	r20, r20, 2316          # CFC
	l.bf	.LBB33_232
	l.nop	0
.LBB33_418:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfltsi	r3, 16
	l.bf	.LBB33_232
	l.nop	0
	l.j	.LBB33_187
	l.nop	0
.LBB33_419:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2905
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 2324          # CFC
	l.bf	.LBB33_188
	l.nop	0
.LBB33_420:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtsi	r3, 16
	l.bf	.LBB33_188
	l.nop	0
	l.j	.LBB33_189
	l.nop	0
.LBB33_421:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2915
	l.sfgtu	r17, r13
	l.addi	r20, r20, 2332          # CFC
	l.bf	.LBB33_423
	l.nop	0
.LBB33_422:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtu	r7, r3
	l.bf	.LBB33_423
	l.nop	0
	l.j	.LBB33_424
	l.nop	0
.LBB33_423:
	l.addi	r18, r18, 635
	l.addi	r20, r20, 1270          # CFC
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 3810
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r18, r18, 3175
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.addi	r20, r20, 2540          # CFC
	l.j	.LBB33_192
	l.nop	0
.LBB33_425:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2930
	l.sfges	r14, r13
	l.addi	r20, r20, 2344          # CFC
	l.bf	.LBB33_194
	l.nop	0
.LBB33_426:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB33_194
	l.nop	0
	l.j	.LBB33_193
	l.nop	0
.LBB33_427:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2940
	l.sfltsi	r15, 1
	l.addi	r20, r20, 2352          # CFC
	l.bf	.LBB33_209
	l.nop	0
.LBB33_428:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfltsi	r5, 1
	l.bf	.LBB33_209
	l.nop	0
	l.j	.LBB33_196
	l.nop	0
.LBB33_429:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2945
	l.sfgtsi	r15, 16
	l.addi	r20, r20, 2356          # CFC
	l.bf	.LBB33_198
	l.nop	0
.LBB33_430:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtsi	r5, 16
	l.bf	.LBB33_198
	l.nop	0
	l.j	.LBB33_197
	l.nop	0
.LBB33_431:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2955
	l.sfgtui	r14, 16
	l.addi	r20, r20, 2364          # CFC
	l.bf	.LBB33_200
	l.nop	0
.LBB33_432:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtui	r4, 16
	l.bf	.LBB33_200
	l.nop	0
	l.j	.LBB33_199
	l.nop	0
.LBB33_433:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2965
	l.sfltsi	r13, 16
	l.addi	r20, r20, 2372          # CFC
	l.bf	.LBB33_233
	l.nop	0
.LBB33_434:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfltsi	r3, 16
	l.bf	.LBB33_233
	l.nop	0
	l.j	.LBB33_201
	l.nop	0
.LBB33_435:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2975
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 2380          # CFC
	l.bf	.LBB33_202
	l.nop	0
.LBB33_436:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtsi	r3, 16
	l.bf	.LBB33_202
	l.nop	0
	l.j	.LBB33_203
	l.nop	0
.LBB33_437:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 2985
	l.sfgtu	r14, r13
	l.addi	r20, r20, 2388          # CFC
	l.bf	.LBB33_439
	l.nop	0
.LBB33_438:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtu	r4, r3
	l.bf	.LBB33_439
	l.nop	0
	l.j	.LBB33_440
	l.nop	0
.LBB33_439:
	l.addi	r18, r18, 636
	l.addi	r20, r20, 1272          # CFC
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 3816
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r18, r18, 3180
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.addi	r20, r20, 2544          # CFC
	l.j	.LBB33_206
	l.nop	0
.LBB33_441:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 3000
	l.sfges	r14, r13
	l.addi	r20, r20, 2400          # CFC
	l.bf	.LBB33_208
	l.nop	0
.LBB33_442:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB33_208
	l.nop	0
	l.j	.LBB33_207
	l.nop	0
.LBB33_443:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 3010
	l.sfgtu	r16, r15
	l.addi	r20, r20, 2408          # CFC
	l.bf	.LBB33_211
	l.nop	0
.LBB33_444:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtu	r6, r5
	l.bf	.LBB33_211
	l.nop	0
	l.j	.LBB33_210
	l.nop	0
.LBB33_445:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 3020
	l.sfges	r14, r13
	l.addi	r20, r20, 2416          # CFC
	l.bf	.LBB33_213
	l.nop	0
.LBB33_446:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB33_213
	l.nop	0
	l.j	.LBB33_212
	l.nop	0
.LBB33_447:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 3025
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2420          # CFC
	l.bf	.LBB33_1
	l.nop	0
.LBB33_448:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB33_1
	l.nop	0
	l.j	.LBB33_214
	l.nop	0
.LBB33_449:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 3030
	l.sfltsi	r14, 1
	l.addi	r20, r20, 2424          # CFC
	l.bf	.LBB33_1
	l.nop	0
.LBB33_450:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfltsi	r4, 1
	l.bf	.LBB33_1
	l.nop	0
	l.j	.LBB33_215
	l.nop	0
.LBB33_451:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 3035
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 2428          # CFC
	l.bf	.LBB33_217
	l.nop	0
.LBB33_452:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtsi	r4, 16
	l.bf	.LBB33_217
	l.nop	0
	l.j	.LBB33_216
	l.nop	0
.LBB33_453:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 3045
	l.sfgtui	r13, 16
	l.addi	r20, r20, 2436          # CFC
	l.bf	.LBB33_219
	l.nop	0
.LBB33_454:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtui	r3, 16
	l.bf	.LBB33_219
	l.nop	0
	l.j	.LBB33_218
	l.nop	0
.LBB33_455:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 3055
	l.sfltsi	r15, 16
	l.addi	r20, r20, 2444          # CFC
	l.bf	.LBB33_222
	l.nop	0
.LBB33_456:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfltsi	r5, 16
	l.bf	.LBB33_222
	l.nop	0
	l.j	.LBB33_220
	l.nop	0
.LBB33_457:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 3065
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 2452          # CFC
	l.bf	.LBB33_221
	l.nop	0
.LBB33_458:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtsi	r3, 16
	l.bf	.LBB33_221
	l.nop	0
	l.j	.LBB33_224
	l.nop	0
.LBB33_459:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 3075
	l.sfgtu	r14, r13
	l.addi	r20, r20, 2460          # CFC
	l.bf	.LBB33_461
	l.nop	0
.LBB33_460:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfgtu	r4, r3
	l.bf	.LBB33_461
	l.nop	0
	l.j	.LBB33_462
	l.nop	0
.LBB33_461:
	l.addi	r18, r18, 637
	l.addi	r20, r20, 1274          # CFC
	l.movhi	r3, hi(vfnprintf.blanks)
	l.addi	r28, r28, 3822
	l.movhi	r13, hi(vfnprintf.blanks)
	l.addi	r18, r18, 3185
	l.movhi	r23, hi(vfnprintf.blanks)
	l.addi	r20, r20, 2548          # CFC
	l.j	.LBB33_227
	l.nop	0
.LBB33_463:                             #   in Loop: Header=BB33_3 Depth=3
	l.addi	r18, r18, 3090
	l.sfges	r14, r13
	l.addi	r20, r20, 2472          # CFC
	l.bf	.LBB33_229
	l.nop	0
.LBB33_464:                             #   in Loop: Header=BB33_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB33_229
	l.nop	0
	l.j	.LBB33_228
	l.nop	0
.Lfunc_end33:
	.size	vfnprintf, .Lfunc_end33-vfnprintf

	.text
	.hidden	sprintf
	.globl	sprintf
	.p2align	2
	.type	sprintf,@function
sprintf:                                # @sprintf
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 638
	l.sw	-4(r1), r9
	l.addi	r20, r20, 1276          # CFC
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -12
	l.ori	r5, r4, 0
	l.sw	2544(r10), r19
	l.sw	2540(r10), r12
	l.addi	r12, r10, 0
	l.addi	r6, r2, 0
	l.addi	r10, r10, -12
	l.sw	5092(r21), r29
	l.sw	-12(r2), r6
	l.addi	r28, r28, 3828
	l.ori	r15, r14, 0
	l.sw	5088(r21), r22
	l.addi	r4, r0, 1024
	l.addi	r16, r12, 0
	l.addi	r22, r21, 0             # CFC
	l.sw	2536(r12), r16
	l.addi	r14, r0, 1024
	l.addi	r21, r21, -12           # CFC
	l.ori	r25, r24, 0
	l.addi	r26, r22, 0
	l.sw	5084(r22), r26
	l.addi	r18, r18, 3190
	l.addi	r24, r0, 1024
	l.jal	vfnprintf
	l.nop	0                       # in delay slot
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 2540(r10)
	l.lwz	r19, 2544(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5088(r21)
	l.lwz	r29, 5092(r21)
	l.addi	r20, r20, 2552          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB34_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB34_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB34_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB34_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB34_2
	l.nop	0
	l.nop	205
.LBB34_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB34_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB34_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB34_3
	l.nop	0
	l.nop	205
.LBB34_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB34_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB34_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB34_4
	l.nop	0
	l.nop	205
.LBB34_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB34_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB34_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB34_5
	l.nop	0
	l.nop	205
.LBB34_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB34_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB34_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB34_6
	l.nop	0
	l.nop	205
.LBB34_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB34_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB34_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB34_7
	l.nop	0
	l.nop	205
.LBB34_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB34_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB34_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB34_8
	l.nop	0
	l.nop	205
.LBB34_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB34_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB34_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB34_9
	l.nop	0
	l.nop	205
.LBB34_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB34_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB34_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB34_10
	l.nop	0
	l.nop	205
.LBB34_10:
.LBB34_11:
	l.jr	r30
	l.nop	0
.Lfunc_end34:
	.size	sprintf, .Lfunc_end34-sprintf

	.hidden	printf_to_sim
	.globl	printf_to_sim
	.p2align	2
	.type	printf_to_sim,@function
printf_to_sim:                          # @printf_to_sim
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 639
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -24
	l.ori	r5, r3, 0
	l.sw	2544(r10), r19
	l.addi	r20, r20, 1278          # CFC
	l.sw	2540(r10), r12
	l.addi	r12, r10, 0
	l.addi	r6, r2, 0
	l.addi	r10, r10, -24
	l.sw	5092(r21), r29
	l.sw	-12(r2), r6
	l.ori	r15, r13, 0
	l.sw	5088(r21), r22
	l.movhi	r3, hi(PRINTFBUFFER)
	l.addi	r16, r12, 0
	l.addi	r22, r21, 0             # CFC
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.sw	2536(r12), r16
	l.addi	r21, r21, -24           # CFC
	l.addi	r4, r0, 512
	l.movhi	r13, hi(PRINTFBUFFER)
	l.addi	r28, r28, 3834
	l.ori	r25, r23, 0
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.addi	r14, r0, 512
	l.addi	r26, r22, 0
	l.sw	5084(r22), r26
	l.movhi	r23, hi(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.addi	r24, r0, 512
	l.jal	vfnprintf
	l.nop	0                       # in delay slot
	l.ori	r3, r11, 0
	l.addi	r11, r0, -1
	l.sfeqi	r3, 0
	l.ori	r13, r8, 0
	l.addi	r8, r0, -1
	l.ori	r23, r31, 0
	l.addi	r31, r0, -1
	l.bf	.LBB35_7
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3195
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2556          # CFC
	l.bf	.LBB35_8
	l.nop	0
.LBB35_1:                               # %while.cond.preheader
	l.addi	r18, r18, 640
	l.sw	-24(r2), r3
	l.addi	r20, r20, 1280          # CFC
	l.sfltsi	r3, 1
	l.addi	r28, r28, 3840
	l.sw	2524(r12), r13
	l.sw	5072(r22), r23
	l.bf	.LBB35_9
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3200
	l.sfltsi	r13, 1
	l.addi	r20, r20, 2560          # CFC
	l.bf	.LBB35_10
	l.nop	0
.LBB35_2:                               # %while.body.preheader
	l.addi	r18, r18, 641
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.addi	r20, r20, 1282          # CFC
	l.lwz	r4, -24(r2)
	l.movhi	r13, hi(PRINTFBUFFER)
	l.addi	r28, r28, 3846
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.lwz	r14, 2524(r12)
	l.addi	r18, r18, 3205
	l.movhi	r23, hi(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.lwz	r24, 5072(r22)
	l.addi	r20, r20, 2564          # CFC
.LBB35_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 642
	l.sw	-20(r2), r4
	l.sw	-16(r2), r3
	l.lwz	r3, -16(r2)
	l.lbz	r3, 0(r3)
	l.sw	2528(r12), r14
	l.sw	2532(r12), r13
	l.lwz	r13, 2532(r12)
	l.lbz	r13, 2548(r13)
	l.addi	r20, r20, 1284          # CFC
	l.sw	5076(r22), r24
	l.sw	5080(r22), r23
	l.lwz	r23, 5080(r22)
	l.lbz	r23, 5096(r23)
	l.jal	sim_putc
	l.nop	0                       # in delay slot
	l.lwz	r4, -20(r2)
	l.lwz	r3, -16(r2)
	l.addi	r3, r3, 1
	l.addi	r4, r4, -1
	l.addi	r28, r28, 3852
	l.sfnei	r4, 0
	l.lwz	r14, 2528(r12)
	l.lwz	r13, 2532(r12)
	l.addi	r13, r13, 1
	l.addi	r14, r14, -1
	l.lwz	r24, 5076(r22)
	l.lwz	r23, 5080(r22)
	l.addi	r23, r23, 1
	l.addi	r24, r24, -1
	l.bf	.LBB35_11
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3210
	l.sfnei	r14, 0
	l.addi	r20, r20, 2568          # CFC
	l.bf	.LBB35_12
	l.nop	0
.LBB35_4:                               # %while.end
	l.addi	r18, r18, 643
	l.addi	r20, r20, 1286          # CFC
	l.lwz	r11, -24(r2)
	l.addi	r28, r28, 3858
	l.lwz	r8, 2524(r12)
	l.addi	r18, r18, 3215
	l.lwz	r31, 5072(r22)
	l.addi	r20, r20, 2572          # CFC
.LBB35_5:                               # %cleanup
	l.addi	r18, r18, 644
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 1288          # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 3864
	l.lwz	r12, 2540(r10)
	l.lwz	r19, 2544(r10)
	l.addi	r18, r18, 3220
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5088(r21)
	l.lwz	r29, 5092(r21)
	l.addi	r20, r20, 2576          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB35_6
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB35_6:                               # %cleanup
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB35_13
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB35_13
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB35_13
	l.nop	0
	l.nop	205
.LBB35_13:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB35_14
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB35_14
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB35_14
	l.nop	0
	l.nop	205
.LBB35_14:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB35_15
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB35_15
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB35_15
	l.nop	0
	l.nop	205
.LBB35_15:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB35_16
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB35_16
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB35_16
	l.nop	0
	l.nop	205
.LBB35_16:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB35_17
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB35_17
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB35_17
	l.nop	0
	l.nop	205
.LBB35_17:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB35_18
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB35_18
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB35_18
	l.nop	0
	l.nop	205
.LBB35_18:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB35_19
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB35_19
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB35_19
	l.nop	0
	l.nop	205
.LBB35_19:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB35_20
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB35_20
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB35_20
	l.nop	0
	l.nop	205
.LBB35_20:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB35_21
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB35_21
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB35_21
	l.nop	0
	l.nop	205
.LBB35_21:
.LBB35_22:
	l.jr	r30
	l.nop	0
.LBB35_7:
	l.addi	r18, r18, 3195
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2556          # CFC
	l.bf	.LBB35_5
	l.nop	0
.LBB35_8:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB35_6
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB35_5
	l.nop	0
	l.j	.LBB35_1
	l.nop	0
.LBB35_9:
	l.addi	r18, r18, 3200
	l.sfltsi	r13, 1
	l.addi	r20, r20, 2560          # CFC
	l.bf	.LBB35_4
	l.nop	0
.LBB35_10:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB35_6
	l.nop	0
	l.sfltsi	r3, 1
	l.bf	.LBB35_4
	l.nop	0
	l.j	.LBB35_2
	l.nop	0
.LBB35_11:
	l.addi	r18, r18, 3210
	l.sfnei	r14, 0
	l.addi	r20, r20, 2568          # CFC
	l.bf	.LBB35_3
	l.nop	0
.LBB35_12:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB35_6
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB35_3
	l.nop	0
	l.j	.LBB35_4
	l.nop	0
.Lfunc_end35:
	.size	printf_to_sim, .Lfunc_end35-printf_to_sim

	.hidden	puts_to_sim
	.globl	puts_to_sim
	.p2align	2
	.type	puts_to_sim,@function
puts_to_sim:                            # @puts_to_sim
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 645
	l.sw	-4(r1), r9
	l.addi	r20, r20, 1290          # CFC
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -12
	l.sw	0(r1), r3
	l.sw	2544(r10), r19
	l.sw	2540(r10), r12
	l.addi	r12, r10, 0
	l.movhi	r3, hi(.L.str.5.8)
	l.addi	r10, r10, -12
	l.sw	5092(r21), r29
	l.addi	r28, r28, 3870
	l.ori	r3, r3, lo(.L.str.5.8)
	l.sw	2548(r10), r13
	l.sw	5088(r21), r22
	l.movhi	r13, hi(.L.str.5.8)
	l.ori	r13, r13, lo(.L.str.5.8)
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -12           # CFC
	l.sw	5096(r21), r23
	l.movhi	r23, hi(.L.str.5.8)
	l.ori	r23, r23, lo(.L.str.5.8)
	l.addi	r18, r18, 3225
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 2540(r10)
	l.lwz	r19, 2544(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5088(r21)
	l.lwz	r29, 5092(r21)
	l.addi	r20, r20, 2580          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB36_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB36_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB36_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB36_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB36_2
	l.nop	0
	l.nop	205
.LBB36_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB36_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB36_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB36_3
	l.nop	0
	l.nop	205
.LBB36_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB36_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB36_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB36_4
	l.nop	0
	l.nop	205
.LBB36_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB36_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB36_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB36_5
	l.nop	0
	l.nop	205
.LBB36_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB36_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB36_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB36_6
	l.nop	0
	l.nop	205
.LBB36_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB36_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB36_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB36_7
	l.nop	0
	l.nop	205
.LBB36_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB36_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB36_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB36_8
	l.nop	0
	l.nop	205
.LBB36_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB36_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB36_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB36_9
	l.nop	0
	l.nop	205
.LBB36_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB36_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB36_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB36_10
	l.nop	0
	l.nop	205
.LBB36_10:
.LBB36_11:
	l.jr	r30
	l.nop	0
.Lfunc_end36:
	.size	puts_to_sim, .Lfunc_end36-puts_to_sim

	.hidden	printf_to_uart
	.globl	printf_to_uart
	.p2align	2
	.type	printf_to_uart,@function
printf_to_uart:                         # @printf_to_uart
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 646
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -24
	l.ori	r5, r3, 0
	l.sw	2544(r10), r19
	l.addi	r20, r20, 1292          # CFC
	l.sw	2540(r10), r12
	l.addi	r12, r10, 0
	l.addi	r6, r2, 0
	l.addi	r10, r10, -24
	l.sw	5092(r21), r29
	l.sw	-12(r2), r6
	l.ori	r15, r13, 0
	l.sw	5088(r21), r22
	l.movhi	r3, hi(PRINTFBUFFER)
	l.addi	r16, r12, 0
	l.addi	r22, r21, 0             # CFC
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.sw	2536(r12), r16
	l.addi	r21, r21, -24           # CFC
	l.addi	r4, r0, 512
	l.movhi	r13, hi(PRINTFBUFFER)
	l.addi	r28, r28, 3876
	l.ori	r25, r23, 0
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.addi	r14, r0, 512
	l.addi	r26, r22, 0
	l.sw	5084(r22), r26
	l.movhi	r23, hi(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.addi	r24, r0, 512
	l.jal	vfnprintf
	l.nop	0                       # in delay slot
	l.ori	r3, r11, 0
	l.addi	r11, r0, -1
	l.sfeqi	r3, 0
	l.ori	r13, r8, 0
	l.addi	r8, r0, -1
	l.ori	r23, r31, 0
	l.addi	r31, r0, -1
	l.bf	.LBB37_7
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3230
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2584          # CFC
	l.bf	.LBB37_8
	l.nop	0
.LBB37_1:                               # %while.cond.preheader
	l.addi	r18, r18, 647
	l.sw	-24(r2), r3
	l.addi	r20, r20, 1294          # CFC
	l.sfltsi	r3, 1
	l.addi	r28, r28, 3882
	l.sw	2524(r12), r13
	l.sw	5072(r22), r23
	l.bf	.LBB37_9
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3235
	l.sfltsi	r13, 1
	l.addi	r20, r20, 2588          # CFC
	l.bf	.LBB37_10
	l.nop	0
.LBB37_2:                               # %while.body.preheader
	l.addi	r18, r18, 648
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.addi	r20, r20, 1296          # CFC
	l.lwz	r4, -24(r2)
	l.movhi	r13, hi(PRINTFBUFFER)
	l.addi	r28, r28, 3888
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.lwz	r14, 2524(r12)
	l.addi	r18, r18, 3240
	l.movhi	r23, hi(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.lwz	r24, 5072(r22)
	l.addi	r20, r20, 2592          # CFC
.LBB37_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 649
	l.sw	-20(r2), r4
	l.sw	-16(r2), r3
	l.lbs	r4, 0(r3)
	l.movhi	r3, 0
	l.sw	2528(r12), r14
	l.sw	2532(r12), r13
	l.lbs	r14, 2548(r13)
	l.movhi	r13, 0
	l.addi	r20, r20, 1298          # CFC
	l.sw	5076(r22), r24
	l.sw	5080(r22), r23
	l.lbs	r24, 5096(r23)
	l.movhi	r23, 0
	l.jal	uart_putc
	l.nop	0                       # in delay slot
	l.lwz	r4, -20(r2)
	l.lwz	r3, -16(r2)
	l.addi	r3, r3, 1
	l.addi	r4, r4, -1
	l.addi	r28, r28, 3894
	l.sfnei	r4, 0
	l.lwz	r14, 2528(r12)
	l.lwz	r13, 2532(r12)
	l.addi	r13, r13, 1
	l.addi	r14, r14, -1
	l.lwz	r24, 5076(r22)
	l.lwz	r23, 5080(r22)
	l.addi	r23, r23, 1
	l.addi	r24, r24, -1
	l.bf	.LBB37_11
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3245
	l.sfnei	r14, 0
	l.addi	r20, r20, 2596          # CFC
	l.bf	.LBB37_12
	l.nop	0
.LBB37_4:                               # %while.end
	l.addi	r18, r18, 650
	l.addi	r20, r20, 1300          # CFC
	l.lwz	r11, -24(r2)
	l.addi	r28, r28, 3900
	l.lwz	r8, 2524(r12)
	l.addi	r18, r18, 3250
	l.lwz	r31, 5072(r22)
	l.addi	r20, r20, 2600          # CFC
.LBB37_5:                               # %cleanup
	l.addi	r18, r18, 651
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 1302          # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 3906
	l.lwz	r12, 2540(r10)
	l.lwz	r19, 2544(r10)
	l.addi	r18, r18, 3255
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5088(r21)
	l.lwz	r29, 5092(r21)
	l.addi	r20, r20, 2604          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB37_6
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB37_6:                               # %cleanup
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB37_13
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB37_13
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB37_13
	l.nop	0
	l.nop	205
.LBB37_13:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB37_14
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB37_14
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB37_14
	l.nop	0
	l.nop	205
.LBB37_14:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB37_15
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB37_15
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB37_15
	l.nop	0
	l.nop	205
.LBB37_15:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB37_16
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB37_16
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB37_16
	l.nop	0
	l.nop	205
.LBB37_16:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB37_17
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB37_17
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB37_17
	l.nop	0
	l.nop	205
.LBB37_17:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB37_18
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB37_18
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB37_18
	l.nop	0
	l.nop	205
.LBB37_18:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB37_19
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB37_19
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB37_19
	l.nop	0
	l.nop	205
.LBB37_19:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB37_20
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB37_20
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB37_20
	l.nop	0
	l.nop	205
.LBB37_20:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB37_21
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB37_21
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB37_21
	l.nop	0
	l.nop	205
.LBB37_21:
.LBB37_22:
	l.jr	r30
	l.nop	0
.LBB37_7:
	l.addi	r18, r18, 3230
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2584          # CFC
	l.bf	.LBB37_5
	l.nop	0
.LBB37_8:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB37_6
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB37_5
	l.nop	0
	l.j	.LBB37_1
	l.nop	0
.LBB37_9:
	l.addi	r18, r18, 3235
	l.sfltsi	r13, 1
	l.addi	r20, r20, 2588          # CFC
	l.bf	.LBB37_4
	l.nop	0
.LBB37_10:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB37_6
	l.nop	0
	l.sfltsi	r3, 1
	l.bf	.LBB37_4
	l.nop	0
	l.j	.LBB37_2
	l.nop	0
.LBB37_11:
	l.addi	r18, r18, 3245
	l.sfnei	r14, 0
	l.addi	r20, r20, 2596          # CFC
	l.bf	.LBB37_3
	l.nop	0
.LBB37_12:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB37_6
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB37_3
	l.nop	0
	l.j	.LBB37_4
	l.nop	0
.Lfunc_end37:
	.size	printf_to_uart, .Lfunc_end37-printf_to_uart

	.hidden	putchar_to_uart
	.globl	putchar_to_uart
	.p2align	2
	.type	putchar_to_uart,@function
putchar_to_uart:                        # @putchar_to_uart
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 652
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r20, r20, 1304          # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.sw	-12(r2), r3
	l.sw	2544(r10), r19
	l.sw	2540(r10), r12
	l.addi	r12, r10, 0
	l.sw	0(r1), r3
	l.addi	r10, r10, -16
	l.sw	5092(r21), r29
	l.movhi	r3, hi(.L.str.6)
	l.sw	2536(r12), r13
	l.sw	5088(r21), r22
	l.addi	r28, r28, 3912
	l.ori	r3, r3, lo(.L.str.6)
	l.sw	2548(r10), r13
	l.addi	r22, r21, 0             # CFC
	l.movhi	r13, hi(.L.str.6)
	l.ori	r13, r13, lo(.L.str.6)
	l.addi	r21, r21, -16           # CFC
	l.sw	5084(r22), r23
	l.sw	5096(r21), r23
	l.movhi	r23, hi(.L.str.6)
	l.ori	r23, r23, lo(.L.str.6)
	l.jal	printf_to_uart
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3260
	l.lwz	r11, -12(r2)
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.lwz	r8, 2536(r12)
	l.addi	r10, r12, 0
	l.lwz	r12, 2540(r10)
	l.lwz	r19, 2544(r10)
	l.lwz	r31, 5084(r22)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5088(r21)
	l.lwz	r29, 5092(r21)
	l.addi	r20, r20, 2608          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB38_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB38_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB38_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB38_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB38_2
	l.nop	0
	l.nop	205
.LBB38_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB38_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB38_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB38_3
	l.nop	0
	l.nop	205
.LBB38_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB38_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB38_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB38_4
	l.nop	0
	l.nop	205
.LBB38_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB38_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB38_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB38_5
	l.nop	0
	l.nop	205
.LBB38_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB38_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB38_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB38_6
	l.nop	0
	l.nop	205
.LBB38_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB38_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB38_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB38_7
	l.nop	0
	l.nop	205
.LBB38_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB38_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB38_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB38_8
	l.nop	0
	l.nop	205
.LBB38_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB38_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB38_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB38_9
	l.nop	0
	l.nop	205
.LBB38_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB38_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB38_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB38_10
	l.nop	0
	l.nop	205
.LBB38_10:
.LBB38_11:
	l.jr	r30
	l.nop	0
.Lfunc_end38:
	.size	putchar_to_uart, .Lfunc_end38-putchar_to_uart

	.hidden	puts_to_uart
	.globl	puts_to_uart
	.p2align	2
	.type	puts_to_uart,@function
puts_to_uart:                           # @puts_to_uart
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 653
	l.sw	-4(r1), r9
	l.addi	r20, r20, 1306          # CFC
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -12
	l.sw	0(r1), r3
	l.sw	2544(r10), r19
	l.sw	2540(r10), r12
	l.addi	r12, r10, 0
	l.movhi	r3, hi(.L.str.5.8)
	l.addi	r10, r10, -12
	l.sw	5092(r21), r29
	l.addi	r28, r28, 3918
	l.ori	r3, r3, lo(.L.str.5.8)
	l.sw	2548(r10), r13
	l.sw	5088(r21), r22
	l.movhi	r13, hi(.L.str.5.8)
	l.ori	r13, r13, lo(.L.str.5.8)
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -12           # CFC
	l.sw	5096(r21), r23
	l.movhi	r23, hi(.L.str.5.8)
	l.ori	r23, r23, lo(.L.str.5.8)
	l.addi	r18, r18, 3265
	l.jal	printf_to_uart
	l.nop	0                       # in delay slot
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 2540(r10)
	l.lwz	r19, 2544(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5088(r21)
	l.lwz	r29, 5092(r21)
	l.addi	r20, r20, 2612          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB39_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB39_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB39_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB39_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB39_2
	l.nop	0
	l.nop	205
.LBB39_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB39_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB39_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB39_3
	l.nop	0
	l.nop	205
.LBB39_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB39_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB39_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB39_4
	l.nop	0
	l.nop	205
.LBB39_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB39_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB39_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB39_5
	l.nop	0
	l.nop	205
.LBB39_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB39_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB39_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB39_6
	l.nop	0
	l.nop	205
.LBB39_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB39_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB39_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB39_7
	l.nop	0
	l.nop	205
.LBB39_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB39_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB39_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB39_8
	l.nop	0
	l.nop	205
.LBB39_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB39_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB39_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB39_9
	l.nop	0
	l.nop	205
.LBB39_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB39_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB39_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB39_10
	l.nop	0
	l.nop	205
.LBB39_10:
.LBB39_11:
	l.jr	r30
	l.nop	0
.Lfunc_end39:
	.size	puts_to_uart, .Lfunc_end39-puts_to_uart

	.hidden	uart_init
	.globl	uart_init
	.p2align	2
	.type	uart_init,@function
uart_init:                              # @uart_init
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 654
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r4, 36864
	l.ori	r5, r4, 2
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.addi	r6, r0, 199
	l.movhi	r14, 36864
	l.sw	5092(r21), r22
	l.sb	0(r5), r6
	l.ori	r15, r14, 2
	l.addi	r22, r21, 0             # CFC
	l.ori	r5, r4, 1
	l.addi	r16, r0, 199
	l.addi	r21, r21, -4            # CFC
	l.addi	r20, r20, 1308          # CFC
	l.movhi	r6, 0
	l.sb	2548(r15), r16
	l.movhi	r24, 36864
	l.sb	0(r5), r6
	l.ori	r15, r14, 1
	l.ori	r25, r24, 2
	l.ori	r4, r4, 3
	l.movhi	r16, 0
	l.addi	r26, r0, 199
	l.addi	r7, r0, 3
	l.sb	2548(r15), r16
	l.sb	5096(r25), r26
	l.sb	0(r4), r7
	l.ori	r14, r14, 3
	l.ori	r25, r24, 1
	l.lbz	r7, 0(r4)
	l.addi	r17, r0, 3
	l.movhi	r26, 0
	l.ori	r7, r7, 128
	l.sb	2548(r14), r17
	l.sb	5096(r25), r26
	l.sb	0(r4), r7
	l.lbz	r17, 2548(r14)
	l.addi	r28, r28, 3924
	l.ori	r24, r24, 3
	l.movhi	r7, hi(UART_BASE_ADR)
	l.ori	r17, r17, 128
	l.addi	r27, r0, 3
	l.ori	r7, r7, lo(UART_BASE_ADR)
	l.sb	2548(r14), r17
	l.sb	5096(r24), r27
	l.slli	r3, r3, 2
	l.movhi	r17, hi(UART_BASE_ADR)
	l.lbz	r27, 5096(r24)
	l.add	r3, r3, r7
	l.ori	r17, r17, lo(UART_BASE_ADR)
	l.ori	r27, r27, 128
	l.lwz	r3, 0(r3)
	l.slli	r13, r13, 2
	l.sb	5096(r24), r27
	l.addi	r7, r0, 27
	l.add	r13, r13, r17
	l.movhi	r27, hi(UART_BASE_ADR)
	l.sb	0(r3), r7
	l.lwz	r13, 2548(r13)
	l.ori	r27, r27, lo(UART_BASE_ADR)
	l.sb	0(r5), r6
	l.addi	r18, r18, 3270
	l.addi	r17, r0, 27
	l.slli	r23, r23, 2
	l.lbz	r3, 0(r4)
	l.sb	2548(r13), r17
	l.add	r23, r23, r27
	l.andi	r3, r3, 127
	l.sb	2548(r15), r16
	l.lwz	r23, 5096(r23)
	l.sb	0(r4), r3
	l.lbz	r13, 2548(r14)
	l.addi	r27, r0, 27
	l.addi	r1, r2, 0
	l.andi	r13, r13, 127
	l.sb	5096(r23), r27
	l.lwz	r2, -4(r1)
	l.sb	2548(r14), r13
	l.sb	5096(r25), r26
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.lbz	r23, 5096(r24)
	l.andi	r23, r23, 127
	l.sb	5096(r24), r23
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 2616          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB40_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB40_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB40_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB40_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB40_2
	l.nop	0
	l.nop	205
.LBB40_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB40_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB40_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB40_3
	l.nop	0
	l.nop	205
.LBB40_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB40_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB40_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB40_4
	l.nop	0
	l.nop	205
.LBB40_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB40_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB40_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB40_5
	l.nop	0
	l.nop	205
.LBB40_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB40_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB40_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB40_6
	l.nop	0
	l.nop	205
.LBB40_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB40_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB40_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB40_7
	l.nop	0
	l.nop	205
.LBB40_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB40_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB40_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB40_8
	l.nop	0
	l.nop	205
.LBB40_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB40_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB40_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB40_9
	l.nop	0
	l.nop	205
.LBB40_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB40_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB40_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB40_10
	l.nop	0
	l.nop	205
.LBB40_10:
.LBB40_11:
	l.jr	r30
	l.nop	0
.Lfunc_end40:
	.size	uart_init, .Lfunc_end40-uart_init

	.hidden	uart_putc
	.globl	uart_putc
	.p2align	2
	.type	uart_putc,@function
uart_putc:                              # @uart_putc
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 655
	l.addi	r20, r20, 1310          # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r5, 36864
	l.addi	r28, r28, 3930
	l.ori	r5, r5, 5
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.movhi	r15, 36864
	l.addi	r18, r18, 3275
	l.ori	r15, r15, 5
	l.sw	5092(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r25, 36864
	l.ori	r25, r25, 5
	l.addi	r20, r20, 2620          # CFC
.LBB41_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 656
	l.lbz	r6, 0(r5)
	l.andi	r6, r6, 32
	l.addi	r20, r20, 1312          # CFC
	l.sfeqi	r6, 0
	l.lbz	r16, 2548(r15)
	l.addi	r28, r28, 3936
	l.andi	r16, r16, 32
	l.lbz	r26, 5096(r25)
	l.andi	r26, r26, 32
	l.bf	.LBB41_10
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3280
	l.sfeqi	r16, 0
	l.addi	r20, r20, 2624          # CFC
	l.bf	.LBB41_11
	l.nop	0
.LBB41_2:                               # %do.end
	l.addi	r18, r18, 657
	l.movhi	r5, hi(UART_BASE_ADR)
	l.ori	r5, r5, lo(UART_BASE_ADR)
	l.slli	r3, r3, 2
	l.add	r3, r3, r5
	l.lwz	r3, 0(r3)
	l.movhi	r15, hi(UART_BASE_ADR)
	l.ori	r15, r15, lo(UART_BASE_ADR)
	l.addi	r20, r20, 1314          # CFC
	l.slli	r13, r13, 2
	l.sb	0(r3), r4
	l.add	r13, r13, r15
	l.movhi	r25, hi(UART_BASE_ADR)
	l.andi	r4, r4, 255
	l.lwz	r13, 2548(r13)
	l.ori	r25, r25, lo(UART_BASE_ADR)
	l.addi	r28, r28, 3942
	l.sfnei	r4, 10
	l.sb	2548(r13), r14
	l.andi	r14, r14, 255
	l.slli	r23, r23, 2
	l.add	r23, r23, r25
	l.lwz	r23, 5096(r23)
	l.sb	5096(r23), r24
	l.andi	r24, r24, 255
	l.bf	.LBB41_12
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3285
	l.sfnei	r14, 10
	l.addi	r20, r20, 2628          # CFC
	l.bf	.LBB41_13
	l.nop	0
.LBB41_3:                               # %do.body7.preheader
	l.addi	r18, r18, 658
	l.movhi	r4, 36864
	l.addi	r20, r20, 1316          # CFC
	l.ori	r4, r4, 5
	l.movhi	r14, 36864
	l.addi	r28, r28, 3948
	l.ori	r14, r14, 5
	l.addi	r18, r18, 3290
	l.movhi	r24, 36864
	l.ori	r24, r24, 5
	l.addi	r20, r20, 2632          # CFC
.LBB41_4:                               # %do.body7
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 659
	l.lbz	r5, 0(r4)
	l.andi	r5, r5, 32
	l.addi	r20, r20, 1318          # CFC
	l.sfeqi	r5, 0
	l.lbz	r15, 2548(r14)
	l.addi	r28, r28, 3954
	l.andi	r15, r15, 32
	l.lbz	r25, 5096(r24)
	l.andi	r25, r25, 32
	l.bf	.LBB41_14
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3295
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2636          # CFC
	l.bf	.LBB41_15
	l.nop	0
.LBB41_5:                               # %do.end15
	l.addi	r18, r18, 660
	l.addi	r4, r0, 13
	l.addi	r20, r20, 1320          # CFC
	l.sb	0(r3), r4
	l.addi	r14, r0, 13
	l.addi	r28, r28, 3960
	l.sb	2548(r13), r14
	l.addi	r18, r18, 3300
	l.addi	r24, r0, 13
	l.sb	5096(r23), r24
	l.addi	r20, r20, 2640          # CFC
.LBB41_6:                               # %do.body18.preheader
	l.addi	r18, r18, 661
	l.movhi	r3, 36864
	l.addi	r20, r20, 1322          # CFC
	l.ori	r3, r3, 5
	l.movhi	r13, 36864
	l.addi	r28, r28, 3966
	l.ori	r13, r13, 5
	l.addi	r18, r18, 3305
	l.movhi	r23, 36864
	l.ori	r23, r23, 5
	l.addi	r20, r20, 2644          # CFC
.LBB41_7:                               # %do.body18
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 662
	l.lbz	r4, 0(r3)
	l.andi	r4, r4, 96
	l.addi	r20, r20, 1324          # CFC
	l.sfnei	r4, 96
	l.lbz	r14, 2548(r13)
	l.addi	r28, r28, 3972
	l.andi	r14, r14, 96
	l.lbz	r24, 5096(r23)
	l.andi	r24, r24, 96
	l.bf	.LBB41_16
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3310
	l.sfnei	r14, 96
	l.addi	r20, r20, 2648          # CFC
	l.bf	.LBB41_17
	l.nop	0
.LBB41_8:                               # %do.end26
	l.addi	r18, r18, 663
	l.addi	r1, r2, 0
	l.addi	r20, r20, 1326          # CFC
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 3978
	l.lwz	r12, 2544(r10)
	l.addi	r18, r18, 3315
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 2652          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB41_9
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB41_9:                               # %do.end26
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB41_18
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB41_18
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB41_18
	l.nop	0
	l.nop	205
.LBB41_18:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB41_19
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB41_19
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB41_19
	l.nop	0
	l.nop	205
.LBB41_19:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB41_20
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB41_20
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB41_20
	l.nop	0
	l.nop	205
.LBB41_20:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB41_21
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB41_21
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB41_21
	l.nop	0
	l.nop	205
.LBB41_21:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB41_22
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB41_22
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB41_22
	l.nop	0
	l.nop	205
.LBB41_22:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB41_23
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB41_23
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB41_23
	l.nop	0
	l.nop	205
.LBB41_23:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB41_24
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB41_24
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB41_24
	l.nop	0
	l.nop	205
.LBB41_24:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB41_25
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB41_25
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB41_25
	l.nop	0
	l.nop	205
.LBB41_25:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB41_26
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB41_26
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB41_26
	l.nop	0
	l.nop	205
.LBB41_26:
.LBB41_27:
	l.jr	r30
	l.nop	0
.LBB41_10:
	l.addi	r18, r18, 3280
	l.sfeqi	r16, 0
	l.addi	r20, r20, 2624          # CFC
	l.bf	.LBB41_1
	l.nop	0
.LBB41_11:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB41_9
	l.nop	0
	l.sfeqi	r6, 0
	l.bf	.LBB41_1
	l.nop	0
	l.j	.LBB41_2
	l.nop	0
.LBB41_12:
	l.addi	r18, r18, 3285
	l.sfnei	r14, 10
	l.addi	r20, r20, 2628          # CFC
	l.bf	.LBB41_6
	l.nop	0
.LBB41_13:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB41_9
	l.nop	0
	l.sfnei	r4, 10
	l.bf	.LBB41_6
	l.nop	0
	l.j	.LBB41_3
	l.nop	0
.LBB41_14:
	l.addi	r18, r18, 3295
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2636          # CFC
	l.bf	.LBB41_4
	l.nop	0
.LBB41_15:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB41_9
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB41_4
	l.nop	0
	l.j	.LBB41_5
	l.nop	0
.LBB41_16:
	l.addi	r18, r18, 3310
	l.sfnei	r14, 96
	l.addi	r20, r20, 2648          # CFC
	l.bf	.LBB41_7
	l.nop	0
.LBB41_17:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB41_9
	l.nop	0
	l.sfnei	r4, 96
	l.bf	.LBB41_7
	l.nop	0
	l.j	.LBB41_8
	l.nop	0
.Lfunc_end41:
	.size	uart_putc, .Lfunc_end41-uart_putc

	.hidden	uart_putc_noblock
	.globl	uart_putc_noblock
	.p2align	2
	.type	uart_putc_noblock,@function
uart_putc_noblock:                      # @uart_putc_noblock
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 664
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 1328          # CFC
	l.movhi	r5, hi(UART_BASE_ADR)
	l.ori	r5, r5, lo(UART_BASE_ADR)
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.slli	r3, r3, 2
	l.movhi	r15, hi(UART_BASE_ADR)
	l.sw	5092(r21), r22
	l.add	r3, r3, r5
	l.ori	r15, r15, lo(UART_BASE_ADR)
	l.addi	r28, r28, 3984
	l.addi	r22, r21, 0             # CFC
	l.lwz	r3, 0(r3)
	l.slli	r13, r13, 2
	l.addi	r21, r21, -4            # CFC
	l.sb	0(r3), r4
	l.add	r13, r13, r15
	l.movhi	r25, hi(UART_BASE_ADR)
	l.addi	r1, r2, 0
	l.lwz	r13, 2548(r13)
	l.ori	r25, r25, lo(UART_BASE_ADR)
	l.addi	r18, r18, 3320
	l.lwz	r2, -4(r1)
	l.sb	2548(r13), r14
	l.slli	r23, r23, 2
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.add	r23, r23, r25
	l.lwz	r23, 5096(r23)
	l.sb	5096(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 2656          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB42_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB42_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB42_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB42_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB42_2
	l.nop	0
	l.nop	205
.LBB42_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB42_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB42_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB42_3
	l.nop	0
	l.nop	205
.LBB42_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB42_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB42_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB42_4
	l.nop	0
	l.nop	205
.LBB42_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB42_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB42_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB42_5
	l.nop	0
	l.nop	205
.LBB42_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB42_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB42_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB42_6
	l.nop	0
	l.nop	205
.LBB42_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB42_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB42_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB42_7
	l.nop	0
	l.nop	205
.LBB42_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB42_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB42_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB42_8
	l.nop	0
	l.nop	205
.LBB42_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB42_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB42_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB42_9
	l.nop	0
	l.nop	205
.LBB42_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB42_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB42_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB42_10
	l.nop	0
	l.nop	205
.LBB42_10:
.LBB42_11:
	l.jr	r30
	l.nop	0
.Lfunc_end42:
	.size	uart_putc_noblock, .Lfunc_end42-uart_putc_noblock

	.hidden	uart_getc
	.globl	uart_getc
	.p2align	2
	.type	uart_getc,@function
uart_getc:                              # @uart_getc
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 665
	l.addi	r20, r20, 1330          # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r4, 36864
	l.addi	r28, r28, 3990
	l.ori	r4, r4, 5
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.movhi	r14, 36864
	l.addi	r18, r18, 3325
	l.ori	r14, r14, 5
	l.sw	5092(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r24, 36864
	l.ori	r24, r24, 5
	l.addi	r20, r20, 2660          # CFC
.LBB43_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 666
	l.lbz	r5, 0(r4)
	l.andi	r5, r5, 1
	l.addi	r20, r20, 1332          # CFC
	l.sfeqi	r5, 0
	l.lbz	r15, 2548(r14)
	l.addi	r28, r28, 3996
	l.andi	r15, r15, 1
	l.lbz	r25, 5096(r24)
	l.andi	r25, r25, 1
	l.bf	.LBB43_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3330
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2664          # CFC
	l.bf	.LBB43_5
	l.nop	0
.LBB43_2:                               # %do.end
	l.addi	r18, r18, 667
	l.movhi	r4, hi(UART_BASE_ADR)
	l.ori	r4, r4, lo(UART_BASE_ADR)
	l.slli	r3, r3, 2
	l.add	r3, r3, r4
	l.lwz	r3, 0(r3)
	l.movhi	r14, hi(UART_BASE_ADR)
	l.addi	r20, r20, 1334          # CFC
	l.ori	r14, r14, lo(UART_BASE_ADR)
	l.slli	r13, r13, 2
	l.lbs	r11, 0(r3)
	l.add	r13, r13, r14
	l.movhi	r24, hi(UART_BASE_ADR)
	l.addi	r1, r2, 0
	l.addi	r28, r28, 4002
	l.lwz	r13, 2548(r13)
	l.ori	r24, r24, lo(UART_BASE_ADR)
	l.lwz	r2, -4(r1)
	l.lbs	r8, 2548(r13)
	l.slli	r23, r23, 2
	l.addi	r10, r12, 0
	l.addi	r18, r18, 3335
	l.lwz	r12, 2544(r10)
	l.add	r23, r23, r24
	l.lwz	r23, 5096(r23)
	l.lbs	r31, 5096(r23)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 2668          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB43_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB43_3:                               # %do.end
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB43_6
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB43_6
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB43_6
	l.nop	0
	l.nop	205
.LBB43_6:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB43_7
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB43_7
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB43_7
	l.nop	0
	l.nop	205
.LBB43_7:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB43_8
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB43_8
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB43_8
	l.nop	0
	l.nop	205
.LBB43_8:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB43_9
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB43_9
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB43_9
	l.nop	0
	l.nop	205
.LBB43_9:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB43_10
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB43_10
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB43_10
	l.nop	0
	l.nop	205
.LBB43_10:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB43_11
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB43_11
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB43_11
	l.nop	0
	l.nop	205
.LBB43_11:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB43_12
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB43_12
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB43_12
	l.nop	0
	l.nop	205
.LBB43_12:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB43_13
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB43_13
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB43_13
	l.nop	0
	l.nop	205
.LBB43_13:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB43_14
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB43_14
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB43_14
	l.nop	0
	l.nop	205
.LBB43_14:
.LBB43_15:
	l.jr	r30
	l.nop	0
.LBB43_4:
	l.addi	r18, r18, 3330
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2664          # CFC
	l.bf	.LBB43_1
	l.nop	0
.LBB43_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB43_3
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB43_1
	l.nop	0
	l.j	.LBB43_2
	l.nop	0
.Lfunc_end43:
	.size	uart_getc, .Lfunc_end43-uart_getc

	.hidden	uart_check_for_char
	.globl	uart_check_for_char
	.p2align	2
	.type	uart_check_for_char,@function
uart_check_for_char:                    # @uart_check_for_char
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 668
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r20, r20, 1336          # CFC
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.ori	r3, r3, 5
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbz	r3, 0(r3)
	l.movhi	r13, 36864
	l.addi	r28, r28, 4008
	l.sw	5092(r21), r22
	l.andi	r11, r3, 1
	l.ori	r13, r13, 5
	l.addi	r22, r21, 0             # CFC
	l.addi	r1, r2, 0
	l.lbz	r13, 2548(r13)
	l.addi	r21, r21, -4            # CFC
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 3340
	l.andi	r8, r13, 1
	l.movhi	r23, 36864
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.ori	r23, r23, 5
	l.lbz	r23, 5096(r23)
	l.andi	r31, r23, 1
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 2672          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB44_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB44_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB44_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB44_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB44_2
	l.nop	0
	l.nop	205
.LBB44_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB44_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB44_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB44_3
	l.nop	0
	l.nop	205
.LBB44_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB44_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB44_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB44_4
	l.nop	0
	l.nop	205
.LBB44_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB44_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB44_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB44_5
	l.nop	0
	l.nop	205
.LBB44_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB44_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB44_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB44_6
	l.nop	0
	l.nop	205
.LBB44_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB44_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB44_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB44_7
	l.nop	0
	l.nop	205
.LBB44_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB44_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB44_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB44_8
	l.nop	0
	l.nop	205
.LBB44_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB44_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB44_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB44_9
	l.nop	0
	l.nop	205
.LBB44_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB44_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB44_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB44_10
	l.nop	0
	l.nop	205
.LBB44_10:
.LBB44_11:
	l.jr	r30
	l.nop	0
.Lfunc_end44:
	.size	uart_check_for_char, .Lfunc_end44-uart_check_for_char

	.hidden	uart_rxint_enable
	.globl	uart_rxint_enable
	.p2align	2
	.type	uart_rxint_enable,@function
uart_rxint_enable:                      # @uart_rxint_enable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 669
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 1338          # CFC
	l.movhi	r3, 36864
	l.ori	r3, r3, 1
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbz	r4, 0(r3)
	l.movhi	r13, 36864
	l.sw	5092(r21), r22
	l.ori	r4, r4, 1
	l.addi	r28, r28, 4014
	l.ori	r13, r13, 1
	l.addi	r22, r21, 0             # CFC
	l.sb	0(r3), r4
	l.lbz	r14, 2548(r13)
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r2, 0
	l.ori	r14, r14, 1
	l.movhi	r23, 36864
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 3345
	l.sb	2548(r13), r14
	l.ori	r23, r23, 1
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.lbz	r24, 5096(r23)
	l.ori	r24, r24, 1
	l.sb	5096(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 2676          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB45_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB45_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB45_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB45_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB45_2
	l.nop	0
	l.nop	205
.LBB45_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB45_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB45_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB45_3
	l.nop	0
	l.nop	205
.LBB45_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB45_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB45_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB45_4
	l.nop	0
	l.nop	205
.LBB45_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB45_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB45_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB45_5
	l.nop	0
	l.nop	205
.LBB45_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB45_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB45_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB45_6
	l.nop	0
	l.nop	205
.LBB45_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB45_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB45_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB45_7
	l.nop	0
	l.nop	205
.LBB45_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB45_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB45_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB45_8
	l.nop	0
	l.nop	205
.LBB45_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB45_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB45_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB45_9
	l.nop	0
	l.nop	205
.LBB45_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB45_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB45_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB45_10
	l.nop	0
	l.nop	205
.LBB45_10:
.LBB45_11:
	l.jr	r30
	l.nop	0
.Lfunc_end45:
	.size	uart_rxint_enable, .Lfunc_end45-uart_rxint_enable

	.hidden	uart_rxint_disable
	.globl	uart_rxint_disable
	.p2align	2
	.type	uart_rxint_disable,@function
uart_rxint_disable:                     # @uart_rxint_disable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 670
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 1340          # CFC
	l.movhi	r3, 36864
	l.ori	r3, r3, 1
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbz	r4, 0(r3)
	l.movhi	r13, 36864
	l.sw	5092(r21), r22
	l.andi	r4, r4, 254
	l.addi	r28, r28, 4020
	l.ori	r13, r13, 1
	l.addi	r22, r21, 0             # CFC
	l.sb	0(r3), r4
	l.lbz	r14, 2548(r13)
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r2, 0
	l.andi	r14, r14, 254
	l.movhi	r23, 36864
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 3350
	l.sb	2548(r13), r14
	l.ori	r23, r23, 1
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.lbz	r24, 5096(r23)
	l.andi	r24, r24, 254
	l.sb	5096(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 2680          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB46_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB46_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB46_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB46_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB46_2
	l.nop	0
	l.nop	205
.LBB46_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB46_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB46_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB46_3
	l.nop	0
	l.nop	205
.LBB46_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB46_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB46_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB46_4
	l.nop	0
	l.nop	205
.LBB46_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB46_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB46_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB46_5
	l.nop	0
	l.nop	205
.LBB46_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB46_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB46_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB46_6
	l.nop	0
	l.nop	205
.LBB46_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB46_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB46_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB46_7
	l.nop	0
	l.nop	205
.LBB46_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB46_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB46_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB46_8
	l.nop	0
	l.nop	205
.LBB46_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB46_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB46_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB46_9
	l.nop	0
	l.nop	205
.LBB46_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB46_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB46_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB46_10
	l.nop	0
	l.nop	205
.LBB46_10:
.LBB46_11:
	l.jr	r30
	l.nop	0
.Lfunc_end46:
	.size	uart_rxint_disable, .Lfunc_end46-uart_rxint_disable

	.hidden	uart_txint_enable
	.globl	uart_txint_enable
	.p2align	2
	.type	uart_txint_enable,@function
uart_txint_enable:                      # @uart_txint_enable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 671
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 1342          # CFC
	l.movhi	r3, 36864
	l.ori	r3, r3, 1
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbz	r4, 0(r3)
	l.movhi	r13, 36864
	l.sw	5092(r21), r22
	l.ori	r4, r4, 2
	l.addi	r28, r28, 4026
	l.ori	r13, r13, 1
	l.addi	r22, r21, 0             # CFC
	l.sb	0(r3), r4
	l.lbz	r14, 2548(r13)
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r2, 0
	l.ori	r14, r14, 2
	l.movhi	r23, 36864
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 3355
	l.sb	2548(r13), r14
	l.ori	r23, r23, 1
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.lbz	r24, 5096(r23)
	l.ori	r24, r24, 2
	l.sb	5096(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 2684          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB47_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB47_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB47_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB47_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB47_2
	l.nop	0
	l.nop	205
.LBB47_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB47_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB47_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB47_3
	l.nop	0
	l.nop	205
.LBB47_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB47_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB47_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB47_4
	l.nop	0
	l.nop	205
.LBB47_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB47_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB47_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB47_5
	l.nop	0
	l.nop	205
.LBB47_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB47_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB47_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB47_6
	l.nop	0
	l.nop	205
.LBB47_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB47_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB47_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB47_7
	l.nop	0
	l.nop	205
.LBB47_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB47_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB47_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB47_8
	l.nop	0
	l.nop	205
.LBB47_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB47_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB47_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB47_9
	l.nop	0
	l.nop	205
.LBB47_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB47_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB47_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB47_10
	l.nop	0
	l.nop	205
.LBB47_10:
.LBB47_11:
	l.jr	r30
	l.nop	0
.Lfunc_end47:
	.size	uart_txint_enable, .Lfunc_end47-uart_txint_enable

	.hidden	uart_txint_disable
	.globl	uart_txint_disable
	.p2align	2
	.type	uart_txint_disable,@function
uart_txint_disable:                     # @uart_txint_disable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 672
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 1344          # CFC
	l.movhi	r3, 36864
	l.ori	r3, r3, 1
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbz	r4, 0(r3)
	l.movhi	r13, 36864
	l.sw	5092(r21), r22
	l.andi	r4, r4, 253
	l.addi	r28, r28, 4032
	l.ori	r13, r13, 1
	l.addi	r22, r21, 0             # CFC
	l.sb	0(r3), r4
	l.lbz	r14, 2548(r13)
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r2, 0
	l.andi	r14, r14, 253
	l.movhi	r23, 36864
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 3360
	l.sb	2548(r13), r14
	l.ori	r23, r23, 1
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.lbz	r24, 5096(r23)
	l.andi	r24, r24, 253
	l.sb	5096(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 2688          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB48_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB48_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB48_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB48_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB48_2
	l.nop	0
	l.nop	205
.LBB48_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB48_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB48_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB48_3
	l.nop	0
	l.nop	205
.LBB48_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB48_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB48_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB48_4
	l.nop	0
	l.nop	205
.LBB48_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB48_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB48_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB48_5
	l.nop	0
	l.nop	205
.LBB48_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB48_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB48_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB48_6
	l.nop	0
	l.nop	205
.LBB48_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB48_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB48_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB48_7
	l.nop	0
	l.nop	205
.LBB48_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB48_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB48_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB48_8
	l.nop	0
	l.nop	205
.LBB48_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB48_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB48_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB48_9
	l.nop	0
	l.nop	205
.LBB48_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB48_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB48_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB48_10
	l.nop	0
	l.nop	205
.LBB48_10:
.LBB48_11:
	l.jr	r30
	l.nop	0
.Lfunc_end48:
	.size	uart_txint_disable, .Lfunc_end48-uart_txint_disable

	.hidden	uart_get_iir
	.globl	uart_get_iir
	.p2align	2
	.type	uart_get_iir,@function
uart_get_iir:                           # @uart_get_iir
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 673
	l.sw	-4(r1), r2
	l.addi	r20, r20, 1346          # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.ori	r3, r3, 2
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbs	r11, 0(r3)
	l.addi	r28, r28, 4038
	l.movhi	r13, 36864
	l.sw	5092(r21), r22
	l.addi	r1, r2, 0
	l.ori	r13, r13, 2
	l.addi	r22, r21, 0             # CFC
	l.lwz	r2, -4(r1)
	l.lbs	r8, 2548(r13)
	l.addi	r18, r18, 3365
	l.addi	r21, r21, -4            # CFC
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.movhi	r23, 36864
	l.ori	r23, r23, 2
	l.lbs	r31, 5096(r23)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 2692          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB49_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB49_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB49_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB49_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB49_2
	l.nop	0
	l.nop	205
.LBB49_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB49_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB49_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB49_3
	l.nop	0
	l.nop	205
.LBB49_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB49_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB49_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB49_4
	l.nop	0
	l.nop	205
.LBB49_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB49_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB49_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB49_5
	l.nop	0
	l.nop	205
.LBB49_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB49_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB49_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB49_6
	l.nop	0
	l.nop	205
.LBB49_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB49_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB49_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB49_7
	l.nop	0
	l.nop	205
.LBB49_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB49_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB49_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB49_8
	l.nop	0
	l.nop	205
.LBB49_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB49_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB49_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB49_9
	l.nop	0
	l.nop	205
.LBB49_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB49_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB49_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB49_10
	l.nop	0
	l.nop	205
.LBB49_10:
.LBB49_11:
	l.jr	r30
	l.nop	0
.Lfunc_end49:
	.size	uart_get_iir, .Lfunc_end49-uart_get_iir

	.hidden	uart_get_lsr
	.globl	uart_get_lsr
	.p2align	2
	.type	uart_get_lsr,@function
uart_get_lsr:                           # @uart_get_lsr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 674
	l.sw	-4(r1), r2
	l.addi	r20, r20, 1348          # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.ori	r3, r3, 5
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbs	r11, 0(r3)
	l.addi	r28, r28, 4044
	l.movhi	r13, 36864
	l.sw	5092(r21), r22
	l.addi	r1, r2, 0
	l.ori	r13, r13, 5
	l.addi	r22, r21, 0             # CFC
	l.lwz	r2, -4(r1)
	l.lbs	r8, 2548(r13)
	l.addi	r18, r18, 3370
	l.addi	r21, r21, -4            # CFC
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.movhi	r23, 36864
	l.ori	r23, r23, 5
	l.lbs	r31, 5096(r23)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 2696          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB50_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB50_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB50_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB50_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB50_2
	l.nop	0
	l.nop	205
.LBB50_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB50_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB50_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB50_3
	l.nop	0
	l.nop	205
.LBB50_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB50_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB50_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB50_4
	l.nop	0
	l.nop	205
.LBB50_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB50_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB50_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB50_5
	l.nop	0
	l.nop	205
.LBB50_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB50_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB50_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB50_6
	l.nop	0
	l.nop	205
.LBB50_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB50_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB50_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB50_7
	l.nop	0
	l.nop	205
.LBB50_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB50_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB50_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB50_8
	l.nop	0
	l.nop	205
.LBB50_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB50_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB50_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB50_9
	l.nop	0
	l.nop	205
.LBB50_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB50_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB50_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB50_10
	l.nop	0
	l.nop	205
.LBB50_10:
.LBB50_11:
	l.jr	r30
	l.nop	0
.Lfunc_end50:
	.size	uart_get_lsr, .Lfunc_end50-uart_get_lsr

	.hidden	uart_get_msr
	.globl	uart_get_msr
	.p2align	2
	.type	uart_get_msr,@function
uart_get_msr:                           # @uart_get_msr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 675
	l.sw	-4(r1), r2
	l.addi	r20, r20, 1350          # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.ori	r3, r3, 6
	l.sw	2544(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbs	r11, 0(r3)
	l.addi	r28, r28, 4050
	l.movhi	r13, 36864
	l.sw	5092(r21), r22
	l.addi	r1, r2, 0
	l.ori	r13, r13, 6
	l.addi	r22, r21, 0             # CFC
	l.lwz	r2, -4(r1)
	l.lbs	r8, 2548(r13)
	l.addi	r18, r18, 3375
	l.addi	r21, r21, -4            # CFC
	l.addi	r10, r12, 0
	l.lwz	r12, 2544(r10)
	l.movhi	r23, 36864
	l.ori	r23, r23, 6
	l.lbs	r31, 5096(r23)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 5092(r21)
	l.addi	r20, r20, 2700          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB51_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB51_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB51_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB51_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB51_2
	l.nop	0
	l.nop	205
.LBB51_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB51_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB51_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB51_3
	l.nop	0
	l.nop	205
.LBB51_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB51_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB51_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB51_4
	l.nop	0
	l.nop	205
.LBB51_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB51_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB51_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB51_5
	l.nop	0
	l.nop	205
.LBB51_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB51_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB51_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB51_6
	l.nop	0
	l.nop	205
.LBB51_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB51_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB51_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB51_7
	l.nop	0
	l.nop	205
.LBB51_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB51_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB51_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB51_8
	l.nop	0
	l.nop	205
.LBB51_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB51_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB51_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB51_9
	l.nop	0
	l.nop	205
.LBB51_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB51_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB51_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB51_10
	l.nop	0
	l.nop	205
.LBB51_10:
.LBB51_11:
	l.jr	r30
	l.nop	0
.Lfunc_end51:
	.size	uart_get_msr, .Lfunc_end51-uart_get_msr

	.data


	.type	crc_32_tab,@object      # @crc_32_tab
	.p2align	2
crc_32_tab:
	.long	0                       # 0x0
	.long	1996959894              # 0x77073096
	.long	3993919788              # 0xee0e612c
	.long	2567524794              # 0x990951ba
	.long	124634137               # 0x76dc419
	.long	1886057615              # 0x706af48f
	.long	3915621685              # 0xe963a535
	.long	2657392035              # 0x9e6495a3
	.long	249268274               # 0xedb8832
	.long	2044508324              # 0x79dcb8a4
	.long	3772115230              # 0xe0d5e91e
	.long	2547177864              # 0x97d2d988
	.long	162941995               # 0x9b64c2b
	.long	2125561021              # 0x7eb17cbd
	.long	3887607047              # 0xe7b82d07
	.long	2428444049              # 0x90bf1d91
	.long	498536548               # 0x1db71064
	.long	1789927666              # 0x6ab020f2
	.long	4089016648              # 0xf3b97148
	.long	2227061214              # 0x84be41de
	.long	450548861               # 0x1adad47d
	.long	1843258603              # 0x6ddde4eb
	.long	4107580753              # 0xf4d4b551
	.long	2211677639              # 0x83d385c7
	.long	325883990               # 0x136c9856
	.long	1684777152              # 0x646ba8c0
	.long	4251122042              # 0xfd62f97a
	.long	2321926636              # 0x8a65c9ec
	.long	335633487               # 0x14015c4f
	.long	1661365465              # 0x63066cd9
	.long	4195302755              # 0xfa0f3d63
	.long	2366115317              # 0x8d080df5
	.long	997073096               # 0x3b6e20c8
	.long	1281953886              # 0x4c69105e
	.long	3579855332              # 0xd56041e4
	.long	2724688242              # 0xa2677172
	.long	1006888145              # 0x3c03e4d1
	.long	1258607687              # 0x4b04d447
	.long	3524101629              # 0xd20d85fd
	.long	2768942443              # 0xa50ab56b
	.long	901097722               # 0x35b5a8fa
	.long	1119000684              # 0x42b2986c
	.long	3686517206              # 0xdbbbc9d6
	.long	2898065728              # 0xacbcf940
	.long	853044451               # 0x32d86ce3
	.long	1172266101              # 0x45df5c75
	.long	3705015759              # 0xdcd60dcf
	.long	2882616665              # 0xabd13d59
	.long	651767980               # 0x26d930ac
	.long	1373503546              # 0x51de003a
	.long	3369554304              # 0xc8d75180
	.long	3218104598              # 0xbfd06116
	.long	565507253               # 0x21b4f4b5
	.long	1454621731              # 0x56b3c423
	.long	3485111705              # 0xcfba9599
	.long	3099436303              # 0xb8bda50f
	.long	671266974               # 0x2802b89e
	.long	1594198024              # 0x5f058808
	.long	3322730930              # 0xc60cd9b2
	.long	2970347812              # 0xb10be924
	.long	795835527               # 0x2f6f7c87
	.long	1483230225              # 0x58684c11
	.long	3244367275              # 0xc1611dab
	.long	3060149565              # 0xb6662d3d
	.long	1994146192              # 0x76dc4190
	.long	31158534                # 0x1db7106
	.long	2563907772              # 0x98d220bc
	.long	4023717930              # 0xefd5102a
	.long	1907459465              # 0x71b18589
	.long	112637215               # 0x6b6b51f
	.long	2680153253              # 0x9fbfe4a5
	.long	3904427059              # 0xe8b8d433
	.long	2013776290              # 0x7807c9a2
	.long	251722036               # 0xf00f934
	.long	2517215374              # 0x9609a88e
	.long	3775830040              # 0xe10e9818
	.long	2137656763              # 0x7f6a0dbb
	.long	141376813               # 0x86d3d2d
	.long	2439277719              # 0x91646c97
	.long	3865271297              # 0xe6635c01
	.long	1802195444              # 0x6b6b51f4
	.long	476864866               # 0x1c6c6162
	.long	2238001368              # 0x856530d8
	.long	4066508878              # 0xf262004e
	.long	1812370925              # 0x6c0695ed
	.long	453092731               # 0x1b01a57b
	.long	2181625025              # 0x8208f4c1
	.long	4111451223              # 0xf50fc457
	.long	1706088902              # 0x65b0d9c6
	.long	314042704               # 0x12b7e950
	.long	2344532202              # 0x8bbeb8ea
	.long	4240017532              # 0xfcb9887c
	.long	1658658271              # 0x62dd1ddf
	.long	366619977               # 0x15da2d49
	.long	2362670323              # 0x8cd37cf3
	.long	4224994405              # 0xfbd44c65
	.long	1303535960              # 0x4db26158
	.long	984961486               # 0x3ab551ce
	.long	2747007092              # 0xa3bc0074
	.long	3569037538              # 0xd4bb30e2
	.long	1256170817              # 0x4adfa541
	.long	1037604311              # 0x3dd895d7
	.long	2765210733              # 0xa4d1c46d
	.long	3554079995              # 0xd3d6f4fb
	.long	1131014506              # 0x4369e96a
	.long	879679996               # 0x346ed9fc
	.long	2909243462              # 0xad678846
	.long	3663771856              # 0xda60b8d0
	.long	1141124467              # 0x44042d73
	.long	855842277               # 0x33031de5
	.long	2852801631              # 0xaa0a4c5f
	.long	3708648649              # 0xdd0d7cc9
	.long	1342533948              # 0x5005713c
	.long	654459306               # 0x270241aa
	.long	3188396048              # 0xbe0b1010
	.long	3373015174              # 0xc90c2086
	.long	1466479909              # 0x5768b525
	.long	544179635               # 0x206f85b3
	.long	3110523913              # 0xb966d409
	.long	3462522015              # 0xce61e49f
	.long	1591671054              # 0x5edef90e
	.long	702138776               # 0x29d9c998
	.long	2966460450              # 0xb0d09822
	.long	3352799412              # 0xc7d7a8b4
	.long	1504918807              # 0x59b33d17
	.long	783551873               # 0x2eb40d81
	.long	3082640443              # 0xb7bd5c3b
	.long	3233442989              # 0xc0ba6cad
	.long	3988292384              # 0xedb88320
	.long	2596254646              # 0x9abfb3b6
	.long	62317068                # 0x3b6e20c
	.long	1957810842              # 0x74b1d29a
	.long	3939845945              # 0xead54739
	.long	2647816111              # 0x9dd277af
	.long	81470997                # 0x4db2615
	.long	1943803523              # 0x73dc1683
	.long	3814918930              # 0xe3630b12
	.long	2489596804              # 0x94643b84
	.long	225274430               # 0xd6d6a3e
	.long	2053790376              # 0x7a6a5aa8
	.long	3826175755              # 0xe40ecf0b
	.long	2466906013              # 0x9309ff9d
	.long	167816743               # 0xa00ae27
	.long	2097651377              # 0x7d079eb1
	.long	4027552580              # 0xf00f9344
	.long	2265490386              # 0x8708a3d2
	.long	503444072               # 0x1e01f268
	.long	1762050814              # 0x6906c2fe
	.long	4150417245              # 0xf762575d
	.long	2154129355              # 0x806567cb
	.long	426522225               # 0x196c3671
	.long	1852507879              # 0x6e6b06e7
	.long	4275313526              # 0xfed41b76
	.long	2312317920              # 0x89d32be0
	.long	282753626               # 0x10da7a5a
	.long	1742555852              # 0x67dd4acc
	.long	4189708143              # 0xf9b9df6f
	.long	2394877945              # 0x8ebeeff9
	.long	397917763               # 0x17b7be43
	.long	1622183637              # 0x60b08ed5
	.long	3604390888              # 0xd6d6a3e8
	.long	2714866558              # 0xa1d1937e
	.long	953729732               # 0x38d8c2c4
	.long	1340076626              # 0x4fdff252
	.long	3518719985              # 0xd1bb67f1
	.long	2797360999              # 0xa6bc5767
	.long	1068828381              # 0x3fb506dd
	.long	1219638859              # 0x48b2364b
	.long	3624741850              # 0xd80d2bda
	.long	2936675148              # 0xaf0a1b4c
	.long	906185462               # 0x36034af6
	.long	1090812512              # 0x41047a60
	.long	3747672003              # 0xdf60efc3
	.long	2825379669              # 0xa867df55
	.long	829329135               # 0x316e8eef
	.long	1181335161              # 0x4669be79
	.long	3412177804              # 0xcb61b38c
	.long	3160834842              # 0xbc66831a
	.long	628085408               # 0x256fd2a0
	.long	1382605366              # 0x5268e236
	.long	3423369109              # 0xcc0c7795
	.long	3138078467              # 0xbb0b4703
	.long	570562233               # 0x220216b9
	.long	1426400815              # 0x5505262f
	.long	3317316542              # 0xc5ba3bbe
	.long	2998733608              # 0xb2bd0b28
	.long	733239954               # 0x2bb45a92
	.long	1555261956              # 0x5cb36a04
	.long	3268935591              # 0xc2d7ffa7
	.long	3050360625              # 0xb5d0cf31
	.long	752459403               # 0x2cd99e8b
	.long	1541320221              # 0x5bdeae1d
	.long	2607071920              # 0x9b64c2b0
	.long	3965973030              # 0xec63f226
	.long	1969922972              # 0x756aa39c
	.long	40735498                # 0x26d930a
	.long	2617837225              # 0x9c0906a9
	.long	3943577151              # 0xeb0e363f
	.long	1913087877              # 0x72076785
	.long	83908371                # 0x5005713
	.long	2512341634              # 0x95bf4a82
	.long	3803740692              # 0xe2b87a14
	.long	2075208622              # 0x7bb12bae
	.long	213261112               # 0xcb61b38
	.long	2463272603              # 0x92d28e9b
	.long	3855990285              # 0xe5d5be0d
	.long	2094854071              # 0x7cdcefb7
	.long	198958881               # 0xbdbdf21
	.long	2262029012              # 0x86d3d2d4
	.long	4057260610              # 0xf1d4e242
	.long	1759359992              # 0x68ddb3f8
	.long	534414190               # 0x1fda836e
	.long	2176718541              # 0x81be16cd
	.long	4139329115              # 0xf6b9265b
	.long	1873836001              # 0x6fb077e1
	.long	414664567               # 0x18b74777
	.long	2282248934              # 0x88085ae6
	.long	4279200368              # 0xff0f6a70
	.long	1711684554              # 0x66063bca
	.long	285281116               # 0x11010b5c
	.long	2405801727              # 0x8f659eff
	.long	4167216745              # 0xf862ae69
	.long	1634467795              # 0x616bffd3
	.long	376229701               # 0x166ccf45
	.long	2685067896              # 0xa00ae278
	.long	3608007406              # 0xd70dd2ee
	.long	1308918612              # 0x4e048354
	.long	956543938               # 0x3903b3c2
	.long	2808555105              # 0xa7672661
	.long	3495958263              # 0xd06016f7
	.long	1231636301              # 0x4969474d
	.long	1047427035              # 0x3e6e77db
	.long	2932959818              # 0xaed16a4a
	.long	3654703836              # 0xd9d65adc
	.long	1088359270              # 0x40df0b66
	.long	936918000               # 0x37d83bf0
	.long	2847714899              # 0xa9bcae53
	.long	3736837829              # 0xdebb9ec5
	.long	1202900863              # 0x47b2cf7f
	.long	817233897               # 0x30b5ffe9
	.long	3183342108              # 0xbdbdf21c
	.long	3401237130              # 0xcabac28a
	.long	1404277552              # 0x53b39330
	.long	615818150               # 0x24b4a3a6
	.long	3134207493              # 0xbad03605
	.long	3453421203              # 0xcdd70693
	.long	1423857449              # 0x54de5729
	.long	601450431               # 0x23d967bf
	.long	3009837614              # 0xb3667a2e
	.long	3294710456              # 0xc4614ab8
	.long	1567103746              # 0x5d681b02
	.long	711928724               # 0x2a6f2b94
	.long	3020668471              # 0xb40bbe37
	.long	3272380065              # 0xc30c8ea1
	.long	1510334235              # 0x5a05df1b
	.long	755167117               # 0x2d02ef8d
	.size	crc_32_tab, 1024

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"%08lX %7ld \n"
	.size	.L.str, 13

	.hidden	int_handlers            # @int_handlers
	.type	int_handlers,@object
	#.comm	int_handlers,256,4
int_handlers:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.type	rand.lfsr,@object       # @rand.lfsr
	.p2align	2
rand.lfsr:
	.long	347520060               # 0x14b6bc3c
	.size	rand.lfsr, 4

	.type	rand.period,@object     # @rand.period
	#.comm	rand.period,4,4
rand.period:
	.long	0
	.hidden	timer_ticks             # @timer_ticks
	.type	timer_ticks,@object
	#.comm	timer_ticks,4,4
timer_ticks:
	.long	0
	.hidden	PRINTFBUFFER            # @PRINTFBUFFER
	.type	PRINTFBUFFER,@object
	#.comm	PRINTFBUFFER,512,1
PRINTFBUFFER:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"(null)"
	.size	.L.str.2, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0123456789abcdef"
	.size	.L.str.1, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"0123456789ABCDEF"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"bug in vfprintf: bad base"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.zero	1
	.size	.L.str.5, 1

	.type	vfnprintf.blanks,@object # @vfnprintf.blanks
vfnprintf.blanks:
	.zero	16,32
	.size	vfnprintf.blanks, 16

	.type	vfnprintf.zeroes,@object # @vfnprintf.zeroes
vfnprintf.zeroes:
	.zero	16,48
	.size	vfnprintf.zeroes, 16

	.type	.L.str.5.8,@object      # @.str.5.8
.L.str.5.8:
	.asciz	"%s\n"
	.size	.L.str.5.8, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%c"
	.size	.L.str.6, 3

	.hidden	UART_BASE_ADR           # @UART_BASE_ADR
	.type	UART_BASE_ADR,@object
	#.globl	UART_BASE_ADR
	.p2align	2
UART_BASE_ADR:
	.long	2415919104              # 0x90000000
	.size	UART_BASE_ADR, 4

	.hidden	UART_BAUDS              # @UART_BAUDS
	.type	UART_BAUDS,@object
	#.globl	UART_BAUDS
	.p2align	2
UART_BAUDS:
	.long	115200                  # 0x1c200
	.size	UART_BAUDS, 4

	.hidden	tx_buff                 # @tx_buff
	.type	tx_buff,@object
	#.comm	tx_buff,32,1
tx_buff:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.hidden	tx_level                # @tx_level
	.type	tx_level,@object
	#.comm	tx_level,4,4
tx_level:
	.long	0
	.hidden	rx_level                # @rx_level
	.type	rx_level,@object
	#.comm	rx_level,4,4
rx_level:
	.long	0

	.p2align	2
.LJTI8_0:
	.long	.LBB8_18
	.long	.LBB8_63
	.long	.LBB8_62
	.long	.LBB8_41
	.long	.LBB8_62
	.long	.LBB8_40
	.long	.LBB8_62
	.long	.LBB8_41
	.long	.LBB8_63
	.long	.LBB8_63
	.long	.LBB8_40
	.long	.LBB8_41
	.long	.LBB8_42
	.long	.LBB8_42
	.long	.LBB8_42
	.long	.LBB8_33
.LJTI8_1:
	.long	.LBB8_32
	.long	.LBB8_62
	.long	.LBB8_63
	.long	.LBB8_40
	
	.p2align	2
.LJTI33_0:
	.long	.LBB33_11
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_20
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_22
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_26
	.long	.LBB33_29
	.long	.LBB33_144
	.long	.LBB33_28
	.long	.LBB33_30
	.long	.LBB33_144
	.long	.LBB33_40
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_49
	.long	.LBB33_61
	.long	.LBB33_144
	.long	.LBB33_61
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_68
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_86
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_94
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_48
	.long	.LBB33_50
	.long	.LBB33_61
	.long	.LBB33_61
	.long	.LBB33_61
	.long	.LBB33_43
	.long	.LBB33_50
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_44
	.long	.LBB33_144
	.long	.LBB33_62
	.long	.LBB33_69
	.long	.LBB33_76
	.long	.LBB33_47
	.long	.LBB33_144
	.long	.LBB33_77
	.long	.LBB33_144
	.long	.LBB33_87
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_95
	.long	.LBB33_144
	.long	.LBB33_143
	
	#shadow1
	.type	crc_32_tab_shadow1,@object      # @crc_32_tab
	.p2align	2
crc_32_tab_shadow1:
	.long	0                       # 0x0
	.long	1996959894              # 0x77073096
	.long	3993919788              # 0xee0e612c
	.long	2567524794              # 0x990951ba
	.long	124634137               # 0x76dc419
	.long	1886057615              # 0x706af48f
	.long	3915621685              # 0xe963a535
	.long	2657392035              # 0x9e6495a3
	.long	249268274               # 0xedb8832
	.long	2044508324              # 0x79dcb8a4
	.long	3772115230              # 0xe0d5e91e
	.long	2547177864              # 0x97d2d988
	.long	162941995               # 0x9b64c2b
	.long	2125561021              # 0x7eb17cbd
	.long	3887607047              # 0xe7b82d07
	.long	2428444049              # 0x90bf1d91
	.long	498536548               # 0x1db71064
	.long	1789927666              # 0x6ab020f2
	.long	4089016648              # 0xf3b97148
	.long	2227061214              # 0x84be41de
	.long	450548861               # 0x1adad47d
	.long	1843258603              # 0x6ddde4eb
	.long	4107580753              # 0xf4d4b551
	.long	2211677639              # 0x83d385c7
	.long	325883990               # 0x136c9856
	.long	1684777152              # 0x646ba8c0
	.long	4251122042              # 0xfd62f97a
	.long	2321926636              # 0x8a65c9ec
	.long	335633487               # 0x14015c4f
	.long	1661365465              # 0x63066cd9
	.long	4195302755              # 0xfa0f3d63
	.long	2366115317              # 0x8d080df5
	.long	997073096               # 0x3b6e20c8
	.long	1281953886              # 0x4c69105e
	.long	3579855332              # 0xd56041e4
	.long	2724688242              # 0xa2677172
	.long	1006888145              # 0x3c03e4d1
	.long	1258607687              # 0x4b04d447
	.long	3524101629              # 0xd20d85fd
	.long	2768942443              # 0xa50ab56b
	.long	901097722               # 0x35b5a8fa
	.long	1119000684              # 0x42b2986c
	.long	3686517206              # 0xdbbbc9d6
	.long	2898065728              # 0xacbcf940
	.long	853044451               # 0x32d86ce3
	.long	1172266101              # 0x45df5c75
	.long	3705015759              # 0xdcd60dcf
	.long	2882616665              # 0xabd13d59
	.long	651767980               # 0x26d930ac
	.long	1373503546              # 0x51de003a
	.long	3369554304              # 0xc8d75180
	.long	3218104598              # 0xbfd06116
	.long	565507253               # 0x21b4f4b5
	.long	1454621731              # 0x56b3c423
	.long	3485111705              # 0xcfba9599
	.long	3099436303              # 0xb8bda50f
	.long	671266974               # 0x2802b89e
	.long	1594198024              # 0x5f058808
	.long	3322730930              # 0xc60cd9b2
	.long	2970347812              # 0xb10be924
	.long	795835527               # 0x2f6f7c87
	.long	1483230225              # 0x58684c11
	.long	3244367275              # 0xc1611dab
	.long	3060149565              # 0xb6662d3d
	.long	1994146192              # 0x76dc4190
	.long	31158534                # 0x1db7106
	.long	2563907772              # 0x98d220bc
	.long	4023717930              # 0xefd5102a
	.long	1907459465              # 0x71b18589
	.long	112637215               # 0x6b6b51f
	.long	2680153253              # 0x9fbfe4a5
	.long	3904427059              # 0xe8b8d433
	.long	2013776290              # 0x7807c9a2
	.long	251722036               # 0xf00f934
	.long	2517215374              # 0x9609a88e
	.long	3775830040              # 0xe10e9818
	.long	2137656763              # 0x7f6a0dbb
	.long	141376813               # 0x86d3d2d
	.long	2439277719              # 0x91646c97
	.long	3865271297              # 0xe6635c01
	.long	1802195444              # 0x6b6b51f4
	.long	476864866               # 0x1c6c6162
	.long	2238001368              # 0x856530d8
	.long	4066508878              # 0xf262004e
	.long	1812370925              # 0x6c0695ed
	.long	453092731               # 0x1b01a57b
	.long	2181625025              # 0x8208f4c1
	.long	4111451223              # 0xf50fc457
	.long	1706088902              # 0x65b0d9c6
	.long	314042704               # 0x12b7e950
	.long	2344532202              # 0x8bbeb8ea
	.long	4240017532              # 0xfcb9887c
	.long	1658658271              # 0x62dd1ddf
	.long	366619977               # 0x15da2d49
	.long	2362670323              # 0x8cd37cf3
	.long	4224994405              # 0xfbd44c65
	.long	1303535960              # 0x4db26158
	.long	984961486               # 0x3ab551ce
	.long	2747007092              # 0xa3bc0074
	.long	3569037538              # 0xd4bb30e2
	.long	1256170817              # 0x4adfa541
	.long	1037604311              # 0x3dd895d7
	.long	2765210733              # 0xa4d1c46d
	.long	3554079995              # 0xd3d6f4fb
	.long	1131014506              # 0x4369e96a
	.long	879679996               # 0x346ed9fc
	.long	2909243462              # 0xad678846
	.long	3663771856              # 0xda60b8d0
	.long	1141124467              # 0x44042d73
	.long	855842277               # 0x33031de5
	.long	2852801631              # 0xaa0a4c5f
	.long	3708648649              # 0xdd0d7cc9
	.long	1342533948              # 0x5005713c
	.long	654459306               # 0x270241aa
	.long	3188396048              # 0xbe0b1010
	.long	3373015174              # 0xc90c2086
	.long	1466479909              # 0x5768b525
	.long	544179635               # 0x206f85b3
	.long	3110523913              # 0xb966d409
	.long	3462522015              # 0xce61e49f
	.long	1591671054              # 0x5edef90e
	.long	702138776               # 0x29d9c998
	.long	2966460450              # 0xb0d09822
	.long	3352799412              # 0xc7d7a8b4
	.long	1504918807              # 0x59b33d17
	.long	783551873               # 0x2eb40d81
	.long	3082640443              # 0xb7bd5c3b
	.long	3233442989              # 0xc0ba6cad
	.long	3988292384              # 0xedb88320
	.long	2596254646              # 0x9abfb3b6
	.long	62317068                # 0x3b6e20c
	.long	1957810842              # 0x74b1d29a
	.long	3939845945              # 0xead54739
	.long	2647816111              # 0x9dd277af
	.long	81470997                # 0x4db2615
	.long	1943803523              # 0x73dc1683
	.long	3814918930              # 0xe3630b12
	.long	2489596804              # 0x94643b84
	.long	225274430               # 0xd6d6a3e
	.long	2053790376              # 0x7a6a5aa8
	.long	3826175755              # 0xe40ecf0b
	.long	2466906013              # 0x9309ff9d
	.long	167816743               # 0xa00ae27
	.long	2097651377              # 0x7d079eb1
	.long	4027552580              # 0xf00f9344
	.long	2265490386              # 0x8708a3d2
	.long	503444072               # 0x1e01f268
	.long	1762050814              # 0x6906c2fe
	.long	4150417245              # 0xf762575d
	.long	2154129355              # 0x806567cb
	.long	426522225               # 0x196c3671
	.long	1852507879              # 0x6e6b06e7
	.long	4275313526              # 0xfed41b76
	.long	2312317920              # 0x89d32be0
	.long	282753626               # 0x10da7a5a
	.long	1742555852              # 0x67dd4acc
	.long	4189708143              # 0xf9b9df6f
	.long	2394877945              # 0x8ebeeff9
	.long	397917763               # 0x17b7be43
	.long	1622183637              # 0x60b08ed5
	.long	3604390888              # 0xd6d6a3e8
	.long	2714866558              # 0xa1d1937e
	.long	953729732               # 0x38d8c2c4
	.long	1340076626              # 0x4fdff252
	.long	3518719985              # 0xd1bb67f1
	.long	2797360999              # 0xa6bc5767
	.long	1068828381              # 0x3fb506dd
	.long	1219638859              # 0x48b2364b
	.long	3624741850              # 0xd80d2bda
	.long	2936675148              # 0xaf0a1b4c
	.long	906185462               # 0x36034af6
	.long	1090812512              # 0x41047a60
	.long	3747672003              # 0xdf60efc3
	.long	2825379669              # 0xa867df55
	.long	829329135               # 0x316e8eef
	.long	1181335161              # 0x4669be79
	.long	3412177804              # 0xcb61b38c
	.long	3160834842              # 0xbc66831a
	.long	628085408               # 0x256fd2a0
	.long	1382605366              # 0x5268e236
	.long	3423369109              # 0xcc0c7795
	.long	3138078467              # 0xbb0b4703
	.long	570562233               # 0x220216b9
	.long	1426400815              # 0x5505262f
	.long	3317316542              # 0xc5ba3bbe
	.long	2998733608              # 0xb2bd0b28
	.long	733239954               # 0x2bb45a92
	.long	1555261956              # 0x5cb36a04
	.long	3268935591              # 0xc2d7ffa7
	.long	3050360625              # 0xb5d0cf31
	.long	752459403               # 0x2cd99e8b
	.long	1541320221              # 0x5bdeae1d
	.long	2607071920              # 0x9b64c2b0
	.long	3965973030              # 0xec63f226
	.long	1969922972              # 0x756aa39c
	.long	40735498                # 0x26d930a
	.long	2617837225              # 0x9c0906a9
	.long	3943577151              # 0xeb0e363f
	.long	1913087877              # 0x72076785
	.long	83908371                # 0x5005713
	.long	2512341634              # 0x95bf4a82
	.long	3803740692              # 0xe2b87a14
	.long	2075208622              # 0x7bb12bae
	.long	213261112               # 0xcb61b38
	.long	2463272603              # 0x92d28e9b
	.long	3855990285              # 0xe5d5be0d
	.long	2094854071              # 0x7cdcefb7
	.long	198958881               # 0xbdbdf21
	.long	2262029012              # 0x86d3d2d4
	.long	4057260610              # 0xf1d4e242
	.long	1759359992              # 0x68ddb3f8
	.long	534414190               # 0x1fda836e
	.long	2176718541              # 0x81be16cd
	.long	4139329115              # 0xf6b9265b
	.long	1873836001              # 0x6fb077e1
	.long	414664567               # 0x18b74777
	.long	2282248934              # 0x88085ae6
	.long	4279200368              # 0xff0f6a70
	.long	1711684554              # 0x66063bca
	.long	285281116               # 0x11010b5c
	.long	2405801727              # 0x8f659eff
	.long	4167216745              # 0xf862ae69
	.long	1634467795              # 0x616bffd3
	.long	376229701               # 0x166ccf45
	.long	2685067896              # 0xa00ae278
	.long	3608007406              # 0xd70dd2ee
	.long	1308918612              # 0x4e048354
	.long	956543938               # 0x3903b3c2
	.long	2808555105              # 0xa7672661
	.long	3495958263              # 0xd06016f7
	.long	1231636301              # 0x4969474d
	.long	1047427035              # 0x3e6e77db
	.long	2932959818              # 0xaed16a4a
	.long	3654703836              # 0xd9d65adc
	.long	1088359270              # 0x40df0b66
	.long	936918000               # 0x37d83bf0
	.long	2847714899              # 0xa9bcae53
	.long	3736837829              # 0xdebb9ec5
	.long	1202900863              # 0x47b2cf7f
	.long	817233897               # 0x30b5ffe9
	.long	3183342108              # 0xbdbdf21c
	.long	3401237130              # 0xcabac28a
	.long	1404277552              # 0x53b39330
	.long	615818150               # 0x24b4a3a6
	.long	3134207493              # 0xbad03605
	.long	3453421203              # 0xcdd70693
	.long	1423857449              # 0x54de5729
	.long	601450431               # 0x23d967bf
	.long	3009837614              # 0xb3667a2e
	.long	3294710456              # 0xc4614ab8
	.long	1567103746              # 0x5d681b02
	.long	711928724               # 0x2a6f2b94
	.long	3020668471              # 0xb40bbe37
	.long	3272380065              # 0xc30c8ea1
	.long	1510334235              # 0x5a05df1b
	.long	755167117               # 0x2d02ef8d
	.size	crc_32_tab_shadow1, 1024

	.type	.L.str_shadow1,@object          # @.str
.L.str_shadow1:
	.asciz	"%08lX %7ld \n"
	.size	.L.str_shadow1, 13

	.hidden	int_handlers_shadow1            # @int_handlers
	.type	int_handlers_shadow1,@object
	#.comm	int_handlers_shadow1,256,4
int_handlers_shadow1:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.type	rand.lfsr_shadow1,@object       # @rand.lfsr
	.p2align	2
rand.lfsr_shadow1:
	.long	347520060               # 0x14b6bc3c
	.size	rand.lfsr_shadow1, 4

	.type	rand.period_shadow1,@object     # @rand.period
	#.comm	rand.period,4,4
rand.period_shadow1:
	.long	0
	.hidden	timer_ticks_shadow1             # @timer_ticks
	.type	timer_ticks_shadow1,@object
	#.comm	timer_ticks,4,4
timer_ticks_shadow1:
	.long	0
	.hidden	PRINTFBUFFER_shadow1            # @PRINTFBUFFER
	.type	PRINTFBUFFER_shadow1,@object
	#.comm	PRINTFBUFFER,512,1
PRINTFBUFFER_shadow1:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.type	.L.str.2_shadow1,@object        # @.str.2
.L.str.2_shadow1:
	.asciz	"(null)"
	.size	.L.str.2_shadow1, 7

	.type	.L.str.1_shadow1,@object        # @.str.1
.L.str.1_shadow1:
	.asciz	"0123456789abcdef"
	.size	.L.str.1_shadow1, 17

	.type	.L.str.3_shadow1,@object        # @.str.3
.L.str.3_shadow1:
	.asciz	"0123456789ABCDEF"
	.size	.L.str.3_shadow1, 17

	.type	.L.str.4_shadow1,@object        # @.str.4
.L.str.4_shadow1:
	.asciz	"bug in vfprintf: bad base"
	.size	.L.str.4_shadow1, 26

	.type	.L.str.5_shadow1,@object        # @.str.5
.L.str.5_shadow1:
	.zero	1
	.size	.L.str.5_shadow1, 1

	.type	vfnprintf.blanks_shadow1,@object # @vfnprintf.blanks
vfnprintf.blanks_shadow1:
	.zero	16,32
	.size	vfnprintf.blanks_shadow1, 16

	.type	vfnprintf.zeroes_shadow1,@object # @vfnprintf.zeroes
vfnprintf.zeroes_shadow1:
	.zero	16,48
	.size	vfnprintf.zeroes_shadow1, 16

	.type	.L.str.5.8_shadow1,@object      # @.str.5.8
.L.str.5.8_shadow1:
	.asciz	"%s\n"
	.size	.L.str.5.8_shadow1, 4

	.type	.L.str.6_shadow1,@object        # @.str.6
.L.str.6_shadow1:
	.asciz	"%c"
	.size	.L.str.6_shadow1, 3

	.hidden	UART_BASE_ADR_shadow1           # @UART_BASE_ADR
	.type	UART_BASE_ADR_shadow1,@object
	#.globl	UART_BASE_ADR_shadow1
	.p2align	2
UART_BASE_ADR_shadow1:
	.long	2415919104              # 0x90000000
	.size	UART_BASE_ADR_shadow1, 4

	.hidden	UART_BAUDS_shadow1              # @UART_BAUDS
	.type	UART_BAUDS_shadow1,@object
	#.globl	UART_BAUDS_shadow1
	.p2align	2
UART_BAUDS_shadow1:
	.long	115200                  # 0x1c200
	.size	UART_BAUDS_shadow1, 4

	.hidden	tx_buff_shadow1                 # @tx_buff
	.type	tx_buff_shadow1,@object
	#.comm	tx_buff,32,1
tx_buff_shadow1:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.hidden	tx_level_shadow1                # @tx_level
	.type	tx_level_shadow1,@object
	#.comm	tx_level_shadow1,4,4
tx_level_shadow1:
	.long	0
	.hidden	rx_level_shadow1                # @rx_level
	.type	rx_level_shadow1,@object
	#.comm	rx_level,4,4
rx_level_shadow1:
	.long	0

	.p2align	2
.LJTI8_0_shadow1:
	.long	.LBB8_18
	.long	.LBB8_63
	.long	.LBB8_62
	.long	.LBB8_41
	.long	.LBB8_62
	.long	.LBB8_40
	.long	.LBB8_62
	.long	.LBB8_41
	.long	.LBB8_63
	.long	.LBB8_63
	.long	.LBB8_40
	.long	.LBB8_41
	.long	.LBB8_42
	.long	.LBB8_42
	.long	.LBB8_42
	.long	.LBB8_33
.LJTI8_1_shadow1:
	.long	.LBB8_32
	.long	.LBB8_62
	.long	.LBB8_63
	.long	.LBB8_40
	
	.p2align	2
.LJTI33_0_shadow1:
	.long	.LBB33_11
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_20
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_22
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_26
	.long	.LBB33_29
	.long	.LBB33_144
	.long	.LBB33_28
	.long	.LBB33_30
	.long	.LBB33_144
	.long	.LBB33_40
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_49
	.long	.LBB33_61
	.long	.LBB33_144
	.long	.LBB33_61
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_68
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_86
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_94
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_48
	.long	.LBB33_50
	.long	.LBB33_61
	.long	.LBB33_61
	.long	.LBB33_61
	.long	.LBB33_43
	.long	.LBB33_50
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_44
	.long	.LBB33_144
	.long	.LBB33_62
	.long	.LBB33_69
	.long	.LBB33_76
	.long	.LBB33_47
	.long	.LBB33_144
	.long	.LBB33_77
	.long	.LBB33_144
	.long	.LBB33_87
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_95
	.long	.LBB33_144
	.long	.LBB33_143
	
	
	#shadow2
	.type	crc_32_tab_shadow2,@object      # @crc_32_tab
	.p2align	2
crc_32_tab_shadow2:
	.long	0                       # 0x0
	.long	1996959894              # 0x77073096
	.long	3993919788              # 0xee0e612c
	.long	2567524794              # 0x990951ba
	.long	124634137               # 0x76dc419
	.long	1886057615              # 0x706af48f
	.long	3915621685              # 0xe963a535
	.long	2657392035              # 0x9e6495a3
	.long	249268274               # 0xedb8832
	.long	2044508324              # 0x79dcb8a4
	.long	3772115230              # 0xe0d5e91e
	.long	2547177864              # 0x97d2d988
	.long	162941995               # 0x9b64c2b
	.long	2125561021              # 0x7eb17cbd
	.long	3887607047              # 0xe7b82d07
	.long	2428444049              # 0x90bf1d91
	.long	498536548               # 0x1db71064
	.long	1789927666              # 0x6ab020f2
	.long	4089016648              # 0xf3b97148
	.long	2227061214              # 0x84be41de
	.long	450548861               # 0x1adad47d
	.long	1843258603              # 0x6ddde4eb
	.long	4107580753              # 0xf4d4b551
	.long	2211677639              # 0x83d385c7
	.long	325883990               # 0x136c9856
	.long	1684777152              # 0x646ba8c0
	.long	4251122042              # 0xfd62f97a
	.long	2321926636              # 0x8a65c9ec
	.long	335633487               # 0x14015c4f
	.long	1661365465              # 0x63066cd9
	.long	4195302755              # 0xfa0f3d63
	.long	2366115317              # 0x8d080df5
	.long	997073096               # 0x3b6e20c8
	.long	1281953886              # 0x4c69105e
	.long	3579855332              # 0xd56041e4
	.long	2724688242              # 0xa2677172
	.long	1006888145              # 0x3c03e4d1
	.long	1258607687              # 0x4b04d447
	.long	3524101629              # 0xd20d85fd
	.long	2768942443              # 0xa50ab56b
	.long	901097722               # 0x35b5a8fa
	.long	1119000684              # 0x42b2986c
	.long	3686517206              # 0xdbbbc9d6
	.long	2898065728              # 0xacbcf940
	.long	853044451               # 0x32d86ce3
	.long	1172266101              # 0x45df5c75
	.long	3705015759              # 0xdcd60dcf
	.long	2882616665              # 0xabd13d59
	.long	651767980               # 0x26d930ac
	.long	1373503546              # 0x51de003a
	.long	3369554304              # 0xc8d75180
	.long	3218104598              # 0xbfd06116
	.long	565507253               # 0x21b4f4b5
	.long	1454621731              # 0x56b3c423
	.long	3485111705              # 0xcfba9599
	.long	3099436303              # 0xb8bda50f
	.long	671266974               # 0x2802b89e
	.long	1594198024              # 0x5f058808
	.long	3322730930              # 0xc60cd9b2
	.long	2970347812              # 0xb10be924
	.long	795835527               # 0x2f6f7c87
	.long	1483230225              # 0x58684c11
	.long	3244367275              # 0xc1611dab
	.long	3060149565              # 0xb6662d3d
	.long	1994146192              # 0x76dc4190
	.long	31158534                # 0x1db7106
	.long	2563907772              # 0x98d220bc
	.long	4023717930              # 0xefd5102a
	.long	1907459465              # 0x71b18589
	.long	112637215               # 0x6b6b51f
	.long	2680153253              # 0x9fbfe4a5
	.long	3904427059              # 0xe8b8d433
	.long	2013776290              # 0x7807c9a2
	.long	251722036               # 0xf00f934
	.long	2517215374              # 0x9609a88e
	.long	3775830040              # 0xe10e9818
	.long	2137656763              # 0x7f6a0dbb
	.long	141376813               # 0x86d3d2d
	.long	2439277719              # 0x91646c97
	.long	3865271297              # 0xe6635c01
	.long	1802195444              # 0x6b6b51f4
	.long	476864866               # 0x1c6c6162
	.long	2238001368              # 0x856530d8
	.long	4066508878              # 0xf262004e
	.long	1812370925              # 0x6c0695ed
	.long	453092731               # 0x1b01a57b
	.long	2181625025              # 0x8208f4c1
	.long	4111451223              # 0xf50fc457
	.long	1706088902              # 0x65b0d9c6
	.long	314042704               # 0x12b7e950
	.long	2344532202              # 0x8bbeb8ea
	.long	4240017532              # 0xfcb9887c
	.long	1658658271              # 0x62dd1ddf
	.long	366619977               # 0x15da2d49
	.long	2362670323              # 0x8cd37cf3
	.long	4224994405              # 0xfbd44c65
	.long	1303535960              # 0x4db26158
	.long	984961486               # 0x3ab551ce
	.long	2747007092              # 0xa3bc0074
	.long	3569037538              # 0xd4bb30e2
	.long	1256170817              # 0x4adfa541
	.long	1037604311              # 0x3dd895d7
	.long	2765210733              # 0xa4d1c46d
	.long	3554079995              # 0xd3d6f4fb
	.long	1131014506              # 0x4369e96a
	.long	879679996               # 0x346ed9fc
	.long	2909243462              # 0xad678846
	.long	3663771856              # 0xda60b8d0
	.long	1141124467              # 0x44042d73
	.long	855842277               # 0x33031de5
	.long	2852801631              # 0xaa0a4c5f
	.long	3708648649              # 0xdd0d7cc9
	.long	1342533948              # 0x5005713c
	.long	654459306               # 0x270241aa
	.long	3188396048              # 0xbe0b1010
	.long	3373015174              # 0xc90c2086
	.long	1466479909              # 0x5768b525
	.long	544179635               # 0x206f85b3
	.long	3110523913              # 0xb966d409
	.long	3462522015              # 0xce61e49f
	.long	1591671054              # 0x5edef90e
	.long	702138776               # 0x29d9c998
	.long	2966460450              # 0xb0d09822
	.long	3352799412              # 0xc7d7a8b4
	.long	1504918807              # 0x59b33d17
	.long	783551873               # 0x2eb40d81
	.long	3082640443              # 0xb7bd5c3b
	.long	3233442989              # 0xc0ba6cad
	.long	3988292384              # 0xedb88320
	.long	2596254646              # 0x9abfb3b6
	.long	62317068                # 0x3b6e20c
	.long	1957810842              # 0x74b1d29a
	.long	3939845945              # 0xead54739
	.long	2647816111              # 0x9dd277af
	.long	81470997                # 0x4db2615
	.long	1943803523              # 0x73dc1683
	.long	3814918930              # 0xe3630b12
	.long	2489596804              # 0x94643b84
	.long	225274430               # 0xd6d6a3e
	.long	2053790376              # 0x7a6a5aa8
	.long	3826175755              # 0xe40ecf0b
	.long	2466906013              # 0x9309ff9d
	.long	167816743               # 0xa00ae27
	.long	2097651377              # 0x7d079eb1
	.long	4027552580              # 0xf00f9344
	.long	2265490386              # 0x8708a3d2
	.long	503444072               # 0x1e01f268
	.long	1762050814              # 0x6906c2fe
	.long	4150417245              # 0xf762575d
	.long	2154129355              # 0x806567cb
	.long	426522225               # 0x196c3671
	.long	1852507879              # 0x6e6b06e7
	.long	4275313526              # 0xfed41b76
	.long	2312317920              # 0x89d32be0
	.long	282753626               # 0x10da7a5a
	.long	1742555852              # 0x67dd4acc
	.long	4189708143              # 0xf9b9df6f
	.long	2394877945              # 0x8ebeeff9
	.long	397917763               # 0x17b7be43
	.long	1622183637              # 0x60b08ed5
	.long	3604390888              # 0xd6d6a3e8
	.long	2714866558              # 0xa1d1937e
	.long	953729732               # 0x38d8c2c4
	.long	1340076626              # 0x4fdff252
	.long	3518719985              # 0xd1bb67f1
	.long	2797360999              # 0xa6bc5767
	.long	1068828381              # 0x3fb506dd
	.long	1219638859              # 0x48b2364b
	.long	3624741850              # 0xd80d2bda
	.long	2936675148              # 0xaf0a1b4c
	.long	906185462               # 0x36034af6
	.long	1090812512              # 0x41047a60
	.long	3747672003              # 0xdf60efc3
	.long	2825379669              # 0xa867df55
	.long	829329135               # 0x316e8eef
	.long	1181335161              # 0x4669be79
	.long	3412177804              # 0xcb61b38c
	.long	3160834842              # 0xbc66831a
	.long	628085408               # 0x256fd2a0
	.long	1382605366              # 0x5268e236
	.long	3423369109              # 0xcc0c7795
	.long	3138078467              # 0xbb0b4703
	.long	570562233               # 0x220216b9
	.long	1426400815              # 0x5505262f
	.long	3317316542              # 0xc5ba3bbe
	.long	2998733608              # 0xb2bd0b28
	.long	733239954               # 0x2bb45a92
	.long	1555261956              # 0x5cb36a04
	.long	3268935591              # 0xc2d7ffa7
	.long	3050360625              # 0xb5d0cf31
	.long	752459403               # 0x2cd99e8b
	.long	1541320221              # 0x5bdeae1d
	.long	2607071920              # 0x9b64c2b0
	.long	3965973030              # 0xec63f226
	.long	1969922972              # 0x756aa39c
	.long	40735498                # 0x26d930a
	.long	2617837225              # 0x9c0906a9
	.long	3943577151              # 0xeb0e363f
	.long	1913087877              # 0x72076785
	.long	83908371                # 0x5005713
	.long	2512341634              # 0x95bf4a82
	.long	3803740692              # 0xe2b87a14
	.long	2075208622              # 0x7bb12bae
	.long	213261112               # 0xcb61b38
	.long	2463272603              # 0x92d28e9b
	.long	3855990285              # 0xe5d5be0d
	.long	2094854071              # 0x7cdcefb7
	.long	198958881               # 0xbdbdf21
	.long	2262029012              # 0x86d3d2d4
	.long	4057260610              # 0xf1d4e242
	.long	1759359992              # 0x68ddb3f8
	.long	534414190               # 0x1fda836e
	.long	2176718541              # 0x81be16cd
	.long	4139329115              # 0xf6b9265b
	.long	1873836001              # 0x6fb077e1
	.long	414664567               # 0x18b74777
	.long	2282248934              # 0x88085ae6
	.long	4279200368              # 0xff0f6a70
	.long	1711684554              # 0x66063bca
	.long	285281116               # 0x11010b5c
	.long	2405801727              # 0x8f659eff
	.long	4167216745              # 0xf862ae69
	.long	1634467795              # 0x616bffd3
	.long	376229701               # 0x166ccf45
	.long	2685067896              # 0xa00ae278
	.long	3608007406              # 0xd70dd2ee
	.long	1308918612              # 0x4e048354
	.long	956543938               # 0x3903b3c2
	.long	2808555105              # 0xa7672661
	.long	3495958263              # 0xd06016f7
	.long	1231636301              # 0x4969474d
	.long	1047427035              # 0x3e6e77db
	.long	2932959818              # 0xaed16a4a
	.long	3654703836              # 0xd9d65adc
	.long	1088359270              # 0x40df0b66
	.long	936918000               # 0x37d83bf0
	.long	2847714899              # 0xa9bcae53
	.long	3736837829              # 0xdebb9ec5
	.long	1202900863              # 0x47b2cf7f
	.long	817233897               # 0x30b5ffe9
	.long	3183342108              # 0xbdbdf21c
	.long	3401237130              # 0xcabac28a
	.long	1404277552              # 0x53b39330
	.long	615818150               # 0x24b4a3a6
	.long	3134207493              # 0xbad03605
	.long	3453421203              # 0xcdd70693
	.long	1423857449              # 0x54de5729
	.long	601450431               # 0x23d967bf
	.long	3009837614              # 0xb3667a2e
	.long	3294710456              # 0xc4614ab8
	.long	1567103746              # 0x5d681b02
	.long	711928724               # 0x2a6f2b94
	.long	3020668471              # 0xb40bbe37
	.long	3272380065              # 0xc30c8ea1
	.long	1510334235              # 0x5a05df1b
	.long	755167117               # 0x2d02ef8d
	.size	crc_32_tab_shadow2, 1024

	.type	.L.str_shadow2,@object          # @.str
.L.str_shadow2:
	.asciz	"%08lX %7ld \n"
	.size	.L.str_shadow2, 13

	.hidden	int_handlers_shadow2            # @int_handlers
	.type	int_handlers_shadow2,@object
	#.comm	int_handlers_shadow2,256,4
int_handlers_shadow2:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.type	rand.lfsr_shadow2,@object       # @rand.lfsr
	.p2align	2
rand.lfsr_shadow2:
	.long	347520060               # 0x14b6bc3c
	.size	rand.lfsr_shadow2, 4

	.type	rand.period_shadow2,@object     # @rand.period
	#.comm	rand.period,4,4
rand.period_shadow2:
	.long	0
	.hidden	timer_ticks_shadow2             # @timer_ticks
	.type	timer_ticks_shadow2,@object
	#.comm	timer_ticks,4,4
timer_ticks_shadow2:
	.long	0
	.hidden	PRINTFBUFFER_shadow2            # @PRINTFBUFFER
	.type	PRINTFBUFFER_shadow2,@object
	#.comm	PRINTFBUFFER,512,1
PRINTFBUFFER_shadow2:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.type	.L.str.2_shadow2,@object        # @.str.2
.L.str.2_shadow2:
	.asciz	"(null)"
	.size	.L.str.2_shadow2, 7

	.type	.L.str.1_shadow2,@object        # @.str.1
.L.str.1_shadow2:
	.asciz	"0123456789abcdef"
	.size	.L.str.1_shadow2, 17

	.type	.L.str.3_shadow2,@object        # @.str.3
.L.str.3_shadow2:
	.asciz	"0123456789ABCDEF"
	.size	.L.str.3_shadow2, 17

	.type	.L.str.4_shadow2,@object        # @.str.4
.L.str.4_shadow2:
	.asciz	"bug in vfprintf: bad base"
	.size	.L.str.4_shadow2, 26

	.type	.L.str.5_shadow2,@object        # @.str.5
.L.str.5_shadow2:
	.zero	1
	.size	.L.str.5_shadow2, 1

	.type	vfnprintf.blanks_shadow2,@object # @vfnprintf.blanks
vfnprintf.blanks_shadow2:
	.zero	16,32
	.size	vfnprintf.blanks_shadow2, 16

	.type	vfnprintf.zeroes_shadow2,@object # @vfnprintf.zeroes
vfnprintf.zeroes_shadow2:
	.zero	16,48
	.size	vfnprintf.zeroes_shadow2, 16

	.type	.L.str.5.8_shadow2,@object      # @.str.5.8
.L.str.5.8_shadow2:
	.asciz	"%s\n"
	.size	.L.str.5.8_shadow2, 4

	.type	.L.str.6_shadow2,@object        # @.str.6
.L.str.6_shadow2:
	.asciz	"%c"
	.size	.L.str.6_shadow2, 3

	.hidden	UART_BASE_ADR_shadow2           # @UART_BASE_ADR
	.type	UART_BASE_ADR_shadow2,@object
	#.globl	UART_BASE_ADR_shadow2
	.p2align	2
UART_BASE_ADR_shadow2:
	.long	2415919104              # 0x90000000
	.size	UART_BASE_ADR_shadow2, 4

	.hidden	UART_BAUDS_shadow2              # @UART_BAUDS
	.type	UART_BAUDS_shadow2,@object
	#.globl	UART_BAUDS_shadow2
	.p2align	2
UART_BAUDS_shadow2:
	.long	115200                  # 0x1c200
	.size	UART_BAUDS_shadow2, 4

	.hidden	tx_buff_shadow2                 # @tx_buff
	.type	tx_buff_shadow2,@object
	#.comm	tx_buff,32,1
tx_buff_shadow2:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.hidden	tx_level_shadow2                # @tx_level
	.type	tx_level_shadow2,@object
	#.comm	tx_level_shadow2,4,4
tx_level_shadow2:
	.long	0
	.hidden	rx_level_shadow2                # @rx_level
	.type	rx_level_shadow2,@object
	#.comm	rx_level,4,4
rx_level_shadow2:
	.long	0

	.p2align	2
.LJTI8_0_shadow2:
	.long	.LBB8_18
	.long	.LBB8_63
	.long	.LBB8_62
	.long	.LBB8_41
	.long	.LBB8_62
	.long	.LBB8_40
	.long	.LBB8_62
	.long	.LBB8_41
	.long	.LBB8_63
	.long	.LBB8_63
	.long	.LBB8_40
	.long	.LBB8_41
	.long	.LBB8_42
	.long	.LBB8_42
	.long	.LBB8_42
	.long	.LBB8_33
.LJTI8_1_shadow2:
	.long	.LBB8_32
	.long	.LBB8_62
	.long	.LBB8_63
	.long	.LBB8_40
	
	.p2align	2
.LJTI33_0_shadow2:
	.long	.LBB33_11
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_20
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_22
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_26
	.long	.LBB33_29
	.long	.LBB33_144
	.long	.LBB33_28
	.long	.LBB33_30
	.long	.LBB33_144
	.long	.LBB33_40
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_41
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_49
	.long	.LBB33_61
	.long	.LBB33_144
	.long	.LBB33_61
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_68
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_86
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_94
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_48
	.long	.LBB33_50
	.long	.LBB33_61
	.long	.LBB33_61
	.long	.LBB33_61
	.long	.LBB33_43
	.long	.LBB33_50
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_44
	.long	.LBB33_144
	.long	.LBB33_62
	.long	.LBB33_69
	.long	.LBB33_76
	.long	.LBB33_47
	.long	.LBB33_144
	.long	.LBB33_77
	.long	.LBB33_144
	.long	.LBB33_87
	.long	.LBB33_144
	.long	.LBB33_144
	.long	.LBB33_95
	.long	.LBB33_144
	.long	.LBB33_143



	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.section	".note.GNU-stack","",@progbits
