	.text
	.file	"BITCOUNT.LL"
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
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -16
	l.slli	r6, r4, 3
	l.movhi	r15, 1023
	l.sw	7132(r21), r22
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
	l.sw	3556(r12), r16
	l.ori	r25, r25, 65528
	l.sw	-8(r2), r5
	l.slli	r16, r13, 3
	l.slli	r26, r24, 3
	l.srli	r5, r4, 23
	l.and	r15, r16, r15
	l.and	r26, r26, r25
	l.andi	r5, r5, 255
	l.sw	3560(r12), r15
	l.sw	7124(r22), r26
	l.srli	r11, r3, 23
	l.srli	r15, r14, 23
	l.addi	r28, r28, 60
	l.slli	r26, r23, 3
	l.andi	r7, r11, 255
	l.andi	r15, r15, 255
	l.and	r25, r26, r25
	l.sub	r6, r7, r5
	l.srli	r8, r13, 23
	l.sw	7128(r22), r25
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
	l.lwz	r14, 3556(r12)
	l.addi	r28, r28, 66
	l.lwz	r8, 3560(r12)
	l.lwz	r24, 7124(r22)
	l.lwz	r31, 7128(r22)
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
	l.lwz	r14, 3556(r12)
	l.addi	r18, r18, 70
	l.lwz	r24, 7124(r22)
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
	l.lwz	r14, 3556(r12)
	l.addi	r28, r28, 90
	l.lwz	r8, 3560(r12)
	l.lwz	r24, 7124(r22)
	l.lwz	r31, 7128(r22)
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
	l.lwz	r14, 3556(r12)
	l.addi	r18, r18, 90
	l.lwz	r24, 7124(r22)
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
	l.lwz	r8, 3560(r12)
	l.addi	r24, r0, 255
	l.lwz	r31, 7128(r22)
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
	l.lwz	r15, 3556(r12)
	l.addi	r28, r28, 120
	l.or	r15, r15, r14
	l.sw	3556(r12), r15
	l.movhi	r24, 1024
	l.addi	r18, r18, 100
	l.lwz	r25, 7124(r22)
	l.or	r25, r25, r24
	l.sw	7124(r22), r25
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
	l.lwz	r8, 3556(r12)
	l.sll	r15, r8, r14
	l.addi	r28, r28, 126
	l.addi	r14, r0, 1
	l.addi	r24, r0, 32
	l.sub	r24, r24, r26
	l.lwz	r31, 7124(r22)
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
	l.lwz	r8, 3560(r12)
	l.addi	r24, r0, 255
	l.lwz	r31, 7128(r22)
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
	l.lwz	r15, 3556(r12)
	l.addi	r28, r28, 150
	l.or	r15, r15, r14
	l.sw	3556(r12), r15
	l.movhi	r24, 1024
	l.addi	r18, r18, 125
	l.lwz	r25, 7124(r22)
	l.or	r25, r25, r24
	l.sw	7124(r22), r25
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
	l.lwz	r8, 3556(r12)
	l.sll	r15, r8, r14
	l.addi	r28, r28, 156
	l.addi	r14, r0, 1
	l.addi	r24, r0, 32
	l.sub	r24, r24, r26
	l.lwz	r31, 7124(r22)
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
	l.lwz	r14, 3560(r12)
	l.addi	r28, r28, 174
	l.lwz	r8, 3556(r12)
	l.lwz	r24, 7128(r22)
	l.lwz	r31, 7124(r22)
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
	l.lwz	r14, 3556(r12)
	l.addi	r28, r28, 186
	l.lwz	r16, 3560(r12)
	l.addi	r18, r18, 155
	l.lwz	r24, 7124(r22)
	l.lwz	r26, 7128(r22)
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
	l.lwz	r13, 3560(r12)
	l.ori	r17, r14, 0
	l.addi	r28, r28, 192
	l.lwz	r8, 3556(r12)
	l.lwz	r23, 7128(r22)
	l.ori	r27, r24, 0
	l.lwz	r31, 7124(r22)
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
	l.lwz	r13, 3556(r12)
	l.addi	r28, r28, 204
	l.lwz	r14, 3560(r12)
	l.sub	r8, r13, r14
	l.addi	r18, r18, 170
	l.lwz	r23, 7124(r22)
	l.lwz	r24, 7128(r22)
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
	l.lwz	r16, 3556(r12)
	l.addi	r28, r28, 216
	l.ori	r15, r14, 0
	l.addi	r24, r0, 1
	l.lwz	r26, 7124(r22)
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
	l.lwz	r8, 3560(r12)
	l.lwz	r31, 7128(r22)
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
	l.lwz	r8, 3560(r12)
	l.addi	r18, r18, 205
	l.lwz	r31, 7128(r22)
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
	l.lwz	r14, 3556(r12)
	l.addi	r20, r20, 88            # CFC
	l.lwz	r15, 3560(r12)
	l.add	r14, r14, r15
	l.sfeqi	r5, 0
	l.movhi	r15, 1024
	l.lwz	r24, 7124(r22)
	l.ori	r11, r4, 0
	l.addi	r28, r28, 264
	l.and	r15, r14, r15
	l.ori	r8, r14, 0
	l.lwz	r25, 7128(r22)
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
	l.sw	3552(r12), r14
	l.addi	r14, r8, 1
	l.addi	r28, r28, 282
	l.andi	r14, r14, 254
	l.sw	7120(r22), r24
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
	l.lwz	r15, 3556(r12)
	l.addi	r28, r28, 288
	l.lwz	r16, 3560(r12)
	l.lwz	r25, 7124(r22)
	l.lwz	r26, 7128(r22)
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
	l.lwz	r13, 3552(r12)
	l.addi	r18, r18, 250
	l.lwz	r23, 7120(r22)
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
	l.lwz	r15, 3556(r12)
	l.lwz	r16, 3560(r12)
	l.addi	r28, r28, 318
	l.add	r15, r15, r16
	l.srli	r8, r15, 1
	l.lwz	r25, 7124(r22)
	l.addi	r18, r18, 265
	l.lwz	r26, 7128(r22)
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
	l.lwz	r16, 3556(r12)
	l.lwz	r8, 3560(r12)
	l.sub	r15, r8, r16
	l.movhi	r14, 1024
	l.addi	r28, r28, 324
	l.and	r14, r15, r14
	l.lwz	r26, 7124(r22)
	l.lwz	r31, 7128(r22)
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
	l.lwz	r15, 3556(r12)
	l.addi	r24, r0, 1
	l.lwz	r25, 7124(r22)
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
	l.lwz	r15, 3560(r12)
	l.addi	r28, r28, 354
	l.add	r8, r14, r15
	l.ori	r14, r17, 0
	l.addi	r18, r18, 295
	l.lwz	r25, 7128(r22)
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
	l.lwz	r15, 3556(r12)
	l.addi	r24, r0, 1
	l.lwz	r25, 7124(r22)
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
	l.lwz	r15, 3560(r12)
	l.addi	r28, r28, 402
	l.sub	r8, r15, r14
	l.ori	r14, r17, 0
	l.addi	r18, r18, 335
	l.lwz	r25, 7128(r22)
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
	l.sw	3552(r12), r13
	l.ori	r17, r14, 0
	l.movhi	r25, 1023
	l.addi	r18, r18, 345
	l.ori	r25, r25, 65535
	l.and	r25, r31, r25
	l.sw	7120(r22), r23
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
	l.lwz	r8, 3560(r12)
	l.addi	r24, r0, 255
	l.lwz	r31, 7128(r22)
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
	l.lwz	r8, 3560(r12)
	l.addi	r24, r0, 255
	l.lwz	r31, 7128(r22)
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
	l.lwz	r8, 3556(r12)
	l.addi	r24, r0, 255
	l.lwz	r31, 7124(r22)
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
	l.lwz	r17, 3560(r12)
	l.movhi	r24, 0
	l.or	r17, r17, r14
	l.sw	3560(r12), r17
	l.addi	r18, r18, 365
	l.sub	r26, r24, r26
	l.movhi	r24, 1024
	l.lwz	r27, 7128(r22)
	l.or	r27, r27, r24
	l.sw	7128(r22), r27
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
	l.lwz	r8, 3560(r12)
	l.sll	r17, r8, r14
	l.addi	r28, r28, 444
	l.addi	r14, r0, 1
	l.addi	r24, r0, 32
	l.sub	r24, r24, r26
	l.lwz	r31, 7128(r22)
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
	l.lwz	r17, 3556(r12)
	l.addi	r18, r18, 375
	l.lwz	r27, 7124(r22)
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
	l.lwz	r8, 3556(r12)
	l.ori	r23, r24, 0
	l.addi	r24, r0, 255
	l.ori	r27, r23, 0
	l.lwz	r31, 7124(r22)
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
	l.lwz	r14, 3560(r12)
	l.movhi	r23, 0
	l.or	r14, r14, r13
	l.sw	3560(r12), r14
	l.addi	r18, r18, 395
	l.sub	r26, r23, r26
	l.movhi	r23, 1024
	l.lwz	r24, 7128(r22)
	l.or	r24, r24, r23
	l.sw	7128(r22), r24
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
	l.lwz	r8, 3560(r12)
	l.sll	r14, r8, r13
	l.addi	r28, r28, 480
	l.addi	r13, r0, 1
	l.addi	r23, r0, 32
	l.sub	r23, r23, r26
	l.lwz	r31, 7128(r22)
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
	l.lwz	r14, 3556(r12)
	l.addi	r18, r18, 405
	l.lwz	r24, 7124(r22)
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
	l.lwz	r14, 3556(r12)
	l.srl	r24, r31, r26
	l.addi	r18, r18, 415
	l.andi	r23, r23, 1
	l.or	r23, r23, r24
	l.lwz	r24, 7124(r22)
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
	l.sw	3552(r12), r13
	l.movhi	r13, 0
	l.addi	r28, r28, 504
	l.movhi	r8, 0
	l.movhi	r24, 0
	l.sw	7120(r22), r23
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
	l.lwz	r13, 3552(r12)
	l.addi	r18, r18, 450
	l.lwz	r23, 7120(r22)
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
	l.lwz	r12, 3564(r10)
	l.ori	r24, r24, 65535
	l.and	r24, r25, r24
	l.or	r31, r23, r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
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
	l.lwz	r15, 3560(r12)
	l.addi	r20, r20, 210           # CFC
	l.srli	r15, r15, 3
	l.lwz	r16, 3556(r12)
	l.and	r11, r6, r7
	l.srli	r16, r16, 3
	l.lwz	r25, 7128(r22)
	l.sfeqi	r11, 0
	l.addi	r28, r28, 630
	l.movhi	r17, 64
	l.and	r8, r16, r17
	l.srli	r25, r25, 3
	l.lwz	r26, 7124(r22)
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
	l.lwz	r13, 3552(r12)
	l.addi	r18, r18, 555
	l.lwz	r23, 7120(r22)
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
	l.lwz	r15, 3556(r12)
	l.srli	r15, r15, 3
	l.movhi	r16, 64
	l.and	r17, r15, r16
	l.addi	r28, r28, 696
	l.addi	r16, r0, 1
	l.lwz	r25, 7124(r22)
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
	l.lwz	r8, 3560(r12)
	l.srli	r17, r8, 25
	l.and	r16, r17, r16
	l.addi	r28, r28, 708
	l.andi	r16, r16, 1
	l.lwz	r31, 7128(r22)
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
	l.sw	3552(r12), r13
	l.addi	r18, r18, 595
	l.sw	7120(r22), r23
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
	l.lwz	r16, 3560(r12)
	l.addi	r24, r0, 1
	l.lwz	r26, 7128(r22)
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
	l.lwz	r16, 3556(r12)
	l.addi	r18, r18, 615
	l.lwz	r26, 7124(r22)
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
	l.lwz	r14, 3560(r12)
	l.addi	r23, r0, 1
	l.lwz	r24, 7128(r22)
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
	l.lwz	r14, 3556(r12)
	l.addi	r18, r18, 645
	l.lwz	r24, 7124(r22)
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
	l.lwz	r8, 3556(r12)
	l.addi	r24, r0, 255
	l.xori	r26, r26, -1
	l.lwz	r31, 7124(r22)
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
	l.lwz	r8, 3556(r12)
	l.addi	r24, r0, 255
	l.xori	r26, r26, -1
	l.ori	r23, r27, 0
	l.lwz	r31, 7124(r22)
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
	l.lwz	r16, 3556(r12)
	l.lwz	r17, 3560(r12)
	l.sub	r8, r17, r16
	l.movhi	r15, 1024
	l.addi	r28, r28, 822
	l.and	r15, r8, r15
	l.lwz	r26, 7124(r22)
	l.lwz	r27, 7128(r22)
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
	l.lwz	r17, 3556(r12)
	l.addi	r18, r18, 735
	l.lwz	r27, 7124(r22)
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
	l.lwz	r14, 3556(r12)
	l.addi	r18, r18, 740
	l.lwz	r24, 7124(r22)
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
	l.lwz	r16, 3556(r12)
	l.addi	r18, r18, 750
	l.lwz	r26, 7124(r22)
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
	l.lwz	r14, 3556(r12)
	l.addi	r18, r18, 755
	l.lwz	r24, 7124(r22)
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

	.hidden	bit_count
	.globl	bit_count
	.p2align	2
	.type	bit_count,@function
bit_count:                              # @bit_count
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 152
	l.addi	r20, r20, 304           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r11, 0
	l.sfeqi	r3, 0
	l.sw	3564(r10), r12
	l.addi	r28, r28, 912
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.movhi	r8, 0
	l.sw	7132(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r31, 0
	l.bf	.LBB1_5
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 760
	l.sfeqi	r13, 0
	l.addi	r20, r20, 608           # CFC
	l.bf	.LBB1_6
	l.nop	0
.LBB1_1:                                # %do.body.preheader
	l.addi	r18, r18, 153
	l.addi	r20, r20, 306           # CFC
	l.movhi	r11, 0
	l.addi	r28, r28, 918
	l.movhi	r8, 0
	l.addi	r18, r18, 765
	l.movhi	r31, 0
	l.addi	r20, r20, 612           # CFC
.LBB1_2:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 154
	l.addi	r4, r3, -1
	l.and	r3, r4, r3
	l.addi	r11, r11, 1
	l.addi	r20, r20, 308           # CFC
	l.sfnei	r3, 0
	l.addi	r14, r13, -1
	l.and	r13, r14, r13
	l.addi	r28, r28, 924
	l.addi	r8, r8, 1
	l.addi	r24, r23, -1
	l.and	r23, r24, r23
	l.addi	r31, r31, 1
	l.bf	.LBB1_7
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 770
	l.sfnei	r13, 0
	l.addi	r20, r20, 616           # CFC
	l.bf	.LBB1_8
	l.nop	0
.LBB1_3:                                # %if.end
	l.addi	r18, r18, 155
	l.addi	r1, r2, 0
	l.addi	r20, r20, 310           # CFC
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 930
	l.lwz	r12, 3564(r10)
	l.addi	r18, r18, 775
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 620           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB1_4
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB1_4:                                # %if.end
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB1_9
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB1_9
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB1_9
	l.nop	0
	l.nop	205
.LBB1_9:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB1_10
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB1_10
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB1_10
	l.nop	0
	l.nop	205
.LBB1_10:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB1_11
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB1_11
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB1_11
	l.nop	0
	l.nop	205
.LBB1_11:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB1_12
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB1_12
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB1_12
	l.nop	0
	l.nop	205
.LBB1_12:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB1_13
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB1_13
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB1_13
	l.nop	0
	l.nop	205
.LBB1_13:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB1_14
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB1_14
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB1_14
	l.nop	0
	l.nop	205
.LBB1_14:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB1_15
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB1_15
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB1_15
	l.nop	0
	l.nop	205
.LBB1_15:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB1_16
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB1_16
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB1_16
	l.nop	0
	l.nop	205
.LBB1_16:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB1_17
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB1_17
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB1_17
	l.nop	0
	l.nop	205
.LBB1_17:
.LBB1_18:
	l.jr	r30
	l.nop	0
.LBB1_5:
	l.addi	r18, r18, 760
	l.sfeqi	r13, 0
	l.addi	r20, r20, 608           # CFC
	l.bf	.LBB1_3
	l.nop	0
.LBB1_6:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_4
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB1_3
	l.nop	0
	l.j	.LBB1_1
	l.nop	0
.LBB1_7:
	l.addi	r18, r18, 770
	l.sfnei	r13, 0
	l.addi	r20, r20, 616           # CFC
	l.bf	.LBB1_2
	l.nop	0
.LBB1_8:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_4
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB1_2
	l.nop	0
	l.j	.LBB1_3
	l.nop	0
.Lfunc_end1:
	.size	bit_count, .Lfunc_end1-bit_count

	.hidden	bitcount
	.globl	bitcount
	.p2align	2
	.type	bitcount,@function
bitcount:                               # @bitcount
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 156
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r4, 21845
	l.ori	r4, r4, 21845
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.and	r5, r3, r4
	l.movhi	r14, 21845
	l.sw	7132(r21), r22
	l.srli	r3, r3, 1
	l.ori	r14, r14, 21845
	l.addi	r22, r21, 0             # CFC
	l.and	r3, r3, r4
	l.and	r15, r13, r14
	l.addi	r21, r21, -4            # CFC
	l.add	r3, r3, r5
	l.srli	r13, r13, 1
	l.addi	r20, r20, 312           # CFC
	l.movhi	r24, 21845
	l.movhi	r4, 13107
	l.and	r13, r13, r14
	l.ori	r24, r24, 21845
	l.ori	r4, r4, 13107
	l.add	r13, r13, r15
	l.and	r25, r23, r24
	l.and	r5, r3, r4
	l.movhi	r14, 13107
	l.srli	r23, r23, 1
	l.srli	r3, r3, 2
	l.ori	r14, r14, 13107
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.and	r15, r13, r14
	l.add	r23, r23, r25
	l.add	r3, r3, r5
	l.srli	r13, r13, 2
	l.movhi	r24, 13107
	l.movhi	r4, 1799
	l.and	r13, r13, r14
	l.ori	r24, r24, 13107
	l.ori	r4, r4, 1799
	l.add	r13, r13, r15
	l.and	r25, r23, r24
	l.and	r5, r3, r4
	l.addi	r28, r28, 936
	l.movhi	r14, 1799
	l.srli	r23, r23, 2
	l.srli	r3, r3, 4
	l.ori	r14, r14, 1799
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.and	r15, r13, r14
	l.add	r23, r23, r25
	l.add	r3, r3, r5
	l.srli	r13, r13, 4
	l.movhi	r24, 1799
	l.movhi	r4, 15
	l.and	r13, r13, r14
	l.ori	r24, r24, 1799
	l.ori	r4, r4, 15
	l.add	r13, r13, r15
	l.and	r25, r23, r24
	l.and	r5, r3, r4
	l.movhi	r14, 15
	l.srli	r23, r23, 4
	l.srli	r3, r3, 8
	l.ori	r14, r14, 15
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.and	r15, r13, r14
	l.addi	r18, r18, 780
	l.add	r23, r23, r25
	l.add	r3, r3, r5
	l.srli	r13, r13, 8
	l.movhi	r24, 15
	l.andi	r4, r3, 31
	l.and	r13, r13, r14
	l.ori	r24, r24, 15
	l.srli	r3, r3, 16
	l.add	r13, r13, r15
	l.and	r25, r23, r24
	l.add	r11, r3, r4
	l.andi	r14, r13, 31
	l.srli	r23, r23, 8
	l.addi	r1, r2, 0
	l.srli	r13, r13, 16
	l.and	r23, r23, r24
	l.lwz	r2, -4(r1)
	l.add	r8, r13, r14
	l.add	r23, r23, r25
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.andi	r24, r23, 31
	l.srli	r23, r23, 16
	l.add	r31, r23, r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 624           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB2_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB2_1:                                # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB2_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB2_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB2_2
	l.nop	0
	l.nop	205
.LBB2_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB2_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB2_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB2_3
	l.nop	0
	l.nop	205
.LBB2_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB2_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB2_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB2_4
	l.nop	0
	l.nop	205
.LBB2_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB2_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB2_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB2_5
	l.nop	0
	l.nop	205
.LBB2_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB2_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB2_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB2_6
	l.nop	0
	l.nop	205
.LBB2_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB2_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB2_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB2_7
	l.nop	0
	l.nop	205
.LBB2_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB2_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB2_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB2_8
	l.nop	0
	l.nop	205
.LBB2_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB2_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB2_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB2_9
	l.nop	0
	l.nop	205
.LBB2_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB2_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB2_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB2_10
	l.nop	0
	l.nop	205
.LBB2_10:
.LBB2_11:
	l.jr	r30
	l.nop	0
.Lfunc_end2:
	.size	bitcount, .Lfunc_end2-bitcount

	.hidden	ntbl_bitcount
	.globl	ntbl_bitcount
	.p2align	2
	.type	ntbl_bitcount,@function
ntbl_bitcount:                          # @ntbl_bitcount
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 157
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r4, hi(bits)
	l.ori	r4, r4, lo(bits)
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.andi	r5, r3, 15
	l.movhi	r14, hi(bits)
	l.sw	7132(r21), r22
	l.add	r5, r5, r4
	l.ori	r14, r14, lo(bits)
	l.addi	r22, r21, 0             # CFC
	l.lbs	r5, 0(r5)
	l.andi	r15, r13, 15
	l.addi	r21, r21, -4            # CFC
	l.srli	r6, r3, 4
	l.add	r15, r15, r14
	l.movhi	r24, hi(bits)
	l.andi	r6, r6, 15
	l.lbs	r15, 3568(r15)
	l.ori	r24, r24, lo(bits)
	l.add	r6, r6, r4
	l.srli	r16, r13, 4
	l.andi	r25, r23, 15
	l.lbs	r6, 0(r6)
	l.andi	r16, r16, 15
	l.addi	r20, r20, 314           # CFC
	l.add	r25, r25, r24
	l.add	r5, r6, r5
	l.add	r16, r16, r14
	l.lbs	r25, 7136(r25)
	l.srli	r6, r3, 8
	l.lbs	r16, 3568(r16)
	l.srli	r26, r23, 4
	l.andi	r6, r6, 15
	l.add	r15, r16, r15
	l.andi	r26, r26, 15
	l.add	r6, r6, r4
	l.srli	r16, r13, 8
	l.add	r26, r26, r24
	l.lbs	r6, 0(r6)
	l.andi	r16, r16, 15
	l.lbs	r26, 7136(r26)
	l.add	r5, r5, r6
	l.add	r16, r16, r14
	l.add	r25, r26, r25
	l.srli	r6, r3, 12
	l.lbs	r16, 3568(r16)
	l.srli	r26, r23, 8
	l.andi	r6, r6, 15
	l.add	r15, r15, r16
	l.andi	r26, r26, 15
	l.add	r6, r6, r4
	l.srli	r16, r13, 12
	l.add	r26, r26, r24
	l.lbs	r6, 0(r6)
	l.andi	r16, r16, 15
	l.lbs	r26, 7136(r26)
	l.add	r5, r5, r6
	l.add	r16, r16, r14
	l.add	r25, r25, r26
	l.srli	r6, r3, 16
	l.addi	r28, r28, 942
	l.lbs	r16, 3568(r16)
	l.srli	r26, r23, 12
	l.andi	r6, r6, 15
	l.add	r15, r15, r16
	l.andi	r26, r26, 15
	l.add	r6, r6, r4
	l.srli	r16, r13, 16
	l.add	r26, r26, r24
	l.lbs	r6, 0(r6)
	l.andi	r16, r16, 15
	l.lbs	r26, 7136(r26)
	l.add	r5, r5, r6
	l.add	r16, r16, r14
	l.add	r25, r25, r26
	l.srli	r6, r3, 20
	l.lbs	r16, 3568(r16)
	l.srli	r26, r23, 16
	l.andi	r6, r6, 15
	l.add	r15, r15, r16
	l.andi	r26, r26, 15
	l.add	r6, r6, r4
	l.srli	r16, r13, 20
	l.add	r26, r26, r24
	l.lbs	r6, 0(r6)
	l.andi	r16, r16, 15
	l.lbs	r26, 7136(r26)
	l.add	r5, r5, r6
	l.add	r16, r16, r14
	l.add	r25, r25, r26
	l.srli	r6, r3, 28
	l.lbs	r16, 3568(r16)
	l.srli	r26, r23, 20
	l.add	r6, r6, r4
	l.add	r15, r15, r16
	l.addi	r18, r18, 785
	l.andi	r26, r26, 15
	l.srli	r3, r3, 24
	l.srli	r16, r13, 28
	l.add	r26, r26, r24
	l.andi	r3, r3, 15
	l.add	r16, r16, r14
	l.lbs	r26, 7136(r26)
	l.add	r3, r3, r4
	l.srli	r13, r13, 24
	l.add	r25, r25, r26
	l.lbs	r3, 0(r3)
	l.andi	r13, r13, 15
	l.srli	r26, r23, 28
	l.add	r3, r5, r3
	l.add	r13, r13, r14
	l.add	r26, r26, r24
	l.lbs	r4, 0(r6)
	l.lbs	r13, 3568(r13)
	l.srli	r23, r23, 24
	l.add	r11, r3, r4
	l.add	r13, r15, r13
	l.andi	r23, r23, 15
	l.addi	r1, r2, 0
	l.lbs	r14, 3568(r16)
	l.add	r23, r23, r24
	l.lwz	r2, -4(r1)
	l.add	r8, r13, r14
	l.lbs	r23, 7136(r23)
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.add	r23, r25, r23
	l.lbs	r24, 7136(r26)
	l.add	r31, r23, r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 628           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB3_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB3_1:                                # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB3_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB3_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB3_2
	l.nop	0
	l.nop	205
.LBB3_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB3_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB3_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB3_3
	l.nop	0
	l.nop	205
.LBB3_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB3_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB3_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB3_4
	l.nop	0
	l.nop	205
.LBB3_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB3_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB3_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB3_5
	l.nop	0
	l.nop	205
.LBB3_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB3_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB3_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB3_6
	l.nop	0
	l.nop	205
.LBB3_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB3_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB3_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB3_7
	l.nop	0
	l.nop	205
.LBB3_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB3_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB3_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB3_8
	l.nop	0
	l.nop	205
.LBB3_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB3_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB3_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB3_9
	l.nop	0
	l.nop	205
.LBB3_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB3_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB3_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB3_10
	l.nop	0
	l.nop	205
.LBB3_10:
.LBB3_11:
	l.jr	r30
	l.nop	0
.Lfunc_end3:
	.size	ntbl_bitcount, .Lfunc_end3-ntbl_bitcount

	.hidden	BW_btbl_bitcount
	.globl	BW_btbl_bitcount
	.p2align	2
	.type	BW_btbl_bitcount,@function
BW_btbl_bitcount:                       # @BW_btbl_bitcount
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 158
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r4, hi(bits)
	l.ori	r4, r4, lo(bits)
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.srli	r5, r3, 24
	l.movhi	r14, hi(bits)
	l.sw	7132(r21), r22
	l.add	r5, r5, r4
	l.ori	r14, r14, lo(bits)
	l.addi	r20, r20, 316           # CFC
	l.addi	r22, r21, 0             # CFC
	l.lbs	r5, 0(r5)
	l.srli	r15, r13, 24
	l.addi	r21, r21, -4            # CFC
	l.srli	r6, r3, 16
	l.add	r15, r15, r14
	l.movhi	r24, hi(bits)
	l.andi	r6, r6, 255
	l.lbs	r15, 3568(r15)
	l.ori	r24, r24, lo(bits)
	l.add	r6, r6, r4
	l.srli	r16, r13, 16
	l.srli	r25, r23, 24
	l.lbs	r6, 0(r6)
	l.andi	r16, r16, 255
	l.add	r25, r25, r24
	l.add	r5, r6, r5
	l.add	r16, r16, r14
	l.lbs	r25, 7136(r25)
	l.andi	r6, r3, 255
	l.addi	r28, r28, 948
	l.lbs	r16, 3568(r16)
	l.srli	r26, r23, 16
	l.add	r6, r6, r4
	l.add	r15, r16, r15
	l.andi	r26, r26, 255
	l.lbs	r6, 0(r6)
	l.andi	r16, r13, 255
	l.add	r26, r26, r24
	l.add	r5, r5, r6
	l.add	r16, r16, r14
	l.lbs	r26, 7136(r26)
	l.srli	r3, r3, 8
	l.lbs	r16, 3568(r16)
	l.add	r25, r26, r25
	l.andi	r3, r3, 255
	l.add	r15, r15, r16
	l.andi	r26, r23, 255
	l.add	r3, r3, r4
	l.srli	r13, r13, 8
	l.addi	r18, r18, 790
	l.add	r26, r26, r24
	l.lbs	r3, 0(r3)
	l.andi	r13, r13, 255
	l.lbs	r26, 7136(r26)
	l.add	r11, r5, r3
	l.add	r13, r13, r14
	l.add	r25, r25, r26
	l.addi	r1, r2, 0
	l.lbs	r13, 3568(r13)
	l.srli	r23, r23, 8
	l.lwz	r2, -4(r1)
	l.add	r8, r15, r13
	l.andi	r23, r23, 255
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.add	r23, r23, r24
	l.lbs	r23, 7136(r23)
	l.add	r31, r25, r23
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 632           # CFC
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
	.size	BW_btbl_bitcount, .Lfunc_end4-BW_btbl_bitcount

	.hidden	AR_btbl_bitcount
	.globl	AR_btbl_bitcount
	.p2align	2
	.type	AR_btbl_bitcount,@function
AR_btbl_bitcount:                       # @AR_btbl_bitcount
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 159
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r4, hi(bits)
	l.ori	r4, r4, lo(bits)
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.srli	r5, r3, 24
	l.movhi	r14, hi(bits)
	l.sw	7132(r21), r22
	l.add	r5, r5, r4
	l.ori	r14, r14, lo(bits)
	l.addi	r20, r20, 318           # CFC
	l.addi	r22, r21, 0             # CFC
	l.lbs	r5, 0(r5)
	l.srli	r15, r13, 24
	l.addi	r21, r21, -4            # CFC
	l.srli	r6, r3, 16
	l.add	r15, r15, r14
	l.movhi	r24, hi(bits)
	l.andi	r6, r6, 255
	l.lbs	r15, 3568(r15)
	l.ori	r24, r24, lo(bits)
	l.add	r6, r6, r4
	l.srli	r16, r13, 16
	l.srli	r25, r23, 24
	l.lbs	r6, 0(r6)
	l.andi	r16, r16, 255
	l.add	r25, r25, r24
	l.add	r5, r6, r5
	l.add	r16, r16, r14
	l.lbs	r25, 7136(r25)
	l.srli	r6, r3, 8
	l.addi	r28, r28, 954
	l.lbs	r16, 3568(r16)
	l.srli	r26, r23, 16
	l.andi	r6, r6, 255
	l.add	r15, r16, r15
	l.andi	r26, r26, 255
	l.add	r6, r6, r4
	l.srli	r16, r13, 8
	l.add	r26, r26, r24
	l.lbs	r6, 0(r6)
	l.andi	r16, r16, 255
	l.lbs	r26, 7136(r26)
	l.add	r5, r5, r6
	l.add	r16, r16, r14
	l.add	r25, r26, r25
	l.andi	r3, r3, 255
	l.lbs	r16, 3568(r16)
	l.srli	r26, r23, 8
	l.add	r3, r3, r4
	l.add	r15, r15, r16
	l.addi	r18, r18, 795
	l.andi	r26, r26, 255
	l.lbs	r3, 0(r3)
	l.andi	r13, r13, 255
	l.add	r26, r26, r24
	l.add	r11, r5, r3
	l.add	r13, r13, r14
	l.lbs	r26, 7136(r26)
	l.addi	r1, r2, 0
	l.lbs	r13, 3568(r13)
	l.add	r25, r25, r26
	l.lwz	r2, -4(r1)
	l.add	r8, r15, r13
	l.andi	r23, r23, 255
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.add	r23, r23, r24
	l.lbs	r23, 7136(r23)
	l.add	r31, r25, r23
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 636           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB5_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB5_1:                                # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB5_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB5_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB5_2
	l.nop	0
	l.nop	205
.LBB5_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB5_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB5_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB5_3
	l.nop	0
	l.nop	205
.LBB5_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB5_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB5_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB5_4
	l.nop	0
	l.nop	205
.LBB5_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB5_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB5_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB5_5
	l.nop	0
	l.nop	205
.LBB5_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB5_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB5_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB5_6
	l.nop	0
	l.nop	205
.LBB5_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB5_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB5_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB5_7
	l.nop	0
	l.nop	205
.LBB5_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB5_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB5_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB5_8
	l.nop	0
	l.nop	205
.LBB5_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB5_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB5_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB5_9
	l.nop	0
	l.nop	205
.LBB5_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB5_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB5_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB5_10
	l.nop	0
	l.nop	205
.LBB5_10:
.LBB5_11:
	l.jr	r30
	l.nop	0
.Lfunc_end5:
	.size	AR_btbl_bitcount, .Lfunc_end5-AR_btbl_bitcount

	.hidden	ntbl_bitcnt
	.globl	ntbl_bitcnt
	.p2align	2
	.type	ntbl_bitcnt,@function
ntbl_bitcnt:                            # @ntbl_bitcnt
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 160
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -12
	l.addi	r20, r20, 320           # CFC
	l.movhi	r4, hi(bits.1)
	l.sw	3564(r10), r19
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.ori	r4, r4, lo(bits.1)
	l.addi	r10, r10, -12
	l.sw	7132(r21), r29
	l.andi	r5, r3, 15
	l.movhi	r14, hi(bits.1)
	l.sw	7128(r21), r22
	l.add	r4, r5, r4
	l.ori	r14, r14, lo(bits.1)
	l.addi	r22, r21, 0             # CFC
	l.addi	r28, r28, 960
	l.lbs	r11, 0(r4)
	l.andi	r15, r13, 15
	l.addi	r21, r21, -12           # CFC
	l.srai	r3, r3, 4
	l.add	r14, r15, r14
	l.movhi	r24, hi(bits.1)
	l.sfeqi	r3, 0
	l.lbs	r8, 3568(r14)
	l.srai	r13, r13, 4
	l.ori	r24, r24, lo(bits.1)
	l.andi	r25, r23, 15
	l.add	r24, r25, r24
	l.lbs	r31, 7136(r24)
	l.srai	r23, r23, 4
	l.bf	.LBB6_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 800
	l.sfeqi	r13, 0
	l.addi	r20, r20, 640           # CFC
	l.bf	.LBB6_5
	l.nop	0
.LBB6_1:                                # %if.then
	l.addi	r18, r18, 161
	l.sw	-12(r2), r11
	l.sw	3556(r12), r8
	l.addi	r20, r20, 322           # CFC
	l.sw	7124(r22), r31
	l.jal	ntbl_bitcnt
	l.nop	0                       # in delay slot
	l.lwz	r3, -12(r2)
	l.addi	r28, r28, 966
	l.add	r11, r11, r3
	l.lwz	r13, 3556(r12)
	l.addi	r18, r18, 805
	l.add	r8, r8, r13
	l.lwz	r23, 7124(r22)
	l.add	r31, r31, r23
	l.addi	r20, r20, 644           # CFC
.LBB6_2:                                # %if.end
	l.addi	r18, r18, 162
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 324           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 972
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.addi	r18, r18, 810
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 648           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB6_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB6_3:                                # %if.end
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB6_6
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB6_6
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB6_6
	l.nop	0
	l.nop	205
.LBB6_6:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB6_7
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB6_7
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB6_7
	l.nop	0
	l.nop	205
.LBB6_7:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB6_8
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB6_8
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB6_8
	l.nop	0
	l.nop	205
.LBB6_8:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB6_9
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB6_9
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB6_9
	l.nop	0
	l.nop	205
.LBB6_9:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB6_10
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB6_10
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB6_10
	l.nop	0
	l.nop	205
.LBB6_10:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB6_11
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB6_11
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB6_11
	l.nop	0
	l.nop	205
.LBB6_11:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB6_12
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB6_12
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB6_12
	l.nop	0
	l.nop	205
.LBB6_12:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB6_13
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB6_13
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB6_13
	l.nop	0
	l.nop	205
.LBB6_13:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB6_14
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB6_14
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB6_14
	l.nop	0
	l.nop	205
.LBB6_14:
.LBB6_15:
	l.jr	r30
	l.nop	0
.LBB6_4:
	l.addi	r18, r18, 800
	l.sfeqi	r13, 0
	l.addi	r20, r20, 640           # CFC
	l.bf	.LBB6_2
	l.nop	0
.LBB6_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB6_3
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB6_2
	l.nop	0
	l.j	.LBB6_1
	l.nop	0
.Lfunc_end6:
	.size	ntbl_bitcnt, .Lfunc_end6-ntbl_bitcnt

	.hidden	btbl_bitcnt
	.globl	btbl_bitcnt
	.p2align	2
	.type	btbl_bitcnt,@function
btbl_bitcnt:                            # @btbl_bitcnt
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 163
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -12
	l.addi	r20, r20, 326           # CFC
	l.movhi	r4, hi(bits.1)
	l.sw	3564(r10), r19
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.ori	r4, r4, lo(bits.1)
	l.addi	r10, r10, -12
	l.sw	7132(r21), r29
	l.srli	r5, r3, 24
	l.movhi	r14, hi(bits.1)
	l.sw	7128(r21), r22
	l.add	r4, r5, r4
	l.ori	r14, r14, lo(bits.1)
	l.addi	r22, r21, 0             # CFC
	l.addi	r28, r28, 978
	l.lbs	r11, 0(r4)
	l.srli	r15, r13, 24
	l.addi	r21, r21, -12           # CFC
	l.srai	r3, r3, 8
	l.add	r14, r15, r14
	l.movhi	r24, hi(bits.1)
	l.sfeqi	r3, 0
	l.lbs	r8, 3568(r14)
	l.srai	r13, r13, 8
	l.ori	r24, r24, lo(bits.1)
	l.srli	r25, r23, 24
	l.add	r24, r25, r24
	l.lbs	r31, 7136(r24)
	l.srai	r23, r23, 8
	l.bf	.LBB7_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 815
	l.sfeqi	r13, 0
	l.addi	r20, r20, 652           # CFC
	l.bf	.LBB7_5
	l.nop	0
.LBB7_1:                                # %if.then
	l.addi	r18, r18, 164
	l.sw	-12(r2), r11
	l.sw	3556(r12), r8
	l.addi	r20, r20, 328           # CFC
	l.sw	7124(r22), r31
	l.jal	btbl_bitcnt
	l.nop	0                       # in delay slot
	l.lwz	r3, -12(r2)
	l.addi	r28, r28, 984
	l.add	r11, r11, r3
	l.lwz	r13, 3556(r12)
	l.addi	r18, r18, 820
	l.add	r8, r8, r13
	l.lwz	r23, 7124(r22)
	l.add	r31, r31, r23
	l.addi	r20, r20, 656           # CFC
.LBB7_2:                                # %if.end
	l.addi	r18, r18, 165
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 330           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 990
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.addi	r18, r18, 825
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 660           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB7_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB7_3:                                # %if.end
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
	l.addi	r18, r18, 815
	l.sfeqi	r13, 0
	l.addi	r20, r20, 652           # CFC
	l.bf	.LBB7_2
	l.nop	0
.LBB7_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB7_3
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB7_2
	l.nop	0
	l.j	.LBB7_1
	l.nop	0
.Lfunc_end7:
	.size	btbl_bitcnt, .Lfunc_end7-btbl_bitcnt

	.hidden	__muldi3
	.globl	__muldi3
	.p2align	2
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 166
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -28
	l.sw	-12(r2), r5
	l.sw	-24(r2), r3
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -28
	l.andi	r5, r4, 65535
	l.sw	3556(r12), r15
	l.sw	7132(r21), r22
	l.andi	r7, r6, 65535
	l.sw	3544(r12), r13
	l.addi	r22, r21, 0             # CFC
	l.mul	r11, r7, r5
	l.andi	r15, r14, 65535
	l.addi	r21, r21, -28           # CFC
	l.sw	-16(r2), r6
	l.andi	r17, r16, 65535
	l.addi	r20, r20, 332           # CFC
	l.sw	7124(r22), r25
	l.srli	r3, r6, 16
	l.mul	r8, r17, r15
	l.sw	7112(r22), r23
	l.sw	-28(r2), r3
	l.sw	3552(r12), r16
	l.andi	r25, r24, 65535
	l.mul	r5, r3, r5
	l.srli	r13, r16, 16
	l.andi	r27, r26, 65535
	l.sw	-20(r2), r4
	l.sw	3540(r12), r13
	l.mul	r31, r27, r25
	l.srli	r3, r4, 16
	l.mul	r15, r13, r15
	l.sw	7120(r22), r26
	l.mul	r6, r7, r3
	l.sw	3548(r12), r14
	l.srli	r23, r26, 16
	l.add	r5, r6, r5
	l.srli	r13, r14, 16
	l.sw	7108(r22), r23
	l.sw	-8(r2), r11
	l.mul	r16, r17, r13
	l.mul	r25, r23, r25
	l.addi	r28, r28, 996
	l.srli	r7, r11, 16
	l.add	r15, r16, r15
	l.sw	7116(r22), r24
	l.add	r7, r5, r7
	l.sw	3560(r12), r8
	l.srli	r23, r24, 16
	l.lwz	r4, -28(r2)
	l.srli	r17, r8, 16
	l.mul	r26, r27, r23
	l.mul	r11, r4, r3
	l.add	r17, r15, r17
	l.add	r25, r26, r25
	l.movhi	r3, 1
	l.lwz	r14, 3540(r12)
	l.sw	7128(r22), r31
	l.add	r5, r11, r3
	l.mul	r8, r14, r13
	l.srli	r27, r31, 16
	l.sfltu	r7, r6
	l.movhi	r13, 1
	l.add	r15, r8, r13
	l.add	r27, r25, r27
	l.lwz	r24, 7108(r22)
	l.mul	r31, r24, r23
	l.movhi	r23, 1
	l.add	r25, r31, r23
	l.bf	.LBB8_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 830
	l.sfltu	r17, r16
	l.addi	r20, r20, 664           # CFC
	l.bf	.LBB8_5
	l.nop	0
.LBB8_1:                                # %entry
	l.addi	r18, r18, 167
	l.addi	r20, r20, 334           # CFC
	l.ori	r5, r11, 0
	l.addi	r28, r28, 1002
	l.ori	r15, r8, 0
	l.addi	r18, r18, 835
	l.ori	r25, r31, 0
	l.addi	r20, r20, 668           # CFC
.LBB8_2:                                # %entry
	l.addi	r18, r18, 168
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
	l.addi	r20, r20, 336           # CFC
	l.andi	r4, r4, 65535
	l.lwz	r13, 3552(r12)
	l.lwz	r14, 3544(r12)
	l.mul	r13, r14, r13
	l.lwz	r14, 3556(r12)
	l.lwz	r16, 3548(r12)
	l.mul	r14, r14, r16
	l.add	r13, r14, r13
	l.srli	r14, r17, 16
	l.add	r13, r13, r14
	l.add	r8, r13, r15
	l.slli	r13, r17, 16
	l.addi	r28, r28, 1008
	l.lwz	r14, 3560(r12)
	l.andi	r14, r14, 65535
	l.or	r12, r13, r14
	l.lwz	r23, 7120(r22)
	l.lwz	r24, 7112(r22)
	l.mul	r23, r24, r23
	l.lwz	r24, 7124(r22)
	l.lwz	r26, 7116(r22)
	l.mul	r24, r24, r26
	l.add	r23, r24, r23
	l.srli	r24, r27, 16
	l.add	r23, r23, r24
	l.addi	r18, r18, 840
	l.add	r31, r23, r25
	l.slli	r23, r27, 16
	l.lwz	r24, 7128(r22)
	l.andi	r24, r24, 65535
	l.or	r12, r23, r24
	l.or	r12, r3, r4
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 672           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB8_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB8_3:                                # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB8_6
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB8_6
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB8_6
	l.nop	0
	l.nop	205
.LBB8_6:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB8_7
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB8_7
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB8_7
	l.nop	0
	l.nop	205
.LBB8_7:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB8_8
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB8_8
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB8_8
	l.nop	0
	l.nop	205
.LBB8_8:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB8_9
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB8_9
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB8_9
	l.nop	0
	l.nop	205
.LBB8_9:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB8_10
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB8_10
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB8_10
	l.nop	0
	l.nop	205
.LBB8_10:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB8_11
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB8_11
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB8_11
	l.nop	0
	l.nop	205
.LBB8_11:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB8_12
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB8_12
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB8_12
	l.nop	0
	l.nop	205
.LBB8_12:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB8_13
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB8_13
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB8_13
	l.nop	0
	l.nop	205
.LBB8_13:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB8_14
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB8_14
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB8_14
	l.nop	0
	l.nop	205
.LBB8_14:
.LBB8_15:
	l.jr	r30
	l.nop	0
.LBB8_4:
	l.addi	r18, r18, 830
	l.sfltu	r17, r16
	l.addi	r20, r20, 664           # CFC
	l.bf	.LBB8_2
	l.nop	0
.LBB8_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_3
	l.nop	0
	l.sfltu	r7, r6
	l.bf	.LBB8_2
	l.nop	0
	l.j	.LBB8_1
	l.nop	0
.Lfunc_end8:
	.size	__muldi3, .Lfunc_end8-__muldi3

	.hidden	__udivdi3
	.globl	__udivdi3
	.p2align	2
	.type	__udivdi3,@function
__udivdi3:                              # @__udivdi3
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 169
	l.addi	r20, r20, 338           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -36
	l.sfnei	r5, 0
	l.addi	r28, r28, 1014
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -36
	l.sw	7132(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -36           # CFC
	l.bf	.LBB9_74
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 845
	l.sfnei	r15, 0
	l.addi	r20, r20, 676           # CFC
	l.bf	.LBB9_75
	l.nop	0
.LBB9_1:                                # %if.then.i
	l.addi	r18, r18, 170
	l.movhi	r5, 256
	l.addi	r11, r0, 16
	l.addi	r20, r20, 340           # CFC
	l.sfltu	r6, r5
	l.movhi	r15, 256
	l.addi	r28, r28, 1020
	l.addi	r8, r0, 16
	l.movhi	r25, 256
	l.addi	r31, r0, 16
	l.bf	.LBB9_76
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 850
	l.sfltu	r16, r15
	l.addi	r20, r20, 680           # CFC
	l.bf	.LBB9_77
	l.nop	0
.LBB9_2:                                # %if.then.i
	l.addi	r18, r18, 171
	l.addi	r20, r20, 342           # CFC
	l.addi	r11, r0, 24
	l.addi	r28, r28, 1026
	l.addi	r8, r0, 24
	l.addi	r18, r18, 855
	l.addi	r31, r0, 24
	l.addi	r20, r20, 684           # CFC
.LBB9_3:                                # %if.then.i
	l.addi	r18, r18, 172
	l.movhi	r5, 0
	l.addi	r20, r20, 344           # CFC
	l.sfltui	r6, 256
	l.addi	r28, r28, 1032
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.bf	.LBB9_78
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 860
	l.sfltui	r16, 256
	l.addi	r20, r20, 688           # CFC
	l.bf	.LBB9_79
	l.nop	0
.LBB9_4:                                # %if.then.i
	l.addi	r18, r18, 173
	l.addi	r20, r20, 346           # CFC
	l.addi	r5, r0, 8
	l.addi	r28, r28, 1038
	l.addi	r15, r0, 8
	l.addi	r18, r18, 865
	l.addi	r25, r0, 8
	l.addi	r20, r20, 692           # CFC
.LBB9_5:                                # %if.then.i
	l.addi	r18, r18, 174
	l.movhi	r7, 1
	l.sw	-12(r2), r6
	l.addi	r20, r20, 348           # CFC
	l.sfltu	r6, r7
	l.movhi	r17, 1
	l.addi	r28, r28, 1044
	l.sw	3556(r12), r16
	l.movhi	r27, 1
	l.sw	7124(r22), r26
	l.bf	.LBB9_80
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 870
	l.sfltu	r16, r17
	l.addi	r20, r20, 696           # CFC
	l.bf	.LBB9_81
	l.nop	0
.LBB9_6:                                # %if.then.i
	l.addi	r18, r18, 175
	l.addi	r20, r20, 350           # CFC
	l.ori	r5, r11, 0
	l.addi	r28, r28, 1050
	l.ori	r15, r8, 0
	l.addi	r18, r18, 875
	l.ori	r25, r31, 0
	l.addi	r20, r20, 700           # CFC
.LBB9_7:                                # %if.then.i
	l.addi	r18, r18, 176
	l.movhi	r6, hi(__clz_tab)
	l.ori	r6, r6, lo(__clz_tab)
	l.lwz	r11, -12(r2)
	l.srl	r7, r11, r5
	l.add	r6, r7, r6
	l.movhi	r16, hi(__clz_tab)
	l.ori	r16, r16, lo(__clz_tab)
	l.lwz	r8, 3556(r12)
	l.lbz	r6, 0(r6)
	l.addi	r20, r20, 352           # CFC
	l.srl	r17, r8, r15
	l.movhi	r26, hi(__clz_tab)
	l.add	r6, r6, r5
	l.add	r16, r17, r16
	l.ori	r26, r26, lo(__clz_tab)
	l.addi	r5, r0, 32
	l.lbz	r16, 3568(r16)
	l.lwz	r31, 7124(r22)
	l.sub	r7, r5, r6
	l.addi	r28, r28, 1056
	l.add	r16, r16, r15
	l.srl	r27, r31, r25
	l.sfgeu	r3, r11
	l.addi	r15, r0, 32
	l.sub	r17, r15, r16
	l.add	r26, r27, r26
	l.lbz	r26, 7136(r26)
	l.add	r26, r26, r25
	l.addi	r25, r0, 32
	l.sub	r27, r25, r26
	l.bf	.LBB9_82
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 880
	l.sfgeu	r13, r8
	l.addi	r20, r20, 704           # CFC
	l.bf	.LBB9_83
	l.nop	0
.LBB9_8:                                # %do.body.i
	l.addi	r18, r18, 177
	l.sfeqi	r7, 0
	l.addi	r20, r20, 354           # CFC
	l.lwz	r5, -12(r2)
	l.addi	r28, r28, 1062
	l.lwz	r15, 3556(r12)
	l.lwz	r25, 7124(r22)
	l.bf	.LBB9_84
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 885
	l.sfeqi	r17, 0
	l.addi	r20, r20, 708           # CFC
	l.bf	.LBB9_85
	l.nop	0
.LBB9_9:                                # %if.then16.i
	l.addi	r18, r18, 178
	l.srl	r6, r4, r6
	l.sll	r3, r3, r7
	l.or	r3, r3, r6
	l.addi	r20, r20, 356           # CFC
	l.sll	r4, r4, r7
	l.sll	r5, r5, r7
	l.srl	r16, r14, r16
	l.sll	r13, r13, r17
	l.addi	r28, r28, 1068
	l.or	r13, r13, r16
	l.sll	r14, r14, r17
	l.sll	r15, r15, r17
	l.srl	r26, r24, r26
	l.addi	r18, r18, 890
	l.sll	r23, r23, r27
	l.or	r23, r23, r26
	l.sll	r24, r24, r27
	l.sll	r25, r25, r27
	l.addi	r20, r20, 712           # CFC
.LBB9_10:                               # %do.body21.i
	l.addi	r18, r18, 179
	l.srli	r7, r5, 16
	l.ori	r6, r4, 0
	l.divu	r11, r3, r7
	l.sw	-16(r2), r7
	l.mul	r4, r11, r7
	l.srli	r17, r15, 16
	l.ori	r16, r14, 0
	l.divu	r8, r13, r17
	l.sub	r3, r3, r4
	l.sw	3552(r12), r17
	l.srli	r27, r25, 16
	l.slli	r3, r3, 16
	l.mul	r14, r8, r17
	l.ori	r26, r24, 0
	l.addi	r20, r20, 358           # CFC
	l.sw	-8(r2), r6
	l.sub	r13, r13, r14
	l.divu	r31, r23, r27
	l.srli	r4, r6, 16
	l.slli	r13, r13, 16
	l.sw	7120(r22), r27
	l.or	r7, r3, r4
	l.sw	3560(r12), r16
	l.mul	r24, r31, r27
	l.andi	r4, r5, 65535
	l.srli	r14, r16, 16
	l.sub	r23, r23, r24
	l.mul	r3, r11, r4
	l.or	r17, r13, r14
	l.addi	r28, r28, 1074
	l.slli	r23, r23, 16
	l.sfgeu	r7, r3
	l.andi	r14, r15, 65535
	l.sw	7128(r22), r26
	l.sw	-12(r2), r11
	l.mul	r13, r8, r14
	l.srli	r24, r26, 16
	l.ori	r6, r5, 0
	l.sw	3556(r12), r8
	l.ori	r16, r15, 0
	l.or	r27, r23, r24
	l.andi	r24, r25, 65535
	l.mul	r23, r31, r24
	l.sw	7124(r22), r31
	l.ori	r26, r25, 0
	l.bf	.LBB9_86
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 895
	l.sfgeu	r17, r13
	l.addi	r20, r20, 716           # CFC
	l.bf	.LBB9_87
	l.nop	0
.LBB9_11:                               # %if.then28.i
	l.addi	r18, r18, 180
	l.addi	r5, r11, -1
	l.sw	-12(r2), r5
	l.add	r7, r7, r6
	l.addi	r20, r20, 360           # CFC
	l.sfltu	r7, r6
	l.addi	r15, r8, -1
	l.sw	3556(r12), r15
	l.addi	r28, r28, 1080
	l.add	r17, r17, r16
	l.addi	r25, r31, -1
	l.sw	7124(r22), r25
	l.add	r27, r27, r26
	l.bf	.LBB9_88
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 900
	l.sfltu	r17, r16
	l.addi	r20, r20, 720           # CFC
	l.bf	.LBB9_89
	l.nop	0
.LBB9_12:                               # %if.then28.i
	l.sfgeu	r7, r3
	l.bf	.LBB9_90
	l.nop	0                       # in delay slot
	l.sfgeu	r17, r13
	l.bf	.LBB9_91
	l.nop	0
.LBB9_13:                               # %if.then35.i
	l.addi	r18, r18, 181
	l.add	r7, r7, r6
	l.addi	r5, r11, -2
	l.addi	r20, r20, 362           # CFC
	l.sw	-12(r2), r5
	l.add	r17, r17, r16
	l.addi	r28, r28, 1086
	l.addi	r15, r8, -2
	l.sw	3556(r12), r15
	l.addi	r18, r18, 905
	l.add	r27, r27, r26
	l.addi	r25, r31, -2
	l.sw	7124(r22), r25
	l.addi	r20, r20, 724           # CFC
.LBB9_14:                               # %if.end40.i
	l.addi	r18, r18, 182
	l.sub	r3, r7, r3
	l.lwz	r5, -16(r2)
	l.divu	r7, r3, r5
	l.mul	r5, r7, r5
	l.sub	r3, r3, r5
	l.sub	r13, r17, r13
	l.lwz	r15, 3552(r12)
	l.divu	r17, r13, r15
	l.slli	r3, r3, 16
	l.mul	r15, r17, r15
	l.addi	r20, r20, 364           # CFC
	l.sub	r23, r27, r23
	l.lwz	r5, -8(r2)
	l.sub	r13, r13, r15
	l.lwz	r25, 7120(r22)
	l.andi	r5, r5, 65535
	l.slli	r13, r13, 16
	l.divu	r27, r23, r25
	l.or	r3, r3, r5
	l.lwz	r15, 3560(r12)
	l.mul	r25, r27, r25
	l.addi	r28, r28, 1092
	l.mul	r11, r7, r4
	l.andi	r15, r15, 65535
	l.sub	r23, r23, r25
	l.sfgeu	r3, r11
	l.or	r13, r13, r15
	l.mul	r8, r17, r14
	l.slli	r23, r23, 16
	l.lwz	r25, 7128(r22)
	l.andi	r25, r25, 65535
	l.or	r23, r23, r25
	l.mul	r31, r27, r24
	l.bf	.LBB9_92
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 910
	l.sfgeu	r13, r8
	l.addi	r20, r20, 728           # CFC
	l.bf	.LBB9_93
	l.nop	0
.LBB9_15:                               # %if.then50.i
	l.addi	r18, r18, 183
	l.add	r5, r3, r6
	l.addi	r3, r0, -1
	l.addi	r4, r0, -2
	l.addi	r20, r20, 366           # CFC
	l.sfltu	r5, r11
	l.add	r15, r13, r16
	l.addi	r13, r0, -1
	l.addi	r28, r28, 1098
	l.addi	r14, r0, -2
	l.add	r25, r23, r26
	l.addi	r23, r0, -1
	l.addi	r24, r0, -2
	l.bf	.LBB9_94
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 915
	l.sfltu	r15, r8
	l.addi	r20, r20, 732           # CFC
	l.bf	.LBB9_95
	l.nop	0
.LBB9_16:                               # %if.then50.i
	l.addi	r18, r18, 184
	l.addi	r20, r20, 368           # CFC
	l.ori	r4, r3, 0
	l.addi	r28, r28, 1104
	l.ori	r14, r13, 0
	l.addi	r18, r18, 920
	l.ori	r24, r23, 0
	l.addi	r20, r20, 736           # CFC
.LBB9_17:                               # %if.then50.i
	l.sfgeu	r5, r6
	l.bf	.LBB9_96
	l.nop	0                       # in delay slot
	l.sfgeu	r15, r16
	l.bf	.LBB9_97
	l.nop	0
.LBB9_18:                               # %if.then50.i
	l.addi	r18, r18, 185
	l.addi	r20, r20, 370           # CFC
	l.ori	r4, r3, 0
	l.addi	r28, r28, 1110
	l.ori	r14, r13, 0
	l.addi	r18, r18, 925
	l.ori	r24, r23, 0
	l.addi	r20, r20, 740           # CFC
.LBB9_19:                               # %if.then50.i
	l.addi	r18, r18, 186
	l.addi	r20, r20, 372           # CFC
	l.add	r7, r7, r4
	l.addi	r28, r28, 1116
	l.add	r17, r17, r14
	l.addi	r18, r18, 930
	l.add	r27, r27, r24
	l.addi	r20, r20, 744           # CFC
.LBB9_20:                               # %if.end63.i
	l.addi	r18, r18, 187
	l.lwz	r3, -12(r2)
	l.slli	r3, r3, 16
	l.or	r7, r7, r3
	l.addi	r20, r20, 374           # CFC
	l.movhi	r11, 0
	l.lwz	r13, 3556(r12)
	l.slli	r13, r13, 16
	l.addi	r28, r28, 1122
	l.or	r17, r17, r13
	l.movhi	r8, 0
	l.lwz	r23, 7124(r22)
	l.addi	r18, r18, 935
	l.slli	r23, r23, 16
	l.or	r27, r27, r23
	l.movhi	r31, 0
	l.addi	r20, r20, 748           # CFC
	l.j	.LBB9_72
	l.nop	0                       # in delay slot
.LBB9_43:                               # %if.else240.i
	l.addi	r18, r18, 188
	l.sw	-8(r2), r4
	l.movhi	r11, 0
	l.sfltu	r3, r5
	l.addi	r20, r20, 376           # CFC
	l.movhi	r7, 0
	l.sw	3560(r12), r14
	l.movhi	r8, 0
	l.addi	r28, r28, 1128
	l.movhi	r17, 0
	l.sw	7128(r22), r24
	l.movhi	r31, 0
	l.movhi	r27, 0
	l.bf	.LBB9_98
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 940
	l.sfltu	r13, r15
	l.addi	r20, r20, 752           # CFC
	l.bf	.LBB9_99
	l.nop	0
.LBB9_44:                               # %do.body254.i
	l.addi	r18, r18, 189
	l.movhi	r7, 256
	l.addi	r4, r0, 16
	l.addi	r20, r20, 378           # CFC
	l.sfltu	r5, r7
	l.movhi	r17, 256
	l.addi	r28, r28, 1134
	l.addi	r14, r0, 16
	l.movhi	r27, 256
	l.addi	r24, r0, 16
	l.bf	.LBB9_100
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 945
	l.sfltu	r15, r17
	l.addi	r20, r20, 756           # CFC
	l.bf	.LBB9_101
	l.nop	0
.LBB9_45:                               # %do.body254.i
	l.addi	r18, r18, 190
	l.addi	r20, r20, 380           # CFC
	l.addi	r4, r0, 24
	l.addi	r28, r28, 1140
	l.addi	r14, r0, 24
	l.addi	r18, r18, 950
	l.addi	r24, r0, 24
	l.addi	r20, r20, 760           # CFC
.LBB9_46:                               # %do.body254.i
	l.addi	r18, r18, 191
	l.movhi	r7, 0
	l.addi	r20, r20, 382           # CFC
	l.sfltui	r5, 256
	l.addi	r28, r28, 1146
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.bf	.LBB9_102
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 955
	l.sfltui	r15, 256
	l.addi	r20, r20, 764           # CFC
	l.bf	.LBB9_103
	l.nop	0
.LBB9_47:                               # %do.body254.i
	l.addi	r18, r18, 192
	l.addi	r20, r20, 384           # CFC
	l.addi	r7, r0, 8
	l.addi	r28, r28, 1152
	l.addi	r17, r0, 8
	l.addi	r18, r18, 960
	l.addi	r27, r0, 8
	l.addi	r20, r20, 768           # CFC
.LBB9_48:                               # %do.body254.i
	l.addi	r18, r18, 193
	l.movhi	r11, 1
	l.addi	r20, r20, 386           # CFC
	l.sfltu	r5, r11
	l.addi	r28, r28, 1158
	l.movhi	r8, 1
	l.movhi	r31, 1
	l.bf	.LBB9_104
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 965
	l.sfltu	r15, r8
	l.addi	r20, r20, 772           # CFC
	l.bf	.LBB9_105
	l.nop	0
.LBB9_49:                               # %do.body254.i
	l.addi	r18, r18, 194
	l.addi	r20, r20, 388           # CFC
	l.ori	r7, r4, 0
	l.addi	r28, r28, 1164
	l.ori	r17, r14, 0
	l.addi	r18, r18, 970
	l.ori	r27, r24, 0
	l.addi	r20, r20, 776           # CFC
.LBB9_50:                               # %do.body254.i
	l.addi	r18, r18, 195
	l.srl	r4, r5, r7
	l.movhi	r11, hi(__clz_tab)
	l.ori	r11, r11, lo(__clz_tab)
	l.add	r4, r4, r11
	l.lbz	r4, 0(r4)
	l.srl	r14, r15, r17
	l.movhi	r8, hi(__clz_tab)
	l.ori	r8, r8, lo(__clz_tab)
	l.addi	r20, r20, 390           # CFC
	l.add	r4, r4, r7
	l.add	r14, r14, r8
	l.srl	r24, r25, r27
	l.addi	r7, r0, 32
	l.lbz	r14, 3568(r14)
	l.movhi	r31, hi(__clz_tab)
	l.sub	r7, r7, r4
	l.add	r14, r14, r17
	l.addi	r28, r28, 1170
	l.ori	r31, r31, lo(__clz_tab)
	l.sfnei	r7, 0
	l.addi	r17, r0, 32
	l.sub	r17, r17, r14
	l.add	r24, r24, r31
	l.lbz	r24, 7136(r24)
	l.add	r24, r24, r27
	l.addi	r27, r0, 32
	l.sub	r27, r27, r24
	l.bf	.LBB9_106
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 975
	l.sfnei	r17, 0
	l.addi	r20, r20, 780           # CFC
	l.bf	.LBB9_107
	l.nop	0
.LBB9_51:                               # %if.then278.i
	l.addi	r18, r18, 196
	l.movhi	r11, 0
	l.addi	r4, r0, 1
	l.addi	r20, r20, 392           # CFC
	l.sfleu	r3, r5
	l.movhi	r8, 0
	l.addi	r28, r28, 1176
	l.addi	r14, r0, 1
	l.movhi	r31, 0
	l.addi	r24, r0, 1
	l.bf	.LBB9_108
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 980
	l.sfleu	r13, r15
	l.addi	r20, r20, 784           # CFC
	l.bf	.LBB9_109
	l.nop	0
.LBB9_111:
	l.addi	r18, r18, 197
	l.addi	r20, r20, 394           # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 1182
	l.ori	r13, r14, 0
	l.addi	r18, r18, 985
	l.ori	r23, r24, 0
	l.addi	r20, r20, 788           # CFC
.LBB9_52:                               # %if.then278.i
	l.addi	r18, r18, 198
	l.addi	r20, r20, 396           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 1188
	l.movhi	r13, 0
	l.addi	r18, r18, 990
	l.movhi	r23, 0
	l.addi	r20, r20, 792           # CFC
.LBB9_53:                               # %if.then278.i
	l.addi	r18, r18, 199
	l.lwz	r5, -8(r2)
	l.addi	r20, r20, 398           # CFC
	l.sfltu	r5, r6
	l.addi	r28, r28, 1194
	l.lwz	r15, 3560(r12)
	l.lwz	r25, 7128(r22)
	l.bf	.LBB9_112
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 995
	l.sfltu	r15, r16
	l.addi	r20, r20, 796           # CFC
	l.bf	.LBB9_113
	l.nop	0
.LBB9_54:                               # %if.then278.i
	l.addi	r18, r18, 200
	l.addi	r20, r20, 400           # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 1200
	l.movhi	r14, 0
	l.addi	r18, r18, 1000
	l.movhi	r24, 0
	l.addi	r20, r20, 800           # CFC
.LBB9_55:                               # %if.then278.i
	l.addi	r18, r18, 201
	l.and	r3, r4, r3
	l.xori	r3, r3, -1
	l.addi	r20, r20, 402           # CFC
	l.andi	r7, r3, 1
	l.and	r13, r14, r13
	l.addi	r28, r28, 1206
	l.xori	r13, r13, -1
	l.andi	r17, r13, 1
	l.addi	r18, r18, 1005
	l.and	r23, r24, r23
	l.xori	r23, r23, -1
	l.andi	r27, r23, 1
	l.addi	r20, r20, 804           # CFC
	l.j	.LBB9_72
	l.nop	0                       # in delay slot
.LBB9_56:                               # %if.else303.i
	l.addi	r18, r18, 202
	l.sll	r5, r5, r7
	l.sw	-12(r2), r6
	l.sw	-16(r2), r7
	l.srl	r7, r6, r4
	l.or	r5, r5, r7
	l.sll	r15, r15, r17
	l.sw	3556(r12), r16
	l.sw	3552(r12), r17
	l.sw	-36(r2), r5
	l.srl	r17, r16, r14
	l.sll	r25, r25, r27
	l.srli	r6, r5, 16
	l.or	r15, r15, r17
	l.sw	7124(r22), r26
	l.srl	r5, r3, r4
	l.sw	3532(r12), r15
	l.sw	7120(r22), r27
	l.divu	r11, r5, r6
	l.srli	r16, r15, 16
	l.srl	r27, r26, r24
	l.sw	-24(r2), r6
	l.srl	r15, r13, r14
	l.or	r25, r25, r27
	l.mul	r7, r11, r6
	l.divu	r8, r15, r16
	l.sw	7100(r22), r25
	l.addi	r20, r20, 404           # CFC
	l.sub	r5, r5, r7
	l.sw	3544(r12), r16
	l.srli	r26, r25, 16
	l.lwz	r7, -16(r2)
	l.mul	r17, r8, r16
	l.srl	r25, r23, r24
	l.lwz	r6, -8(r2)
	l.sub	r15, r15, r17
	l.divu	r31, r25, r26
	l.srl	r4, r6, r4
	l.lwz	r17, 3552(r12)
	l.sw	7112(r22), r26
	l.lwz	r6, -36(r2)
	l.lwz	r16, 3560(r12)
	l.mul	r27, r31, r26
	l.sll	r3, r3, r7
	l.srl	r14, r16, r14
	l.sub	r25, r25, r27
	l.or	r4, r3, r4
	l.lwz	r16, 3532(r12)
	l.lwz	r27, 7120(r22)
	l.slli	r3, r5, 16
	l.sll	r13, r13, r17
	l.lwz	r26, 7128(r22)
	l.sw	-28(r2), r4
	l.or	r14, r13, r14
	l.addi	r28, r28, 1212
	l.srl	r24, r26, r24
	l.srli	r4, r4, 16
	l.slli	r13, r15, 16
	l.lwz	r26, 7100(r22)
	l.or	r3, r3, r4
	l.sw	3540(r12), r14
	l.sll	r23, r23, r27
	l.andi	r4, r6, 65535
	l.srli	r14, r14, 16
	l.or	r24, r23, r24
	l.sw	-32(r2), r4
	l.or	r13, r13, r14
	l.slli	r23, r25, 16
	l.mul	r4, r11, r4
	l.andi	r14, r16, 65535
	l.sw	7108(r22), r24
	l.sfgeu	r3, r4
	l.sw	3536(r12), r14
	l.srli	r24, r24, 16
	l.ori	r5, r11, 0
	l.mul	r14, r8, r14
	l.ori	r15, r8, 0
	l.or	r23, r23, r24
	l.andi	r24, r26, 65535
	l.sw	7104(r22), r24
	l.mul	r24, r31, r24
	l.ori	r25, r31, 0
	l.bf	.LBB9_114
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1010
	l.sfgeu	r13, r14
	l.addi	r20, r20, 808           # CFC
	l.bf	.LBB9_115
	l.nop	0
.LBB9_57:                               # %if.then332.i
	l.addi	r18, r18, 203
	l.addi	r5, r11, -1
	l.add	r3, r3, r6
	l.addi	r20, r20, 406           # CFC
	l.sfltu	r3, r6
	l.addi	r15, r8, -1
	l.addi	r28, r28, 1218
	l.add	r13, r13, r16
	l.addi	r25, r31, -1
	l.add	r23, r23, r26
	l.bf	.LBB9_116
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1015
	l.sfltu	r13, r16
	l.addi	r20, r20, 812           # CFC
	l.bf	.LBB9_117
	l.nop	0
.LBB9_58:                               # %if.then332.i
	l.sfgeu	r3, r4
	l.bf	.LBB9_118
	l.nop	0                       # in delay slot
	l.sfgeu	r13, r14
	l.bf	.LBB9_119
	l.nop	0
.LBB9_59:                               # %if.then340.i
	l.addi	r18, r18, 204
	l.add	r3, r3, r6
	l.addi	r20, r20, 408           # CFC
	l.addi	r5, r11, -2
	l.add	r13, r13, r16
	l.addi	r28, r28, 1224
	l.addi	r15, r8, -2
	l.addi	r18, r18, 1020
	l.add	r23, r23, r26
	l.addi	r25, r31, -2
	l.addi	r20, r20, 816           # CFC
.LBB9_60:                               # %if.end345.i
	l.addi	r18, r18, 205
	l.sw	-20(r2), r5
	l.lwz	r5, -12(r2)
	l.sll	r11, r5, r7
	l.sub	r3, r3, r4
	l.lwz	r5, -24(r2)
	l.sw	3548(r12), r15
	l.lwz	r15, 3556(r12)
	l.sll	r8, r15, r17
	l.divu	r4, r3, r5
	l.sub	r13, r13, r14
	l.sw	7116(r22), r25
	l.mul	r5, r4, r5
	l.lwz	r15, 3544(r12)
	l.lwz	r25, 7124(r22)
	l.sub	r3, r3, r5
	l.addi	r20, r20, 410           # CFC
	l.divu	r14, r13, r15
	l.sll	r31, r25, r27
	l.slli	r3, r3, 16
	l.mul	r15, r14, r15
	l.sub	r23, r23, r24
	l.lwz	r5, -28(r2)
	l.sub	r13, r13, r15
	l.lwz	r25, 7112(r22)
	l.andi	r5, r5, 65535
	l.slli	r13, r13, 16
	l.divu	r24, r23, r25
	l.or	r3, r3, r5
	l.lwz	r15, 3540(r12)
	l.mul	r25, r24, r25
	l.lwz	r5, -32(r2)
	l.addi	r28, r28, 1230
	l.andi	r15, r15, 65535
	l.sub	r23, r23, r25
	l.mul	r5, r4, r5
	l.or	r13, r13, r15
	l.slli	r23, r23, 16
	l.sfgeu	r3, r5
	l.lwz	r15, 3536(r12)
	l.lwz	r25, 7108(r22)
	l.ori	r7, r4, 0
	l.mul	r15, r14, r15
	l.ori	r17, r14, 0
	l.andi	r25, r25, 65535
	l.or	r23, r23, r25
	l.lwz	r25, 7104(r22)
	l.mul	r25, r24, r25
	l.ori	r27, r24, 0
	l.bf	.LBB9_120
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1025
	l.sfgeu	r13, r15
	l.addi	r20, r20, 820           # CFC
	l.bf	.LBB9_121
	l.nop	0
.LBB9_61:                               # %if.then355.i
	l.addi	r18, r18, 206
	l.addi	r7, r4, -1
	l.add	r3, r3, r6
	l.addi	r20, r20, 412           # CFC
	l.sfltu	r3, r6
	l.addi	r17, r14, -1
	l.addi	r28, r28, 1236
	l.add	r13, r13, r16
	l.addi	r27, r24, -1
	l.add	r23, r23, r26
	l.bf	.LBB9_122
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1030
	l.sfltu	r13, r16
	l.addi	r20, r20, 824           # CFC
	l.bf	.LBB9_123
	l.nop	0
.LBB9_62:                               # %if.then355.i
	l.sfgeu	r3, r5
	l.bf	.LBB9_124
	l.nop	0                       # in delay slot
	l.sfgeu	r13, r15
	l.bf	.LBB9_125
	l.nop	0
.LBB9_63:                               # %if.then363.i
	l.addi	r18, r18, 207
	l.add	r3, r3, r6
	l.addi	r20, r20, 414           # CFC
	l.addi	r7, r4, -2
	l.add	r13, r13, r16
	l.addi	r28, r28, 1242
	l.addi	r17, r14, -2
	l.addi	r18, r18, 1035
	l.add	r23, r23, r26
	l.addi	r27, r24, -2
	l.addi	r20, r20, 828           # CFC
.LBB9_64:                               # %if.end368.i
	l.addi	r18, r18, 208
	l.sw	-24(r2), r5
	l.sw	-12(r2), r3
	l.andi	r4, r11, 65535
	l.srli	r11, r11, 16
	l.andi	r3, r7, 65535
	l.sw	3544(r12), r15
	l.sw	3556(r12), r13
	l.andi	r14, r8, 65535
	l.mul	r5, r3, r11
	l.srli	r8, r8, 16
	l.sw	7112(r22), r25
	l.mul	r3, r3, r4
	l.andi	r13, r17, 65535
	l.sw	7124(r22), r23
	l.sw	-28(r2), r3
	l.mul	r15, r13, r8
	l.andi	r24, r31, 65535
	l.addi	r20, r20, 416           # CFC
	l.srli	r3, r3, 16
	l.mul	r13, r13, r14
	l.srli	r31, r31, 16
	l.add	r6, r3, r5
	l.sw	3540(r12), r13
	l.andi	r23, r27, 65535
	l.lwz	r3, -20(r2)
	l.srli	r13, r13, 16
	l.mul	r25, r23, r31
	l.slli	r3, r3, 16
	l.add	r16, r13, r15
	l.mul	r23, r23, r24
	l.or	r7, r7, r3
	l.lwz	r13, 3548(r12)
	l.sw	7108(r22), r23
	l.srli	r3, r7, 16
	l.slli	r13, r13, 16
	l.addi	r28, r28, 1248
	l.srli	r23, r23, 16
	l.mul	r4, r3, r4
	l.or	r17, r17, r13
	l.add	r26, r23, r25
	l.add	r5, r6, r4
	l.srli	r13, r17, 16
	l.lwz	r23, 7116(r22)
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
	l.bf	.LBB9_126
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1040
	l.sfltu	r15, r16
	l.addi	r20, r20, 832           # CFC
	l.bf	.LBB9_127
	l.nop	0
.LBB9_65:                               # %if.end368.i
	l.addi	r18, r18, 209
	l.addi	r20, r20, 418           # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 1254
	l.movhi	r14, 0
	l.addi	r18, r18, 1045
	l.movhi	r24, 0
	l.addi	r20, r20, 836           # CFC
.LBB9_66:                               # %if.end368.i
	l.addi	r18, r18, 210
	l.mul	r3, r3, r11
	l.movhi	r6, 1
	l.add	r11, r3, r6
	l.addi	r20, r20, 420           # CFC
	l.sfnei	r4, 0
	l.mul	r13, r13, r8
	l.movhi	r16, 1
	l.addi	r28, r28, 1260
	l.add	r8, r13, r16
	l.mul	r23, r23, r31
	l.movhi	r26, 1
	l.add	r31, r23, r26
	l.bf	.LBB9_128
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1050
	l.sfnei	r14, 0
	l.addi	r20, r20, 840           # CFC
	l.bf	.LBB9_129
	l.nop	0
.LBB9_67:                               # %if.end368.i
	l.addi	r18, r18, 211
	l.addi	r20, r20, 422           # CFC
	l.ori	r11, r3, 0
	l.addi	r28, r28, 1266
	l.ori	r8, r13, 0
	l.addi	r18, r18, 1055
	l.ori	r31, r23, 0
	l.addi	r20, r20, 844           # CFC
.LBB9_68:                               # %if.end368.i
	l.addi	r18, r18, 212
	l.lwz	r3, -12(r2)
	l.lwz	r4, -24(r2)
	l.sub	r3, r3, r4
	l.srli	r4, r5, 16
	l.add	r6, r11, r4
	l.addi	r20, r20, 424           # CFC
	l.sfgtu	r6, r3
	l.lwz	r13, 3556(r12)
	l.lwz	r14, 3544(r12)
	l.sub	r13, r13, r14
	l.srli	r14, r15, 16
	l.addi	r28, r28, 1272
	l.add	r16, r8, r14
	l.lwz	r23, 7124(r22)
	l.lwz	r24, 7112(r22)
	l.sub	r23, r23, r24
	l.srli	r24, r25, 16
	l.add	r26, r31, r24
	l.bf	.LBB9_130
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1060
	l.sfgtu	r16, r13
	l.addi	r20, r20, 848           # CFC
	l.bf	.LBB9_131
	l.nop	0
.LBB9_69:                               # %lor.lhs.false401.i
	l.addi	r18, r18, 213
	l.lwz	r4, -8(r2)
	l.lwz	r11, -16(r2)
	l.sll	r4, r4, r11
	l.lwz	r11, -28(r2)
	l.andi	r11, r11, 65535
	l.lwz	r14, 3560(r12)
	l.lwz	r8, 3552(r12)
	l.sll	r14, r14, r8
	l.addi	r20, r20, 426           # CFC
	l.slli	r5, r5, 16
	l.lwz	r8, 3540(r12)
	l.lwz	r24, 7128(r22)
	l.or	r5, r5, r11
	l.andi	r8, r8, 65535
	l.lwz	r31, 7120(r22)
	l.movhi	r11, 0
	l.slli	r15, r15, 16
	l.addi	r28, r28, 1278
	l.sll	r24, r24, r31
	l.sfleu	r5, r4
	l.or	r15, r15, r8
	l.movhi	r8, 0
	l.lwz	r31, 7108(r22)
	l.andi	r31, r31, 65535
	l.slli	r25, r25, 16
	l.or	r25, r25, r31
	l.movhi	r31, 0
	l.bf	.LBB9_132
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1065
	l.sfleu	r15, r14
	l.addi	r20, r20, 852           # CFC
	l.bf	.LBB9_133
	l.nop	0
.LBB9_70:                               # %lor.lhs.false401.i
	l.sfne	r6, r3
	l.bf	.LBB9_134
	l.nop	0                       # in delay slot
	l.sfne	r16, r13
	l.bf	.LBB9_135
	l.nop	0
.LBB9_71:                               # %if.then406.i
	l.addi	r18, r18, 214
	l.movhi	r11, 0
	l.addi	r20, r20, 428           # CFC
	l.addi	r7, r7, -1
	l.movhi	r8, 0
	l.addi	r28, r28, 1284
	l.addi	r17, r17, -1
	l.addi	r18, r18, 1070
	l.movhi	r31, 0
	l.addi	r27, r27, -1
	l.addi	r20, r20, 856           # CFC
	l.j	.LBB9_72
	l.nop	0                       # in delay slot
.LBB9_21:                               # %if.else.i
	l.sfnei	r7, 0
	l.bf	.LBB9_136
	l.nop	0                       # in delay slot
	l.sfnei	r17, 0
	l.bf	.LBB9_137
	l.nop	0
.LBB9_22:                               # %if.then98.i
	l.addi	r18, r18, 215
	l.lwz	r6, -12(r2)
	l.sub	r3, r3, r6
	l.ori	r5, r4, 0
	l.addi	r20, r20, 430           # CFC
	l.ori	r4, r3, 0
	l.addi	r3, r0, 1
	l.lwz	r16, 3556(r12)
	l.sub	r13, r13, r16
	l.addi	r28, r28, 1290
	l.ori	r15, r14, 0
	l.ori	r14, r13, 0
	l.addi	r13, r0, 1
	l.lwz	r26, 7124(r22)
	l.addi	r18, r18, 1075
	l.sub	r23, r23, r26
	l.ori	r25, r24, 0
	l.ori	r24, r23, 0
	l.addi	r23, r0, 1
	l.addi	r20, r20, 860           # CFC
	l.j	.LBB9_32
	l.nop	0                       # in delay slot
.LBB9_23:                               # %if.else100.i
	l.addi	r18, r18, 216
	l.sw	-8(r2), r4
	l.srl	r4, r4, r6
	l.sll	r11, r3, r7
	l.or	r11, r11, r4
	l.srl	r3, r3, r6
	l.sw	3560(r12), r14
	l.srl	r14, r14, r16
	l.sll	r8, r13, r17
	l.lwz	r6, -12(r2)
	l.or	r8, r8, r14
	l.sw	7128(r22), r24
	l.sll	r6, r6, r7
	l.srl	r13, r13, r16
	l.srl	r24, r24, r26
	l.srli	r4, r6, 16
	l.lwz	r16, 3556(r12)
	l.sll	r31, r23, r27
	l.divu	r5, r3, r4
	l.sll	r16, r16, r17
	l.addi	r20, r20, 432           # CFC
	l.or	r31, r31, r24
	l.sw	-20(r2), r4
	l.srli	r14, r16, 16
	l.srl	r23, r23, r26
	l.mul	r4, r5, r4
	l.divu	r15, r13, r14
	l.lwz	r26, 7124(r22)
	l.sub	r3, r3, r4
	l.sw	3548(r12), r14
	l.sll	r26, r26, r27
	l.slli	r3, r3, 16
	l.mul	r14, r15, r14
	l.srli	r24, r26, 16
	l.sw	-16(r2), r11
	l.sub	r13, r13, r14
	l.divu	r25, r23, r24
	l.srli	r4, r11, 16
	l.slli	r13, r13, 16
	l.sw	7116(r22), r24
	l.addi	r28, r28, 1296
	l.or	r3, r3, r4
	l.sw	3552(r12), r8
	l.mul	r24, r25, r24
	l.andi	r11, r6, 65535
	l.srli	r14, r8, 16
	l.sub	r23, r23, r24
	l.mul	r4, r5, r11
	l.or	r13, r13, r14
	l.slli	r23, r23, 16
	l.sfgeu	r3, r4
	l.andi	r8, r16, 65535
	l.sw	7120(r22), r31
	l.sw	-12(r2), r5
	l.mul	r14, r15, r8
	l.sw	3556(r12), r15
	l.srli	r24, r31, 16
	l.or	r23, r23, r24
	l.andi	r31, r26, 65535
	l.mul	r24, r25, r31
	l.sw	7124(r22), r25
	l.bf	.LBB9_138
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1080
	l.sfgeu	r13, r14
	l.addi	r20, r20, 864           # CFC
	l.bf	.LBB9_139
	l.nop	0
.LBB9_24:                               # %if.then126.i
	l.addi	r18, r18, 217
	l.sw	-24(r2), r4
	l.addi	r4, r5, -1
	l.sw	-12(r2), r4
	l.lwz	r4, -24(r2)
	l.add	r3, r3, r6
	l.addi	r20, r20, 434           # CFC
	l.sfltu	r3, r6
	l.sw	3544(r12), r14
	l.addi	r14, r15, -1
	l.sw	3556(r12), r14
	l.lwz	r14, 3544(r12)
	l.addi	r28, r28, 1302
	l.add	r13, r13, r16
	l.sw	7112(r22), r24
	l.addi	r24, r25, -1
	l.sw	7124(r22), r24
	l.lwz	r24, 7112(r22)
	l.add	r23, r23, r26
	l.bf	.LBB9_140
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1085
	l.sfltu	r13, r16
	l.addi	r20, r20, 868           # CFC
	l.bf	.LBB9_141
	l.nop	0
.LBB9_25:                               # %if.then126.i
	l.sfgeu	r3, r4
	l.bf	.LBB9_142
	l.nop	0                       # in delay slot
	l.sfgeu	r13, r14
	l.bf	.LBB9_143
	l.nop	0
.LBB9_26:                               # %if.then134.i
	l.addi	r18, r18, 218
	l.add	r3, r3, r6
	l.addi	r5, r5, -2
	l.addi	r20, r20, 436           # CFC
	l.sw	-12(r2), r5
	l.add	r13, r13, r16
	l.addi	r28, r28, 1308
	l.addi	r15, r15, -2
	l.sw	3556(r12), r15
	l.addi	r18, r18, 1090
	l.add	r23, r23, r26
	l.addi	r25, r25, -2
	l.sw	7124(r22), r25
	l.addi	r20, r20, 872           # CFC
.LBB9_27:                               # %if.end139.i
	l.addi	r18, r18, 219
	l.sub	r3, r3, r4
	l.lwz	r4, -20(r2)
	l.divu	r5, r3, r4
	l.mul	r4, r5, r4
	l.sub	r3, r3, r4
	l.sub	r13, r13, r14
	l.lwz	r14, 3548(r12)
	l.divu	r15, r13, r14
	l.slli	r3, r3, 16
	l.mul	r14, r15, r14
	l.sub	r23, r23, r24
	l.addi	r20, r20, 438           # CFC
	l.lwz	r4, -16(r2)
	l.sub	r13, r13, r14
	l.lwz	r24, 7116(r22)
	l.andi	r4, r4, 65535
	l.slli	r13, r13, 16
	l.divu	r25, r23, r24
	l.or	r3, r3, r4
	l.lwz	r14, 3552(r12)
	l.mul	r24, r25, r24
	l.mul	r4, r5, r11
	l.andi	r14, r14, 65535
	l.addi	r28, r28, 1314
	l.sub	r23, r23, r24
	l.sfgeu	r3, r4
	l.or	r13, r13, r14
	l.slli	r23, r23, 16
	l.ori	r11, r5, 0
	l.mul	r14, r15, r8
	l.ori	r8, r15, 0
	l.lwz	r24, 7120(r22)
	l.andi	r24, r24, 65535
	l.or	r23, r23, r24
	l.mul	r24, r25, r31
	l.ori	r31, r25, 0
	l.bf	.LBB9_144
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1095
	l.sfgeu	r13, r14
	l.addi	r20, r20, 876           # CFC
	l.bf	.LBB9_145
	l.nop	0
.LBB9_28:                               # %if.then149.i
	l.addi	r18, r18, 220
	l.addi	r11, r5, -1
	l.add	r3, r3, r6
	l.addi	r20, r20, 440           # CFC
	l.sfltu	r3, r6
	l.addi	r8, r15, -1
	l.addi	r28, r28, 1320
	l.add	r13, r13, r16
	l.addi	r31, r25, -1
	l.add	r23, r23, r26
	l.bf	.LBB9_146
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1100
	l.sfltu	r13, r16
	l.addi	r20, r20, 880           # CFC
	l.bf	.LBB9_147
	l.nop	0
.LBB9_29:                               # %if.then149.i
	l.sfgeu	r3, r4
	l.bf	.LBB9_148
	l.nop	0                       # in delay slot
	l.sfgeu	r13, r14
	l.bf	.LBB9_149
	l.nop	0
.LBB9_30:                               # %if.then157.i
	l.addi	r18, r18, 221
	l.add	r3, r3, r6
	l.addi	r20, r20, 442           # CFC
	l.addi	r11, r5, -2
	l.add	r13, r13, r16
	l.addi	r28, r28, 1326
	l.addi	r8, r15, -2
	l.addi	r18, r18, 1105
	l.add	r23, r23, r26
	l.addi	r31, r25, -2
	l.addi	r20, r20, 884           # CFC
.LBB9_31:                               # %if.end162.i
	l.addi	r18, r18, 222
	l.lwz	r5, -8(r2)
	l.sll	r5, r5, r7
	l.sub	r4, r3, r4
	l.lwz	r3, -12(r2)
	l.addi	r20, r20, 444           # CFC
	l.slli	r3, r3, 16
	l.lwz	r15, 3560(r12)
	l.sll	r15, r15, r17
	l.sub	r14, r13, r14
	l.or	r3, r11, r3
	l.addi	r28, r28, 1332
	l.lwz	r13, 3556(r12)
	l.lwz	r25, 7128(r22)
	l.slli	r13, r13, 16
	l.or	r13, r8, r13
	l.addi	r18, r18, 1110
	l.sll	r25, r25, r27
	l.sub	r24, r23, r24
	l.lwz	r23, 7124(r22)
	l.slli	r23, r23, 16
	l.or	r23, r31, r23
	l.addi	r20, r20, 888           # CFC
.LBB9_32:                               # %do.body169.i
	l.addi	r18, r18, 223
	l.sw	-16(r2), r3
	l.srli	r11, r6, 16
	l.divu	r3, r4, r11
	l.mul	r7, r3, r11
	l.sub	r4, r4, r7
	l.sw	3552(r12), r13
	l.srli	r8, r16, 16
	l.divu	r13, r14, r8
	l.slli	r4, r4, 16
	l.mul	r17, r13, r8
	l.sw	7120(r22), r23
	l.sw	-8(r2), r5
	l.sub	r14, r14, r17
	l.addi	r20, r20, 446           # CFC
	l.srli	r31, r26, 16
	l.srli	r7, r5, 16
	l.slli	r14, r14, 16
	l.divu	r23, r24, r31
	l.or	r7, r4, r7
	l.sw	3560(r12), r15
	l.mul	r27, r23, r31
	l.andi	r4, r6, 65535
	l.srli	r17, r15, 16
	l.sub	r24, r24, r27
	l.sw	-12(r2), r4
	l.or	r17, r14, r17
	l.slli	r24, r24, 16
	l.addi	r28, r28, 1338
	l.mul	r4, r3, r4
	l.andi	r14, r16, 65535
	l.sw	7128(r22), r25
	l.sfgeu	r7, r4
	l.sw	3556(r12), r14
	l.srli	r27, r25, 16
	l.ori	r5, r3, 0
	l.mul	r14, r13, r14
	l.ori	r15, r13, 0
	l.or	r27, r24, r27
	l.andi	r24, r26, 65535
	l.sw	7124(r22), r24
	l.mul	r24, r23, r24
	l.ori	r25, r23, 0
	l.bf	.LBB9_150
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1115
	l.sfgeu	r17, r14
	l.addi	r20, r20, 892           # CFC
	l.bf	.LBB9_151
	l.nop	0
.LBB9_33:                               # %if.then187.i
	l.addi	r18, r18, 224
	l.addi	r5, r3, -1
	l.add	r7, r7, r6
	l.addi	r20, r20, 448           # CFC
	l.sfltu	r7, r6
	l.addi	r15, r13, -1
	l.addi	r28, r28, 1344
	l.add	r17, r17, r16
	l.addi	r25, r23, -1
	l.add	r27, r27, r26
	l.bf	.LBB9_152
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1120
	l.sfltu	r17, r16
	l.addi	r20, r20, 896           # CFC
	l.bf	.LBB9_153
	l.nop	0
.LBB9_34:                               # %if.then187.i
	l.sfgeu	r7, r4
	l.bf	.LBB9_154
	l.nop	0                       # in delay slot
	l.sfgeu	r17, r14
	l.bf	.LBB9_155
	l.nop	0
.LBB9_35:                               # %if.then195.i
	l.addi	r18, r18, 225
	l.add	r7, r7, r6
	l.addi	r20, r20, 450           # CFC
	l.addi	r5, r3, -2
	l.add	r17, r17, r16
	l.addi	r28, r28, 1350
	l.addi	r15, r13, -2
	l.addi	r18, r18, 1125
	l.add	r27, r27, r26
	l.addi	r25, r23, -2
	l.addi	r20, r20, 900           # CFC
.LBB9_36:                               # %if.end200.i
	l.addi	r18, r18, 226
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
	l.addi	r20, r20, 452           # CFC
	l.andi	r4, r4, 65535
	l.slli	r13, r13, 16
	l.divu	r27, r23, r31
	l.or	r4, r3, r4
	l.lwz	r14, 3560(r12)
	l.mul	r24, r27, r31
	l.lwz	r3, -12(r2)
	l.andi	r14, r14, 65535
	l.sub	r23, r23, r24
	l.mul	r3, r7, r3
	l.or	r14, r13, r14
	l.addi	r28, r28, 1356
	l.slli	r23, r23, 16
	l.sfgeu	r4, r3
	l.lwz	r13, 3556(r12)
	l.lwz	r24, 7128(r22)
	l.lwz	r11, -16(r2)
	l.mul	r13, r17, r13
	l.lwz	r8, 3552(r12)
	l.andi	r24, r24, 65535
	l.or	r24, r23, r24
	l.lwz	r23, 7124(r22)
	l.mul	r23, r27, r23
	l.lwz	r31, 7120(r22)
	l.bf	.LBB9_156
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1130
	l.sfgeu	r14, r13
	l.addi	r20, r20, 904           # CFC
	l.bf	.LBB9_157
	l.nop	0
.LBB9_37:                               # %if.then210.i
	l.addi	r18, r18, 227
	l.sw	-8(r2), r5
	l.add	r5, r4, r6
	l.addi	r4, r0, -1
	l.sw	-12(r2), r4
	l.addi	r4, r0, -2
	l.addi	r20, r20, 454           # CFC
	l.sfltu	r5, r3
	l.sw	3560(r12), r15
	l.add	r15, r14, r16
	l.addi	r14, r0, -1
	l.sw	3556(r12), r14
	l.addi	r28, r28, 1362
	l.addi	r14, r0, -2
	l.sw	7128(r22), r25
	l.add	r25, r24, r26
	l.addi	r24, r0, -1
	l.sw	7124(r22), r24
	l.addi	r24, r0, -2
	l.bf	.LBB9_158
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1135
	l.sfltu	r15, r13
	l.addi	r20, r20, 908           # CFC
	l.bf	.LBB9_159
	l.nop	0
.LBB9_38:                               # %if.then210.i
	l.addi	r18, r18, 228
	l.addi	r20, r20, 456           # CFC
	l.lwz	r4, -12(r2)
	l.addi	r28, r28, 1368
	l.lwz	r14, 3556(r12)
	l.addi	r18, r18, 1140
	l.lwz	r24, 7124(r22)
	l.addi	r20, r20, 912           # CFC
.LBB9_39:                               # %if.then210.i
	l.sfgeu	r5, r6
	l.bf	.LBB9_160
	l.nop	0                       # in delay slot
	l.sfgeu	r15, r16
	l.bf	.LBB9_161
	l.nop	0
.LBB9_40:                               # %if.then210.i
	l.addi	r18, r18, 229
	l.addi	r20, r20, 458           # CFC
	l.lwz	r4, -12(r2)
	l.addi	r28, r28, 1374
	l.lwz	r14, 3556(r12)
	l.addi	r18, r18, 1145
	l.lwz	r24, 7124(r22)
	l.addi	r20, r20, 916           # CFC
.LBB9_41:                               # %if.then210.i
	l.addi	r18, r18, 230
	l.add	r7, r7, r4
	l.addi	r20, r20, 460           # CFC
	l.lwz	r5, -8(r2)
	l.add	r17, r17, r14
	l.addi	r28, r28, 1380
	l.lwz	r15, 3560(r12)
	l.addi	r18, r18, 1150
	l.add	r27, r27, r24
	l.lwz	r25, 7128(r22)
	l.addi	r20, r20, 920           # CFC
.LBB9_42:                               # %if.end223.i
	l.addi	r18, r18, 231
	l.slli	r3, r5, 16
	l.addi	r20, r20, 462           # CFC
	l.or	r7, r7, r3
	l.slli	r13, r15, 16
	l.addi	r28, r28, 1386
	l.or	r17, r17, r13
	l.addi	r18, r18, 1155
	l.slli	r23, r25, 16
	l.or	r27, r27, r23
	l.addi	r20, r20, 924           # CFC
.LBB9_72:                               # %__udivmoddi4.exit
	l.addi	r18, r18, 232
	l.ori	r12, r17, 0
	l.ori	r12, r27, 0
	l.addi	r20, r20, 464           # CFC
	l.ori	r12, r7, 0
	l.addi	r1, r2, 0
	l.addi	r28, r28, 1392
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r18, r18, 1160
	l.lwz	r12, 3564(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 928           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB9_73
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB9_73:                               # %__udivmoddi4.exit
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB9_162
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB9_162
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB9_162
	l.nop	0
	l.nop	205
.LBB9_162:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB9_163
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB9_163
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB9_163
	l.nop	0
	l.nop	205
.LBB9_163:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB9_164
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB9_164
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB9_164
	l.nop	0
	l.nop	205
.LBB9_164:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB9_165
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB9_165
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB9_165
	l.nop	0
	l.nop	205
.LBB9_165:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB9_166
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB9_166
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB9_166
	l.nop	0
	l.nop	205
.LBB9_166:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB9_167
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB9_167
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB9_167
	l.nop	0
	l.nop	205
.LBB9_167:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB9_168
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB9_168
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB9_168
	l.nop	0
	l.nop	205
.LBB9_168:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB9_169
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB9_169
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB9_169
	l.nop	0
	l.nop	205
.LBB9_169:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB9_170
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB9_170
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB9_170
	l.nop	0
	l.nop	205
.LBB9_170:
.LBB9_171:
	l.jr	r30
	l.nop	0
.LBB9_74:
	l.addi	r18, r18, 845
	l.sfnei	r15, 0
	l.addi	r20, r20, 676           # CFC
	l.bf	.LBB9_43
	l.nop	0
.LBB9_75:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB9_43
	l.nop	0
	l.j	.LBB9_1
	l.nop	0
.LBB9_76:
	l.addi	r18, r18, 850
	l.sfltu	r16, r15
	l.addi	r20, r20, 680           # CFC
	l.bf	.LBB9_3
	l.nop	0
.LBB9_77:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfltu	r6, r5
	l.bf	.LBB9_3
	l.nop	0
	l.j	.LBB9_2
	l.nop	0
.LBB9_78:
	l.addi	r18, r18, 860
	l.sfltui	r16, 256
	l.addi	r20, r20, 688           # CFC
	l.bf	.LBB9_5
	l.nop	0
.LBB9_79:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfltui	r6, 256
	l.bf	.LBB9_5
	l.nop	0
	l.j	.LBB9_4
	l.nop	0
.LBB9_80:
	l.addi	r18, r18, 870
	l.sfltu	r16, r17
	l.addi	r20, r20, 696           # CFC
	l.bf	.LBB9_7
	l.nop	0
.LBB9_81:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfltu	r6, r7
	l.bf	.LBB9_7
	l.nop	0
	l.j	.LBB9_6
	l.nop	0
.LBB9_82:
	l.addi	r18, r18, 880
	l.sfgeu	r13, r8
	l.addi	r20, r20, 704           # CFC
	l.bf	.LBB9_21
	l.nop	0
.LBB9_83:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgeu	r3, r11
	l.bf	.LBB9_21
	l.nop	0
	l.j	.LBB9_8
	l.nop	0
.LBB9_84:
	l.addi	r18, r18, 885
	l.sfeqi	r17, 0
	l.addi	r20, r20, 708           # CFC
	l.bf	.LBB9_10
	l.nop	0
.LBB9_85:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfeqi	r7, 0
	l.bf	.LBB9_10
	l.nop	0
	l.j	.LBB9_9
	l.nop	0
.LBB9_86:
	l.addi	r18, r18, 895
	l.sfgeu	r17, r13
	l.addi	r20, r20, 716           # CFC
	l.bf	.LBB9_14
	l.nop	0
.LBB9_87:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgeu	r7, r3
	l.bf	.LBB9_14
	l.nop	0
	l.j	.LBB9_11
	l.nop	0
.LBB9_88:
	l.addi	r18, r18, 900
	l.sfltu	r17, r16
	l.addi	r20, r20, 720           # CFC
	l.bf	.LBB9_14
	l.nop	0
.LBB9_89:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfltu	r7, r6
	l.bf	.LBB9_14
	l.nop	0
	l.j	.LBB9_12
	l.nop	0
.LBB9_90:
	l.sfgeu	r17, r13
	l.bf	.LBB9_14
	l.nop	0
.LBB9_91:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgeu	r7, r3
	l.bf	.LBB9_14
	l.nop	0
	l.j	.LBB9_13
	l.nop	0
.LBB9_92:
	l.addi	r18, r18, 910
	l.sfgeu	r13, r8
	l.addi	r20, r20, 728           # CFC
	l.bf	.LBB9_20
	l.nop	0
.LBB9_93:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgeu	r3, r11
	l.bf	.LBB9_20
	l.nop	0
	l.j	.LBB9_15
	l.nop	0
.LBB9_94:
	l.addi	r18, r18, 915
	l.sfltu	r15, r8
	l.addi	r20, r20, 732           # CFC
	l.bf	.LBB9_17
	l.nop	0
.LBB9_95:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfltu	r5, r11
	l.bf	.LBB9_17
	l.nop	0
	l.j	.LBB9_16
	l.nop	0
.LBB9_96:
	l.sfgeu	r15, r16
	l.bf	.LBB9_19
	l.nop	0
.LBB9_97:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgeu	r5, r6
	l.bf	.LBB9_19
	l.nop	0
	l.j	.LBB9_18
	l.nop	0
.LBB9_98:
	l.addi	r18, r18, 940
	l.sfltu	r13, r15
	l.addi	r20, r20, 752           # CFC
	l.bf	.LBB9_72
	l.nop	0
.LBB9_99:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfltu	r3, r5
	l.bf	.LBB9_72
	l.nop	0
	l.j	.LBB9_44
	l.nop	0
.LBB9_100:
	l.addi	r18, r18, 945
	l.sfltu	r15, r17
	l.addi	r20, r20, 756           # CFC
	l.bf	.LBB9_46
	l.nop	0
.LBB9_101:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfltu	r5, r7
	l.bf	.LBB9_46
	l.nop	0
	l.j	.LBB9_45
	l.nop	0
.LBB9_102:
	l.addi	r18, r18, 955
	l.sfltui	r15, 256
	l.addi	r20, r20, 764           # CFC
	l.bf	.LBB9_48
	l.nop	0
.LBB9_103:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfltui	r5, 256
	l.bf	.LBB9_48
	l.nop	0
	l.j	.LBB9_47
	l.nop	0
.LBB9_104:
	l.addi	r18, r18, 965
	l.sfltu	r15, r8
	l.addi	r20, r20, 772           # CFC
	l.bf	.LBB9_50
	l.nop	0
.LBB9_105:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfltu	r5, r11
	l.bf	.LBB9_50
	l.nop	0
	l.j	.LBB9_49
	l.nop	0
.LBB9_106:
	l.addi	r18, r18, 975
	l.sfnei	r17, 0
	l.addi	r20, r20, 780           # CFC
	l.bf	.LBB9_56
	l.nop	0
.LBB9_107:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB9_56
	l.nop	0
	l.j	.LBB9_51
	l.nop	0
.LBB9_108:
	l.addi	r18, r18, 980
	l.sfleu	r13, r15
	l.addi	r20, r20, 784           # CFC
	l.bf	.LBB9_110
	l.nop	0
.LBB9_109:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfleu	r3, r5
	l.bf	.LBB9_110
	l.nop	0
	l.j	.LBB9_111
	l.nop	0
.LBB9_110:
	l.addi	r18, r18, 233
	l.addi	r20, r20, 466           # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 1398
	l.ori	r13, r14, 0
	l.addi	r18, r18, 1165
	l.ori	r23, r24, 0
	l.addi	r20, r20, 932           # CFC
	l.j	.LBB9_53
	l.nop	0
.LBB9_112:
	l.addi	r18, r18, 995
	l.sfltu	r15, r16
	l.addi	r20, r20, 796           # CFC
	l.bf	.LBB9_55
	l.nop	0
.LBB9_113:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfltu	r5, r6
	l.bf	.LBB9_55
	l.nop	0
	l.j	.LBB9_54
	l.nop	0
.LBB9_114:
	l.addi	r18, r18, 1010
	l.sfgeu	r13, r14
	l.addi	r20, r20, 808           # CFC
	l.bf	.LBB9_60
	l.nop	0
.LBB9_115:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB9_60
	l.nop	0
	l.j	.LBB9_57
	l.nop	0
.LBB9_116:
	l.addi	r18, r18, 1015
	l.sfltu	r13, r16
	l.addi	r20, r20, 812           # CFC
	l.bf	.LBB9_60
	l.nop	0
.LBB9_117:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfltu	r3, r6
	l.bf	.LBB9_60
	l.nop	0
	l.j	.LBB9_58
	l.nop	0
.LBB9_118:
	l.sfgeu	r13, r14
	l.bf	.LBB9_60
	l.nop	0
.LBB9_119:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB9_60
	l.nop	0
	l.j	.LBB9_59
	l.nop	0
.LBB9_120:
	l.addi	r18, r18, 1025
	l.sfgeu	r13, r15
	l.addi	r20, r20, 820           # CFC
	l.bf	.LBB9_64
	l.nop	0
.LBB9_121:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgeu	r3, r5
	l.bf	.LBB9_64
	l.nop	0
	l.j	.LBB9_61
	l.nop	0
.LBB9_122:
	l.addi	r18, r18, 1030
	l.sfltu	r13, r16
	l.addi	r20, r20, 824           # CFC
	l.bf	.LBB9_64
	l.nop	0
.LBB9_123:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfltu	r3, r6
	l.bf	.LBB9_64
	l.nop	0
	l.j	.LBB9_62
	l.nop	0
.LBB9_124:
	l.sfgeu	r13, r15
	l.bf	.LBB9_64
	l.nop	0
.LBB9_125:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgeu	r3, r5
	l.bf	.LBB9_64
	l.nop	0
	l.j	.LBB9_63
	l.nop	0
.LBB9_126:
	l.addi	r18, r18, 1040
	l.sfltu	r15, r16
	l.addi	r20, r20, 832           # CFC
	l.bf	.LBB9_66
	l.nop	0
.LBB9_127:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfltu	r5, r6
	l.bf	.LBB9_66
	l.nop	0
	l.j	.LBB9_65
	l.nop	0
.LBB9_128:
	l.addi	r18, r18, 1050
	l.sfnei	r14, 0
	l.addi	r20, r20, 840           # CFC
	l.bf	.LBB9_68
	l.nop	0
.LBB9_129:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB9_68
	l.nop	0
	l.j	.LBB9_67
	l.nop	0
.LBB9_130:
	l.addi	r18, r18, 1060
	l.sfgtu	r16, r13
	l.addi	r20, r20, 848           # CFC
	l.bf	.LBB9_71
	l.nop	0
.LBB9_131:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgtu	r6, r3
	l.bf	.LBB9_71
	l.nop	0
	l.j	.LBB9_69
	l.nop	0
.LBB9_132:
	l.addi	r18, r18, 1065
	l.sfleu	r15, r14
	l.addi	r20, r20, 852           # CFC
	l.bf	.LBB9_72
	l.nop	0
.LBB9_133:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfleu	r5, r4
	l.bf	.LBB9_72
	l.nop	0
	l.j	.LBB9_70
	l.nop	0
.LBB9_134:
	l.sfne	r16, r13
	l.bf	.LBB9_72
	l.nop	0
.LBB9_135:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfne	r6, r3
	l.bf	.LBB9_72
	l.nop	0
	l.j	.LBB9_71
	l.nop	0
.LBB9_136:
	l.sfnei	r17, 0
	l.bf	.LBB9_23
	l.nop	0
.LBB9_137:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB9_23
	l.nop	0
	l.j	.LBB9_22
	l.nop	0
.LBB9_138:
	l.addi	r18, r18, 1080
	l.sfgeu	r13, r14
	l.addi	r20, r20, 864           # CFC
	l.bf	.LBB9_27
	l.nop	0
.LBB9_139:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB9_27
	l.nop	0
	l.j	.LBB9_24
	l.nop	0
.LBB9_140:
	l.addi	r18, r18, 1085
	l.sfltu	r13, r16
	l.addi	r20, r20, 868           # CFC
	l.bf	.LBB9_27
	l.nop	0
.LBB9_141:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfltu	r3, r6
	l.bf	.LBB9_27
	l.nop	0
	l.j	.LBB9_25
	l.nop	0
.LBB9_142:
	l.sfgeu	r13, r14
	l.bf	.LBB9_27
	l.nop	0
.LBB9_143:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB9_27
	l.nop	0
	l.j	.LBB9_26
	l.nop	0
.LBB9_144:
	l.addi	r18, r18, 1095
	l.sfgeu	r13, r14
	l.addi	r20, r20, 876           # CFC
	l.bf	.LBB9_31
	l.nop	0
.LBB9_145:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB9_31
	l.nop	0
	l.j	.LBB9_28
	l.nop	0
.LBB9_146:
	l.addi	r18, r18, 1100
	l.sfltu	r13, r16
	l.addi	r20, r20, 880           # CFC
	l.bf	.LBB9_31
	l.nop	0
.LBB9_147:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfltu	r3, r6
	l.bf	.LBB9_31
	l.nop	0
	l.j	.LBB9_29
	l.nop	0
.LBB9_148:
	l.sfgeu	r13, r14
	l.bf	.LBB9_31
	l.nop	0
.LBB9_149:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB9_31
	l.nop	0
	l.j	.LBB9_30
	l.nop	0
.LBB9_150:
	l.addi	r18, r18, 1115
	l.sfgeu	r17, r14
	l.addi	r20, r20, 892           # CFC
	l.bf	.LBB9_36
	l.nop	0
.LBB9_151:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgeu	r7, r4
	l.bf	.LBB9_36
	l.nop	0
	l.j	.LBB9_33
	l.nop	0
.LBB9_152:
	l.addi	r18, r18, 1120
	l.sfltu	r17, r16
	l.addi	r20, r20, 896           # CFC
	l.bf	.LBB9_36
	l.nop	0
.LBB9_153:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfltu	r7, r6
	l.bf	.LBB9_36
	l.nop	0
	l.j	.LBB9_34
	l.nop	0
.LBB9_154:
	l.sfgeu	r17, r14
	l.bf	.LBB9_36
	l.nop	0
.LBB9_155:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgeu	r7, r4
	l.bf	.LBB9_36
	l.nop	0
	l.j	.LBB9_35
	l.nop	0
.LBB9_156:
	l.addi	r18, r18, 1130
	l.sfgeu	r14, r13
	l.addi	r20, r20, 904           # CFC
	l.bf	.LBB9_42
	l.nop	0
.LBB9_157:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgeu	r4, r3
	l.bf	.LBB9_42
	l.nop	0
	l.j	.LBB9_37
	l.nop	0
.LBB9_158:
	l.addi	r18, r18, 1135
	l.sfltu	r15, r13
	l.addi	r20, r20, 908           # CFC
	l.bf	.LBB9_39
	l.nop	0
.LBB9_159:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfltu	r5, r3
	l.bf	.LBB9_39
	l.nop	0
	l.j	.LBB9_38
	l.nop	0
.LBB9_160:
	l.sfgeu	r15, r16
	l.bf	.LBB9_41
	l.nop	0
.LBB9_161:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB9_73
	l.nop	0
	l.sfgeu	r5, r6
	l.bf	.LBB9_41
	l.nop	0
	l.j	.LBB9_40
	l.nop	0
.Lfunc_end9:
	.size	__udivdi3, .Lfunc_end9-__udivdi3

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
	l.addi	r18, r18, 234
	l.addi	r20, r20, 468           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.sfltui	r5, 8
	l.ori	r7, r3, 0
	l.sw	3564(r10), r12
	l.addi	r28, r28, 1404
	l.addi	r12, r10, 0
	l.addi	r10, r10, -16
	l.ori	r17, r13, 0
	l.sw	7132(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -16           # CFC
	l.ori	r27, r23, 0
	l.bf	.LBB10_17
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1170
	l.sfltui	r15, 8
	l.addi	r20, r20, 936           # CFC
	l.bf	.LBB10_18
	l.nop	0
.LBB10_1:                               # %if.then
	l.addi	r18, r18, 235
	l.andi	r6, r4, 255
	l.ori	r11, r4, 0
	l.slli	r4, r6, 8
	l.or	r6, r4, r6
	l.slli	r4, r6, 16
	l.andi	r16, r14, 255
	l.ori	r8, r14, 0
	l.slli	r14, r16, 8
	l.addi	r20, r20, 470           # CFC
	l.sw	-16(r2), r4
	l.or	r16, r14, r16
	l.andi	r26, r24, 255
	l.andi	r4, r3, 3
	l.slli	r14, r16, 16
	l.ori	r31, r24, 0
	l.sfeqi	r4, 0
	l.sw	3552(r12), r14
	l.addi	r28, r28, 1410
	l.slli	r24, r26, 8
	l.ori	r7, r3, 0
	l.andi	r14, r13, 3
	l.ori	r17, r13, 0
	l.or	r26, r24, r26
	l.slli	r24, r26, 16
	l.sw	7120(r22), r24
	l.andi	r24, r23, 3
	l.ori	r27, r23, 0
	l.bf	.LBB10_19
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1175
	l.sfeqi	r14, 0
	l.addi	r20, r20, 940           # CFC
	l.bf	.LBB10_20
	l.nop	0
.LBB10_2:                               # %while.body.preheader
	l.addi	r18, r18, 236
	l.addi	r20, r20, 472           # CFC
	l.ori	r7, r3, 0
	l.addi	r28, r28, 1416
	l.ori	r17, r13, 0
	l.addi	r18, r18, 1180
	l.ori	r27, r23, 0
	l.addi	r20, r20, 944           # CFC
.LBB10_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 237
	l.sb	0(r7), r11
	l.addi	r5, r5, -1
	l.addi	r7, r7, 1
	l.andi	r4, r7, 3
	l.addi	r20, r20, 474           # CFC
	l.sfnei	r4, 0
	l.sb	3568(r17), r8
	l.addi	r15, r15, -1
	l.addi	r17, r17, 1
	l.addi	r28, r28, 1422
	l.andi	r14, r17, 3
	l.sb	7136(r27), r31
	l.addi	r25, r25, -1
	l.addi	r27, r27, 1
	l.andi	r24, r27, 3
	l.bf	.LBB10_21
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1185
	l.sfnei	r14, 0
	l.addi	r20, r20, 948           # CFC
	l.bf	.LBB10_22
	l.nop	0
.LBB10_4:                               # %while.end
	l.addi	r18, r18, 238
	l.sw	-12(r2), r11
	l.lwz	r4, -16(r2)
	l.or	r4, r4, r6
	l.srli	r11, r5, 5
	l.sfeqi	r11, 0
	l.addi	r20, r20, 476           # CFC
	l.sw	-8(r2), r3
	l.sw	3556(r12), r8
	l.lwz	r14, 3552(r12)
	l.or	r14, r14, r16
	l.srli	r8, r15, 5
	l.addi	r28, r28, 1428
	l.sw	3560(r12), r13
	l.sw	7124(r22), r31
	l.lwz	r24, 7120(r22)
	l.or	r24, r24, r26
	l.srli	r31, r25, 5
	l.sw	7128(r22), r23
	l.bf	.LBB10_23
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1190
	l.sfeqi	r8, 0
	l.addi	r20, r20, 952           # CFC
	l.bf	.LBB10_24
	l.nop	0
.LBB10_5:                               # %while.body10.preheader
	l.addi	r18, r18, 239
	l.movhi	r6, 0
	l.ori	r3, r11, 0
	l.sub	r11, r6, r3
	l.slli	r6, r3, 5
	l.addi	r20, r20, 478           # CFC
	l.sw	-16(r2), r6
	l.movhi	r16, 0
	l.ori	r13, r8, 0
	l.sub	r8, r16, r13
	l.ori	r6, r7, 0
	l.addi	r28, r28, 1434
	l.slli	r16, r13, 5
	l.movhi	r26, 0
	l.sw	3552(r12), r16
	l.ori	r16, r17, 0
	l.addi	r18, r18, 1195
	l.ori	r23, r31, 0
	l.sub	r31, r26, r23
	l.slli	r26, r23, 5
	l.sw	7120(r22), r26
	l.ori	r26, r27, 0
	l.addi	r20, r20, 956           # CFC
.LBB10_6:                               # %while.body10
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 240
	l.sw	0(r6), r4
	l.sw	4(r6), r4
	l.sw	8(r6), r4
	l.sw	12(r6), r4
	l.sw	16(r6), r4
	l.sw	3568(r16), r14
	l.sw	3572(r16), r14
	l.sw	3576(r16), r14
	l.sw	20(r6), r4
	l.sw	3580(r16), r14
	l.addi	r20, r20, 480           # CFC
	l.sw	7136(r26), r24
	l.sw	24(r6), r4
	l.sw	3584(r16), r14
	l.sw	7140(r26), r24
	l.sw	28(r6), r4
	l.sw	3588(r16), r14
	l.sw	7144(r26), r24
	l.addi	r6, r6, 32
	l.sw	3592(r16), r14
	l.sw	7148(r26), r24
	l.addi	r28, r28, 1440
	l.addi	r11, r11, 1
	l.sw	3596(r16), r14
	l.sw	7152(r26), r24
	l.sfnei	r11, 0
	l.addi	r16, r16, 32
	l.addi	r8, r8, 1
	l.sw	7156(r26), r24
	l.sw	7160(r26), r24
	l.sw	7164(r26), r24
	l.addi	r26, r26, 32
	l.addi	r31, r31, 1
	l.bf	.LBB10_25
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1200
	l.sfnei	r8, 0
	l.addi	r20, r20, 960           # CFC
	l.bf	.LBB10_26
	l.nop	0
.LBB10_7:                               # %while.end21.loopexit
	l.addi	r18, r18, 241
	l.lwz	r6, -16(r2)
	l.add	r7, r7, r6
	l.addi	r20, r20, 482           # CFC
	l.lwz	r3, -8(r2)
	l.lwz	r16, 3552(r12)
	l.addi	r28, r28, 1446
	l.add	r17, r17, r16
	l.lwz	r13, 3560(r12)
	l.addi	r18, r18, 1205
	l.lwz	r26, 7120(r22)
	l.add	r27, r27, r26
	l.lwz	r23, 7128(r22)
	l.addi	r20, r20, 964           # CFC
.LBB10_8:                               # %while.end21
	l.addi	r18, r18, 242
	l.srli	r6, r5, 2
	l.andi	r11, r6, 7
	l.addi	r20, r20, 484           # CFC
	l.sfeqi	r11, 0
	l.srli	r16, r15, 2
	l.addi	r28, r28, 1452
	l.andi	r8, r16, 7
	l.srli	r26, r25, 2
	l.andi	r31, r26, 7
	l.bf	.LBB10_27
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1210
	l.sfeqi	r8, 0
	l.addi	r20, r20, 968           # CFC
	l.bf	.LBB10_28
	l.nop	0
.LBB10_9:                               # %while.body27.preheader
	l.addi	r18, r18, 243
	l.movhi	r6, 0
	l.ori	r3, r11, 0
	l.sub	r11, r6, r3
	l.addi	r20, r20, 486           # CFC
	l.slli	r6, r3, 2
	l.ori	r3, r7, 0
	l.movhi	r16, 0
	l.ori	r13, r8, 0
	l.addi	r28, r28, 1458
	l.sub	r8, r16, r13
	l.slli	r16, r13, 2
	l.ori	r13, r17, 0
	l.movhi	r26, 0
	l.addi	r18, r18, 1215
	l.ori	r23, r31, 0
	l.sub	r31, r26, r23
	l.slli	r26, r23, 2
	l.ori	r23, r27, 0
	l.addi	r20, r20, 972           # CFC
.LBB10_10:                              # %while.body27
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 244
	l.sw	0(r3), r4
	l.addi	r3, r3, 4
	l.addi	r11, r11, 1
	l.addi	r20, r20, 488           # CFC
	l.sfnei	r11, 0
	l.sw	3568(r13), r14
	l.addi	r13, r13, 4
	l.addi	r28, r28, 1464
	l.addi	r8, r8, 1
	l.sw	7136(r23), r24
	l.addi	r23, r23, 4
	l.addi	r31, r31, 1
	l.bf	.LBB10_29
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1220
	l.sfnei	r8, 0
	l.addi	r20, r20, 976           # CFC
	l.bf	.LBB10_30
	l.nop	0
.LBB10_11:                              # %while.end31.loopexit
	l.addi	r18, r18, 245
	l.add	r7, r7, r6
	l.addi	r20, r20, 490           # CFC
	l.lwz	r3, -8(r2)
	l.add	r17, r17, r16
	l.addi	r28, r28, 1470
	l.lwz	r13, 3560(r12)
	l.addi	r18, r18, 1225
	l.add	r27, r27, r26
	l.lwz	r23, 7128(r22)
	l.addi	r20, r20, 980           # CFC
.LBB10_12:                              # %while.end31
	l.addi	r18, r18, 246
	l.andi	r5, r5, 3
	l.addi	r20, r20, 492           # CFC
	l.lwz	r4, -12(r2)
	l.andi	r15, r15, 3
	l.addi	r28, r28, 1476
	l.lwz	r14, 3556(r12)
	l.addi	r18, r18, 1230
	l.andi	r25, r25, 3
	l.lwz	r24, 7124(r22)
	l.addi	r20, r20, 984           # CFC
.LBB10_13:                              # %while.cond33.preheader
	l.sfeqi	r5, 0
	l.bf	.LBB10_31
	l.nop	0                       # in delay slot
	l.sfeqi	r15, 0
	l.bf	.LBB10_32
	l.nop	0
.LBB10_14:                              # %while.body36
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 247
	l.sb	0(r7), r4
	l.addi	r7, r7, 1
	l.addi	r5, r5, -1
	l.addi	r20, r20, 494           # CFC
	l.sfnei	r5, 0
	l.sb	3568(r17), r14
	l.addi	r17, r17, 1
	l.addi	r28, r28, 1482
	l.addi	r15, r15, -1
	l.sb	7136(r27), r24
	l.addi	r27, r27, 1
	l.addi	r25, r25, -1
	l.bf	.LBB10_33
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1235
	l.sfnei	r15, 0
	l.addi	r20, r20, 988           # CFC
	l.bf	.LBB10_34
	l.nop	0
.LBB10_15:                              # %while.end41
	l.addi	r18, r18, 248
	l.ori	r11, r3, 0
	l.addi	r1, r2, 0
	l.addi	r20, r20, 496           # CFC
	l.lwz	r2, -4(r1)
	l.ori	r8, r13, 0
	l.addi	r28, r28, 1488
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.addi	r18, r18, 1240
	l.ori	r31, r23, 0
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 992           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB10_16
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB10_16:                              # %while.end41
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB10_35
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB10_35
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB10_35
	l.nop	0
	l.nop	205
.LBB10_35:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB10_36
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB10_36
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB10_36
	l.nop	0
	l.nop	205
.LBB10_36:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB10_37
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB10_37
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB10_37
	l.nop	0
	l.nop	205
.LBB10_37:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB10_38
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB10_38
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB10_38
	l.nop	0
	l.nop	205
.LBB10_38:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB10_39
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB10_39
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB10_39
	l.nop	0
	l.nop	205
.LBB10_39:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB10_40
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB10_40
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB10_40
	l.nop	0
	l.nop	205
.LBB10_40:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB10_41
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB10_41
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB10_41
	l.nop	0
	l.nop	205
.LBB10_41:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB10_42
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB10_42
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB10_42
	l.nop	0
	l.nop	205
.LBB10_42:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB10_43
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB10_43
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB10_43
	l.nop	0
	l.nop	205
.LBB10_43:
.LBB10_44:
	l.jr	r30
	l.nop	0
.LBB10_17:
	l.addi	r18, r18, 1170
	l.sfltui	r15, 8
	l.addi	r20, r20, 936           # CFC
	l.bf	.LBB10_13
	l.nop	0
.LBB10_18:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_16
	l.nop	0
	l.sfltui	r5, 8
	l.bf	.LBB10_13
	l.nop	0
	l.j	.LBB10_1
	l.nop	0
.LBB10_19:
	l.addi	r18, r18, 1175
	l.sfeqi	r14, 0
	l.addi	r20, r20, 940           # CFC
	l.bf	.LBB10_4
	l.nop	0
.LBB10_20:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_16
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB10_4
	l.nop	0
	l.j	.LBB10_2
	l.nop	0
.LBB10_21:
	l.addi	r18, r18, 1185
	l.sfnei	r14, 0
	l.addi	r20, r20, 948           # CFC
	l.bf	.LBB10_3
	l.nop	0
.LBB10_22:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_16
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB10_3
	l.nop	0
	l.j	.LBB10_4
	l.nop	0
.LBB10_23:
	l.addi	r18, r18, 1190
	l.sfeqi	r8, 0
	l.addi	r20, r20, 952           # CFC
	l.bf	.LBB10_8
	l.nop	0
.LBB10_24:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_16
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB10_8
	l.nop	0
	l.j	.LBB10_5
	l.nop	0
.LBB10_25:
	l.addi	r18, r18, 1200
	l.sfnei	r8, 0
	l.addi	r20, r20, 960           # CFC
	l.bf	.LBB10_6
	l.nop	0
.LBB10_26:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_16
	l.nop	0
	l.sfnei	r11, 0
	l.bf	.LBB10_6
	l.nop	0
	l.j	.LBB10_7
	l.nop	0
.LBB10_27:
	l.addi	r18, r18, 1210
	l.sfeqi	r8, 0
	l.addi	r20, r20, 968           # CFC
	l.bf	.LBB10_12
	l.nop	0
.LBB10_28:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_16
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB10_12
	l.nop	0
	l.j	.LBB10_9
	l.nop	0
.LBB10_29:
	l.addi	r18, r18, 1220
	l.sfnei	r8, 0
	l.addi	r20, r20, 976           # CFC
	l.bf	.LBB10_10
	l.nop	0
.LBB10_30:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_16
	l.nop	0
	l.sfnei	r11, 0
	l.bf	.LBB10_10
	l.nop	0
	l.j	.LBB10_11
	l.nop	0
.LBB10_31:
	l.sfeqi	r15, 0
	l.bf	.LBB10_15
	l.nop	0
.LBB10_32:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_16
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB10_15
	l.nop	0
	l.j	.LBB10_14
	l.nop	0
.LBB10_33:
	l.addi	r18, r18, 1235
	l.sfnei	r15, 0
	l.addi	r20, r20, 988           # CFC
	l.bf	.LBB10_14
	l.nop	0
.LBB10_34:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_16
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB10_14
	l.nop	0
	l.j	.LBB10_15
	l.nop	0
.Lfunc_end10:
	.size	memset, .Lfunc_end10-memset

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
	l.addi	r18, r18, 249
	l.addi	r20, r20, 498           # CFC
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -20
	l.movhi	r4, 0
	l.sw	3564(r10), r19
	l.addi	r28, r28, 1494
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.movhi	r3, 22609
	l.addi	r10, r10, -20
	l.sw	7132(r21), r29
	l.ori	r3, r3, 62509
	l.movhi	r14, 0
	l.addi	r18, r18, 1245
	l.sw	7128(r21), r22
	l.movhi	r13, 22609
	l.ori	r13, r13, 62509
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -20           # CFC
	l.movhi	r24, 0
	l.movhi	r23, 22609
	l.ori	r23, r23, 62509
	l.addi	r20, r20, 996           # CFC
.LBB11_1:                               # %for.body3
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 250
	l.sw	-12(r2), r3
	l.sw	-16(r2), r4
	l.lwz	r3, -12(r2)
	l.sw	3556(r12), r13
	l.sw	3552(r12), r14
	l.lwz	r13, 3556(r12)
	l.sw	7124(r22), r23
	l.sw	7120(r22), r24
	l.lwz	r23, 7124(r22)
	l.jal	bit_count
	l.nop	0                       # in delay slot
	l.lwz	r4, -16(r2)
	l.addi	r20, r20, 500           # CFC
	l.add	r4, r11, r4
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 13
	l.sw	-12(r2), r3
	l.lwz	r14, 3552(r12)
	l.add	r14, r8, r14
	l.lwz	r13, 3556(r12)
	l.movhi	r3, 22609
	l.addi	r13, r13, 13
	l.lwz	r24, 7120(r22)
	l.ori	r3, r3, 63809
	l.sw	3556(r12), r13
	l.addi	r28, r28, 1500
	l.add	r24, r31, r24
	l.lwz	r5, -12(r2)
	l.movhi	r13, 22609
	l.lwz	r23, 7124(r22)
	l.sfne	r5, r3
	l.ori	r13, r13, 63809
	l.lwz	r15, 3556(r12)
	l.addi	r23, r23, 13
	l.sw	7124(r22), r23
	l.movhi	r23, 22609
	l.ori	r23, r23, 63809
	l.lwz	r25, 7124(r22)
	l.bf	.LBB11_19
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1250
	l.sfne	r15, r13
	l.addi	r20, r20, 1000          # CFC
	l.bf	.LBB11_20
	l.nop	0
.LBB11_22:
	l.addi	r18, r18, 251
	l.addi	r20, r20, 502           # CFC
	l.lwz	r3, -12(r2)
	l.addi	r28, r28, 1506
	l.lwz	r13, 3556(r12)
	l.addi	r18, r18, 1255
	l.lwz	r23, 7124(r22)
	l.addi	r20, r20, 1004          # CFC
.LBB11_2:                               # %for.end
	l.addi	r18, r18, 252
	l.sw	0(r1), r4
	l.movhi	r3, hi(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.sw	3568(r10), r14
	l.addi	r20, r20, 504           # CFC
	l.movhi	r13, hi(.L.str.7)
	l.ori	r13, r13, lo(.L.str.7)
	l.sw	7136(r21), r24
	l.movhi	r23, hi(.L.str.7)
	l.ori	r23, r23, lo(.L.str.7)
	l.addi	r28, r28, 1512
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.movhi	r4, 0
	l.movhi	r3, 16561
	l.ori	r3, r3, 36047
	l.movhi	r14, 0
	l.addi	r18, r18, 1260
	l.movhi	r13, 16561
	l.ori	r13, r13, 36047
	l.movhi	r24, 0
	l.movhi	r23, 16561
	l.ori	r23, r23, 36047
	l.addi	r20, r20, 1008          # CFC
.LBB11_3:                               # %for.body3.1
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 253
	l.sw	-12(r2), r3
	l.sw	-16(r2), r4
	l.lwz	r3, -12(r2)
	l.sw	3556(r12), r13
	l.sw	3552(r12), r14
	l.lwz	r13, 3556(r12)
	l.sw	7124(r22), r23
	l.sw	7120(r22), r24
	l.lwz	r23, 7124(r22)
	l.jal	bitcount
	l.nop	0                       # in delay slot
	l.lwz	r4, -16(r2)
	l.addi	r20, r20, 506           # CFC
	l.add	r4, r11, r4
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 13
	l.sw	-12(r2), r3
	l.lwz	r14, 3552(r12)
	l.add	r14, r8, r14
	l.lwz	r13, 3556(r12)
	l.movhi	r3, 16561
	l.addi	r13, r13, 13
	l.lwz	r24, 7120(r22)
	l.ori	r3, r3, 37347
	l.sw	3556(r12), r13
	l.addi	r28, r28, 1518
	l.add	r24, r31, r24
	l.lwz	r5, -12(r2)
	l.movhi	r13, 16561
	l.lwz	r23, 7124(r22)
	l.sfne	r5, r3
	l.ori	r13, r13, 37347
	l.lwz	r15, 3556(r12)
	l.addi	r23, r23, 13
	l.sw	7124(r22), r23
	l.movhi	r23, 16561
	l.ori	r23, r23, 37347
	l.lwz	r25, 7124(r22)
	l.bf	.LBB11_23
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1265
	l.sfne	r15, r13
	l.addi	r20, r20, 1012          # CFC
	l.bf	.LBB11_24
	l.nop	0
.LBB11_26:
	l.addi	r18, r18, 254
	l.addi	r20, r20, 508           # CFC
	l.lwz	r3, -12(r2)
	l.addi	r28, r28, 1524
	l.lwz	r13, 3556(r12)
	l.addi	r18, r18, 1270
	l.lwz	r23, 7124(r22)
	l.addi	r20, r20, 1016          # CFC
.LBB11_4:                               # %for.end.1
	l.addi	r18, r18, 255
	l.sw	0(r1), r4
	l.movhi	r3, hi(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.sw	3568(r10), r14
	l.addi	r20, r20, 510           # CFC
	l.movhi	r13, hi(.L.str.7)
	l.ori	r13, r13, lo(.L.str.7)
	l.sw	7136(r21), r24
	l.movhi	r23, hi(.L.str.7)
	l.ori	r23, r23, lo(.L.str.7)
	l.addi	r28, r28, 1530
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.movhi	r4, 0
	l.movhi	r3, 19381
	l.ori	r3, r3, 63046
	l.movhi	r14, 0
	l.addi	r18, r18, 1275
	l.movhi	r13, 19381
	l.ori	r13, r13, 63046
	l.movhi	r24, 0
	l.movhi	r23, 19381
	l.ori	r23, r23, 63046
	l.addi	r20, r20, 1020          # CFC
.LBB11_5:                               # %for.body3.2
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 256
	l.sw	-12(r2), r3
	l.sw	-16(r2), r4
	l.lwz	r3, -12(r2)
	l.sw	3556(r12), r13
	l.sw	3552(r12), r14
	l.lwz	r13, 3556(r12)
	l.sw	7124(r22), r23
	l.sw	7120(r22), r24
	l.lwz	r23, 7124(r22)
	l.jal	ntbl_bitcnt
	l.nop	0                       # in delay slot
	l.lwz	r4, -16(r2)
	l.addi	r20, r20, 512           # CFC
	l.add	r4, r11, r4
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 13
	l.sw	-12(r2), r3
	l.lwz	r14, 3552(r12)
	l.add	r14, r8, r14
	l.lwz	r13, 3556(r12)
	l.movhi	r3, 19381
	l.addi	r13, r13, 13
	l.lwz	r24, 7120(r22)
	l.ori	r3, r3, 64346
	l.sw	3556(r12), r13
	l.addi	r28, r28, 1536
	l.add	r24, r31, r24
	l.lwz	r5, -12(r2)
	l.movhi	r13, 19381
	l.lwz	r23, 7124(r22)
	l.sfne	r5, r3
	l.ori	r13, r13, 64346
	l.lwz	r15, 3556(r12)
	l.addi	r23, r23, 13
	l.sw	7124(r22), r23
	l.movhi	r23, 19381
	l.ori	r23, r23, 64346
	l.lwz	r25, 7124(r22)
	l.bf	.LBB11_27
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1280
	l.sfne	r15, r13
	l.addi	r20, r20, 1024          # CFC
	l.bf	.LBB11_28
	l.nop	0
.LBB11_30:
	l.addi	r18, r18, 257
	l.addi	r20, r20, 514           # CFC
	l.lwz	r3, -12(r2)
	l.addi	r28, r28, 1542
	l.lwz	r13, 3556(r12)
	l.addi	r18, r18, 1285
	l.lwz	r23, 7124(r22)
	l.addi	r20, r20, 1028          # CFC
.LBB11_6:                               # %for.end.2
	l.addi	r18, r18, 258
	l.sw	0(r1), r4
	l.movhi	r3, hi(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.sw	3568(r10), r14
	l.addi	r20, r20, 516           # CFC
	l.movhi	r13, hi(.L.str.7)
	l.ori	r13, r13, lo(.L.str.7)
	l.sw	7136(r21), r24
	l.movhi	r23, hi(.L.str.7)
	l.ori	r23, r23, lo(.L.str.7)
	l.addi	r28, r28, 1548
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.movhi	r4, 0
	l.movhi	r3, 18179
	l.ori	r3, r3, 12585
	l.movhi	r14, 0
	l.addi	r18, r18, 1290
	l.movhi	r13, 18179
	l.ori	r13, r13, 12585
	l.movhi	r24, 0
	l.movhi	r23, 18179
	l.ori	r23, r23, 12585
	l.addi	r20, r20, 1032          # CFC
.LBB11_7:                               # %for.body3.3
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 259
	l.sw	-12(r2), r3
	l.sw	-16(r2), r4
	l.lwz	r3, -12(r2)
	l.sw	3556(r12), r13
	l.sw	3552(r12), r14
	l.lwz	r13, 3556(r12)
	l.sw	7124(r22), r23
	l.sw	7120(r22), r24
	l.lwz	r23, 7124(r22)
	l.jal	ntbl_bitcount
	l.nop	0                       # in delay slot
	l.lwz	r4, -16(r2)
	l.addi	r20, r20, 518           # CFC
	l.add	r4, r11, r4
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 13
	l.sw	-12(r2), r3
	l.lwz	r14, 3552(r12)
	l.add	r14, r8, r14
	l.lwz	r13, 3556(r12)
	l.movhi	r3, 18179
	l.addi	r13, r13, 13
	l.lwz	r24, 7120(r22)
	l.ori	r3, r3, 13885
	l.sw	3556(r12), r13
	l.addi	r28, r28, 1554
	l.add	r24, r31, r24
	l.lwz	r5, -12(r2)
	l.movhi	r13, 18179
	l.lwz	r23, 7124(r22)
	l.sfne	r5, r3
	l.ori	r13, r13, 13885
	l.lwz	r15, 3556(r12)
	l.addi	r23, r23, 13
	l.sw	7124(r22), r23
	l.movhi	r23, 18179
	l.ori	r23, r23, 13885
	l.lwz	r25, 7124(r22)
	l.bf	.LBB11_31
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1295
	l.sfne	r15, r13
	l.addi	r20, r20, 1036          # CFC
	l.bf	.LBB11_32
	l.nop	0
.LBB11_34:
	l.addi	r18, r18, 260
	l.addi	r20, r20, 520           # CFC
	l.lwz	r3, -12(r2)
	l.addi	r28, r28, 1560
	l.lwz	r13, 3556(r12)
	l.addi	r18, r18, 1300
	l.lwz	r23, 7124(r22)
	l.addi	r20, r20, 1040          # CFC
.LBB11_8:                               # %for.end.3
	l.addi	r18, r18, 261
	l.sw	0(r1), r4
	l.movhi	r3, hi(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.sw	3568(r10), r14
	l.addi	r20, r20, 522           # CFC
	l.movhi	r13, hi(.L.str.7)
	l.ori	r13, r13, lo(.L.str.7)
	l.sw	7136(r21), r24
	l.movhi	r23, hi(.L.str.7)
	l.ori	r23, r23, lo(.L.str.7)
	l.addi	r28, r28, 1566
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.movhi	r4, 0
	l.movhi	r3, 12400
	l.ori	r3, r3, 23300
	l.movhi	r14, 0
	l.addi	r18, r18, 1305
	l.movhi	r13, 12400
	l.ori	r13, r13, 23300
	l.movhi	r24, 0
	l.movhi	r23, 12400
	l.ori	r23, r23, 23300
	l.addi	r20, r20, 1044          # CFC
.LBB11_9:                               # %for.body3.4
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 262
	l.sw	-12(r2), r3
	l.sw	-16(r2), r4
	l.lwz	r3, -12(r2)
	l.sw	3556(r12), r13
	l.sw	3552(r12), r14
	l.lwz	r13, 3556(r12)
	l.sw	7124(r22), r23
	l.sw	7120(r22), r24
	l.lwz	r23, 7124(r22)
	l.jal	BW_btbl_bitcount
	l.nop	0                       # in delay slot
	l.lwz	r4, -16(r2)
	l.addi	r20, r20, 524           # CFC
	l.add	r4, r11, r4
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 13
	l.sw	-12(r2), r3
	l.lwz	r14, 3552(r12)
	l.add	r14, r8, r14
	l.lwz	r13, 3556(r12)
	l.movhi	r3, 12400
	l.addi	r13, r13, 13
	l.lwz	r24, 7120(r22)
	l.ori	r3, r3, 24600
	l.sw	3556(r12), r13
	l.addi	r28, r28, 1572
	l.add	r24, r31, r24
	l.lwz	r5, -12(r2)
	l.movhi	r13, 12400
	l.lwz	r23, 7124(r22)
	l.sfne	r5, r3
	l.ori	r13, r13, 24600
	l.lwz	r15, 3556(r12)
	l.addi	r23, r23, 13
	l.sw	7124(r22), r23
	l.movhi	r23, 12400
	l.ori	r23, r23, 24600
	l.lwz	r25, 7124(r22)
	l.bf	.LBB11_35
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1310
	l.sfne	r15, r13
	l.addi	r20, r20, 1048          # CFC
	l.bf	.LBB11_36
	l.nop	0
.LBB11_38:
	l.addi	r18, r18, 263
	l.addi	r20, r20, 526           # CFC
	l.lwz	r3, -12(r2)
	l.addi	r28, r28, 1578
	l.lwz	r13, 3556(r12)
	l.addi	r18, r18, 1315
	l.lwz	r23, 7124(r22)
	l.addi	r20, r20, 1052          # CFC
.LBB11_10:                              # %for.end.4
	l.addi	r18, r18, 264
	l.sw	0(r1), r4
	l.movhi	r3, hi(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.sw	3568(r10), r14
	l.addi	r20, r20, 528           # CFC
	l.movhi	r13, hi(.L.str.7)
	l.ori	r13, r13, lo(.L.str.7)
	l.sw	7136(r21), r24
	l.movhi	r23, hi(.L.str.7)
	l.ori	r23, r23, lo(.L.str.7)
	l.addi	r28, r28, 1584
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.movhi	r4, 0
	l.movhi	r3, 8445
	l.ori	r3, r3, 23988
	l.movhi	r14, 0
	l.addi	r18, r18, 1320
	l.movhi	r13, 8445
	l.ori	r13, r13, 23988
	l.movhi	r24, 0
	l.movhi	r23, 8445
	l.ori	r23, r23, 23988
	l.addi	r20, r20, 1056          # CFC
.LBB11_11:                              # %for.body3.5
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 265
	l.sw	-12(r2), r3
	l.sw	-16(r2), r4
	l.lwz	r3, -12(r2)
	l.sw	3556(r12), r13
	l.sw	3552(r12), r14
	l.lwz	r13, 3556(r12)
	l.sw	7124(r22), r23
	l.sw	7120(r22), r24
	l.lwz	r23, 7124(r22)
	l.jal	AR_btbl_bitcount
	l.nop	0                       # in delay slot
	l.lwz	r4, -16(r2)
	l.addi	r20, r20, 530           # CFC
	l.add	r4, r11, r4
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 13
	l.sw	-12(r2), r3
	l.lwz	r14, 3552(r12)
	l.add	r14, r8, r14
	l.lwz	r13, 3556(r12)
	l.movhi	r3, 8445
	l.addi	r13, r13, 13
	l.lwz	r24, 7120(r22)
	l.ori	r3, r3, 25288
	l.sw	3556(r12), r13
	l.addi	r28, r28, 1590
	l.add	r24, r31, r24
	l.lwz	r5, -12(r2)
	l.movhi	r13, 8445
	l.lwz	r23, 7124(r22)
	l.sfne	r5, r3
	l.ori	r13, r13, 25288
	l.lwz	r15, 3556(r12)
	l.addi	r23, r23, 13
	l.sw	7124(r22), r23
	l.movhi	r23, 8445
	l.ori	r23, r23, 25288
	l.lwz	r25, 7124(r22)
	l.bf	.LBB11_39
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1325
	l.sfne	r15, r13
	l.addi	r20, r20, 1060          # CFC
	l.bf	.LBB11_40
	l.nop	0
.LBB11_42:
	l.addi	r18, r18, 266
	l.addi	r20, r20, 532           # CFC
	l.lwz	r3, -12(r2)
	l.addi	r28, r28, 1596
	l.lwz	r13, 3556(r12)
	l.addi	r18, r18, 1330
	l.lwz	r23, 7124(r22)
	l.addi	r20, r20, 1064          # CFC
.LBB11_12:                              # %for.end.5
	l.addi	r18, r18, 267
	l.sw	0(r1), r4
	l.movhi	r3, hi(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.sw	3568(r10), r14
	l.movhi	r13, hi(.L.str.7)
	l.addi	r20, r20, 534           # CFC
	l.ori	r13, r13, lo(.L.str.7)
	l.sw	7136(r21), r24
	l.movhi	r23, hi(.L.str.7)
	l.ori	r23, r23, lo(.L.str.7)
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.movhi	r3, 0
	l.addi	r28, r28, 1602
	l.movhi	r4, 6795
	l.ori	r4, r4, 32632
	l.movhi	r5, 0
	l.movhi	r13, 0
	l.movhi	r14, 6795
	l.addi	r18, r18, 1335
	l.ori	r14, r14, 32632
	l.movhi	r15, 0
	l.movhi	r23, 0
	l.movhi	r24, 6795
	l.ori	r24, r24, 32632
	l.movhi	r25, 0
	l.addi	r20, r20, 1068          # CFC
.LBB11_13:                              # %for.body3.6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_14 Depth 2
	l.addi	r18, r18, 268
	l.sw	-12(r2), r3
	l.addi	r7, r0, 1
	l.movhi	r6, 0
	l.addi	r20, r20, 536           # CFC
	l.ori	r11, r4, 0
	l.sw	3556(r12), r13
	l.addi	r17, r0, 1
	l.addi	r28, r28, 1608
	l.movhi	r16, 0
	l.ori	r8, r14, 0
	l.sw	7124(r22), r23
	l.addi	r18, r18, 1340
	l.addi	r27, r0, 1
	l.movhi	r26, 0
	l.ori	r31, r24, 0
	l.addi	r20, r20, 1072          # CFC
.LBB11_14:                              # %for.body.i
                                        #   Parent Loop BB11_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.addi	r18, r18, 269
	l.andi	r3, r11, 1
	l.add	r6, r6, r3
	l.srai	r11, r11, 1
	l.addi	r20, r20, 538           # CFC
	l.sfeqi	r11, 0
	l.andi	r13, r8, 1
	l.add	r16, r16, r13
	l.addi	r28, r28, 1614
	l.srai	r8, r8, 1
	l.andi	r23, r31, 1
	l.add	r26, r26, r23
	l.srai	r31, r31, 1
	l.bf	.LBB11_43
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1345
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1076          # CFC
	l.bf	.LBB11_44
	l.nop	0
.LBB11_15:                              # %for.body.i
                                        #   in Loop: Header=BB11_14 Depth=2
	l.addi	r18, r18, 270
	l.addi	r3, r7, 1
	l.addi	r20, r20, 540           # CFC
	l.sfltui	r7, 32
	l.addi	r28, r28, 1620
	l.addi	r13, r17, 1
	l.addi	r23, r27, 1
	l.bf	.LBB11_45
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1350
	l.sfltui	r17, 32
	l.addi	r20, r20, 1080          # CFC
	l.bf	.LBB11_46
	l.nop	0
.LBB11_48:
	l.addi	r18, r18, 271
	l.addi	r20, r20, 542           # CFC
	l.ori	r7, r3, 0
	l.addi	r28, r28, 1626
	l.ori	r17, r13, 0
	l.addi	r18, r18, 1355
	l.ori	r27, r23, 0
	l.addi	r20, r20, 1084          # CFC
.LBB11_16:                              # %bit_shifter.exit
                                        #   in Loop: Header=BB11_14 Depth=2
	l.addi	r18, r18, 272
	l.lwz	r3, -12(r2)
	l.add	r3, r6, r3
	l.addi	r4, r4, 13
	l.addi	r5, r5, 1
	l.addi	r20, r20, 544           # CFC
	l.sfnei	r5, 100
	l.lwz	r13, 3556(r12)
	l.add	r13, r16, r13
	l.addi	r14, r14, 13
	l.addi	r28, r28, 1632
	l.addi	r15, r15, 1
	l.lwz	r23, 7124(r22)
	l.add	r23, r26, r23
	l.addi	r24, r24, 13
	l.addi	r25, r25, 1
	l.bf	.LBB11_49
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1360
	l.sfnei	r15, 100
	l.addi	r20, r20, 1088          # CFC
	l.bf	.LBB11_50
	l.nop	0
.LBB11_17:                              # %for.end.6
                                        #   in Loop: Header=BB11_14 Depth=2
	l.addi	r18, r18, 273
	l.sw	0(r1), r3
	l.movhi	r3, hi(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.sw	3568(r10), r13
	l.movhi	r13, hi(.L.str.7)
	l.addi	r20, r20, 546           # CFC
	l.ori	r13, r13, lo(.L.str.7)
	l.sw	7136(r21), r23
	l.movhi	r23, hi(.L.str.7)
	l.ori	r23, r23, lo(.L.str.7)
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.movhi	r11, 0
	l.addi	r28, r28, 1638
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.movhi	r8, 0
	l.addi	r10, r12, 0
	l.addi	r18, r18, 1365
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.movhi	r31, 0
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 1092          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB11_18
	l.nop	0

    l.sfeq	r18, r20
	l.bf	.LBB_NOTCF
	l.sfeq	r20, r28
	l.bf	.LBB_NOTCF
	l.sfeq	r18, r28
	l.bf	.LBB_NOTCF	
	l.nop 0
    
	l.nop 204
    
    
    
.LBB_NOTCF:
	l.nop 200
	#l.jr	r9
	l.nop 1111
	l.nop	0   

.LBB11_18:                              # %for.end.6
                                        #   in Loop: Header=BB11_14 Depth=2
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB11_51
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB11_51
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB11_51
	l.nop	0
	l.nop	205
.LBB11_51:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB11_52
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB11_52
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB11_52
	l.nop	0
	l.nop	205
.LBB11_52:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB11_53
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB11_53
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB11_53
	l.nop	0
	l.nop	205
.LBB11_53:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB11_54
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB11_54
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB11_54
	l.nop	0
	l.nop	205
.LBB11_54:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB11_55
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB11_55
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB11_55
	l.nop	0
	l.nop	205
.LBB11_55:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB11_56
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB11_56
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB11_56
	l.nop	0
	l.nop	205
.LBB11_56:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB11_57
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB11_57
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB11_57
	l.nop	0
	l.nop	205
.LBB11_57:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB11_58
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB11_58
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB11_58
	l.nop	0
	l.nop	205
.LBB11_58:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB11_59
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB11_59
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB11_59
	l.nop	0
	l.nop	205
.LBB11_59:
.LBB11_60:
	l.jr	r30
	l.nop	0
.LBB11_19:
	l.addi	r18, r18, 1250
	l.sfne	r15, r13
	l.addi	r20, r20, 1000          # CFC
	l.bf	.LBB11_21
	l.nop	0
.LBB11_20:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB11_18
	l.nop	0
	l.sfne	r5, r3
	l.bf	.LBB11_21
	l.nop	0
	l.j	.LBB11_22
	l.nop	0
.LBB11_21:
	l.addi	r18, r18, 274
	l.addi	r20, r20, 548           # CFC
	l.lwz	r3, -12(r2)
	l.addi	r28, r28, 1644
	l.lwz	r13, 3556(r12)
	l.addi	r18, r18, 1370
	l.lwz	r23, 7124(r22)
	l.addi	r20, r20, 1096          # CFC
	l.j	.LBB11_1
	l.nop	0
.LBB11_23:
	l.addi	r18, r18, 1265
	l.sfne	r15, r13
	l.addi	r20, r20, 1012          # CFC
	l.bf	.LBB11_25
	l.nop	0
.LBB11_24:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB11_18
	l.nop	0
	l.sfne	r5, r3
	l.bf	.LBB11_25
	l.nop	0
	l.j	.LBB11_26
	l.nop	0
.LBB11_25:
	l.addi	r18, r18, 275
	l.addi	r20, r20, 550           # CFC
	l.lwz	r3, -12(r2)
	l.addi	r28, r28, 1650
	l.lwz	r13, 3556(r12)
	l.addi	r18, r18, 1375
	l.lwz	r23, 7124(r22)
	l.addi	r20, r20, 1100          # CFC
	l.j	.LBB11_3
	l.nop	0
.LBB11_27:
	l.addi	r18, r18, 1280
	l.sfne	r15, r13
	l.addi	r20, r20, 1024          # CFC
	l.bf	.LBB11_29
	l.nop	0
.LBB11_28:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB11_18
	l.nop	0
	l.sfne	r5, r3
	l.bf	.LBB11_29
	l.nop	0
	l.j	.LBB11_30
	l.nop	0
.LBB11_29:
	l.addi	r18, r18, 276
	l.addi	r20, r20, 552           # CFC
	l.lwz	r3, -12(r2)
	l.addi	r28, r28, 1656
	l.lwz	r13, 3556(r12)
	l.addi	r18, r18, 1380
	l.lwz	r23, 7124(r22)
	l.addi	r20, r20, 1104          # CFC
	l.j	.LBB11_5
	l.nop	0
.LBB11_31:
	l.addi	r18, r18, 1295
	l.sfne	r15, r13
	l.addi	r20, r20, 1036          # CFC
	l.bf	.LBB11_33
	l.nop	0
.LBB11_32:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB11_18
	l.nop	0
	l.sfne	r5, r3
	l.bf	.LBB11_33
	l.nop	0
	l.j	.LBB11_34
	l.nop	0
.LBB11_33:
	l.addi	r18, r18, 277
	l.addi	r20, r20, 554           # CFC
	l.lwz	r3, -12(r2)
	l.addi	r28, r28, 1662
	l.lwz	r13, 3556(r12)
	l.addi	r18, r18, 1385
	l.lwz	r23, 7124(r22)
	l.addi	r20, r20, 1108          # CFC
	l.j	.LBB11_7
	l.nop	0
.LBB11_35:
	l.addi	r18, r18, 1310
	l.sfne	r15, r13
	l.addi	r20, r20, 1048          # CFC
	l.bf	.LBB11_37
	l.nop	0
.LBB11_36:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB11_18
	l.nop	0
	l.sfne	r5, r3
	l.bf	.LBB11_37
	l.nop	0
	l.j	.LBB11_38
	l.nop	0
.LBB11_37:
	l.addi	r18, r18, 278
	l.addi	r20, r20, 556           # CFC
	l.lwz	r3, -12(r2)
	l.addi	r28, r28, 1668
	l.lwz	r13, 3556(r12)
	l.addi	r18, r18, 1390
	l.lwz	r23, 7124(r22)
	l.addi	r20, r20, 1112          # CFC
	l.j	.LBB11_9
	l.nop	0
.LBB11_39:
	l.addi	r18, r18, 1325
	l.sfne	r15, r13
	l.addi	r20, r20, 1060          # CFC
	l.bf	.LBB11_41
	l.nop	0
.LBB11_40:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB11_18
	l.nop	0
	l.sfne	r5, r3
	l.bf	.LBB11_41
	l.nop	0
	l.j	.LBB11_42
	l.nop	0
.LBB11_41:
	l.addi	r18, r18, 279
	l.addi	r20, r20, 558           # CFC
	l.lwz	r3, -12(r2)
	l.addi	r28, r28, 1674
	l.lwz	r13, 3556(r12)
	l.addi	r18, r18, 1395
	l.lwz	r23, 7124(r22)
	l.addi	r20, r20, 1116          # CFC
	l.j	.LBB11_11
	l.nop	0
.LBB11_43:                              #   in Loop: Header=BB11_14 Depth=2
	l.addi	r18, r18, 1345
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1076          # CFC
	l.bf	.LBB11_16
	l.nop	0
.LBB11_44:                              #   in Loop: Header=BB11_14 Depth=2
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB11_18
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB11_16
	l.nop	0
	l.j	.LBB11_15
	l.nop	0
.LBB11_45:                              #   in Loop: Header=BB11_14 Depth=2
	l.addi	r18, r18, 1350
	l.sfltui	r17, 32
	l.addi	r20, r20, 1080          # CFC
	l.bf	.LBB11_47
	l.nop	0
.LBB11_46:                              #   in Loop: Header=BB11_14 Depth=2
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB11_18
	l.nop	0
	l.sfltui	r7, 32
	l.bf	.LBB11_47
	l.nop	0
	l.j	.LBB11_48
	l.nop	0
.LBB11_47:
	l.addi	r18, r18, 280
	l.addi	r20, r20, 560           # CFC
	l.ori	r7, r3, 0
	l.addi	r28, r28, 1680
	l.ori	r17, r13, 0
	l.addi	r18, r18, 1400
	l.ori	r27, r23, 0
	l.addi	r20, r20, 1120          # CFC
	l.j	.LBB11_14
	l.nop	0
.LBB11_49:                              #   in Loop: Header=BB11_14 Depth=2
	l.addi	r18, r18, 1360
	l.sfnei	r15, 100
	l.addi	r20, r20, 1088          # CFC
	l.bf	.LBB11_13
	l.nop	0
.LBB11_50:                              #   in Loop: Header=BB11_14 Depth=2
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB11_18
	l.nop	0
	l.sfnei	r5, 100
	l.bf	.LBB11_13
	l.nop	0
	l.j	.LBB11_17
	l.nop	0
.Lfunc_end11:
	.size	main, .Lfunc_end11-main

	.hidden	bitstring
	.globl	bitstring
	.p2align	2
	.type	bitstring,@function
bitstring:                              # @bitstring
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 281
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r20, r20, 562           # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -24
	l.ori	r11, r5, 0
	l.sw	3564(r10), r19
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.ori	r7, r4, 0
	l.addi	r10, r10, -24
	l.sw	7132(r21), r29
	l.andi	r4, r11, 3
	l.ori	r8, r15, 0
	l.addi	r28, r28, 1686
	l.sw	7128(r21), r22
	l.addi	r5, r0, 1
	l.ori	r17, r14, 0
	l.addi	r22, r21, 0             # CFC
	l.sfeqi	r4, 0
	l.andi	r14, r8, 3
	l.addi	r15, r0, 1
	l.addi	r21, r21, -24           # CFC
	l.ori	r31, r25, 0
	l.ori	r27, r24, 0
	l.andi	r24, r31, 3
	l.addi	r25, r0, 1
	l.bf	.LBB12_13
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1405
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1124          # CFC
	l.bf	.LBB12_14
	l.nop	0
.LBB12_1:                               # %entry
	l.addi	r18, r18, 282
	l.addi	r20, r20, 564           # CFC
	l.movhi	r5, 0
	l.addi	r28, r28, 1692
	l.movhi	r15, 0
	l.addi	r18, r18, 1410
	l.movhi	r25, 0
	l.addi	r20, r20, 1128          # CFC
.LBB12_2:                               # %entry
	l.addi	r18, r18, 283
	l.srai	r4, r11, 2
	l.add	r4, r4, r11
	l.sub	r4, r6, r4
	l.andi	r5, r5, 1
	l.add	r5, r4, r5
	l.addi	r20, r20, 566           # CFC
	l.sfltsi	r5, 1
	l.srai	r14, r8, 2
	l.add	r14, r14, r8
	l.sub	r14, r16, r14
	l.andi	r15, r15, 1
	l.addi	r28, r28, 1698
	l.add	r15, r14, r15
	l.srai	r24, r31, 2
	l.add	r24, r24, r31
	l.sub	r24, r26, r24
	l.andi	r25, r25, 1
	l.add	r25, r24, r25
	l.bf	.LBB12_15
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1415
	l.sfltsi	r15, 1
	l.addi	r20, r20, 1132          # CFC
	l.bf	.LBB12_16
	l.nop	0
.LBB12_3:                               # %for.body.preheader
	l.addi	r18, r18, 284
	l.addi	r4, r0, 32
	l.sw	-24(r2), r5
	l.sw	-12(r2), r7
	l.sw	-16(r2), r3
	l.sw	-20(r2), r11
	l.addi	r14, r0, 32
	l.sw	3544(r12), r15
	l.addi	r20, r20, 568           # CFC
	l.sw	3556(r12), r17
	l.sw	3552(r12), r13
	l.sw	3548(r12), r8
	l.addi	r24, r0, 32
	l.sw	7112(r22), r25
	l.sw	7124(r22), r27
	l.sw	7120(r22), r23
	l.sw	7116(r22), r31
	l.addi	r28, r28, 1704
	l.jal	memset
	l.nop	0                       # in delay slot
	l.lwz	r11, -20(r2)
	l.lwz	r3, -16(r2)
	l.lwz	r7, -12(r2)
	l.lwz	r4, -24(r2)
	l.add	r3, r3, r4
	l.lwz	r8, 3548(r12)
	l.lwz	r13, 3552(r12)
	l.addi	r18, r18, 1420
	l.lwz	r17, 3556(r12)
	l.lwz	r14, 3544(r12)
	l.add	r13, r13, r14
	l.lwz	r31, 7116(r22)
	l.lwz	r23, 7120(r22)
	l.lwz	r27, 7124(r22)
	l.lwz	r24, 7112(r22)
	l.add	r23, r23, r24
	l.addi	r20, r20, 1136          # CFC
.LBB12_4:                               # %while.cond.preheader
	l.sfltsi	r11, 1
	l.bf	.LBB12_17
	l.nop	0                       # in delay slot
	l.sfltsi	r8, 1
	l.bf	.LBB12_18
	l.nop	0
.LBB12_5:                               # %while.body.preheader
	l.addi	r18, r18, 285
	l.addi	r20, r20, 570           # CFC
	l.addi	r5, r11, -1
	l.addi	r28, r28, 1710
	l.addi	r15, r8, -1
	l.addi	r18, r18, 1425
	l.addi	r25, r31, -1
	l.addi	r20, r20, 1140          # CFC
.LBB12_6:                               # %while.body
	l.addi	r18, r18, 286
	l.ori	r4, r3, 0
	l.ori	r6, r5, 0
	l.srl	r5, r7, r6
	l.andi	r5, r5, 1
	l.ori	r5, r5, 48
	l.ori	r14, r13, 0
	l.ori	r16, r15, 0
	l.addi	r20, r20, 572           # CFC
	l.srl	r15, r17, r16
	l.sb	0(r4), r5
	l.andi	r15, r15, 1
	l.ori	r24, r23, 0
	l.addi	r3, r4, 1
	l.ori	r15, r15, 48
	l.ori	r26, r25, 0
	l.addi	r28, r28, 1716
	l.sfeqi	r6, 0
	l.sb	3568(r14), r15
	l.addi	r13, r14, 1
	l.srl	r25, r27, r26
	l.andi	r25, r25, 1
	l.ori	r25, r25, 48
	l.sb	7136(r24), r25
	l.addi	r23, r24, 1
	l.bf	.LBB12_19
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1430
	l.sfeqi	r16, 0
	l.addi	r20, r20, 1144          # CFC
	l.bf	.LBB12_20
	l.nop	0
.LBB12_7:                               # %while.body
	l.addi	r18, r18, 287
	l.andi	r5, r6, 3
	l.addi	r20, r20, 574           # CFC
	l.sfeqi	r5, 0
	l.addi	r28, r28, 1722
	l.andi	r15, r16, 3
	l.andi	r25, r26, 3
	l.bf	.LBB12_21
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1435
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1148          # CFC
	l.bf	.LBB12_22
	l.nop	0
.LBB12_8:                               # %while.cond.backedge
	l.addi	r18, r18, 288
	l.addi	r5, r6, -1
	l.addi	r4, r6, 1
	l.addi	r20, r20, 576           # CFC
	l.sfgtsi	r4, 1
	l.addi	r15, r16, -1
	l.addi	r28, r28, 1728
	l.addi	r14, r16, 1
	l.addi	r25, r26, -1
	l.addi	r24, r26, 1
	l.bf	.LBB12_23
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1440
	l.sfgtsi	r14, 1
	l.addi	r20, r20, 1152          # CFC
	l.bf	.LBB12_24
	l.nop	0
.LBB12_11:                              # %while.cond.backedge
	l.j	.LBB12_10
	l.nop	0                       # in delay slot
.LBB12_9:                               # %if.then
	l.addi	r18, r18, 289
	l.addi	r5, r0, 32
	l.sb	1(r4), r5
	l.addi	r20, r20, 578           # CFC
	l.addi	r3, r4, 2
	l.addi	r15, r0, 32
	l.addi	r28, r28, 1734
	l.sb	3569(r14), r15
	l.addi	r13, r14, 2
	l.addi	r18, r18, 1445
	l.addi	r25, r0, 32
	l.sb	7137(r24), r25
	l.addi	r23, r24, 2
	l.addi	r20, r20, 1156          # CFC
	l.j	.LBB12_8
	l.nop	0                       # in delay slot
.LBB12_10:                              # %while.end
	l.addi	r18, r18, 290
	l.movhi	r4, 0
	l.sb	0(r3), r4
	l.addi	r1, r2, 0
	l.addi	r20, r20, 580           # CFC
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.movhi	r14, 0
	l.sb	3568(r13), r14
	l.addi	r28, r28, 1740
	l.addi	r10, r12, 0
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.movhi	r24, 0
	l.addi	r18, r18, 1450
	l.sb	7136(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 1160          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB12_12
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB12_12:                              # %while.end
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB12_25
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB12_25
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB12_25
	l.nop	0
	l.nop	205
.LBB12_25:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB12_26
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB12_26
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB12_26
	l.nop	0
	l.nop	205
.LBB12_26:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB12_27
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB12_27
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB12_27
	l.nop	0
	l.nop	205
.LBB12_27:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB12_28
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB12_28
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB12_28
	l.nop	0
	l.nop	205
.LBB12_28:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB12_29
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB12_29
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB12_29
	l.nop	0
	l.nop	205
.LBB12_29:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB12_30
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB12_30
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB12_30
	l.nop	0
	l.nop	205
.LBB12_30:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB12_31
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB12_31
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB12_31
	l.nop	0
	l.nop	205
.LBB12_31:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB12_32
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB12_32
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB12_32
	l.nop	0
	l.nop	205
.LBB12_32:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB12_33
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB12_33
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB12_33
	l.nop	0
	l.nop	205
.LBB12_33:
.LBB12_34:
	l.jr	r30
	l.nop	0
.LBB12_13:
	l.addi	r18, r18, 1405
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1124          # CFC
	l.bf	.LBB12_2
	l.nop	0
.LBB12_14:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB12_12
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB12_2
	l.nop	0
	l.j	.LBB12_1
	l.nop	0
.LBB12_15:
	l.addi	r18, r18, 1415
	l.sfltsi	r15, 1
	l.addi	r20, r20, 1132          # CFC
	l.bf	.LBB12_4
	l.nop	0
.LBB12_16:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB12_12
	l.nop	0
	l.sfltsi	r5, 1
	l.bf	.LBB12_4
	l.nop	0
	l.j	.LBB12_3
	l.nop	0
.LBB12_17:
	l.sfltsi	r8, 1
	l.bf	.LBB12_10
	l.nop	0
.LBB12_18:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB12_12
	l.nop	0
	l.sfltsi	r11, 1
	l.bf	.LBB12_10
	l.nop	0
	l.j	.LBB12_5
	l.nop	0
.LBB12_19:
	l.addi	r18, r18, 1430
	l.sfeqi	r16, 0
	l.addi	r20, r20, 1144          # CFC
	l.bf	.LBB12_8
	l.nop	0
.LBB12_20:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB12_12
	l.nop	0
	l.sfeqi	r6, 0
	l.bf	.LBB12_8
	l.nop	0
	l.j	.LBB12_7
	l.nop	0
.LBB12_21:
	l.addi	r18, r18, 1435
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1148          # CFC
	l.bf	.LBB12_9
	l.nop	0
.LBB12_22:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB12_12
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB12_9
	l.nop	0
	l.j	.LBB12_8
	l.nop	0
.LBB12_23:
	l.addi	r18, r18, 1440
	l.sfgtsi	r14, 1
	l.addi	r20, r20, 1152          # CFC
	l.bf	.LBB12_6
	l.nop	0
.LBB12_24:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB12_12
	l.nop	0
	l.sfgtsi	r4, 1
	l.bf	.LBB12_6
	l.nop	0
	l.j	.LBB12_11
	l.nop	0
.Lfunc_end12:
	.size	bitstring, .Lfunc_end12-bitstring

	.hidden	bstr_i
	.globl	bstr_i
	.p2align	2
	.type	bstr_i,@function
bstr_i:                                 # @bstr_i
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 291
	l.addi	r20, r20, 582           # CFC
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -24
	l.movhi	r11, 0
	l.sfeqi	r3, 0
	l.sw	3564(r10), r19
	l.addi	r28, r28, 1746
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -24
	l.movhi	r8, 0
	l.sw	7132(r21), r29
	l.sw	7128(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -24           # CFC
	l.movhi	r31, 0
	l.bf	.LBB13_7
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1455
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1164          # CFC
	l.bf	.LBB13_8
	l.nop	0
.LBB13_1:                               # %land.lhs.true.preheader
	l.addi	r18, r18, 292
	l.lbz	r4, 0(r3)
	l.addi	r20, r20, 584           # CFC
	l.sfeqi	r4, 0
	l.addi	r28, r28, 1752
	l.lbz	r14, 3568(r13)
	l.lbz	r24, 7136(r23)
	l.bf	.LBB13_9
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1460
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1168          # CFC
	l.bf	.LBB13_10
	l.nop	0
.LBB13_2:                               # %land.rhs.preheader
	l.addi	r18, r18, 293
	l.movhi	r11, 0
	l.addi	r3, r3, 1
	l.sw	-20(r2), r3
	l.movhi	r3, hi(.L.str)
	l.addi	r20, r20, 586           # CFC
	l.ori	r3, r3, lo(.L.str)
	l.movhi	r8, 0
	l.addi	r13, r13, 1
	l.sw	3548(r12), r13
	l.sw	-24(r2), r3
	l.addi	r28, r28, 1758
	l.movhi	r13, hi(.L.str)
	l.movhi	r31, 0
	l.ori	r13, r13, lo(.L.str)
	l.sw	3544(r12), r13
	l.addi	r18, r18, 1465
	l.addi	r23, r23, 1
	l.sw	7116(r22), r23
	l.movhi	r23, hi(.L.str)
	l.ori	r23, r23, lo(.L.str)
	l.sw	7112(r22), r23
	l.addi	r20, r20, 1172          # CFC
.LBB13_3:                               # %land.rhs
	l.addi	r18, r18, 294
	l.sw	-16(r2), r4
	l.sw	-12(r2), r11
	l.slli	r3, r4, 24
	l.srai	r4, r3, 24
	l.addi	r5, r0, 3
	l.sw	3552(r12), r14
	l.sw	3556(r12), r8
	l.addi	r20, r20, 588           # CFC
	l.slli	r13, r14, 24
	l.lwz	r3, -24(r2)
	l.srai	r14, r13, 24
	l.sw	7120(r22), r24
	l.addi	r15, r0, 3
	l.lwz	r13, 3544(r12)
	l.sw	7124(r22), r31
	l.slli	r23, r24, 24
	l.addi	r28, r28, 1764
	l.srai	r24, r23, 24
	l.addi	r25, r0, 3
	l.lwz	r23, 7112(r22)
	l.jal	memchr
	l.nop	0                       # in delay slot
	l.lwz	r4, -16(r2)
	l.sfeqi	r11, 0
	l.lwz	r14, 3552(r12)
	l.lwz	r24, 7120(r22)
	l.bf	.LBB13_11
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1470
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1176          # CFC
	l.bf	.LBB13_12
	l.nop	0
.LBB13_14:
	l.addi	r18, r18, 295
	l.addi	r20, r20, 590           # CFC
	l.lwz	r11, -12(r2)
	l.addi	r28, r28, 1770
	l.lwz	r8, 3556(r12)
	l.addi	r18, r18, 1475
	l.lwz	r31, 7124(r22)
	l.addi	r20, r20, 1180          # CFC
.LBB13_4:                               # %while.body
	l.addi	r18, r18, 296
	l.slli	r3, r11, 1
	l.andi	r4, r4, 1
	l.or	r11, r4, r3
	l.lwz	r4, -20(r2)
	l.addi	r3, r4, 1
	l.slli	r13, r8, 1
	l.andi	r14, r14, 1
	l.addi	r20, r20, 592           # CFC
	l.or	r8, r14, r13
	l.lbz	r4, 0(r4)
	l.lwz	r14, 3548(r12)
	l.slli	r23, r31, 1
	l.sfnei	r4, 0
	l.addi	r13, r14, 1
	l.andi	r24, r24, 1
	l.addi	r28, r28, 1776
	l.sw	-20(r2), r3
	l.lbz	r14, 3568(r14)
	l.sw	3548(r12), r13
	l.or	r31, r24, r23
	l.lwz	r24, 7116(r22)
	l.addi	r23, r24, 1
	l.lbz	r24, 7136(r24)
	l.sw	7116(r22), r23
	l.bf	.LBB13_15
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1480
	l.sfnei	r14, 0
	l.addi	r20, r20, 1184          # CFC
	l.bf	.LBB13_16
	l.nop	0
.LBB13_5:                               # %while.end
	l.addi	r18, r18, 297
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 594           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 1782
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.addi	r18, r18, 1485
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 1188          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB13_6
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB13_6:                               # %while.end
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB13_17
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB13_17
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB13_17
	l.nop	0
	l.nop	205
.LBB13_17:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB13_18
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB13_18
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB13_18
	l.nop	0
	l.nop	205
.LBB13_18:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB13_19
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB13_19
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB13_19
	l.nop	0
	l.nop	205
.LBB13_19:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB13_20
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB13_20
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB13_20
	l.nop	0
	l.nop	205
.LBB13_20:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB13_21
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB13_21
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB13_21
	l.nop	0
	l.nop	205
.LBB13_21:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB13_22
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB13_22
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB13_22
	l.nop	0
	l.nop	205
.LBB13_22:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB13_23
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB13_23
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB13_23
	l.nop	0
	l.nop	205
.LBB13_23:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB13_24
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB13_24
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB13_24
	l.nop	0
	l.nop	205
.LBB13_24:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB13_25
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB13_25
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB13_25
	l.nop	0
	l.nop	205
.LBB13_25:
.LBB13_26:
	l.jr	r30
	l.nop	0
.LBB13_7:
	l.addi	r18, r18, 1455
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1164          # CFC
	l.bf	.LBB13_5
	l.nop	0
.LBB13_8:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB13_6
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB13_5
	l.nop	0
	l.j	.LBB13_1
	l.nop	0
.LBB13_9:
	l.addi	r18, r18, 1460
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1168          # CFC
	l.bf	.LBB13_5
	l.nop	0
.LBB13_10:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB13_6
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB13_5
	l.nop	0
	l.j	.LBB13_2
	l.nop	0
.LBB13_11:
	l.addi	r18, r18, 1470
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1176          # CFC
	l.bf	.LBB13_13
	l.nop	0
.LBB13_12:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB13_6
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB13_13
	l.nop	0
	l.j	.LBB13_14
	l.nop	0
.LBB13_13:
	l.addi	r18, r18, 298
	l.addi	r20, r20, 596           # CFC
	l.lwz	r11, -12(r2)
	l.addi	r28, r28, 1788
	l.lwz	r8, 3556(r12)
	l.addi	r18, r18, 1490
	l.lwz	r31, 7124(r22)
	l.addi	r20, r20, 1192          # CFC
	l.j	.LBB13_5
	l.nop	0
.LBB13_15:
	l.addi	r18, r18, 1480
	l.sfnei	r14, 0
	l.addi	r20, r20, 1184          # CFC
	l.bf	.LBB13_3
	l.nop	0
.LBB13_16:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB13_6
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB13_3
	l.nop	0
	l.j	.LBB13_5
	l.nop	0
.Lfunc_end13:
	.size	bstr_i, .Lfunc_end13-bstr_i

	.hidden	__divsf3
	.globl	__divsf3
	.p2align	2
	.type	__divsf3,@function
__divsf3:                               # @__divsf3
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 299
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -28
	l.sw	-12(r2), r4
	l.movhi	r5, 127
	l.sw	3564(r10), r12
	l.addi	r20, r20, 598           # CFC
	l.addi	r12, r10, 0
	l.addi	r10, r10, -28
	l.ori	r5, r5, 65535
	l.sw	3556(r12), r14
	l.sw	7132(r21), r22
	l.and	r11, r3, r5
	l.movhi	r15, 127
	l.addi	r22, r21, 0             # CFC
	l.sw	-16(r2), r3
	l.ori	r15, r15, 65535
	l.addi	r21, r21, -28           # CFC
	l.srli	r5, r3, 23
	l.addi	r28, r28, 1794
	l.and	r8, r13, r15
	l.sw	7124(r22), r24
	l.andi	r3, r5, 255
	l.sw	3552(r12), r13
	l.movhi	r25, 127
	l.sfeqi	r3, 0
	l.srli	r15, r13, 23
	l.andi	r13, r15, 255
	l.ori	r25, r25, 65535
	l.and	r31, r23, r25
	l.sw	7120(r22), r23
	l.srli	r25, r23, 23
	l.andi	r23, r25, 255
	l.bf	.LBB14_66
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1495
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1196          # CFC
	l.bf	.LBB14_67
	l.nop	0
.LBB14_1:                               # %entry
	l.sfeqi	r3, 255
	l.bf	.LBB14_68
	l.nop	0                       # in delay slot
	l.sfeqi	r13, 255
	l.bf	.LBB14_69
	l.nop	0
.LBB14_2:                               # %sw.default
	l.addi	r18, r18, 300
	l.slli	r5, r11, 3
	l.movhi	r7, 1024
	l.or	r4, r5, r7
	l.movhi	r5, 0
	l.addi	r20, r20, 600           # CFC
	l.sw	-8(r2), r5
	l.slli	r15, r8, 3
	l.movhi	r17, 1024
	l.or	r14, r15, r17
	l.addi	r3, r3, -127
	l.addi	r28, r28, 1800
	l.movhi	r15, 0
	l.slli	r25, r31, 3
	l.sw	3560(r12), r15
	l.addi	r13, r13, -127
	l.addi	r18, r18, 1500
	l.movhi	r27, 1024
	l.or	r24, r25, r27
	l.movhi	r25, 0
	l.sw	7128(r22), r25
	l.addi	r23, r23, -127
	l.addi	r20, r20, 1200          # CFC
	l.j	.LBB14_8
	l.nop	0                       # in delay slot
.LBB14_3:                               # %sw.bb
	l.addi	r18, r18, 301
	l.addi	r4, r0, 1
	l.sw	-8(r2), r4
	l.movhi	r4, 0
	l.addi	r20, r20, 602           # CFC
	l.sfeqi	r11, 0
	l.addi	r14, r0, 1
	l.sw	3560(r12), r14
	l.addi	r28, r28, 1806
	l.movhi	r14, 0
	l.addi	r24, r0, 1
	l.sw	7128(r22), r24
	l.movhi	r24, 0
	l.bf	.LBB14_70
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1505
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1204          # CFC
	l.bf	.LBB14_71
	l.nop	0
.LBB14_4:                               # %if.else
	l.addi	r18, r18, 302
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
	l.addi	r20, r20, 604           # CFC
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
	l.addi	r28, r28, 1812
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
	l.addi	r18, r18, 1510
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
	l.sw	3560(r12), r15
	l.add	r23, r27, r23
	l.addi	r25, r25, -5
	l.sll	r24, r31, r25
	l.movhi	r25, 0
	l.sw	7128(r22), r25
	l.addi	r20, r20, 1208          # CFC
	l.j	.LBB14_8
	l.nop	0                       # in delay slot
.LBB14_5:                               # %sw.bb25
	l.addi	r18, r18, 303
	l.addi	r4, r0, 2
	l.addi	r20, r20, 606           # CFC
	l.sfeqi	r11, 0
	l.addi	r28, r28, 1818
	l.addi	r14, r0, 2
	l.addi	r24, r0, 2
	l.bf	.LBB14_72
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1515
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1212          # CFC
	l.bf	.LBB14_73
	l.nop	0
.LBB14_6:                               # %sw.bb25
	l.addi	r18, r18, 304
	l.addi	r20, r20, 608           # CFC
	l.addi	r4, r0, 3
	l.addi	r28, r28, 1824
	l.addi	r14, r0, 3
	l.addi	r18, r18, 1520
	l.addi	r24, r0, 3
	l.addi	r20, r20, 1216          # CFC
.LBB14_7:                               # %sw.bb25
	l.addi	r18, r18, 305
	l.sw	-8(r2), r4
	l.addi	r20, r20, 610           # CFC
	l.ori	r4, r11, 0
	l.sw	3560(r12), r14
	l.addi	r28, r28, 1830
	l.ori	r14, r8, 0
	l.addi	r18, r18, 1525
	l.sw	7128(r22), r24
	l.ori	r24, r31, 0
	l.addi	r20, r20, 1220          # CFC
.LBB14_8:                               # %do.body39
	l.addi	r18, r18, 306
	l.sw	-20(r2), r4
	l.movhi	r5, 127
	l.ori	r5, r5, 65535
	l.lwz	r4, -12(r2)
	l.and	r5, r4, r5
	l.sw	3548(r12), r14
	l.movhi	r15, 127
	l.addi	r20, r20, 612           # CFC
	l.ori	r15, r15, 65535
	l.srli	r7, r4, 23
	l.lwz	r14, 3556(r12)
	l.sw	7116(r22), r24
	l.andi	r11, r7, 255
	l.and	r15, r14, r15
	l.movhi	r25, 127
	l.addi	r28, r28, 1836
	l.sfeqi	r11, 0
	l.srli	r17, r14, 23
	l.andi	r8, r17, 255
	l.ori	r25, r25, 65535
	l.lwz	r24, 7124(r22)
	l.and	r25, r24, r25
	l.srli	r27, r24, 23
	l.andi	r31, r27, 255
	l.bf	.LBB14_74
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1530
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1224          # CFC
	l.bf	.LBB14_75
	l.nop	0
.LBB14_9:                               # %do.body39
	l.addi	r18, r18, 307
	l.sfeqi	r11, 255
	l.addi	r20, r20, 614           # CFC
	l.lwz	r4, -8(r2)
	l.addi	r28, r28, 1842
	l.lwz	r14, 3560(r12)
	l.lwz	r24, 7128(r22)
	l.bf	.LBB14_76
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1535
	l.sfeqi	r8, 255
	l.addi	r20, r20, 1228          # CFC
	l.bf	.LBB14_77
	l.nop	0
.LBB14_10:                              # %sw.default55
	l.addi	r18, r18, 308
	l.slli	r5, r5, 3
	l.movhi	r7, 1024
	l.or	r7, r5, r7
	l.addi	r20, r20, 616           # CFC
	l.movhi	r6, 0
	l.addi	r11, r11, -127
	l.slli	r15, r15, 3
	l.movhi	r17, 1024
	l.addi	r28, r28, 1848
	l.or	r17, r15, r17
	l.movhi	r16, 0
	l.addi	r8, r8, -127
	l.slli	r25, r25, 3
	l.addi	r18, r18, 1540
	l.movhi	r27, 1024
	l.or	r27, r25, r27
	l.movhi	r26, 0
	l.addi	r31, r31, -127
	l.addi	r20, r20, 1232          # CFC
	l.j	.LBB14_16
	l.nop	0                       # in delay slot
.LBB14_11:                              # %sw.bb62
	l.addi	r18, r18, 309
	l.addi	r6, r0, 1
	l.movhi	r7, 0
	l.sfeqi	r5, 0
	l.addi	r20, r20, 618           # CFC
	l.lwz	r4, -8(r2)
	l.addi	r16, r0, 1
	l.movhi	r17, 0
	l.addi	r28, r28, 1854
	l.lwz	r14, 3560(r12)
	l.addi	r26, r0, 1
	l.movhi	r27, 0
	l.lwz	r24, 7128(r22)
	l.bf	.LBB14_78
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1545
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1236          # CFC
	l.bf	.LBB14_79
	l.nop	0
.LBB14_12:                              # %if.else65
	l.addi	r18, r18, 310
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
	l.addi	r20, r20, 620           # CFC
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
	l.addi	r28, r28, 1860
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
	l.addi	r18, r18, 1550
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
	l.lwz	r14, 3560(r12)
	l.movhi	r16, 0
	l.add	r31, r27, r31
	l.addi	r24, r24, -5
	l.sll	r27, r25, r24
	l.lwz	r24, 7128(r22)
	l.movhi	r26, 0
	l.addi	r20, r20, 1240          # CFC
	l.j	.LBB14_16
	l.nop	0                       # in delay slot
.LBB14_13:                              # %sw.bb79
	l.addi	r18, r18, 311
	l.addi	r6, r0, 2
	l.addi	r20, r20, 622           # CFC
	l.sfeqi	r5, 0
	l.addi	r28, r28, 1866
	l.addi	r16, r0, 2
	l.addi	r26, r0, 2
	l.bf	.LBB14_80
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1555
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1244          # CFC
	l.bf	.LBB14_81
	l.nop	0
.LBB14_14:                              # %sw.bb79
	l.addi	r18, r18, 312
	l.addi	r20, r20, 624           # CFC
	l.addi	r6, r0, 3
	l.addi	r28, r28, 1872
	l.addi	r16, r0, 3
	l.addi	r18, r18, 1560
	l.addi	r26, r0, 3
	l.addi	r20, r20, 1248          # CFC
.LBB14_15:                              # %sw.bb79
	l.addi	r18, r18, 313
	l.addi	r20, r20, 626           # CFC
	l.ori	r7, r5, 0
	l.addi	r28, r28, 1878
	l.ori	r17, r15, 0
	l.addi	r18, r18, 1565
	l.ori	r27, r25, 0
	l.addi	r20, r20, 1252          # CFC
.LBB14_16:                              # %do.body98
	l.addi	r18, r18, 314
	l.sw	-24(r2), r7
	l.lwz	r5, -16(r2)
	l.srli	r7, r5, 31
	l.sub	r3, r3, r11
	l.sw	-16(r2), r3
	l.sw	3544(r12), r17
	l.lwz	r15, 3552(r12)
	l.srli	r17, r15, 31
	l.slli	r4, r4, 2
	l.addi	r20, r20, 628           # CFC
	l.sub	r13, r13, r8
	l.sw	7112(r22), r27
	l.sw	-28(r2), r6
	l.sw	3552(r12), r13
	l.lwz	r25, 7120(r22)
	l.or	r4, r6, r4
	l.slli	r14, r14, 2
	l.srli	r27, r25, 31
	l.andi	r6, r4, 15
	l.addi	r28, r28, 1884
	l.sw	3540(r12), r16
	l.sub	r23, r23, r31
	l.sfgtui	r6, 15
	l.or	r14, r16, r14
	l.andi	r16, r14, 15
	l.sw	7120(r22), r23
	l.slli	r24, r24, 2
	l.sw	7108(r22), r26
	l.or	r24, r26, r24
	l.andi	r26, r24, 15
	l.bf	.LBB14_82
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1570
	l.sfgtui	r16, 15
	l.addi	r20, r20, 1256          # CFC
	l.bf	.LBB14_83
	l.nop	0
.LBB14_17:                              # %do.body98
	l.addi	r18, r18, 315
	l.lwz	r3, -12(r2)
	l.srli	r5, r3, 31
	l.xor	r11, r5, r7
	l.addi	r3, r0, 1
	l.sw	-12(r2), r3
	l.lwz	r13, 3556(r12)
	l.srli	r15, r13, 31
	l.xor	r8, r15, r17
	l.addi	r20, r20, 630           # CFC
	l.movhi	r4, 64
	l.addi	r13, r0, 1
	l.lwz	r23, 7124(r22)
	l.movhi	r3, hi(.LJTI14_0)
	l.sw	3556(r12), r13
	l.srli	r25, r23, 31
	l.ori	r3, r3, lo(.LJTI14_0)
	l.movhi	r14, 64
	l.addi	r28, r28, 1890
	l.xor	r31, r25, r27
	l.slli	r6, r6, 2
	l.movhi	r13, hi(.LJTI14_0)
	l.addi	r23, r0, 1
	l.add	r3, r6, r3
	l.ori	r13, r13, lo(.LJTI14_0)
	l.sw	7124(r22), r23
	l.lwz	r3, 0(r3)
	l.addi	r18, r18, 1575
	l.slli	r16, r16, 2
	l.movhi	r24, 64
	l.add	r13, r16, r13
	l.lwz	r13, 3568(r13)
	l.movhi	r23, hi(.LJTI14_0)
	l.ori	r23, r23, lo(.LJTI14_0)
	l.slli	r26, r26, 2
	l.add	r23, r26, r23
	l.lwz	r23, 7136(r23)
	l.addi	r20, r20, 1260          # CFC
	l.sfne	r3, r13
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB14_65
	l.nop	0
	l.jr	r3
	l.nop	0                       # in delay slot
.LBB14_41:                              # %sw.bb159
	l.addi	r18, r18, 316
	l.lwz	r3, -28(r2)
	l.sw	-8(r2), r3
	l.ori	r7, r5, 0
	l.addi	r20, r20, 632           # CFC
	l.lwz	r3, -24(r2)
	l.sw	-20(r2), r3
	l.lwz	r13, 3540(r12)
	l.sw	3560(r12), r13
	l.addi	r28, r28, 1896
	l.ori	r17, r15, 0
	l.lwz	r13, 3544(r12)
	l.sw	3548(r12), r13
	l.lwz	r23, 7108(r22)
	l.addi	r18, r18, 1580
	l.sw	7128(r22), r23
	l.ori	r27, r25, 0
	l.lwz	r23, 7112(r22)
	l.sw	7116(r22), r23
	l.addi	r20, r20, 1264          # CFC
.LBB14_42:                              # %do.body169
	l.addi	r18, r18, 317
	l.lwz	r4, -8(r2)
	l.sfgtui	r4, 3
	l.lwz	r5, -20(r2)
	l.ori	r11, r7, 0
	l.addi	r20, r20, 634           # CFC
	l.lwz	r6, -16(r2)
	l.lwz	r14, 3560(r12)
	l.lwz	r15, 3548(r12)
	l.ori	r8, r17, 0
	l.addi	r28, r28, 1902
	l.lwz	r16, 3552(r12)
	l.lwz	r24, 7128(r22)
	l.lwz	r25, 7116(r22)
	l.ori	r31, r27, 0
	l.lwz	r26, 7120(r22)
	l.bf	.LBB14_84
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1585
	l.sfgtui	r14, 3
	l.addi	r20, r20, 1268          # CFC
	l.bf	.LBB14_85
	l.nop	0
.LBB14_43:                              # %do.body169
	l.addi	r18, r18, 318
	l.movhi	r3, hi(.LJTI14_1)
	l.ori	r3, r3, lo(.LJTI14_1)
	l.slli	r4, r4, 2
	l.add	r3, r4, r3
	l.lwz	r3, 0(r3)
	l.movhi	r13, hi(.LJTI14_1)
	l.addi	r20, r20, 636           # CFC
	l.ori	r13, r13, lo(.LJTI14_1)
	l.slli	r14, r14, 2
	l.ori	r4, r11, 0
	l.add	r13, r14, r13
	l.movhi	r23, hi(.LJTI14_1)
	l.ori	r6, r4, 0
	l.lwz	r13, 3568(r13)
	l.addi	r28, r28, 1908
	l.ori	r23, r23, lo(.LJTI14_1)
	l.ori	r4, r5, 0
	l.ori	r14, r8, 0
	l.slli	r24, r24, 2
	l.sw	-12(r2), r6
	l.ori	r16, r14, 0
	l.add	r23, r24, r23
	l.addi	r18, r18, 1590
	l.ori	r14, r15, 0
	l.sw	3556(r12), r16
	l.lwz	r23, 7136(r23)
	l.ori	r24, r31, 0
	l.ori	r26, r24, 0
	l.ori	r24, r25, 0
	l.sw	7124(r22), r26
	l.addi	r20, r20, 1272          # CFC
	l.sfne	r3, r13
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB14_65
	l.nop	0
	l.jr	r3
	l.nop	0                       # in delay slot
.LBB14_62:                              # %sw.bb269
	l.addi	r18, r18, 319
	l.movhi	r6, 0
	l.addi	r20, r20, 638           # CFC
	l.movhi	r5, 0
	l.movhi	r16, 0
	l.addi	r28, r28, 1914
	l.movhi	r15, 0
	l.addi	r18, r18, 1595
	l.movhi	r26, 0
	l.movhi	r25, 0
	l.addi	r20, r20, 1276          # CFC
	l.j	.LBB14_64
	l.nop	0                       # in delay slot
.LBB14_63:                              # %sw.bb270
	l.addi	r18, r18, 320
	l.movhi	r5, 0
	l.addi	r20, r20, 640           # CFC
	l.addi	r6, r0, 255
	l.movhi	r15, 0
	l.addi	r28, r28, 1920
	l.addi	r16, r0, 255
	l.addi	r18, r18, 1600
	l.movhi	r25, 0
	l.addi	r26, r0, 255
	l.addi	r20, r20, 1280          # CFC
	l.j	.LBB14_64
	l.nop	0                       # in delay slot
.LBB14_18:                              # %sw.bb102
	l.addi	r18, r18, 321
	l.sw	-28(r2), r11
	l.lwz	r3, -24(r2)
	l.slli	r4, r3, 5
	l.lwz	r3, -20(r2)
	l.slli	r7, r3, 5
	l.sw	3540(r12), r8
	l.addi	r20, r20, 642           # CFC
	l.lwz	r13, 3544(r12)
	l.slli	r14, r13, 5
	l.sfltu	r7, r4
	l.lwz	r13, 3548(r12)
	l.sw	7108(r22), r31
	l.sw	-12(r2), r4
	l.addi	r28, r28, 1926
	l.slli	r17, r13, 5
	l.sw	3556(r12), r14
	l.lwz	r23, 7112(r22)
	l.slli	r24, r23, 5
	l.lwz	r23, 7116(r22)
	l.slli	r27, r23, 5
	l.sw	7124(r22), r24
	l.bf	.LBB14_86
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1605
	l.sfltu	r17, r14
	l.addi	r20, r20, 1284          # CFC
	l.bf	.LBB14_87
	l.nop	0
.LBB14_19:                              # %if.then113
	l.addi	r18, r18, 322
	l.sub	r7, r7, r4
	l.addi	r3, r0, 26
	l.addi	r20, r20, 644           # CFC
	l.addi	r5, r0, 1
	l.sub	r17, r17, r14
	l.addi	r28, r28, 1932
	l.addi	r13, r0, 26
	l.addi	r15, r0, 1
	l.addi	r18, r18, 1610
	l.sub	r27, r27, r24
	l.addi	r23, r0, 26
	l.addi	r25, r0, 1
	l.addi	r20, r20, 1288          # CFC
	l.j	.LBB14_21
	l.nop	0                       # in delay slot
.LBB14_33:                              # %do.body148
	l.addi	r18, r18, 323
	l.ori	r11, r5, 0
	l.ori	r5, r7, 0
	l.movhi	r4, 64
	l.lwz	r3, -24(r2)
	l.and	r3, r3, r4
	l.ori	r8, r15, 0
	l.addi	r20, r20, 646           # CFC
	l.ori	r15, r17, 0
	l.movhi	r14, 64
	l.addi	r6, r0, 1
	l.lwz	r13, 3544(r12)
	l.ori	r31, r25, 0
	l.sfeqi	r3, 0
	l.addi	r28, r28, 1938
	l.and	r13, r13, r14
	l.addi	r16, r0, 1
	l.ori	r25, r27, 0
	l.movhi	r24, 64
	l.lwz	r23, 7112(r22)
	l.and	r23, r23, r24
	l.addi	r26, r0, 1
	l.bf	.LBB14_88
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1615
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1292          # CFC
	l.bf	.LBB14_89
	l.nop	0
.LBB14_34:                              # %do.body148
	l.addi	r18, r18, 324
	l.addi	r20, r20, 648           # CFC
	l.movhi	r6, 0
	l.addi	r28, r28, 1944
	l.movhi	r16, 0
	l.addi	r18, r18, 1620
	l.movhi	r26, 0
	l.addi	r20, r20, 1296          # CFC
.LBB14_35:                              # %do.body148
	l.addi	r18, r18, 325
	l.lwz	r7, -20(r2)
	l.and	r3, r7, r4
	l.srli	r3, r3, 22
	l.and	r4, r3, r6
	l.addi	r20, r20, 650           # CFC
	l.sfnei	r4, 0
	l.lwz	r17, 3548(r12)
	l.and	r13, r17, r14
	l.srli	r13, r13, 22
	l.addi	r28, r28, 1950
	l.and	r14, r13, r16
	l.lwz	r27, 7116(r22)
	l.and	r23, r27, r24
	l.srli	r23, r23, 22
	l.and	r24, r23, r26
	l.bf	.LBB14_90
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1625
	l.sfnei	r14, 0
	l.addi	r20, r20, 1300          # CFC
	l.bf	.LBB14_91
	l.nop	0
.LBB14_36:                              # %do.body148
	l.addi	r18, r18, 326
	l.addi	r20, r20, 652           # CFC
	l.sw	-24(r2), r7
	l.addi	r28, r28, 1956
	l.sw	3544(r12), r17
	l.addi	r18, r18, 1630
	l.sw	7112(r22), r27
	l.addi	r20, r20, 1304          # CFC
.LBB14_37:                              # %do.body148
	l.sfnei	r4, 0
	l.bf	.LBB14_92
	l.nop	0                       # in delay slot
	l.sfnei	r14, 0
	l.bf	.LBB14_93
	l.nop	0
.LBB14_38:                              # %do.body148
	l.addi	r18, r18, 327
	l.addi	r20, r20, 654           # CFC
	l.ori	r11, r5, 0
	l.addi	r28, r28, 1962
	l.ori	r8, r15, 0
	l.addi	r18, r18, 1635
	l.ori	r31, r25, 0
	l.addi	r20, r20, 1308          # CFC
.LBB14_39:                              # %do.body148
	l.addi	r18, r18, 328
	l.lwz	r4, -24(r2)
	l.addi	r20, r20, 656           # CFC
	l.sw	-12(r2), r11
	l.lwz	r14, 3544(r12)
	l.addi	r28, r28, 1968
	l.sw	3556(r12), r8
	l.addi	r18, r18, 1640
	l.lwz	r24, 7112(r22)
	l.sw	7124(r22), r31
	l.addi	r20, r20, 1312          # CFC
.LBB14_40:                              # %sw.bb271
	l.addi	r18, r18, 329
	l.movhi	r3, 64
	l.or	r5, r4, r3
	l.addi	r6, r0, 255
	l.addi	r20, r20, 658           # CFC
	l.lwz	r11, -12(r2)
	l.movhi	r13, 64
	l.or	r15, r14, r13
	l.addi	r28, r28, 1974
	l.addi	r16, r0, 255
	l.lwz	r8, 3556(r12)
	l.movhi	r23, 64
	l.addi	r18, r18, 1645
	l.or	r25, r24, r23
	l.addi	r26, r0, 255
	l.lwz	r31, 7124(r22)
	l.addi	r20, r20, 1316          # CFC
.LBB14_64:                              # %do.body279
	l.addi	r18, r18, 330
	l.movhi	r3, 127
	l.ori	r3, r3, 65535
	l.and	r3, r5, r3
	l.slli	r4, r6, 23
	l.movhi	r5, 32640
	l.movhi	r13, 127
	l.ori	r13, r13, 65535
	l.and	r13, r15, r13
	l.addi	r20, r20, 660           # CFC
	l.and	r4, r4, r5
	l.slli	r14, r16, 23
	l.movhi	r23, 127
	l.slli	r5, r11, 31
	l.movhi	r15, 32640
	l.ori	r23, r23, 65535
	l.or	r4, r4, r5
	l.and	r14, r14, r15
	l.addi	r28, r28, 1980
	l.and	r23, r25, r23
	l.or	r11, r4, r3
	l.slli	r15, r8, 31
	l.slli	r24, r26, 23
	l.addi	r1, r2, 0
	l.or	r14, r14, r15
	l.movhi	r25, 32640
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 1650
	l.or	r8, r14, r13
	l.and	r24, r24, r25
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.slli	r25, r31, 31
	l.or	r24, r24, r25
	l.or	r31, r24, r23
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 1320          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB14_65
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB14_20:                              # %if.else116
	l.addi	r18, r18, 331
	l.addi	r3, r0, 27
	l.movhi	r5, 0
	l.lwz	r4, -16(r2)
	l.addi	r20, r20, 662           # CFC
	l.addi	r4, r4, -1
	l.sw	-16(r2), r4
	l.addi	r13, r0, 27
	l.movhi	r15, 0
	l.addi	r28, r28, 1986
	l.lwz	r14, 3552(r12)
	l.addi	r14, r14, -1
	l.sw	3552(r12), r14
	l.addi	r23, r0, 27
	l.addi	r18, r18, 1655
	l.movhi	r25, 0
	l.lwz	r24, 7120(r22)
	l.addi	r24, r24, -1
	l.sw	7120(r22), r24
	l.addi	r20, r20, 1324          # CFC
.LBB14_21:                              # %do.body119.preheader
	l.addi	r18, r18, 332
	l.addi	r20, r20, 664           # CFC
	l.addi	r11, r3, 1
	l.addi	r28, r28, 1992
	l.addi	r8, r13, 1
	l.addi	r18, r18, 1660
	l.addi	r31, r23, 1
	l.addi	r20, r20, 1328          # CFC
.LBB14_22:                              # %do.body119
	l.addi	r18, r18, 333
	l.sw	-8(r2), r5
	l.movhi	r3, 0
	l.addi	r6, r0, 1
	l.sfgtsi	r7, -1
	l.addi	r20, r20, 666           # CFC
	l.ori	r4, r6, 0
	l.sw	3560(r12), r15
	l.movhi	r13, 0
	l.addi	r16, r0, 1
	l.addi	r28, r28, 1998
	l.ori	r14, r16, 0
	l.sw	7128(r22), r25
	l.movhi	r23, 0
	l.addi	r26, r0, 1
	l.ori	r24, r26, 0
	l.bf	.LBB14_94
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1665
	l.sfgtsi	r17, -1
	l.addi	r20, r20, 1332          # CFC
	l.bf	.LBB14_95
	l.nop	0
.LBB14_23:                              # %do.body119
	l.addi	r18, r18, 334
	l.addi	r20, r20, 668           # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 2004
	l.movhi	r14, 0
	l.addi	r18, r18, 1670
	l.movhi	r24, 0
	l.addi	r20, r20, 1336          # CFC
.LBB14_24:                              # %do.body119
	l.addi	r18, r18, 335
	l.slli	r7, r7, 1
	l.lwz	r5, -12(r2)
	l.addi	r20, r20, 670           # CFC
	l.sfltu	r7, r5
	l.slli	r17, r17, 1
	l.addi	r28, r28, 2010
	l.lwz	r15, 3556(r12)
	l.slli	r27, r27, 1
	l.lwz	r25, 7124(r22)
	l.bf	.LBB14_96
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1675
	l.sfltu	r17, r15
	l.addi	r20, r20, 1340          # CFC
	l.bf	.LBB14_97
	l.nop	0
.LBB14_25:                              # %do.body119
	l.addi	r18, r18, 336
	l.addi	r20, r20, 672           # CFC
	l.movhi	r6, 0
	l.addi	r28, r28, 2016
	l.movhi	r16, 0
	l.addi	r18, r18, 1680
	l.movhi	r26, 0
	l.addi	r20, r20, 1344          # CFC
.LBB14_26:                              # %do.body119
	l.addi	r18, r18, 337
	l.and	r4, r4, r6
	l.sfnei	r4, 0
	l.addi	r20, r20, 674           # CFC
	l.lwz	r5, -8(r2)
	l.and	r14, r14, r16
	l.addi	r28, r28, 2022
	l.lwz	r15, 3560(r12)
	l.and	r24, r24, r26
	l.lwz	r25, 7128(r22)
	l.bf	.LBB14_98
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1685
	l.sfnei	r14, 0
	l.addi	r20, r20, 1348          # CFC
	l.bf	.LBB14_99
	l.nop	0
.LBB14_27:                              # %do.body119
	l.addi	r18, r18, 338
	l.addi	r20, r20, 676           # CFC
	l.lwz	r3, -12(r2)
	l.addi	r28, r28, 2028
	l.lwz	r13, 3556(r12)
	l.addi	r18, r18, 1690
	l.lwz	r23, 7124(r22)
	l.addi	r20, r20, 1352          # CFC
.LBB14_28:                              # %do.body119
	l.addi	r18, r18, 339
	l.sub	r7, r7, r3
	l.andi	r3, r4, 1
	l.slli	r4, r5, 1
	l.or	r3, r3, r4
	l.xori	r5, r3, 1
	l.sub	r17, r17, r13
	l.addi	r20, r20, 678           # CFC
	l.andi	r13, r14, 1
	l.slli	r14, r15, 1
	l.addi	r11, r11, -1
	l.or	r13, r13, r14
	l.sub	r27, r27, r23
	l.sfgtsi	r11, 1
	l.addi	r28, r28, 2034
	l.xori	r15, r13, 1
	l.addi	r8, r8, -1
	l.andi	r23, r24, 1
	l.slli	r24, r25, 1
	l.or	r23, r23, r24
	l.xori	r25, r23, 1
	l.addi	r31, r31, -1
	l.bf	.LBB14_100
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1695
	l.sfgtsi	r8, 1
	l.addi	r20, r20, 1356          # CFC
	l.bf	.LBB14_101
	l.nop	0
.LBB14_29:                              # %do.body169.thread439
	l.addi	r18, r18, 340
	l.addi	r3, r0, 1
	l.addi	r20, r20, 680           # CFC
	l.sfnei	r7, 0
	l.addi	r28, r28, 2040
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.bf	.LBB14_102
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1700
	l.sfnei	r17, 0
	l.addi	r20, r20, 1360          # CFC
	l.bf	.LBB14_103
	l.nop	0
.LBB14_30:                              # %do.body169.thread439
	l.addi	r18, r18, 341
	l.addi	r20, r20, 682           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 2046
	l.movhi	r13, 0
	l.addi	r18, r18, 1705
	l.movhi	r23, 0
	l.addi	r20, r20, 1364          # CFC
.LBB14_31:                              # %do.body169.thread439
	l.addi	r18, r18, 342
	l.andi	r3, r3, 1
	l.or	r3, r3, r5
	l.sw	-20(r2), r3
	l.addi	r20, r20, 684           # CFC
	l.lwz	r6, -28(r2)
	l.andi	r13, r13, 1
	l.or	r13, r13, r15
	l.addi	r28, r28, 2052
	l.sw	3548(r12), r13
	l.lwz	r16, 3540(r12)
	l.andi	r23, r23, 1
	l.addi	r18, r18, 1710
	l.or	r23, r23, r25
	l.sw	7116(r22), r23
	l.lwz	r26, 7108(r22)
	l.addi	r20, r20, 1368          # CFC
.LBB14_32:                              # %sw.bb170
	l.addi	r18, r18, 343
	l.ori	r11, r6, 0
	l.lwz	r7, -16(r2)
	l.lwz	r4, -20(r2)
	l.addi	r20, r20, 686           # CFC
	l.sfltsi	r7, -126
	l.ori	r8, r16, 0
	l.lwz	r17, 3552(r12)
	l.addi	r28, r28, 2058
	l.lwz	r14, 3548(r12)
	l.ori	r31, r26, 0
	l.lwz	r27, 7120(r22)
	l.lwz	r24, 7116(r22)
	l.bf	.LBB14_104
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1715
	l.sfltsi	r17, -126
	l.addi	r20, r20, 1372          # CFC
	l.bf	.LBB14_105
	l.nop	0
.LBB14_44:                              # %do.body175
	l.addi	r18, r18, 344
	l.andi	r3, r4, 15
	l.sfeqi	r3, 4
	l.addi	r20, r20, 688           # CFC
	l.ori	r6, r4, 0
	l.andi	r13, r14, 15
	l.addi	r28, r28, 2064
	l.ori	r16, r14, 0
	l.andi	r23, r24, 15
	l.ori	r26, r24, 0
	l.bf	.LBB14_106
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1720
	l.sfeqi	r13, 4
	l.addi	r20, r20, 1376          # CFC
	l.bf	.LBB14_107
	l.nop	0
.LBB14_45:                              # %do.body175
	l.addi	r18, r18, 345
	l.addi	r20, r20, 690           # CFC
	l.addi	r6, r4, 4
	l.addi	r28, r28, 2070
	l.addi	r16, r14, 4
	l.addi	r18, r18, 1725
	l.addi	r26, r24, 4
	l.addi	r20, r20, 1380          # CFC
.LBB14_46:                              # %do.body175
	l.addi	r18, r18, 346
	l.andi	r3, r4, 7
	l.addi	r20, r20, 692           # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 2076
	l.andi	r13, r14, 7
	l.andi	r23, r24, 7
	l.bf	.LBB14_108
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1730
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1384          # CFC
	l.bf	.LBB14_109
	l.nop	0
.LBB14_47:                              # %do.body175
	l.addi	r18, r18, 347
	l.addi	r20, r20, 694           # CFC
	l.ori	r4, r6, 0
	l.addi	r28, r28, 2082
	l.ori	r14, r16, 0
	l.addi	r18, r18, 1735
	l.ori	r24, r26, 0
	l.addi	r20, r20, 1388          # CFC
.LBB14_48:                              # %do.body175
	l.addi	r18, r18, 348
	l.srli	r3, r4, 27
	l.andi	r3, r3, 1
	l.add	r3, r7, r3
	l.addi	r7, r3, 127
	l.movhi	r5, 0
	l.addi	r20, r20, 696           # CFC
	l.sfgtsi	r7, 254
	l.srli	r13, r14, 27
	l.andi	r13, r13, 1
	l.add	r13, r17, r13
	l.addi	r17, r13, 127
	l.addi	r28, r28, 2088
	l.movhi	r15, 0
	l.srli	r23, r24, 27
	l.andi	r23, r23, 1
	l.add	r23, r27, r23
	l.addi	r27, r23, 127
	l.movhi	r25, 0
	l.bf	.LBB14_110
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1740
	l.sfgtsi	r17, 254
	l.addi	r20, r20, 1392          # CFC
	l.bf	.LBB14_111
	l.nop	0
.LBB14_49:                              # %do.body175
	l.addi	r18, r18, 349
	l.movhi	r3, 7935
	l.ori	r3, r3, 65535
	l.srli	r4, r4, 3
	l.addi	r20, r20, 698           # CFC
	l.and	r5, r4, r3
	l.movhi	r13, 7935
	l.ori	r13, r13, 65535
	l.addi	r28, r28, 2094
	l.srli	r14, r14, 3
	l.and	r15, r14, r13
	l.movhi	r23, 7935
	l.addi	r18, r18, 1745
	l.ori	r23, r23, 65535
	l.srli	r24, r24, 3
	l.and	r25, r24, r23
	l.addi	r20, r20, 1396          # CFC
.LBB14_50:                              # %do.body175
	l.addi	r18, r18, 350
	l.addi	r6, r0, 255
	l.addi	r20, r20, 700           # CFC
	l.sfgtsi	r7, 254
	l.addi	r28, r28, 2100
	l.addi	r16, r0, 255
	l.addi	r26, r0, 255
	l.bf	.LBB14_112
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1750
	l.sfgtsi	r17, 254
	l.addi	r20, r20, 1400          # CFC
	l.bf	.LBB14_113
	l.nop	0
.LBB14_51:                              # %do.body175
	l.addi	r18, r18, 351
	l.addi	r20, r20, 702           # CFC
	l.ori	r6, r7, 0
	l.addi	r28, r28, 2106
	l.ori	r16, r17, 0
	l.addi	r18, r18, 1755
	l.ori	r26, r27, 0
	l.addi	r20, r20, 1404          # CFC
	l.j	.LBB14_64
	l.nop	0                       # in delay slot
.LBB14_52:                              # %if.else205
	l.addi	r18, r18, 352
	l.addi	r3, r0, -126
	l.sub	r3, r3, r7
	l.movhi	r6, 0
	l.sfgtsi	r3, 27
	l.addi	r20, r20, 704           # CFC
	l.movhi	r5, 0
	l.addi	r13, r0, -126
	l.sub	r13, r13, r17
	l.movhi	r16, 0
	l.addi	r28, r28, 2112
	l.movhi	r15, 0
	l.addi	r23, r0, -126
	l.sub	r23, r23, r27
	l.movhi	r26, 0
	l.movhi	r25, 0
	l.bf	.LBB14_114
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1760
	l.sfgtsi	r13, 27
	l.addi	r20, r20, 1408          # CFC
	l.bf	.LBB14_115
	l.nop	0
.LBB14_53:                              # %if.then210
	l.addi	r18, r18, 353
	l.ori	r6, r3, 0
	l.addi	r3, r0, -127
	l.sub	r3, r3, r7
	l.addi	r5, r0, 31
	l.sub	r3, r5, r3
	l.ori	r16, r13, 0
	l.addi	r13, r0, -127
	l.sub	r13, r13, r17
	l.addi	r20, r20, 706           # CFC
	l.srl	r5, r4, r6
	l.addi	r15, r0, 31
	l.ori	r26, r23, 0
	l.sll	r3, r4, r3
	l.sub	r13, r15, r13
	l.addi	r23, r0, -127
	l.addi	r4, r0, 1
	l.srl	r15, r14, r16
	l.addi	r28, r28, 2118
	l.sub	r23, r23, r27
	l.sfnei	r3, 0
	l.sll	r13, r14, r13
	l.addi	r14, r0, 1
	l.addi	r25, r0, 31
	l.sub	r23, r25, r23
	l.srl	r25, r24, r26
	l.sll	r23, r24, r23
	l.addi	r24, r0, 1
	l.bf	.LBB14_116
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1765
	l.sfnei	r13, 0
	l.addi	r20, r20, 1412          # CFC
	l.bf	.LBB14_117
	l.nop	0
.LBB14_54:                              # %if.then210
	l.addi	r18, r18, 354
	l.addi	r20, r20, 708           # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 2124
	l.movhi	r14, 0
	l.addi	r18, r18, 1770
	l.movhi	r24, 0
	l.addi	r20, r20, 1416          # CFC
.LBB14_55:                              # %if.then210
	l.addi	r18, r18, 355
	l.andi	r3, r4, 1
	l.or	r4, r3, r5
	l.andi	r3, r4, 15
	l.sfeqi	r3, 4
	l.addi	r20, r20, 710           # CFC
	l.ori	r5, r4, 0
	l.andi	r13, r14, 1
	l.or	r14, r13, r15
	l.andi	r13, r14, 15
	l.addi	r28, r28, 2130
	l.ori	r15, r14, 0
	l.andi	r23, r24, 1
	l.or	r24, r23, r25
	l.andi	r23, r24, 15
	l.ori	r25, r24, 0
	l.bf	.LBB14_118
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1775
	l.sfeqi	r13, 4
	l.addi	r20, r20, 1420          # CFC
	l.bf	.LBB14_119
	l.nop	0
.LBB14_56:                              # %if.then210
	l.addi	r18, r18, 356
	l.addi	r20, r20, 712           # CFC
	l.addi	r5, r4, 4
	l.addi	r28, r28, 2136
	l.addi	r15, r14, 4
	l.addi	r18, r18, 1780
	l.addi	r25, r24, 4
	l.addi	r20, r20, 1424          # CFC
.LBB14_57:                              # %if.then210
	l.addi	r18, r18, 357
	l.andi	r3, r4, 7
	l.addi	r20, r20, 714           # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 2142
	l.andi	r13, r14, 7
	l.andi	r23, r24, 7
	l.bf	.LBB14_120
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1785
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1428          # CFC
	l.bf	.LBB14_121
	l.nop	0
.LBB14_58:                              # %if.then210
	l.addi	r18, r18, 358
	l.addi	r20, r20, 716           # CFC
	l.ori	r4, r5, 0
	l.addi	r28, r28, 2148
	l.ori	r14, r15, 0
	l.addi	r18, r18, 1790
	l.ori	r24, r25, 0
	l.addi	r20, r20, 1432          # CFC
.LBB14_59:                              # %if.then210
	l.addi	r18, r18, 359
	l.movhi	r3, 1024
	l.and	r3, r4, r3
	l.srli	r5, r4, 3
	l.addi	r20, r20, 718           # CFC
	l.sfeqi	r3, 0
	l.movhi	r13, 1024
	l.and	r13, r14, r13
	l.addi	r28, r28, 2154
	l.srli	r15, r14, 3
	l.movhi	r23, 1024
	l.and	r23, r24, r23
	l.srli	r25, r24, 3
	l.bf	.LBB14_122
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1795
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1436          # CFC
	l.bf	.LBB14_123
	l.nop	0
.LBB14_60:                              # %if.then210
	l.addi	r18, r18, 360
	l.addi	r20, r20, 720           # CFC
	l.movhi	r5, 0
	l.addi	r28, r28, 2160
	l.movhi	r15, 0
	l.addi	r18, r18, 1800
	l.movhi	r25, 0
	l.addi	r20, r20, 1440          # CFC
.LBB14_61:                              # %if.then210
	l.addi	r18, r18, 361
	l.addi	r20, r20, 722           # CFC
	l.srli	r6, r3, 26
	l.addi	r28, r28, 2166
	l.srli	r16, r13, 26
	l.addi	r18, r18, 1805
	l.srli	r26, r23, 26
	l.addi	r20, r20, 1444          # CFC
	l.j	.LBB14_64
	l.nop	0                       # in delay slot
.LBB14_65:                              # %if.then210
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB14_124
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB14_124
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB14_124
	l.nop	0
	l.nop	205
.LBB14_124:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB14_125
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB14_125
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB14_125
	l.nop	0
	l.nop	205
.LBB14_125:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB14_126
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB14_126
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB14_126
	l.nop	0
	l.nop	205
.LBB14_126:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB14_127
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB14_127
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB14_127
	l.nop	0
	l.nop	205
.LBB14_127:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB14_128
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB14_128
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB14_128
	l.nop	0
	l.nop	205
.LBB14_128:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB14_129
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB14_129
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB14_129
	l.nop	0
	l.nop	205
.LBB14_129:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB14_130
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB14_130
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB14_130
	l.nop	0
	l.nop	205
.LBB14_130:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB14_131
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB14_131
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB14_131
	l.nop	0
	l.nop	205
.LBB14_131:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB14_132
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB14_132
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB14_132
	l.nop	0
	l.nop	205
.LBB14_132:
.LBB14_133:
	l.jr	r30
	l.nop	0
.LBB14_66:
	l.addi	r18, r18, 1495
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1196          # CFC
	l.bf	.LBB14_3
	l.nop	0
.LBB14_67:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB14_3
	l.nop	0
	l.j	.LBB14_1
	l.nop	0
.LBB14_68:
	l.sfeqi	r13, 255
	l.bf	.LBB14_5
	l.nop	0
.LBB14_69:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfeqi	r3, 255
	l.bf	.LBB14_5
	l.nop	0
	l.j	.LBB14_2
	l.nop	0
.LBB14_70:
	l.addi	r18, r18, 1505
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1204          # CFC
	l.bf	.LBB14_8
	l.nop	0
.LBB14_71:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB14_8
	l.nop	0
	l.j	.LBB14_4
	l.nop	0
.LBB14_72:
	l.addi	r18, r18, 1515
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1212          # CFC
	l.bf	.LBB14_7
	l.nop	0
.LBB14_73:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB14_7
	l.nop	0
	l.j	.LBB14_6
	l.nop	0
.LBB14_74:
	l.addi	r18, r18, 1530
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1224          # CFC
	l.bf	.LBB14_11
	l.nop	0
.LBB14_75:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB14_11
	l.nop	0
	l.j	.LBB14_9
	l.nop	0
.LBB14_76:
	l.addi	r18, r18, 1535
	l.sfeqi	r8, 255
	l.addi	r20, r20, 1228          # CFC
	l.bf	.LBB14_13
	l.nop	0
.LBB14_77:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfeqi	r11, 255
	l.bf	.LBB14_13
	l.nop	0
	l.j	.LBB14_10
	l.nop	0
.LBB14_78:
	l.addi	r18, r18, 1545
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1236          # CFC
	l.bf	.LBB14_16
	l.nop	0
.LBB14_79:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB14_16
	l.nop	0
	l.j	.LBB14_12
	l.nop	0
.LBB14_80:
	l.addi	r18, r18, 1555
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1244          # CFC
	l.bf	.LBB14_15
	l.nop	0
.LBB14_81:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB14_15
	l.nop	0
	l.j	.LBB14_14
	l.nop	0
.LBB14_82:
	l.addi	r18, r18, 1570
	l.sfgtui	r16, 15
	l.addi	r20, r20, 1256          # CFC
	l.bf	.LBB14_42
	l.nop	0
.LBB14_83:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfgtui	r6, 15
	l.bf	.LBB14_42
	l.nop	0
	l.j	.LBB14_17
	l.nop	0
.LBB14_84:
	l.addi	r18, r18, 1585
	l.sfgtui	r14, 3
	l.addi	r20, r20, 1268          # CFC
	l.bf	.LBB14_64
	l.nop	0
.LBB14_85:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfgtui	r4, 3
	l.bf	.LBB14_64
	l.nop	0
	l.j	.LBB14_43
	l.nop	0
.LBB14_86:
	l.addi	r18, r18, 1605
	l.sfltu	r17, r14
	l.addi	r20, r20, 1284          # CFC
	l.bf	.LBB14_20
	l.nop	0
.LBB14_87:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfltu	r7, r4
	l.bf	.LBB14_20
	l.nop	0
	l.j	.LBB14_19
	l.nop	0
.LBB14_88:
	l.addi	r18, r18, 1615
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1292          # CFC
	l.bf	.LBB14_35
	l.nop	0
.LBB14_89:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB14_35
	l.nop	0
	l.j	.LBB14_34
	l.nop	0
.LBB14_90:
	l.addi	r18, r18, 1625
	l.sfnei	r14, 0
	l.addi	r20, r20, 1300          # CFC
	l.bf	.LBB14_37
	l.nop	0
.LBB14_91:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB14_37
	l.nop	0
	l.j	.LBB14_36
	l.nop	0
.LBB14_92:
	l.sfnei	r14, 0
	l.bf	.LBB14_39
	l.nop	0
.LBB14_93:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB14_39
	l.nop	0
	l.j	.LBB14_38
	l.nop	0
.LBB14_94:
	l.addi	r18, r18, 1665
	l.sfgtsi	r17, -1
	l.addi	r20, r20, 1332          # CFC
	l.bf	.LBB14_24
	l.nop	0
.LBB14_95:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfgtsi	r7, -1
	l.bf	.LBB14_24
	l.nop	0
	l.j	.LBB14_23
	l.nop	0
.LBB14_96:
	l.addi	r18, r18, 1675
	l.sfltu	r17, r15
	l.addi	r20, r20, 1340          # CFC
	l.bf	.LBB14_26
	l.nop	0
.LBB14_97:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfltu	r7, r5
	l.bf	.LBB14_26
	l.nop	0
	l.j	.LBB14_25
	l.nop	0
.LBB14_98:
	l.addi	r18, r18, 1685
	l.sfnei	r14, 0
	l.addi	r20, r20, 1348          # CFC
	l.bf	.LBB14_28
	l.nop	0
.LBB14_99:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB14_28
	l.nop	0
	l.j	.LBB14_27
	l.nop	0
.LBB14_100:
	l.addi	r18, r18, 1695
	l.sfgtsi	r8, 1
	l.addi	r20, r20, 1356          # CFC
	l.bf	.LBB14_22
	l.nop	0
.LBB14_101:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfgtsi	r11, 1
	l.bf	.LBB14_22
	l.nop	0
	l.j	.LBB14_29
	l.nop	0
.LBB14_102:
	l.addi	r18, r18, 1700
	l.sfnei	r17, 0
	l.addi	r20, r20, 1360          # CFC
	l.bf	.LBB14_31
	l.nop	0
.LBB14_103:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB14_31
	l.nop	0
	l.j	.LBB14_30
	l.nop	0
.LBB14_104:
	l.addi	r18, r18, 1715
	l.sfltsi	r17, -126
	l.addi	r20, r20, 1372          # CFC
	l.bf	.LBB14_52
	l.nop	0
.LBB14_105:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfltsi	r7, -126
	l.bf	.LBB14_52
	l.nop	0
	l.j	.LBB14_44
	l.nop	0
.LBB14_106:
	l.addi	r18, r18, 1720
	l.sfeqi	r13, 4
	l.addi	r20, r20, 1376          # CFC
	l.bf	.LBB14_46
	l.nop	0
.LBB14_107:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfeqi	r3, 4
	l.bf	.LBB14_46
	l.nop	0
	l.j	.LBB14_45
	l.nop	0
.LBB14_108:
	l.addi	r18, r18, 1730
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1384          # CFC
	l.bf	.LBB14_48
	l.nop	0
.LBB14_109:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB14_48
	l.nop	0
	l.j	.LBB14_47
	l.nop	0
.LBB14_110:
	l.addi	r18, r18, 1740
	l.sfgtsi	r17, 254
	l.addi	r20, r20, 1392          # CFC
	l.bf	.LBB14_50
	l.nop	0
.LBB14_111:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfgtsi	r7, 254
	l.bf	.LBB14_50
	l.nop	0
	l.j	.LBB14_49
	l.nop	0
.LBB14_112:
	l.addi	r18, r18, 1750
	l.sfgtsi	r17, 254
	l.addi	r20, r20, 1400          # CFC
	l.bf	.LBB14_64
	l.nop	0
.LBB14_113:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfgtsi	r7, 254
	l.bf	.LBB14_64
	l.nop	0
	l.j	.LBB14_51
	l.nop	0
.LBB14_114:
	l.addi	r18, r18, 1760
	l.sfgtsi	r13, 27
	l.addi	r20, r20, 1408          # CFC
	l.bf	.LBB14_64
	l.nop	0
.LBB14_115:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfgtsi	r3, 27
	l.bf	.LBB14_64
	l.nop	0
	l.j	.LBB14_53
	l.nop	0
.LBB14_116:
	l.addi	r18, r18, 1765
	l.sfnei	r13, 0
	l.addi	r20, r20, 1412          # CFC
	l.bf	.LBB14_55
	l.nop	0
.LBB14_117:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB14_55
	l.nop	0
	l.j	.LBB14_54
	l.nop	0
.LBB14_118:
	l.addi	r18, r18, 1775
	l.sfeqi	r13, 4
	l.addi	r20, r20, 1420          # CFC
	l.bf	.LBB14_57
	l.nop	0
.LBB14_119:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfeqi	r3, 4
	l.bf	.LBB14_57
	l.nop	0
	l.j	.LBB14_56
	l.nop	0
.LBB14_120:
	l.addi	r18, r18, 1785
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1428          # CFC
	l.bf	.LBB14_59
	l.nop	0
.LBB14_121:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB14_59
	l.nop	0
	l.j	.LBB14_58
	l.nop	0
.LBB14_122:
	l.addi	r18, r18, 1795
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1436          # CFC
	l.bf	.LBB14_61
	l.nop	0
.LBB14_123:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB14_65
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB14_61
	l.nop	0
	l.j	.LBB14_60
	l.nop	0
.Lfunc_end14:
	.size	__divsf3, .Lfunc_end14-__divsf3

	.text
	.hidden	__fixsfsi
	.globl	__fixsfsi
	.p2align	2
	.type	__fixsfsi,@function
__fixsfsi:                              # @__fixsfsi
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 362
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r20, r20, 724           # CFC
	l.addi	r1, r1, -4
	l.movhi	r11, 0
	l.srli	r4, r3, 23
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.andi	r5, r4, 255
	l.movhi	r8, 0
	l.addi	r28, r28, 2172
	l.sw	7132(r21), r22
	l.sfgtui	r5, 126
	l.srli	r14, r13, 23
	l.andi	r15, r14, 255
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r31, 0
	l.srli	r24, r23, 23
	l.andi	r25, r24, 255
	l.bf	.LBB15_9
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1810
	l.sfgtui	r15, 126
	l.addi	r20, r20, 1448          # CFC
	l.bf	.LBB15_10
	l.nop	0
.LBB15_1:                               # %if.then
	l.addi	r18, r18, 363
	l.addi	r1, r2, 0
	l.addi	r20, r20, 726           # CFC
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 2178
	l.lwz	r12, 3564(r10)
	l.addi	r18, r18, 1815
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 1452          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB15_8
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB15_2:                               # %if.else16
	l.addi	r18, r18, 364
	l.srli	r4, r3, 31
	l.addi	r20, r20, 728           # CFC
	l.sfltui	r5, 158
	l.addi	r28, r28, 2184
	l.srli	r14, r13, 31
	l.srli	r24, r23, 31
	l.bf	.LBB15_11
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1820
	l.sfltui	r15, 158
	l.addi	r20, r20, 1456          # CFC
	l.bf	.LBB15_12
	l.nop	0
.LBB15_3:                               # %if.then18
	l.addi	r18, r18, 365
	l.xori	r3, r4, 1
	l.movhi	r4, 32768
	l.addi	r20, r20, 730           # CFC
	l.sub	r11, r4, r3
	l.xori	r13, r14, 1
	l.addi	r28, r28, 2190
	l.movhi	r14, 32768
	l.sub	r8, r14, r13
	l.addi	r18, r18, 1825
	l.xori	r23, r24, 1
	l.movhi	r24, 32768
	l.sub	r31, r24, r23
	l.addi	r20, r20, 1460          # CFC
	l.j	.LBB15_1
	l.nop	0                       # in delay slot
.LBB15_4:                               # %if.else31
	l.addi	r18, r18, 366
	l.movhi	r6, 127
	l.ori	r6, r6, 65535
	l.and	r3, r3, r6
	l.movhi	r6, 128
	l.or	r3, r3, r6
	l.movhi	r16, 127
	l.ori	r16, r16, 65535
	l.addi	r20, r20, 732           # CFC
	l.and	r13, r13, r16
	l.addi	r6, r5, -150
	l.movhi	r16, 128
	l.movhi	r26, 127
	l.sll	r11, r3, r6
	l.or	r13, r13, r16
	l.ori	r26, r26, 65535
	l.addi	r28, r28, 2196
	l.sfgtui	r5, 149
	l.addi	r16, r15, -150
	l.sll	r8, r13, r16
	l.and	r23, r23, r26
	l.movhi	r26, 128
	l.or	r23, r23, r26
	l.addi	r26, r25, -150
	l.sll	r31, r23, r26
	l.bf	.LBB15_13
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1830
	l.sfgtui	r15, 149
	l.addi	r20, r20, 1464          # CFC
	l.bf	.LBB15_14
	l.nop	0
.LBB15_5:                               # %if.else31
	l.addi	r18, r18, 367
	l.addi	r6, r0, 150
	l.sub	r5, r6, r5
	l.addi	r20, r20, 734           # CFC
	l.srl	r11, r3, r5
	l.addi	r16, r0, 150
	l.addi	r28, r28, 2202
	l.sub	r15, r16, r15
	l.srl	r8, r13, r15
	l.addi	r18, r18, 1835
	l.addi	r26, r0, 150
	l.sub	r25, r26, r25
	l.srl	r31, r23, r25
	l.addi	r20, r20, 1468          # CFC
.LBB15_6:                               # %if.else31
	l.sfeqi	r4, 0
	l.bf	.LBB15_15
	l.nop	0                       # in delay slot
	l.sfeqi	r14, 0
	l.bf	.LBB15_16
	l.nop	0
.LBB15_7:                               # %if.else31
	l.addi	r18, r18, 368
	l.movhi	r3, 0
	l.addi	r20, r20, 736           # CFC
	l.sub	r11, r3, r11
	l.movhi	r13, 0
	l.addi	r28, r28, 2208
	l.sub	r8, r13, r8
	l.addi	r18, r18, 1840
	l.movhi	r23, 0
	l.sub	r31, r23, r31
	l.addi	r20, r20, 1472          # CFC
	l.j	.LBB15_1
	l.nop	0                       # in delay slot
.LBB15_8:                               # %if.else31
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB15_17
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB15_17
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB15_17
	l.nop	0
	l.nop	205
.LBB15_17:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB15_18
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB15_18
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB15_18
	l.nop	0
	l.nop	205
.LBB15_18:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB15_19
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB15_19
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB15_19
	l.nop	0
	l.nop	205
.LBB15_19:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB15_20
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB15_20
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB15_20
	l.nop	0
	l.nop	205
.LBB15_20:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB15_21
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB15_21
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB15_21
	l.nop	0
	l.nop	205
.LBB15_21:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB15_22
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB15_22
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB15_22
	l.nop	0
	l.nop	205
.LBB15_22:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB15_23
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB15_23
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB15_23
	l.nop	0
	l.nop	205
.LBB15_23:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB15_24
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB15_24
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB15_24
	l.nop	0
	l.nop	205
.LBB15_24:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB15_25
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB15_25
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB15_25
	l.nop	0
	l.nop	205
.LBB15_25:
.LBB15_26:
	l.jr	r30
	l.nop	0
.LBB15_9:
	l.addi	r18, r18, 1810
	l.sfgtui	r15, 126
	l.addi	r20, r20, 1448          # CFC
	l.bf	.LBB15_2
	l.nop	0
.LBB15_10:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB15_8
	l.nop	0
	l.sfgtui	r5, 126
	l.bf	.LBB15_2
	l.nop	0
	l.j	.LBB15_1
	l.nop	0
.LBB15_11:
	l.addi	r18, r18, 1820
	l.sfltui	r15, 158
	l.addi	r20, r20, 1456          # CFC
	l.bf	.LBB15_4
	l.nop	0
.LBB15_12:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB15_8
	l.nop	0
	l.sfltui	r5, 158
	l.bf	.LBB15_4
	l.nop	0
	l.j	.LBB15_3
	l.nop	0
.LBB15_13:
	l.addi	r18, r18, 1830
	l.sfgtui	r15, 149
	l.addi	r20, r20, 1464          # CFC
	l.bf	.LBB15_6
	l.nop	0
.LBB15_14:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB15_8
	l.nop	0
	l.sfgtui	r5, 149
	l.bf	.LBB15_6
	l.nop	0
	l.j	.LBB15_5
	l.nop	0
.LBB15_15:
	l.sfeqi	r14, 0
	l.bf	.LBB15_1
	l.nop	0
.LBB15_16:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB15_8
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB15_1
	l.nop	0
	l.j	.LBB15_7
	l.nop	0
.Lfunc_end15:
	.size	__fixsfsi, .Lfunc_end15-__fixsfsi

	.hidden	__floatsisf
	.globl	__floatsisf
	.p2align	2
	.type	__floatsisf,@function
__floatsisf:                            # @__floatsisf
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 369
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r20, r20, 738           # CFC
	l.addi	r1, r1, -4
	l.movhi	r6, 0
	l.sfeqi	r3, 0
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.movhi	r5, 0
	l.movhi	r16, 0
	l.addi	r28, r28, 2214
	l.sw	7132(r21), r22
	l.movhi	r4, 0
	l.movhi	r15, 0
	l.movhi	r14, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r26, 0
	l.movhi	r25, 0
	l.movhi	r24, 0
	l.bf	.LBB16_25
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1845
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1476          # CFC
	l.bf	.LBB16_26
	l.nop	0
.LBB16_1:                               # %if.then
	l.addi	r18, r18, 370
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
	l.addi	r20, r20, 740           # CFC
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
	l.addi	r28, r28, 2220
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
	l.bf	.LBB16_27
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1850
	l.sfgtui	r15, 150
	l.addi	r20, r20, 1480          # CFC
	l.bf	.LBB16_28
	l.nop	0
.LBB16_2:                               # %if.then9
	l.addi	r18, r18, 371
	l.addi	r3, r0, 150
	l.sub	r3, r3, r5
	l.addi	r20, r20, 742           # CFC
	l.sfgtsi	r3, 0
	l.addi	r13, r0, 150
	l.addi	r28, r28, 2226
	l.sub	r13, r13, r15
	l.addi	r23, r0, 150
	l.sub	r23, r23, r25
	l.bf	.LBB16_29
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1855
	l.sfgtsi	r13, 0
	l.addi	r20, r20, 1484          # CFC
	l.bf	.LBB16_30
	l.nop	0
.LBB16_3:                               # %if.then9
	l.addi	r18, r18, 372
	l.addi	r20, r20, 744           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 2232
	l.movhi	r13, 0
	l.addi	r18, r18, 1860
	l.movhi	r23, 0
	l.addi	r20, r20, 1488          # CFC
.LBB16_4:                               # %if.then9
	l.addi	r18, r18, 373
	l.addi	r20, r20, 746           # CFC
	l.sll	r6, r6, r3
	l.addi	r28, r28, 2238
	l.sll	r16, r16, r13
	l.addi	r18, r18, 1865
	l.sll	r26, r26, r23
	l.addi	r20, r20, 1492          # CFC
	l.j	.LBB16_23
	l.nop	0                       # in delay slot
.LBB16_5:                               # %if.else
	l.sfltui	r5, 154
	l.bf	.LBB16_31
	l.nop	0                       # in delay slot
	l.sfltui	r15, 154
	l.bf	.LBB16_32
	l.nop	0
.LBB16_6:                               # %if.then21
	l.addi	r18, r18, 374
	l.addi	r3, r0, 185
	l.sub	r3, r3, r5
	l.sll	r7, r6, r3
	l.addi	r3, r0, 1
	l.addi	r20, r20, 748           # CFC
	l.sfnei	r7, 0
	l.addi	r13, r0, 185
	l.sub	r13, r13, r15
	l.sll	r17, r16, r13
	l.addi	r28, r28, 2244
	l.addi	r13, r0, 1
	l.addi	r23, r0, 185
	l.sub	r23, r23, r25
	l.sll	r27, r26, r23
	l.addi	r23, r0, 1
	l.bf	.LBB16_33
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1870
	l.sfnei	r17, 0
	l.addi	r20, r20, 1496          # CFC
	l.bf	.LBB16_34
	l.nop	0
.LBB16_7:                               # %if.then21
	l.addi	r18, r18, 375
	l.addi	r20, r20, 750           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 2250
	l.movhi	r13, 0
	l.addi	r18, r18, 1875
	l.movhi	r23, 0
	l.addi	r20, r20, 1500          # CFC
.LBB16_8:                               # %if.then21
	l.addi	r18, r18, 376
	l.addi	r7, r5, -153
	l.srl	r6, r6, r7
	l.andi	r3, r3, 1
	l.addi	r20, r20, 752           # CFC
	l.or	r6, r3, r6
	l.addi	r17, r15, -153
	l.srl	r16, r16, r17
	l.addi	r28, r28, 2256
	l.andi	r13, r13, 1
	l.or	r16, r13, r16
	l.addi	r27, r25, -153
	l.addi	r18, r18, 1880
	l.srl	r26, r26, r27
	l.andi	r23, r23, 1
	l.or	r26, r23, r26
	l.addi	r20, r20, 1504          # CFC
.LBB16_9:                               # %if.end31
	l.addi	r18, r18, 377
	l.addi	r3, r0, 153
	l.sub	r3, r3, r5
	l.addi	r20, r20, 754           # CFC
	l.sfgtsi	r3, 0
	l.addi	r13, r0, 153
	l.addi	r28, r28, 2262
	l.sub	r13, r13, r15
	l.addi	r23, r0, 153
	l.sub	r23, r23, r25
	l.bf	.LBB16_35
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1885
	l.sfgtsi	r13, 0
	l.addi	r20, r20, 1508          # CFC
	l.bf	.LBB16_36
	l.nop	0
.LBB16_10:                              # %if.end31
	l.addi	r18, r18, 378
	l.addi	r20, r20, 756           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 2268
	l.movhi	r13, 0
	l.addi	r18, r18, 1890
	l.movhi	r23, 0
	l.addi	r20, r20, 1512          # CFC
.LBB16_11:                              # %if.end31
	l.addi	r18, r18, 379
	l.sll	r6, r6, r3
	l.movhi	r3, 64511
	l.ori	r3, r3, 65535
	l.and	r3, r6, r3
	l.andi	r7, r6, 15
	l.addi	r20, r20, 758           # CFC
	l.sfeqi	r7, 4
	l.sll	r16, r16, r13
	l.movhi	r13, 64511
	l.ori	r13, r13, 65535
	l.and	r13, r16, r13
	l.addi	r28, r28, 2274
	l.andi	r17, r16, 15
	l.sll	r26, r26, r23
	l.movhi	r23, 64511
	l.ori	r23, r23, 65535
	l.and	r23, r26, r23
	l.andi	r27, r26, 15
	l.bf	.LBB16_37
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1895
	l.sfeqi	r17, 4
	l.addi	r20, r20, 1516          # CFC
	l.bf	.LBB16_38
	l.nop	0
.LBB16_40:
	l.addi	r18, r18, 380
	l.addi	r20, r20, 760           # CFC
	l.ori	r7, r3, 0
	l.addi	r28, r28, 2280
	l.ori	r17, r13, 0
	l.addi	r18, r18, 1900
	l.ori	r27, r23, 0
	l.addi	r20, r20, 1520          # CFC
.LBB16_12:                              # %if.end31
	l.addi	r18, r18, 381
	l.addi	r20, r20, 762           # CFC
	l.addi	r7, r3, 4
	l.addi	r28, r28, 2286
	l.addi	r17, r13, 4
	l.addi	r18, r18, 1905
	l.addi	r27, r23, 4
	l.addi	r20, r20, 1524          # CFC
.LBB16_13:                              # %if.end31
	l.addi	r18, r18, 382
	l.andi	r6, r6, 7
	l.addi	r20, r20, 764           # CFC
	l.sfeqi	r6, 0
	l.addi	r28, r28, 2292
	l.andi	r16, r16, 7
	l.andi	r26, r26, 7
	l.bf	.LBB16_41
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1910
	l.sfeqi	r16, 0
	l.addi	r20, r20, 1528          # CFC
	l.bf	.LBB16_42
	l.nop	0
.LBB16_14:                              # %if.end31
	l.addi	r18, r18, 383
	l.addi	r20, r20, 766           # CFC
	l.ori	r3, r7, 0
	l.addi	r28, r28, 2298
	l.ori	r13, r17, 0
	l.addi	r18, r18, 1915
	l.ori	r23, r27, 0
	l.addi	r20, r20, 1532          # CFC
.LBB16_15:                              # %if.end31
	l.addi	r18, r18, 384
	l.movhi	r6, 1024
	l.and	r6, r3, r6
	l.addi	r20, r20, 768           # CFC
	l.sfeqi	r6, 0
	l.movhi	r16, 1024
	l.addi	r28, r28, 2304
	l.and	r16, r13, r16
	l.movhi	r26, 1024
	l.and	r26, r23, r26
	l.bf	.LBB16_43
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1920
	l.sfeqi	r16, 0
	l.addi	r20, r20, 1536          # CFC
	l.bf	.LBB16_44
	l.nop	0
.LBB16_16:                              # %if.then73
	l.addi	r18, r18, 385
	l.addi	r5, r5, 1
	l.movhi	r6, 0
	l.addi	r20, r20, 770           # CFC
	l.sfeqi	r5, 255
	l.addi	r15, r15, 1
	l.addi	r28, r28, 2310
	l.movhi	r16, 0
	l.addi	r25, r25, 1
	l.movhi	r26, 0
	l.bf	.LBB16_45
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1925
	l.sfeqi	r15, 255
	l.addi	r20, r20, 1540          # CFC
	l.bf	.LBB16_46
	l.nop	0
.LBB16_17:                              # %if.then73
	l.addi	r18, r18, 386
	l.movhi	r6, 64511
	l.ori	r6, r6, 65535
	l.addi	r20, r20, 772           # CFC
	l.and	r6, r3, r6
	l.movhi	r16, 64511
	l.addi	r28, r28, 2316
	l.ori	r16, r16, 65535
	l.and	r16, r13, r16
	l.addi	r18, r18, 1930
	l.movhi	r26, 64511
	l.ori	r26, r26, 65535
	l.and	r26, r23, r26
	l.addi	r20, r20, 1544          # CFC
.LBB16_18:                              # %if.then73
	l.addi	r18, r18, 387
	l.addi	r20, r20, 774           # CFC
	l.ori	r3, r6, 0
	l.addi	r28, r28, 2322
	l.ori	r13, r16, 0
	l.addi	r18, r18, 1935
	l.ori	r23, r26, 0
	l.addi	r20, r20, 1548          # CFC
.LBB16_19:                              # %if.end82
	l.addi	r18, r18, 388
	l.srli	r6, r3, 3
	l.sfeqi	r6, 0
	l.addi	r20, r20, 776           # CFC
	l.ori	r3, r6, 0
	l.srli	r16, r13, 3
	l.addi	r28, r28, 2328
	l.ori	r13, r16, 0
	l.srli	r26, r23, 3
	l.ori	r23, r26, 0
	l.bf	.LBB16_47
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1940
	l.sfeqi	r16, 0
	l.addi	r20, r20, 1552          # CFC
	l.bf	.LBB16_48
	l.nop	0
.LBB16_20:                              # %if.end82
	l.addi	r18, r18, 389
	l.movhi	r3, 64
	l.addi	r20, r20, 778           # CFC
	l.or	r3, r6, r3
	l.movhi	r13, 64
	l.addi	r28, r28, 2334
	l.or	r13, r16, r13
	l.addi	r18, r18, 1945
	l.movhi	r23, 64
	l.or	r23, r26, r23
	l.addi	r20, r20, 1556          # CFC
.LBB16_21:                              # %if.end82
	l.sfnei	r5, 255
	l.bf	.LBB16_49
	l.nop	0                       # in delay slot
	l.sfnei	r15, 255
	l.bf	.LBB16_50
	l.nop	0
.LBB16_22:                              # %if.end82
	l.addi	r18, r18, 390
	l.addi	r20, r20, 780           # CFC
	l.ori	r6, r3, 0
	l.addi	r28, r28, 2340
	l.ori	r16, r13, 0
	l.addi	r18, r18, 1950
	l.ori	r26, r23, 0
	l.addi	r20, r20, 1560          # CFC
.LBB16_23:                              # %do.body101
	l.addi	r18, r18, 391
	l.slli	r3, r5, 23
	l.movhi	r5, 32640
	l.and	r3, r3, r5
	l.movhi	r5, 127
	l.ori	r5, r5, 65535
	l.slli	r13, r15, 23
	l.movhi	r15, 32640
	l.addi	r20, r20, 782           # CFC
	l.and	r13, r13, r15
	l.and	r5, r6, r5
	l.movhi	r15, 127
	l.slli	r23, r25, 23
	l.or	r4, r4, r5
	l.ori	r15, r15, 65535
	l.movhi	r25, 32640
	l.or	r11, r4, r3
	l.addi	r28, r28, 2346
	l.and	r15, r16, r15
	l.and	r23, r23, r25
	l.addi	r1, r2, 0
	l.or	r14, r14, r15
	l.movhi	r25, 127
	l.lwz	r2, -4(r1)
	l.or	r8, r14, r13
	l.addi	r18, r18, 1955
	l.ori	r25, r25, 65535
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.and	r25, r26, r25
	l.or	r24, r24, r25
	l.or	r31, r24, r23
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 1564          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB16_24
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB16_24:                              # %do.body101
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB16_51
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB16_51
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB16_51
	l.nop	0
	l.nop	205
.LBB16_51:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB16_52
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB16_52
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB16_52
	l.nop	0
	l.nop	205
.LBB16_52:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB16_53
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB16_53
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB16_53
	l.nop	0
	l.nop	205
.LBB16_53:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB16_54
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB16_54
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB16_54
	l.nop	0
	l.nop	205
.LBB16_54:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB16_55
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB16_55
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB16_55
	l.nop	0
	l.nop	205
.LBB16_55:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB16_56
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB16_56
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB16_56
	l.nop	0
	l.nop	205
.LBB16_56:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB16_57
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB16_57
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB16_57
	l.nop	0
	l.nop	205
.LBB16_57:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB16_58
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB16_58
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB16_58
	l.nop	0
	l.nop	205
.LBB16_58:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB16_59
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB16_59
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB16_59
	l.nop	0
	l.nop	205
.LBB16_59:
.LBB16_60:
	l.jr	r30
	l.nop	0
.LBB16_25:
	l.addi	r18, r18, 1845
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1476          # CFC
	l.bf	.LBB16_23
	l.nop	0
.LBB16_26:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB16_24
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB16_23
	l.nop	0
	l.j	.LBB16_1
	l.nop	0
.LBB16_27:
	l.addi	r18, r18, 1850
	l.sfgtui	r15, 150
	l.addi	r20, r20, 1480          # CFC
	l.bf	.LBB16_5
	l.nop	0
.LBB16_28:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB16_24
	l.nop	0
	l.sfgtui	r5, 150
	l.bf	.LBB16_5
	l.nop	0
	l.j	.LBB16_2
	l.nop	0
.LBB16_29:
	l.addi	r18, r18, 1855
	l.sfgtsi	r13, 0
	l.addi	r20, r20, 1484          # CFC
	l.bf	.LBB16_4
	l.nop	0
.LBB16_30:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB16_24
	l.nop	0
	l.sfgtsi	r3, 0
	l.bf	.LBB16_4
	l.nop	0
	l.j	.LBB16_3
	l.nop	0
.LBB16_31:
	l.sfltui	r15, 154
	l.bf	.LBB16_9
	l.nop	0
.LBB16_32:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB16_24
	l.nop	0
	l.sfltui	r5, 154
	l.bf	.LBB16_9
	l.nop	0
	l.j	.LBB16_6
	l.nop	0
.LBB16_33:
	l.addi	r18, r18, 1870
	l.sfnei	r17, 0
	l.addi	r20, r20, 1496          # CFC
	l.bf	.LBB16_8
	l.nop	0
.LBB16_34:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB16_24
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB16_8
	l.nop	0
	l.j	.LBB16_7
	l.nop	0
.LBB16_35:
	l.addi	r18, r18, 1885
	l.sfgtsi	r13, 0
	l.addi	r20, r20, 1508          # CFC
	l.bf	.LBB16_11
	l.nop	0
.LBB16_36:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB16_24
	l.nop	0
	l.sfgtsi	r3, 0
	l.bf	.LBB16_11
	l.nop	0
	l.j	.LBB16_10
	l.nop	0
.LBB16_37:
	l.addi	r18, r18, 1895
	l.sfeqi	r17, 4
	l.addi	r20, r20, 1516          # CFC
	l.bf	.LBB16_39
	l.nop	0
.LBB16_38:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB16_24
	l.nop	0
	l.sfeqi	r7, 4
	l.bf	.LBB16_39
	l.nop	0
	l.j	.LBB16_40
	l.nop	0
.LBB16_39:
	l.addi	r18, r18, 392
	l.addi	r20, r20, 784           # CFC
	l.ori	r7, r3, 0
	l.addi	r28, r28, 2352
	l.ori	r17, r13, 0
	l.addi	r18, r18, 1960
	l.ori	r27, r23, 0
	l.addi	r20, r20, 1568          # CFC
	l.j	.LBB16_13
	l.nop	0
.LBB16_41:
	l.addi	r18, r18, 1910
	l.sfeqi	r16, 0
	l.addi	r20, r20, 1528          # CFC
	l.bf	.LBB16_15
	l.nop	0
.LBB16_42:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB16_24
	l.nop	0
	l.sfeqi	r6, 0
	l.bf	.LBB16_15
	l.nop	0
	l.j	.LBB16_14
	l.nop	0
.LBB16_43:
	l.addi	r18, r18, 1920
	l.sfeqi	r16, 0
	l.addi	r20, r20, 1536          # CFC
	l.bf	.LBB16_19
	l.nop	0
.LBB16_44:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB16_24
	l.nop	0
	l.sfeqi	r6, 0
	l.bf	.LBB16_19
	l.nop	0
	l.j	.LBB16_16
	l.nop	0
.LBB16_45:
	l.addi	r18, r18, 1925
	l.sfeqi	r15, 255
	l.addi	r20, r20, 1540          # CFC
	l.bf	.LBB16_18
	l.nop	0
.LBB16_46:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB16_24
	l.nop	0
	l.sfeqi	r5, 255
	l.bf	.LBB16_18
	l.nop	0
	l.j	.LBB16_17
	l.nop	0
.LBB16_47:
	l.addi	r18, r18, 1940
	l.sfeqi	r16, 0
	l.addi	r20, r20, 1552          # CFC
	l.bf	.LBB16_21
	l.nop	0
.LBB16_48:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB16_24
	l.nop	0
	l.sfeqi	r6, 0
	l.bf	.LBB16_21
	l.nop	0
	l.j	.LBB16_20
	l.nop	0
.LBB16_49:
	l.sfnei	r15, 255
	l.bf	.LBB16_23
	l.nop	0
.LBB16_50:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB16_24
	l.nop	0
	l.sfnei	r5, 255
	l.bf	.LBB16_23
	l.nop	0
	l.j	.LBB16_22
	l.nop	0
.Lfunc_end16:
	.size	__floatsisf, .Lfunc_end16-__floatsisf

	.hidden	int_init
	.globl	int_init
	.p2align	2
	.type	int_init,@function
int_init:                               # @int_init
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 393
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r20, r20, 786           # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -8
	l.movhi	r3, hi(int_handlers)
	l.sw	3564(r10), r19
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.ori	r3, r3, lo(int_handlers)
	l.addi	r10, r10, -8
	l.sw	7132(r21), r29
	l.addi	r5, r0, 256
	l.movhi	r13, hi(int_handlers)
	l.sw	7128(r21), r22
	l.addi	r28, r28, 2358
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
	l.addi	r18, r18, 1965
	l.movhi	r11, 0
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.movhi	r8, 0
	l.addi	r10, r12, 0
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.movhi	r31, 0
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 1572          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB17_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB17_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB17_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB17_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB17_2
	l.nop	0
	l.nop	205
.LBB17_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB17_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB17_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB17_3
	l.nop	0
	l.nop	205
.LBB17_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB17_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB17_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB17_4
	l.nop	0
	l.nop	205
.LBB17_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB17_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB17_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB17_5
	l.nop	0
	l.nop	205
.LBB17_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB17_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB17_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB17_6
	l.nop	0
	l.nop	205
.LBB17_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB17_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB17_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB17_7
	l.nop	0
	l.nop	205
.LBB17_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB17_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB17_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB17_8
	l.nop	0
	l.nop	205
.LBB17_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB17_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB17_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB17_9
	l.nop	0
	l.nop	205
.LBB17_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB17_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB17_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB17_10
	l.nop	0
	l.nop	205
.LBB17_10:
.LBB17_11:
	l.jr	r30
	l.nop	0
.Lfunc_end17:
	.size	int_init, .Lfunc_end17-int_init

	.hidden	int_add
	.globl	int_add
	.p2align	2
	.type	int_add,@function
int_add:                                # @int_add
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 394
	l.addi	r20, r20, 788           # CFC
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.addi	r11, r0, -1
	l.sfgtui	r3, 31
	l.sw	3564(r10), r19
	l.addi	r28, r28, 2364
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -16
	l.addi	r8, r0, -1
	l.sw	7132(r21), r29
	l.sw	7128(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -16           # CFC
	l.addi	r31, r0, -1
	l.bf	.LBB18_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1970
	l.sfgtui	r13, 31
	l.addi	r20, r20, 1576          # CFC
	l.bf	.LBB18_5
	l.nop	0
.LBB18_1:                               # %if.end
	l.addi	r18, r18, 395
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
	l.sw	3568(r16), r14
	l.ori	r26, r26, lo(int_handlers)
	l.addi	r20, r20, 790           # CFC
	l.add	r4, r7, r4
	l.movhi	r14, hi(int_handlers+4)
	l.slli	r27, r23, 3
	l.sw	0(r4), r5
	l.ori	r14, r14, lo(int_handlers+4)
	l.add	r26, r27, r26
	l.addi	r4, r0, 1
	l.add	r14, r17, r14
	l.sw	7136(r26), r24
	l.sll	r3, r4, r3
	l.sw	3568(r14), r15
	l.movhi	r24, hi(int_handlers+4)
	l.sw	-12(r2), r3
	l.addi	r14, r0, 1
	l.addi	r28, r28, 2370
	l.ori	r24, r24, lo(int_handlers+4)
	l.addi	r3, r0, 18432
	l.sll	r13, r14, r13
	l.add	r24, r27, r24
	l.sw	-16(r2), r3
	l.sw	3556(r12), r13
	l.sw	7136(r24), r25
	l.addi	r13, r0, 18432
	l.sw	3552(r12), r13
	l.addi	r24, r0, 1
	l.sll	r23, r24, r23
	l.sw	7124(r22), r23
	l.addi	r23, r0, 18432
	l.sw	7120(r22), r23
	l.addi	r18, r18, 1975
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.lwz	r3, -12(r2)
	l.or	r4, r11, r3
	l.lwz	r3, -16(r2)
	l.lwz	r13, 3556(r12)
	l.or	r14, r8, r13
	l.lwz	r13, 3552(r12)
	l.lwz	r23, 7124(r22)
	l.or	r24, r31, r23
	l.lwz	r23, 7120(r22)
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r11, 0
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.addi	r20, r20, 1580          # CFC
.LBB18_2:                               # %return
	l.addi	r18, r18, 396
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 792           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 2376
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.addi	r18, r18, 1980
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 1584          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB18_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB18_3:                               # %return
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB18_6
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB18_6
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB18_6
	l.nop	0
	l.nop	205
.LBB18_6:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB18_7
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB18_7
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB18_7
	l.nop	0
	l.nop	205
.LBB18_7:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB18_8
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB18_8
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB18_8
	l.nop	0
	l.nop	205
.LBB18_8:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB18_9
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB18_9
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB18_9
	l.nop	0
	l.nop	205
.LBB18_9:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB18_10
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB18_10
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB18_10
	l.nop	0
	l.nop	205
.LBB18_10:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB18_11
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB18_11
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB18_11
	l.nop	0
	l.nop	205
.LBB18_11:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB18_12
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB18_12
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB18_12
	l.nop	0
	l.nop	205
.LBB18_12:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB18_13
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB18_13
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB18_13
	l.nop	0
	l.nop	205
.LBB18_13:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB18_14
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB18_14
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB18_14
	l.nop	0
	l.nop	205
.LBB18_14:
.LBB18_15:
	l.jr	r30
	l.nop	0
.LBB18_4:
	l.addi	r18, r18, 1970
	l.sfgtui	r13, 31
	l.addi	r20, r20, 1576          # CFC
	l.bf	.LBB18_2
	l.nop	0
.LBB18_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB18_3
	l.nop	0
	l.sfgtui	r3, 31
	l.bf	.LBB18_2
	l.nop	0
	l.j	.LBB18_1
	l.nop	0
.Lfunc_end18:
	.size	int_add, .Lfunc_end18-int_add

	.hidden	int_disable
	.globl	int_disable
	.p2align	2
	.type	int_disable,@function
int_disable:                            # @int_disable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 397
	l.addi	r20, r20, 794           # CFC
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.addi	r11, r0, -1
	l.sfgtui	r3, 31
	l.sw	3564(r10), r19
	l.addi	r28, r28, 2382
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -16
	l.addi	r8, r0, -1
	l.sw	7132(r21), r29
	l.sw	7128(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -16           # CFC
	l.addi	r31, r0, -1
	l.bf	.LBB19_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1985
	l.sfgtui	r13, 31
	l.addi	r20, r20, 1588          # CFC
	l.bf	.LBB19_5
	l.nop	0
.LBB19_1:                               # %if.end
	l.addi	r18, r18, 398
	l.addi	r4, r0, 1
	l.sll	r3, r4, r3
	l.xori	r3, r3, -1
	l.sw	-12(r2), r3
	l.addi	r3, r0, 18432
	l.addi	r14, r0, 1
	l.sll	r13, r14, r13
	l.xori	r13, r13, -1
	l.addi	r20, r20, 796           # CFC
	l.sw	-16(r2), r3
	l.sw	3556(r12), r13
	l.addi	r24, r0, 1
	l.addi	r13, r0, 18432
	l.sw	3552(r12), r13
	l.sll	r23, r24, r23
	l.xori	r23, r23, -1
	l.sw	7124(r22), r23
	l.addi	r28, r28, 2388
	l.addi	r23, r0, 18432
	l.sw	7120(r22), r23
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.lwz	r3, -12(r2)
	l.and	r4, r11, r3
	l.lwz	r3, -16(r2)
	l.lwz	r13, 3556(r12)
	l.and	r14, r8, r13
	l.addi	r18, r18, 1990
	l.lwz	r13, 3552(r12)
	l.lwz	r23, 7124(r22)
	l.and	r24, r31, r23
	l.lwz	r23, 7120(r22)
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r11, 0
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.addi	r20, r20, 1592          # CFC
.LBB19_2:                               # %return
	l.addi	r18, r18, 399
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 798           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 2394
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.addi	r18, r18, 1995
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 1596          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB19_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB19_3:                               # %return
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB19_6
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB19_6
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB19_6
	l.nop	0
	l.nop	205
.LBB19_6:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB19_7
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB19_7
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB19_7
	l.nop	0
	l.nop	205
.LBB19_7:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB19_8
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB19_8
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB19_8
	l.nop	0
	l.nop	205
.LBB19_8:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB19_9
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB19_9
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB19_9
	l.nop	0
	l.nop	205
.LBB19_9:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB19_10
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB19_10
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB19_10
	l.nop	0
	l.nop	205
.LBB19_10:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB19_11
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB19_11
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB19_11
	l.nop	0
	l.nop	205
.LBB19_11:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB19_12
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB19_12
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB19_12
	l.nop	0
	l.nop	205
.LBB19_12:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB19_13
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB19_13
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB19_13
	l.nop	0
	l.nop	205
.LBB19_13:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB19_14
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB19_14
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB19_14
	l.nop	0
	l.nop	205
.LBB19_14:
.LBB19_15:
	l.jr	r30
	l.nop	0
.LBB19_4:
	l.addi	r18, r18, 1985
	l.sfgtui	r13, 31
	l.addi	r20, r20, 1588          # CFC
	l.bf	.LBB19_2
	l.nop	0
.LBB19_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB19_3
	l.nop	0
	l.sfgtui	r3, 31
	l.bf	.LBB19_2
	l.nop	0
	l.j	.LBB19_1
	l.nop	0
.Lfunc_end19:
	.size	int_disable, .Lfunc_end19-int_disable

	.hidden	int_enable
	.globl	int_enable
	.p2align	2
	.type	int_enable,@function
int_enable:                             # @int_enable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 400
	l.addi	r20, r20, 800           # CFC
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.addi	r11, r0, -1
	l.sfgtui	r3, 31
	l.sw	3564(r10), r19
	l.addi	r28, r28, 2400
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -16
	l.addi	r8, r0, -1
	l.sw	7132(r21), r29
	l.sw	7128(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -16           # CFC
	l.addi	r31, r0, -1
	l.bf	.LBB20_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2000
	l.sfgtui	r13, 31
	l.addi	r20, r20, 1600          # CFC
	l.bf	.LBB20_5
	l.nop	0
.LBB20_1:                               # %if.end
	l.addi	r18, r18, 401
	l.addi	r4, r0, 1
	l.sll	r3, r4, r3
	l.sw	-12(r2), r3
	l.addi	r3, r0, 18432
	l.sw	-16(r2), r3
	l.addi	r14, r0, 1
	l.sll	r13, r14, r13
	l.addi	r20, r20, 802           # CFC
	l.sw	3556(r12), r13
	l.addi	r13, r0, 18432
	l.sw	3552(r12), r13
	l.addi	r24, r0, 1
	l.sll	r23, r24, r23
	l.sw	7124(r22), r23
	l.addi	r23, r0, 18432
	l.addi	r28, r28, 2406
	l.sw	7120(r22), r23
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.lwz	r3, -12(r2)
	l.or	r4, r11, r3
	l.lwz	r3, -16(r2)
	l.lwz	r13, 3556(r12)
	l.or	r14, r8, r13
	l.addi	r18, r18, 2005
	l.lwz	r13, 3552(r12)
	l.lwz	r23, 7124(r22)
	l.or	r24, r31, r23
	l.lwz	r23, 7120(r22)
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r11, 0
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.addi	r20, r20, 1604          # CFC
.LBB20_2:                               # %return
	l.addi	r18, r18, 402
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 804           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 2412
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.addi	r18, r18, 2010
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 1608          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB20_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB20_3:                               # %return
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB20_6
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB20_6
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB20_6
	l.nop	0
	l.nop	205
.LBB20_6:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB20_7
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB20_7
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB20_7
	l.nop	0
	l.nop	205
.LBB20_7:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB20_8
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB20_8
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB20_8
	l.nop	0
	l.nop	205
.LBB20_8:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB20_9
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB20_9
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB20_9
	l.nop	0
	l.nop	205
.LBB20_9:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB20_10
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB20_10
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB20_10
	l.nop	0
	l.nop	205
.LBB20_10:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB20_11
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB20_11
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB20_11
	l.nop	0
	l.nop	205
.LBB20_11:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB20_12
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB20_12
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB20_12
	l.nop	0
	l.nop	205
.LBB20_12:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB20_13
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB20_13
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB20_13
	l.nop	0
	l.nop	205
.LBB20_13:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB20_14
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB20_14
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB20_14
	l.nop	0
	l.nop	205
.LBB20_14:
.LBB20_15:
	l.jr	r30
	l.nop	0
.LBB20_4:
	l.addi	r18, r18, 2000
	l.sfgtui	r13, 31
	l.addi	r20, r20, 1600          # CFC
	l.bf	.LBB20_2
	l.nop	0
.LBB20_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB20_3
	l.nop	0
	l.sfgtui	r3, 31
	l.bf	.LBB20_2
	l.nop	0
	l.j	.LBB20_1
	l.nop	0
.Lfunc_end20:
	.size	int_enable, .Lfunc_end20-int_enable

	.hidden	int_main
	.globl	int_main
	.p2align	2
	.type	int_main,@function
int_main:                               # @int_main
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 403
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r20, r20, 806           # CFC
	l.addi	r1, r1, -28
	l.addi	r3, r0, 18434
	l.sw	3564(r10), r19
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.sw	-12(r2), r3
	l.addi	r10, r10, -28
	l.sw	7132(r21), r29
	l.addi	r13, r0, 18434
	l.sw	3556(r12), r13
	l.sw	7128(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -28           # CFC
	l.addi	r28, r28, 2418
	l.addi	r23, r0, 18434
	l.sw	7124(r22), r23
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.sw	-28(r2), r11
	l.lwz	r3, -12(r2)
	l.movhi	r4, 0
	l.sw	3540(r12), r8
	l.lwz	r13, 3556(r12)
	l.movhi	r14, 0
	l.sw	7108(r22), r31
	l.lwz	r23, 7124(r22)
	l.movhi	r24, 0
	l.addi	r18, r18, 2015
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r6, 0
	l.lwz	r5, -28(r2)
	l.movhi	r3, hi(int_handlers+4)
	l.ori	r7, r3, lo(int_handlers+4)
	l.movhi	r16, 0
	l.lwz	r15, 3540(r12)
	l.movhi	r13, hi(int_handlers+4)
	l.ori	r17, r13, lo(int_handlers+4)
	l.movhi	r26, 0
	l.lwz	r25, 7108(r22)
	l.movhi	r23, hi(int_handlers+4)
	l.ori	r27, r23, lo(int_handlers+4)
	l.addi	r20, r20, 1612          # CFC
.LBB21_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 404
	l.addi	r3, r0, 1
	l.sll	r11, r3, r6
	l.and	r3, r11, r5
	l.addi	r20, r20, 808           # CFC
	l.sfeqi	r3, 0
	l.addi	r13, r0, 1
	l.sll	r8, r13, r16
	l.addi	r28, r28, 2424
	l.and	r13, r8, r15
	l.addi	r23, r0, 1
	l.sll	r31, r23, r26
	l.and	r23, r31, r25
	l.bf	.LBB21_7
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2020
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1616          # CFC
	l.bf	.LBB21_8
	l.nop	0
.LBB21_2:                               # %land.lhs.true
                                        #   in Loop: Header=BB21_1 Depth=1
	l.addi	r18, r18, 405
	l.lwz	r4, -4(r7)
	l.addi	r20, r20, 810           # CFC
	l.sfeqi	r4, 0
	l.addi	r28, r28, 2430
	l.lwz	r14, 3564(r17)
	l.lwz	r24, 7132(r27)
	l.bf	.LBB21_9
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2025
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1620          # CFC
	l.bf	.LBB21_10
	l.nop	0
.LBB21_3:                               # %if.then
                                        #   in Loop: Header=BB21_1 Depth=1
	l.addi	r18, r18, 406
	l.lwz	r3, 0(r7)
	l.sw	-12(r2), r6
	l.sw	-16(r2), r7
	l.sw	-20(r2), r11
	l.lwz	r13, 3568(r17)
	l.sw	3556(r12), r16
	l.sw	3552(r12), r17
	l.sw	3548(r12), r8
	l.lwz	r23, 7136(r27)
	l.sw	7124(r22), r26
	l.addi	r20, r20, 812           # CFC
	l.sw	7120(r22), r27
	l.sw	7116(r22), r31
	l.sfne	r4, r14
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB21_6
	l.nop	0
	l.jalr	r4
	l.nop	0                       # in delay slot
	l.addi	r3, r0, 18434
	l.sw	-24(r2), r3
	l.addi	r13, r0, 18434
	l.sw	3544(r12), r13
	l.addi	r23, r0, 18434
	l.sw	7112(r22), r23
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.lwz	r3, -20(r2)
	l.addi	r28, r28, 2436
	l.xori	r3, r3, -1
	l.and	r4, r11, r3
	l.lwz	r3, -24(r2)
	l.lwz	r13, 3548(r12)
	l.xori	r13, r13, -1
	l.and	r14, r8, r13
	l.lwz	r13, 3544(r12)
	l.lwz	r23, 7116(r22)
	l.xori	r23, r23, -1
	l.and	r24, r31, r23
	l.addi	r18, r18, 2030
	l.lwz	r23, 7112(r22)
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.lwz	r7, -16(r2)
	l.lwz	r6, -12(r2)
	l.lwz	r5, -28(r2)
	l.lwz	r17, 3552(r12)
	l.lwz	r16, 3556(r12)
	l.lwz	r15, 3540(r12)
	l.lwz	r27, 7120(r22)
	l.lwz	r26, 7124(r22)
	l.lwz	r25, 7108(r22)
	l.addi	r20, r20, 1624          # CFC
.LBB21_4:                               # %if.end
                                        #   in Loop: Header=BB21_1 Depth=1
	l.addi	r18, r18, 407
	l.addi	r7, r7, 8
	l.addi	r6, r6, 1
	l.addi	r20, r20, 814           # CFC
	l.sfnei	r6, 32
	l.addi	r17, r17, 8
	l.addi	r28, r28, 2442
	l.addi	r16, r16, 1
	l.addi	r27, r27, 8
	l.addi	r26, r26, 1
	l.bf	.LBB21_11
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2035
	l.sfnei	r16, 32
	l.addi	r20, r20, 1628          # CFC
	l.bf	.LBB21_12
	l.nop	0
.LBB21_5:                               # %while.end
                                        #   in Loop: Header=BB21_1 Depth=1
	l.addi	r18, r18, 408
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 816           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 2448
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.addi	r18, r18, 2040
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 1632          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB21_6
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB21_6:                               # %while.end
                                        #   in Loop: Header=BB21_1 Depth=1
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB21_13
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB21_13
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB21_13
	l.nop	0
	l.nop	205
.LBB21_13:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB21_14
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB21_14
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB21_14
	l.nop	0
	l.nop	205
.LBB21_14:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB21_15
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB21_15
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB21_15
	l.nop	0
	l.nop	205
.LBB21_15:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB21_16
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB21_16
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB21_16
	l.nop	0
	l.nop	205
.LBB21_16:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB21_17
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB21_17
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB21_17
	l.nop	0
	l.nop	205
.LBB21_17:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB21_18
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB21_18
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB21_18
	l.nop	0
	l.nop	205
.LBB21_18:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB21_19
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB21_19
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB21_19
	l.nop	0
	l.nop	205
.LBB21_19:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB21_20
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB21_20
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB21_20
	l.nop	0
	l.nop	205
.LBB21_20:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB21_21
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB21_21
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB21_21
	l.nop	0
	l.nop	205
.LBB21_21:
.LBB21_22:
	l.jr	r30
	l.nop	0
.LBB21_7:                               #   in Loop: Header=BB21_1 Depth=1
	l.addi	r18, r18, 2020
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1616          # CFC
	l.bf	.LBB21_4
	l.nop	0
.LBB21_8:                               #   in Loop: Header=BB21_1 Depth=1
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB21_6
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB21_4
	l.nop	0
	l.j	.LBB21_2
	l.nop	0
.LBB21_9:                               #   in Loop: Header=BB21_1 Depth=1
	l.addi	r18, r18, 2025
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1620          # CFC
	l.bf	.LBB21_4
	l.nop	0
.LBB21_10:                              #   in Loop: Header=BB21_1 Depth=1
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB21_6
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB21_4
	l.nop	0
	l.j	.LBB21_3
	l.nop	0
.LBB21_11:                              #   in Loop: Header=BB21_1 Depth=1
	l.addi	r18, r18, 2035
	l.sfnei	r16, 32
	l.addi	r20, r20, 1628          # CFC
	l.bf	.LBB21_1
	l.nop	0
.LBB21_12:                              #   in Loop: Header=BB21_1 Depth=1
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB21_6
	l.nop	0
	l.sfnei	r6, 32
	l.bf	.LBB21_1
	l.nop	0
	l.j	.LBB21_5
	l.nop	0
.Lfunc_end21:
	.size	int_main, .Lfunc_end21-int_main

	.hidden	int_clear_all_pending
	.globl	int_clear_all_pending
	.p2align	2
	.type	int_clear_all_pending,@function
int_clear_all_pending:                  # @int_clear_all_pending
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 409
	l.addi	r20, r20, 818           # CFC
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -8
	l.addi	r3, r0, 18434
	l.sw	3564(r10), r19
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.movhi	r4, 0
	l.addi	r28, r28, 2454
	l.addi	r10, r10, -8
	l.sw	7132(r21), r29
	l.addi	r13, r0, 18434
	l.movhi	r14, 0
	l.sw	7128(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -8            # CFC
	l.addi	r23, r0, 18434
	l.movhi	r24, 0
	l.addi	r18, r18, 2045
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 1636          # CFC
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
	.size	int_clear_all_pending, .Lfunc_end22-int_clear_all_pending

	.hidden	memcpy
	.globl	memcpy
	.p2align	2
	.type	memcpy,@function
memcpy:                                 # @memcpy
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 410
	l.addi	r20, r20, 820           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sfeqi	r5, 0
	l.addi	r28, r28, 2460
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.sw	7132(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.bf	.LBB23_5
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2050
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1640          # CFC
	l.bf	.LBB23_6
	l.nop	0
.LBB23_1:                               # %while.body.preheader
	l.addi	r18, r18, 411
	l.addi	r20, r20, 822           # CFC
	l.ori	r6, r3, 0
	l.addi	r28, r28, 2466
	l.ori	r16, r13, 0
	l.addi	r18, r18, 2055
	l.ori	r26, r23, 0
	l.addi	r20, r20, 1644          # CFC
.LBB23_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 412
	l.lbz	r7, 0(r4)
	l.sb	0(r6), r7
	l.addi	r6, r6, 1
	l.addi	r4, r4, 1
	l.addi	r5, r5, -1
	l.addi	r20, r20, 824           # CFC
	l.sfnei	r5, 0
	l.lbz	r17, 3568(r14)
	l.sb	3568(r16), r17
	l.addi	r16, r16, 1
	l.addi	r14, r14, 1
	l.addi	r28, r28, 2472
	l.addi	r15, r15, -1
	l.lbz	r27, 7136(r24)
	l.sb	7136(r26), r27
	l.addi	r26, r26, 1
	l.addi	r24, r24, 1
	l.addi	r25, r25, -1
	l.bf	.LBB23_7
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2060
	l.sfnei	r15, 0
	l.addi	r20, r20, 1648          # CFC
	l.bf	.LBB23_8
	l.nop	0
.LBB23_3:                               # %while.end
	l.addi	r18, r18, 413
	l.ori	r11, r3, 0
	l.addi	r1, r2, 0
	l.addi	r20, r20, 826           # CFC
	l.lwz	r2, -4(r1)
	l.ori	r8, r13, 0
	l.addi	r28, r28, 2478
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.addi	r18, r18, 2065
	l.ori	r31, r23, 0
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 1652          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB23_4
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB23_4:                               # %while.end
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB23_9
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB23_9
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB23_9
	l.nop	0
	l.nop	205
.LBB23_9:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB23_10
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB23_10
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB23_10
	l.nop	0
	l.nop	205
.LBB23_10:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB23_11
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB23_11
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB23_11
	l.nop	0
	l.nop	205
.LBB23_11:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB23_12
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB23_12
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB23_12
	l.nop	0
	l.nop	205
.LBB23_12:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB23_13
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB23_13
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB23_13
	l.nop	0
	l.nop	205
.LBB23_13:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB23_14
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB23_14
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB23_14
	l.nop	0
	l.nop	205
.LBB23_14:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB23_15
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB23_15
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB23_15
	l.nop	0
	l.nop	205
.LBB23_15:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB23_16
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB23_16
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB23_16
	l.nop	0
	l.nop	205
.LBB23_16:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB23_17
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB23_17
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB23_17
	l.nop	0
	l.nop	205
.LBB23_17:
.LBB23_18:
	l.jr	r30
	l.nop	0
.LBB23_5:
	l.addi	r18, r18, 2050
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1640          # CFC
	l.bf	.LBB23_3
	l.nop	0
.LBB23_6:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB23_4
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB23_3
	l.nop	0
	l.j	.LBB23_1
	l.nop	0
.LBB23_7:
	l.addi	r18, r18, 2060
	l.sfnei	r15, 0
	l.addi	r20, r20, 1648          # CFC
	l.bf	.LBB23_2
	l.nop	0
.LBB23_8:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB23_4
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB23_2
	l.nop	0
	l.j	.LBB23_3
	l.nop	0
.Lfunc_end23:
	.size	memcpy, .Lfunc_end23-memcpy

	.hidden	strlen
	.globl	strlen
	.p2align	2
	.type	strlen,@function
strlen:                                 # @strlen
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 414
	l.addi	r20, r20, 828           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r28, r28, 2484
	l.addi	r4, r3, -1
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.addi	r18, r18, 2070
	l.addi	r14, r13, -1
	l.sw	7132(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.addi	r24, r23, -1
	l.addi	r20, r20, 1656          # CFC
.LBB24_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 415
	l.addi	r5, r4, 1
	l.lbz	r4, 1(r4)
	l.addi	r20, r20, 830           # CFC
	l.sfnei	r4, 0
	l.addi	r15, r14, 1
	l.addi	r28, r28, 2490
	l.lbz	r14, 3569(r14)
	l.addi	r25, r24, 1
	l.lbz	r24, 7137(r24)
	l.bf	.LBB24_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2075
	l.sfnei	r14, 0
	l.addi	r20, r20, 1660          # CFC
	l.bf	.LBB24_5
	l.nop	0
.LBB24_7:
	l.addi	r18, r18, 416
	l.addi	r20, r20, 832           # CFC
	l.ori	r4, r5, 0
	l.addi	r28, r28, 2496
	l.ori	r14, r15, 0
	l.addi	r18, r18, 2080
	l.ori	r24, r25, 0
	l.addi	r20, r20, 1664          # CFC
.LBB24_2:                               # %for.end
	l.addi	r18, r18, 417
	l.sub	r11, r5, r3
	l.addi	r1, r2, 0
	l.addi	r20, r20, 834           # CFC
	l.lwz	r2, -4(r1)
	l.sub	r8, r15, r13
	l.addi	r28, r28, 2502
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.addi	r18, r18, 2085
	l.sub	r31, r25, r23
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 1668          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB24_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB24_3:                               # %for.end
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB24_8
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB24_8
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB24_8
	l.nop	0
	l.nop	205
.LBB24_8:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB24_9
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB24_9
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB24_9
	l.nop	0
	l.nop	205
.LBB24_9:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB24_10
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB24_10
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB24_10
	l.nop	0
	l.nop	205
.LBB24_10:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB24_11
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB24_11
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB24_11
	l.nop	0
	l.nop	205
.LBB24_11:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB24_12
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB24_12
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB24_12
	l.nop	0
	l.nop	205
.LBB24_12:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB24_13
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB24_13
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB24_13
	l.nop	0
	l.nop	205
.LBB24_13:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB24_14
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB24_14
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB24_14
	l.nop	0
	l.nop	205
.LBB24_14:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB24_15
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB24_15
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB24_15
	l.nop	0
	l.nop	205
.LBB24_15:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB24_16
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB24_16
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB24_16
	l.nop	0
	l.nop	205
.LBB24_16:
.LBB24_17:
	l.jr	r30
	l.nop	0
.LBB24_4:
	l.addi	r18, r18, 2075
	l.sfnei	r14, 0
	l.addi	r20, r20, 1660          # CFC
	l.bf	.LBB24_6
	l.nop	0
.LBB24_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB24_3
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB24_6
	l.nop	0
	l.j	.LBB24_7
	l.nop	0
.LBB24_6:
	l.addi	r18, r18, 418
	l.addi	r20, r20, 836           # CFC
	l.ori	r4, r5, 0
	l.addi	r28, r28, 2508
	l.ori	r14, r15, 0
	l.addi	r18, r18, 2090
	l.ori	r24, r25, 0
	l.addi	r20, r20, 1672          # CFC
	l.j	.LBB24_1
	l.nop	0
.Lfunc_end24:
	.size	strlen, .Lfunc_end24-strlen

	.hidden	memchr
	.globl	memchr
	.p2align	2
	.type	memchr,@function
memchr:                                 # @memchr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 419
	l.addi	r20, r20, 838           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r11, 0
	l.sfeqi	r5, 0
	l.sw	3564(r10), r12
	l.addi	r28, r28, 2514
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.movhi	r8, 0
	l.sw	7132(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r31, 0
	l.bf	.LBB25_6
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2095
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1676          # CFC
	l.bf	.LBB25_7
	l.nop	0
.LBB25_1:                               # %while.body.lr.ph
	l.addi	r18, r18, 420
	l.addi	r20, r20, 840           # CFC
	l.andi	r4, r4, 255
	l.addi	r28, r28, 2520
	l.andi	r14, r14, 255
	l.addi	r18, r18, 2100
	l.andi	r24, r24, 255
	l.addi	r20, r20, 1680          # CFC
.LBB25_2:                               # %while.body
	l.addi	r18, r18, 421
	l.lbz	r6, 0(r3)
	l.sfeq	r6, r4
	l.addi	r20, r20, 842           # CFC
	l.ori	r11, r3, 0
	l.lbz	r16, 3568(r13)
	l.addi	r28, r28, 2526
	l.ori	r8, r13, 0
	l.lbz	r26, 7136(r23)
	l.ori	r31, r23, 0
	l.bf	.LBB25_8
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2105
	l.sfeq	r16, r14
	l.addi	r20, r20, 1684          # CFC
	l.bf	.LBB25_9
	l.nop	0
.LBB25_3:                               # %if.end
	l.addi	r18, r18, 422
	l.addi	r3, r3, 1
	l.addi	r5, r5, -1
	l.sfnei	r5, 0
	l.addi	r20, r20, 844           # CFC
	l.movhi	r11, 0
	l.addi	r13, r13, 1
	l.addi	r15, r15, -1
	l.addi	r28, r28, 2532
	l.movhi	r8, 0
	l.addi	r23, r23, 1
	l.addi	r25, r25, -1
	l.movhi	r31, 0
	l.bf	.LBB25_10
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2110
	l.sfnei	r15, 0
	l.addi	r20, r20, 1688          # CFC
	l.bf	.LBB25_11
	l.nop	0
.LBB25_4:                               # %cleanup
	l.addi	r18, r18, 423
	l.addi	r1, r2, 0
	l.addi	r20, r20, 846           # CFC
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 2538
	l.lwz	r12, 3564(r10)
	l.addi	r18, r18, 2115
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 1692          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB25_5
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB25_5:                               # %cleanup
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB25_12
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB25_12
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB25_12
	l.nop	0
	l.nop	205
.LBB25_12:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB25_13
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB25_13
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB25_13
	l.nop	0
	l.nop	205
.LBB25_13:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB25_14
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB25_14
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB25_14
	l.nop	0
	l.nop	205
.LBB25_14:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB25_15
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB25_15
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB25_15
	l.nop	0
	l.nop	205
.LBB25_15:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB25_16
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB25_16
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB25_16
	l.nop	0
	l.nop	205
.LBB25_16:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB25_17
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB25_17
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB25_17
	l.nop	0
	l.nop	205
.LBB25_17:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB25_18
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB25_18
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB25_18
	l.nop	0
	l.nop	205
.LBB25_18:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB25_19
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB25_19
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB25_19
	l.nop	0
	l.nop	205
.LBB25_19:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB25_20
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB25_20
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB25_20
	l.nop	0
	l.nop	205
.LBB25_20:
.LBB25_21:
	l.jr	r30
	l.nop	0
.LBB25_6:
	l.addi	r18, r18, 2095
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1676          # CFC
	l.bf	.LBB25_4
	l.nop	0
.LBB25_7:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB25_5
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB25_4
	l.nop	0
	l.j	.LBB25_1
	l.nop	0
.LBB25_8:
	l.addi	r18, r18, 2105
	l.sfeq	r16, r14
	l.addi	r20, r20, 1684          # CFC
	l.bf	.LBB25_4
	l.nop	0
.LBB25_9:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB25_5
	l.nop	0
	l.sfeq	r6, r4
	l.bf	.LBB25_4
	l.nop	0
	l.j	.LBB25_3
	l.nop	0
.LBB25_10:
	l.addi	r18, r18, 2110
	l.sfnei	r15, 0
	l.addi	r20, r20, 1688          # CFC
	l.bf	.LBB25_2
	l.nop	0
.LBB25_11:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB25_5
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB25_2
	l.nop	0
	l.j	.LBB25_4
	l.nop	0
.Lfunc_end25:
	.size	memchr, .Lfunc_end25-memchr

	.hidden	rand
	.globl	rand
	.p2align	2
	.type	rand,@function
rand:                                   # @rand
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 424
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, hi(rand.lfsr)
	l.ori	r3, r3, lo(rand.lfsr)
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lwz	r4, 0(r3)
	l.movhi	r13, hi(rand.lfsr)
	l.sw	7132(r21), r22
	l.andi	r5, r4, 1
	l.addi	r20, r20, 848           # CFC
	l.ori	r13, r13, lo(rand.lfsr)
	l.addi	r22, r21, 0             # CFC
	l.movhi	r6, 0
	l.lwz	r14, 3568(r13)
	l.addi	r21, r21, -4            # CFC
	l.sub	r5, r6, r5
	l.andi	r15, r14, 1
	l.movhi	r23, hi(rand.lfsr)
	l.movhi	r6, 53248
	l.movhi	r16, 0
	l.ori	r23, r23, lo(rand.lfsr)
	l.ori	r6, r6, 1
	l.sub	r15, r16, r15
	l.lwz	r24, 7136(r23)
	l.and	r5, r5, r6
	l.movhi	r16, 53248
	l.andi	r25, r24, 1
	l.srli	r4, r4, 1
	l.addi	r28, r28, 2544
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
	l.sw	3568(r13), r8
	l.and	r25, r25, r26
	l.lwz	r4, 0(r3)
	l.movhi	r13, hi(rand.period)
	l.srli	r24, r24, 1
	l.addi	r4, r4, 1
	l.addi	r18, r18, 2120
	l.ori	r13, r13, lo(rand.period)
	l.xor	r31, r25, r24
	l.sw	0(r3), r4
	l.lwz	r14, 3568(r13)
	l.sw	7136(r23), r31
	l.addi	r1, r2, 0
	l.addi	r14, r14, 1
	l.movhi	r23, hi(rand.period)
	l.lwz	r2, -4(r1)
	l.sw	3568(r13), r14
	l.ori	r23, r23, lo(rand.period)
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.lwz	r24, 7136(r23)
	l.addi	r24, r24, 1
	l.sw	7136(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 1696          # CFC
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
	.size	rand, .Lfunc_end26-rand

	.hidden	mtspr
	.globl	mtspr
	.p2align	2
	.type	mtspr,@function
mtspr:                                  # @mtspr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 425
	l.addi	r20, r20, 850           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r28, r28, 2550
	l.addi	r10, r10, -4
	l.sw	7132(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r18, r18, 2125
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 1700          # CFC
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
	.size	mtspr, .Lfunc_end27-mtspr

	.hidden	mfspr
	.globl	mfspr
	.p2align	2
	.type	mfspr,@function
mfspr:                                  # @mfspr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 426
	l.addi	r20, r20, 852           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r28, r28, 2556
	l.addi	r10, r10, -4
	l.sw	7132(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	#APP
	l.mfspr		r11,r3,0
	#NO_APP
	l.addi	r18, r18, 2130
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 1704          # CFC
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
	.size	mfspr, .Lfunc_end28-mfspr

	.hidden	sim_putc
	.globl	sim_putc
	.p2align	2
	.type	sim_putc,@function
sim_putc:                               # @sim_putc
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 427
	l.addi	r20, r20, 854           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r28, r28, 2562
	l.addi	r10, r10, -4
	l.sw	7132(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	#APP
	l.addi	r3,r3,0
	#NO_APP
	#APP

	l.sfne	r3, r13
	
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB29_1
	l.nop	0

	l.nop 4
	#NO_APP
	l.addi	r18, r18, 2135
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 1708          # CFC
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
	.size	sim_putc, .Lfunc_end29-sim_putc

	.hidden	report
	.globl	report
	.p2align	2
	.type	report,@function
report:                                 # @report
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 428
	l.addi	r20, r20, 856           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r28, r28, 2568
	l.addi	r10, r10, -4
	l.sw	7132(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	#APP
	l.addi	r3,r3,0
	#NO_APP
	#APP
	l.nop 2
	#NO_APP
	l.addi	r18, r18, 2140
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 1712          # CFC
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
	.size	report, .Lfunc_end30-report

	.hidden	cpu_enable_user_interrupts
	.globl	cpu_enable_user_interrupts
	.p2align	2
	.type	cpu_enable_user_interrupts,@function
cpu_enable_user_interrupts:             # @cpu_enable_user_interrupts
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 429
	l.sw	-4(r1), r2
	l.addi	r20, r20, 858           # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r3, r0, 17
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.addi	r13, r0, 17
	l.addi	r28, r28, 2574
	l.sw	7132(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.addi	r23, r0, 17
	#APP
	l.mfspr		r4,r3,0
	#NO_APP
	l.ori	r4, r4, 4
	l.ori	r14, r14, 4
	l.addi	r18, r18, 2145
	l.ori	r24, r24, 4
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 1716          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB31_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB31_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB31_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB31_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB31_2
	l.nop	0
	l.nop	205
.LBB31_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB31_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB31_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB31_3
	l.nop	0
	l.nop	205
.LBB31_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB31_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB31_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB31_4
	l.nop	0
	l.nop	205
.LBB31_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB31_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB31_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB31_5
	l.nop	0
	l.nop	205
.LBB31_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB31_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB31_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB31_6
	l.nop	0
	l.nop	205
.LBB31_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB31_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB31_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB31_7
	l.nop	0
	l.nop	205
.LBB31_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB31_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB31_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB31_8
	l.nop	0
	l.nop	205
.LBB31_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB31_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB31_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB31_9
	l.nop	0
	l.nop	205
.LBB31_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB31_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB31_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB31_10
	l.nop	0
	l.nop	205
.LBB31_10:
.LBB31_11:
	l.jr	r30
	l.nop	0
.Lfunc_end31:
	.size	cpu_enable_user_interrupts, .Lfunc_end31-cpu_enable_user_interrupts

	.hidden	cpu_enable_timer
	.globl	cpu_enable_timer
	.p2align	2
	.type	cpu_enable_timer,@function
cpu_enable_timer:                       # @cpu_enable_timer
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 430
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 860           # CFC
	l.movhi	r3, 24576
	l.ori	r3, r3, 1000
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.addi	r4, r0, 20480
	l.movhi	r13, 24576
	l.sw	7132(r21), r22
	l.ori	r13, r13, 1000
	l.addi	r14, r0, 20480
	l.addi	r28, r28, 2580
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
	l.addi	r18, r18, 2150
	l.ori	r4, r4, 2
	l.ori	r14, r14, 2
	l.ori	r24, r24, 2
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 1720          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB32_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB32_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB32_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB32_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB32_2
	l.nop	0
	l.nop	205
.LBB32_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB32_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB32_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB32_3
	l.nop	0
	l.nop	205
.LBB32_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB32_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB32_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB32_4
	l.nop	0
	l.nop	205
.LBB32_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB32_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB32_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB32_5
	l.nop	0
	l.nop	205
.LBB32_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB32_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB32_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB32_6
	l.nop	0
	l.nop	205
.LBB32_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB32_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB32_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB32_7
	l.nop	0
	l.nop	205
.LBB32_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB32_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB32_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB32_8
	l.nop	0
	l.nop	205
.LBB32_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB32_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB32_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB32_9
	l.nop	0
	l.nop	205
.LBB32_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB32_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB32_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB32_10
	l.nop	0
	l.nop	205
.LBB32_10:
.LBB32_11:
	l.jr	r30
	l.nop	0
.Lfunc_end32:
	.size	cpu_enable_timer, .Lfunc_end32-cpu_enable_timer

	.hidden	cpu_disable_timer
	.globl	cpu_disable_timer
	.p2align	2
	.type	cpu_disable_timer,@function
cpu_disable_timer:                      # @cpu_disable_timer
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 431
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 862           # CFC
	l.addi	r3, r0, 17
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.addi	r13, r0, 17
	l.sw	7132(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.addi	r23, r0, 17
	#APP
	l.mfspr		r4,r3,0
	#NO_APP
	l.addi	r28, r28, 2586
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
	l.addi	r18, r18, 2155
	l.movhi	r14, 0
	l.addi	r23, r0, 20480
	l.movhi	r24, 0
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 1724          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB33_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB33_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB33_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB33_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB33_2
	l.nop	0
	l.nop	205
.LBB33_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB33_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB33_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB33_3
	l.nop	0
	l.nop	205
.LBB33_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB33_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB33_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB33_4
	l.nop	0
	l.nop	205
.LBB33_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB33_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB33_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB33_5
	l.nop	0
	l.nop	205
.LBB33_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB33_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB33_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB33_6
	l.nop	0
	l.nop	205
.LBB33_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB33_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB33_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB33_7
	l.nop	0
	l.nop	205
.LBB33_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB33_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB33_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB33_8
	l.nop	0
	l.nop	205
.LBB33_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB33_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB33_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB33_9
	l.nop	0
	l.nop	205
.LBB33_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB33_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB33_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB33_10
	l.nop	0
	l.nop	205
.LBB33_10:
.LBB33_11:
	l.jr	r30
	l.nop	0
.Lfunc_end33:
	.size	cpu_disable_timer, .Lfunc_end33-cpu_disable_timer

	.hidden	cpu_timer_tick
	.globl	cpu_timer_tick
	.p2align	2
	.type	cpu_timer_tick,@function
cpu_timer_tick:                         # @cpu_timer_tick
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 432
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, hi(timer_ticks)
	l.ori	r3, r3, lo(timer_ticks)
	l.addi	r20, r20, 864           # CFC
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lwz	r4, 0(r3)
	l.movhi	r13, hi(timer_ticks)
	l.sw	7132(r21), r22
	l.addi	r4, r4, 1
	l.ori	r13, r13, lo(timer_ticks)
	l.addi	r22, r21, 0             # CFC
	l.sw	0(r3), r4
	l.lwz	r14, 3568(r13)
	l.addi	r21, r21, -4            # CFC
	l.addi	r28, r28, 2592
	l.movhi	r3, 24576
	l.addi	r14, r14, 1
	l.movhi	r23, hi(timer_ticks)
	l.ori	r3, r3, 1000
	l.sw	3568(r13), r14
	l.ori	r23, r23, lo(timer_ticks)
	l.addi	r4, r0, 20480
	l.movhi	r13, 24576
	l.lwz	r24, 7136(r23)
	l.ori	r13, r13, 1000
	l.addi	r14, r0, 20480
	l.addi	r18, r18, 2160
	l.addi	r24, r24, 1
	l.sw	7136(r23), r24
	l.movhi	r23, 24576
	l.ori	r23, r23, 1000
	l.addi	r24, r0, 20480
	#APP
	l.mtspr		r4,r3,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 1728          # CFC
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
	.size	cpu_timer_tick, .Lfunc_end34-cpu_timer_tick

	.hidden	cpu_reset_timer_ticks
	.globl	cpu_reset_timer_ticks
	.p2align	2
	.type	cpu_reset_timer_ticks,@function
cpu_reset_timer_ticks:                  # @cpu_reset_timer_ticks
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 433
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r20, r20, 866           # CFC
	l.addi	r1, r1, -4
	l.movhi	r3, hi(timer_ticks)
	l.ori	r3, r3, lo(timer_ticks)
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.movhi	r4, 0
	l.movhi	r13, hi(timer_ticks)
	l.addi	r28, r28, 2598
	l.sw	7132(r21), r22
	l.sw	0(r3), r4
	l.ori	r13, r13, lo(timer_ticks)
	l.addi	r22, r21, 0             # CFC
	l.addi	r1, r2, 0
	l.movhi	r14, 0
	l.addi	r21, r21, -4            # CFC
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 2165
	l.sw	3568(r13), r14
	l.movhi	r23, hi(timer_ticks)
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.ori	r23, r23, lo(timer_ticks)
	l.movhi	r24, 0
	l.sw	7136(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 1732          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB35_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB35_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB35_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB35_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB35_2
	l.nop	0
	l.nop	205
.LBB35_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB35_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB35_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB35_3
	l.nop	0
	l.nop	205
.LBB35_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB35_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB35_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB35_4
	l.nop	0
	l.nop	205
.LBB35_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB35_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB35_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB35_5
	l.nop	0
	l.nop	205
.LBB35_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB35_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB35_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB35_6
	l.nop	0
	l.nop	205
.LBB35_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB35_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB35_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB35_7
	l.nop	0
	l.nop	205
.LBB35_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB35_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB35_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB35_8
	l.nop	0
	l.nop	205
.LBB35_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB35_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB35_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB35_9
	l.nop	0
	l.nop	205
.LBB35_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB35_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB35_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB35_10
	l.nop	0
	l.nop	205
.LBB35_10:
.LBB35_11:
	l.jr	r30
	l.nop	0
.Lfunc_end35:
	.size	cpu_reset_timer_ticks, .Lfunc_end35-cpu_reset_timer_ticks

	.hidden	cpu_get_timer_ticks
	.globl	cpu_get_timer_ticks
	.p2align	2
	.type	cpu_get_timer_ticks,@function
cpu_get_timer_ticks:                    # @cpu_get_timer_ticks
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 434
	l.sw	-4(r1), r2
	l.addi	r20, r20, 868           # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, hi(timer_ticks)
	l.ori	r3, r3, lo(timer_ticks)
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lwz	r11, 0(r3)
	l.addi	r28, r28, 2604
	l.movhi	r13, hi(timer_ticks)
	l.sw	7132(r21), r22
	l.addi	r1, r2, 0
	l.ori	r13, r13, lo(timer_ticks)
	l.addi	r22, r21, 0             # CFC
	l.lwz	r2, -4(r1)
	l.lwz	r8, 3568(r13)
	l.addi	r18, r18, 2170
	l.addi	r21, r21, -4            # CFC
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.movhi	r23, hi(timer_ticks)
	l.ori	r23, r23, lo(timer_ticks)
	l.lwz	r31, 7136(r23)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 1736          # CFC
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
	.size	cpu_get_timer_ticks, .Lfunc_end36-cpu_get_timer_ticks

	.hidden	cpu_sleep_10ms
	.globl	cpu_sleep_10ms
	.p2align	2
	.type	cpu_sleep_10ms,@function
cpu_sleep_10ms:                         # @cpu_sleep_10ms
# BB#0:                                 # %while.cond.preheader
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 435
	l.addi	r20, r20, 870           # CFC
	l.sw	-4(r1), r2
	l.addi	r28, r28, 2610
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r18, r18, 2175
	l.addi	r10, r10, -4
	l.sw	7132(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.addi	r20, r20, 1740          # CFC
.LBB37_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	l.j	.LBB37_1
	l.nop	0                       # in delay slot
.LBB37_2:                               # %while.cond
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB37_3
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB37_3
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB37_3
	l.nop	0
	l.nop	205
.LBB37_3:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB37_4
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB37_4
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB37_4
	l.nop	0
	l.nop	205
.LBB37_4:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB37_5
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB37_5
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB37_5
	l.nop	0
	l.nop	205
.LBB37_5:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB37_6
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB37_6
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB37_6
	l.nop	0
	l.nop	205
.LBB37_6:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB37_7
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB37_7
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB37_7
	l.nop	0
	l.nop	205
.LBB37_7:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB37_8
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB37_8
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB37_8
	l.nop	0
	l.nop	205
.LBB37_8:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB37_9
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB37_9
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB37_9
	l.nop	0
	l.nop	205
.LBB37_9:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB37_10
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB37_10
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB37_10
	l.nop	0
	l.nop	205
.LBB37_10:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB37_11
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB37_11
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB37_11
	l.nop	0
	l.nop	205
.LBB37_11:
.LBB37_12:
	l.jr	r30
	l.nop	0
.Lfunc_end37:
	.size	cpu_sleep_10ms, .Lfunc_end37-cpu_sleep_10ms

	.hidden	print_back_to_string
	.globl	print_back_to_string
	.p2align	2
	.type	print_back_to_string,@function
print_back_to_string:                   # @print_back_to_string
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 436
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -20
	l.ori	r11, r3, 0
	l.sw	3564(r10), r19
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.addi	r20, r20, 872           # CFC
	l.lwz	r5, 0(r5)
	l.addi	r10, r10, -20
	l.sw	7132(r21), r29
	l.sw	-20(r2), r6
	l.ori	r8, r13, 0
	l.sw	7128(r21), r22
	l.lwz	r6, 0(r6)
	l.lwz	r15, 3568(r15)
	l.addi	r22, r21, 0             # CFC
	l.lwz	r3, 0(r7)
	l.sw	3548(r12), r16
	l.addi	r21, r21, -20           # CFC
	l.add	r3, r3, r6
	l.lwz	r16, 3568(r16)
	l.ori	r31, r23, 0
	l.sub	r5, r5, r6
	l.lwz	r13, 3568(r17)
	l.addi	r28, r28, 2616
	l.lwz	r25, 7136(r25)
	l.addi	r6, r5, -1
	l.add	r13, r13, r16
	l.sw	7116(r22), r26
	l.sfgtu	r6, r4
	l.sub	r15, r15, r16
	l.lwz	r26, 7136(r26)
	l.sw	-12(r2), r4
	l.addi	r16, r15, -1
	l.lwz	r23, 7136(r27)
	l.ori	r5, r4, 0
	l.sw	3556(r12), r14
	l.ori	r15, r14, 0
	l.add	r23, r23, r26
	l.sub	r25, r25, r26
	l.addi	r26, r25, -1
	l.sw	7124(r22), r24
	l.ori	r25, r24, 0
	l.bf	.LBB38_6
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2180
	l.sfgtu	r16, r14
	l.addi	r20, r20, 1744          # CFC
	l.bf	.LBB38_7
	l.nop	0
.LBB38_1:                               # %entry
	l.addi	r18, r18, 437
	l.addi	r20, r20, 874           # CFC
	l.ori	r5, r6, 0
	l.addi	r28, r28, 2622
	l.ori	r15, r16, 0
	l.addi	r18, r18, 2185
	l.ori	r25, r26, 0
	l.addi	r20, r20, 1748          # CFC
.LBB38_2:                               # %entry
	l.addi	r18, r18, 438
	l.sw	-16(r2), r5
	l.ori	r4, r11, 0
	l.sw	3552(r12), r15
	l.ori	r14, r8, 0
	l.sw	7120(r22), r25
	l.addi	r20, r20, 876           # CFC
	l.ori	r24, r31, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r5, -16(r2)
	l.movhi	r11, 0
	l.lwz	r3, -12(r2)
	l.sfges	r5, r3
	l.addi	r28, r28, 2628
	l.lwz	r15, 3552(r12)
	l.movhi	r8, 0
	l.lwz	r13, 3556(r12)
	l.lwz	r25, 7120(r22)
	l.movhi	r31, 0
	l.lwz	r23, 7124(r22)
	l.bf	.LBB38_8
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2190
	l.sfges	r15, r13
	l.addi	r20, r20, 1752          # CFC
	l.bf	.LBB38_9
	l.nop	0
.LBB38_3:                               # %cleanup
	l.addi	r18, r18, 439
	l.lwz	r4, -20(r2)
	l.lwz	r3, 0(r4)
	l.add	r3, r3, r5
	l.addi	r20, r20, 878           # CFC
	l.sw	0(r4), r3
	l.addi	r11, r0, 1
	l.lwz	r14, 3548(r12)
	l.lwz	r13, 3568(r14)
	l.addi	r28, r28, 2634
	l.add	r13, r13, r15
	l.sw	3568(r14), r13
	l.addi	r8, r0, 1
	l.lwz	r24, 7116(r22)
	l.addi	r18, r18, 2195
	l.lwz	r23, 7136(r24)
	l.add	r23, r23, r25
	l.sw	7136(r24), r23
	l.addi	r31, r0, 1
	l.addi	r20, r20, 1756          # CFC
.LBB38_4:
	l.addi	r18, r18, 440
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 880           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 2640
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.addi	r18, r18, 2200
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 1760          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB38_5
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB38_5:
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB38_10
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB38_10
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB38_10
	l.nop	0
	l.nop	205
.LBB38_10:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB38_11
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB38_11
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB38_11
	l.nop	0
	l.nop	205
.LBB38_11:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB38_12
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB38_12
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB38_12
	l.nop	0
	l.nop	205
.LBB38_12:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB38_13
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB38_13
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB38_13
	l.nop	0
	l.nop	205
.LBB38_13:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB38_14
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB38_14
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB38_14
	l.nop	0
	l.nop	205
.LBB38_14:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB38_15
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB38_15
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB38_15
	l.nop	0
	l.nop	205
.LBB38_15:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB38_16
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB38_16
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB38_16
	l.nop	0
	l.nop	205
.LBB38_16:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB38_17
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB38_17
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB38_17
	l.nop	0
	l.nop	205
.LBB38_17:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB38_18
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB38_18
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB38_18
	l.nop	0
	l.nop	205
.LBB38_18:
.LBB38_19:
	l.jr	r30
	l.nop	0
.LBB38_6:
	l.addi	r18, r18, 2180
	l.sfgtu	r16, r14
	l.addi	r20, r20, 1744          # CFC
	l.bf	.LBB38_2
	l.nop	0
.LBB38_7:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_5
	l.nop	0
	l.sfgtu	r6, r4
	l.bf	.LBB38_2
	l.nop	0
	l.j	.LBB38_1
	l.nop	0
.LBB38_8:
	l.addi	r18, r18, 2190
	l.sfges	r15, r13
	l.addi	r20, r20, 1752          # CFC
	l.bf	.LBB38_4
	l.nop	0
.LBB38_9:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_5
	l.nop	0
	l.sfges	r5, r3
	l.bf	.LBB38_4
	l.nop	0
	l.j	.LBB38_3
	l.nop	0
.Lfunc_end38:
	.size	print_back_to_string, .Lfunc_end38-print_back_to_string

	.hidden	vfnprintf
	.globl	vfnprintf
	.p2align	2
	.type	vfnprintf,@function
vfnprintf:                              # @vfnprintf
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 441
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -164
	l.sw	-92(r2), r4
	l.sw	3564(r10), r19
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.sw	-104(r2), r3
	l.addi	r10, r10, -164
	l.sw	7132(r21), r29
	l.sw	-12(r2), r6
	l.addi	r20, r20, 882           # CFC
	l.sw	3476(r12), r14
	l.sw	7128(r21), r22
	l.movhi	r7, 0
	l.sw	3464(r12), r13
	l.addi	r22, r21, 0             # CFC
	l.addi	r3, r2, -53
	l.sw	3556(r12), r16
	l.addi	r21, r21, -164          # CFC
	l.addi	r4, r3, 39
	l.movhi	r17, 0
	l.sw	7044(r22), r24
	l.sw	-152(r2), r4
	l.addi	r13, r12, -53
	l.sw	7032(r22), r23
	l.addi	r3, r3, 40
	l.addi	r14, r13, 39
	l.sw	7124(r22), r26
	l.sw	-144(r2), r3
	l.sw	3416(r12), r14
	l.movhi	r27, 0
	l.movhi	r11, hi(.L.str.1)
	l.addi	r28, r28, 2646
	l.addi	r13, r13, 40
	l.addi	r23, r22, -53
	l.movhi	r3, hi(vfnprintf.blanks)
	l.sw	3424(r12), r13
	l.addi	r24, r23, 39
	l.ori	r3, r3, lo(vfnprintf.blanks)
	l.movhi	r8, hi(.L.str.1)
	l.sw	6984(r22), r24
	l.sw	-108(r2), r3
	l.movhi	r13, hi(vfnprintf.blanks)
	l.addi	r23, r23, 40
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r13, r13, lo(vfnprintf.blanks)
	l.sw	6992(r22), r23
	l.ori	r3, r3, lo(vfnprintf.zeroes)
	l.sw	3460(r12), r13
	l.movhi	r31, hi(.L.str.1)
	l.sw	-96(r2), r3
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.movhi	r23, hi(vfnprintf.blanks)
	l.movhi	r3, hi(.LJTI39_0)
	l.addi	r18, r18, 2205
	l.ori	r13, r13, lo(vfnprintf.zeroes)
	l.ori	r23, r23, lo(vfnprintf.blanks)
	l.ori	r3, r3, lo(.LJTI39_0)
	l.sw	3472(r12), r13
	l.sw	7028(r22), r23
	l.sw	-72(r2), r3
	l.movhi	r13, hi(.LJTI39_0)
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.movhi	r3, 0
	l.ori	r13, r13, lo(.LJTI39_0)
	l.ori	r23, r23, lo(vfnprintf.zeroes)
	l.sw	-128(r2), r3
	l.sw	3496(r12), r13
	l.sw	7040(r22), r23
	l.movhi	r13, 0
	l.sw	3440(r12), r13
	l.movhi	r23, hi(.LJTI39_0)
	l.ori	r23, r23, lo(.LJTI39_0)
	l.sw	7064(r22), r23
	l.movhi	r23, 0
	l.sw	7008(r22), r23
	l.addi	r20, r20, 1764          # CFC
	l.j	.LBB39_1
	l.nop	0                       # in delay slot
.LBB39_229:                             # %do.end551
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r18, r18, 442
	l.lwz	r7, -76(r2)
	l.lwz	r3, -88(r2)
	l.add	r7, r7, r3
	l.addi	r20, r20, 884           # CFC
	l.movhi	r11, hi(.L.str.1)
	l.lwz	r5, -60(r2)
	l.lwz	r17, 3492(r12)
	l.lwz	r13, 3480(r12)
	l.addi	r28, r28, 2652
	l.add	r17, r17, r13
	l.movhi	r8, hi(.L.str.1)
	l.lwz	r15, 3508(r12)
	l.lwz	r27, 7060(r22)
	l.addi	r18, r18, 2210
	l.lwz	r23, 7048(r22)
	l.add	r27, r27, r23
	l.movhi	r31, hi(.L.str.1)
	l.lwz	r25, 7076(r22)
	l.addi	r20, r20, 1768          # CFC
.LBB39_1:                               # %for.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_2 Depth 2
                                        #       Child Loop BB39_3 Depth 3
                                        #         Child Loop BB39_160 Depth 4
                                        #         Child Loop BB39_188 Depth 4
                                        #         Child Loop BB39_202 Depth 4
                                        #         Child Loop BB39_221 Depth 4
                                        #         Child Loop BB39_116 Depth 4
                                        #         Child Loop BB39_132 Depth 4
                                        #         Child Loop BB39_118 Depth 4
                                        #         Child Loop BB39_42 Depth 4
                                        #         Child Loop BB39_33 Depth 4
	l.addi	r18, r18, 443
	l.addi	r20, r20, 886           # CFC
	l.ori	r6, r7, 0
	l.addi	r28, r28, 2658
	l.ori	r16, r17, 0
	l.addi	r18, r18, 2215
	l.ori	r26, r27, 0
	l.addi	r20, r20, 1772          # CFC
	l.j	.LBB39_2
	l.nop	0                       # in delay slot
.LBB39_62:                              # %sw.bb125
                                        #   in Loop: Header=BB39_2 Depth=2
	l.addi	r18, r18, 444
	l.lwz	r4, -88(r2)
	l.andi	r3, r4, 32
	l.addi	r20, r20, 888           # CFC
	l.sfeqi	r3, 0
	l.lwz	r14, 3480(r12)
	l.addi	r28, r28, 2664
	l.andi	r13, r14, 32
	l.lwz	r24, 7048(r22)
	l.andi	r23, r24, 32
	l.bf	.LBB39_237
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2220
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1776          # CFC
	l.bf	.LBB39_238
	l.nop	0
.LBB39_63:                              # %if.then128
                                        #   in Loop: Header=BB39_2 Depth=2
	l.addi	r18, r18, 445
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.addi	r20, r20, 890           # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 7124(r22)
	l.lwz	r3, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r6, -76(r2)
	l.sw	3556(r12), r14
	l.addi	r24, r0, -4
	l.sw	4(r3), r6
	l.addi	r28, r28, 2670
	l.lwz	r13, 3568(r13)
	l.and	r23, r23, r24
	l.srai	r4, r6, 31
	l.lwz	r16, 3492(r12)
	l.addi	r24, r23, 4
	l.sw	0(r3), r4
	l.sw	3572(r13), r16
	l.sw	7124(r22), r24
	l.lwz	r5, -60(r2)
	l.addi	r18, r18, 2225
	l.srai	r14, r16, 31
	l.lwz	r23, 7136(r23)
	l.sw	3568(r13), r14
	l.lwz	r15, 3508(r12)
	l.lwz	r26, 7060(r22)
	l.sw	7140(r23), r26
	l.srai	r24, r26, 31
	l.sw	7136(r23), r24
	l.lwz	r25, 7076(r22)
	l.addi	r20, r20, 1780          # CFC
.LBB39_2:                               # %for.cond
                                        #   Parent Loop BB39_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB39_3 Depth 3
                                        #         Child Loop BB39_160 Depth 4
                                        #         Child Loop BB39_188 Depth 4
                                        #         Child Loop BB39_202 Depth 4
                                        #         Child Loop BB39_221 Depth 4
                                        #         Child Loop BB39_116 Depth 4
                                        #         Child Loop BB39_132 Depth 4
                                        #         Child Loop BB39_118 Depth 4
                                        #         Child Loop BB39_42 Depth 4
                                        #         Child Loop BB39_33 Depth 4
	l.addi	r18, r18, 446
	l.sw	-60(r2), r5
	l.addi	r20, r20, 892           # CFC
	l.ori	r4, r5, 0
	l.sw	3508(r12), r15
	l.addi	r28, r28, 2676
	l.ori	r14, r15, 0
	l.addi	r18, r18, 2230
	l.sw	7076(r22), r25
	l.ori	r24, r25, 0
	l.addi	r20, r20, 1784          # CFC
.LBB39_3:                               # %while.cond
                                        #   Parent Loop BB39_1 Depth=1
                                        #     Parent Loop BB39_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB39_160 Depth 4
                                        #         Child Loop BB39_188 Depth 4
                                        #         Child Loop BB39_202 Depth 4
                                        #         Child Loop BB39_221 Depth 4
                                        #         Child Loop BB39_116 Depth 4
                                        #         Child Loop BB39_132 Depth 4
                                        #         Child Loop BB39_118 Depth 4
                                        #         Child Loop BB39_42 Depth 4
                                        #         Child Loop BB39_33 Depth 4
	l.addi	r18, r18, 447
	l.ori	r7, r4, 0
	l.movhi	r5, 0
	l.lbz	r3, 0(r7)
	l.addi	r20, r20, 894           # CFC
	l.sfeqi	r3, 0
	l.ori	r17, r14, 0
	l.movhi	r15, 0
	l.addi	r28, r28, 2682
	l.lbz	r13, 3568(r17)
	l.ori	r27, r24, 0
	l.movhi	r25, 0
	l.lbz	r23, 7136(r27)
	l.bf	.LBB39_239
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2235
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1788          # CFC
	l.bf	.LBB39_240
	l.nop	0
.LBB39_4:                               # %while.body
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 448
	l.addi	r5, r0, 1
	l.addi	r4, r7, 1
	l.addi	r20, r20, 896           # CFC
	l.sfnei	r3, 37
	l.addi	r15, r0, 1
	l.addi	r28, r28, 2688
	l.addi	r14, r17, 1
	l.addi	r25, r0, 1
	l.addi	r24, r27, 1
	l.bf	.LBB39_241
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2240
	l.sfnei	r13, 37
	l.addi	r20, r20, 1792          # CFC
	l.bf	.LBB39_242
	l.nop	0
.LBB39_5:                               # %while.end
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 449
	l.sw	-64(r2), r5
	l.lwz	r4, -60(r2)
	l.sub	r3, r7, r4
	l.addi	r20, r20, 898           # CFC
	l.sfeqi	r3, 0
	l.sw	3504(r12), r15
	l.lwz	r14, 3508(r12)
	l.addi	r28, r28, 2694
	l.sub	r13, r17, r14
	l.sw	7072(r22), r25
	l.lwz	r24, 7076(r22)
	l.sub	r23, r27, r24
	l.bf	.LBB39_243
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2245
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1796          # CFC
	l.bf	.LBB39_244
	l.nop	0
.LBB39_6:                               # %if.then6
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 450
	l.ori	r11, r4, 0
	l.sw	-84(r2), r7
	l.ori	r7, r3, 0
	l.lwz	r3, -104(r2)
	l.add	r3, r3, r6
	l.ori	r8, r14, 0
	l.sw	3484(r12), r17
	l.ori	r17, r13, 0
	l.sw	-76(r2), r6
	l.lwz	r13, 3464(r12)
	l.ori	r31, r24, 0
	l.addi	r20, r20, 900           # CFC
	l.lwz	r4, -92(r2)
	l.add	r13, r13, r16
	l.sw	7052(r22), r27
	l.sub	r4, r4, r6
	l.sw	3492(r12), r16
	l.ori	r27, r23, 0
	l.addi	r4, r4, -1
	l.lwz	r14, 3476(r12)
	l.lwz	r23, 7032(r22)
	l.sfgtu	r4, r7
	l.sub	r14, r14, r16
	l.addi	r28, r28, 2700
	l.add	r23, r23, r26
	l.sw	-68(r2), r7
	l.addi	r14, r14, -1
	l.sw	7060(r22), r26
	l.ori	r5, r7, 0
	l.sw	3500(r12), r17
	l.ori	r15, r17, 0
	l.lwz	r24, 7044(r22)
	l.sub	r24, r24, r26
	l.addi	r24, r24, -1
	l.sw	7068(r22), r27
	l.ori	r25, r27, 0
	l.bf	.LBB39_245
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2250
	l.sfgtu	r14, r17
	l.addi	r20, r20, 1800          # CFC
	l.bf	.LBB39_246
	l.nop	0
.LBB39_7:                               # %if.then6
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 451
	l.addi	r20, r20, 902           # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 2706
	l.ori	r15, r14, 0
	l.addi	r18, r18, 2255
	l.ori	r25, r24, 0
	l.addi	r20, r20, 1804          # CFC
.LBB39_8:                               # %if.then6
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 452
	l.sw	-80(r2), r5
	l.ori	r4, r11, 0
	l.sw	3488(r12), r15
	l.ori	r14, r8, 0
	l.addi	r20, r20, 904           # CFC
	l.sw	7056(r22), r25
	l.ori	r24, r31, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r4, -80(r2)
	l.lwz	r3, -68(r2)
	l.addi	r28, r28, 2712
	l.sfges	r4, r3
	l.lwz	r14, 3488(r12)
	l.lwz	r13, 3500(r12)
	l.lwz	r24, 7056(r22)
	l.lwz	r23, 7068(r22)
	l.bf	.LBB39_247
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2260
	l.sfges	r14, r13
	l.addi	r20, r20, 1808          # CFC
	l.bf	.LBB39_248
	l.nop	0
.LBB39_9:                               # %print_back_to_string.exit
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 453
	l.addi	r20, r20, 906           # CFC
	l.lwz	r3, -76(r2)
	l.addi	r28, r28, 2718
	l.lwz	r13, 3492(r12)
	l.addi	r18, r18, 2265
	l.lwz	r23, 7060(r22)
	l.addi	r20, r20, 1812          # CFC
	l.j	.LBB39_10
	l.nop	0                       # in delay slot
.LBB39_12:                              # %if.end8
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 454
	l.lwz	r6, -76(r2)
	l.add	r6, r3, r6
	l.movhi	r11, hi(.L.str.1)
	l.addi	r20, r20, 908           # CFC
	l.lwz	r7, -84(r2)
	l.lwz	r16, 3492(r12)
	l.add	r16, r13, r16
	l.addi	r28, r28, 2724
	l.movhi	r8, hi(.L.str.1)
	l.lwz	r17, 3484(r12)
	l.lwz	r26, 7060(r22)
	l.addi	r18, r18, 2270
	l.add	r26, r23, r26
	l.movhi	r31, hi(.L.str.1)
	l.lwz	r27, 7052(r22)
	l.addi	r20, r20, 1816          # CFC
.LBB39_13:                              # %if.end9
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 455
	l.addi	r3, r0, 1
	l.lwz	r4, -92(r2)
	l.sw	-76(r2), r6
	l.addi	r20, r20, 910           # CFC
	l.sflts	r6, r4
	l.addi	r13, r0, 1
	l.lwz	r14, 3476(r12)
	l.addi	r28, r28, 2730
	l.sw	3492(r12), r16
	l.addi	r23, r0, 1
	l.lwz	r24, 7044(r22)
	l.sw	7060(r22), r26
	l.bf	.LBB39_249
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2275
	l.sflts	r16, r14
	l.addi	r20, r20, 1820          # CFC
	l.bf	.LBB39_250
	l.nop	0
.LBB39_14:                              # %if.end9
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 456
	l.addi	r20, r20, 912           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 2736
	l.movhi	r13, 0
	l.addi	r18, r18, 2280
	l.movhi	r23, 0
	l.addi	r20, r20, 1824          # CFC
.LBB39_15:                              # %if.end9
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 457
	l.lwz	r4, -64(r2)
	l.and	r3, r4, r3
	l.addi	r20, r20, 914           # CFC
	l.sfnei	r3, 1
	l.lwz	r14, 3504(r12)
	l.addi	r28, r28, 2742
	l.and	r13, r14, r13
	l.lwz	r24, 7072(r22)
	l.and	r23, r24, r23
	l.bf	.LBB39_251
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2285
	l.sfnei	r13, 1
	l.addi	r20, r20, 1828          # CFC
	l.bf	.LBB39_252
	l.nop	0
.LBB39_16:                              # %if.end15
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 458
	l.addi	r6, r0, -1
	l.movhi	r4, 0
	l.movhi	r3, 0
	l.sw	-120(r2), r3
	l.sb	-13(r2), r4
	l.addi	r16, r0, -1
	l.addi	r20, r20, 916           # CFC
	l.movhi	r14, 0
	l.movhi	r13, 0
	l.addi	r5, r7, 1
	l.sw	3448(r12), r13
	l.addi	r26, r0, -1
	l.movhi	r4, 0
	l.sb	3555(r12), r14
	l.addi	r28, r28, 2748
	l.movhi	r24, 0
	l.movhi	r3, 0
	l.addi	r15, r17, 1
	l.movhi	r23, 0
	l.sw	-88(r2), r3
	l.movhi	r14, 0
	l.sw	7016(r22), r23
	l.addi	r18, r18, 2290
	l.movhi	r13, 0
	l.sw	3480(r12), r13
	l.sb	7123(r22), r24
	l.addi	r25, r27, 1
	l.movhi	r24, 0
	l.movhi	r23, 0
	l.sw	7048(r22), r23
	l.addi	r20, r20, 1832          # CFC
	l.j	.LBB39_17
	l.nop	0                       # in delay slot
.LBB39_25:                              # %rflag
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 459
	l.lwz	r4, -68(r2)
	l.addi	r20, r20, 918           # CFC
	l.lwz	r6, -84(r2)
	l.lwz	r14, 3500(r12)
	l.addi	r28, r28, 2754
	l.lwz	r16, 3484(r12)
	l.addi	r18, r18, 2295
	l.lwz	r24, 7068(r22)
	l.lwz	r26, 7052(r22)
	l.addi	r20, r20, 1836          # CFC
.LBB39_17:                              # %rflag
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 460
	l.sw	-84(r2), r6
	l.lbs	r7, 0(r5)
	l.addi	r20, r20, 920           # CFC
	l.addi	r5, r5, 1
	l.sw	3484(r12), r16
	l.addi	r28, r28, 2760
	l.lbs	r17, 3568(r15)
	l.addi	r15, r15, 1
	l.addi	r18, r18, 2300
	l.sw	7052(r22), r26
	l.lbs	r27, 7136(r25)
	l.addi	r25, r25, 1
	l.addi	r20, r20, 1840          # CFC
	l.j	.LBB39_18
	l.nop	0                       # in delay slot
.LBB39_39:                              # %while.end50
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 461
	l.sw	-84(r2), r6
	l.ori	r5, r3, 0
	l.addi	r20, r20, 922           # CFC
	l.lwz	r4, -68(r2)
	l.sw	3484(r12), r16
	l.addi	r28, r28, 2766
	l.ori	r15, r13, 0
	l.lwz	r14, 3500(r12)
	l.addi	r18, r18, 2305
	l.sw	7052(r22), r26
	l.ori	r25, r23, 0
	l.lwz	r24, 7068(r22)
	l.addi	r20, r20, 1844          # CFC
.LBB39_18:                              # %reswitch
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 462
	l.sw	-68(r2), r4
	l.sw	-60(r2), r5
	l.sfgtui	r7, 122
	l.addi	r20, r20, 924           # CFC
	l.sw	-64(r2), r7
	l.sw	3500(r12), r14
	l.sw	3508(r12), r15
	l.addi	r28, r28, 2772
	l.sw	3504(r12), r17
	l.sw	7068(r22), r24
	l.sw	7076(r22), r25
	l.sw	7072(r22), r27
	l.bf	.LBB39_253
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2310
	l.sfgtui	r17, 122
	l.addi	r20, r20, 1848          # CFC
	l.bf	.LBB39_254
	l.nop	0
.LBB39_19:                              # %reswitch
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 463
	l.addi	r5, r0, 117
	l.addi	r6, r0, 111
	l.ori	r4, r11, lo(.L.str.1)
	l.slli	r3, r7, 2
	l.lwz	r7, -72(r2)
	l.addi	r15, r0, 117
	l.addi	r20, r20, 926           # CFC
	l.addi	r16, r0, 111
	l.ori	r14, r8, lo(.L.str.1)
	l.add	r3, r3, r7
	l.slli	r13, r17, 2
	l.addi	r25, r0, 117
	l.lwz	r7, -64(r2)
	l.addi	r28, r28, 2778
	l.lwz	r17, 3496(r12)
	l.addi	r26, r0, 111
	l.lwz	r3, 0(r3)
	l.add	r13, r13, r17
	l.ori	r24, r31, lo(.L.str.1)
	l.lwz	r17, 3504(r12)
	l.addi	r18, r18, 2315
	l.lwz	r13, 3568(r13)
	l.slli	r23, r27, 2
	l.lwz	r27, 7064(r22)
	l.add	r23, r23, r27
	l.lwz	r27, 7072(r22)
	l.lwz	r23, 7136(r23)
	l.addi	r20, r20, 1852          # CFC
	l.sfne	r3, r13
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB39_236
	l.nop	0
	l.jr	r3
	l.nop	0                       # in delay slot
.LBB39_41:                              # %do.body.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 464
	l.movhi	r4, 0
	l.addi	r20, r20, 928           # CFC
	l.lwz	r3, -60(r2)
	l.movhi	r14, 0
	l.addi	r28, r28, 2784
	l.lwz	r13, 3508(r12)
	l.addi	r18, r18, 2320
	l.movhi	r24, 0
	l.lwz	r23, 7076(r22)
	l.addi	r20, r20, 1856          # CFC
.LBB39_42:                              # %do.body
                                        #   Parent Loop BB39_1 Depth=1
                                        #     Parent Loop BB39_2 Depth=2
                                        #       Parent Loop BB39_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 465
	l.muli	r4, r4, 10
	l.add	r4, r7, r4
	l.addi	r5, r3, 1
	l.addi	r4, r4, -48
	l.lbs	r7, 0(r3)
	l.muli	r14, r14, 10
	l.addi	r20, r20, 930           # CFC
	l.add	r14, r17, r14
	l.addi	r15, r13, 1
	l.addi	r3, r7, -48
	l.addi	r14, r14, -48
	l.muli	r24, r24, 10
	l.sfltui	r3, 10
	l.addi	r28, r28, 2790
	l.lbs	r17, 3568(r13)
	l.addi	r13, r17, -48
	l.add	r24, r27, r24
	l.addi	r25, r23, 1
	l.addi	r24, r24, -48
	l.lbs	r27, 7136(r23)
	l.addi	r23, r27, -48
	l.bf	.LBB39_255
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2325
	l.sfltui	r13, 10
	l.addi	r20, r20, 1860          # CFC
	l.bf	.LBB39_256
	l.nop	0
.LBB39_258:
	l.addi	r18, r18, 466
	l.addi	r20, r20, 932           # CFC
	l.ori	r3, r5, 0
	l.addi	r28, r28, 2796
	l.ori	r13, r15, 0
	l.addi	r18, r18, 2330
	l.ori	r23, r25, 0
	l.addi	r20, r20, 1864          # CFC
.LBB39_234:                             # %do.body
                                        #   in Loop: Header=BB39_3 Depth=3
	l.j	.LBB39_18
	l.nop	0                       # in delay slot
.LBB39_30:                              # %sw.bb31
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 467
	l.lwz	r4, -60(r2)
	l.addi	r3, r4, 1
	l.lbs	r7, 0(r4)
	l.addi	r20, r20, 934           # CFC
	l.sfeqi	r7, 42
	l.lwz	r14, 3508(r12)
	l.addi	r13, r14, 1
	l.addi	r28, r28, 2802
	l.lbs	r17, 3568(r14)
	l.lwz	r24, 7076(r22)
	l.addi	r23, r24, 1
	l.lbs	r27, 7136(r24)
	l.bf	.LBB39_259
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2335
	l.sfeqi	r17, 42
	l.addi	r20, r20, 1868          # CFC
	l.bf	.LBB39_260
	l.nop	0
.LBB39_31:                              # %while.cond41.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 468
	l.movhi	r6, 0
	l.addi	r4, r7, -48
	l.addi	r20, r20, 936           # CFC
	l.sfgtui	r4, 9
	l.movhi	r16, 0
	l.addi	r28, r28, 2808
	l.addi	r14, r17, -48
	l.movhi	r26, 0
	l.addi	r24, r27, -48
	l.bf	.LBB39_261
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2340
	l.sfgtui	r14, 9
	l.addi	r20, r20, 1872          # CFC
	l.bf	.LBB39_262
	l.nop	0
.LBB39_32:                              # %while.body45.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 469
	l.movhi	r6, 0
	l.addi	r20, r20, 938           # CFC
	l.ori	r5, r3, 0
	l.movhi	r16, 0
	l.addi	r28, r28, 2814
	l.ori	r15, r13, 0
	l.addi	r18, r18, 2345
	l.movhi	r26, 0
	l.ori	r25, r23, 0
	l.addi	r20, r20, 1876          # CFC
.LBB39_33:                              # %while.body45
                                        #   Parent Loop BB39_1 Depth=1
                                        #     Parent Loop BB39_2 Depth=2
                                        #       Parent Loop BB39_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 470
	l.muli	r3, r6, 10
	l.add	r6, r3, r4
	l.addi	r3, r5, 1
	l.lbs	r7, 0(r5)
	l.addi	r4, r7, -48
	l.muli	r13, r16, 10
	l.addi	r20, r20, 940           # CFC
	l.add	r16, r13, r14
	l.addi	r13, r15, 1
	l.sfltui	r4, 10
	l.lbs	r17, 3568(r15)
	l.muli	r23, r26, 10
	l.ori	r5, r3, 0
	l.addi	r28, r28, 2820
	l.addi	r14, r17, -48
	l.ori	r15, r13, 0
	l.add	r26, r23, r24
	l.addi	r23, r25, 1
	l.lbs	r27, 7136(r25)
	l.addi	r24, r27, -48
	l.ori	r25, r23, 0
	l.bf	.LBB39_263
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2350
	l.sfltui	r14, 10
	l.addi	r20, r20, 1880          # CFC
	l.bf	.LBB39_264
	l.nop	0
.LBB39_37:                              # %while.end50
                                        #   in Loop: Header=BB39_3 Depth=3
	l.sfgtsi	r6, -1
	l.bf	.LBB39_265
	l.nop	0                       # in delay slot
	l.sfgtsi	r16, -1
	l.bf	.LBB39_266
	l.nop	0
.LBB39_38:                              # %while.end50
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 471
	l.addi	r20, r20, 942           # CFC
	l.addi	r6, r0, -1
	l.addi	r28, r28, 2826
	l.addi	r16, r0, -1
	l.addi	r18, r18, 2355
	l.addi	r26, r0, -1
	l.addi	r20, r20, 1884          # CFC
	l.j	.LBB39_39
	l.nop	0                       # in delay slot
.LBB39_20:                              # %sw.bb
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 472
	l.lwz	r3, -120(r2)
	l.andi	r3, r3, 255
	l.sfnei	r3, 0
	l.lwz	r5, -60(r2)
	l.lwz	r4, -68(r2)
	l.addi	r20, r20, 944           # CFC
	l.lwz	r6, -84(r2)
	l.lwz	r13, 3448(r12)
	l.andi	r13, r13, 255
	l.lwz	r15, 3508(r12)
	l.lwz	r14, 3500(r12)
	l.addi	r28, r28, 2832
	l.lwz	r16, 3484(r12)
	l.lwz	r23, 7016(r22)
	l.andi	r23, r23, 255
	l.lwz	r25, 7076(r22)
	l.lwz	r24, 7068(r22)
	l.lwz	r26, 7052(r22)
	l.bf	.LBB39_267
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2360
	l.sfnei	r13, 0
	l.addi	r20, r20, 1888          # CFC
	l.bf	.LBB39_268
	l.nop	0
.LBB39_21:                              # %if.then20
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 473
	l.addi	r3, r0, 32
	l.sw	-120(r2), r3
	l.addi	r20, r20, 946           # CFC
	l.sb	-13(r2), r3
	l.addi	r13, r0, 32
	l.addi	r28, r28, 2838
	l.sw	3448(r12), r13
	l.sb	3555(r12), r13
	l.addi	r18, r18, 2365
	l.addi	r23, r0, 32
	l.sw	7016(r22), r23
	l.sb	7123(r22), r23
	l.addi	r20, r20, 1892          # CFC
	l.j	.LBB39_17
	l.nop	0                       # in delay slot
.LBB39_22:                              # %sw.bb22
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 474
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 948           # CFC
	l.ori	r3, r3, 1
	l.lwz	r13, 3480(r12)
	l.addi	r28, r28, 2844
	l.ori	r13, r13, 1
	l.addi	r18, r18, 2370
	l.lwz	r23, 7048(r22)
	l.ori	r23, r23, 1
	l.addi	r20, r20, 1896          # CFC
	l.j	.LBB39_23
	l.nop	0                       # in delay slot
.LBB39_26:                              # %sw.bb23
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 475
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.addi	r20, r20, 950           # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 7124(r22)
	l.lwz	r4, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.sfgtsi	r4, -1
	l.sw	3556(r12), r14
	l.addi	r24, r0, -4
	l.lwz	r5, -60(r2)
	l.addi	r28, r28, 2850
	l.lwz	r14, 3568(r13)
	l.and	r23, r23, r24
	l.lwz	r6, -84(r2)
	l.lwz	r15, 3508(r12)
	l.lwz	r16, 3484(r12)
	l.addi	r24, r23, 4
	l.sw	7124(r22), r24
	l.lwz	r24, 7136(r23)
	l.lwz	r25, 7076(r22)
	l.lwz	r26, 7052(r22)
	l.bf	.LBB39_269
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2375
	l.sfgtsi	r14, -1
	l.addi	r20, r20, 1900          # CFC
	l.bf	.LBB39_270
	l.nop	0
.LBB39_27:                              # %if.end27
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 476
	l.movhi	r3, 0
	l.sub	r4, r3, r4
	l.addi	r20, r20, 952           # CFC
	l.sw	-68(r2), r4
	l.movhi	r13, 0
	l.addi	r28, r28, 2856
	l.sub	r14, r13, r14
	l.sw	3500(r12), r14
	l.addi	r18, r18, 2380
	l.movhi	r23, 0
	l.sub	r24, r23, r24
	l.sw	7068(r22), r24
	l.addi	r20, r20, 1904          # CFC
.LBB39_28:                              # %sw.bb28
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 477
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 954           # CFC
	l.ori	r3, r3, 4
	l.lwz	r13, 3480(r12)
	l.addi	r28, r28, 2862
	l.ori	r13, r13, 4
	l.addi	r18, r18, 2385
	l.lwz	r23, 7048(r22)
	l.ori	r23, r23, 4
	l.addi	r20, r20, 1908          # CFC
	l.j	.LBB39_23
	l.nop	0                       # in delay slot
.LBB39_29:                              # %sw.bb30
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 478
	l.addi	r3, r0, 43
	l.sw	-120(r2), r3
	l.addi	r20, r20, 956           # CFC
	l.sb	-13(r2), r3
	l.addi	r13, r0, 43
	l.addi	r28, r28, 2868
	l.sw	3448(r12), r13
	l.sb	3555(r12), r13
	l.addi	r18, r18, 2390
	l.addi	r23, r0, 43
	l.sw	7016(r22), r23
	l.sb	7123(r22), r23
	l.addi	r20, r20, 1912          # CFC
	l.j	.LBB39_24
	l.nop	0                       # in delay slot
.LBB39_40:                              # %sw.bb57
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 479
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 958           # CFC
	l.ori	r3, r3, 128
	l.lwz	r13, 3480(r12)
	l.addi	r28, r28, 2874
	l.ori	r13, r13, 128
	l.addi	r18, r18, 2395
	l.lwz	r23, 7048(r22)
	l.ori	r23, r23, 128
	l.addi	r20, r20, 1916          # CFC
	l.j	.LBB39_23
	l.nop	0                       # in delay slot
.LBB39_43:                              # %sw.bb68
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 480
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 960           # CFC
	l.ori	r3, r3, 64
	l.lwz	r13, 3480(r12)
	l.addi	r28, r28, 2880
	l.ori	r13, r13, 64
	l.addi	r18, r18, 2400
	l.lwz	r23, 7048(r22)
	l.ori	r23, r23, 64
	l.addi	r20, r20, 1920          # CFC
	l.j	.LBB39_23
	l.nop	0                       # in delay slot
.LBB39_44:                              # %sw.bb70
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 481
	l.lwz	r5, -60(r2)
	l.lbz	r3, 0(r5)
	l.addi	r20, r20, 962           # CFC
	l.sfnei	r3, 108
	l.lwz	r15, 3508(r12)
	l.addi	r28, r28, 2886
	l.lbz	r13, 3568(r15)
	l.lwz	r25, 7076(r22)
	l.lbz	r23, 7136(r25)
	l.bf	.LBB39_271
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2405
	l.sfnei	r13, 108
	l.addi	r20, r20, 1924          # CFC
	l.bf	.LBB39_272
	l.nop	0
.LBB39_45:                              # %if.then74
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 482
	l.lwz	r3, -88(r2)
	l.ori	r3, r3, 32
	l.sw	-88(r2), r3
	l.addi	r20, r20, 964           # CFC
	l.addi	r5, r5, 1
	l.lwz	r13, 3480(r12)
	l.ori	r13, r13, 32
	l.addi	r28, r28, 2892
	l.sw	3480(r12), r13
	l.addi	r15, r15, 1
	l.lwz	r23, 7048(r22)
	l.addi	r18, r18, 2410
	l.ori	r23, r23, 32
	l.sw	7048(r22), r23
	l.addi	r25, r25, 1
	l.addi	r20, r20, 1928          # CFC
	l.j	.LBB39_25
	l.nop	0                       # in delay slot
.LBB39_47:                              # %sw.bb79
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 483
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 966           # CFC
	l.ori	r3, r3, 32
	l.lwz	r13, 3480(r12)
	l.addi	r28, r28, 2898
	l.ori	r13, r13, 32
	l.addi	r18, r18, 2415
	l.lwz	r23, 7048(r22)
	l.ori	r23, r23, 32
	l.addi	r20, r20, 1932          # CFC
	l.j	.LBB39_23
	l.nop	0                       # in delay slot
.LBB39_143:                             # %sw.bb374
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 484
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 968           # CFC
	l.ori	r3, r3, 512
	l.lwz	r13, 3480(r12)
	l.addi	r28, r28, 2904
	l.ori	r13, r13, 512
	l.addi	r18, r18, 2420
	l.lwz	r23, 7048(r22)
	l.ori	r23, r23, 512
	l.addi	r20, r20, 1936          # CFC
.LBB39_23:                              # %rflag
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 485
	l.addi	r20, r20, 970           # CFC
	l.sw	-88(r2), r3
	l.addi	r28, r28, 2910
	l.sw	3480(r12), r13
	l.addi	r18, r18, 2425
	l.sw	7048(r22), r23
	l.addi	r20, r20, 1940          # CFC
.LBB39_24:                              # %rflag
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 486
	l.addi	r20, r20, 972           # CFC
	l.lwz	r5, -60(r2)
	l.addi	r28, r28, 2916
	l.lwz	r15, 3508(r12)
	l.addi	r18, r18, 2430
	l.lwz	r25, 7076(r22)
	l.addi	r20, r20, 1944          # CFC
	l.j	.LBB39_25
	l.nop	0                       # in delay slot
.LBB39_46:                              # %if.else
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 487
	l.lwz	r3, -88(r2)
	l.ori	r3, r3, 16
	l.addi	r20, r20, 974           # CFC
	l.sw	-88(r2), r3
	l.lwz	r13, 3480(r12)
	l.addi	r28, r28, 2922
	l.ori	r13, r13, 16
	l.sw	3480(r12), r13
	l.addi	r18, r18, 2435
	l.lwz	r23, 7048(r22)
	l.ori	r23, r23, 16
	l.sw	7048(r22), r23
	l.addi	r20, r20, 1948          # CFC
	l.j	.LBB39_25
	l.nop	0                       # in delay slot
.LBB39_34:                              # %if.then36
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 488
	l.lwz	r4, -12(r2)
	l.addi	r4, r4, 3
	l.addi	r5, r0, -4
	l.and	r4, r4, r5
	l.addi	r5, r4, 4
	l.lwz	r14, 3556(r12)
	l.addi	r14, r14, 3
	l.addi	r20, r20, 976           # CFC
	l.addi	r15, r0, -4
	l.sw	-12(r2), r5
	l.and	r14, r14, r15
	l.lwz	r24, 7124(r22)
	l.lwz	r6, 0(r4)
	l.addi	r15, r14, 4
	l.addi	r24, r24, 3
	l.addi	r28, r28, 2928
	l.sfgtsi	r6, -1
	l.sw	3556(r12), r15
	l.lwz	r16, 3568(r14)
	l.addi	r25, r0, -4
	l.and	r24, r24, r25
	l.addi	r25, r24, 4
	l.sw	7124(r22), r25
	l.lwz	r26, 7136(r24)
	l.bf	.LBB39_273
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2440
	l.sfgtsi	r16, -1
	l.addi	r20, r20, 1952          # CFC
	l.bf	.LBB39_274
	l.nop	0
.LBB39_35:                              # %if.then36
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 489
	l.addi	r20, r20, 978           # CFC
	l.addi	r6, r0, -1
	l.addi	r28, r28, 2934
	l.addi	r16, r0, -1
	l.addi	r18, r18, 2445
	l.addi	r26, r0, -1
	l.addi	r20, r20, 1956          # CFC
.LBB39_36:                              # %if.then36
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 490
	l.ori	r5, r3, 0
	l.addi	r20, r20, 980           # CFC
	l.lwz	r4, -68(r2)
	l.ori	r15, r13, 0
	l.addi	r28, r28, 2940
	l.lwz	r14, 3500(r12)
	l.addi	r18, r18, 2450
	l.ori	r25, r23, 0
	l.lwz	r24, 7068(r22)
	l.addi	r20, r20, 1960          # CFC
	l.j	.LBB39_17
	l.nop	0                       # in delay slot
.LBB39_64:                              # %if.else131
                                        #   in Loop: Header=BB39_2 Depth=2
	l.addi	r18, r18, 491
	l.andi	r3, r4, 16
	l.addi	r20, r20, 982           # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 2946
	l.andi	r13, r14, 16
	l.andi	r23, r24, 16
	l.bf	.LBB39_275
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2455
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1964          # CFC
	l.bf	.LBB39_276
	l.nop	0
.LBB39_65:                              # %if.then134
                                        #   in Loop: Header=BB39_2 Depth=2
	l.addi	r18, r18, 492
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r20, r20, 984           # CFC
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 7124(r22)
	l.lwz	r3, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r6, -76(r2)
	l.addi	r28, r28, 2952
	l.sw	3556(r12), r14
	l.addi	r24, r0, -4
	l.sw	0(r3), r6
	l.lwz	r13, 3568(r13)
	l.and	r23, r23, r24
	l.lwz	r5, -60(r2)
	l.lwz	r16, 3492(r12)
	l.addi	r18, r18, 2460
	l.addi	r24, r23, 4
	l.sw	3568(r13), r16
	l.lwz	r15, 3508(r12)
	l.sw	7124(r22), r24
	l.lwz	r23, 7136(r23)
	l.lwz	r26, 7060(r22)
	l.sw	7136(r23), r26
	l.lwz	r25, 7076(r22)
	l.addi	r20, r20, 1968          # CFC
	l.j	.LBB39_2
	l.nop	0                       # in delay slot
.LBB39_66:                              # %if.else136
                                        #   in Loop: Header=BB39_2 Depth=2
	l.addi	r18, r18, 493
	l.andi	r3, r4, 64
	l.addi	r20, r20, 986           # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 2958
	l.andi	r13, r14, 64
	l.andi	r23, r24, 64
	l.bf	.LBB39_277
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2465
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1972          # CFC
	l.bf	.LBB39_278
	l.nop	0
.LBB39_67:                              # %if.then139
                                        #   in Loop: Header=BB39_2 Depth=2
	l.addi	r18, r18, 494
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r20, r20, 988           # CFC
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 7124(r22)
	l.lwz	r3, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r6, -76(r2)
	l.addi	r28, r28, 2964
	l.sw	3556(r12), r14
	l.addi	r24, r0, -4
	l.sh	0(r3), r6
	l.lwz	r13, 3568(r13)
	l.and	r23, r23, r24
	l.lwz	r5, -60(r2)
	l.lwz	r16, 3492(r12)
	l.addi	r18, r18, 2470
	l.addi	r24, r23, 4
	l.sh	3568(r13), r16
	l.lwz	r15, 3508(r12)
	l.sw	7124(r22), r24
	l.lwz	r23, 7136(r23)
	l.lwz	r26, 7060(r22)
	l.sh	7136(r23), r26
	l.lwz	r25, 7076(r22)
	l.addi	r20, r20, 1976          # CFC
	l.j	.LBB39_2
	l.nop	0                       # in delay slot
.LBB39_61:                              # %sw.bb123
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 495
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r3, r3, 4
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r3
	l.addi	r20, r20, 990           # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 7124(r22)
	l.movhi	r7, 0
	l.addi	r13, r13, 4
	l.addi	r23, r23, 3
	l.sb	-13(r2), r7
	l.sw	3556(r12), r13
	l.addi	r24, r0, -4
	l.movhi	r3, hi(.L.str.8)
	l.addi	r28, r28, 2970
	l.movhi	r17, 0
	l.and	r23, r23, r24
	l.ori	r3, r3, lo(.L.str.8)
	l.sb	3555(r12), r17
	l.addi	r23, r23, 4
	l.sw	-136(r2), r3
	l.movhi	r13, hi(.L.str.8)
	l.sw	7124(r22), r23
	l.movhi	r4, 0
	l.addi	r18, r18, 2475
	l.ori	r13, r13, lo(.L.str.8)
	l.movhi	r27, 0
	l.sw	3432(r12), r13
	l.movhi	r14, 0
	l.sb	7123(r22), r27
	l.movhi	r23, hi(.L.str.8)
	l.ori	r23, r23, lo(.L.str.8)
	l.sw	7000(r22), r23
	l.movhi	r24, 0
	l.addi	r20, r20, 1980          # CFC
	l.j	.LBB39_146
	l.nop	0                       # in delay slot
.LBB39_144:                             # %if.end380
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 496
	l.sb	-53(r2), r7
	l.addi	r4, r0, 1
	l.movhi	r7, 0
	l.addi	r20, r20, 992           # CFC
	l.sb	-13(r2), r7
	l.sb	3515(r12), r17
	l.addi	r14, r0, 1
	l.addi	r28, r28, 2976
	l.movhi	r17, 0
	l.sb	3555(r12), r17
	l.sb	7083(r22), r27
	l.addi	r18, r18, 2480
	l.addi	r24, r0, 1
	l.movhi	r27, 0
	l.sb	7123(r22), r27
	l.addi	r20, r20, 1984          # CFC
	l.j	.LBB39_145
	l.nop	0                       # in delay slot
.LBB39_49:                              # %sw.bb84
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 497
	l.addi	r7, r0, 68
	l.lwz	r3, -88(r2)
	l.ori	r3, r3, 16
	l.addi	r20, r20, 994           # CFC
	l.sw	-88(r2), r3
	l.addi	r17, r0, 68
	l.lwz	r13, 3480(r12)
	l.addi	r28, r28, 2982
	l.ori	r13, r13, 16
	l.sw	3480(r12), r13
	l.addi	r27, r0, 68
	l.addi	r18, r18, 2485
	l.lwz	r23, 7048(r22)
	l.ori	r23, r23, 16
	l.sw	7048(r22), r23
	l.addi	r20, r20, 1988          # CFC
.LBB39_50:                              # %sw.bb86
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 498
	l.lwz	r5, -88(r2)
	l.andi	r3, r5, 32
	l.sfeqi	r3, 0
	l.addi	r20, r20, 996           # CFC
	l.sw	-64(r2), r7
	l.lwz	r15, 3480(r12)
	l.andi	r13, r15, 32
	l.addi	r28, r28, 2988
	l.sw	3504(r12), r17
	l.lwz	r25, 7048(r22)
	l.andi	r23, r25, 32
	l.sw	7072(r22), r27
	l.bf	.LBB39_279
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2490
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1992          # CFC
	l.bf	.LBB39_280
	l.nop	0
.LBB39_51:                              # %cond.true88
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 499
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.addi	r20, r20, 998           # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 7124(r22)
	l.lwz	r6, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r3, -12(r2)
	l.sw	3556(r12), r14
	l.addi	r24, r0, -4
	l.addi	r4, r3, 4
	l.lwz	r16, 3568(r13)
	l.addi	r28, r28, 2994
	l.and	r23, r23, r24
	l.sw	-12(r2), r4
	l.lwz	r13, 3556(r12)
	l.addi	r24, r23, 4
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.sw	7124(r22), r24
	l.lwz	r7, -84(r2)
	l.sw	3556(r12), r14
	l.lwz	r26, 7136(r23)
	l.addi	r18, r18, 2495
	l.lwz	r4, -120(r2)
	l.lwz	r8, 3568(r13)
	l.lwz	r23, 7124(r22)
	l.lwz	r17, 3484(r12)
	l.lwz	r14, 3448(r12)
	l.addi	r24, r23, 4
	l.sw	7124(r22), r24
	l.lwz	r31, 7136(r23)
	l.lwz	r27, 7052(r22)
	l.lwz	r24, 7016(r22)
	l.addi	r20, r20, 1996          # CFC
	l.j	.LBB39_57
	l.nop	0                       # in delay slot
.LBB39_52:                              # %cond.false90
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 500
	l.andi	r3, r5, 16
	l.addi	r20, r20, 1000          # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 3000
	l.andi	r13, r15, 16
	l.andi	r23, r25, 16
	l.bf	.LBB39_281
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2500
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2000          # CFC
	l.bf	.LBB39_282
	l.nop	0
.LBB39_53:                              # %cond.true93
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 501
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 3556(r12)
	l.addi	r20, r20, 1002          # CFC
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 7124(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r28, r28, 3006
	l.addi	r23, r23, 3
	l.lwz	r7, -84(r2)
	l.sw	3556(r12), r14
	l.addi	r24, r0, -4
	l.lwz	r4, -120(r2)
	l.lwz	r8, 3568(r13)
	l.and	r23, r23, r24
	l.addi	r18, r18, 2505
	l.lwz	r17, 3484(r12)
	l.lwz	r14, 3448(r12)
	l.addi	r24, r23, 4
	l.sw	7124(r22), r24
	l.lwz	r31, 7136(r23)
	l.lwz	r27, 7052(r22)
	l.lwz	r24, 7016(r22)
	l.addi	r20, r20, 2004          # CFC
	l.j	.LBB39_56
	l.nop	0                       # in delay slot
.LBB39_68:                              # %sw.bb153
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 502
	l.addi	r6, r0, 79
	l.lwz	r3, -88(r2)
	l.ori	r3, r3, 16
	l.addi	r20, r20, 1004          # CFC
	l.sw	-88(r2), r3
	l.addi	r16, r0, 79
	l.lwz	r13, 3480(r12)
	l.addi	r28, r28, 3012
	l.ori	r13, r13, 16
	l.sw	3480(r12), r13
	l.addi	r26, r0, 79
	l.addi	r18, r18, 2510
	l.lwz	r23, 7048(r22)
	l.ori	r23, r23, 16
	l.sw	7048(r22), r23
	l.addi	r20, r20, 2008          # CFC
.LBB39_69:                              # %sw.bb155
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 503
	l.lwz	r5, -88(r2)
	l.andi	r3, r5, 32
	l.addi	r20, r20, 1006          # CFC
	l.sfeqi	r3, 0
	l.lwz	r15, 3480(r12)
	l.addi	r28, r28, 3018
	l.andi	r13, r15, 32
	l.lwz	r25, 7048(r22)
	l.andi	r23, r25, 32
	l.bf	.LBB39_283
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2515
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2012          # CFC
	l.bf	.LBB39_284
	l.nop	0
.LBB39_70:                              # %cond.true158
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 504
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 7124(r22)
	l.lwz	r7, 0(r3)
	l.addi	r20, r20, 1008          # CFC
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r4, -12(r2)
	l.sw	3556(r12), r14
	l.addi	r24, r0, -4
	l.addi	r3, r4, 4
	l.lwz	r17, 3568(r13)
	l.and	r23, r23, r24
	l.sw	-12(r2), r3
	l.lwz	r14, 3556(r12)
	l.addi	r24, r23, 4
	l.movhi	r3, 0
	l.addi	r28, r28, 3024
	l.addi	r13, r14, 4
	l.sw	7124(r22), r24
	l.sw	-112(r2), r3
	l.sw	3556(r12), r13
	l.lwz	r27, 7136(r23)
	l.lwz	r11, 0(r4)
	l.movhi	r13, 0
	l.lwz	r24, 7124(r22)
	l.sw	-64(r2), r6
	l.sw	3456(r12), r13
	l.addi	r23, r24, 4
	l.ori	r6, r7, 0
	l.addi	r18, r18, 2520
	l.lwz	r8, 3568(r14)
	l.sw	7124(r22), r23
	l.lwz	r7, -84(r2)
	l.sw	3504(r12), r16
	l.movhi	r23, 0
	l.ori	r16, r17, 0
	l.lwz	r17, 3484(r12)
	l.sw	7024(r22), r23
	l.lwz	r31, 7136(r24)
	l.sw	7072(r22), r26
	l.ori	r26, r27, 0
	l.lwz	r27, 7052(r22)
	l.addi	r20, r20, 2016          # CFC
	l.j	.LBB39_107
	l.nop	0                       # in delay slot
.LBB39_86:                              # %sw.bb217
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 505
	l.addi	r5, r0, 85
	l.lwz	r3, -88(r2)
	l.ori	r3, r3, 16
	l.addi	r20, r20, 1010          # CFC
	l.sw	-88(r2), r3
	l.addi	r15, r0, 85
	l.lwz	r13, 3480(r12)
	l.addi	r28, r28, 3030
	l.ori	r13, r13, 16
	l.sw	3480(r12), r13
	l.addi	r25, r0, 85
	l.addi	r18, r18, 2525
	l.lwz	r23, 7048(r22)
	l.ori	r23, r23, 16
	l.sw	7048(r22), r23
	l.addi	r20, r20, 2020          # CFC
.LBB39_87:                              # %sw.bb219
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 506
	l.lwz	r6, -88(r2)
	l.andi	r3, r6, 32
	l.addi	r20, r20, 1012          # CFC
	l.sfeqi	r3, 0
	l.lwz	r16, 3480(r12)
	l.addi	r28, r28, 3036
	l.andi	r13, r16, 32
	l.lwz	r26, 7048(r22)
	l.andi	r23, r26, 32
	l.bf	.LBB39_285
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2530
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2024          # CFC
	l.bf	.LBB39_286
	l.nop	0
.LBB39_88:                              # %cond.true222
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 507
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 7124(r22)
	l.lwz	r7, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r20, r20, 1014          # CFC
	l.addi	r23, r23, 3
	l.lwz	r4, -12(r2)
	l.sw	3556(r12), r14
	l.addi	r24, r0, -4
	l.addi	r3, r4, 4
	l.lwz	r17, 3568(r13)
	l.and	r23, r23, r24
	l.sw	-12(r2), r3
	l.lwz	r14, 3556(r12)
	l.addi	r24, r23, 4
	l.addi	r3, r0, 1
	l.addi	r13, r14, 4
	l.sw	7124(r22), r24
	l.sw	-112(r2), r3
	l.addi	r28, r28, 3042
	l.sw	3556(r12), r13
	l.lwz	r27, 7136(r23)
	l.lwz	r11, 0(r4)
	l.addi	r13, r0, 1
	l.lwz	r24, 7124(r22)
	l.sw	-64(r2), r5
	l.sw	3456(r12), r13
	l.addi	r23, r24, 4
	l.lwz	r4, -84(r2)
	l.lwz	r8, 3568(r14)
	l.sw	7124(r22), r23
	l.ori	r5, r6, 0
	l.sw	3504(r12), r15
	l.addi	r18, r18, 2535
	l.addi	r23, r0, 1
	l.ori	r6, r7, 0
	l.lwz	r14, 3484(r12)
	l.sw	7024(r22), r23
	l.ori	r7, r4, 0
	l.ori	r15, r16, 0
	l.lwz	r31, 7136(r24)
	l.ori	r16, r17, 0
	l.ori	r17, r14, 0
	l.sw	7072(r22), r25
	l.lwz	r24, 7052(r22)
	l.ori	r25, r26, 0
	l.ori	r26, r27, 0
	l.ori	r27, r24, 0
	l.addi	r20, r20, 2028          # CFC
	l.j	.LBB39_107
	l.nop	0                       # in delay slot
.LBB39_94:                              # %hex.loopexit
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 508
	l.movhi	r3, hi(.L.str.3)
	l.addi	r20, r20, 1016          # CFC
	l.ori	r4, r3, lo(.L.str.3)
	l.movhi	r13, hi(.L.str.3)
	l.addi	r28, r28, 3048
	l.ori	r14, r13, lo(.L.str.3)
	l.addi	r18, r18, 2540
	l.movhi	r23, hi(.L.str.3)
	l.ori	r24, r23, lo(.L.str.3)
	l.addi	r20, r20, 2032          # CFC
.LBB39_95:                              # %hex
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 509
	l.lwz	r5, -88(r2)
	l.andi	r3, r5, 32
	l.addi	r20, r20, 1018          # CFC
	l.sfeqi	r3, 0
	l.lwz	r15, 3480(r12)
	l.addi	r28, r28, 3054
	l.andi	r13, r15, 32
	l.lwz	r25, 7048(r22)
	l.andi	r23, r25, 32
	l.bf	.LBB39_287
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2545
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2036          # CFC
	l.bf	.LBB39_288
	l.nop	0
.LBB39_96:                              # %cond.true256
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 510
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r5, r0, -4
	l.and	r3, r3, r5
	l.addi	r5, r3, 4
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r15, r0, -4
	l.sw	-12(r2), r5
	l.addi	r20, r20, 1020          # CFC
	l.and	r13, r13, r15
	l.lwz	r23, 7124(r22)
	l.lwz	r6, 0(r3)
	l.addi	r15, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r3, -12(r2)
	l.sw	3556(r12), r15
	l.addi	r25, r0, -4
	l.addi	r5, r3, 4
	l.addi	r28, r28, 3060
	l.lwz	r16, 3568(r13)
	l.and	r23, r23, r25
	l.sw	-12(r2), r5
	l.lwz	r13, 3556(r12)
	l.addi	r25, r23, 4
	l.lwz	r5, -88(r2)
	l.addi	r15, r13, 4
	l.sw	7124(r22), r25
	l.lwz	r11, 0(r3)
	l.addi	r18, r18, 2550
	l.sw	3556(r12), r15
	l.lwz	r26, 7136(r23)
	l.lwz	r15, 3480(r12)
	l.lwz	r8, 3568(r13)
	l.lwz	r23, 7124(r22)
	l.addi	r25, r23, 4
	l.sw	7124(r22), r25
	l.lwz	r25, 7048(r22)
	l.lwz	r31, 7136(r23)
	l.addi	r20, r20, 2040          # CFC
	l.j	.LBB39_102
	l.nop	0                       # in delay slot
.LBB39_48:                              # %sw.bb81
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 511
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.addi	r20, r20, 1022          # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 7124(r22)
	l.lwz	r3, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.sb	-53(r2), r3
	l.sw	3556(r12), r14
	l.addi	r24, r0, -4
	l.addi	r4, r0, 1
	l.lwz	r13, 3568(r13)
	l.addi	r28, r28, 3066
	l.and	r23, r23, r24
	l.movhi	r7, 0
	l.sb	3515(r12), r13
	l.addi	r24, r23, 4
	l.sb	-13(r2), r7
	l.addi	r14, r0, 1
	l.sw	7124(r22), r24
	l.addi	r3, r0, 99
	l.movhi	r17, 0
	l.lwz	r23, 7136(r23)
	l.addi	r18, r18, 2555
	l.sw	-64(r2), r3
	l.sb	3555(r12), r17
	l.sb	7083(r22), r23
	l.addi	r13, r0, 99
	l.sw	3504(r12), r13
	l.addi	r24, r0, 1
	l.movhi	r27, 0
	l.sb	7123(r22), r27
	l.addi	r23, r0, 99
	l.sw	7072(r22), r23
	l.addi	r20, r20, 2044          # CFC
.LBB39_145:                             # %if.else386
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 512
	l.addi	r3, r2, -53
	l.addi	r20, r20, 1024          # CFC
	l.sw	-136(r2), r3
	l.addi	r13, r12, -53
	l.addi	r28, r28, 3072
	l.sw	3432(r12), r13
	l.addi	r18, r18, 2560
	l.addi	r23, r22, -53
	l.sw	7000(r22), r23
	l.addi	r20, r20, 2048          # CFC
.LBB39_146:                             # %if.else386
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 513
	l.lwz	r6, -76(r2)
	l.addi	r20, r20, 1026          # CFC
	l.lwz	r5, -88(r2)
	l.lwz	r16, 3492(r12)
	l.addi	r28, r28, 3078
	l.lwz	r15, 3480(r12)
	l.addi	r18, r18, 2565
	l.lwz	r26, 7060(r22)
	l.lwz	r25, 7048(r22)
	l.addi	r20, r20, 2052          # CFC
	l.j	.LBB39_147
	l.nop	0                       # in delay slot
.LBB39_76:                              # %sw.bb188
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 514
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r4, r3, r4
	l.addi	r3, r4, 4
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r3
	l.and	r14, r13, r14
	l.lwz	r23, 7124(r22)
	l.movhi	r6, 0
	l.addi	r13, r14, 4
	l.addi	r20, r20, 1028          # CFC
	l.addi	r23, r23, 3
	l.addi	r3, r0, 120
	l.sw	3556(r12), r13
	l.addi	r24, r0, -4
	l.sw	-64(r2), r3
	l.movhi	r16, 0
	l.and	r24, r23, r24
	l.addi	r3, r0, 2
	l.addi	r13, r0, 120
	l.addi	r23, r24, 4
	l.sw	-112(r2), r3
	l.sw	3504(r12), r13
	l.sw	7124(r22), r23
	l.movhi	r5, hi(.L.str.1)
	l.addi	r28, r28, 3084
	l.addi	r13, r0, 2
	l.movhi	r26, 0
	l.ori	r5, r5, lo(.L.str.1)
	l.sw	3456(r12), r13
	l.addi	r23, r0, 120
	l.sw	-128(r2), r5
	l.movhi	r15, hi(.L.str.1)
	l.sw	7072(r22), r23
	l.lwz	r5, -88(r2)
	l.ori	r15, r15, lo(.L.str.1)
	l.addi	r23, r0, 2
	l.ori	r5, r5, 2
	l.sw	3440(r12), r15
	l.addi	r18, r18, 2570
	l.sw	7024(r22), r23
	l.lwz	r11, 0(r4)
	l.lwz	r15, 3480(r12)
	l.movhi	r25, hi(.L.str.1)
	l.lwz	r7, -84(r2)
	l.ori	r15, r15, 2
	l.ori	r25, r25, lo(.L.str.1)
	l.lwz	r8, 3568(r14)
	l.lwz	r17, 3484(r12)
	l.sw	7008(r22), r25
	l.lwz	r25, 7048(r22)
	l.ori	r25, r25, 2
	l.lwz	r31, 7136(r24)
	l.lwz	r27, 7052(r22)
	l.addi	r20, r20, 2056          # CFC
	l.j	.LBB39_107
	l.nop	0                       # in delay slot
.LBB39_77:                              # %sw.bb192
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 515
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.addi	r20, r20, 1030          # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 7124(r22)
	l.lwz	r3, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.movhi	r4, hi(.L.str.2)
	l.sw	3556(r12), r14
	l.addi	r24, r0, -4
	l.ori	r4, r4, lo(.L.str.2)
	l.addi	r28, r28, 3090
	l.lwz	r13, 3568(r13)
	l.and	r23, r23, r24
	l.sfeqi	r3, 0
	l.movhi	r14, hi(.L.str.2)
	l.ori	r14, r14, lo(.L.str.2)
	l.addi	r24, r23, 4
	l.sw	7124(r22), r24
	l.lwz	r23, 7136(r23)
	l.movhi	r24, hi(.L.str.2)
	l.ori	r24, r24, lo(.L.str.2)
	l.bf	.LBB39_289
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2575
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2060          # CFC
	l.bf	.LBB39_290
	l.nop	0
.LBB39_78:                              # %sw.bb192
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 516
	l.addi	r20, r20, 1032          # CFC
	l.ori	r4, r3, 0
	l.addi	r28, r28, 3096
	l.ori	r14, r13, 0
	l.addi	r18, r18, 2580
	l.ori	r24, r23, 0
	l.addi	r20, r20, 2064          # CFC
.LBB39_79:                              # %sw.bb192
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 517
	l.sw	-136(r2), r4
	l.lwz	r3, -76(r2)
	l.lwz	r5, -84(r2)
	l.addi	r20, r20, 1034          # CFC
	l.sfltsi	r5, 0
	l.sw	3432(r12), r14
	l.lwz	r13, 3492(r12)
	l.addi	r28, r28, 3102
	l.lwz	r15, 3484(r12)
	l.sw	7000(r22), r24
	l.lwz	r23, 7060(r22)
	l.lwz	r25, 7052(r22)
	l.bf	.LBB39_291
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2585
	l.sfltsi	r15, 0
	l.addi	r20, r20, 2068          # CFC
	l.bf	.LBB39_292
	l.nop	0
.LBB39_80:                              # %if.then200
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 518
	l.lwz	r3, -136(r2)
	l.movhi	r4, 0
	l.lwz	r13, 3432(r12)
	l.movhi	r14, 0
	l.lwz	r23, 7000(r22)
	l.addi	r20, r20, 1036          # CFC
	l.movhi	r24, 0
	l.jal	memchr
	l.nop	0                       # in delay slot
	l.lwz	r4, -84(r2)
	l.sfeqi	r11, 0
	l.ori	r3, r4, 0
	l.lwz	r5, -88(r2)
	l.addi	r28, r28, 3108
	l.lwz	r14, 3484(r12)
	l.ori	r13, r14, 0
	l.lwz	r15, 3480(r12)
	l.lwz	r24, 7052(r22)
	l.ori	r23, r24, 0
	l.lwz	r25, 7048(r22)
	l.bf	.LBB39_293
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2590
	l.sfeqi	r8, 0
	l.addi	r20, r20, 2072          # CFC
	l.bf	.LBB39_294
	l.nop	0
.LBB39_81:                              # %if.then204
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 519
	l.lwz	r3, -136(r2)
	l.sub	r3, r11, r3
	l.addi	r20, r20, 1038          # CFC
	l.sfgts	r3, r4
	l.lwz	r13, 3432(r12)
	l.addi	r28, r28, 3114
	l.sub	r13, r8, r13
	l.lwz	r23, 7000(r22)
	l.sub	r23, r31, r23
	l.bf	.LBB39_295
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2595
	l.sfgts	r13, r14
	l.addi	r20, r20, 2076          # CFC
	l.bf	.LBB39_296
	l.nop	0
.LBB39_82:                              # %if.then204
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 520
	l.addi	r20, r20, 1040          # CFC
	l.ori	r4, r3, 0
	l.addi	r28, r28, 3120
	l.ori	r14, r13, 0
	l.addi	r18, r18, 2600
	l.ori	r24, r23, 0
	l.addi	r20, r20, 2080          # CFC
.LBB39_83:                              # %if.then204
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 521
	l.addi	r20, r20, 1042          # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 3126
	l.ori	r13, r14, 0
	l.addi	r18, r18, 2605
	l.ori	r23, r24, 0
	l.addi	r20, r20, 2084          # CFC
	l.j	.LBB39_85
	l.nop	0                       # in delay slot
.LBB39_71:                              # %cond.false160
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 522
	l.andi	r3, r5, 16
	l.sfeqi	r3, 0
	l.addi	r20, r20, 1044          # CFC
	l.lwz	r7, -84(r2)
	l.andi	r13, r15, 16
	l.addi	r28, r28, 3132
	l.lwz	r17, 3484(r12)
	l.andi	r23, r25, 16
	l.lwz	r27, 7052(r22)
	l.bf	.LBB39_297
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2610
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2088          # CFC
	l.bf	.LBB39_298
	l.nop	0
.LBB39_72:                              # %cond.true163
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 523
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.addi	r20, r20, 1046          # CFC
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.addi	r28, r28, 3138
	l.lwz	r23, 7124(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.sw	3556(r12), r14
	l.addi	r18, r18, 2615
	l.lwz	r8, 3568(r13)
	l.addi	r24, r0, -4
	l.and	r23, r23, r24
	l.addi	r24, r23, 4
	l.sw	7124(r22), r24
	l.lwz	r31, 7136(r23)
	l.addi	r20, r20, 2092          # CFC
	l.j	.LBB39_75
	l.nop	0                       # in delay slot
.LBB39_89:                              # %cond.false224
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 524
	l.andi	r3, r6, 16
	l.addi	r20, r20, 1048          # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 3144
	l.andi	r13, r16, 16
	l.andi	r23, r26, 16
	l.bf	.LBB39_299
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2620
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2096          # CFC
	l.bf	.LBB39_300
	l.nop	0
.LBB39_90:                              # %cond.true227
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 525
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.addi	r20, r20, 1050          # CFC
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.addi	r28, r28, 3150
	l.lwz	r23, 7124(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.sw	3556(r12), r14
	l.addi	r18, r18, 2625
	l.lwz	r8, 3568(r13)
	l.addi	r24, r0, -4
	l.and	r23, r23, r24
	l.addi	r24, r23, 4
	l.sw	7124(r22), r24
	l.lwz	r31, 7136(r23)
	l.addi	r20, r20, 2100          # CFC
	l.j	.LBB39_93
	l.nop	0                       # in delay slot
.LBB39_97:                              # %cond.false258
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 526
	l.andi	r3, r5, 16
	l.sfeqi	r3, 0
	l.addi	r20, r20, 1052          # CFC
	l.ori	r6, r5, 0
	l.andi	r13, r15, 16
	l.addi	r28, r28, 3156
	l.ori	r16, r15, 0
	l.andi	r23, r25, 16
	l.ori	r26, r25, 0
	l.bf	.LBB39_301
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2630
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2104          # CFC
	l.bf	.LBB39_302
	l.nop	0
.LBB39_98:                              # %cond.true261
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 527
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r5, r0, -4
	l.and	r3, r3, r5
	l.addi	r5, r3, 4
	l.lwz	r13, 3556(r12)
	l.addi	r20, r20, 1054          # CFC
	l.addi	r13, r13, 3
	l.addi	r15, r0, -4
	l.sw	-12(r2), r5
	l.and	r13, r13, r15
	l.lwz	r23, 7124(r22)
	l.lwz	r11, 0(r3)
	l.addi	r28, r28, 3162
	l.addi	r15, r13, 4
	l.addi	r23, r23, 3
	l.ori	r5, r6, 0
	l.sw	3556(r12), r15
	l.addi	r25, r0, -4
	l.lwz	r8, 3568(r13)
	l.addi	r18, r18, 2635
	l.ori	r15, r16, 0
	l.and	r23, r23, r25
	l.addi	r25, r23, 4
	l.sw	7124(r22), r25
	l.lwz	r31, 7136(r23)
	l.ori	r25, r26, 0
	l.addi	r20, r20, 2108          # CFC
	l.j	.LBB39_101
	l.nop	0                       # in delay slot
.LBB39_54:                              # %cond.false95
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 528
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.addi	r20, r20, 1056          # CFC
	l.lwz	r23, 7124(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.andi	r3, r5, 64
	l.sw	3556(r12), r14
	l.addi	r24, r0, -4
	l.sfeqi	r3, 0
	l.lwz	r8, 3568(r13)
	l.and	r23, r23, r24
	l.addi	r28, r28, 3168
	l.lwz	r7, -84(r2)
	l.andi	r13, r15, 64
	l.addi	r24, r23, 4
	l.lwz	r4, -120(r2)
	l.lwz	r17, 3484(r12)
	l.lwz	r14, 3448(r12)
	l.sw	7124(r22), r24
	l.lwz	r31, 7136(r23)
	l.andi	r23, r25, 64
	l.lwz	r27, 7052(r22)
	l.lwz	r24, 7016(r22)
	l.bf	.LBB39_303
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2640
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2112          # CFC
	l.bf	.LBB39_304
	l.nop	0
.LBB39_55:                              # %cond.true98
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 529
	l.slli	r3, r11, 16
	l.addi	r20, r20, 1058          # CFC
	l.srai	r11, r3, 16
	l.slli	r13, r8, 16
	l.addi	r28, r28, 3174
	l.srai	r8, r13, 16
	l.addi	r18, r18, 2645
	l.slli	r23, r31, 16
	l.srai	r31, r23, 16
	l.addi	r20, r20, 2116          # CFC
.LBB39_56:                              # %cond.end113
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 530
	l.addi	r20, r20, 1060          # CFC
	l.srai	r6, r11, 31
	l.addi	r28, r28, 3180
	l.srai	r16, r8, 31
	l.addi	r18, r18, 2650
	l.srai	r26, r31, 31
	l.addi	r20, r20, 2120          # CFC
.LBB39_57:                              # %cond.end116
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 531
	l.addi	r3, r0, 1
	l.sw	-112(r2), r3
	l.addi	r20, r20, 1062          # CFC
	l.sfgtsi	r6, -1
	l.addi	r13, r0, 1
	l.addi	r28, r28, 3186
	l.sw	3456(r12), r13
	l.addi	r23, r0, 1
	l.sw	7024(r22), r23
	l.bf	.LBB39_305
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2655
	l.sfgtsi	r16, -1
	l.addi	r20, r20, 2124          # CFC
	l.bf	.LBB39_306
	l.nop	0
.LBB39_58:                              # %if.then120
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 532
	l.movhi	r4, 0
	l.sub	r5, r4, r6
	l.addi	r6, r0, 1
	l.sfnei	r11, 0
	l.addi	r20, r20, 1064          # CFC
	l.sw	-112(r2), r6
	l.movhi	r14, 0
	l.sub	r15, r14, r16
	l.addi	r16, r0, 1
	l.addi	r28, r28, 3192
	l.sw	3456(r12), r16
	l.movhi	r24, 0
	l.sub	r25, r24, r26
	l.addi	r26, r0, 1
	l.sw	7024(r22), r26
	l.bf	.LBB39_307
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2660
	l.sfnei	r8, 0
	l.addi	r20, r20, 2128          # CFC
	l.bf	.LBB39_308
	l.nop	0
.LBB39_59:                              # %if.then120
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 533
	l.addi	r20, r20, 1066          # CFC
	l.movhi	r6, 0
	l.addi	r28, r28, 3198
	l.movhi	r16, 0
	l.addi	r18, r18, 2665
	l.movhi	r26, 0
	l.addi	r20, r20, 2132          # CFC
.LBB39_60:                              # %if.then120
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 534
	l.sub	r6, r5, r6
	l.sub	r11, r4, r11
	l.addi	r4, r0, 45
	l.addi	r20, r20, 1068          # CFC
	l.sb	-13(r2), r4
	l.lwz	r5, -88(r2)
	l.sub	r16, r15, r16
	l.sub	r8, r14, r8
	l.addi	r28, r28, 3204
	l.addi	r14, r0, 45
	l.sb	3555(r12), r14
	l.lwz	r15, 3480(r12)
	l.sub	r26, r25, r26
	l.addi	r18, r18, 2670
	l.sub	r31, r24, r31
	l.addi	r24, r0, 45
	l.sb	7123(r22), r24
	l.lwz	r25, 7048(r22)
	l.addi	r20, r20, 2136          # CFC
	l.j	.LBB39_108
	l.nop	0                       # in delay slot
.LBB39_73:                              # %cond.false165
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 535
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.addi	r20, r20, 1070          # CFC
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 7124(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.andi	r3, r5, 64
	l.sw	3556(r12), r14
	l.addi	r28, r28, 3210
	l.addi	r24, r0, -4
	l.sfeqi	r3, 0
	l.lwz	r8, 3568(r13)
	l.andi	r13, r15, 64
	l.and	r23, r23, r24
	l.addi	r24, r23, 4
	l.sw	7124(r22), r24
	l.lwz	r31, 7136(r23)
	l.andi	r23, r25, 64
	l.bf	.LBB39_309
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2675
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2140          # CFC
	l.bf	.LBB39_310
	l.nop	0
.LBB39_74:                              # %cond.false165
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 536
	l.addi	r20, r20, 1072          # CFC
	l.andi	r11, r11, 65535
	l.addi	r28, r28, 3216
	l.andi	r8, r8, 65535
	l.addi	r18, r18, 2680
	l.andi	r31, r31, 65535
	l.addi	r20, r20, 2144          # CFC
.LBB39_75:                              # %cond.end183
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 537
	l.movhi	r3, 0
	l.sw	-112(r2), r3
	l.sw	-64(r2), r6
	l.addi	r20, r20, 1074          # CFC
	l.movhi	r6, 0
	l.movhi	r13, 0
	l.sw	3456(r12), r13
	l.addi	r28, r28, 3222
	l.sw	3504(r12), r16
	l.movhi	r16, 0
	l.movhi	r23, 0
	l.addi	r18, r18, 2685
	l.sw	7024(r22), r23
	l.sw	7072(r22), r26
	l.movhi	r26, 0
	l.addi	r20, r20, 2148          # CFC
	l.j	.LBB39_107
	l.nop	0                       # in delay slot
.LBB39_91:                              # %cond.false229
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 538
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.addi	r20, r20, 1076          # CFC
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 7124(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.andi	r3, r6, 64
	l.sw	3556(r12), r14
	l.addi	r28, r28, 3228
	l.addi	r24, r0, -4
	l.sfeqi	r3, 0
	l.lwz	r8, 3568(r13)
	l.andi	r13, r16, 64
	l.and	r23, r23, r24
	l.addi	r24, r23, 4
	l.sw	7124(r22), r24
	l.lwz	r31, 7136(r23)
	l.andi	r23, r26, 64
	l.bf	.LBB39_311
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2690
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2152          # CFC
	l.bf	.LBB39_312
	l.nop	0
.LBB39_92:                              # %cond.false229
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 539
	l.addi	r20, r20, 1078          # CFC
	l.andi	r11, r11, 65535
	l.addi	r28, r28, 3234
	l.andi	r8, r8, 65535
	l.addi	r18, r18, 2695
	l.andi	r31, r31, 65535
	l.addi	r20, r20, 2156          # CFC
.LBB39_93:                              # %cond.false229
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 540
	l.lwz	r7, -84(r2)
	l.movhi	r6, 0
	l.addi	r3, r0, 1
	l.sw	-112(r2), r3
	l.addi	r20, r20, 1080          # CFC
	l.sw	-64(r2), r5
	l.lwz	r17, 3484(r12)
	l.movhi	r16, 0
	l.addi	r13, r0, 1
	l.lwz	r5, -88(r2)
	l.addi	r28, r28, 3240
	l.sw	3456(r12), r13
	l.lwz	r27, 7052(r22)
	l.sw	3504(r12), r15
	l.lwz	r15, 3480(r12)
	l.addi	r18, r18, 2700
	l.movhi	r26, 0
	l.addi	r23, r0, 1
	l.sw	7024(r22), r23
	l.sw	7072(r22), r25
	l.lwz	r25, 7048(r22)
	l.addi	r20, r20, 2160          # CFC
	l.j	.LBB39_107
	l.nop	0                       # in delay slot
.LBB39_99:                              # %cond.false263
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 541
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r5, r0, -4
	l.and	r3, r3, r5
	l.addi	r5, r3, 4
	l.lwz	r13, 3556(r12)
	l.addi	r13, r13, 3
	l.addi	r15, r0, -4
	l.sw	-12(r2), r5
	l.addi	r20, r20, 1082          # CFC
	l.and	r13, r13, r15
	l.lwz	r23, 7124(r22)
	l.lwz	r11, 0(r3)
	l.addi	r15, r13, 4
	l.addi	r23, r23, 3
	l.andi	r3, r6, 64
	l.sw	3556(r12), r15
	l.addi	r25, r0, -4
	l.sfeqi	r3, 0
	l.addi	r28, r28, 3246
	l.lwz	r8, 3568(r13)
	l.and	r23, r23, r25
	l.ori	r5, r6, 0
	l.andi	r13, r16, 64
	l.ori	r15, r16, 0
	l.addi	r25, r23, 4
	l.sw	7124(r22), r25
	l.lwz	r31, 7136(r23)
	l.andi	r23, r26, 64
	l.ori	r25, r26, 0
	l.bf	.LBB39_313
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2705
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2164          # CFC
	l.bf	.LBB39_314
	l.nop	0
.LBB39_100:                             # %cond.false263
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 542
	l.addi	r20, r20, 1084          # CFC
	l.andi	r11, r11, 65535
	l.addi	r28, r28, 3252
	l.andi	r8, r8, 65535
	l.addi	r18, r18, 2710
	l.andi	r31, r31, 65535
	l.addi	r20, r20, 2168          # CFC
.LBB39_101:                             # %cond.end281
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 543
	l.addi	r20, r20, 1086          # CFC
	l.movhi	r6, 0
	l.addi	r28, r28, 3258
	l.movhi	r16, 0
	l.addi	r18, r18, 2715
	l.movhi	r26, 0
	l.addi	r20, r20, 2172          # CFC
.LBB39_102:                             # %cond.end284
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 544
	l.sw	-80(r2), r6
	l.or	r3, r11, r6
	l.ori	r6, r5, 0
	l.ori	r5, r6, 2
	l.addi	r20, r20, 1088          # CFC
	l.sfnei	r3, 0
	l.sw	3488(r12), r16
	l.or	r13, r8, r16
	l.ori	r16, r15, 0
	l.addi	r28, r28, 3264
	l.ori	r15, r16, 2
	l.sw	7056(r22), r26
	l.or	r23, r31, r26
	l.ori	r26, r25, 0
	l.ori	r25, r26, 2
	l.bf	.LBB39_315
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2720
	l.sfnei	r13, 0
	l.addi	r20, r20, 2176          # CFC
	l.bf	.LBB39_316
	l.nop	0
.LBB39_103:                             # %cond.end284
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 545
	l.addi	r20, r20, 1090          # CFC
	l.ori	r5, r6, 0
	l.addi	r28, r28, 3270
	l.ori	r15, r16, 0
	l.addi	r18, r18, 2725
	l.ori	r25, r26, 0
	l.addi	r20, r20, 2180          # CFC
.LBB39_104:                             # %cond.end284
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 546
	l.andi	r3, r6, 1
	l.sfnei	r3, 0
	l.addi	r20, r20, 1092          # CFC
	l.lwz	r7, -84(r2)
	l.andi	r13, r16, 1
	l.addi	r28, r28, 3276
	l.lwz	r17, 3484(r12)
	l.andi	r23, r26, 1
	l.lwz	r27, 7052(r22)
	l.bf	.LBB39_317
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2730
	l.sfnei	r13, 0
	l.addi	r20, r20, 2184          # CFC
	l.bf	.LBB39_318
	l.nop	0
.LBB39_105:                             # %cond.end284
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 547
	l.addi	r20, r20, 1094          # CFC
	l.ori	r5, r6, 0
	l.addi	r28, r28, 3282
	l.ori	r15, r16, 0
	l.addi	r18, r18, 2735
	l.ori	r25, r26, 0
	l.addi	r20, r20, 2188          # CFC
.LBB39_106:                             # %cond.end284
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 548
	l.addi	r3, r0, 2
	l.sw	-112(r2), r3
	l.sw	-128(r2), r4
	l.addi	r20, r20, 1096          # CFC
	l.lwz	r6, -80(r2)
	l.addi	r13, r0, 2
	l.sw	3456(r12), r13
	l.addi	r28, r28, 3288
	l.sw	3440(r12), r14
	l.lwz	r16, 3488(r12)
	l.addi	r23, r0, 2
	l.addi	r18, r18, 2740
	l.sw	7024(r22), r23
	l.sw	7008(r22), r24
	l.lwz	r26, 7056(r22)
	l.addi	r20, r20, 2192          # CFC
.LBB39_107:                             # %nosign
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 549
	l.movhi	r4, 0
	l.addi	r20, r20, 1098          # CFC
	l.sb	-13(r2), r4
	l.movhi	r14, 0
	l.addi	r28, r28, 3294
	l.sb	3555(r12), r14
	l.addi	r18, r18, 2745
	l.movhi	r24, 0
	l.sb	7123(r22), r24
	l.addi	r20, r20, 2196          # CFC
.LBB39_108:                             # %number
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 550
	l.ori	r3, r4, 0
	l.sw	-80(r2), r6
	l.addi	r4, r0, -129
	l.and	r4, r5, r4
	l.sw	-88(r2), r4
	l.addi	r20, r20, 1100          # CFC
	l.sfgtsi	r7, -1
	l.ori	r13, r14, 0
	l.sw	3488(r12), r16
	l.addi	r14, r0, -129
	l.and	r14, r15, r14
	l.addi	r28, r28, 3300
	l.sw	3480(r12), r14
	l.ori	r23, r24, 0
	l.sw	7056(r22), r26
	l.addi	r24, r0, -129
	l.and	r24, r25, r24
	l.sw	7048(r22), r24
	l.bf	.LBB39_319
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2750
	l.sfgtsi	r17, -1
	l.addi	r20, r20, 2200          # CFC
	l.bf	.LBB39_320
	l.nop	0
.LBB39_109:                             # %number
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 551
	l.addi	r20, r20, 1102          # CFC
	l.sw	-88(r2), r5
	l.addi	r28, r28, 3306
	l.sw	3480(r12), r15
	l.addi	r18, r18, 2755
	l.sw	7048(r22), r25
	l.addi	r20, r20, 2204          # CFC
.LBB39_110:                             # %number
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 552
	l.sw	-84(r2), r7
	l.sfnei	r7, 0
	l.lwz	r6, -76(r2)
	l.addi	r20, r20, 1104          # CFC
	l.lwz	r4, -80(r2)
	l.sw	3484(r12), r17
	l.lwz	r16, 3492(r12)
	l.addi	r28, r28, 3312
	l.lwz	r14, 3488(r12)
	l.sw	7052(r22), r27
	l.lwz	r26, 7060(r22)
	l.lwz	r24, 7056(r22)
	l.bf	.LBB39_321
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2760
	l.sfnei	r17, 0
	l.addi	r20, r20, 2208          # CFC
	l.bf	.LBB39_322
	l.nop	0
.LBB39_111:                             # %number
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 553
	l.or	r4, r11, r4
	l.sfeqi	r4, 0
	l.addi	r20, r20, 1106          # CFC
	l.lwz	r5, -144(r2)
	l.or	r14, r8, r14
	l.addi	r28, r28, 3318
	l.lwz	r15, 3424(r12)
	l.or	r24, r31, r24
	l.lwz	r25, 6992(r22)
	l.bf	.LBB39_323
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2765
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2212          # CFC
	l.bf	.LBB39_324
	l.nop	0
.LBB39_112:                             # %if.then305
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 554
	l.lwz	r4, -112(r2)
	l.addi	r20, r20, 1108          # CFC
	l.sfeqi	r4, 0
	l.addi	r28, r28, 3324
	l.lwz	r14, 3456(r12)
	l.lwz	r24, 7024(r22)
	l.bf	.LBB39_325
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2770
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2216          # CFC
	l.bf	.LBB39_326
	l.nop	0
.LBB39_113:                             # %if.then305
                                        #   in Loop: Header=BB39_3 Depth=3
	l.sfeqi	r4, 1
	l.bf	.LBB39_327
	l.nop	0                       # in delay slot
	l.sfeqi	r14, 1
	l.bf	.LBB39_328
	l.nop	0
.LBB39_114:                             # %if.then305
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 555
	l.sw	-100(r2), r11
	l.lwz	r11, -84(r2)
	l.addi	r7, r0, 25
	l.sw	-112(r2), r4
	l.movhi	r4, hi(.L.str.4)
	l.sw	3468(r12), r8
	l.lwz	r8, 3484(r12)
	l.addi	r20, r20, 1110          # CFC
	l.addi	r17, r0, 25
	l.ori	r5, r4, lo(.L.str.4)
	l.sw	3456(r12), r14
	l.sw	7036(r22), r31
	l.lwz	r4, -112(r2)
	l.movhi	r14, hi(.L.str.4)
	l.lwz	r31, 7052(r22)
	l.addi	r28, r28, 3330
	l.sfnei	r4, 2
	l.ori	r15, r14, lo(.L.str.4)
	l.lwz	r14, 3456(r12)
	l.addi	r27, r0, 25
	l.sw	7024(r22), r24
	l.movhi	r24, hi(.L.str.4)
	l.ori	r25, r24, lo(.L.str.4)
	l.lwz	r24, 7024(r22)
	l.bf	.LBB39_329
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2775
	l.sfnei	r14, 2
	l.addi	r20, r20, 2220          # CFC
	l.bf	.LBB39_330
	l.nop	0
.LBB39_115:                             # %do.body360.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 556
	l.lwz	r5, -144(r2)
	l.lwz	r11, -100(r2)
	l.addi	r20, r20, 1112          # CFC
	l.lwz	r7, -80(r2)
	l.lwz	r15, 3424(r12)
	l.addi	r28, r28, 3336
	l.lwz	r8, 3468(r12)
	l.lwz	r17, 3488(r12)
	l.addi	r18, r18, 2780
	l.lwz	r25, 6992(r22)
	l.lwz	r31, 7036(r22)
	l.lwz	r27, 7056(r22)
	l.addi	r20, r20, 2224          # CFC
.LBB39_116:                             # %do.body360
                                        #   Parent Loop BB39_1 Depth=1
                                        #     Parent Loop BB39_2 Depth=2
                                        #       Parent Loop BB39_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 557
	l.andi	r3, r11, 15
	l.lwz	r4, -128(r2)
	l.add	r3, r4, r3
	l.lbz	r3, 0(r3)
	l.sb	-1(r5), r3
	l.andi	r13, r8, 15
	l.lwz	r14, 3440(r12)
	l.add	r13, r14, r13
	l.srli	r3, r11, 4
	l.lbz	r13, 3568(r13)
	l.andi	r23, r31, 15
	l.addi	r20, r20, 1114          # CFC
	l.slli	r4, r7, 28
	l.sb	3567(r15), r13
	l.lwz	r24, 7008(r22)
	l.or	r11, r3, r4
	l.srli	r13, r8, 4
	l.add	r23, r24, r23
	l.addi	r5, r5, -1
	l.slli	r14, r17, 28
	l.lbz	r23, 7136(r23)
	l.srli	r7, r7, 4
	l.or	r8, r13, r14
	l.addi	r28, r28, 3342
	l.sb	7135(r25), r23
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
	l.bf	.LBB39_331
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2785
	l.sfnei	r13, 0
	l.addi	r20, r20, 2228          # CFC
	l.bf	.LBB39_332
	l.nop	0
.LBB39_235:                             # %do.body360
                                        #   in Loop: Header=BB39_3 Depth=3
	l.j	.LBB39_141
	l.nop	0                       # in delay slot
.LBB39_117:                             # %do.body307.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 558
	l.lwz	r3, -152(r2)
	l.addi	r20, r20, 1116          # CFC
	l.lwz	r7, -80(r2)
	l.lwz	r13, 3416(r12)
	l.addi	r28, r28, 3348
	l.lwz	r17, 3488(r12)
	l.addi	r18, r18, 2790
	l.lwz	r23, 6984(r22)
	l.lwz	r27, 7056(r22)
	l.addi	r20, r20, 2232          # CFC
.LBB39_118:                             # %do.body307
                                        #   Parent Loop BB39_1 Depth=1
                                        #     Parent Loop BB39_2 Depth=2
                                        #       Parent Loop BB39_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 559
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
	l.addi	r20, r20, 1118          # CFC
	l.slli	r24, r27, 29
	l.addi	r3, r3, -1
	l.ori	r14, r14, 48
	l.srli	r25, r31, 3
	l.srli	r7, r7, 3
	l.sb	3568(r13), r14
	l.or	r25, r25, r24
	l.or	r6, r5, r7
	l.addi	r13, r13, -1
	l.andi	r24, r31, 7
	l.addi	r28, r28, 3354
	l.sfnei	r6, 0
	l.srli	r17, r17, 3
	l.ori	r24, r24, 48
	l.ori	r11, r5, 0
	l.or	r16, r15, r17
	l.ori	r8, r15, 0
	l.sb	7136(r23), r24
	l.addi	r23, r23, -1
	l.srli	r27, r27, 3
	l.or	r26, r25, r27
	l.ori	r31, r25, 0
	l.bf	.LBB39_333
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2795
	l.sfnei	r16, 0
	l.addi	r20, r20, 2236          # CFC
	l.bf	.LBB39_334
	l.nop	0
.LBB39_119:                             # %do.end314
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 560
	l.addi	r6, r3, 1
	l.lwz	r5, -88(r2)
	l.andi	r5, r5, 1
	l.addi	r20, r20, 1120          # CFC
	l.sfeqi	r5, 0
	l.addi	r16, r13, 1
	l.lwz	r15, 3480(r12)
	l.addi	r28, r28, 3360
	l.andi	r15, r15, 1
	l.addi	r26, r23, 1
	l.lwz	r25, 7048(r22)
	l.andi	r25, r25, 1
	l.bf	.LBB39_335
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2800
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2240          # CFC
	l.bf	.LBB39_336
	l.nop	0
.LBB39_338:
	l.addi	r18, r18, 561
	l.ori	r5, r6, 0
	l.addi	r20, r20, 1122          # CFC
	l.lwz	r6, -76(r2)
	l.ori	r15, r16, 0
	l.addi	r28, r28, 3366
	l.lwz	r16, 3492(r12)
	l.addi	r18, r18, 2805
	l.ori	r25, r26, 0
	l.lwz	r26, 7060(r22)
	l.addi	r20, r20, 2244          # CFC
.LBB39_120:                             # %do.end314
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 562
	l.xori	r4, r4, 48
	l.addi	r20, r20, 1124          # CFC
	l.sfeqi	r4, 0
	l.addi	r28, r28, 3372
	l.xori	r14, r14, 48
	l.xori	r24, r24, 48
	l.bf	.LBB39_339
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2810
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2248          # CFC
	l.bf	.LBB39_340
	l.nop	0
.LBB39_121:                             # %if.then321
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 563
	l.addi	r4, r0, 48
	l.sb	0(r3), r4
	l.addi	r20, r20, 1126          # CFC
	l.ori	r5, r3, 0
	l.addi	r14, r0, 48
	l.addi	r28, r28, 3378
	l.sb	3568(r13), r14
	l.ori	r15, r13, 0
	l.addi	r18, r18, 2815
	l.addi	r24, r0, 48
	l.sb	7136(r23), r24
	l.ori	r25, r23, 0
	l.addi	r20, r20, 2252          # CFC
	l.j	.LBB39_141
	l.nop	0                       # in delay slot
.LBB39_122:                             # %sw.bb324
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 564
	l.lwz	r3, -88(r2)
	l.andi	r3, r3, 32
	l.sfeqi	r3, 0
	l.addi	r20, r20, 1128          # CFC
	l.lwz	r5, -84(r2)
	l.lwz	r13, 3480(r12)
	l.andi	r13, r13, 32
	l.addi	r28, r28, 3384
	l.lwz	r15, 3484(r12)
	l.lwz	r23, 7048(r22)
	l.andi	r23, r23, 32
	l.lwz	r25, 7052(r22)
	l.bf	.LBB39_341
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2820
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2256          # CFC
	l.bf	.LBB39_342
	l.nop	0
.LBB39_123:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 565
	l.addi	r3, r0, 1
	l.addi	r20, r20, 1130          # CFC
	l.sfltui	r11, 10
	l.addi	r28, r28, 3390
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.bf	.LBB39_343
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2825
	l.sfltui	r8, 10
	l.addi	r20, r20, 2260          # CFC
	l.bf	.LBB39_344
	l.nop	0
.LBB39_124:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 566
	l.addi	r20, r20, 1132          # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 3396
	l.movhi	r13, 0
	l.addi	r18, r18, 2830
	l.movhi	r23, 0
	l.addi	r20, r20, 2264          # CFC
.LBB39_125:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 567
	l.lwz	r4, -80(r2)
	l.addi	r20, r20, 1134          # CFC
	l.sfeqi	r4, 0
	l.addi	r28, r28, 3402
	l.lwz	r14, 3488(r12)
	l.lwz	r24, 7056(r22)
	l.bf	.LBB39_345
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2835
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2268          # CFC
	l.bf	.LBB39_346
	l.nop	0
.LBB39_126:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 568
	l.addi	r20, r20, 1136          # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 3408
	l.movhi	r13, 0
	l.addi	r18, r18, 2840
	l.movhi	r23, 0
	l.addi	r20, r20, 2272          # CFC
.LBB39_127:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 569
	l.andi	r3, r3, 1
	l.sfnei	r3, 0
	l.addi	r20, r20, 1138          # CFC
	l.lwz	r7, -144(r2)
	l.andi	r13, r13, 1
	l.addi	r28, r28, 3414
	l.lwz	r17, 3424(r12)
	l.andi	r23, r23, 1
	l.lwz	r27, 6992(r22)
	l.bf	.LBB39_347
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2845
	l.sfnei	r13, 0
	l.addi	r20, r20, 2276          # CFC
	l.bf	.LBB39_348
	l.nop	0
.LBB39_350:
	l.addi	r18, r18, 570
	l.addi	r20, r20, 1140          # CFC
	l.lwz	r3, -80(r2)
	l.addi	r28, r28, 3420
	l.lwz	r13, 3488(r12)
	l.addi	r18, r18, 2850
	l.lwz	r23, 7056(r22)
	l.addi	r20, r20, 2280          # CFC
.LBB39_128:                             # %while.body346.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 571
	l.lwz	r7, -144(r2)
	l.addi	r20, r20, 1142          # CFC
	l.ori	r4, r11, 0
	l.lwz	r17, 3424(r12)
	l.addi	r28, r28, 3426
	l.ori	r14, r8, 0
	l.addi	r18, r18, 2855
	l.lwz	r27, 6992(r22)
	l.ori	r24, r31, 0
	l.addi	r20, r20, 2284          # CFC
.LBB39_129:                             # %while.body346
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 572
	l.sw	-112(r2), r7
	l.addi	r6, r0, 10
	l.sw	-80(r2), r3
	l.sw	-116(r2), r4
	l.movhi	r5, 0
	l.sw	3456(r12), r17
	l.addi	r16, r0, 10
	l.sw	3488(r12), r13
	l.sw	3452(r12), r14
	l.movhi	r15, 0
	l.sw	7024(r22), r27
	l.addi	r26, r0, 10
	l.sw	7056(r22), r23
	l.sw	7020(r22), r24
	l.movhi	r25, 0
	l.addi	r20, r20, 1144          # CFC
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
	l.sw	3448(r12), r8
	l.ori	r13, r8, 0
	l.sw	3468(r12), r14
	l.addi	r25, r0, -1
	l.addi	r28, r28, 3432
	l.addi	r26, r0, -10
	l.sw	7016(r22), r31
	l.ori	r23, r31, 0
	l.sw	7036(r22), r24
	l.jal	__muldi3
	l.nop	0                       # in delay slot
	l.addi	r3, r0, 1
	l.lwz	r5, -80(r2)
	l.sfnei	r5, 0
	l.ori	r4, r3, 0
	l.addi	r13, r0, 1
	l.lwz	r15, 3488(r12)
	l.ori	r14, r13, 0
	l.addi	r23, r0, 1
	l.lwz	r25, 7056(r22)
	l.ori	r24, r23, 0
	l.bf	.LBB39_351
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2860
	l.sfnei	r15, 0
	l.addi	r20, r20, 2288          # CFC
	l.bf	.LBB39_352
	l.nop	0
.LBB39_134:                             # %while.body346
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 573
	l.addi	r20, r20, 1146          # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 3438
	l.movhi	r14, 0
	l.addi	r18, r18, 2865
	l.movhi	r24, 0
	l.addi	r20, r20, 2292          # CFC
.LBB39_135:                             # %while.body346
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 574
	l.lwz	r7, -116(r2)
	l.addi	r20, r20, 1148          # CFC
	l.sfgtui	r7, 99
	l.addi	r28, r28, 3444
	l.lwz	r17, 3452(r12)
	l.lwz	r27, 7020(r22)
	l.bf	.LBB39_353
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2870
	l.sfgtui	r17, 99
	l.addi	r20, r20, 2296          # CFC
	l.bf	.LBB39_354
	l.nop	0
.LBB39_136:                             # %while.body346
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 575
	l.addi	r20, r20, 1150          # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 3450
	l.movhi	r13, 0
	l.addi	r18, r18, 2875
	l.movhi	r23, 0
	l.addi	r20, r20, 2300          # CFC
.LBB39_137:                             # %while.body346
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 576
	l.sfeqi	r5, 0
	l.lwz	r6, -76(r2)
	l.addi	r20, r20, 1152          # CFC
	l.lwz	r11, -100(r2)
	l.lwz	r16, 3492(r12)
	l.addi	r28, r28, 3456
	l.lwz	r8, 3468(r12)
	l.lwz	r26, 7060(r22)
	l.lwz	r31, 7036(r22)
	l.bf	.LBB39_355
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2880
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2304          # CFC
	l.bf	.LBB39_356
	l.nop	0
.LBB39_358:
	l.addi	r18, r18, 577
	l.addi	r20, r20, 1154          # CFC
	l.lwz	r5, -84(r2)
	l.addi	r28, r28, 3462
	l.lwz	r15, 3484(r12)
	l.addi	r18, r18, 2885
	l.lwz	r25, 7052(r22)
	l.addi	r20, r20, 2308          # CFC
.LBB39_138:                             # %while.body346
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 578
	l.addi	r20, r20, 1156          # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 3468
	l.ori	r13, r14, 0
	l.addi	r18, r18, 2890
	l.ori	r23, r24, 0
	l.addi	r20, r20, 2312          # CFC
.LBB39_139:                             # %while.body346
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 579
	l.add	r14, r17, r12
	l.add	r24, r27, r12
	l.add	r4, r7, r12
	l.addi	r4, r4, 48
	l.lwz	r7, -112(r2)
	l.sb	-1(r7), r4
	l.addi	r7, r7, -1
	l.addi	r20, r20, 1158          # CFC
	l.andi	r3, r3, 1
	l.addi	r14, r14, 48
	l.lwz	r17, 3456(r12)
	l.sb	3567(r17), r14
	l.sfnei	r3, 0
	l.addi	r17, r17, -1
	l.addi	r24, r24, 48
	l.addi	r28, r28, 3474
	l.ori	r4, r11, 0
	l.andi	r13, r13, 1
	l.ori	r14, r8, 0
	l.lwz	r27, 7024(r22)
	l.sb	7135(r27), r24
	l.addi	r27, r27, -1
	l.andi	r23, r23, 1
	l.ori	r24, r31, 0
	l.bf	.LBB39_359
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2895
	l.sfnei	r13, 0
	l.addi	r20, r20, 2316          # CFC
	l.bf	.LBB39_360
	l.nop	0
.LBB39_362:
	l.addi	r18, r18, 580
	l.addi	r20, r20, 1160          # CFC
	l.lwz	r3, -120(r2)
	l.addi	r28, r28, 3480
	l.lwz	r13, 3448(r12)
	l.addi	r18, r18, 2900
	l.lwz	r23, 7016(r22)
	l.addi	r20, r20, 2320          # CFC
.LBB39_140:                             # %while.end354
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 581
	l.addi	r3, r11, 48
	l.sb	-1(r7), r3
	l.addi	r20, r20, 1162          # CFC
	l.addi	r5, r7, -1
	l.addi	r13, r8, 48
	l.addi	r28, r28, 3486
	l.sb	3567(r17), r13
	l.addi	r15, r17, -1
	l.addi	r18, r18, 2905
	l.addi	r23, r31, 48
	l.sb	7135(r27), r23
	l.addi	r25, r27, -1
	l.addi	r20, r20, 2324          # CFC
	l.j	.LBB39_141
	l.nop	0                       # in delay slot
.LBB39_130:                             # %if.then327
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 582
	l.sfltui	r11, 10
	l.addi	r20, r20, 1164          # CFC
	l.lwz	r3, -144(r2)
	l.addi	r28, r28, 3492
	l.lwz	r13, 3424(r12)
	l.lwz	r23, 6992(r22)
	l.bf	.LBB39_363
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2910
	l.sfltui	r8, 10
	l.addi	r20, r20, 2328          # CFC
	l.bf	.LBB39_364
	l.nop	0
.LBB39_131:                             # %while.body332.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 583
	l.ori	r4, r11, 0
	l.addi	r20, r20, 1166          # CFC
	l.lwz	r3, -144(r2)
	l.ori	r14, r8, 0
	l.addi	r28, r28, 3498
	l.lwz	r13, 3424(r12)
	l.addi	r18, r18, 2915
	l.ori	r24, r31, 0
	l.lwz	r23, 6992(r22)
	l.addi	r20, r20, 2332          # CFC
.LBB39_132:                             # %while.body332
                                        #   Parent Loop BB39_1 Depth=1
                                        #     Parent Loop BB39_2 Depth=2
                                        #       Parent Loop BB39_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 584
	l.addi	r5, r0, 10
	l.divu	r11, r4, r5
	l.muli	r5, r11, -10
	l.add	r5, r4, r5
	l.addi	r5, r5, 48
	l.addi	r15, r0, 10
	l.divu	r8, r14, r15
	l.addi	r20, r20, 1168          # CFC
	l.muli	r15, r8, -10
	l.sb	-1(r3), r5
	l.add	r15, r14, r15
	l.addi	r25, r0, 10
	l.addi	r3, r3, -1
	l.addi	r15, r15, 48
	l.divu	r31, r24, r25
	l.addi	r28, r28, 3504
	l.sfgtui	r4, 99
	l.sb	3567(r13), r15
	l.addi	r13, r13, -1
	l.muli	r25, r31, -10
	l.add	r25, r24, r25
	l.addi	r25, r25, 48
	l.sb	7135(r23), r25
	l.addi	r23, r23, -1
	l.bf	.LBB39_365
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2920
	l.sfgtui	r14, 99
	l.addi	r20, r20, 2336          # CFC
	l.bf	.LBB39_366
	l.nop	0
.LBB39_368:
	l.addi	r18, r18, 585
	l.addi	r20, r20, 1170          # CFC
	l.ori	r4, r11, 0
	l.addi	r28, r28, 3510
	l.ori	r14, r8, 0
	l.addi	r18, r18, 2925
	l.ori	r24, r31, 0
	l.addi	r20, r20, 2340          # CFC
.LBB39_133:                             # %while.end338
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 586
	l.addi	r4, r11, 48
	l.sb	-1(r3), r4
	l.addi	r20, r20, 1172          # CFC
	l.addi	r5, r3, -1
	l.addi	r14, r8, 48
	l.addi	r28, r28, 3516
	l.sb	3567(r13), r14
	l.addi	r15, r13, -1
	l.addi	r18, r18, 2930
	l.addi	r24, r31, 48
	l.sb	7135(r23), r24
	l.addi	r25, r23, -1
	l.addi	r20, r20, 2344          # CFC
.LBB39_141:                             # %if.end368
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 587
	l.lwz	r11, -84(r2)
	l.lwz	r3, -144(r2)
	l.sub	r7, r3, r5
	l.addi	r20, r20, 1174          # CFC
	l.lbz	r3, -13(r2)
	l.lwz	r8, 3484(r12)
	l.lwz	r13, 3424(r12)
	l.addi	r28, r28, 3522
	l.sub	r17, r13, r15
	l.lbz	r13, 3555(r12)
	l.lwz	r31, 7052(r22)
	l.addi	r18, r18, 2935
	l.lwz	r23, 6992(r22)
	l.sub	r27, r23, r25
	l.lbz	r23, 7123(r22)
	l.addi	r20, r20, 2348          # CFC
.LBB39_142:                             # %sw.epilog383
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 588
	l.sw	-136(r2), r5
	l.sw	-120(r2), r3
	l.andi	r3, r3, 255
	l.sfeqi	r3, 0
	l.ori	r4, r7, 0
	l.addi	r20, r20, 1176          # CFC
	l.ori	r7, r11, 0
	l.sw	3432(r12), r15
	l.sw	3448(r12), r13
	l.andi	r13, r13, 255
	l.ori	r14, r17, 0
	l.addi	r28, r28, 3528
	l.ori	r17, r8, 0
	l.sw	7000(r22), r25
	l.sw	7016(r22), r23
	l.andi	r23, r23, 255
	l.ori	r24, r27, 0
	l.ori	r27, r31, 0
	l.bf	.LBB39_369
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2940
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2352          # CFC
	l.bf	.LBB39_370
	l.nop	0
.LBB39_372:
	l.addi	r18, r18, 589
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 1178          # CFC
	l.ori	r5, r3, 0
	l.lwz	r13, 3480(r12)
	l.addi	r28, r28, 3534
	l.ori	r15, r13, 0
	l.addi	r18, r18, 2945
	l.lwz	r23, 7048(r22)
	l.ori	r25, r23, 0
	l.addi	r20, r20, 2356          # CFC
.LBB39_230:                             # %if.then385
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 590
	l.addi	r11, r4, 1
	l.sw	-88(r2), r3
	l.lwz	r5, -68(r2)
	l.addi	r20, r20, 1180          # CFC
	l.ori	r3, r4, 0
	l.lwz	r4, -120(r2)
	l.addi	r8, r14, 1
	l.sw	3480(r12), r13
	l.addi	r28, r28, 3540
	l.lwz	r15, 3500(r12)
	l.ori	r13, r14, 0
	l.lwz	r14, 3448(r12)
	l.addi	r31, r24, 1
	l.addi	r18, r18, 2950
	l.sw	7048(r22), r23
	l.lwz	r25, 7068(r22)
	l.ori	r23, r24, 0
	l.lwz	r24, 7016(r22)
	l.addi	r20, r20, 2360          # CFC
	l.j	.LBB39_150
	l.nop	0                       # in delay slot
.LBB39_84:                              # %if.else214
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 591
	l.lwz	r3, -136(r2)
	l.lwz	r13, 3432(r12)
	l.addi	r20, r20, 1182          # CFC
	l.lwz	r23, 7000(r22)
	l.jal	strlen
	l.nop	0                       # in delay slot
	l.ori	r3, r11, 0
	l.addi	r28, r28, 3546
	l.lwz	r5, -88(r2)
	l.ori	r13, r8, 0
	l.addi	r18, r18, 2955
	l.lwz	r15, 3480(r12)
	l.ori	r23, r31, 0
	l.lwz	r25, 7048(r22)
	l.addi	r20, r20, 2364          # CFC
.LBB39_85:                              # %if.end216
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 592
	l.movhi	r7, 0
	l.sb	-13(r2), r7
	l.ori	r4, r3, 0
	l.addi	r3, r0, 115
	l.addi	r20, r20, 1184          # CFC
	l.sw	-64(r2), r3
	l.movhi	r17, 0
	l.sb	3555(r12), r17
	l.ori	r14, r13, 0
	l.lwz	r6, -76(r2)
	l.addi	r28, r28, 3552
	l.addi	r13, r0, 115
	l.movhi	r27, 0
	l.sw	3504(r12), r13
	l.lwz	r16, 3492(r12)
	l.addi	r18, r18, 2960
	l.sb	7123(r22), r27
	l.ori	r24, r23, 0
	l.addi	r23, r0, 115
	l.sw	7072(r22), r23
	l.lwz	r26, 7060(r22)
	l.addi	r20, r20, 2368          # CFC
.LBB39_147:                             # %if.else386
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 593
	l.sw	-88(r2), r5
	l.andi	r3, r5, 2
	l.sfeqi	r3, 0
	l.addi	r20, r20, 1186          # CFC
	l.ori	r11, r4, 0
	l.sw	3480(r12), r15
	l.andi	r13, r15, 2
	l.addi	r28, r28, 3558
	l.ori	r8, r14, 0
	l.sw	7048(r22), r25
	l.andi	r23, r25, 2
	l.ori	r31, r24, 0
	l.bf	.LBB39_373
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2965
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2372          # CFC
	l.bf	.LBB39_374
	l.nop	0
.LBB39_376:
	l.addi	r18, r18, 594
	l.addi	r20, r20, 1188          # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 3564
	l.ori	r13, r14, 0
	l.addi	r18, r18, 2970
	l.ori	r23, r24, 0
	l.addi	r20, r20, 2376          # CFC
.LBB39_148:                             # %if.else386
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 595
	l.addi	r20, r20, 1190          # CFC
	l.addi	r11, r3, 2
	l.addi	r28, r28, 3570
	l.addi	r8, r13, 2
	l.addi	r18, r18, 2975
	l.addi	r31, r23, 2
	l.addi	r20, r20, 2380          # CFC
.LBB39_149:                             # %if.else386
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 596
	l.movhi	r4, 0
	l.addi	r20, r20, 1192          # CFC
	l.lwz	r5, -68(r2)
	l.movhi	r14, 0
	l.addi	r28, r28, 3576
	l.lwz	r15, 3500(r12)
	l.addi	r18, r18, 2980
	l.movhi	r24, 0
	l.lwz	r25, 7068(r22)
	l.addi	r20, r20, 2384          # CFC
.LBB39_150:                             # %if.end392
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 597
	l.sw	-124(r2), r3
	l.sfgts	r7, r11
	l.addi	r20, r20, 1194          # CFC
	l.sw	-116(r2), r7
	l.sw	3444(r12), r13
	l.addi	r28, r28, 3582
	l.sw	3452(r12), r17
	l.sw	7012(r22), r23
	l.sw	7020(r22), r27
	l.bf	.LBB39_377
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2985
	l.sfgts	r17, r8
	l.addi	r20, r20, 2388          # CFC
	l.bf	.LBB39_378
	l.nop	0
.LBB39_151:                             # %if.end392
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 598
	l.addi	r20, r20, 1196          # CFC
	l.sw	-116(r2), r11
	l.addi	r28, r28, 3588
	l.sw	3452(r12), r8
	l.addi	r18, r18, 2990
	l.sw	7020(r22), r31
	l.addi	r20, r20, 2392          # CFC
.LBB39_152:                             # %if.end392
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 599
	l.lwz	r3, -88(r2)
	l.andi	r3, r3, 132
	l.sw	-140(r2), r3
	l.sfnei	r3, 0
	l.sw	-84(r2), r7
	l.addi	r20, r20, 1198          # CFC
	l.sw	-132(r2), r11
	l.lwz	r13, 3480(r12)
	l.andi	r13, r13, 132
	l.sw	3428(r12), r13
	l.sw	3484(r12), r17
	l.addi	r28, r28, 3594
	l.sw	3436(r12), r8
	l.lwz	r23, 7048(r22)
	l.andi	r23, r23, 132
	l.sw	6996(r22), r23
	l.sw	7052(r22), r27
	l.sw	7004(r22), r31
	l.bf	.LBB39_379
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2995
	l.sfnei	r13, 0
	l.addi	r20, r20, 2396          # CFC
	l.bf	.LBB39_380
	l.nop	0
.LBB39_153:                             # %if.then402
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 600
	l.lwz	r3, -116(r2)
	l.lwz	r5, -68(r2)
	l.sub	r5, r5, r3
	l.addi	r20, r20, 1200          # CFC
	l.sfltsi	r5, 1
	l.lwz	r13, 3452(r12)
	l.lwz	r15, 3500(r12)
	l.addi	r28, r28, 3600
	l.sub	r15, r15, r13
	l.lwz	r23, 7020(r22)
	l.lwz	r25, 7068(r22)
	l.sub	r25, r25, r23
	l.bf	.LBB39_381
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3000
	l.sfltsi	r15, 1
	l.addi	r20, r20, 2400          # CFC
	l.bf	.LBB39_382
	l.nop	0
.LBB39_154:                             # %while.cond412.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 601
	l.lwz	r3, -92(r2)
	l.sub	r3, r3, r6
	l.addi	r11, r3, -1
	l.sfgtsi	r5, 16
	l.ori	r7, r5, 0
	l.lwz	r13, 3476(r12)
	l.addi	r20, r20, 1202          # CFC
	l.sub	r13, r13, r16
	l.addi	r8, r13, -1
	l.sw	-120(r2), r4
	l.ori	r17, r15, 0
	l.lwz	r23, 7044(r22)
	l.sw	-148(r2), r7
	l.addi	r28, r28, 3606
	l.sw	3448(r12), r14
	l.sw	3420(r12), r17
	l.sub	r23, r23, r26
	l.addi	r31, r23, -1
	l.ori	r27, r25, 0
	l.sw	7016(r22), r24
	l.sw	6988(r22), r27
	l.bf	.LBB39_383
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3005
	l.sfgtsi	r15, 16
	l.addi	r20, r20, 2404          # CFC
	l.bf	.LBB39_384
	l.nop	0
.LBB39_155:                             # %while.cond412.preheader.while.end421_crit_edge
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 602
	l.lwz	r3, -104(r2)
	l.add	r3, r3, r6
	l.addi	r20, r20, 1204          # CFC
	l.ori	r5, r7, 0
	l.lwz	r13, 3464(r12)
	l.addi	r28, r28, 3612
	l.add	r13, r13, r16
	l.ori	r15, r17, 0
	l.addi	r18, r18, 3010
	l.lwz	r23, 7032(r22)
	l.add	r23, r23, r26
	l.ori	r25, r27, 0
	l.addi	r20, r20, 2408          # CFC
	l.j	.LBB39_162
	l.nop	0                       # in delay slot
.LBB39_156:                             # %while.body415.lr.ph
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 603
	l.addi	r5, r0, 16
	l.addi	r20, r20, 1206          # CFC
	l.sfgtui	r11, 16
	l.addi	r28, r28, 3618
	l.addi	r15, r0, 16
	l.addi	r25, r0, 16
	l.bf	.LBB39_385
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3015
	l.sfgtui	r8, 16
	l.addi	r20, r20, 2412          # CFC
	l.bf	.LBB39_386
	l.nop	0
.LBB39_157:                             # %while.body415.lr.ph
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 604
	l.addi	r20, r20, 1208          # CFC
	l.ori	r5, r11, 0
	l.addi	r28, r28, 3624
	l.ori	r15, r8, 0
	l.addi	r18, r18, 3020
	l.ori	r25, r31, 0
	l.addi	r20, r20, 2416          # CFC
.LBB39_158:                             # %while.body415.lr.ph
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 605
	l.lwz	r3, -104(r2)
	l.add	r3, r3, r6
	l.sw	-100(r2), r3
	l.sw	-112(r2), r5
	l.addi	r20, r20, 1210          # CFC
	l.sfltsi	r5, 16
	l.lwz	r13, 3464(r12)
	l.add	r13, r13, r16
	l.sw	3468(r12), r13
	l.addi	r28, r28, 3630
	l.sw	3456(r12), r15
	l.lwz	r23, 7032(r22)
	l.add	r23, r23, r26
	l.sw	7036(r22), r23
	l.sw	7024(r22), r25
	l.bf	.LBB39_387
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3025
	l.sfltsi	r15, 16
	l.addi	r20, r20, 2420          # CFC
	l.bf	.LBB39_388
	l.nop	0
.LBB39_390:
	l.addi	r18, r18, 606
	l.addi	r20, r20, 1212          # CFC
	l.lwz	r5, -68(r2)
	l.addi	r28, r28, 3636
	l.lwz	r15, 3500(r12)
	l.addi	r18, r18, 3030
	l.lwz	r25, 7068(r22)
	l.addi	r20, r20, 2424          # CFC
.LBB39_159:                             # %while.body415.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 607
	l.sw	-156(r2), r11
	l.addi	r3, r5, -17
	l.lwz	r4, -116(r2)
	l.sub	r3, r3, r4
	l.addi	r4, r0, -16
	l.sw	3412(r12), r8
	l.addi	r13, r15, -17
	l.lwz	r14, 3452(r12)
	l.and	r3, r3, r4
	l.addi	r20, r20, 1214          # CFC
	l.sub	r13, r13, r14
	l.sw	6980(r22), r31
	l.sw	-160(r2), r3
	l.addi	r14, r0, -16
	l.addi	r23, r25, -17
	l.addi	r3, r5, -16
	l.and	r13, r13, r14
	l.lwz	r24, 7020(r22)
	l.sw	-164(r2), r3
	l.sw	3408(r12), r13
	l.addi	r28, r28, 3642
	l.sub	r23, r23, r24
	l.ori	r4, r7, 0
	l.addi	r13, r15, -16
	l.addi	r24, r0, -16
	l.lwz	r3, -108(r2)
	l.sw	3404(r12), r13
	l.and	r23, r23, r24
	l.lwz	r3, -100(r2)
	l.ori	r14, r17, 0
	l.sw	6976(r22), r23
	l.addi	r18, r18, 3035
	l.lwz	r3, -112(r2)
	l.lwz	r13, 3460(r12)
	l.addi	r23, r25, -16
	l.lwz	r13, 3468(r12)
	l.lwz	r13, 3456(r12)
	l.sw	6972(r22), r23
	l.ori	r24, r27, 0
	l.lwz	r23, 7028(r22)
	l.lwz	r23, 7036(r22)
	l.lwz	r23, 7024(r22)
	l.addi	r20, r20, 2428          # CFC
.LBB39_160:                             # %while.body415
                                        #   Parent Loop BB39_1 Depth=1
                                        #     Parent Loop BB39_2 Depth=2
                                        #       Parent Loop BB39_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 608
	l.sw	-80(r2), r4
	l.lwz	r3, -100(r2)
	l.lwz	r4, -108(r2)
	l.lwz	r5, -112(r2)
	l.sw	3488(r12), r14
	l.lwz	r13, 3468(r12)
	l.addi	r20, r20, 1216          # CFC
	l.lwz	r14, 3460(r12)
	l.lwz	r15, 3456(r12)
	l.sw	7056(r22), r24
	l.lwz	r23, 7036(r22)
	l.lwz	r24, 7028(r22)
	l.lwz	r25, 7024(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.addi	r28, r28, 3648
	l.lwz	r4, -80(r2)
	l.addi	r4, r4, -16
	l.sfgtsi	r4, 16
	l.lwz	r14, 3488(r12)
	l.addi	r14, r14, -16
	l.lwz	r24, 7056(r22)
	l.addi	r24, r24, -16
	l.bf	.LBB39_391
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3040
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 2432          # CFC
	l.bf	.LBB39_392
	l.nop	0
.LBB39_161:                             # %while.end421.loopexit
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 609
	l.lwz	r3, -116(r2)
	l.lwz	r4, -164(r2)
	l.sub	r3, r4, r3
	l.lwz	r4, -160(r2)
	l.sub	r5, r3, r4
	l.lwz	r13, 3452(r12)
	l.lwz	r14, 3404(r12)
	l.addi	r20, r20, 1218          # CFC
	l.sub	r13, r14, r13
	l.lwz	r6, -76(r2)
	l.lwz	r14, 3408(r12)
	l.lwz	r23, 7020(r22)
	l.lwz	r4, -120(r2)
	l.sub	r15, r13, r14
	l.lwz	r24, 6972(r22)
	l.lwz	r7, -148(r2)
	l.addi	r28, r28, 3654
	l.lwz	r16, 3492(r12)
	l.sub	r23, r24, r23
	l.lwz	r11, -156(r2)
	l.lwz	r14, 3448(r12)
	l.lwz	r24, 6976(r22)
	l.lwz	r3, -100(r2)
	l.lwz	r17, 3420(r12)
	l.addi	r18, r18, 3045
	l.sub	r25, r23, r24
	l.lwz	r8, 3412(r12)
	l.lwz	r13, 3468(r12)
	l.lwz	r26, 7060(r22)
	l.lwz	r24, 7016(r22)
	l.lwz	r27, 6988(r22)
	l.lwz	r31, 6980(r22)
	l.lwz	r23, 7036(r22)
	l.addi	r20, r20, 2436          # CFC
.LBB39_162:                             # %while.end421
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 610
	l.sfgtu	r11, r5
	l.sw	-100(r2), r5
	l.addi	r20, r20, 1220          # CFC
	l.movhi	r4, hi(vfnprintf.blanks)
	l.sw	3468(r12), r15
	l.addi	r28, r28, 3660
	l.movhi	r14, hi(vfnprintf.blanks)
	l.sw	7036(r22), r25
	l.movhi	r24, hi(vfnprintf.blanks)
	l.bf	.LBB39_393
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3050
	l.sfgtu	r8, r15
	l.addi	r20, r20, 2440          # CFC
	l.bf	.LBB39_394
	l.nop	0
.LBB39_163:                             # %while.end421
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 611
	l.addi	r20, r20, 1222          # CFC
	l.ori	r5, r11, 0
	l.addi	r28, r28, 3666
	l.ori	r15, r8, 0
	l.addi	r18, r18, 3055
	l.ori	r25, r31, 0
	l.addi	r20, r20, 2444          # CFC
.LBB39_164:                             # %while.end421
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 612
	l.sw	-80(r2), r5
	l.ori	r4, r4, lo(vfnprintf.blanks)
	l.lwz	r5, -80(r2)
	l.sw	3488(r12), r15
	l.ori	r14, r14, lo(vfnprintf.blanks)
	l.addi	r20, r20, 1224          # CFC
	l.lwz	r15, 3488(r12)
	l.sw	7056(r22), r25
	l.ori	r24, r24, lo(vfnprintf.blanks)
	l.lwz	r25, 7056(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r4, -80(r2)
	l.addi	r28, r28, 3672
	l.lwz	r3, -100(r2)
	l.sfges	r4, r3
	l.lwz	r14, 3488(r12)
	l.lwz	r13, 3468(r12)
	l.lwz	r24, 7056(r22)
	l.lwz	r23, 7036(r22)
	l.bf	.LBB39_395
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3060
	l.sfges	r14, r13
	l.addi	r20, r20, 2448          # CFC
	l.bf	.LBB39_396
	l.nop	0
.LBB39_165:                             # %print_back_to_string.exit819
                                        #   in Loop: Header=BB39_3 Depth=3
	l.j	.LBB39_9
	l.nop	0                       # in delay slot
.LBB39_166:                             # %do.end428
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 613
	l.lwz	r6, -76(r2)
	l.lwz	r3, -148(r2)
	l.add	r6, r3, r6
	l.lwz	r3, -68(r2)
	l.lwz	r7, -84(r2)
	l.addi	r20, r20, 1226          # CFC
	l.lwz	r16, 3492(r12)
	l.lwz	r13, 3420(r12)
	l.add	r16, r13, r16
	l.lwz	r4, -120(r2)
	l.lwz	r13, 3500(r12)
	l.addi	r28, r28, 3678
	l.lwz	r26, 7060(r22)
	l.lwz	r11, -132(r2)
	l.lwz	r17, 3484(r12)
	l.lwz	r23, 6988(r22)
	l.lwz	r14, 3448(r12)
	l.addi	r18, r18, 3065
	l.lwz	r8, 3436(r12)
	l.add	r26, r23, r26
	l.lwz	r23, 7068(r22)
	l.lwz	r27, 7052(r22)
	l.lwz	r24, 7016(r22)
	l.lwz	r31, 7004(r22)
	l.addi	r20, r20, 2452          # CFC
.LBB39_167:                             # %if.end432
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 614
	l.andi	r3, r4, 255
	l.addi	r20, r20, 1228          # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 3684
	l.andi	r13, r14, 255
	l.andi	r23, r24, 255
	l.bf	.LBB39_397
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3070
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2456          # CFC
	l.bf	.LBB39_398
	l.nop	0
.LBB39_168:                             # %if.then434
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 615
	l.lwz	r3, -104(r2)
	l.add	r3, r3, r6
	l.sw	-76(r2), r6
	l.lwz	r4, -92(r2)
	l.sub	r4, r4, r6
	l.lwz	r13, 3464(r12)
	l.add	r13, r13, r16
	l.addi	r20, r20, 1230          # CFC
	l.sw	3492(r12), r16
	l.addi	r4, r4, -1
	l.lwz	r14, 3476(r12)
	l.lwz	r23, 7032(r22)
	l.addi	r5, r0, 1
	l.sub	r14, r14, r16
	l.add	r23, r23, r26
	l.addi	r28, r28, 3690
	l.sfgtui	r4, 1
	l.addi	r14, r14, -1
	l.addi	r15, r0, 1
	l.sw	7060(r22), r26
	l.lwz	r24, 7044(r22)
	l.sub	r24, r24, r26
	l.addi	r24, r24, -1
	l.addi	r25, r0, 1
	l.bf	.LBB39_399
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3075
	l.sfgtui	r14, 1
	l.addi	r20, r20, 2460          # CFC
	l.bf	.LBB39_400
	l.nop	0
.LBB39_169:                             # %if.then434
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 616
	l.addi	r20, r20, 1232          # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 3696
	l.ori	r15, r14, 0
	l.addi	r18, r18, 3080
	l.ori	r25, r24, 0
	l.addi	r20, r20, 2464          # CFC
.LBB39_170:                             # %if.then434
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 617
	l.sw	-64(r2), r5
	l.addi	r4, r2, -13
	l.lwz	r5, -64(r2)
	l.sw	3504(r12), r15
	l.addi	r20, r20, 1234          # CFC
	l.addi	r14, r12, -13
	l.lwz	r15, 3504(r12)
	l.sw	7072(r22), r25
	l.addi	r24, r22, -13
	l.lwz	r25, 7072(r22)
	l.addi	r28, r28, 3702
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r4, -64(r2)
	l.sfgtsi	r4, 0
	l.lwz	r14, 3504(r12)
	l.lwz	r24, 7072(r22)
	l.bf	.LBB39_401
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3085
	l.sfgtsi	r14, 0
	l.addi	r20, r20, 2468          # CFC
	l.bf	.LBB39_402
	l.nop	0
.LBB39_171:                             # %print_back_to_string.exit810
                                        #   in Loop: Header=BB39_3 Depth=3
	l.j	.LBB39_9
	l.nop	0                       # in delay slot
.LBB39_172:                             # %if.end438
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 618
	l.lwz	r6, -76(r2)
	l.addi	r20, r20, 1236          # CFC
	l.addi	r6, r6, 1
	l.lwz	r16, 3492(r12)
	l.addi	r28, r28, 3708
	l.addi	r16, r16, 1
	l.addi	r18, r18, 3090
	l.lwz	r26, 7060(r22)
	l.addi	r26, r26, 1
	l.addi	r20, r20, 2472          # CFC
	l.j	.LBB39_179
	l.nop	0                       # in delay slot
.LBB39_173:                             # %if.else440
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 619
	l.lwz	r3, -88(r2)
	l.andi	r3, r3, 2
	l.sfeqi	r3, 0
	l.addi	r20, r20, 1238          # CFC
	l.lwz	r5, -68(r2)
	l.lwz	r13, 3480(r12)
	l.andi	r13, r13, 2
	l.addi	r28, r28, 3714
	l.lwz	r15, 3500(r12)
	l.lwz	r23, 7048(r22)
	l.andi	r23, r23, 2
	l.lwz	r25, 7068(r22)
	l.bf	.LBB39_403
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3095
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2476          # CFC
	l.bf	.LBB39_404
	l.nop	0
.LBB39_174:                             # %if.then443
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 620
	l.addi	r3, r0, 48
	l.sb	-55(r2), r3
	l.lwz	r3, -64(r2)
	l.sb	-54(r2), r3
	l.lwz	r3, -104(r2)
	l.addi	r13, r0, 48
	l.sb	3513(r12), r13
	l.lwz	r13, 3504(r12)
	l.add	r3, r3, r6
	l.sb	3514(r12), r13
	l.addi	r23, r0, 48
	l.addi	r20, r20, 1240          # CFC
	l.sw	-76(r2), r6
	l.lwz	r13, 3464(r12)
	l.sb	7081(r22), r23
	l.lwz	r4, -92(r2)
	l.add	r13, r13, r16
	l.lwz	r23, 7072(r22)
	l.sub	r4, r4, r6
	l.sw	3492(r12), r16
	l.sb	7082(r22), r23
	l.addi	r4, r4, -1
	l.lwz	r14, 3476(r12)
	l.addi	r28, r28, 3720
	l.lwz	r23, 7032(r22)
	l.addi	r5, r0, 2
	l.sub	r14, r14, r16
	l.add	r23, r23, r26
	l.sfgtui	r4, 2
	l.addi	r14, r14, -1
	l.addi	r15, r0, 2
	l.sw	7060(r22), r26
	l.lwz	r24, 7044(r22)
	l.sub	r24, r24, r26
	l.addi	r24, r24, -1
	l.addi	r25, r0, 2
	l.bf	.LBB39_405
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3100
	l.sfgtui	r14, 2
	l.addi	r20, r20, 2480          # CFC
	l.bf	.LBB39_406
	l.nop	0
.LBB39_175:                             # %if.then443
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 621
	l.addi	r20, r20, 1242          # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 3726
	l.ori	r15, r14, 0
	l.addi	r18, r18, 3105
	l.ori	r25, r24, 0
	l.addi	r20, r20, 2484          # CFC
.LBB39_176:                             # %if.then443
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 622
	l.sw	-64(r2), r5
	l.addi	r4, r2, -55
	l.lwz	r5, -64(r2)
	l.sw	3504(r12), r15
	l.addi	r20, r20, 1244          # CFC
	l.addi	r14, r12, -55
	l.lwz	r15, 3504(r12)
	l.sw	7072(r22), r25
	l.addi	r24, r22, -55
	l.lwz	r25, 7072(r22)
	l.addi	r28, r28, 3732
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r4, -64(r2)
	l.sfgtsi	r4, 1
	l.lwz	r14, 3504(r12)
	l.lwz	r24, 7072(r22)
	l.bf	.LBB39_407
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3110
	l.sfgtsi	r14, 1
	l.addi	r20, r20, 2488          # CFC
	l.bf	.LBB39_408
	l.nop	0
.LBB39_177:                             # %print_back_to_string.exit801
                                        #   in Loop: Header=BB39_3 Depth=3
	l.j	.LBB39_9
	l.nop	0                       # in delay slot
.LBB39_178:                             # %if.end451
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 623
	l.lwz	r6, -76(r2)
	l.addi	r20, r20, 1246          # CFC
	l.addi	r6, r6, 2
	l.lwz	r16, 3492(r12)
	l.addi	r28, r28, 3738
	l.addi	r16, r16, 2
	l.addi	r18, r18, 3115
	l.lwz	r26, 7060(r22)
	l.addi	r26, r26, 2
	l.addi	r20, r20, 2492          # CFC
.LBB39_179:                             # %if.end454
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 624
	l.lwz	r5, -68(r2)
	l.lwz	r7, -84(r2)
	l.addi	r20, r20, 1248          # CFC
	l.lwz	r11, -132(r2)
	l.lwz	r15, 3500(r12)
	l.addi	r28, r28, 3744
	l.lwz	r17, 3484(r12)
	l.lwz	r8, 3436(r12)
	l.addi	r18, r18, 3120
	l.lwz	r25, 7068(r22)
	l.lwz	r27, 7052(r22)
	l.lwz	r31, 7004(r22)
	l.addi	r20, r20, 2496          # CFC
.LBB39_180:                             # %if.end454
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 625
	l.lwz	r3, -140(r2)
	l.addi	r20, r20, 1250          # CFC
	l.sfnei	r3, 128
	l.addi	r28, r28, 3750
	l.lwz	r13, 3428(r12)
	l.lwz	r23, 6996(r22)
	l.bf	.LBB39_409
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3125
	l.sfnei	r13, 128
	l.addi	r20, r20, 2500          # CFC
	l.bf	.LBB39_410
	l.nop	0
.LBB39_181:                             # %if.then458
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 626
	l.lwz	r3, -116(r2)
	l.sub	r4, r5, r3
	l.addi	r20, r20, 1252          # CFC
	l.sfltsi	r4, 1
	l.lwz	r13, 3452(r12)
	l.addi	r28, r28, 3756
	l.sub	r14, r15, r13
	l.lwz	r23, 7020(r22)
	l.sub	r24, r25, r23
	l.bf	.LBB39_411
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3130
	l.sfltsi	r14, 1
	l.addi	r20, r20, 2504          # CFC
	l.bf	.LBB39_412
	l.nop	0
.LBB39_182:                             # %while.cond468.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 627
	l.lwz	r3, -92(r2)
	l.sub	r3, r3, r6
	l.addi	r7, r3, -1
	l.sfgtsi	r4, 16
	l.sw	-76(r2), r6
	l.addi	r20, r20, 1254          # CFC
	l.sw	-112(r2), r4
	l.lwz	r13, 3476(r12)
	l.sub	r13, r13, r16
	l.addi	r17, r13, -1
	l.sw	3492(r12), r16
	l.addi	r28, r28, 3762
	l.sw	3456(r12), r14
	l.lwz	r23, 7044(r22)
	l.sub	r23, r23, r26
	l.addi	r27, r23, -1
	l.sw	7060(r22), r26
	l.sw	7024(r22), r24
	l.bf	.LBB39_413
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3135
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 2508          # CFC
	l.bf	.LBB39_414
	l.nop	0
.LBB39_183:                             # %while.cond468.preheader.while.end477_crit_edge
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 628
	l.lwz	r3, -104(r2)
	l.add	r11, r3, r6
	l.addi	r20, r20, 1256          # CFC
	l.ori	r3, r4, 0
	l.lwz	r13, 3464(r12)
	l.addi	r28, r28, 3768
	l.add	r8, r13, r16
	l.ori	r13, r14, 0
	l.addi	r18, r18, 3140
	l.lwz	r23, 7032(r22)
	l.add	r31, r23, r26
	l.ori	r23, r24, 0
	l.addi	r20, r20, 2512          # CFC
	l.j	.LBB39_190
	l.nop	0                       # in delay slot
.LBB39_184:                             # %while.body471.lr.ph
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 629
	l.addi	r3, r0, 16
	l.addi	r20, r20, 1258          # CFC
	l.sfgtui	r7, 16
	l.addi	r28, r28, 3774
	l.addi	r13, r0, 16
	l.addi	r23, r0, 16
	l.bf	.LBB39_415
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3145
	l.sfgtui	r17, 16
	l.addi	r20, r20, 2516          # CFC
	l.bf	.LBB39_416
	l.nop	0
.LBB39_185:                             # %while.body471.lr.ph
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 630
	l.addi	r20, r20, 1260          # CFC
	l.ori	r3, r7, 0
	l.addi	r28, r28, 3780
	l.ori	r13, r17, 0
	l.addi	r18, r18, 3150
	l.ori	r23, r27, 0
	l.addi	r20, r20, 2520          # CFC
.LBB39_186:                             # %while.body471.lr.ph
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 631
	l.sw	-80(r2), r3
	l.lwz	r3, -104(r2)
	l.add	r11, r3, r6
	l.lwz	r3, -80(r2)
	l.addi	r20, r20, 1262          # CFC
	l.sfltsi	r3, 16
	l.sw	3488(r12), r13
	l.lwz	r13, 3464(r12)
	l.add	r8, r13, r16
	l.addi	r28, r28, 3786
	l.lwz	r13, 3488(r12)
	l.sw	7056(r22), r23
	l.lwz	r23, 7032(r22)
	l.add	r31, r23, r26
	l.lwz	r23, 7056(r22)
	l.bf	.LBB39_417
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3155
	l.sfltsi	r13, 16
	l.addi	r20, r20, 2524          # CFC
	l.bf	.LBB39_418
	l.nop	0
.LBB39_187:                             # %while.body471.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 632
	l.sw	-120(r2), r7
	l.addi	r3, r5, -17
	l.ori	r6, r4, 0
	l.lwz	r4, -116(r2)
	l.sub	r3, r3, r4
	l.sw	3448(r12), r17
	l.addi	r13, r15, -17
	l.ori	r16, r14, 0
	l.addi	r4, r0, -16
	l.addi	r20, r20, 1264          # CFC
	l.lwz	r14, 3452(r12)
	l.sw	7016(r22), r27
	l.and	r3, r3, r4
	l.sub	r13, r13, r14
	l.addi	r23, r25, -17
	l.sw	-140(r2), r3
	l.addi	r14, r0, -16
	l.ori	r26, r24, 0
	l.addi	r3, r5, -16
	l.and	r13, r13, r14
	l.addi	r28, r28, 3792
	l.lwz	r24, 7020(r22)
	l.sw	-148(r2), r3
	l.sw	3428(r12), r13
	l.sub	r23, r23, r24
	l.ori	r3, r6, 0
	l.addi	r13, r15, -16
	l.addi	r24, r0, -16
	l.lwz	r4, -96(r2)
	l.sw	3420(r12), r13
	l.and	r23, r23, r24
	l.addi	r18, r18, 3160
	l.sw	-100(r2), r11
	l.ori	r13, r16, 0
	l.sw	6996(r22), r23
	l.lwz	r14, 3472(r12)
	l.sw	3468(r12), r8
	l.addi	r23, r25, -16
	l.sw	6988(r22), r23
	l.ori	r23, r26, 0
	l.lwz	r24, 7040(r22)
	l.sw	7036(r22), r31
	l.addi	r20, r20, 2528          # CFC
.LBB39_188:                             # %while.body471
                                        #   Parent Loop BB39_1 Depth=1
                                        #     Parent Loop BB39_2 Depth=2
                                        #       Parent Loop BB39_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 633
	l.sw	-64(r2), r3
	l.ori	r3, r11, 0
	l.lwz	r4, -96(r2)
	l.lwz	r5, -80(r2)
	l.sw	3504(r12), r13
	l.ori	r13, r8, 0
	l.lwz	r14, 3472(r12)
	l.addi	r20, r20, 1266          # CFC
	l.lwz	r15, 3488(r12)
	l.sw	7072(r22), r23
	l.ori	r23, r31, 0
	l.lwz	r24, 7040(r22)
	l.lwz	r25, 7056(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r3, -64(r2)
	l.lwz	r11, -100(r2)
	l.addi	r28, r28, 3798
	l.addi	r3, r3, -16
	l.sfgtsi	r3, 16
	l.lwz	r13, 3504(r12)
	l.lwz	r8, 3468(r12)
	l.addi	r13, r13, -16
	l.lwz	r23, 7072(r22)
	l.lwz	r31, 7036(r22)
	l.addi	r23, r23, -16
	l.bf	.LBB39_419
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3165
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 2532          # CFC
	l.bf	.LBB39_420
	l.nop	0
.LBB39_189:                             # %while.end477.loopexit
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 634
	l.lwz	r3, -116(r2)
	l.lwz	r4, -148(r2)
	l.sub	r3, r4, r3
	l.lwz	r4, -140(r2)
	l.sub	r3, r3, r4
	l.addi	r20, r20, 1268          # CFC
	l.lwz	r13, 3452(r12)
	l.lwz	r14, 3420(r12)
	l.sub	r13, r14, r13
	l.lwz	r4, -112(r2)
	l.lwz	r14, 3428(r12)
	l.addi	r28, r28, 3804
	l.lwz	r23, 7020(r22)
	l.lwz	r7, -120(r2)
	l.sub	r13, r13, r14
	l.lwz	r24, 6988(r22)
	l.lwz	r14, 3456(r12)
	l.addi	r18, r18, 3170
	l.lwz	r17, 3448(r12)
	l.sub	r23, r24, r23
	l.lwz	r24, 6996(r22)
	l.sub	r23, r23, r24
	l.lwz	r24, 7024(r22)
	l.lwz	r27, 7016(r22)
	l.addi	r20, r20, 2536          # CFC
.LBB39_190:                             # %while.end477
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 635
	l.sfgtu	r7, r3
	l.sw	-80(r2), r3
	l.addi	r20, r20, 1270          # CFC
	l.ori	r4, r3, 0
	l.sw	3488(r12), r13
	l.addi	r28, r28, 3810
	l.ori	r14, r13, 0
	l.sw	7056(r22), r23
	l.ori	r24, r23, 0
	l.bf	.LBB39_421
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3175
	l.sfgtu	r17, r13
	l.addi	r20, r20, 2540          # CFC
	l.bf	.LBB39_422
	l.nop	0
.LBB39_424:
	l.addi	r18, r18, 636
	l.addi	r20, r20, 1272          # CFC
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 3816
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r18, r18, 3180
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.addi	r20, r20, 2544          # CFC
.LBB39_191:                             # %while.end477
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 637
	l.addi	r20, r20, 1274          # CFC
	l.ori	r4, r7, 0
	l.addi	r28, r28, 3822
	l.ori	r14, r17, 0
	l.addi	r18, r18, 3185
	l.ori	r24, r27, 0
	l.addi	r20, r20, 2548          # CFC
.LBB39_192:                             # %while.end477
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 638
	l.sw	-64(r2), r4
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r3, r11, 0
	l.lwz	r5, -64(r2)
	l.sw	3504(r12), r14
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.addi	r20, r20, 1276          # CFC
	l.ori	r13, r8, 0
	l.lwz	r15, 3504(r12)
	l.sw	7072(r22), r24
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r23, r31, 0
	l.lwz	r25, 7072(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.addi	r28, r28, 3828
	l.lwz	r4, -64(r2)
	l.lwz	r3, -80(r2)
	l.sfges	r4, r3
	l.lwz	r14, 3504(r12)
	l.lwz	r13, 3488(r12)
	l.lwz	r24, 7072(r22)
	l.lwz	r23, 7056(r22)
	l.bf	.LBB39_425
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3190
	l.sfges	r14, r13
	l.addi	r20, r20, 2552          # CFC
	l.bf	.LBB39_426
	l.nop	0
.LBB39_193:                             # %print_back_to_string.exit783
                                        #   in Loop: Header=BB39_3 Depth=3
	l.j	.LBB39_9
	l.nop	0                       # in delay slot
.LBB39_194:                             # %do.end484
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 639
	l.lwz	r6, -76(r2)
	l.lwz	r3, -112(r2)
	l.add	r6, r6, r3
	l.addi	r20, r20, 1278          # CFC
	l.lwz	r7, -84(r2)
	l.lwz	r11, -132(r2)
	l.lwz	r16, 3492(r12)
	l.lwz	r13, 3456(r12)
	l.addi	r28, r28, 3834
	l.add	r16, r16, r13
	l.lwz	r17, 3484(r12)
	l.lwz	r8, 3436(r12)
	l.lwz	r26, 7060(r22)
	l.addi	r18, r18, 3195
	l.lwz	r23, 7024(r22)
	l.add	r26, r26, r23
	l.lwz	r27, 7052(r22)
	l.lwz	r31, 7004(r22)
	l.addi	r20, r20, 2556          # CFC
.LBB39_195:                             # %if.end488
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 640
	l.sub	r5, r7, r11
	l.addi	r20, r20, 1280          # CFC
	l.sfltsi	r5, 1
	l.addi	r28, r28, 3840
	l.sub	r15, r17, r8
	l.sub	r25, r27, r31
	l.bf	.LBB39_427
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3200
	l.sfltsi	r15, 1
	l.addi	r20, r20, 2560          # CFC
	l.bf	.LBB39_428
	l.nop	0
.LBB39_196:                             # %while.cond498.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 641
	l.lwz	r3, -92(r2)
	l.sub	r3, r3, r6
	l.addi	r4, r3, -1
	l.sfgtsi	r5, 16
	l.sw	-76(r2), r6
	l.addi	r20, r20, 1282          # CFC
	l.sw	-100(r2), r5
	l.lwz	r13, 3476(r12)
	l.sub	r13, r13, r16
	l.addi	r14, r13, -1
	l.sw	3492(r12), r16
	l.addi	r28, r28, 3846
	l.sw	3468(r12), r15
	l.lwz	r23, 7044(r22)
	l.sub	r23, r23, r26
	l.addi	r24, r23, -1
	l.sw	7060(r22), r26
	l.sw	7036(r22), r25
	l.bf	.LBB39_429
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3205
	l.sfgtsi	r15, 16
	l.addi	r20, r20, 2564          # CFC
	l.bf	.LBB39_430
	l.nop	0
.LBB39_197:                             # %while.cond498.preheader.while.end507_crit_edge
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 642
	l.lwz	r3, -104(r2)
	l.add	r6, r3, r6
	l.addi	r20, r20, 1284          # CFC
	l.ori	r3, r5, 0
	l.lwz	r13, 3464(r12)
	l.addi	r28, r28, 3852
	l.add	r16, r13, r16
	l.ori	r13, r15, 0
	l.addi	r18, r18, 3210
	l.lwz	r23, 7032(r22)
	l.add	r26, r23, r26
	l.ori	r23, r25, 0
	l.addi	r20, r20, 2568          # CFC
	l.j	.LBB39_204
	l.nop	0                       # in delay slot
.LBB39_198:                             # %while.body501.lr.ph
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 643
	l.addi	r3, r0, 16
	l.addi	r20, r20, 1286          # CFC
	l.sfgtui	r4, 16
	l.addi	r28, r28, 3858
	l.addi	r13, r0, 16
	l.addi	r23, r0, 16
	l.bf	.LBB39_431
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3215
	l.sfgtui	r14, 16
	l.addi	r20, r20, 2572          # CFC
	l.bf	.LBB39_432
	l.nop	0
.LBB39_199:                             # %while.body501.lr.ph
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 644
	l.addi	r20, r20, 1288          # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 3864
	l.ori	r13, r14, 0
	l.addi	r18, r18, 3220
	l.ori	r23, r24, 0
	l.addi	r20, r20, 2576          # CFC
.LBB39_200:                             # %while.body501.lr.ph
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 645
	l.sw	-80(r2), r3
	l.lwz	r3, -104(r2)
	l.add	r6, r3, r6
	l.lwz	r3, -80(r2)
	l.addi	r20, r20, 1290          # CFC
	l.sfltsi	r3, 16
	l.sw	3488(r12), r13
	l.lwz	r13, 3464(r12)
	l.add	r16, r13, r16
	l.addi	r28, r28, 3870
	l.lwz	r13, 3488(r12)
	l.sw	7056(r22), r23
	l.lwz	r23, 7032(r22)
	l.add	r26, r23, r26
	l.lwz	r23, 7056(r22)
	l.bf	.LBB39_433
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3225
	l.sfltsi	r13, 16
	l.addi	r20, r20, 2580          # CFC
	l.bf	.LBB39_434
	l.nop	0
.LBB39_201:                             # %while.body501.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 646
	l.sw	-112(r2), r4
	l.addi	r3, r7, -17
	l.sub	r3, r3, r11
	l.addi	r4, r0, -16
	l.and	r3, r3, r4
	l.sw	3456(r12), r14
	l.addi	r13, r17, -17
	l.addi	r20, r20, 1292          # CFC
	l.sub	r13, r13, r8
	l.sw	-120(r2), r3
	l.addi	r14, r0, -16
	l.sw	7024(r22), r24
	l.addi	r3, r7, -16
	l.and	r13, r13, r14
	l.addi	r23, r27, -17
	l.sw	-140(r2), r3
	l.addi	r28, r28, 3876
	l.sw	3448(r12), r13
	l.sub	r23, r23, r31
	l.ori	r3, r5, 0
	l.addi	r13, r17, -16
	l.addi	r24, r0, -16
	l.sw	-84(r2), r6
	l.sw	3428(r12), r13
	l.addi	r18, r18, 3230
	l.and	r23, r23, r24
	l.ori	r13, r15, 0
	l.sw	3484(r12), r16
	l.sw	7016(r22), r23
	l.addi	r23, r27, -16
	l.sw	6996(r22), r23
	l.ori	r23, r25, 0
	l.sw	7052(r22), r26
	l.addi	r20, r20, 2584          # CFC
.LBB39_202:                             # %while.body501
                                        #   Parent Loop BB39_1 Depth=1
                                        #     Parent Loop BB39_2 Depth=2
                                        #       Parent Loop BB39_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 647
	l.sw	-64(r2), r3
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r3, r6, 0
	l.lwz	r5, -80(r2)
	l.sw	3504(r12), r13
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.addi	r20, r20, 1294          # CFC
	l.ori	r13, r16, 0
	l.lwz	r15, 3488(r12)
	l.sw	7072(r22), r23
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r23, r26, 0
	l.lwz	r25, 7056(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r3, -64(r2)
	l.addi	r28, r28, 3882
	l.lwz	r6, -84(r2)
	l.addi	r3, r3, -16
	l.sfgtsi	r3, 16
	l.lwz	r13, 3504(r12)
	l.lwz	r16, 3484(r12)
	l.addi	r13, r13, -16
	l.lwz	r23, 7072(r22)
	l.lwz	r26, 7052(r22)
	l.addi	r23, r23, -16
	l.bf	.LBB39_435
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3235
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 2588          # CFC
	l.bf	.LBB39_436
	l.nop	0
.LBB39_203:                             # %while.end507.loopexit
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 648
	l.lwz	r3, -132(r2)
	l.lwz	r4, -140(r2)
	l.sub	r3, r4, r3
	l.lwz	r4, -120(r2)
	l.sub	r3, r3, r4
	l.addi	r20, r20, 1296          # CFC
	l.lwz	r13, 3436(r12)
	l.lwz	r14, 3428(r12)
	l.sub	r13, r14, r13
	l.lwz	r5, -100(r2)
	l.lwz	r14, 3448(r12)
	l.addi	r28, r28, 3888
	l.lwz	r23, 7004(r22)
	l.lwz	r4, -112(r2)
	l.sub	r13, r13, r14
	l.lwz	r24, 6996(r22)
	l.lwz	r15, 3468(r12)
	l.addi	r18, r18, 3240
	l.lwz	r14, 3456(r12)
	l.sub	r23, r24, r23
	l.lwz	r24, 7016(r22)
	l.sub	r23, r23, r24
	l.lwz	r25, 7036(r22)
	l.lwz	r24, 7024(r22)
	l.addi	r20, r20, 2592          # CFC
.LBB39_204:                             # %while.end507
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 649
	l.sfgtu	r4, r3
	l.sw	-80(r2), r3
	l.addi	r20, r20, 1298          # CFC
	l.ori	r5, r3, 0
	l.sw	3488(r12), r13
	l.addi	r28, r28, 3894
	l.ori	r15, r13, 0
	l.sw	7056(r22), r23
	l.ori	r25, r23, 0
	l.bf	.LBB39_437
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3245
	l.sfgtu	r14, r13
	l.addi	r20, r20, 2596          # CFC
	l.bf	.LBB39_438
	l.nop	0
.LBB39_440:
	l.addi	r18, r18, 650
	l.addi	r20, r20, 1300          # CFC
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 3900
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r18, r18, 3250
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.addi	r20, r20, 2600          # CFC
.LBB39_205:                             # %while.end507
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 651
	l.addi	r20, r20, 1302          # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 3906
	l.ori	r15, r14, 0
	l.addi	r18, r18, 3255
	l.ori	r25, r24, 0
	l.addi	r20, r20, 2604          # CFC
.LBB39_206:                             # %while.end507
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 652
	l.sw	-64(r2), r5
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r3, r6, 0
	l.lwz	r5, -64(r2)
	l.sw	3504(r12), r15
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.addi	r20, r20, 1304          # CFC
	l.ori	r13, r16, 0
	l.lwz	r15, 3504(r12)
	l.sw	7072(r22), r25
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r23, r26, 0
	l.lwz	r25, 7072(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.addi	r28, r28, 3912
	l.lwz	r4, -64(r2)
	l.lwz	r3, -80(r2)
	l.sfges	r4, r3
	l.lwz	r14, 3504(r12)
	l.lwz	r13, 3488(r12)
	l.lwz	r24, 7072(r22)
	l.lwz	r23, 7056(r22)
	l.bf	.LBB39_441
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3260
	l.sfges	r14, r13
	l.addi	r20, r20, 2608          # CFC
	l.bf	.LBB39_442
	l.nop	0
.LBB39_207:                             # %print_back_to_string.exit765
                                        #   in Loop: Header=BB39_3 Depth=3
	l.j	.LBB39_9
	l.nop	0                       # in delay slot
.LBB39_208:                             # %do.end514
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 653
	l.lwz	r6, -76(r2)
	l.lwz	r3, -100(r2)
	l.addi	r20, r20, 1306          # CFC
	l.add	r6, r6, r3
	l.lwz	r16, 3492(r12)
	l.addi	r28, r28, 3918
	l.lwz	r13, 3468(r12)
	l.add	r16, r16, r13
	l.addi	r18, r18, 3265
	l.lwz	r26, 7060(r22)
	l.lwz	r23, 7036(r22)
	l.add	r26, r26, r23
	l.addi	r20, r20, 2612          # CFC
.LBB39_209:                             # %if.end517
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 654
	l.lwz	r3, -104(r2)
	l.add	r3, r3, r6
	l.sw	-76(r2), r6
	l.lwz	r4, -92(r2)
	l.sub	r4, r4, r6
	l.lwz	r13, 3464(r12)
	l.add	r13, r13, r16
	l.sw	3492(r12), r16
	l.addi	r20, r20, 1308          # CFC
	l.addi	r6, r4, -1
	l.lwz	r14, 3476(r12)
	l.lwz	r23, 7032(r22)
	l.lwz	r5, -124(r2)
	l.sub	r14, r14, r16
	l.add	r23, r23, r26
	l.sfgtu	r6, r5
	l.addi	r16, r14, -1
	l.addi	r28, r28, 3924
	l.sw	7060(r22), r26
	l.lwz	r4, -136(r2)
	l.lwz	r15, 3444(r12)
	l.lwz	r14, 3432(r12)
	l.lwz	r24, 7044(r22)
	l.sub	r24, r24, r26
	l.addi	r26, r24, -1
	l.lwz	r25, 7012(r22)
	l.lwz	r24, 7000(r22)
	l.bf	.LBB39_443
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3270
	l.sfgtu	r16, r15
	l.addi	r20, r20, 2616          # CFC
	l.bf	.LBB39_444
	l.nop	0
.LBB39_210:                             # %if.end517
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 655
	l.addi	r20, r20, 1310          # CFC
	l.ori	r5, r6, 0
	l.addi	r28, r28, 3930
	l.ori	r15, r16, 0
	l.addi	r18, r18, 3275
	l.ori	r25, r26, 0
	l.addi	r20, r20, 2620          # CFC
.LBB39_211:                             # %if.end517
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 656
	l.sw	-64(r2), r5
	l.sw	3504(r12), r15
	l.sw	7072(r22), r25
	l.addi	r20, r20, 1312          # CFC
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r4, -64(r2)
	l.lwz	r3, -124(r2)
	l.sfges	r4, r3
	l.addi	r28, r28, 3936
	l.lwz	r14, 3504(r12)
	l.lwz	r13, 3444(r12)
	l.lwz	r24, 7072(r22)
	l.lwz	r23, 7012(r22)
	l.bf	.LBB39_445
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3280
	l.sfges	r14, r13
	l.addi	r20, r20, 2624          # CFC
	l.bf	.LBB39_446
	l.nop	0
.LBB39_212:                             # %print_back_to_string.exit756
                                        #   in Loop: Header=BB39_3 Depth=3
	l.j	.LBB39_9
	l.nop	0                       # in delay slot
.LBB39_213:                             # %if.end521
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 657
	l.lwz	r7, -76(r2)
	l.add	r7, r7, r3
	l.lwz	r3, -88(r2)
	l.andi	r3, r3, 4
	l.sfeqi	r3, 0
	l.lwz	r17, 3492(r12)
	l.add	r17, r17, r13
	l.addi	r20, r20, 1314          # CFC
	l.lwz	r13, 3480(r12)
	l.movhi	r11, hi(.L.str.1)
	l.andi	r13, r13, 4
	l.lwz	r27, 7060(r22)
	l.lwz	r5, -60(r2)
	l.movhi	r8, hi(.L.str.1)
	l.add	r27, r27, r23
	l.addi	r28, r28, 3942
	l.lwz	r6, -68(r2)
	l.lwz	r15, 3508(r12)
	l.lwz	r16, 3500(r12)
	l.lwz	r23, 7048(r22)
	l.andi	r23, r23, 4
	l.movhi	r31, hi(.L.str.1)
	l.lwz	r25, 7076(r22)
	l.lwz	r26, 7068(r22)
	l.bf	.LBB39_447
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3285
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2628          # CFC
	l.bf	.LBB39_448
	l.nop	0
.LBB39_214:                             # %if.then525
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 658
	l.lwz	r3, -116(r2)
	l.sub	r4, r6, r3
	l.addi	r20, r20, 1316          # CFC
	l.sfltsi	r4, 1
	l.lwz	r13, 3452(r12)
	l.addi	r28, r28, 3948
	l.sub	r14, r16, r13
	l.lwz	r23, 7020(r22)
	l.sub	r24, r26, r23
	l.bf	.LBB39_449
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3290
	l.sfltsi	r14, 1
	l.addi	r20, r20, 2632          # CFC
	l.bf	.LBB39_450
	l.nop	0
.LBB39_215:                             # %while.cond535.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 659
	l.lwz	r3, -92(r2)
	l.ori	r11, r7, 0
	l.sub	r3, r3, r11
	l.addi	r3, r3, -1
	l.sfgtsi	r4, 16
	l.lwz	r13, 3476(r12)
	l.ori	r8, r17, 0
	l.sub	r13, r13, r8
	l.addi	r20, r20, 1318          # CFC
	l.ori	r5, r4, 0
	l.addi	r13, r13, -1
	l.lwz	r23, 7044(r22)
	l.sw	-76(r2), r7
	l.ori	r15, r14, 0
	l.ori	r31, r27, 0
	l.sw	-88(r2), r5
	l.sw	3492(r12), r17
	l.addi	r28, r28, 3954
	l.sub	r23, r23, r31
	l.sw	-100(r2), r3
	l.sw	3480(r12), r15
	l.sw	3468(r12), r13
	l.addi	r23, r23, -1
	l.ori	r25, r24, 0
	l.sw	7060(r22), r27
	l.sw	7048(r22), r25
	l.sw	7036(r22), r23
	l.bf	.LBB39_451
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3295
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 2636          # CFC
	l.bf	.LBB39_452
	l.nop	0
.LBB39_216:                             # %while.cond535.preheader.while.end544_crit_edge
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 660
	l.lwz	r3, -104(r2)
	l.add	r7, r3, r11
	l.addi	r20, r20, 1320          # CFC
	l.ori	r3, r5, 0
	l.lwz	r13, 3464(r12)
	l.addi	r28, r28, 3960
	l.add	r17, r13, r8
	l.ori	r13, r15, 0
	l.addi	r18, r18, 3300
	l.lwz	r23, 7032(r22)
	l.add	r27, r23, r31
	l.ori	r23, r25, 0
	l.addi	r20, r20, 2640          # CFC
	l.j	.LBB39_225
	l.nop	0                       # in delay slot
.LBB39_217:                             # %while.body538.lr.ph
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 661
	l.ori	r11, r5, 0
	l.addi	r5, r0, 16
	l.sfgtui	r3, 16
	l.addi	r20, r20, 1322          # CFC
	l.ori	r4, r3, 0
	l.ori	r8, r15, 0
	l.addi	r15, r0, 16
	l.addi	r28, r28, 3966
	l.ori	r14, r13, 0
	l.ori	r31, r25, 0
	l.addi	r25, r0, 16
	l.ori	r24, r23, 0
	l.bf	.LBB39_453
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3305
	l.sfgtui	r13, 16
	l.addi	r20, r20, 2644          # CFC
	l.bf	.LBB39_454
	l.nop	0
.LBB39_218:                             # %while.body538.lr.ph
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 662
	l.addi	r20, r20, 1324          # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 3972
	l.ori	r15, r14, 0
	l.addi	r18, r18, 3310
	l.ori	r25, r24, 0
	l.addi	r20, r20, 2648          # CFC
.LBB39_219:                             # %while.body538.lr.ph
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 663
	l.lwz	r3, -104(r2)
	l.add	r7, r3, r7
	l.sfltsi	r5, 16
	l.addi	r20, r20, 1326          # CFC
	l.sw	-80(r2), r5
	l.lwz	r13, 3464(r12)
	l.add	r17, r13, r17
	l.addi	r28, r28, 3978
	l.sw	3488(r12), r15
	l.lwz	r23, 7032(r22)
	l.add	r27, r23, r27
	l.sw	7056(r22), r25
	l.bf	.LBB39_455
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3315
	l.sfltsi	r15, 16
	l.addi	r20, r20, 2652          # CFC
	l.bf	.LBB39_456
	l.nop	0
.LBB39_220:                             # %while.body538.preheader
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 664
	l.addi	r3, r6, -17
	l.lwz	r4, -116(r2)
	l.sub	r3, r3, r4
	l.addi	r4, r0, -16
	l.and	r3, r3, r4
	l.addi	r13, r16, -17
	l.lwz	r14, 3452(r12)
	l.addi	r20, r20, 1328          # CFC
	l.sub	r13, r13, r14
	l.sw	-112(r2), r3
	l.addi	r14, r0, -16
	l.addi	r23, r26, -17
	l.addi	r3, r6, -16
	l.and	r13, r13, r14
	l.lwz	r24, 7020(r22)
	l.sw	-68(r2), r3
	l.addi	r28, r28, 3984
	l.sw	3456(r12), r13
	l.sub	r23, r23, r24
	l.ori	r3, r11, 0
	l.addi	r13, r16, -16
	l.addi	r24, r0, -16
	l.sw	-84(r2), r7
	l.sw	3500(r12), r13
	l.addi	r18, r18, 3320
	l.and	r23, r23, r24
	l.ori	r13, r8, 0
	l.sw	3484(r12), r17
	l.sw	7024(r22), r23
	l.addi	r23, r26, -16
	l.sw	7068(r22), r23
	l.ori	r23, r31, 0
	l.sw	7052(r22), r27
	l.addi	r20, r20, 2656          # CFC
.LBB39_221:                             # %while.body538
                                        #   Parent Loop BB39_1 Depth=1
                                        #     Parent Loop BB39_2 Depth=2
                                        #       Parent Loop BB39_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 665
	l.sw	-64(r2), r3
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r3, r7, 0
	l.sw	3504(r12), r13
	l.movhi	r13, hi(vfnprintf.blanks)
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.ori	r13, r17, 0
	l.addi	r20, r20, 1330          # CFC
	l.sw	7072(r22), r23
	l.movhi	r23, hi(vfnprintf.blanks)
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r23, r27, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r3, -64(r2)
	l.lwz	r5, -80(r2)
	l.lwz	r7, -84(r2)
	l.addi	r3, r3, -16
	l.addi	r28, r28, 3990
	l.sfgtsi	r3, 16
	l.lwz	r13, 3504(r12)
	l.lwz	r15, 3488(r12)
	l.lwz	r17, 3484(r12)
	l.addi	r13, r13, -16
	l.lwz	r23, 7072(r22)
	l.lwz	r25, 7056(r22)
	l.lwz	r27, 7052(r22)
	l.addi	r23, r23, -16
	l.bf	.LBB39_457
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3325
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 2660          # CFC
	l.bf	.LBB39_458
	l.nop	0
.LBB39_224:                             # %while.end544.loopexit
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 666
	l.lwz	r3, -116(r2)
	l.lwz	r4, -68(r2)
	l.sub	r3, r4, r3
	l.lwz	r4, -112(r2)
	l.sub	r3, r3, r4
	l.addi	r20, r20, 1332          # CFC
	l.lwz	r13, 3452(r12)
	l.lwz	r14, 3500(r12)
	l.sub	r13, r14, r13
	l.lwz	r4, -76(r2)
	l.lwz	r14, 3456(r12)
	l.addi	r28, r28, 3996
	l.lwz	r23, 7020(r22)
	l.lwz	r5, -88(r2)
	l.sub	r13, r13, r14
	l.lwz	r24, 7068(r22)
	l.lwz	r14, 3492(r12)
	l.addi	r18, r18, 3330
	l.lwz	r15, 3480(r12)
	l.sub	r23, r24, r23
	l.lwz	r24, 7024(r22)
	l.sub	r23, r23, r24
	l.lwz	r24, 7060(r22)
	l.lwz	r25, 7048(r22)
	l.addi	r20, r20, 2664          # CFC
.LBB39_225:                             # %while.end544
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 667
	l.lwz	r4, -100(r2)
	l.sfgtu	r4, r3
	l.sw	-68(r2), r3
	l.addi	r20, r20, 1334          # CFC
	l.ori	r5, r3, 0
	l.lwz	r14, 3468(r12)
	l.sw	3500(r12), r13
	l.addi	r28, r28, 4002
	l.ori	r15, r13, 0
	l.lwz	r24, 7036(r22)
	l.sw	7068(r22), r23
	l.ori	r25, r23, 0
	l.bf	.LBB39_459
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3335
	l.sfgtu	r14, r13
	l.addi	r20, r20, 2668          # CFC
	l.bf	.LBB39_460
	l.nop	0
.LBB39_462:
	l.addi	r18, r18, 668
	l.addi	r20, r20, 1336          # CFC
	l.movhi	r3, hi(vfnprintf.blanks)
	l.addi	r28, r28, 4008
	l.movhi	r13, hi(vfnprintf.blanks)
	l.addi	r18, r18, 3340
	l.movhi	r23, hi(vfnprintf.blanks)
	l.addi	r20, r20, 2672          # CFC
.LBB39_226:                             # %while.end544
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 669
	l.addi	r20, r20, 1338          # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 4014
	l.ori	r15, r14, 0
	l.addi	r18, r18, 3345
	l.ori	r25, r24, 0
	l.addi	r20, r20, 2676          # CFC
.LBB39_227:                             # %while.end544
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 670
	l.sw	-64(r2), r5
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r3, r7, 0
	l.lwz	r5, -64(r2)
	l.sw	3504(r12), r15
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.addi	r20, r20, 1340          # CFC
	l.ori	r13, r17, 0
	l.lwz	r15, 3504(r12)
	l.sw	7072(r22), r25
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r23, r27, 0
	l.lwz	r25, 7072(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.addi	r28, r28, 4020
	l.lwz	r4, -64(r2)
	l.lwz	r3, -68(r2)
	l.sfges	r4, r3
	l.lwz	r14, 3504(r12)
	l.lwz	r13, 3500(r12)
	l.lwz	r24, 7072(r22)
	l.lwz	r23, 7068(r22)
	l.bf	.LBB39_463
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3350
	l.sfges	r14, r13
	l.addi	r20, r20, 2680          # CFC
	l.bf	.LBB39_464
	l.nop	0
.LBB39_228:                             # %print_back_to_string.exit738
                                        #   in Loop: Header=BB39_3 Depth=3
	l.j	.LBB39_9
	l.nop	0                       # in delay slot
.LBB39_233:                             # %while.body501.us
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 671
	l.ori	r5, r3, 0
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.addi	r20, r20, 1342          # CFC
	l.ori	r3, r6, 0
	l.ori	r15, r13, 0
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 4026
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.ori	r13, r16, 0
	l.ori	r25, r23, 0
	l.addi	r18, r18, 3355
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r23, r26, 0
	l.addi	r20, r20, 2684          # CFC
	l.j	.LBB39_223
	l.nop	0                       # in delay slot
.LBB39_232:                             # %while.body471.us
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 672
	l.ori	r5, r3, 0
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.addi	r20, r20, 1344          # CFC
	l.ori	r3, r11, 0
	l.ori	r15, r13, 0
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 4032
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.ori	r13, r8, 0
	l.ori	r25, r23, 0
	l.addi	r18, r18, 3360
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r23, r31, 0
	l.addi	r20, r20, 2688          # CFC
	l.j	.LBB39_223
	l.nop	0                       # in delay slot
.LBB39_231:                             # %while.body415.us
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 673
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.lwz	r3, -100(r2)
	l.lwz	r5, -112(r2)
	l.addi	r20, r20, 1346          # CFC
	l.movhi	r13, hi(vfnprintf.blanks)
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.lwz	r13, 3468(r12)
	l.lwz	r15, 3456(r12)
	l.movhi	r23, hi(vfnprintf.blanks)
	l.addi	r28, r28, 4038
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.lwz	r23, 7036(r22)
	l.lwz	r25, 7024(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r3, -76(r2)
	l.addi	r18, r18, 3365
	l.lwz	r4, -112(r2)
	l.lwz	r13, 3492(r12)
	l.lwz	r14, 3456(r12)
	l.lwz	r23, 7060(r22)
	l.lwz	r24, 7024(r22)
	l.addi	r20, r20, 2692          # CFC
	l.j	.LBB39_10
	l.nop	0                       # in delay slot
.LBB39_222:                             # %while.body538.us
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 674
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.addi	r20, r20, 1348          # CFC
	l.ori	r3, r7, 0
	l.movhi	r13, hi(vfnprintf.blanks)
	l.addi	r28, r28, 4044
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.ori	r13, r17, 0
	l.addi	r18, r18, 3370
	l.movhi	r23, hi(vfnprintf.blanks)
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r23, r27, 0
	l.addi	r20, r20, 2696          # CFC
.LBB39_223:                             # %error
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 675
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.addi	r20, r20, 1350          # CFC
	l.lwz	r3, -76(r2)
	l.lwz	r4, -80(r2)
	l.addi	r28, r28, 4050
	l.lwz	r13, 3492(r12)
	l.lwz	r14, 3488(r12)
	l.addi	r18, r18, 3375
	l.lwz	r23, 7060(r22)
	l.lwz	r24, 7056(r22)
	l.addi	r20, r20, 2700          # CFC
.LBB39_10:                              # %error
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 676
	l.add	r3, r4, r3
	l.addi	r20, r20, 1352          # CFC
	l.sw	-76(r2), r3
	l.add	r13, r14, r13
	l.addi	r28, r28, 4056
	l.sw	3492(r12), r13
	l.addi	r18, r18, 3380
	l.add	r23, r24, r23
	l.sw	7060(r22), r23
	l.addi	r20, r20, 2704          # CFC
.LBB39_11:                              # %error
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 677
	l.lwz	r11, -76(r2)
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 1354          # CFC
	l.lwz	r9, -4(r1)
	l.lwz	r8, 3492(r12)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 4062
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.lwz	r31, 7060(r22)
	l.addi	r18, r18, 3385
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 2708          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB39_236
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB39_236:                             # %error
                                        #   in Loop: Header=BB39_3 Depth=3
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB39_465
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB39_465
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB39_465
	l.nop	0
	l.nop	205
.LBB39_465:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB39_466
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB39_466
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB39_466
	l.nop	0
	l.nop	205
.LBB39_466:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB39_467
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB39_467
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB39_467
	l.nop	0
	l.nop	205
.LBB39_467:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB39_468
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB39_468
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB39_468
	l.nop	0
	l.nop	205
.LBB39_468:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB39_469
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB39_469
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB39_469
	l.nop	0
	l.nop	205
.LBB39_469:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB39_470
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB39_470
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB39_470
	l.nop	0
	l.nop	205
.LBB39_470:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB39_471
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB39_471
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB39_471
	l.nop	0
	l.nop	205
.LBB39_471:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB39_472
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB39_472
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB39_472
	l.nop	0
	l.nop	205
.LBB39_472:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB39_473
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB39_473
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB39_473
	l.nop	0
	l.nop	205
.LBB39_473:
.LBB39_474:
	l.jr	r30
	l.nop	0
.LBB39_237:                             #   in Loop: Header=BB39_2 Depth=2
	l.addi	r18, r18, 2220
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1776          # CFC
	l.bf	.LBB39_64
	l.nop	0
.LBB39_238:                             #   in Loop: Header=BB39_2 Depth=2
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_64
	l.nop	0
	l.j	.LBB39_63
	l.nop	0
.LBB39_239:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2235
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1788          # CFC
	l.bf	.LBB39_5
	l.nop	0
.LBB39_240:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_5
	l.nop	0
	l.j	.LBB39_4
	l.nop	0
.LBB39_241:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2240
	l.sfnei	r13, 37
	l.addi	r20, r20, 1792          # CFC
	l.bf	.LBB39_3
	l.nop	0
.LBB39_242:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfnei	r3, 37
	l.bf	.LBB39_3
	l.nop	0
	l.j	.LBB39_5
	l.nop	0
.LBB39_243:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2245
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1796          # CFC
	l.bf	.LBB39_13
	l.nop	0
.LBB39_244:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_13
	l.nop	0
	l.j	.LBB39_6
	l.nop	0
.LBB39_245:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2250
	l.sfgtu	r14, r17
	l.addi	r20, r20, 1800          # CFC
	l.bf	.LBB39_8
	l.nop	0
.LBB39_246:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtu	r4, r7
	l.bf	.LBB39_8
	l.nop	0
	l.j	.LBB39_7
	l.nop	0
.LBB39_247:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2260
	l.sfges	r14, r13
	l.addi	r20, r20, 1808          # CFC
	l.bf	.LBB39_12
	l.nop	0
.LBB39_248:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB39_12
	l.nop	0
	l.j	.LBB39_9
	l.nop	0
.LBB39_249:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2275
	l.sflts	r16, r14
	l.addi	r20, r20, 1820          # CFC
	l.bf	.LBB39_15
	l.nop	0
.LBB39_250:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sflts	r6, r4
	l.bf	.LBB39_15
	l.nop	0
	l.j	.LBB39_14
	l.nop	0
.LBB39_251:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2285
	l.sfnei	r13, 1
	l.addi	r20, r20, 1828          # CFC
	l.bf	.LBB39_11
	l.nop	0
.LBB39_252:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfnei	r3, 1
	l.bf	.LBB39_11
	l.nop	0
	l.j	.LBB39_16
	l.nop	0
.LBB39_253:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2310
	l.sfgtui	r17, 122
	l.addi	r20, r20, 1848          # CFC
	l.bf	.LBB39_144
	l.nop	0
.LBB39_254:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtui	r7, 122
	l.bf	.LBB39_144
	l.nop	0
	l.j	.LBB39_19
	l.nop	0
.LBB39_255:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2325
	l.sfltui	r13, 10
	l.addi	r20, r20, 1860          # CFC
	l.bf	.LBB39_257
	l.nop	0
.LBB39_256:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfltui	r3, 10
	l.bf	.LBB39_257
	l.nop	0
	l.j	.LBB39_258
	l.nop	0
.LBB39_257:
	l.addi	r18, r18, 678
	l.addi	r20, r20, 1356          # CFC
	l.ori	r3, r5, 0
	l.addi	r28, r28, 4068
	l.ori	r13, r15, 0
	l.addi	r18, r18, 3390
	l.ori	r23, r25, 0
	l.addi	r20, r20, 2712          # CFC
	l.j	.LBB39_42
	l.nop	0
.LBB39_259:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2335
	l.sfeqi	r17, 42
	l.addi	r20, r20, 1868          # CFC
	l.bf	.LBB39_34
	l.nop	0
.LBB39_260:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r7, 42
	l.bf	.LBB39_34
	l.nop	0
	l.j	.LBB39_31
	l.nop	0
.LBB39_261:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2340
	l.sfgtui	r14, 9
	l.addi	r20, r20, 1872          # CFC
	l.bf	.LBB39_37
	l.nop	0
.LBB39_262:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtui	r4, 9
	l.bf	.LBB39_37
	l.nop	0
	l.j	.LBB39_32
	l.nop	0
.LBB39_263:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2350
	l.sfltui	r14, 10
	l.addi	r20, r20, 1880          # CFC
	l.bf	.LBB39_33
	l.nop	0
.LBB39_264:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfltui	r4, 10
	l.bf	.LBB39_33
	l.nop	0
	l.j	.LBB39_37
	l.nop	0
.LBB39_265:                             #   in Loop: Header=BB39_3 Depth=3
	l.sfgtsi	r16, -1
	l.bf	.LBB39_39
	l.nop	0
.LBB39_266:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtsi	r6, -1
	l.bf	.LBB39_39
	l.nop	0
	l.j	.LBB39_38
	l.nop	0
.LBB39_267:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2360
	l.sfnei	r13, 0
	l.addi	r20, r20, 1888          # CFC
	l.bf	.LBB39_17
	l.nop	0
.LBB39_268:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB39_17
	l.nop	0
	l.j	.LBB39_21
	l.nop	0
.LBB39_269:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2375
	l.sfgtsi	r14, -1
	l.addi	r20, r20, 1900          # CFC
	l.bf	.LBB39_17
	l.nop	0
.LBB39_270:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtsi	r4, -1
	l.bf	.LBB39_17
	l.nop	0
	l.j	.LBB39_27
	l.nop	0
.LBB39_271:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2405
	l.sfnei	r13, 108
	l.addi	r20, r20, 1924          # CFC
	l.bf	.LBB39_46
	l.nop	0
.LBB39_272:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfnei	r3, 108
	l.bf	.LBB39_46
	l.nop	0
	l.j	.LBB39_45
	l.nop	0
.LBB39_273:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2440
	l.sfgtsi	r16, -1
	l.addi	r20, r20, 1952          # CFC
	l.bf	.LBB39_36
	l.nop	0
.LBB39_274:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtsi	r6, -1
	l.bf	.LBB39_36
	l.nop	0
	l.j	.LBB39_35
	l.nop	0
.LBB39_275:                             #   in Loop: Header=BB39_2 Depth=2
	l.addi	r18, r18, 2455
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1964          # CFC
	l.bf	.LBB39_66
	l.nop	0
.LBB39_276:                             #   in Loop: Header=BB39_2 Depth=2
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_66
	l.nop	0
	l.j	.LBB39_65
	l.nop	0
.LBB39_277:                             #   in Loop: Header=BB39_2 Depth=2
	l.addi	r18, r18, 2465
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1972          # CFC
	l.bf	.LBB39_65
	l.nop	0
.LBB39_278:                             #   in Loop: Header=BB39_2 Depth=2
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_65
	l.nop	0
	l.j	.LBB39_67
	l.nop	0
.LBB39_279:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2490
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1992          # CFC
	l.bf	.LBB39_52
	l.nop	0
.LBB39_280:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_52
	l.nop	0
	l.j	.LBB39_51
	l.nop	0
.LBB39_281:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2500
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2000          # CFC
	l.bf	.LBB39_54
	l.nop	0
.LBB39_282:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_54
	l.nop	0
	l.j	.LBB39_53
	l.nop	0
.LBB39_283:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2515
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2012          # CFC
	l.bf	.LBB39_71
	l.nop	0
.LBB39_284:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_71
	l.nop	0
	l.j	.LBB39_70
	l.nop	0
.LBB39_285:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2530
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2024          # CFC
	l.bf	.LBB39_89
	l.nop	0
.LBB39_286:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_89
	l.nop	0
	l.j	.LBB39_88
	l.nop	0
.LBB39_287:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2545
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2036          # CFC
	l.bf	.LBB39_97
	l.nop	0
.LBB39_288:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_97
	l.nop	0
	l.j	.LBB39_96
	l.nop	0
.LBB39_289:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2575
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2060          # CFC
	l.bf	.LBB39_79
	l.nop	0
.LBB39_290:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_79
	l.nop	0
	l.j	.LBB39_78
	l.nop	0
.LBB39_291:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2585
	l.sfltsi	r15, 0
	l.addi	r20, r20, 2068          # CFC
	l.bf	.LBB39_84
	l.nop	0
.LBB39_292:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfltsi	r5, 0
	l.bf	.LBB39_84
	l.nop	0
	l.j	.LBB39_80
	l.nop	0
.LBB39_293:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2590
	l.sfeqi	r8, 0
	l.addi	r20, r20, 2072          # CFC
	l.bf	.LBB39_85
	l.nop	0
.LBB39_294:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB39_85
	l.nop	0
	l.j	.LBB39_81
	l.nop	0
.LBB39_295:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2595
	l.sfgts	r13, r14
	l.addi	r20, r20, 2076          # CFC
	l.bf	.LBB39_83
	l.nop	0
.LBB39_296:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgts	r3, r4
	l.bf	.LBB39_83
	l.nop	0
	l.j	.LBB39_82
	l.nop	0
.LBB39_297:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2610
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2088          # CFC
	l.bf	.LBB39_73
	l.nop	0
.LBB39_298:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_73
	l.nop	0
	l.j	.LBB39_72
	l.nop	0
.LBB39_299:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2620
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2096          # CFC
	l.bf	.LBB39_91
	l.nop	0
.LBB39_300:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_91
	l.nop	0
	l.j	.LBB39_90
	l.nop	0
.LBB39_301:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2630
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2104          # CFC
	l.bf	.LBB39_99
	l.nop	0
.LBB39_302:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_99
	l.nop	0
	l.j	.LBB39_98
	l.nop	0
.LBB39_303:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2640
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2112          # CFC
	l.bf	.LBB39_56
	l.nop	0
.LBB39_304:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_56
	l.nop	0
	l.j	.LBB39_55
	l.nop	0
.LBB39_305:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2655
	l.sfgtsi	r16, -1
	l.addi	r20, r20, 2124          # CFC
	l.bf	.LBB39_108
	l.nop	0
.LBB39_306:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtsi	r6, -1
	l.bf	.LBB39_108
	l.nop	0
	l.j	.LBB39_58
	l.nop	0
.LBB39_307:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2660
	l.sfnei	r8, 0
	l.addi	r20, r20, 2128          # CFC
	l.bf	.LBB39_60
	l.nop	0
.LBB39_308:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfnei	r11, 0
	l.bf	.LBB39_60
	l.nop	0
	l.j	.LBB39_59
	l.nop	0
.LBB39_309:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2675
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2140          # CFC
	l.bf	.LBB39_75
	l.nop	0
.LBB39_310:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_75
	l.nop	0
	l.j	.LBB39_74
	l.nop	0
.LBB39_311:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2690
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2152          # CFC
	l.bf	.LBB39_93
	l.nop	0
.LBB39_312:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_93
	l.nop	0
	l.j	.LBB39_92
	l.nop	0
.LBB39_313:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2705
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2164          # CFC
	l.bf	.LBB39_101
	l.nop	0
.LBB39_314:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_101
	l.nop	0
	l.j	.LBB39_100
	l.nop	0
.LBB39_315:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2720
	l.sfnei	r13, 0
	l.addi	r20, r20, 2176          # CFC
	l.bf	.LBB39_104
	l.nop	0
.LBB39_316:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB39_104
	l.nop	0
	l.j	.LBB39_103
	l.nop	0
.LBB39_317:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2730
	l.sfnei	r13, 0
	l.addi	r20, r20, 2184          # CFC
	l.bf	.LBB39_106
	l.nop	0
.LBB39_318:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB39_106
	l.nop	0
	l.j	.LBB39_105
	l.nop	0
.LBB39_319:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2750
	l.sfgtsi	r17, -1
	l.addi	r20, r20, 2200          # CFC
	l.bf	.LBB39_110
	l.nop	0
.LBB39_320:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtsi	r7, -1
	l.bf	.LBB39_110
	l.nop	0
	l.j	.LBB39_109
	l.nop	0
.LBB39_321:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2760
	l.sfnei	r17, 0
	l.addi	r20, r20, 2208          # CFC
	l.bf	.LBB39_112
	l.nop	0
.LBB39_322:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB39_112
	l.nop	0
	l.j	.LBB39_111
	l.nop	0
.LBB39_323:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2765
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2212          # CFC
	l.bf	.LBB39_141
	l.nop	0
.LBB39_324:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB39_141
	l.nop	0
	l.j	.LBB39_112
	l.nop	0
.LBB39_325:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2770
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2216          # CFC
	l.bf	.LBB39_117
	l.nop	0
.LBB39_326:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB39_117
	l.nop	0
	l.j	.LBB39_113
	l.nop	0
.LBB39_327:                             #   in Loop: Header=BB39_3 Depth=3
	l.sfeqi	r14, 1
	l.bf	.LBB39_122
	l.nop	0
.LBB39_328:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r4, 1
	l.bf	.LBB39_122
	l.nop	0
	l.j	.LBB39_114
	l.nop	0
.LBB39_329:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2775
	l.sfnei	r14, 2
	l.addi	r20, r20, 2220          # CFC
	l.bf	.LBB39_142
	l.nop	0
.LBB39_330:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfnei	r4, 2
	l.bf	.LBB39_142
	l.nop	0
	l.j	.LBB39_115
	l.nop	0
.LBB39_331:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2785
	l.sfnei	r13, 0
	l.addi	r20, r20, 2228          # CFC
	l.bf	.LBB39_116
	l.nop	0
.LBB39_332:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB39_116
	l.nop	0
	l.j	.LBB39_235
	l.nop	0
.LBB39_333:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2795
	l.sfnei	r16, 0
	l.addi	r20, r20, 2236          # CFC
	l.bf	.LBB39_118
	l.nop	0
.LBB39_334:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfnei	r6, 0
	l.bf	.LBB39_118
	l.nop	0
	l.j	.LBB39_119
	l.nop	0
.LBB39_335:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2800
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2240          # CFC
	l.bf	.LBB39_337
	l.nop	0
.LBB39_336:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB39_337
	l.nop	0
	l.j	.LBB39_338
	l.nop	0
.LBB39_337:
	l.addi	r18, r18, 679
	l.ori	r5, r6, 0
	l.addi	r20, r20, 1358          # CFC
	l.lwz	r6, -76(r2)
	l.ori	r15, r16, 0
	l.addi	r28, r28, 4074
	l.lwz	r16, 3492(r12)
	l.addi	r18, r18, 3395
	l.ori	r25, r26, 0
	l.lwz	r26, 7060(r22)
	l.addi	r20, r20, 2716          # CFC
	l.j	.LBB39_141
	l.nop	0
.LBB39_339:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2810
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2248          # CFC
	l.bf	.LBB39_141
	l.nop	0
.LBB39_340:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB39_141
	l.nop	0
	l.j	.LBB39_121
	l.nop	0
.LBB39_341:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2820
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2256          # CFC
	l.bf	.LBB39_130
	l.nop	0
.LBB39_342:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_130
	l.nop	0
	l.j	.LBB39_123
	l.nop	0
.LBB39_343:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2825
	l.sfltui	r8, 10
	l.addi	r20, r20, 2260          # CFC
	l.bf	.LBB39_125
	l.nop	0
.LBB39_344:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfltui	r11, 10
	l.bf	.LBB39_125
	l.nop	0
	l.j	.LBB39_124
	l.nop	0
.LBB39_345:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2835
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2268          # CFC
	l.bf	.LBB39_127
	l.nop	0
.LBB39_346:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB39_127
	l.nop	0
	l.j	.LBB39_126
	l.nop	0
.LBB39_347:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2845
	l.sfnei	r13, 0
	l.addi	r20, r20, 2276          # CFC
	l.bf	.LBB39_349
	l.nop	0
.LBB39_348:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB39_349
	l.nop	0
	l.j	.LBB39_350
	l.nop	0
.LBB39_349:
	l.addi	r18, r18, 680
	l.addi	r20, r20, 1360          # CFC
	l.lwz	r3, -80(r2)
	l.addi	r28, r28, 4080
	l.lwz	r13, 3488(r12)
	l.addi	r18, r18, 3400
	l.lwz	r23, 7056(r22)
	l.addi	r20, r20, 2720          # CFC
	l.j	.LBB39_140
	l.nop	0
.LBB39_351:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2860
	l.sfnei	r15, 0
	l.addi	r20, r20, 2288          # CFC
	l.bf	.LBB39_135
	l.nop	0
.LBB39_352:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB39_135
	l.nop	0
	l.j	.LBB39_134
	l.nop	0
.LBB39_353:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2870
	l.sfgtui	r17, 99
	l.addi	r20, r20, 2296          # CFC
	l.bf	.LBB39_137
	l.nop	0
.LBB39_354:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtui	r7, 99
	l.bf	.LBB39_137
	l.nop	0
	l.j	.LBB39_136
	l.nop	0
.LBB39_355:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2880
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2304          # CFC
	l.bf	.LBB39_357
	l.nop	0
.LBB39_356:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB39_357
	l.nop	0
	l.j	.LBB39_358
	l.nop	0
.LBB39_357:
	l.addi	r18, r18, 681
	l.addi	r20, r20, 1362          # CFC
	l.lwz	r5, -84(r2)
	l.addi	r28, r28, 4086
	l.lwz	r15, 3484(r12)
	l.addi	r18, r18, 3405
	l.lwz	r25, 7052(r22)
	l.addi	r20, r20, 2724          # CFC
	l.j	.LBB39_139
	l.nop	0
.LBB39_359:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2895
	l.sfnei	r13, 0
	l.addi	r20, r20, 2316          # CFC
	l.bf	.LBB39_361
	l.nop	0
.LBB39_360:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB39_361
	l.nop	0
	l.j	.LBB39_362
	l.nop	0
.LBB39_361:
	l.addi	r18, r18, 682
	l.addi	r20, r20, 1364          # CFC
	l.lwz	r3, -120(r2)
	l.addi	r28, r28, 4092
	l.lwz	r13, 3448(r12)
	l.addi	r18, r18, 3410
	l.lwz	r23, 7016(r22)
	l.addi	r20, r20, 2728          # CFC
	l.j	.LBB39_129
	l.nop	0
.LBB39_363:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2910
	l.sfltui	r8, 10
	l.addi	r20, r20, 2328          # CFC
	l.bf	.LBB39_133
	l.nop	0
.LBB39_364:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfltui	r11, 10
	l.bf	.LBB39_133
	l.nop	0
	l.j	.LBB39_131
	l.nop	0
.LBB39_365:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2920
	l.sfgtui	r14, 99
	l.addi	r20, r20, 2336          # CFC
	l.bf	.LBB39_367
	l.nop	0
.LBB39_366:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtui	r4, 99
	l.bf	.LBB39_367
	l.nop	0
	l.j	.LBB39_368
	l.nop	0
.LBB39_367:
	l.addi	r18, r18, 683
	l.addi	r20, r20, 1366          # CFC
	l.ori	r4, r11, 0
	l.addi	r28, r28, 4098
	l.ori	r14, r8, 0
	l.addi	r18, r18, 3415
	l.ori	r24, r31, 0
	l.addi	r20, r20, 2732          # CFC
	l.j	.LBB39_132
	l.nop	0
.LBB39_369:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2940
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2352          # CFC
	l.bf	.LBB39_371
	l.nop	0
.LBB39_370:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_371
	l.nop	0
	l.j	.LBB39_372
	l.nop	0
.LBB39_371:
	l.addi	r18, r18, 684
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 1368          # CFC
	l.ori	r5, r3, 0
	l.lwz	r13, 3480(r12)
	l.addi	r28, r28, 4104
	l.ori	r15, r13, 0
	l.addi	r18, r18, 3420
	l.lwz	r23, 7048(r22)
	l.ori	r25, r23, 0
	l.addi	r20, r20, 2736          # CFC
	l.j	.LBB39_147
	l.nop	0
.LBB39_373:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2965
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2372          # CFC
	l.bf	.LBB39_375
	l.nop	0
.LBB39_374:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_375
	l.nop	0
	l.j	.LBB39_376
	l.nop	0
.LBB39_375:
	l.addi	r18, r18, 685
	l.addi	r20, r20, 1370          # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 4110
	l.ori	r13, r14, 0
	l.addi	r18, r18, 3425
	l.ori	r23, r24, 0
	l.addi	r20, r20, 2740          # CFC
	l.j	.LBB39_149
	l.nop	0
.LBB39_377:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2985
	l.sfgts	r17, r8
	l.addi	r20, r20, 2388          # CFC
	l.bf	.LBB39_152
	l.nop	0
.LBB39_378:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgts	r7, r11
	l.bf	.LBB39_152
	l.nop	0
	l.j	.LBB39_151
	l.nop	0
.LBB39_379:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 2995
	l.sfnei	r13, 0
	l.addi	r20, r20, 2396          # CFC
	l.bf	.LBB39_167
	l.nop	0
.LBB39_380:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB39_167
	l.nop	0
	l.j	.LBB39_153
	l.nop	0
.LBB39_381:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3000
	l.sfltsi	r15, 1
	l.addi	r20, r20, 2400          # CFC
	l.bf	.LBB39_167
	l.nop	0
.LBB39_382:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfltsi	r5, 1
	l.bf	.LBB39_167
	l.nop	0
	l.j	.LBB39_154
	l.nop	0
.LBB39_383:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3005
	l.sfgtsi	r15, 16
	l.addi	r20, r20, 2404          # CFC
	l.bf	.LBB39_156
	l.nop	0
.LBB39_384:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtsi	r5, 16
	l.bf	.LBB39_156
	l.nop	0
	l.j	.LBB39_155
	l.nop	0
.LBB39_385:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3015
	l.sfgtui	r8, 16
	l.addi	r20, r20, 2412          # CFC
	l.bf	.LBB39_158
	l.nop	0
.LBB39_386:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtui	r11, 16
	l.bf	.LBB39_158
	l.nop	0
	l.j	.LBB39_157
	l.nop	0
.LBB39_387:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3025
	l.sfltsi	r15, 16
	l.addi	r20, r20, 2420          # CFC
	l.bf	.LBB39_389
	l.nop	0
.LBB39_388:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfltsi	r5, 16
	l.bf	.LBB39_389
	l.nop	0
	l.j	.LBB39_390
	l.nop	0
.LBB39_389:
	l.addi	r18, r18, 686
	l.addi	r20, r20, 1372          # CFC
	l.lwz	r5, -68(r2)
	l.addi	r28, r28, 4116
	l.lwz	r15, 3500(r12)
	l.addi	r18, r18, 3430
	l.lwz	r25, 7068(r22)
	l.addi	r20, r20, 2744          # CFC
	l.j	.LBB39_231
	l.nop	0
.LBB39_391:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3040
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 2432          # CFC
	l.bf	.LBB39_160
	l.nop	0
.LBB39_392:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtsi	r4, 16
	l.bf	.LBB39_160
	l.nop	0
	l.j	.LBB39_161
	l.nop	0
.LBB39_393:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3050
	l.sfgtu	r8, r15
	l.addi	r20, r20, 2440          # CFC
	l.bf	.LBB39_164
	l.nop	0
.LBB39_394:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtu	r11, r5
	l.bf	.LBB39_164
	l.nop	0
	l.j	.LBB39_163
	l.nop	0
.LBB39_395:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3060
	l.sfges	r14, r13
	l.addi	r20, r20, 2448          # CFC
	l.bf	.LBB39_166
	l.nop	0
.LBB39_396:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB39_166
	l.nop	0
	l.j	.LBB39_165
	l.nop	0
.LBB39_397:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3070
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2456          # CFC
	l.bf	.LBB39_173
	l.nop	0
.LBB39_398:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_173
	l.nop	0
	l.j	.LBB39_168
	l.nop	0
.LBB39_399:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3075
	l.sfgtui	r14, 1
	l.addi	r20, r20, 2460          # CFC
	l.bf	.LBB39_170
	l.nop	0
.LBB39_400:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtui	r4, 1
	l.bf	.LBB39_170
	l.nop	0
	l.j	.LBB39_169
	l.nop	0
.LBB39_401:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3085
	l.sfgtsi	r14, 0
	l.addi	r20, r20, 2468          # CFC
	l.bf	.LBB39_172
	l.nop	0
.LBB39_402:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtsi	r4, 0
	l.bf	.LBB39_172
	l.nop	0
	l.j	.LBB39_171
	l.nop	0
.LBB39_403:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3095
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2476          # CFC
	l.bf	.LBB39_180
	l.nop	0
.LBB39_404:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_180
	l.nop	0
	l.j	.LBB39_174
	l.nop	0
.LBB39_405:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3100
	l.sfgtui	r14, 2
	l.addi	r20, r20, 2480          # CFC
	l.bf	.LBB39_176
	l.nop	0
.LBB39_406:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtui	r4, 2
	l.bf	.LBB39_176
	l.nop	0
	l.j	.LBB39_175
	l.nop	0
.LBB39_407:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3110
	l.sfgtsi	r14, 1
	l.addi	r20, r20, 2488          # CFC
	l.bf	.LBB39_178
	l.nop	0
.LBB39_408:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtsi	r4, 1
	l.bf	.LBB39_178
	l.nop	0
	l.j	.LBB39_177
	l.nop	0
.LBB39_409:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3125
	l.sfnei	r13, 128
	l.addi	r20, r20, 2500          # CFC
	l.bf	.LBB39_195
	l.nop	0
.LBB39_410:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfnei	r3, 128
	l.bf	.LBB39_195
	l.nop	0
	l.j	.LBB39_181
	l.nop	0
.LBB39_411:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3130
	l.sfltsi	r14, 1
	l.addi	r20, r20, 2504          # CFC
	l.bf	.LBB39_195
	l.nop	0
.LBB39_412:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfltsi	r4, 1
	l.bf	.LBB39_195
	l.nop	0
	l.j	.LBB39_182
	l.nop	0
.LBB39_413:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3135
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 2508          # CFC
	l.bf	.LBB39_184
	l.nop	0
.LBB39_414:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtsi	r4, 16
	l.bf	.LBB39_184
	l.nop	0
	l.j	.LBB39_183
	l.nop	0
.LBB39_415:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3145
	l.sfgtui	r17, 16
	l.addi	r20, r20, 2516          # CFC
	l.bf	.LBB39_186
	l.nop	0
.LBB39_416:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtui	r7, 16
	l.bf	.LBB39_186
	l.nop	0
	l.j	.LBB39_185
	l.nop	0
.LBB39_417:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3155
	l.sfltsi	r13, 16
	l.addi	r20, r20, 2524          # CFC
	l.bf	.LBB39_232
	l.nop	0
.LBB39_418:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfltsi	r3, 16
	l.bf	.LBB39_232
	l.nop	0
	l.j	.LBB39_187
	l.nop	0
.LBB39_419:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3165
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 2532          # CFC
	l.bf	.LBB39_188
	l.nop	0
.LBB39_420:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtsi	r3, 16
	l.bf	.LBB39_188
	l.nop	0
	l.j	.LBB39_189
	l.nop	0
.LBB39_421:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3175
	l.sfgtu	r17, r13
	l.addi	r20, r20, 2540          # CFC
	l.bf	.LBB39_423
	l.nop	0
.LBB39_422:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtu	r7, r3
	l.bf	.LBB39_423
	l.nop	0
	l.j	.LBB39_424
	l.nop	0
.LBB39_423:
	l.addi	r18, r18, 687
	l.addi	r20, r20, 1374          # CFC
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 4122
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r18, r18, 3435
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.addi	r20, r20, 2748          # CFC
	l.j	.LBB39_192
	l.nop	0
.LBB39_425:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3190
	l.sfges	r14, r13
	l.addi	r20, r20, 2552          # CFC
	l.bf	.LBB39_194
	l.nop	0
.LBB39_426:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB39_194
	l.nop	0
	l.j	.LBB39_193
	l.nop	0
.LBB39_427:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3200
	l.sfltsi	r15, 1
	l.addi	r20, r20, 2560          # CFC
	l.bf	.LBB39_209
	l.nop	0
.LBB39_428:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfltsi	r5, 1
	l.bf	.LBB39_209
	l.nop	0
	l.j	.LBB39_196
	l.nop	0
.LBB39_429:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3205
	l.sfgtsi	r15, 16
	l.addi	r20, r20, 2564          # CFC
	l.bf	.LBB39_198
	l.nop	0
.LBB39_430:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtsi	r5, 16
	l.bf	.LBB39_198
	l.nop	0
	l.j	.LBB39_197
	l.nop	0
.LBB39_431:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3215
	l.sfgtui	r14, 16
	l.addi	r20, r20, 2572          # CFC
	l.bf	.LBB39_200
	l.nop	0
.LBB39_432:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtui	r4, 16
	l.bf	.LBB39_200
	l.nop	0
	l.j	.LBB39_199
	l.nop	0
.LBB39_433:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3225
	l.sfltsi	r13, 16
	l.addi	r20, r20, 2580          # CFC
	l.bf	.LBB39_233
	l.nop	0
.LBB39_434:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfltsi	r3, 16
	l.bf	.LBB39_233
	l.nop	0
	l.j	.LBB39_201
	l.nop	0
.LBB39_435:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3235
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 2588          # CFC
	l.bf	.LBB39_202
	l.nop	0
.LBB39_436:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtsi	r3, 16
	l.bf	.LBB39_202
	l.nop	0
	l.j	.LBB39_203
	l.nop	0
.LBB39_437:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3245
	l.sfgtu	r14, r13
	l.addi	r20, r20, 2596          # CFC
	l.bf	.LBB39_439
	l.nop	0
.LBB39_438:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtu	r4, r3
	l.bf	.LBB39_439
	l.nop	0
	l.j	.LBB39_440
	l.nop	0
.LBB39_439:
	l.addi	r18, r18, 688
	l.addi	r20, r20, 1376          # CFC
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 4128
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r18, r18, 3440
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.addi	r20, r20, 2752          # CFC
	l.j	.LBB39_206
	l.nop	0
.LBB39_441:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3260
	l.sfges	r14, r13
	l.addi	r20, r20, 2608          # CFC
	l.bf	.LBB39_208
	l.nop	0
.LBB39_442:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB39_208
	l.nop	0
	l.j	.LBB39_207
	l.nop	0
.LBB39_443:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3270
	l.sfgtu	r16, r15
	l.addi	r20, r20, 2616          # CFC
	l.bf	.LBB39_211
	l.nop	0
.LBB39_444:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtu	r6, r5
	l.bf	.LBB39_211
	l.nop	0
	l.j	.LBB39_210
	l.nop	0
.LBB39_445:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3280
	l.sfges	r14, r13
	l.addi	r20, r20, 2624          # CFC
	l.bf	.LBB39_213
	l.nop	0
.LBB39_446:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB39_213
	l.nop	0
	l.j	.LBB39_212
	l.nop	0
.LBB39_447:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3285
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2628          # CFC
	l.bf	.LBB39_1
	l.nop	0
.LBB39_448:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB39_1
	l.nop	0
	l.j	.LBB39_214
	l.nop	0
.LBB39_449:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3290
	l.sfltsi	r14, 1
	l.addi	r20, r20, 2632          # CFC
	l.bf	.LBB39_1
	l.nop	0
.LBB39_450:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfltsi	r4, 1
	l.bf	.LBB39_1
	l.nop	0
	l.j	.LBB39_215
	l.nop	0
.LBB39_451:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3295
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 2636          # CFC
	l.bf	.LBB39_217
	l.nop	0
.LBB39_452:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtsi	r4, 16
	l.bf	.LBB39_217
	l.nop	0
	l.j	.LBB39_216
	l.nop	0
.LBB39_453:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3305
	l.sfgtui	r13, 16
	l.addi	r20, r20, 2644          # CFC
	l.bf	.LBB39_219
	l.nop	0
.LBB39_454:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtui	r3, 16
	l.bf	.LBB39_219
	l.nop	0
	l.j	.LBB39_218
	l.nop	0
.LBB39_455:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3315
	l.sfltsi	r15, 16
	l.addi	r20, r20, 2652          # CFC
	l.bf	.LBB39_222
	l.nop	0
.LBB39_456:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfltsi	r5, 16
	l.bf	.LBB39_222
	l.nop	0
	l.j	.LBB39_220
	l.nop	0
.LBB39_457:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3325
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 2660          # CFC
	l.bf	.LBB39_221
	l.nop	0
.LBB39_458:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtsi	r3, 16
	l.bf	.LBB39_221
	l.nop	0
	l.j	.LBB39_224
	l.nop	0
.LBB39_459:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3335
	l.sfgtu	r14, r13
	l.addi	r20, r20, 2668          # CFC
	l.bf	.LBB39_461
	l.nop	0
.LBB39_460:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfgtu	r4, r3
	l.bf	.LBB39_461
	l.nop	0
	l.j	.LBB39_462
	l.nop	0
.LBB39_461:
	l.addi	r18, r18, 689
	l.addi	r20, r20, 1378          # CFC
	l.movhi	r3, hi(vfnprintf.blanks)
	l.addi	r28, r28, 4134
	l.movhi	r13, hi(vfnprintf.blanks)
	l.addi	r18, r18, 3445
	l.movhi	r23, hi(vfnprintf.blanks)
	l.addi	r20, r20, 2756          # CFC
	l.j	.LBB39_227
	l.nop	0
.LBB39_463:                             #   in Loop: Header=BB39_3 Depth=3
	l.addi	r18, r18, 3350
	l.sfges	r14, r13
	l.addi	r20, r20, 2680          # CFC
	l.bf	.LBB39_229
	l.nop	0
.LBB39_464:                             #   in Loop: Header=BB39_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB39_229
	l.nop	0
	l.j	.LBB39_228
	l.nop	0
.Lfunc_end39:
	.size	vfnprintf, .Lfunc_end39-vfnprintf

	.text
	.hidden	sprintf
	.globl	sprintf
	.p2align	2
	.type	sprintf,@function
sprintf:                                # @sprintf
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 690
	l.sw	-4(r1), r9
	l.addi	r20, r20, 1380          # CFC
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -12
	l.ori	r5, r4, 0
	l.sw	3564(r10), r19
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.addi	r6, r2, 0
	l.addi	r10, r10, -12
	l.sw	7132(r21), r29
	l.sw	-12(r2), r6
	l.addi	r28, r28, 4140
	l.ori	r15, r14, 0
	l.sw	7128(r21), r22
	l.addi	r4, r0, 1024
	l.addi	r16, r12, 0
	l.addi	r22, r21, 0             # CFC
	l.sw	3556(r12), r16
	l.addi	r14, r0, 1024
	l.addi	r21, r21, -12           # CFC
	l.ori	r25, r24, 0
	l.addi	r26, r22, 0
	l.sw	7124(r22), r26
	l.addi	r18, r18, 3450
	l.addi	r24, r0, 1024
	l.jal	vfnprintf
	l.nop	0                       # in delay slot
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 2760          # CFC
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
	.size	sprintf, .Lfunc_end40-sprintf

	.hidden	printf_to_sim
	.globl	printf_to_sim
	.p2align	2
	.type	printf_to_sim,@function
printf_to_sim:                          # @printf_to_sim
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 691
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -24
	l.ori	r5, r3, 0
	l.sw	3564(r10), r19
	l.addi	r20, r20, 1382          # CFC
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.addi	r6, r2, 0
	l.addi	r10, r10, -24
	l.sw	7132(r21), r29
	l.sw	-12(r2), r6
	l.ori	r15, r13, 0
	l.sw	7128(r21), r22
	l.movhi	r3, hi(PRINTFBUFFER)
	l.addi	r16, r12, 0
	l.addi	r22, r21, 0             # CFC
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.sw	3556(r12), r16
	l.addi	r21, r21, -24           # CFC
	l.addi	r4, r0, 2048
	l.movhi	r13, hi(PRINTFBUFFER)
	l.addi	r28, r28, 4146
	l.ori	r25, r23, 0
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.addi	r14, r0, 2048
	l.addi	r26, r22, 0
	l.sw	7124(r22), r26
	l.movhi	r23, hi(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.addi	r24, r0, 2048
	l.jal	vfnprintf
	l.nop	0                       # in delay slot
	l.ori	r3, r11, 0
	l.addi	r11, r0, -1
	l.sfeqi	r3, 0
	l.ori	r13, r8, 0
	l.addi	r8, r0, -1
	l.ori	r23, r31, 0
	l.addi	r31, r0, -1
	l.bf	.LBB41_7
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3455
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2764          # CFC
	l.bf	.LBB41_8
	l.nop	0
.LBB41_1:                               # %while.cond.preheader
	l.addi	r18, r18, 692
	l.sw	-24(r2), r3
	l.addi	r20, r20, 1384          # CFC
	l.sfltsi	r3, 1
	l.addi	r28, r28, 4152
	l.sw	3544(r12), r13
	l.sw	7112(r22), r23
	l.bf	.LBB41_9
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3460
	l.sfltsi	r13, 1
	l.addi	r20, r20, 2768          # CFC
	l.bf	.LBB41_10
	l.nop	0
.LBB41_2:                               # %while.body.preheader
	l.addi	r18, r18, 693
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.addi	r20, r20, 1386          # CFC
	l.lwz	r4, -24(r2)
	l.movhi	r13, hi(PRINTFBUFFER)
	l.addi	r28, r28, 4158
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.lwz	r14, 3544(r12)
	l.addi	r18, r18, 3465
	l.movhi	r23, hi(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.lwz	r24, 7112(r22)
	l.addi	r20, r20, 2772          # CFC
.LBB41_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 694
	l.sw	-20(r2), r4
	l.sw	-16(r2), r3
	l.lwz	r3, -16(r2)
	l.lbz	r3, 0(r3)
	l.sw	3548(r12), r14
	l.sw	3552(r12), r13
	l.lwz	r13, 3552(r12)
	l.lbz	r13, 3568(r13)
	l.addi	r20, r20, 1388          # CFC
	l.sw	7116(r22), r24
	l.sw	7120(r22), r23
	l.lwz	r23, 7120(r22)
	l.lbz	r23, 7136(r23)
	l.jal	sim_putc
	l.nop	0                       # in delay slot
	l.lwz	r4, -20(r2)
	l.lwz	r3, -16(r2)
	l.addi	r3, r3, 1
	l.addi	r4, r4, -1
	l.addi	r28, r28, 4164
	l.sfnei	r4, 0
	l.lwz	r14, 3548(r12)
	l.lwz	r13, 3552(r12)
	l.addi	r13, r13, 1
	l.addi	r14, r14, -1
	l.lwz	r24, 7116(r22)
	l.lwz	r23, 7120(r22)
	l.addi	r23, r23, 1
	l.addi	r24, r24, -1
	l.bf	.LBB41_11
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3470
	l.sfnei	r14, 0
	l.addi	r20, r20, 2776          # CFC
	l.bf	.LBB41_12
	l.nop	0
.LBB41_4:                               # %while.end
	l.addi	r18, r18, 695
	l.addi	r20, r20, 1390          # CFC
	l.lwz	r11, -24(r2)
	l.addi	r28, r28, 4170
	l.lwz	r8, 3544(r12)
	l.addi	r18, r18, 3475
	l.lwz	r31, 7112(r22)
	l.addi	r20, r20, 2780          # CFC
.LBB41_5:                               # %cleanup
	l.addi	r18, r18, 696
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 1392          # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 4176
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.addi	r18, r18, 3480
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 2784          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB41_6
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB41_6:                               # %cleanup
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB41_13
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB41_13
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB41_13
	l.nop	0
	l.nop	205
.LBB41_13:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB41_14
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB41_14
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB41_14
	l.nop	0
	l.nop	205
.LBB41_14:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB41_15
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB41_15
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB41_15
	l.nop	0
	l.nop	205
.LBB41_15:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB41_16
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB41_16
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB41_16
	l.nop	0
	l.nop	205
.LBB41_16:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB41_17
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB41_17
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB41_17
	l.nop	0
	l.nop	205
.LBB41_17:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB41_18
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB41_18
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB41_18
	l.nop	0
	l.nop	205
.LBB41_18:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB41_19
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB41_19
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB41_19
	l.nop	0
	l.nop	205
.LBB41_19:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB41_20
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB41_20
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB41_20
	l.nop	0
	l.nop	205
.LBB41_20:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB41_21
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB41_21
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB41_21
	l.nop	0
	l.nop	205
.LBB41_21:
.LBB41_22:
	l.jr	r30
	l.nop	0
.LBB41_7:
	l.addi	r18, r18, 3455
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2764          # CFC
	l.bf	.LBB41_5
	l.nop	0
.LBB41_8:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB41_6
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB41_5
	l.nop	0
	l.j	.LBB41_1
	l.nop	0
.LBB41_9:
	l.addi	r18, r18, 3460
	l.sfltsi	r13, 1
	l.addi	r20, r20, 2768          # CFC
	l.bf	.LBB41_4
	l.nop	0
.LBB41_10:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB41_6
	l.nop	0
	l.sfltsi	r3, 1
	l.bf	.LBB41_4
	l.nop	0
	l.j	.LBB41_2
	l.nop	0
.LBB41_11:
	l.addi	r18, r18, 3470
	l.sfnei	r14, 0
	l.addi	r20, r20, 2776          # CFC
	l.bf	.LBB41_3
	l.nop	0
.LBB41_12:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB41_6
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB41_3
	l.nop	0
	l.j	.LBB41_4
	l.nop	0
.Lfunc_end41:
	.size	printf_to_sim, .Lfunc_end41-printf_to_sim

	.hidden	puts_to_sim
	.globl	puts_to_sim
	.p2align	2
	.type	puts_to_sim,@function
puts_to_sim:                            # @puts_to_sim
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 697
	l.sw	-4(r1), r9
	l.addi	r20, r20, 1394          # CFC
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -12
	l.sw	0(r1), r3
	l.sw	3564(r10), r19
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.movhi	r3, hi(.L.str.5)
	l.addi	r10, r10, -12
	l.sw	7132(r21), r29
	l.addi	r28, r28, 4182
	l.ori	r3, r3, lo(.L.str.5)
	l.sw	3568(r10), r13
	l.sw	7128(r21), r22
	l.movhi	r13, hi(.L.str.5)
	l.ori	r13, r13, lo(.L.str.5)
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -12           # CFC
	l.sw	7136(r21), r23
	l.movhi	r23, hi(.L.str.5)
	l.ori	r23, r23, lo(.L.str.5)
	l.addi	r18, r18, 3485
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 2788          # CFC
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
	.size	puts_to_sim, .Lfunc_end42-puts_to_sim

	.hidden	printf_to_uart
	.globl	printf_to_uart
	.p2align	2
	.type	printf_to_uart,@function
printf_to_uart:                         # @printf_to_uart
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 698
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -24
	l.ori	r5, r3, 0
	l.sw	3564(r10), r19
	l.addi	r20, r20, 1396          # CFC
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.addi	r6, r2, 0
	l.addi	r10, r10, -24
	l.sw	7132(r21), r29
	l.sw	-12(r2), r6
	l.ori	r15, r13, 0
	l.sw	7128(r21), r22
	l.movhi	r3, hi(PRINTFBUFFER)
	l.addi	r16, r12, 0
	l.addi	r22, r21, 0             # CFC
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.sw	3556(r12), r16
	l.addi	r21, r21, -24           # CFC
	l.addi	r4, r0, 2048
	l.movhi	r13, hi(PRINTFBUFFER)
	l.addi	r28, r28, 4188
	l.ori	r25, r23, 0
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.addi	r14, r0, 2048
	l.addi	r26, r22, 0
	l.sw	7124(r22), r26
	l.movhi	r23, hi(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.addi	r24, r0, 2048
	l.jal	vfnprintf
	l.nop	0                       # in delay slot
	l.ori	r3, r11, 0
	l.addi	r11, r0, -1
	l.sfeqi	r3, 0
	l.ori	r13, r8, 0
	l.addi	r8, r0, -1
	l.ori	r23, r31, 0
	l.addi	r31, r0, -1
	l.bf	.LBB43_7
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3490
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2792          # CFC
	l.bf	.LBB43_8
	l.nop	0
.LBB43_1:                               # %while.cond.preheader
	l.addi	r18, r18, 699
	l.sw	-24(r2), r3
	l.addi	r20, r20, 1398          # CFC
	l.sfltsi	r3, 1
	l.addi	r28, r28, 4194
	l.sw	3544(r12), r13
	l.sw	7112(r22), r23
	l.bf	.LBB43_9
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3495
	l.sfltsi	r13, 1
	l.addi	r20, r20, 2796          # CFC
	l.bf	.LBB43_10
	l.nop	0
.LBB43_2:                               # %while.body.preheader
	l.addi	r18, r18, 700
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.addi	r20, r20, 1400          # CFC
	l.lwz	r4, -24(r2)
	l.movhi	r13, hi(PRINTFBUFFER)
	l.addi	r28, r28, 4200
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.lwz	r14, 3544(r12)
	l.addi	r18, r18, 3500
	l.movhi	r23, hi(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.lwz	r24, 7112(r22)
	l.addi	r20, r20, 2800          # CFC
.LBB43_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 701
	l.sw	-20(r2), r4
	l.sw	-16(r2), r3
	l.lbs	r4, 0(r3)
	l.movhi	r3, 0
	l.sw	3548(r12), r14
	l.sw	3552(r12), r13
	l.lbs	r14, 3568(r13)
	l.movhi	r13, 0
	l.addi	r20, r20, 1402          # CFC
	l.sw	7116(r22), r24
	l.sw	7120(r22), r23
	l.lbs	r24, 7136(r23)
	l.movhi	r23, 0
	l.jal	uart_putc
	l.nop	0                       # in delay slot
	l.lwz	r4, -20(r2)
	l.lwz	r3, -16(r2)
	l.addi	r3, r3, 1
	l.addi	r4, r4, -1
	l.addi	r28, r28, 4206
	l.sfnei	r4, 0
	l.lwz	r14, 3548(r12)
	l.lwz	r13, 3552(r12)
	l.addi	r13, r13, 1
	l.addi	r14, r14, -1
	l.lwz	r24, 7116(r22)
	l.lwz	r23, 7120(r22)
	l.addi	r23, r23, 1
	l.addi	r24, r24, -1
	l.bf	.LBB43_11
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3505
	l.sfnei	r14, 0
	l.addi	r20, r20, 2804          # CFC
	l.bf	.LBB43_12
	l.nop	0
.LBB43_4:                               # %while.end
	l.addi	r18, r18, 702
	l.addi	r20, r20, 1404          # CFC
	l.lwz	r11, -24(r2)
	l.addi	r28, r28, 4212
	l.lwz	r8, 3544(r12)
	l.addi	r18, r18, 3510
	l.lwz	r31, 7112(r22)
	l.addi	r20, r20, 2808          # CFC
.LBB43_5:                               # %cleanup
	l.addi	r18, r18, 703
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 1406          # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 4218
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.addi	r18, r18, 3515
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 2812          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB43_6
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB43_6:                               # %cleanup
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB43_13
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB43_13
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB43_13
	l.nop	0
	l.nop	205
.LBB43_13:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB43_14
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB43_14
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB43_14
	l.nop	0
	l.nop	205
.LBB43_14:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB43_15
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB43_15
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB43_15
	l.nop	0
	l.nop	205
.LBB43_15:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB43_16
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB43_16
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB43_16
	l.nop	0
	l.nop	205
.LBB43_16:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB43_17
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB43_17
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB43_17
	l.nop	0
	l.nop	205
.LBB43_17:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB43_18
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB43_18
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB43_18
	l.nop	0
	l.nop	205
.LBB43_18:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB43_19
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB43_19
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB43_19
	l.nop	0
	l.nop	205
.LBB43_19:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB43_20
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB43_20
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB43_20
	l.nop	0
	l.nop	205
.LBB43_20:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB43_21
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB43_21
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB43_21
	l.nop	0
	l.nop	205
.LBB43_21:
.LBB43_22:
	l.jr	r30
	l.nop	0
.LBB43_7:
	l.addi	r18, r18, 3490
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2792          # CFC
	l.bf	.LBB43_5
	l.nop	0
.LBB43_8:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB43_6
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB43_5
	l.nop	0
	l.j	.LBB43_1
	l.nop	0
.LBB43_9:
	l.addi	r18, r18, 3495
	l.sfltsi	r13, 1
	l.addi	r20, r20, 2796          # CFC
	l.bf	.LBB43_4
	l.nop	0
.LBB43_10:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB43_6
	l.nop	0
	l.sfltsi	r3, 1
	l.bf	.LBB43_4
	l.nop	0
	l.j	.LBB43_2
	l.nop	0
.LBB43_11:
	l.addi	r18, r18, 3505
	l.sfnei	r14, 0
	l.addi	r20, r20, 2804          # CFC
	l.bf	.LBB43_3
	l.nop	0
.LBB43_12:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB43_6
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB43_3
	l.nop	0
	l.j	.LBB43_4
	l.nop	0
.Lfunc_end43:
	.size	printf_to_uart, .Lfunc_end43-printf_to_uart

	.hidden	putchar_to_uart
	.globl	putchar_to_uart
	.p2align	2
	.type	putchar_to_uart,@function
putchar_to_uart:                        # @putchar_to_uart
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 704
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r20, r20, 1408          # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.sw	-12(r2), r3
	l.sw	3564(r10), r19
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.sw	0(r1), r3
	l.addi	r10, r10, -16
	l.sw	7132(r21), r29
	l.movhi	r3, hi(.L.str.6)
	l.sw	3556(r12), r13
	l.sw	7128(r21), r22
	l.addi	r28, r28, 4224
	l.ori	r3, r3, lo(.L.str.6)
	l.sw	3568(r10), r13
	l.addi	r22, r21, 0             # CFC
	l.movhi	r13, hi(.L.str.6)
	l.ori	r13, r13, lo(.L.str.6)
	l.addi	r21, r21, -16           # CFC
	l.sw	7124(r22), r23
	l.sw	7136(r21), r23
	l.movhi	r23, hi(.L.str.6)
	l.ori	r23, r23, lo(.L.str.6)
	l.jal	printf_to_uart
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3520
	l.lwz	r11, -12(r2)
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.lwz	r8, 3556(r12)
	l.addi	r10, r12, 0
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.lwz	r31, 7124(r22)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 2816          # CFC
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
	.size	putchar_to_uart, .Lfunc_end44-putchar_to_uart

	.hidden	puts_to_uart
	.globl	puts_to_uart
	.p2align	2
	.type	puts_to_uart,@function
puts_to_uart:                           # @puts_to_uart
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 705
	l.sw	-4(r1), r9
	l.addi	r20, r20, 1410          # CFC
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -12
	l.sw	0(r1), r3
	l.sw	3564(r10), r19
	l.sw	3560(r10), r12
	l.addi	r12, r10, 0
	l.movhi	r3, hi(.L.str.5)
	l.addi	r10, r10, -12
	l.sw	7132(r21), r29
	l.addi	r28, r28, 4230
	l.ori	r3, r3, lo(.L.str.5)
	l.sw	3568(r10), r13
	l.sw	7128(r21), r22
	l.movhi	r13, hi(.L.str.5)
	l.ori	r13, r13, lo(.L.str.5)
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -12           # CFC
	l.sw	7136(r21), r23
	l.movhi	r23, hi(.L.str.5)
	l.ori	r23, r23, lo(.L.str.5)
	l.addi	r18, r18, 3525
	l.jal	printf_to_uart
	l.nop	0                       # in delay slot
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 3560(r10)
	l.lwz	r19, 3564(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7128(r21)
	l.lwz	r29, 7132(r21)
	l.addi	r20, r20, 2820          # CFC
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
	.size	puts_to_uart, .Lfunc_end45-puts_to_uart

	.hidden	uart_init
	.globl	uart_init
	.p2align	2
	.type	uart_init,@function
uart_init:                              # @uart_init
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 706
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r4, 36864
	l.ori	r5, r4, 2
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.addi	r6, r0, 199
	l.movhi	r14, 36864
	l.sw	7132(r21), r22
	l.sb	0(r5), r6
	l.ori	r15, r14, 2
	l.addi	r22, r21, 0             # CFC
	l.ori	r5, r4, 1
	l.addi	r16, r0, 199
	l.addi	r21, r21, -4            # CFC
	l.addi	r20, r20, 1412          # CFC
	l.movhi	r6, 0
	l.sb	3568(r15), r16
	l.movhi	r24, 36864
	l.sb	0(r5), r6
	l.ori	r15, r14, 1
	l.ori	r25, r24, 2
	l.ori	r4, r4, 3
	l.movhi	r16, 0
	l.addi	r26, r0, 199
	l.addi	r7, r0, 3
	l.sb	3568(r15), r16
	l.sb	7136(r25), r26
	l.sb	0(r4), r7
	l.ori	r14, r14, 3
	l.ori	r25, r24, 1
	l.lbz	r7, 0(r4)
	l.addi	r17, r0, 3
	l.movhi	r26, 0
	l.ori	r7, r7, 128
	l.sb	3568(r14), r17
	l.sb	7136(r25), r26
	l.sb	0(r4), r7
	l.lbz	r17, 3568(r14)
	l.addi	r28, r28, 4236
	l.ori	r24, r24, 3
	l.movhi	r7, hi(UART_BASE_ADR)
	l.ori	r17, r17, 128
	l.addi	r27, r0, 3
	l.ori	r7, r7, lo(UART_BASE_ADR)
	l.sb	3568(r14), r17
	l.sb	7136(r24), r27
	l.slli	r3, r3, 2
	l.movhi	r17, hi(UART_BASE_ADR)
	l.lbz	r27, 7136(r24)
	l.add	r3, r3, r7
	l.ori	r17, r17, lo(UART_BASE_ADR)
	l.ori	r27, r27, 128
	l.lwz	r3, 0(r3)
	l.slli	r13, r13, 2
	l.sb	7136(r24), r27
	l.addi	r7, r0, 27
	l.add	r13, r13, r17
	l.movhi	r27, hi(UART_BASE_ADR)
	l.sb	0(r3), r7
	l.lwz	r13, 3568(r13)
	l.ori	r27, r27, lo(UART_BASE_ADR)
	l.sb	0(r5), r6
	l.addi	r18, r18, 3530
	l.addi	r17, r0, 27
	l.slli	r23, r23, 2
	l.lbz	r3, 0(r4)
	l.sb	3568(r13), r17
	l.add	r23, r23, r27
	l.andi	r3, r3, 127
	l.sb	3568(r15), r16
	l.lwz	r23, 7136(r23)
	l.sb	0(r4), r3
	l.lbz	r13, 3568(r14)
	l.addi	r27, r0, 27
	l.addi	r1, r2, 0
	l.andi	r13, r13, 127
	l.sb	7136(r23), r27
	l.lwz	r2, -4(r1)
	l.sb	3568(r14), r13
	l.sb	7136(r25), r26
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.lbz	r23, 7136(r24)
	l.andi	r23, r23, 127
	l.sb	7136(r24), r23
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 2824          # CFC
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
	.size	uart_init, .Lfunc_end46-uart_init

	.hidden	uart_putc
	.globl	uart_putc
	.p2align	2
	.type	uart_putc,@function
uart_putc:                              # @uart_putc
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 707
	l.addi	r20, r20, 1414          # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r5, 36864
	l.addi	r28, r28, 4242
	l.ori	r5, r5, 5
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.movhi	r15, 36864
	l.addi	r18, r18, 3535
	l.ori	r15, r15, 5
	l.sw	7132(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r25, 36864
	l.ori	r25, r25, 5
	l.addi	r20, r20, 2828          # CFC
.LBB47_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 708
	l.lbz	r6, 0(r5)
	l.andi	r6, r6, 32
	l.addi	r20, r20, 1416          # CFC
	l.sfeqi	r6, 0
	l.lbz	r16, 3568(r15)
	l.addi	r28, r28, 4248
	l.andi	r16, r16, 32
	l.lbz	r26, 7136(r25)
	l.andi	r26, r26, 32
	l.bf	.LBB47_10
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3540
	l.sfeqi	r16, 0
	l.addi	r20, r20, 2832          # CFC
	l.bf	.LBB47_11
	l.nop	0
.LBB47_2:                               # %do.end
	l.addi	r18, r18, 709
	l.movhi	r5, hi(UART_BASE_ADR)
	l.ori	r5, r5, lo(UART_BASE_ADR)
	l.slli	r3, r3, 2
	l.add	r3, r3, r5
	l.lwz	r3, 0(r3)
	l.movhi	r15, hi(UART_BASE_ADR)
	l.ori	r15, r15, lo(UART_BASE_ADR)
	l.addi	r20, r20, 1418          # CFC
	l.slli	r13, r13, 2
	l.sb	0(r3), r4
	l.add	r13, r13, r15
	l.movhi	r25, hi(UART_BASE_ADR)
	l.andi	r4, r4, 255
	l.lwz	r13, 3568(r13)
	l.ori	r25, r25, lo(UART_BASE_ADR)
	l.addi	r28, r28, 4254
	l.sfnei	r4, 10
	l.sb	3568(r13), r14
	l.andi	r14, r14, 255
	l.slli	r23, r23, 2
	l.add	r23, r23, r25
	l.lwz	r23, 7136(r23)
	l.sb	7136(r23), r24
	l.andi	r24, r24, 255
	l.bf	.LBB47_12
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3545
	l.sfnei	r14, 10
	l.addi	r20, r20, 2836          # CFC
	l.bf	.LBB47_13
	l.nop	0
.LBB47_3:                               # %do.body7.preheader
	l.addi	r18, r18, 710
	l.movhi	r4, 36864
	l.addi	r20, r20, 1420          # CFC
	l.ori	r4, r4, 5
	l.movhi	r14, 36864
	l.addi	r28, r28, 4260
	l.ori	r14, r14, 5
	l.addi	r18, r18, 3550
	l.movhi	r24, 36864
	l.ori	r24, r24, 5
	l.addi	r20, r20, 2840          # CFC
.LBB47_4:                               # %do.body7
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 711
	l.lbz	r5, 0(r4)
	l.andi	r5, r5, 32
	l.addi	r20, r20, 1422          # CFC
	l.sfeqi	r5, 0
	l.lbz	r15, 3568(r14)
	l.addi	r28, r28, 4266
	l.andi	r15, r15, 32
	l.lbz	r25, 7136(r24)
	l.andi	r25, r25, 32
	l.bf	.LBB47_14
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3555
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2844          # CFC
	l.bf	.LBB47_15
	l.nop	0
.LBB47_5:                               # %do.end15
	l.addi	r18, r18, 712
	l.addi	r4, r0, 13
	l.addi	r20, r20, 1424          # CFC
	l.sb	0(r3), r4
	l.addi	r14, r0, 13
	l.addi	r28, r28, 4272
	l.sb	3568(r13), r14
	l.addi	r18, r18, 3560
	l.addi	r24, r0, 13
	l.sb	7136(r23), r24
	l.addi	r20, r20, 2848          # CFC
.LBB47_6:                               # %do.body18.preheader
	l.addi	r18, r18, 713
	l.movhi	r3, 36864
	l.addi	r20, r20, 1426          # CFC
	l.ori	r3, r3, 5
	l.movhi	r13, 36864
	l.addi	r28, r28, 4278
	l.ori	r13, r13, 5
	l.addi	r18, r18, 3565
	l.movhi	r23, 36864
	l.ori	r23, r23, 5
	l.addi	r20, r20, 2852          # CFC
.LBB47_7:                               # %do.body18
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 714
	l.lbz	r4, 0(r3)
	l.andi	r4, r4, 96
	l.addi	r20, r20, 1428          # CFC
	l.sfnei	r4, 96
	l.lbz	r14, 3568(r13)
	l.addi	r28, r28, 4284
	l.andi	r14, r14, 96
	l.lbz	r24, 7136(r23)
	l.andi	r24, r24, 96
	l.bf	.LBB47_16
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3570
	l.sfnei	r14, 96
	l.addi	r20, r20, 2856          # CFC
	l.bf	.LBB47_17
	l.nop	0
.LBB47_8:                               # %do.end26
	l.addi	r18, r18, 715
	l.addi	r1, r2, 0
	l.addi	r20, r20, 1430          # CFC
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 4290
	l.lwz	r12, 3564(r10)
	l.addi	r18, r18, 3575
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 2860          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB47_9
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB47_9:                               # %do.end26
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB47_18
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB47_18
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB47_18
	l.nop	0
	l.nop	205
.LBB47_18:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB47_19
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB47_19
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB47_19
	l.nop	0
	l.nop	205
.LBB47_19:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB47_20
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB47_20
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB47_20
	l.nop	0
	l.nop	205
.LBB47_20:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB47_21
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB47_21
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB47_21
	l.nop	0
	l.nop	205
.LBB47_21:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB47_22
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB47_22
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB47_22
	l.nop	0
	l.nop	205
.LBB47_22:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB47_23
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB47_23
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB47_23
	l.nop	0
	l.nop	205
.LBB47_23:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB47_24
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB47_24
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB47_24
	l.nop	0
	l.nop	205
.LBB47_24:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB47_25
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB47_25
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB47_25
	l.nop	0
	l.nop	205
.LBB47_25:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB47_26
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB47_26
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB47_26
	l.nop	0
	l.nop	205
.LBB47_26:
.LBB47_27:
	l.jr	r30
	l.nop	0
.LBB47_10:
	l.addi	r18, r18, 3540
	l.sfeqi	r16, 0
	l.addi	r20, r20, 2832          # CFC
	l.bf	.LBB47_1
	l.nop	0
.LBB47_11:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB47_9
	l.nop	0
	l.sfeqi	r6, 0
	l.bf	.LBB47_1
	l.nop	0
	l.j	.LBB47_2
	l.nop	0
.LBB47_12:
	l.addi	r18, r18, 3545
	l.sfnei	r14, 10
	l.addi	r20, r20, 2836          # CFC
	l.bf	.LBB47_6
	l.nop	0
.LBB47_13:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB47_9
	l.nop	0
	l.sfnei	r4, 10
	l.bf	.LBB47_6
	l.nop	0
	l.j	.LBB47_3
	l.nop	0
.LBB47_14:
	l.addi	r18, r18, 3555
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2844          # CFC
	l.bf	.LBB47_4
	l.nop	0
.LBB47_15:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB47_9
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB47_4
	l.nop	0
	l.j	.LBB47_5
	l.nop	0
.LBB47_16:
	l.addi	r18, r18, 3570
	l.sfnei	r14, 96
	l.addi	r20, r20, 2856          # CFC
	l.bf	.LBB47_7
	l.nop	0
.LBB47_17:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB47_9
	l.nop	0
	l.sfnei	r4, 96
	l.bf	.LBB47_7
	l.nop	0
	l.j	.LBB47_8
	l.nop	0
.Lfunc_end47:
	.size	uart_putc, .Lfunc_end47-uart_putc

	.hidden	uart_putc_noblock
	.globl	uart_putc_noblock
	.p2align	2
	.type	uart_putc_noblock,@function
uart_putc_noblock:                      # @uart_putc_noblock
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 716
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 1432          # CFC
	l.movhi	r5, hi(UART_BASE_ADR)
	l.ori	r5, r5, lo(UART_BASE_ADR)
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.slli	r3, r3, 2
	l.movhi	r15, hi(UART_BASE_ADR)
	l.sw	7132(r21), r22
	l.add	r3, r3, r5
	l.ori	r15, r15, lo(UART_BASE_ADR)
	l.addi	r28, r28, 4296
	l.addi	r22, r21, 0             # CFC
	l.lwz	r3, 0(r3)
	l.slli	r13, r13, 2
	l.addi	r21, r21, -4            # CFC
	l.sb	0(r3), r4
	l.add	r13, r13, r15
	l.movhi	r25, hi(UART_BASE_ADR)
	l.addi	r1, r2, 0
	l.lwz	r13, 3568(r13)
	l.ori	r25, r25, lo(UART_BASE_ADR)
	l.addi	r18, r18, 3580
	l.lwz	r2, -4(r1)
	l.sb	3568(r13), r14
	l.slli	r23, r23, 2
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.add	r23, r23, r25
	l.lwz	r23, 7136(r23)
	l.sb	7136(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 2864          # CFC
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
	.size	uart_putc_noblock, .Lfunc_end48-uart_putc_noblock

	.hidden	uart_getc
	.globl	uart_getc
	.p2align	2
	.type	uart_getc,@function
uart_getc:                              # @uart_getc
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 717
	l.addi	r20, r20, 1434          # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r4, 36864
	l.addi	r28, r28, 4302
	l.ori	r4, r4, 5
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.movhi	r14, 36864
	l.addi	r18, r18, 3585
	l.ori	r14, r14, 5
	l.sw	7132(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r24, 36864
	l.ori	r24, r24, 5
	l.addi	r20, r20, 2868          # CFC
.LBB49_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 718
	l.lbz	r5, 0(r4)
	l.andi	r5, r5, 1
	l.addi	r20, r20, 1436          # CFC
	l.sfeqi	r5, 0
	l.lbz	r15, 3568(r14)
	l.addi	r28, r28, 4308
	l.andi	r15, r15, 1
	l.lbz	r25, 7136(r24)
	l.andi	r25, r25, 1
	l.bf	.LBB49_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3590
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2872          # CFC
	l.bf	.LBB49_5
	l.nop	0
.LBB49_2:                               # %do.end
	l.addi	r18, r18, 719
	l.movhi	r4, hi(UART_BASE_ADR)
	l.ori	r4, r4, lo(UART_BASE_ADR)
	l.slli	r3, r3, 2
	l.add	r3, r3, r4
	l.lwz	r3, 0(r3)
	l.movhi	r14, hi(UART_BASE_ADR)
	l.addi	r20, r20, 1438          # CFC
	l.ori	r14, r14, lo(UART_BASE_ADR)
	l.slli	r13, r13, 2
	l.lbs	r11, 0(r3)
	l.add	r13, r13, r14
	l.movhi	r24, hi(UART_BASE_ADR)
	l.addi	r1, r2, 0
	l.addi	r28, r28, 4314
	l.lwz	r13, 3568(r13)
	l.ori	r24, r24, lo(UART_BASE_ADR)
	l.lwz	r2, -4(r1)
	l.lbs	r8, 3568(r13)
	l.slli	r23, r23, 2
	l.addi	r10, r12, 0
	l.addi	r18, r18, 3595
	l.lwz	r12, 3564(r10)
	l.add	r23, r23, r24
	l.lwz	r23, 7136(r23)
	l.lbs	r31, 7136(r23)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 2876          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB49_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB49_3:                               # %do.end
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB49_6
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB49_6
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB49_6
	l.nop	0
	l.nop	205
.LBB49_6:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB49_7
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB49_7
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB49_7
	l.nop	0
	l.nop	205
.LBB49_7:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB49_8
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB49_8
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB49_8
	l.nop	0
	l.nop	205
.LBB49_8:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB49_9
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB49_9
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB49_9
	l.nop	0
	l.nop	205
.LBB49_9:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB49_10
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB49_10
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB49_10
	l.nop	0
	l.nop	205
.LBB49_10:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB49_11
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB49_11
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB49_11
	l.nop	0
	l.nop	205
.LBB49_11:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB49_12
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB49_12
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB49_12
	l.nop	0
	l.nop	205
.LBB49_12:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB49_13
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB49_13
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB49_13
	l.nop	0
	l.nop	205
.LBB49_13:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB49_14
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB49_14
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB49_14
	l.nop	0
	l.nop	205
.LBB49_14:
.LBB49_15:
	l.jr	r30
	l.nop	0
.LBB49_4:
	l.addi	r18, r18, 3590
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2872          # CFC
	l.bf	.LBB49_1
	l.nop	0
.LBB49_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB49_3
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB49_1
	l.nop	0
	l.j	.LBB49_2
	l.nop	0
.Lfunc_end49:
	.size	uart_getc, .Lfunc_end49-uart_getc

	.hidden	uart_check_for_char
	.globl	uart_check_for_char
	.p2align	2
	.type	uart_check_for_char,@function
uart_check_for_char:                    # @uart_check_for_char
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 720
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r20, r20, 1440          # CFC
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.ori	r3, r3, 5
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbz	r3, 0(r3)
	l.movhi	r13, 36864
	l.addi	r28, r28, 4320
	l.sw	7132(r21), r22
	l.andi	r11, r3, 1
	l.ori	r13, r13, 5
	l.addi	r22, r21, 0             # CFC
	l.addi	r1, r2, 0
	l.lbz	r13, 3568(r13)
	l.addi	r21, r21, -4            # CFC
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 3600
	l.andi	r8, r13, 1
	l.movhi	r23, 36864
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.ori	r23, r23, 5
	l.lbz	r23, 7136(r23)
	l.andi	r31, r23, 1
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 2880          # CFC
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
	.size	uart_check_for_char, .Lfunc_end50-uart_check_for_char

	.hidden	uart_rxint_enable
	.globl	uart_rxint_enable
	.p2align	2
	.type	uart_rxint_enable,@function
uart_rxint_enable:                      # @uart_rxint_enable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 721
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 1442          # CFC
	l.movhi	r3, 36864
	l.ori	r3, r3, 1
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbz	r4, 0(r3)
	l.movhi	r13, 36864
	l.sw	7132(r21), r22
	l.ori	r4, r4, 1
	l.addi	r28, r28, 4326
	l.ori	r13, r13, 1
	l.addi	r22, r21, 0             # CFC
	l.sb	0(r3), r4
	l.lbz	r14, 3568(r13)
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r2, 0
	l.ori	r14, r14, 1
	l.movhi	r23, 36864
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 3605
	l.sb	3568(r13), r14
	l.ori	r23, r23, 1
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.lbz	r24, 7136(r23)
	l.ori	r24, r24, 1
	l.sb	7136(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 2884          # CFC
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
	.size	uart_rxint_enable, .Lfunc_end51-uart_rxint_enable

	.hidden	uart_rxint_disable
	.globl	uart_rxint_disable
	.p2align	2
	.type	uart_rxint_disable,@function
uart_rxint_disable:                     # @uart_rxint_disable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 722
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 1444          # CFC
	l.movhi	r3, 36864
	l.ori	r3, r3, 1
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbz	r4, 0(r3)
	l.movhi	r13, 36864
	l.sw	7132(r21), r22
	l.andi	r4, r4, 254
	l.addi	r28, r28, 4332
	l.ori	r13, r13, 1
	l.addi	r22, r21, 0             # CFC
	l.sb	0(r3), r4
	l.lbz	r14, 3568(r13)
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r2, 0
	l.andi	r14, r14, 254
	l.movhi	r23, 36864
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 3610
	l.sb	3568(r13), r14
	l.ori	r23, r23, 1
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.lbz	r24, 7136(r23)
	l.andi	r24, r24, 254
	l.sb	7136(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 2888          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB52_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB52_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB52_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB52_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB52_2
	l.nop	0
	l.nop	205
.LBB52_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB52_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB52_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB52_3
	l.nop	0
	l.nop	205
.LBB52_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB52_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB52_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB52_4
	l.nop	0
	l.nop	205
.LBB52_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB52_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB52_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB52_5
	l.nop	0
	l.nop	205
.LBB52_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB52_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB52_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB52_6
	l.nop	0
	l.nop	205
.LBB52_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB52_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB52_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB52_7
	l.nop	0
	l.nop	205
.LBB52_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB52_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB52_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB52_8
	l.nop	0
	l.nop	205
.LBB52_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB52_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB52_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB52_9
	l.nop	0
	l.nop	205
.LBB52_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB52_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB52_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB52_10
	l.nop	0
	l.nop	205
.LBB52_10:
.LBB52_11:
	l.jr	r30
	l.nop	0
.Lfunc_end52:
	.size	uart_rxint_disable, .Lfunc_end52-uart_rxint_disable

	.hidden	uart_txint_enable
	.globl	uart_txint_enable
	.p2align	2
	.type	uart_txint_enable,@function
uart_txint_enable:                      # @uart_txint_enable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 723
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 1446          # CFC
	l.movhi	r3, 36864
	l.ori	r3, r3, 1
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbz	r4, 0(r3)
	l.movhi	r13, 36864
	l.sw	7132(r21), r22
	l.ori	r4, r4, 2
	l.addi	r28, r28, 4338
	l.ori	r13, r13, 1
	l.addi	r22, r21, 0             # CFC
	l.sb	0(r3), r4
	l.lbz	r14, 3568(r13)
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r2, 0
	l.ori	r14, r14, 2
	l.movhi	r23, 36864
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 3615
	l.sb	3568(r13), r14
	l.ori	r23, r23, 1
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.lbz	r24, 7136(r23)
	l.ori	r24, r24, 2
	l.sb	7136(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 2892          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB53_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB53_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB53_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB53_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB53_2
	l.nop	0
	l.nop	205
.LBB53_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB53_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB53_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB53_3
	l.nop	0
	l.nop	205
.LBB53_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB53_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB53_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB53_4
	l.nop	0
	l.nop	205
.LBB53_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB53_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB53_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB53_5
	l.nop	0
	l.nop	205
.LBB53_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB53_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB53_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB53_6
	l.nop	0
	l.nop	205
.LBB53_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB53_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB53_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB53_7
	l.nop	0
	l.nop	205
.LBB53_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB53_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB53_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB53_8
	l.nop	0
	l.nop	205
.LBB53_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB53_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB53_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB53_9
	l.nop	0
	l.nop	205
.LBB53_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB53_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB53_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB53_10
	l.nop	0
	l.nop	205
.LBB53_10:
.LBB53_11:
	l.jr	r30
	l.nop	0
.Lfunc_end53:
	.size	uart_txint_enable, .Lfunc_end53-uart_txint_enable

	.hidden	uart_txint_disable
	.globl	uart_txint_disable
	.p2align	2
	.type	uart_txint_disable,@function
uart_txint_disable:                     # @uart_txint_disable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 724
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 1448          # CFC
	l.movhi	r3, 36864
	l.ori	r3, r3, 1
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbz	r4, 0(r3)
	l.movhi	r13, 36864
	l.sw	7132(r21), r22
	l.andi	r4, r4, 253
	l.addi	r28, r28, 4344
	l.ori	r13, r13, 1
	l.addi	r22, r21, 0             # CFC
	l.sb	0(r3), r4
	l.lbz	r14, 3568(r13)
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r2, 0
	l.andi	r14, r14, 253
	l.movhi	r23, 36864
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 3620
	l.sb	3568(r13), r14
	l.ori	r23, r23, 1
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.lbz	r24, 7136(r23)
	l.andi	r24, r24, 253
	l.sb	7136(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 2896          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB54_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB54_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB54_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB54_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB54_2
	l.nop	0
	l.nop	205
.LBB54_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB54_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB54_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB54_3
	l.nop	0
	l.nop	205
.LBB54_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB54_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB54_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB54_4
	l.nop	0
	l.nop	205
.LBB54_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB54_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB54_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB54_5
	l.nop	0
	l.nop	205
.LBB54_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB54_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB54_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB54_6
	l.nop	0
	l.nop	205
.LBB54_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB54_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB54_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB54_7
	l.nop	0
	l.nop	205
.LBB54_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB54_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB54_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB54_8
	l.nop	0
	l.nop	205
.LBB54_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB54_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB54_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB54_9
	l.nop	0
	l.nop	205
.LBB54_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB54_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB54_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB54_10
	l.nop	0
	l.nop	205
.LBB54_10:
.LBB54_11:
	l.jr	r30
	l.nop	0
.Lfunc_end54:
	.size	uart_txint_disable, .Lfunc_end54-uart_txint_disable

	.hidden	uart_get_iir
	.globl	uart_get_iir
	.p2align	2
	.type	uart_get_iir,@function
uart_get_iir:                           # @uart_get_iir
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 725
	l.sw	-4(r1), r2
	l.addi	r20, r20, 1450          # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.ori	r3, r3, 2
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbs	r11, 0(r3)
	l.addi	r28, r28, 4350
	l.movhi	r13, 36864
	l.sw	7132(r21), r22
	l.addi	r1, r2, 0
	l.ori	r13, r13, 2
	l.addi	r22, r21, 0             # CFC
	l.lwz	r2, -4(r1)
	l.lbs	r8, 3568(r13)
	l.addi	r18, r18, 3625
	l.addi	r21, r21, -4            # CFC
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.movhi	r23, 36864
	l.ori	r23, r23, 2
	l.lbs	r31, 7136(r23)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 2900          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB55_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB55_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB55_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB55_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB55_2
	l.nop	0
	l.nop	205
.LBB55_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB55_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB55_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB55_3
	l.nop	0
	l.nop	205
.LBB55_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB55_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB55_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB55_4
	l.nop	0
	l.nop	205
.LBB55_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB55_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB55_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB55_5
	l.nop	0
	l.nop	205
.LBB55_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB55_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB55_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB55_6
	l.nop	0
	l.nop	205
.LBB55_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB55_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB55_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB55_7
	l.nop	0
	l.nop	205
.LBB55_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB55_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB55_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB55_8
	l.nop	0
	l.nop	205
.LBB55_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB55_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB55_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB55_9
	l.nop	0
	l.nop	205
.LBB55_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB55_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB55_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB55_10
	l.nop	0
	l.nop	205
.LBB55_10:
.LBB55_11:
	l.jr	r30
	l.nop	0
.Lfunc_end55:
	.size	uart_get_iir, .Lfunc_end55-uart_get_iir

	.hidden	uart_get_lsr
	.globl	uart_get_lsr
	.p2align	2
	.type	uart_get_lsr,@function
uart_get_lsr:                           # @uart_get_lsr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 726
	l.sw	-4(r1), r2
	l.addi	r20, r20, 1452          # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.ori	r3, r3, 5
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbs	r11, 0(r3)
	l.addi	r28, r28, 4356
	l.movhi	r13, 36864
	l.sw	7132(r21), r22
	l.addi	r1, r2, 0
	l.ori	r13, r13, 5
	l.addi	r22, r21, 0             # CFC
	l.lwz	r2, -4(r1)
	l.lbs	r8, 3568(r13)
	l.addi	r18, r18, 3630
	l.addi	r21, r21, -4            # CFC
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.movhi	r23, 36864
	l.ori	r23, r23, 5
	l.lbs	r31, 7136(r23)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 2904          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB56_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB56_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB56_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB56_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB56_2
	l.nop	0
	l.nop	205
.LBB56_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB56_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB56_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB56_3
	l.nop	0
	l.nop	205
.LBB56_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB56_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB56_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB56_4
	l.nop	0
	l.nop	205
.LBB56_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB56_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB56_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB56_5
	l.nop	0
	l.nop	205
.LBB56_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB56_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB56_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB56_6
	l.nop	0
	l.nop	205
.LBB56_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB56_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB56_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB56_7
	l.nop	0
	l.nop	205
.LBB56_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB56_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB56_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB56_8
	l.nop	0
	l.nop	205
.LBB56_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB56_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB56_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB56_9
	l.nop	0
	l.nop	205
.LBB56_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB56_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB56_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB56_10
	l.nop	0
	l.nop	205
.LBB56_10:
.LBB56_11:
	l.jr	r30
	l.nop	0
.Lfunc_end56:
	.size	uart_get_lsr, .Lfunc_end56-uart_get_lsr

	.hidden	uart_get_msr
	.globl	uart_get_msr
	.p2align	2
	.type	uart_get_msr,@function
uart_get_msr:                           # @uart_get_msr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 727
	l.sw	-4(r1), r2
	l.addi	r20, r20, 1454          # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.ori	r3, r3, 6
	l.sw	3564(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbs	r11, 0(r3)
	l.addi	r28, r28, 4362
	l.movhi	r13, 36864
	l.sw	7132(r21), r22
	l.addi	r1, r2, 0
	l.ori	r13, r13, 6
	l.addi	r22, r21, 0             # CFC
	l.lwz	r2, -4(r1)
	l.lbs	r8, 3568(r13)
	l.addi	r18, r18, 3635
	l.addi	r21, r21, -4            # CFC
	l.addi	r10, r12, 0
	l.lwz	r12, 3564(r10)
	l.movhi	r23, 36864
	l.ori	r23, r23, 6
	l.lbs	r31, 7136(r23)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 7132(r21)
	l.addi	r20, r20, 2908          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB57_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB57_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB57_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB57_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB57_2
	l.nop	0
	l.nop	205
.LBB57_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB57_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB57_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB57_3
	l.nop	0
	l.nop	205
.LBB57_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB57_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB57_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB57_4
	l.nop	0
	l.nop	205
.LBB57_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB57_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB57_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB57_5
	l.nop	0
	l.nop	205
.LBB57_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB57_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB57_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB57_6
	l.nop	0
	l.nop	205
.LBB57_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB57_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB57_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB57_7
	l.nop	0
	l.nop	205
.LBB57_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB57_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB57_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB57_8
	l.nop	0
	l.nop	205
.LBB57_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB57_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB57_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB57_9
	l.nop	0
	l.nop	205
.LBB57_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB57_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB57_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB57_10
	l.nop	0
	l.nop	205
.LBB57_10:
.LBB57_11:
	l.jr	r30
	l.nop	0
.Lfunc_end57:
	.size	uart_get_msr, .Lfunc_end57-uart_get_msr

	.data
	

	.type	bits,@object            # @bits
bits:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits, 256

	.type	bits.1,@object          # @bits.1
bits.1:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits.1, 256

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%ld\n"
	.size	.L.str.7, 5

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"01"
	.size	.L.str, 3

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
	.type	timer_ticks,@object
	#.comm	timer_ticks,4,4
timer_ticks:
	.long	0
	.type	PRINTFBUFFER,@object
	#.comm	PRINTFBUFFER,2048,1
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
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
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

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.zero	1
	.size	.L.str.8, 1

	.type	vfnprintf.blanks,@object # @vfnprintf.blanks
vfnprintf.blanks:
	.zero	16,32
	.size	vfnprintf.blanks, 16

	.type	vfnprintf.zeroes,@object # @vfnprintf.zeroes
vfnprintf.zeroes:
	.zero	16,48
	.size	vfnprintf.zeroes, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s\n"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%c"
	.size	.L.str.6, 3

	.hidden	UART_BASE_ADR           # @UART_BASE_ADR
	.type	UART_BASE_ADR,@object
	.globl	UART_BASE_ADR
	.p2align	2
UART_BASE_ADR:
	.long	2415919104              # 0x90000000
	.size	UART_BASE_ADR, 4

	.hidden	UART_BAUDS              # @UART_BAUDS
	.type	UART_BAUDS,@object
	.globl	UART_BAUDS
	.p2align	2
UART_BAUDS:
	.long	115200                  # 0x1c200
	.size	UART_BAUDS, 4

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
	
	.type	tx_level,@object
	#.comm	tx_level,4,4
tx_level:
	.long	0
	
	.type	rx_level,@object
	#.comm	rx_level,4,4
rx_level:
	.long	0
	
	
	
	.p2align	2
.LJTI14_0:
	.long	.LBB14_18
	.long	.LBB14_63
	.long	.LBB14_62
	.long	.LBB14_41
	.long	.LBB14_62
	.long	.LBB14_40
	.long	.LBB14_62
	.long	.LBB14_41
	.long	.LBB14_63
	.long	.LBB14_63
	.long	.LBB14_40
	.long	.LBB14_41
	.long	.LBB14_42
	.long	.LBB14_42
	.long	.LBB14_42
	.long	.LBB14_33
.LJTI14_1:
	.long	.LBB14_32
	.long	.LBB14_62
	.long	.LBB14_63
	.long	.LBB14_40

	
	.p2align	2
.LJTI39_0:
	.long	.LBB39_11
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_20
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_22
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_26
	.long	.LBB39_29
	.long	.LBB39_144
	.long	.LBB39_28
	.long	.LBB39_30
	.long	.LBB39_144
	.long	.LBB39_40
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_49
	.long	.LBB39_61
	.long	.LBB39_144
	.long	.LBB39_61
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_68
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_86
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_94
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_48
	.long	.LBB39_50
	.long	.LBB39_61
	.long	.LBB39_61
	.long	.LBB39_61
	.long	.LBB39_43
	.long	.LBB39_50
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_44
	.long	.LBB39_144
	.long	.LBB39_62
	.long	.LBB39_69
	.long	.LBB39_76
	.long	.LBB39_47
	.long	.LBB39_144
	.long	.LBB39_77
	.long	.LBB39_144
	.long	.LBB39_87
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_95
	.long	.LBB39_144
	.long	.LBB39_143
	
	
	
	
	#SHADOW1_START
	
	

	.type	bits_SHADOW1,@object            # @bits
bits_SHADOW1:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits_SHADOW1, 256

	.type	bits.1_SHADOW1,@object          # @bits.1
bits.1_SHADOW1:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits.1_SHADOW1, 256

	.type	.L.str.7_SHADOW1,@object        # @.str.7
.L.str.7_SHADOW1:
	.asciz	"%ld\n"
	.size	.L.str.7_SHADOW1, 5

	.type	.L.str_SHADOW1,@object          # @.str
.L.str_SHADOW1:
	.asciz	"01"
	.size	.L.str_SHADOW1, 3

	.hidden	int_handlers_SHADOW1            # @int_handlers
	.type	int_handlers_SHADOW1,@object
	#.comm	int_handlers_SHADOW1,256,4
int_handlers_SHADOW1:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	
	.type	rand.lfsr_SHADOW1,@object       # @rand.lfsr
	.p2align	2
rand.lfsr_SHADOW1:
	.long	347520060               # 0x14b6bc3c
	.size	rand.lfsr_SHADOW1, 4

	.type	rand.period_SHADOW1,@object     # @rand.period
	#.comm	rand.period_SHADOW1,4,4
rand.period_SHADOW1:
	.long	0
	.type	timer_ticks_SHADOW1,@object
	#.comm	timer_ticks_SHADOW1,4,4
timer_ticks_SHADOW1:
	.long	0
	.type	PRINTFBUFFER_SHADOW1,@object
	#.comm	PRINTFBUFFER_SHADOW1,2048,1
PRINTFBUFFER_SHADOW1:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	
	.type	.L.str.2_SHADOW1,@object        # @.str.2
.L.str.2_SHADOW1:
	.asciz	"(null)"
	.size	.L.str.2_SHADOW1, 7

	.type	.L.str.1_SHADOW1,@object        # @.str.1
.L.str.1_SHADOW1:
	.asciz	"0123456789abcdef"
	.size	.L.str.1_SHADOW1, 17

	.type	.L.str.3_SHADOW1,@object        # @.str.3
.L.str.3_SHADOW1:
	.asciz	"0123456789ABCDEF"
	.size	.L.str.3_SHADOW1, 17

	.type	.L.str.4_SHADOW1,@object        # @.str.4
.L.str.4_SHADOW1:
	.asciz	"bug in vfprintf: bad base"
	.size	.L.str.4_SHADOW1, 26

	.type	.L.str.8_SHADOW1,@object        # @.str.8
.L.str.8_SHADOW1:
	.zero	1
	.size	.L.str.8_SHADOW1, 1

	.type	vfnprintf.blanks_SHADOW1,@object # @vfnprintf.blanks
vfnprintf.blanks_SHADOW1:
	.zero	16,32
	.size	vfnprintf.blanks_SHADOW1, 16

	.type	vfnprintf.zeroes_SHADOW1,@object # @vfnprintf.zeroes
vfnprintf.zeroes_SHADOW1:
	.zero	16,48
	.size	vfnprintf.zeroes_SHADOW1, 16

	.type	.L.str.5_SHADOW1,@object        # @.str.5
.L.str.5_SHADOW1:
	.asciz	"%s\n"
	.size	.L.str.5_SHADOW1, 4

	.type	.L.str.6_SHADOW1,@object        # @.str.6
.L.str.6_SHADOW1:
	.asciz	"%c"
	.size	.L.str.6_SHADOW1, 3

	.hidden	UART_BASE_ADR_SHADOW1           # @UART_BASE_ADR
	.type	UART_BASE_ADR_SHADOW1,@object
	.globl	UART_BASE_ADR_SHADOW1
	.p2align	2
UART_BASE_ADR_SHADOW1:
	.long	2415919104              # 0x90000000
	.size	UART_BASE_ADR_SHADOW1, 4

	.hidden	UART_BAUDS_SHADOW1              # @UART_BAUDS
	.type	UART_BAUDS_SHADOW1,@object
	.globl	UART_BAUDS_SHADOW1
	.p2align	2
UART_BAUDS_SHADOW1:
	.long	115200                  # 0x1c200
	.size	UART_BAUDS_SHADOW1, 4

	.type	tx_buff_SHADOW1,@object
	#.comm	tx_buff,32,1
tx_buff_SHADOW1:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	
	.type	tx_level_SHADOW1,@object
	#.comm	tx_level_SHADOW1,4,4
tx_level_SHADOW1:
	.long	0
	
	.type	rx_level_SHADOW1,@object
	#.comm	rx_level_SHADOW1,4,4
rx_level_SHADOW1:
	.long	0
	
	
	
	.p2align	2
.LJTI14_0_SHADOW1:
	.long	.LBB14_18
	.long	.LBB14_63
	.long	.LBB14_62
	.long	.LBB14_41
	.long	.LBB14_62
	.long	.LBB14_40
	.long	.LBB14_62
	.long	.LBB14_41
	.long	.LBB14_63
	.long	.LBB14_63
	.long	.LBB14_40
	.long	.LBB14_41
	.long	.LBB14_42
	.long	.LBB14_42
	.long	.LBB14_42
	.long	.LBB14_33
.LJTI14_1_SHADOW1:
	.long	.LBB14_32
	.long	.LBB14_62
	.long	.LBB14_63
	.long	.LBB14_40

	
	.p2align	2
.LJTI39_0_SHADOW1:
	.long	.LBB39_11
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_20
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_22
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_26
	.long	.LBB39_29
	.long	.LBB39_144
	.long	.LBB39_28
	.long	.LBB39_30
	.long	.LBB39_144
	.long	.LBB39_40
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_49
	.long	.LBB39_61
	.long	.LBB39_144
	.long	.LBB39_61
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_68
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_86
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_94
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_48
	.long	.LBB39_50
	.long	.LBB39_61
	.long	.LBB39_61
	.long	.LBB39_61
	.long	.LBB39_43
	.long	.LBB39_50
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_44
	.long	.LBB39_144
	.long	.LBB39_62
	.long	.LBB39_69
	.long	.LBB39_76
	.long	.LBB39_47
	.long	.LBB39_144
	.long	.LBB39_77
	.long	.LBB39_144
	.long	.LBB39_87
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_95
	.long	.LBB39_144
	.long	.LBB39_143
	
	
	
	
	
	
	
	
#SHADOW2_START
	
	

	.type	bits_SHADOW2,@object            # @bits
bits_SHADOW2:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits_SHADOW2, 256

	.type	bits.1_SHADOW2,@object          # @bits.1
bits.1_SHADOW2:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits.1_SHADOW2, 256

	.type	.L.str.7_SHADOW2,@object        # @.str.7
.L.str.7_SHADOW2:
	.asciz	"%ld\n"
	.size	.L.str.7_SHADOW2, 5

	.type	.L.str_SHADOW2,@object          # @.str
.L.str_SHADOW2:
	.asciz	"01"
	.size	.L.str_SHADOW2, 3

	.hidden	int_handlers_SHADOW2            # @int_handlers
	.type	int_handlers_SHADOW2,@object
	#.comm	int_handlers_SHADOW2,256,4
int_handlers_SHADOW2:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	
	.type	rand.lfsr_SHADOW2,@object       # @rand.lfsr
	.p2align	2
rand.lfsr_SHADOW2:
	.long	347520060               # 0x14b6bc3c
	.size	rand.lfsr_SHADOW2, 4

	.type	rand.period_SHADOW2,@object     # @rand.period
	#.comm	rand.period_SHADOW2,4,4
rand.period_SHADOW2:
	.long	0
	.type	timer_ticks_SHADOW2,@object
	#.comm	timer_ticks_SHADOW2,4,4
timer_ticks_SHADOW2:
	.long	0
	.type	PRINTFBUFFER_SHADOW2,@object
	#.comm	PRINTFBUFFER_SHADOW2,2048,1
PRINTFBUFFER_SHADOW2:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	
	.type	.L.str.2_SHADOW2,@object        # @.str.2
.L.str.2_SHADOW2:
	.asciz	"(null)"
	.size	.L.str.2_SHADOW2, 7

	.type	.L.str.1_SHADOW2,@object        # @.str.1
.L.str.1_SHADOW2:
	.asciz	"0123456789abcdef"
	.size	.L.str.1_SHADOW2, 17

	.type	.L.str.3_SHADOW2,@object        # @.str.3
.L.str.3_SHADOW2:
	.asciz	"0123456789ABCDEF"
	.size	.L.str.3_SHADOW2, 17

	.type	.L.str.4_SHADOW2,@object        # @.str.4
.L.str.4_SHADOW2:
	.asciz	"bug in vfprintf: bad base"
	.size	.L.str.4_SHADOW2, 26

	.type	.L.str.8_SHADOW2,@object        # @.str.8
.L.str.8_SHADOW2:
	.zero	1
	.size	.L.str.8_SHADOW2, 1

	.type	vfnprintf.blanks_SHADOW2,@object # @vfnprintf.blanks
vfnprintf.blanks_SHADOW2:
	.zero	16,32
	.size	vfnprintf.blanks_SHADOW2, 16

	.type	vfnprintf.zeroes_SHADOW2,@object # @vfnprintf.zeroes
vfnprintf.zeroes_SHADOW2:
	.zero	16,48
	.size	vfnprintf.zeroes_SHADOW2, 16

	.type	.L.str.5_SHADOW2,@object        # @.str.5
.L.str.5_SHADOW2:
	.asciz	"%s\n"
	.size	.L.str.5_SHADOW2, 4

	.type	.L.str.6_SHADOW2,@object        # @.str.6
.L.str.6_SHADOW2:
	.asciz	"%c"
	.size	.L.str.6_SHADOW2, 3

	.hidden	UART_BASE_ADR_SHADOW2           # @UART_BASE_ADR
	.type	UART_BASE_ADR_SHADOW2,@object
	.globl	UART_BASE_ADR_SHADOW2
	.p2align	2
UART_BASE_ADR_SHADOW2:
	.long	2415919104              # 0x90000000
	.size	UART_BASE_ADR_SHADOW2, 4

	.hidden	UART_BAUDS_SHADOW2              # @UART_BAUDS
	.type	UART_BAUDS_SHADOW2,@object
	.globl	UART_BAUDS_SHADOW2
	.p2align	2
UART_BAUDS_SHADOW2:
	.long	115200                  # 0x1c200
	.size	UART_BAUDS_SHADOW2, 4

	.type	tx_buff_SHADOW2,@object
	#.comm	tx_buff,32,1
tx_buff_SHADOW2:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	
	.type	tx_level_SHADOW2,@object
	#.comm	tx_level_SHADOW2,4,4
tx_level_SHADOW2:
	.long	0
	
	.type	rx_level_SHADOW2,@object
	#.comm	rx_level_SHADOW2,4,4
rx_level_SHADOW2:
	.long	0
	
	
	
	.p2align	2
.LJTI14_0_SHADOW2:
	.long	.LBB14_18
	.long	.LBB14_63
	.long	.LBB14_62
	.long	.LBB14_41
	.long	.LBB14_62
	.long	.LBB14_40
	.long	.LBB14_62
	.long	.LBB14_41
	.long	.LBB14_63
	.long	.LBB14_63
	.long	.LBB14_40
	.long	.LBB14_41
	.long	.LBB14_42
	.long	.LBB14_42
	.long	.LBB14_42
	.long	.LBB14_33
.LJTI14_1_SHADOW2:
	.long	.LBB14_32
	.long	.LBB14_62
	.long	.LBB14_63
	.long	.LBB14_40

	
	.p2align	2
.LJTI39_0_SHADOW2:
	.long	.LBB39_11
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_20
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_22
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_26
	.long	.LBB39_29
	.long	.LBB39_144
	.long	.LBB39_28
	.long	.LBB39_30
	.long	.LBB39_144
	.long	.LBB39_40
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_49
	.long	.LBB39_61
	.long	.LBB39_144
	.long	.LBB39_61
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_68
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_86
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_94
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_48
	.long	.LBB39_50
	.long	.LBB39_61
	.long	.LBB39_61
	.long	.LBB39_61
	.long	.LBB39_43
	.long	.LBB39_50
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_44
	.long	.LBB39_144
	.long	.LBB39_62
	.long	.LBB39_69
	.long	.LBB39_76
	.long	.LBB39_47
	.long	.LBB39_144
	.long	.LBB39_77
	.long	.LBB39_144
	.long	.LBB39_87
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_95
	.long	.LBB39_144
	.long	.LBB39_143


	

	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.section	".note.GNU-stack","",@progbits
