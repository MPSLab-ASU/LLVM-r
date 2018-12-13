	.text
	.file	"QSORT.LL"
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
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -16
	l.slli	r6, r4, 3
	l.movhi	r15, 1023
	l.sw	8700(r21), r22
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
	l.sw	4340(r12), r16
	l.ori	r25, r25, 65528
	l.sw	-8(r2), r5
	l.slli	r16, r13, 3
	l.slli	r26, r24, 3
	l.srli	r5, r4, 23
	l.and	r15, r16, r15
	l.and	r26, r26, r25
	l.andi	r5, r5, 255
	l.sw	4344(r12), r15
	l.sw	8692(r22), r26
	l.srli	r11, r3, 23
	l.srli	r15, r14, 23
	l.addi	r28, r28, 60
	l.slli	r26, r23, 3
	l.andi	r7, r11, 255
	l.andi	r15, r15, 255
	l.and	r25, r26, r25
	l.sub	r6, r7, r5
	l.srli	r8, r13, 23
	l.sw	8696(r22), r25
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
	l.lwz	r14, 4340(r12)
	l.addi	r28, r28, 66
	l.lwz	r8, 4344(r12)
	l.lwz	r24, 8692(r22)
	l.lwz	r31, 8696(r22)
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
	l.lwz	r14, 4340(r12)
	l.addi	r18, r18, 70
	l.lwz	r24, 8692(r22)
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
	l.lwz	r14, 4340(r12)
	l.addi	r28, r28, 90
	l.lwz	r8, 4344(r12)
	l.lwz	r24, 8692(r22)
	l.lwz	r31, 8696(r22)
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
	l.lwz	r14, 4340(r12)
	l.addi	r18, r18, 90
	l.lwz	r24, 8692(r22)
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
	l.lwz	r8, 4344(r12)
	l.addi	r24, r0, 255
	l.lwz	r31, 8696(r22)
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
	l.lwz	r15, 4340(r12)
	l.addi	r28, r28, 120
	l.or	r15, r15, r14
	l.sw	4340(r12), r15
	l.movhi	r24, 1024
	l.addi	r18, r18, 100
	l.lwz	r25, 8692(r22)
	l.or	r25, r25, r24
	l.sw	8692(r22), r25
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
	l.lwz	r8, 4340(r12)
	l.sll	r15, r8, r14
	l.addi	r28, r28, 126
	l.addi	r14, r0, 1
	l.addi	r24, r0, 32
	l.sub	r24, r24, r26
	l.lwz	r31, 8692(r22)
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
	l.lwz	r8, 4344(r12)
	l.addi	r24, r0, 255
	l.lwz	r31, 8696(r22)
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
	l.lwz	r15, 4340(r12)
	l.addi	r28, r28, 150
	l.or	r15, r15, r14
	l.sw	4340(r12), r15
	l.movhi	r24, 1024
	l.addi	r18, r18, 125
	l.lwz	r25, 8692(r22)
	l.or	r25, r25, r24
	l.sw	8692(r22), r25
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
	l.lwz	r8, 4340(r12)
	l.sll	r15, r8, r14
	l.addi	r28, r28, 156
	l.addi	r14, r0, 1
	l.addi	r24, r0, 32
	l.sub	r24, r24, r26
	l.lwz	r31, 8692(r22)
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
	l.lwz	r14, 4344(r12)
	l.addi	r28, r28, 174
	l.lwz	r8, 4340(r12)
	l.lwz	r24, 8696(r22)
	l.lwz	r31, 8692(r22)
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
	l.lwz	r14, 4340(r12)
	l.addi	r28, r28, 186
	l.lwz	r16, 4344(r12)
	l.addi	r18, r18, 155
	l.lwz	r24, 8692(r22)
	l.lwz	r26, 8696(r22)
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
	l.lwz	r13, 4344(r12)
	l.ori	r17, r14, 0
	l.addi	r28, r28, 192
	l.lwz	r8, 4340(r12)
	l.lwz	r23, 8696(r22)
	l.ori	r27, r24, 0
	l.lwz	r31, 8692(r22)
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
	l.lwz	r13, 4340(r12)
	l.addi	r28, r28, 204
	l.lwz	r14, 4344(r12)
	l.sub	r8, r13, r14
	l.addi	r18, r18, 170
	l.lwz	r23, 8692(r22)
	l.lwz	r24, 8696(r22)
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
	l.lwz	r16, 4340(r12)
	l.addi	r28, r28, 216
	l.ori	r15, r14, 0
	l.addi	r24, r0, 1
	l.lwz	r26, 8692(r22)
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
	l.lwz	r8, 4344(r12)
	l.lwz	r31, 8696(r22)
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
	l.lwz	r8, 4344(r12)
	l.addi	r18, r18, 205
	l.lwz	r31, 8696(r22)
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
	l.lwz	r14, 4340(r12)
	l.addi	r20, r20, 88            # CFC
	l.lwz	r15, 4344(r12)
	l.add	r14, r14, r15
	l.sfeqi	r5, 0
	l.movhi	r15, 1024
	l.lwz	r24, 8692(r22)
	l.ori	r11, r4, 0
	l.addi	r28, r28, 264
	l.and	r15, r14, r15
	l.ori	r8, r14, 0
	l.lwz	r25, 8696(r22)
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
	l.sw	4336(r12), r14
	l.addi	r14, r8, 1
	l.addi	r28, r28, 282
	l.andi	r14, r14, 254
	l.sw	8688(r22), r24
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
	l.lwz	r15, 4340(r12)
	l.addi	r28, r28, 288
	l.lwz	r16, 4344(r12)
	l.lwz	r25, 8692(r22)
	l.lwz	r26, 8696(r22)
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
	l.lwz	r13, 4336(r12)
	l.addi	r18, r18, 250
	l.lwz	r23, 8688(r22)
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
	l.lwz	r15, 4340(r12)
	l.lwz	r16, 4344(r12)
	l.addi	r28, r28, 318
	l.add	r15, r15, r16
	l.srli	r8, r15, 1
	l.lwz	r25, 8692(r22)
	l.addi	r18, r18, 265
	l.lwz	r26, 8696(r22)
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
	l.lwz	r16, 4340(r12)
	l.lwz	r8, 4344(r12)
	l.sub	r15, r8, r16
	l.movhi	r14, 1024
	l.addi	r28, r28, 324
	l.and	r14, r15, r14
	l.lwz	r26, 8692(r22)
	l.lwz	r31, 8696(r22)
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
	l.lwz	r15, 4340(r12)
	l.addi	r24, r0, 1
	l.lwz	r25, 8692(r22)
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
	l.lwz	r15, 4344(r12)
	l.addi	r28, r28, 354
	l.add	r8, r14, r15
	l.ori	r14, r17, 0
	l.addi	r18, r18, 295
	l.lwz	r25, 8696(r22)
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
	l.lwz	r15, 4340(r12)
	l.addi	r24, r0, 1
	l.lwz	r25, 8692(r22)
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
	l.lwz	r15, 4344(r12)
	l.addi	r28, r28, 402
	l.sub	r8, r15, r14
	l.ori	r14, r17, 0
	l.addi	r18, r18, 335
	l.lwz	r25, 8696(r22)
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
	l.sw	4336(r12), r13
	l.ori	r17, r14, 0
	l.movhi	r25, 1023
	l.addi	r18, r18, 345
	l.ori	r25, r25, 65535
	l.and	r25, r31, r25
	l.sw	8688(r22), r23
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
	l.lwz	r8, 4344(r12)
	l.addi	r24, r0, 255
	l.lwz	r31, 8696(r22)
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
	l.lwz	r8, 4344(r12)
	l.addi	r24, r0, 255
	l.lwz	r31, 8696(r22)
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
	l.lwz	r8, 4340(r12)
	l.addi	r24, r0, 255
	l.lwz	r31, 8692(r22)
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
	l.lwz	r17, 4344(r12)
	l.movhi	r24, 0
	l.or	r17, r17, r14
	l.sw	4344(r12), r17
	l.addi	r18, r18, 365
	l.sub	r26, r24, r26
	l.movhi	r24, 1024
	l.lwz	r27, 8696(r22)
	l.or	r27, r27, r24
	l.sw	8696(r22), r27
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
	l.lwz	r8, 4344(r12)
	l.sll	r17, r8, r14
	l.addi	r28, r28, 444
	l.addi	r14, r0, 1
	l.addi	r24, r0, 32
	l.sub	r24, r24, r26
	l.lwz	r31, 8696(r22)
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
	l.lwz	r17, 4340(r12)
	l.addi	r18, r18, 375
	l.lwz	r27, 8692(r22)
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
	l.lwz	r8, 4340(r12)
	l.ori	r23, r24, 0
	l.addi	r24, r0, 255
	l.ori	r27, r23, 0
	l.lwz	r31, 8692(r22)
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
	l.lwz	r14, 4344(r12)
	l.movhi	r23, 0
	l.or	r14, r14, r13
	l.sw	4344(r12), r14
	l.addi	r18, r18, 395
	l.sub	r26, r23, r26
	l.movhi	r23, 1024
	l.lwz	r24, 8696(r22)
	l.or	r24, r24, r23
	l.sw	8696(r22), r24
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
	l.lwz	r8, 4344(r12)
	l.sll	r14, r8, r13
	l.addi	r28, r28, 480
	l.addi	r13, r0, 1
	l.addi	r23, r0, 32
	l.sub	r23, r23, r26
	l.lwz	r31, 8696(r22)
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
	l.lwz	r14, 4340(r12)
	l.addi	r18, r18, 405
	l.lwz	r24, 8692(r22)
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
	l.lwz	r14, 4340(r12)
	l.srl	r24, r31, r26
	l.addi	r18, r18, 415
	l.andi	r23, r23, 1
	l.or	r23, r23, r24
	l.lwz	r24, 8692(r22)
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
	l.sw	4336(r12), r13
	l.movhi	r13, 0
	l.addi	r28, r28, 504
	l.movhi	r8, 0
	l.movhi	r24, 0
	l.sw	8688(r22), r23
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
	l.lwz	r13, 4336(r12)
	l.addi	r18, r18, 450
	l.lwz	r23, 8688(r22)
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
	l.lwz	r12, 4348(r10)
	l.ori	r24, r24, 65535
	l.and	r24, r25, r24
	l.or	r31, r23, r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
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
	l.lwz	r15, 4344(r12)
	l.addi	r20, r20, 210           # CFC
	l.srli	r15, r15, 3
	l.lwz	r16, 4340(r12)
	l.and	r11, r6, r7
	l.srli	r16, r16, 3
	l.lwz	r25, 8696(r22)
	l.sfeqi	r11, 0
	l.addi	r28, r28, 630
	l.movhi	r17, 64
	l.and	r8, r16, r17
	l.srli	r25, r25, 3
	l.lwz	r26, 8692(r22)
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
	l.lwz	r13, 4336(r12)
	l.addi	r18, r18, 555
	l.lwz	r23, 8688(r22)
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
	l.lwz	r15, 4340(r12)
	l.srli	r15, r15, 3
	l.movhi	r16, 64
	l.and	r17, r15, r16
	l.addi	r28, r28, 696
	l.addi	r16, r0, 1
	l.lwz	r25, 8692(r22)
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
	l.lwz	r8, 4344(r12)
	l.srli	r17, r8, 25
	l.and	r16, r17, r16
	l.addi	r28, r28, 708
	l.andi	r16, r16, 1
	l.lwz	r31, 8696(r22)
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
	l.sw	4336(r12), r13
	l.addi	r18, r18, 595
	l.sw	8688(r22), r23
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
	l.lwz	r16, 4344(r12)
	l.addi	r24, r0, 1
	l.lwz	r26, 8696(r22)
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
	l.lwz	r16, 4340(r12)
	l.addi	r18, r18, 615
	l.lwz	r26, 8692(r22)
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
	l.lwz	r14, 4344(r12)
	l.addi	r23, r0, 1
	l.lwz	r24, 8696(r22)
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
	l.lwz	r14, 4340(r12)
	l.addi	r18, r18, 645
	l.lwz	r24, 8692(r22)
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
	l.lwz	r8, 4340(r12)
	l.addi	r24, r0, 255
	l.xori	r26, r26, -1
	l.lwz	r31, 8692(r22)
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
	l.lwz	r8, 4340(r12)
	l.addi	r24, r0, 255
	l.xori	r26, r26, -1
	l.ori	r23, r27, 0
	l.lwz	r31, 8692(r22)
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
	l.lwz	r16, 4340(r12)
	l.lwz	r17, 4344(r12)
	l.sub	r8, r17, r16
	l.movhi	r15, 1024
	l.addi	r28, r28, 822
	l.and	r15, r8, r15
	l.lwz	r26, 8692(r22)
	l.lwz	r27, 8696(r22)
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
	l.lwz	r17, 4340(r12)
	l.addi	r18, r18, 735
	l.lwz	r27, 8692(r22)
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
	l.lwz	r14, 4340(r12)
	l.addi	r18, r18, 740
	l.lwz	r24, 8692(r22)
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
	l.lwz	r16, 4340(r12)
	l.addi	r18, r18, 750
	l.lwz	r26, 8692(r22)
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
	l.lwz	r14, 4340(r12)
	l.addi	r18, r18, 755
	l.lwz	r24, 8692(r22)
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

	.hidden	__divsf3
	.globl	__divsf3
	.p2align	2
	.type	__divsf3,@function
__divsf3:                               # @__divsf3
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 152
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -28
	l.sw	-12(r2), r4
	l.movhi	r5, 127
	l.sw	4348(r10), r12
	l.addi	r20, r20, 304           # CFC
	l.addi	r12, r10, 0
	l.addi	r10, r10, -28
	l.ori	r5, r5, 65535
	l.sw	4340(r12), r14
	l.sw	8700(r21), r22
	l.and	r11, r3, r5
	l.movhi	r15, 127
	l.addi	r22, r21, 0             # CFC
	l.sw	-16(r2), r3
	l.ori	r15, r15, 65535
	l.addi	r21, r21, -28           # CFC
	l.srli	r5, r3, 23
	l.addi	r28, r28, 912
	l.and	r8, r13, r15
	l.sw	8692(r22), r24
	l.andi	r3, r5, 255
	l.sw	4336(r12), r13
	l.movhi	r25, 127
	l.sfeqi	r3, 0
	l.srli	r15, r13, 23
	l.andi	r13, r15, 255
	l.ori	r25, r25, 65535
	l.and	r31, r23, r25
	l.sw	8688(r22), r23
	l.srli	r25, r23, 23
	l.andi	r23, r25, 255
	l.bf	.LBB1_66
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 760
	l.sfeqi	r13, 0
	l.addi	r20, r20, 608           # CFC
	l.bf	.LBB1_67
	l.nop	0
.LBB1_1:                                # %entry
	l.sfeqi	r3, 255
	l.bf	.LBB1_68
	l.nop	0                       # in delay slot
	l.sfeqi	r13, 255
	l.bf	.LBB1_69
	l.nop	0
.LBB1_2:                                # %sw.default
	l.addi	r18, r18, 153
	l.slli	r5, r11, 3
	l.movhi	r7, 1024
	l.or	r4, r5, r7
	l.movhi	r5, 0
	l.addi	r20, r20, 306           # CFC
	l.sw	-8(r2), r5
	l.slli	r15, r8, 3
	l.movhi	r17, 1024
	l.or	r14, r15, r17
	l.addi	r3, r3, -127
	l.addi	r28, r28, 918
	l.movhi	r15, 0
	l.slli	r25, r31, 3
	l.sw	4344(r12), r15
	l.addi	r13, r13, -127
	l.addi	r18, r18, 765
	l.movhi	r27, 1024
	l.or	r24, r25, r27
	l.movhi	r25, 0
	l.sw	8696(r22), r25
	l.addi	r23, r23, -127
	l.addi	r20, r20, 612           # CFC
	l.j	.LBB1_8
	l.nop	0                       # in delay slot
.LBB1_3:                                # %sw.bb
	l.addi	r18, r18, 154
	l.addi	r4, r0, 1
	l.sw	-8(r2), r4
	l.movhi	r4, 0
	l.addi	r20, r20, 308           # CFC
	l.sfeqi	r11, 0
	l.addi	r14, r0, 1
	l.sw	4344(r12), r14
	l.addi	r28, r28, 924
	l.movhi	r14, 0
	l.addi	r24, r0, 1
	l.sw	8696(r22), r24
	l.movhi	r24, 0
	l.bf	.LBB1_70
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 770
	l.sfeqi	r8, 0
	l.addi	r20, r20, 616           # CFC
	l.bf	.LBB1_71
	l.nop	0
.LBB1_4:                                # %if.else
	l.addi	r18, r18, 155
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
	l.addi	r20, r20, 310           # CFC
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
	l.addi	r28, r28, 930
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
	l.addi	r18, r18, 775
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
	l.sw	4344(r12), r15
	l.add	r23, r27, r23
	l.addi	r25, r25, -5
	l.sll	r24, r31, r25
	l.movhi	r25, 0
	l.sw	8696(r22), r25
	l.addi	r20, r20, 620           # CFC
	l.j	.LBB1_8
	l.nop	0                       # in delay slot
.LBB1_5:                                # %sw.bb25
	l.addi	r18, r18, 156
	l.addi	r4, r0, 2
	l.addi	r20, r20, 312           # CFC
	l.sfeqi	r11, 0
	l.addi	r28, r28, 936
	l.addi	r14, r0, 2
	l.addi	r24, r0, 2
	l.bf	.LBB1_72
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 780
	l.sfeqi	r8, 0
	l.addi	r20, r20, 624           # CFC
	l.bf	.LBB1_73
	l.nop	0
.LBB1_6:                                # %sw.bb25
	l.addi	r18, r18, 157
	l.addi	r20, r20, 314           # CFC
	l.addi	r4, r0, 3
	l.addi	r28, r28, 942
	l.addi	r14, r0, 3
	l.addi	r18, r18, 785
	l.addi	r24, r0, 3
	l.addi	r20, r20, 628           # CFC
.LBB1_7:                                # %sw.bb25
	l.addi	r18, r18, 158
	l.sw	-8(r2), r4
	l.addi	r20, r20, 316           # CFC
	l.ori	r4, r11, 0
	l.sw	4344(r12), r14
	l.addi	r28, r28, 948
	l.ori	r14, r8, 0
	l.addi	r18, r18, 790
	l.sw	8696(r22), r24
	l.ori	r24, r31, 0
	l.addi	r20, r20, 632           # CFC
.LBB1_8:                                # %do.body39
	l.addi	r18, r18, 159
	l.sw	-20(r2), r4
	l.movhi	r5, 127
	l.ori	r5, r5, 65535
	l.lwz	r4, -12(r2)
	l.and	r5, r4, r5
	l.sw	4332(r12), r14
	l.movhi	r15, 127
	l.addi	r20, r20, 318           # CFC
	l.ori	r15, r15, 65535
	l.srli	r7, r4, 23
	l.lwz	r14, 4340(r12)
	l.sw	8684(r22), r24
	l.andi	r11, r7, 255
	l.and	r15, r14, r15
	l.movhi	r25, 127
	l.addi	r28, r28, 954
	l.sfeqi	r11, 0
	l.srli	r17, r14, 23
	l.andi	r8, r17, 255
	l.ori	r25, r25, 65535
	l.lwz	r24, 8692(r22)
	l.and	r25, r24, r25
	l.srli	r27, r24, 23
	l.andi	r31, r27, 255
	l.bf	.LBB1_74
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 795
	l.sfeqi	r8, 0
	l.addi	r20, r20, 636           # CFC
	l.bf	.LBB1_75
	l.nop	0
.LBB1_9:                                # %do.body39
	l.addi	r18, r18, 160
	l.sfeqi	r11, 255
	l.addi	r20, r20, 320           # CFC
	l.lwz	r4, -8(r2)
	l.addi	r28, r28, 960
	l.lwz	r14, 4344(r12)
	l.lwz	r24, 8696(r22)
	l.bf	.LBB1_76
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 800
	l.sfeqi	r8, 255
	l.addi	r20, r20, 640           # CFC
	l.bf	.LBB1_77
	l.nop	0
.LBB1_10:                               # %sw.default55
	l.addi	r18, r18, 161
	l.slli	r5, r5, 3
	l.movhi	r7, 1024
	l.or	r7, r5, r7
	l.addi	r20, r20, 322           # CFC
	l.movhi	r6, 0
	l.addi	r11, r11, -127
	l.slli	r15, r15, 3
	l.movhi	r17, 1024
	l.addi	r28, r28, 966
	l.or	r17, r15, r17
	l.movhi	r16, 0
	l.addi	r8, r8, -127
	l.slli	r25, r25, 3
	l.addi	r18, r18, 805
	l.movhi	r27, 1024
	l.or	r27, r25, r27
	l.movhi	r26, 0
	l.addi	r31, r31, -127
	l.addi	r20, r20, 644           # CFC
	l.j	.LBB1_16
	l.nop	0                       # in delay slot
.LBB1_11:                               # %sw.bb62
	l.addi	r18, r18, 162
	l.addi	r6, r0, 1
	l.movhi	r7, 0
	l.sfeqi	r5, 0
	l.addi	r20, r20, 324           # CFC
	l.lwz	r4, -8(r2)
	l.addi	r16, r0, 1
	l.movhi	r17, 0
	l.addi	r28, r28, 972
	l.lwz	r14, 4344(r12)
	l.addi	r26, r0, 1
	l.movhi	r27, 0
	l.lwz	r24, 8696(r22)
	l.bf	.LBB1_78
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 810
	l.sfeqi	r15, 0
	l.addi	r20, r20, 648           # CFC
	l.bf	.LBB1_79
	l.nop	0
.LBB1_12:                               # %if.else65
	l.addi	r18, r18, 163
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
	l.addi	r20, r20, 326           # CFC
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
	l.addi	r28, r28, 978
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
	l.addi	r18, r18, 815
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
	l.lwz	r14, 4344(r12)
	l.movhi	r16, 0
	l.add	r31, r27, r31
	l.addi	r24, r24, -5
	l.sll	r27, r25, r24
	l.lwz	r24, 8696(r22)
	l.movhi	r26, 0
	l.addi	r20, r20, 652           # CFC
	l.j	.LBB1_16
	l.nop	0                       # in delay slot
.LBB1_13:                               # %sw.bb79
	l.addi	r18, r18, 164
	l.addi	r6, r0, 2
	l.addi	r20, r20, 328           # CFC
	l.sfeqi	r5, 0
	l.addi	r28, r28, 984
	l.addi	r16, r0, 2
	l.addi	r26, r0, 2
	l.bf	.LBB1_80
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 820
	l.sfeqi	r15, 0
	l.addi	r20, r20, 656           # CFC
	l.bf	.LBB1_81
	l.nop	0
.LBB1_14:                               # %sw.bb79
	l.addi	r18, r18, 165
	l.addi	r20, r20, 330           # CFC
	l.addi	r6, r0, 3
	l.addi	r28, r28, 990
	l.addi	r16, r0, 3
	l.addi	r18, r18, 825
	l.addi	r26, r0, 3
	l.addi	r20, r20, 660           # CFC
.LBB1_15:                               # %sw.bb79
	l.addi	r18, r18, 166
	l.addi	r20, r20, 332           # CFC
	l.ori	r7, r5, 0
	l.addi	r28, r28, 996
	l.ori	r17, r15, 0
	l.addi	r18, r18, 830
	l.ori	r27, r25, 0
	l.addi	r20, r20, 664           # CFC
.LBB1_16:                               # %do.body98
	l.addi	r18, r18, 167
	l.sw	-24(r2), r7
	l.lwz	r5, -16(r2)
	l.srli	r7, r5, 31
	l.sub	r3, r3, r11
	l.sw	-16(r2), r3
	l.sw	4328(r12), r17
	l.lwz	r15, 4336(r12)
	l.srli	r17, r15, 31
	l.slli	r4, r4, 2
	l.addi	r20, r20, 334           # CFC
	l.sub	r13, r13, r8
	l.sw	8680(r22), r27
	l.sw	-28(r2), r6
	l.sw	4336(r12), r13
	l.lwz	r25, 8688(r22)
	l.or	r4, r6, r4
	l.slli	r14, r14, 2
	l.srli	r27, r25, 31
	l.andi	r6, r4, 15
	l.addi	r28, r28, 1002
	l.sw	4324(r12), r16
	l.sub	r23, r23, r31
	l.sfgtui	r6, 15
	l.or	r14, r16, r14
	l.andi	r16, r14, 15
	l.sw	8688(r22), r23
	l.slli	r24, r24, 2
	l.sw	8676(r22), r26
	l.or	r24, r26, r24
	l.andi	r26, r24, 15
	l.bf	.LBB1_82
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 835
	l.sfgtui	r16, 15
	l.addi	r20, r20, 668           # CFC
	l.bf	.LBB1_83
	l.nop	0
.LBB1_17:                               # %do.body98
	l.addi	r18, r18, 168
	l.lwz	r3, -12(r2)
	l.srli	r5, r3, 31
	l.xor	r11, r5, r7
	l.addi	r3, r0, 1
	l.sw	-12(r2), r3
	l.lwz	r13, 4340(r12)
	l.srli	r15, r13, 31
	l.xor	r8, r15, r17
	l.addi	r20, r20, 336           # CFC
	l.movhi	r4, 64
	l.addi	r13, r0, 1
	l.lwz	r23, 8692(r22)
	l.movhi	r3, hi(.LJTI1_0)
	l.sw	4340(r12), r13
	l.srli	r25, r23, 31
	l.ori	r3, r3, lo(.LJTI1_0)
	l.movhi	r14, 64
	l.addi	r28, r28, 1008
	l.xor	r31, r25, r27
	l.slli	r6, r6, 2
	l.movhi	r13, hi(.LJTI1_0)
	l.addi	r23, r0, 1
	l.add	r3, r6, r3
	l.ori	r13, r13, lo(.LJTI1_0)
	l.sw	8692(r22), r23
	l.lwz	r3, 0(r3)
	l.addi	r18, r18, 840
	l.slli	r16, r16, 2
	l.movhi	r24, 64
	l.add	r13, r16, r13
	l.lwz	r13, 4352(r13)
	l.movhi	r23, hi(.LJTI1_0)
	l.ori	r23, r23, lo(.LJTI1_0)
	l.slli	r26, r26, 2
	l.add	r23, r26, r23
	l.lwz	r23, 8704(r23)
	l.addi	r20, r20, 672           # CFC
	l.sfne	r3, r13
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB1_65
	l.nop	0
	l.jr	r3
	l.nop	0                       # in delay slot
.LBB1_41:                               # %sw.bb159
	l.addi	r18, r18, 169
	l.lwz	r3, -28(r2)
	l.sw	-8(r2), r3
	l.ori	r7, r5, 0
	l.addi	r20, r20, 338           # CFC
	l.lwz	r3, -24(r2)
	l.sw	-20(r2), r3
	l.lwz	r13, 4324(r12)
	l.sw	4344(r12), r13
	l.addi	r28, r28, 1014
	l.ori	r17, r15, 0
	l.lwz	r13, 4328(r12)
	l.sw	4332(r12), r13
	l.lwz	r23, 8676(r22)
	l.addi	r18, r18, 845
	l.sw	8696(r22), r23
	l.ori	r27, r25, 0
	l.lwz	r23, 8680(r22)
	l.sw	8684(r22), r23
	l.addi	r20, r20, 676           # CFC
.LBB1_42:                               # %do.body169
	l.addi	r18, r18, 170
	l.lwz	r4, -8(r2)
	l.sfgtui	r4, 3
	l.lwz	r5, -20(r2)
	l.ori	r11, r7, 0
	l.addi	r20, r20, 340           # CFC
	l.lwz	r6, -16(r2)
	l.lwz	r14, 4344(r12)
	l.lwz	r15, 4332(r12)
	l.ori	r8, r17, 0
	l.addi	r28, r28, 1020
	l.lwz	r16, 4336(r12)
	l.lwz	r24, 8696(r22)
	l.lwz	r25, 8684(r22)
	l.ori	r31, r27, 0
	l.lwz	r26, 8688(r22)
	l.bf	.LBB1_84
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 850
	l.sfgtui	r14, 3
	l.addi	r20, r20, 680           # CFC
	l.bf	.LBB1_85
	l.nop	0
.LBB1_43:                               # %do.body169
	l.addi	r18, r18, 171
	l.movhi	r3, hi(.LJTI1_1)
	l.ori	r3, r3, lo(.LJTI1_1)
	l.slli	r4, r4, 2
	l.add	r3, r4, r3
	l.lwz	r3, 0(r3)
	l.movhi	r13, hi(.LJTI1_1)
	l.addi	r20, r20, 342           # CFC
	l.ori	r13, r13, lo(.LJTI1_1)
	l.slli	r14, r14, 2
	l.ori	r4, r11, 0
	l.add	r13, r14, r13
	l.movhi	r23, hi(.LJTI1_1)
	l.ori	r6, r4, 0
	l.lwz	r13, 4352(r13)
	l.addi	r28, r28, 1026
	l.ori	r23, r23, lo(.LJTI1_1)
	l.ori	r4, r5, 0
	l.ori	r14, r8, 0
	l.slli	r24, r24, 2
	l.sw	-12(r2), r6
	l.ori	r16, r14, 0
	l.add	r23, r24, r23
	l.addi	r18, r18, 855
	l.ori	r14, r15, 0
	l.sw	4340(r12), r16
	l.lwz	r23, 8704(r23)
	l.ori	r24, r31, 0
	l.ori	r26, r24, 0
	l.ori	r24, r25, 0
	l.sw	8692(r22), r26
	l.addi	r20, r20, 684           # CFC
	l.sfne	r3, r13
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB1_65
	l.nop	0
	l.jr	r3
	l.nop	0                       # in delay slot
.LBB1_62:                               # %sw.bb269
	l.addi	r18, r18, 172
	l.movhi	r6, 0
	l.addi	r20, r20, 344           # CFC
	l.movhi	r5, 0
	l.movhi	r16, 0
	l.addi	r28, r28, 1032
	l.movhi	r15, 0
	l.addi	r18, r18, 860
	l.movhi	r26, 0
	l.movhi	r25, 0
	l.addi	r20, r20, 688           # CFC
	l.j	.LBB1_64
	l.nop	0                       # in delay slot
.LBB1_63:                               # %sw.bb270
	l.addi	r18, r18, 173
	l.movhi	r5, 0
	l.addi	r20, r20, 346           # CFC
	l.addi	r6, r0, 255
	l.movhi	r15, 0
	l.addi	r28, r28, 1038
	l.addi	r16, r0, 255
	l.addi	r18, r18, 865
	l.movhi	r25, 0
	l.addi	r26, r0, 255
	l.addi	r20, r20, 692           # CFC
	l.j	.LBB1_64
	l.nop	0                       # in delay slot
.LBB1_18:                               # %sw.bb102
	l.addi	r18, r18, 174
	l.sw	-28(r2), r11
	l.lwz	r3, -24(r2)
	l.slli	r4, r3, 5
	l.lwz	r3, -20(r2)
	l.slli	r7, r3, 5
	l.sw	4324(r12), r8
	l.addi	r20, r20, 348           # CFC
	l.lwz	r13, 4328(r12)
	l.slli	r14, r13, 5
	l.sfltu	r7, r4
	l.lwz	r13, 4332(r12)
	l.sw	8676(r22), r31
	l.sw	-12(r2), r4
	l.addi	r28, r28, 1044
	l.slli	r17, r13, 5
	l.sw	4340(r12), r14
	l.lwz	r23, 8680(r22)
	l.slli	r24, r23, 5
	l.lwz	r23, 8684(r22)
	l.slli	r27, r23, 5
	l.sw	8692(r22), r24
	l.bf	.LBB1_86
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 870
	l.sfltu	r17, r14
	l.addi	r20, r20, 696           # CFC
	l.bf	.LBB1_87
	l.nop	0
.LBB1_19:                               # %if.then113
	l.addi	r18, r18, 175
	l.sub	r7, r7, r4
	l.addi	r3, r0, 26
	l.addi	r20, r20, 350           # CFC
	l.addi	r5, r0, 1
	l.sub	r17, r17, r14
	l.addi	r28, r28, 1050
	l.addi	r13, r0, 26
	l.addi	r15, r0, 1
	l.addi	r18, r18, 875
	l.sub	r27, r27, r24
	l.addi	r23, r0, 26
	l.addi	r25, r0, 1
	l.addi	r20, r20, 700           # CFC
	l.j	.LBB1_21
	l.nop	0                       # in delay slot
.LBB1_33:                               # %do.body148
	l.addi	r18, r18, 176
	l.ori	r11, r5, 0
	l.ori	r5, r7, 0
	l.movhi	r4, 64
	l.lwz	r3, -24(r2)
	l.and	r3, r3, r4
	l.ori	r8, r15, 0
	l.addi	r20, r20, 352           # CFC
	l.ori	r15, r17, 0
	l.movhi	r14, 64
	l.addi	r6, r0, 1
	l.lwz	r13, 4328(r12)
	l.ori	r31, r25, 0
	l.sfeqi	r3, 0
	l.addi	r28, r28, 1056
	l.and	r13, r13, r14
	l.addi	r16, r0, 1
	l.ori	r25, r27, 0
	l.movhi	r24, 64
	l.lwz	r23, 8680(r22)
	l.and	r23, r23, r24
	l.addi	r26, r0, 1
	l.bf	.LBB1_88
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 880
	l.sfeqi	r13, 0
	l.addi	r20, r20, 704           # CFC
	l.bf	.LBB1_89
	l.nop	0
.LBB1_34:                               # %do.body148
	l.addi	r18, r18, 177
	l.addi	r20, r20, 354           # CFC
	l.movhi	r6, 0
	l.addi	r28, r28, 1062
	l.movhi	r16, 0
	l.addi	r18, r18, 885
	l.movhi	r26, 0
	l.addi	r20, r20, 708           # CFC
.LBB1_35:                               # %do.body148
	l.addi	r18, r18, 178
	l.lwz	r7, -20(r2)
	l.and	r3, r7, r4
	l.srli	r3, r3, 22
	l.and	r4, r3, r6
	l.addi	r20, r20, 356           # CFC
	l.sfnei	r4, 0
	l.lwz	r17, 4332(r12)
	l.and	r13, r17, r14
	l.srli	r13, r13, 22
	l.addi	r28, r28, 1068
	l.and	r14, r13, r16
	l.lwz	r27, 8684(r22)
	l.and	r23, r27, r24
	l.srli	r23, r23, 22
	l.and	r24, r23, r26
	l.bf	.LBB1_90
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 890
	l.sfnei	r14, 0
	l.addi	r20, r20, 712           # CFC
	l.bf	.LBB1_91
	l.nop	0
.LBB1_36:                               # %do.body148
	l.addi	r18, r18, 179
	l.addi	r20, r20, 358           # CFC
	l.sw	-24(r2), r7
	l.addi	r28, r28, 1074
	l.sw	4328(r12), r17
	l.addi	r18, r18, 895
	l.sw	8680(r22), r27
	l.addi	r20, r20, 716           # CFC
.LBB1_37:                               # %do.body148
	l.sfnei	r4, 0
	l.bf	.LBB1_92
	l.nop	0                       # in delay slot
	l.sfnei	r14, 0
	l.bf	.LBB1_93
	l.nop	0
.LBB1_38:                               # %do.body148
	l.addi	r18, r18, 180
	l.addi	r20, r20, 360           # CFC
	l.ori	r11, r5, 0
	l.addi	r28, r28, 1080
	l.ori	r8, r15, 0
	l.addi	r18, r18, 900
	l.ori	r31, r25, 0
	l.addi	r20, r20, 720           # CFC
.LBB1_39:                               # %do.body148
	l.addi	r18, r18, 181
	l.lwz	r4, -24(r2)
	l.addi	r20, r20, 362           # CFC
	l.sw	-12(r2), r11
	l.lwz	r14, 4328(r12)
	l.addi	r28, r28, 1086
	l.sw	4340(r12), r8
	l.addi	r18, r18, 905
	l.lwz	r24, 8680(r22)
	l.sw	8692(r22), r31
	l.addi	r20, r20, 724           # CFC
.LBB1_40:                               # %sw.bb271
	l.addi	r18, r18, 182
	l.movhi	r3, 64
	l.or	r5, r4, r3
	l.addi	r6, r0, 255
	l.addi	r20, r20, 364           # CFC
	l.lwz	r11, -12(r2)
	l.movhi	r13, 64
	l.or	r15, r14, r13
	l.addi	r28, r28, 1092
	l.addi	r16, r0, 255
	l.lwz	r8, 4340(r12)
	l.movhi	r23, 64
	l.addi	r18, r18, 910
	l.or	r25, r24, r23
	l.addi	r26, r0, 255
	l.lwz	r31, 8692(r22)
	l.addi	r20, r20, 728           # CFC
.LBB1_64:                               # %do.body279
	l.addi	r18, r18, 183
	l.movhi	r3, 127
	l.ori	r3, r3, 65535
	l.and	r3, r5, r3
	l.slli	r4, r6, 23
	l.movhi	r5, 32640
	l.movhi	r13, 127
	l.ori	r13, r13, 65535
	l.and	r13, r15, r13
	l.addi	r20, r20, 366           # CFC
	l.and	r4, r4, r5
	l.slli	r14, r16, 23
	l.movhi	r23, 127
	l.slli	r5, r11, 31
	l.movhi	r15, 32640
	l.ori	r23, r23, 65535
	l.or	r4, r4, r5
	l.and	r14, r14, r15
	l.addi	r28, r28, 1098
	l.and	r23, r25, r23
	l.or	r11, r4, r3
	l.slli	r15, r8, 31
	l.slli	r24, r26, 23
	l.addi	r1, r2, 0
	l.or	r14, r14, r15
	l.movhi	r25, 32640
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 915
	l.or	r8, r14, r13
	l.and	r24, r24, r25
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.slli	r25, r31, 31
	l.or	r24, r24, r25
	l.or	r31, r24, r23
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 732           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB1_65
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB1_20:                               # %if.else116
	l.addi	r18, r18, 184
	l.addi	r3, r0, 27
	l.movhi	r5, 0
	l.lwz	r4, -16(r2)
	l.addi	r20, r20, 368           # CFC
	l.addi	r4, r4, -1
	l.sw	-16(r2), r4
	l.addi	r13, r0, 27
	l.movhi	r15, 0
	l.addi	r28, r28, 1104
	l.lwz	r14, 4336(r12)
	l.addi	r14, r14, -1
	l.sw	4336(r12), r14
	l.addi	r23, r0, 27
	l.addi	r18, r18, 920
	l.movhi	r25, 0
	l.lwz	r24, 8688(r22)
	l.addi	r24, r24, -1
	l.sw	8688(r22), r24
	l.addi	r20, r20, 736           # CFC
.LBB1_21:                               # %do.body119.preheader
	l.addi	r18, r18, 185
	l.addi	r20, r20, 370           # CFC
	l.addi	r11, r3, 1
	l.addi	r28, r28, 1110
	l.addi	r8, r13, 1
	l.addi	r18, r18, 925
	l.addi	r31, r23, 1
	l.addi	r20, r20, 740           # CFC
.LBB1_22:                               # %do.body119
	l.addi	r18, r18, 186
	l.sw	-8(r2), r5
	l.movhi	r3, 0
	l.addi	r6, r0, 1
	l.sfgtsi	r7, -1
	l.addi	r20, r20, 372           # CFC
	l.ori	r4, r6, 0
	l.sw	4344(r12), r15
	l.movhi	r13, 0
	l.addi	r16, r0, 1
	l.addi	r28, r28, 1116
	l.ori	r14, r16, 0
	l.sw	8696(r22), r25
	l.movhi	r23, 0
	l.addi	r26, r0, 1
	l.ori	r24, r26, 0
	l.bf	.LBB1_94
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 930
	l.sfgtsi	r17, -1
	l.addi	r20, r20, 744           # CFC
	l.bf	.LBB1_95
	l.nop	0
.LBB1_23:                               # %do.body119
	l.addi	r18, r18, 187
	l.addi	r20, r20, 374           # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 1122
	l.movhi	r14, 0
	l.addi	r18, r18, 935
	l.movhi	r24, 0
	l.addi	r20, r20, 748           # CFC
.LBB1_24:                               # %do.body119
	l.addi	r18, r18, 188
	l.slli	r7, r7, 1
	l.lwz	r5, -12(r2)
	l.addi	r20, r20, 376           # CFC
	l.sfltu	r7, r5
	l.slli	r17, r17, 1
	l.addi	r28, r28, 1128
	l.lwz	r15, 4340(r12)
	l.slli	r27, r27, 1
	l.lwz	r25, 8692(r22)
	l.bf	.LBB1_96
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 940
	l.sfltu	r17, r15
	l.addi	r20, r20, 752           # CFC
	l.bf	.LBB1_97
	l.nop	0
.LBB1_25:                               # %do.body119
	l.addi	r18, r18, 189
	l.addi	r20, r20, 378           # CFC
	l.movhi	r6, 0
	l.addi	r28, r28, 1134
	l.movhi	r16, 0
	l.addi	r18, r18, 945
	l.movhi	r26, 0
	l.addi	r20, r20, 756           # CFC
.LBB1_26:                               # %do.body119
	l.addi	r18, r18, 190
	l.and	r4, r4, r6
	l.sfnei	r4, 0
	l.addi	r20, r20, 380           # CFC
	l.lwz	r5, -8(r2)
	l.and	r14, r14, r16
	l.addi	r28, r28, 1140
	l.lwz	r15, 4344(r12)
	l.and	r24, r24, r26
	l.lwz	r25, 8696(r22)
	l.bf	.LBB1_98
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 950
	l.sfnei	r14, 0
	l.addi	r20, r20, 760           # CFC
	l.bf	.LBB1_99
	l.nop	0
.LBB1_27:                               # %do.body119
	l.addi	r18, r18, 191
	l.addi	r20, r20, 382           # CFC
	l.lwz	r3, -12(r2)
	l.addi	r28, r28, 1146
	l.lwz	r13, 4340(r12)
	l.addi	r18, r18, 955
	l.lwz	r23, 8692(r22)
	l.addi	r20, r20, 764           # CFC
.LBB1_28:                               # %do.body119
	l.addi	r18, r18, 192
	l.sub	r7, r7, r3
	l.andi	r3, r4, 1
	l.slli	r4, r5, 1
	l.or	r3, r3, r4
	l.xori	r5, r3, 1
	l.sub	r17, r17, r13
	l.addi	r20, r20, 384           # CFC
	l.andi	r13, r14, 1
	l.slli	r14, r15, 1
	l.addi	r11, r11, -1
	l.or	r13, r13, r14
	l.sub	r27, r27, r23
	l.sfgtsi	r11, 1
	l.addi	r28, r28, 1152
	l.xori	r15, r13, 1
	l.addi	r8, r8, -1
	l.andi	r23, r24, 1
	l.slli	r24, r25, 1
	l.or	r23, r23, r24
	l.xori	r25, r23, 1
	l.addi	r31, r31, -1
	l.bf	.LBB1_100
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 960
	l.sfgtsi	r8, 1
	l.addi	r20, r20, 768           # CFC
	l.bf	.LBB1_101
	l.nop	0
.LBB1_29:                               # %do.body169.thread439
	l.addi	r18, r18, 193
	l.addi	r3, r0, 1
	l.addi	r20, r20, 386           # CFC
	l.sfnei	r7, 0
	l.addi	r28, r28, 1158
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.bf	.LBB1_102
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 965
	l.sfnei	r17, 0
	l.addi	r20, r20, 772           # CFC
	l.bf	.LBB1_103
	l.nop	0
.LBB1_30:                               # %do.body169.thread439
	l.addi	r18, r18, 194
	l.addi	r20, r20, 388           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 1164
	l.movhi	r13, 0
	l.addi	r18, r18, 970
	l.movhi	r23, 0
	l.addi	r20, r20, 776           # CFC
.LBB1_31:                               # %do.body169.thread439
	l.addi	r18, r18, 195
	l.andi	r3, r3, 1
	l.or	r3, r3, r5
	l.sw	-20(r2), r3
	l.addi	r20, r20, 390           # CFC
	l.lwz	r6, -28(r2)
	l.andi	r13, r13, 1
	l.or	r13, r13, r15
	l.addi	r28, r28, 1170
	l.sw	4332(r12), r13
	l.lwz	r16, 4324(r12)
	l.andi	r23, r23, 1
	l.addi	r18, r18, 975
	l.or	r23, r23, r25
	l.sw	8684(r22), r23
	l.lwz	r26, 8676(r22)
	l.addi	r20, r20, 780           # CFC
.LBB1_32:                               # %sw.bb170
	l.addi	r18, r18, 196
	l.ori	r11, r6, 0
	l.lwz	r7, -16(r2)
	l.lwz	r4, -20(r2)
	l.addi	r20, r20, 392           # CFC
	l.sfltsi	r7, -126
	l.ori	r8, r16, 0
	l.lwz	r17, 4336(r12)
	l.addi	r28, r28, 1176
	l.lwz	r14, 4332(r12)
	l.ori	r31, r26, 0
	l.lwz	r27, 8688(r22)
	l.lwz	r24, 8684(r22)
	l.bf	.LBB1_104
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 980
	l.sfltsi	r17, -126
	l.addi	r20, r20, 784           # CFC
	l.bf	.LBB1_105
	l.nop	0
.LBB1_44:                               # %do.body175
	l.addi	r18, r18, 197
	l.andi	r3, r4, 15
	l.sfeqi	r3, 4
	l.addi	r20, r20, 394           # CFC
	l.ori	r6, r4, 0
	l.andi	r13, r14, 15
	l.addi	r28, r28, 1182
	l.ori	r16, r14, 0
	l.andi	r23, r24, 15
	l.ori	r26, r24, 0
	l.bf	.LBB1_106
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 985
	l.sfeqi	r13, 4
	l.addi	r20, r20, 788           # CFC
	l.bf	.LBB1_107
	l.nop	0
.LBB1_45:                               # %do.body175
	l.addi	r18, r18, 198
	l.addi	r20, r20, 396           # CFC
	l.addi	r6, r4, 4
	l.addi	r28, r28, 1188
	l.addi	r16, r14, 4
	l.addi	r18, r18, 990
	l.addi	r26, r24, 4
	l.addi	r20, r20, 792           # CFC
.LBB1_46:                               # %do.body175
	l.addi	r18, r18, 199
	l.andi	r3, r4, 7
	l.addi	r20, r20, 398           # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 1194
	l.andi	r13, r14, 7
	l.andi	r23, r24, 7
	l.bf	.LBB1_108
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 995
	l.sfeqi	r13, 0
	l.addi	r20, r20, 796           # CFC
	l.bf	.LBB1_109
	l.nop	0
.LBB1_47:                               # %do.body175
	l.addi	r18, r18, 200
	l.addi	r20, r20, 400           # CFC
	l.ori	r4, r6, 0
	l.addi	r28, r28, 1200
	l.ori	r14, r16, 0
	l.addi	r18, r18, 1000
	l.ori	r24, r26, 0
	l.addi	r20, r20, 800           # CFC
.LBB1_48:                               # %do.body175
	l.addi	r18, r18, 201
	l.srli	r3, r4, 27
	l.andi	r3, r3, 1
	l.add	r3, r7, r3
	l.addi	r7, r3, 127
	l.movhi	r5, 0
	l.addi	r20, r20, 402           # CFC
	l.sfgtsi	r7, 254
	l.srli	r13, r14, 27
	l.andi	r13, r13, 1
	l.add	r13, r17, r13
	l.addi	r17, r13, 127
	l.addi	r28, r28, 1206
	l.movhi	r15, 0
	l.srli	r23, r24, 27
	l.andi	r23, r23, 1
	l.add	r23, r27, r23
	l.addi	r27, r23, 127
	l.movhi	r25, 0
	l.bf	.LBB1_110
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1005
	l.sfgtsi	r17, 254
	l.addi	r20, r20, 804           # CFC
	l.bf	.LBB1_111
	l.nop	0
.LBB1_49:                               # %do.body175
	l.addi	r18, r18, 202
	l.movhi	r3, 7935
	l.ori	r3, r3, 65535
	l.srli	r4, r4, 3
	l.addi	r20, r20, 404           # CFC
	l.and	r5, r4, r3
	l.movhi	r13, 7935
	l.ori	r13, r13, 65535
	l.addi	r28, r28, 1212
	l.srli	r14, r14, 3
	l.and	r15, r14, r13
	l.movhi	r23, 7935
	l.addi	r18, r18, 1010
	l.ori	r23, r23, 65535
	l.srli	r24, r24, 3
	l.and	r25, r24, r23
	l.addi	r20, r20, 808           # CFC
.LBB1_50:                               # %do.body175
	l.addi	r18, r18, 203
	l.addi	r6, r0, 255
	l.addi	r20, r20, 406           # CFC
	l.sfgtsi	r7, 254
	l.addi	r28, r28, 1218
	l.addi	r16, r0, 255
	l.addi	r26, r0, 255
	l.bf	.LBB1_112
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1015
	l.sfgtsi	r17, 254
	l.addi	r20, r20, 812           # CFC
	l.bf	.LBB1_113
	l.nop	0
.LBB1_51:                               # %do.body175
	l.addi	r18, r18, 204
	l.addi	r20, r20, 408           # CFC
	l.ori	r6, r7, 0
	l.addi	r28, r28, 1224
	l.ori	r16, r17, 0
	l.addi	r18, r18, 1020
	l.ori	r26, r27, 0
	l.addi	r20, r20, 816           # CFC
	l.j	.LBB1_64
	l.nop	0                       # in delay slot
.LBB1_52:                               # %if.else205
	l.addi	r18, r18, 205
	l.addi	r3, r0, -126
	l.sub	r3, r3, r7
	l.movhi	r6, 0
	l.sfgtsi	r3, 27
	l.addi	r20, r20, 410           # CFC
	l.movhi	r5, 0
	l.addi	r13, r0, -126
	l.sub	r13, r13, r17
	l.movhi	r16, 0
	l.addi	r28, r28, 1230
	l.movhi	r15, 0
	l.addi	r23, r0, -126
	l.sub	r23, r23, r27
	l.movhi	r26, 0
	l.movhi	r25, 0
	l.bf	.LBB1_114
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1025
	l.sfgtsi	r13, 27
	l.addi	r20, r20, 820           # CFC
	l.bf	.LBB1_115
	l.nop	0
.LBB1_53:                               # %if.then210
	l.addi	r18, r18, 206
	l.ori	r6, r3, 0
	l.addi	r3, r0, -127
	l.sub	r3, r3, r7
	l.addi	r5, r0, 31
	l.sub	r3, r5, r3
	l.ori	r16, r13, 0
	l.addi	r13, r0, -127
	l.sub	r13, r13, r17
	l.addi	r20, r20, 412           # CFC
	l.srl	r5, r4, r6
	l.addi	r15, r0, 31
	l.ori	r26, r23, 0
	l.sll	r3, r4, r3
	l.sub	r13, r15, r13
	l.addi	r23, r0, -127
	l.addi	r4, r0, 1
	l.srl	r15, r14, r16
	l.addi	r28, r28, 1236
	l.sub	r23, r23, r27
	l.sfnei	r3, 0
	l.sll	r13, r14, r13
	l.addi	r14, r0, 1
	l.addi	r25, r0, 31
	l.sub	r23, r25, r23
	l.srl	r25, r24, r26
	l.sll	r23, r24, r23
	l.addi	r24, r0, 1
	l.bf	.LBB1_116
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1030
	l.sfnei	r13, 0
	l.addi	r20, r20, 824           # CFC
	l.bf	.LBB1_117
	l.nop	0
.LBB1_54:                               # %if.then210
	l.addi	r18, r18, 207
	l.addi	r20, r20, 414           # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 1242
	l.movhi	r14, 0
	l.addi	r18, r18, 1035
	l.movhi	r24, 0
	l.addi	r20, r20, 828           # CFC
.LBB1_55:                               # %if.then210
	l.addi	r18, r18, 208
	l.andi	r3, r4, 1
	l.or	r4, r3, r5
	l.andi	r3, r4, 15
	l.sfeqi	r3, 4
	l.addi	r20, r20, 416           # CFC
	l.ori	r5, r4, 0
	l.andi	r13, r14, 1
	l.or	r14, r13, r15
	l.andi	r13, r14, 15
	l.addi	r28, r28, 1248
	l.ori	r15, r14, 0
	l.andi	r23, r24, 1
	l.or	r24, r23, r25
	l.andi	r23, r24, 15
	l.ori	r25, r24, 0
	l.bf	.LBB1_118
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1040
	l.sfeqi	r13, 4
	l.addi	r20, r20, 832           # CFC
	l.bf	.LBB1_119
	l.nop	0
.LBB1_56:                               # %if.then210
	l.addi	r18, r18, 209
	l.addi	r20, r20, 418           # CFC
	l.addi	r5, r4, 4
	l.addi	r28, r28, 1254
	l.addi	r15, r14, 4
	l.addi	r18, r18, 1045
	l.addi	r25, r24, 4
	l.addi	r20, r20, 836           # CFC
.LBB1_57:                               # %if.then210
	l.addi	r18, r18, 210
	l.andi	r3, r4, 7
	l.addi	r20, r20, 420           # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 1260
	l.andi	r13, r14, 7
	l.andi	r23, r24, 7
	l.bf	.LBB1_120
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1050
	l.sfeqi	r13, 0
	l.addi	r20, r20, 840           # CFC
	l.bf	.LBB1_121
	l.nop	0
.LBB1_58:                               # %if.then210
	l.addi	r18, r18, 211
	l.addi	r20, r20, 422           # CFC
	l.ori	r4, r5, 0
	l.addi	r28, r28, 1266
	l.ori	r14, r15, 0
	l.addi	r18, r18, 1055
	l.ori	r24, r25, 0
	l.addi	r20, r20, 844           # CFC
.LBB1_59:                               # %if.then210
	l.addi	r18, r18, 212
	l.movhi	r3, 1024
	l.and	r3, r4, r3
	l.srli	r5, r4, 3
	l.addi	r20, r20, 424           # CFC
	l.sfeqi	r3, 0
	l.movhi	r13, 1024
	l.and	r13, r14, r13
	l.addi	r28, r28, 1272
	l.srli	r15, r14, 3
	l.movhi	r23, 1024
	l.and	r23, r24, r23
	l.srli	r25, r24, 3
	l.bf	.LBB1_122
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1060
	l.sfeqi	r13, 0
	l.addi	r20, r20, 848           # CFC
	l.bf	.LBB1_123
	l.nop	0
.LBB1_60:                               # %if.then210
	l.addi	r18, r18, 213
	l.addi	r20, r20, 426           # CFC
	l.movhi	r5, 0
	l.addi	r28, r28, 1278
	l.movhi	r15, 0
	l.addi	r18, r18, 1065
	l.movhi	r25, 0
	l.addi	r20, r20, 852           # CFC
.LBB1_61:                               # %if.then210
	l.addi	r18, r18, 214
	l.addi	r20, r20, 428           # CFC
	l.srli	r6, r3, 26
	l.addi	r28, r28, 1284
	l.srli	r16, r13, 26
	l.addi	r18, r18, 1070
	l.srli	r26, r23, 26
	l.addi	r20, r20, 856           # CFC
	l.j	.LBB1_64
	l.nop	0                       # in delay slot
.LBB1_65:                               # %if.then210
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB1_124
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB1_124
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB1_124
	l.nop	0
	l.nop	205
.LBB1_124:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB1_125
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB1_125
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB1_125
	l.nop	0
	l.nop	205
.LBB1_125:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB1_126
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB1_126
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB1_126
	l.nop	0
	l.nop	205
.LBB1_126:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB1_127
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB1_127
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB1_127
	l.nop	0
	l.nop	205
.LBB1_127:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB1_128
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB1_128
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB1_128
	l.nop	0
	l.nop	205
.LBB1_128:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB1_129
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB1_129
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB1_129
	l.nop	0
	l.nop	205
.LBB1_129:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB1_130
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB1_130
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB1_130
	l.nop	0
	l.nop	205
.LBB1_130:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB1_131
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB1_131
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB1_131
	l.nop	0
	l.nop	205
.LBB1_131:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB1_132
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB1_132
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB1_132
	l.nop	0
	l.nop	205
.LBB1_132:
.LBB1_133:
	l.jr	r30
	l.nop	0
.LBB1_66:
	l.addi	r18, r18, 760
	l.sfeqi	r13, 0
	l.addi	r20, r20, 608           # CFC
	l.bf	.LBB1_3
	l.nop	0
.LBB1_67:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB1_3
	l.nop	0
	l.j	.LBB1_1
	l.nop	0
.LBB1_68:
	l.sfeqi	r13, 255
	l.bf	.LBB1_5
	l.nop	0
.LBB1_69:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfeqi	r3, 255
	l.bf	.LBB1_5
	l.nop	0
	l.j	.LBB1_2
	l.nop	0
.LBB1_70:
	l.addi	r18, r18, 770
	l.sfeqi	r8, 0
	l.addi	r20, r20, 616           # CFC
	l.bf	.LBB1_8
	l.nop	0
.LBB1_71:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB1_8
	l.nop	0
	l.j	.LBB1_4
	l.nop	0
.LBB1_72:
	l.addi	r18, r18, 780
	l.sfeqi	r8, 0
	l.addi	r20, r20, 624           # CFC
	l.bf	.LBB1_7
	l.nop	0
.LBB1_73:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB1_7
	l.nop	0
	l.j	.LBB1_6
	l.nop	0
.LBB1_74:
	l.addi	r18, r18, 795
	l.sfeqi	r8, 0
	l.addi	r20, r20, 636           # CFC
	l.bf	.LBB1_11
	l.nop	0
.LBB1_75:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB1_11
	l.nop	0
	l.j	.LBB1_9
	l.nop	0
.LBB1_76:
	l.addi	r18, r18, 800
	l.sfeqi	r8, 255
	l.addi	r20, r20, 640           # CFC
	l.bf	.LBB1_13
	l.nop	0
.LBB1_77:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfeqi	r11, 255
	l.bf	.LBB1_13
	l.nop	0
	l.j	.LBB1_10
	l.nop	0
.LBB1_78:
	l.addi	r18, r18, 810
	l.sfeqi	r15, 0
	l.addi	r20, r20, 648           # CFC
	l.bf	.LBB1_16
	l.nop	0
.LBB1_79:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB1_16
	l.nop	0
	l.j	.LBB1_12
	l.nop	0
.LBB1_80:
	l.addi	r18, r18, 820
	l.sfeqi	r15, 0
	l.addi	r20, r20, 656           # CFC
	l.bf	.LBB1_15
	l.nop	0
.LBB1_81:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB1_15
	l.nop	0
	l.j	.LBB1_14
	l.nop	0
.LBB1_82:
	l.addi	r18, r18, 835
	l.sfgtui	r16, 15
	l.addi	r20, r20, 668           # CFC
	l.bf	.LBB1_42
	l.nop	0
.LBB1_83:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfgtui	r6, 15
	l.bf	.LBB1_42
	l.nop	0
	l.j	.LBB1_17
	l.nop	0
.LBB1_84:
	l.addi	r18, r18, 850
	l.sfgtui	r14, 3
	l.addi	r20, r20, 680           # CFC
	l.bf	.LBB1_64
	l.nop	0
.LBB1_85:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfgtui	r4, 3
	l.bf	.LBB1_64
	l.nop	0
	l.j	.LBB1_43
	l.nop	0
.LBB1_86:
	l.addi	r18, r18, 870
	l.sfltu	r17, r14
	l.addi	r20, r20, 696           # CFC
	l.bf	.LBB1_20
	l.nop	0
.LBB1_87:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfltu	r7, r4
	l.bf	.LBB1_20
	l.nop	0
	l.j	.LBB1_19
	l.nop	0
.LBB1_88:
	l.addi	r18, r18, 880
	l.sfeqi	r13, 0
	l.addi	r20, r20, 704           # CFC
	l.bf	.LBB1_35
	l.nop	0
.LBB1_89:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB1_35
	l.nop	0
	l.j	.LBB1_34
	l.nop	0
.LBB1_90:
	l.addi	r18, r18, 890
	l.sfnei	r14, 0
	l.addi	r20, r20, 712           # CFC
	l.bf	.LBB1_37
	l.nop	0
.LBB1_91:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB1_37
	l.nop	0
	l.j	.LBB1_36
	l.nop	0
.LBB1_92:
	l.sfnei	r14, 0
	l.bf	.LBB1_39
	l.nop	0
.LBB1_93:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB1_39
	l.nop	0
	l.j	.LBB1_38
	l.nop	0
.LBB1_94:
	l.addi	r18, r18, 930
	l.sfgtsi	r17, -1
	l.addi	r20, r20, 744           # CFC
	l.bf	.LBB1_24
	l.nop	0
.LBB1_95:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfgtsi	r7, -1
	l.bf	.LBB1_24
	l.nop	0
	l.j	.LBB1_23
	l.nop	0
.LBB1_96:
	l.addi	r18, r18, 940
	l.sfltu	r17, r15
	l.addi	r20, r20, 752           # CFC
	l.bf	.LBB1_26
	l.nop	0
.LBB1_97:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfltu	r7, r5
	l.bf	.LBB1_26
	l.nop	0
	l.j	.LBB1_25
	l.nop	0
.LBB1_98:
	l.addi	r18, r18, 950
	l.sfnei	r14, 0
	l.addi	r20, r20, 760           # CFC
	l.bf	.LBB1_28
	l.nop	0
.LBB1_99:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB1_28
	l.nop	0
	l.j	.LBB1_27
	l.nop	0
.LBB1_100:
	l.addi	r18, r18, 960
	l.sfgtsi	r8, 1
	l.addi	r20, r20, 768           # CFC
	l.bf	.LBB1_22
	l.nop	0
.LBB1_101:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfgtsi	r11, 1
	l.bf	.LBB1_22
	l.nop	0
	l.j	.LBB1_29
	l.nop	0
.LBB1_102:
	l.addi	r18, r18, 965
	l.sfnei	r17, 0
	l.addi	r20, r20, 772           # CFC
	l.bf	.LBB1_31
	l.nop	0
.LBB1_103:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB1_31
	l.nop	0
	l.j	.LBB1_30
	l.nop	0
.LBB1_104:
	l.addi	r18, r18, 980
	l.sfltsi	r17, -126
	l.addi	r20, r20, 784           # CFC
	l.bf	.LBB1_52
	l.nop	0
.LBB1_105:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfltsi	r7, -126
	l.bf	.LBB1_52
	l.nop	0
	l.j	.LBB1_44
	l.nop	0
.LBB1_106:
	l.addi	r18, r18, 985
	l.sfeqi	r13, 4
	l.addi	r20, r20, 788           # CFC
	l.bf	.LBB1_46
	l.nop	0
.LBB1_107:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfeqi	r3, 4
	l.bf	.LBB1_46
	l.nop	0
	l.j	.LBB1_45
	l.nop	0
.LBB1_108:
	l.addi	r18, r18, 995
	l.sfeqi	r13, 0
	l.addi	r20, r20, 796           # CFC
	l.bf	.LBB1_48
	l.nop	0
.LBB1_109:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB1_48
	l.nop	0
	l.j	.LBB1_47
	l.nop	0
.LBB1_110:
	l.addi	r18, r18, 1005
	l.sfgtsi	r17, 254
	l.addi	r20, r20, 804           # CFC
	l.bf	.LBB1_50
	l.nop	0
.LBB1_111:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfgtsi	r7, 254
	l.bf	.LBB1_50
	l.nop	0
	l.j	.LBB1_49
	l.nop	0
.LBB1_112:
	l.addi	r18, r18, 1015
	l.sfgtsi	r17, 254
	l.addi	r20, r20, 812           # CFC
	l.bf	.LBB1_64
	l.nop	0
.LBB1_113:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfgtsi	r7, 254
	l.bf	.LBB1_64
	l.nop	0
	l.j	.LBB1_51
	l.nop	0
.LBB1_114:
	l.addi	r18, r18, 1025
	l.sfgtsi	r13, 27
	l.addi	r20, r20, 820           # CFC
	l.bf	.LBB1_64
	l.nop	0
.LBB1_115:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfgtsi	r3, 27
	l.bf	.LBB1_64
	l.nop	0
	l.j	.LBB1_53
	l.nop	0
.LBB1_116:
	l.addi	r18, r18, 1030
	l.sfnei	r13, 0
	l.addi	r20, r20, 824           # CFC
	l.bf	.LBB1_55
	l.nop	0
.LBB1_117:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB1_55
	l.nop	0
	l.j	.LBB1_54
	l.nop	0
.LBB1_118:
	l.addi	r18, r18, 1040
	l.sfeqi	r13, 4
	l.addi	r20, r20, 832           # CFC
	l.bf	.LBB1_57
	l.nop	0
.LBB1_119:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfeqi	r3, 4
	l.bf	.LBB1_57
	l.nop	0
	l.j	.LBB1_56
	l.nop	0
.LBB1_120:
	l.addi	r18, r18, 1050
	l.sfeqi	r13, 0
	l.addi	r20, r20, 840           # CFC
	l.bf	.LBB1_59
	l.nop	0
.LBB1_121:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB1_59
	l.nop	0
	l.j	.LBB1_58
	l.nop	0
.LBB1_122:
	l.addi	r18, r18, 1060
	l.sfeqi	r13, 0
	l.addi	r20, r20, 848           # CFC
	l.bf	.LBB1_61
	l.nop	0
.LBB1_123:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB1_65
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB1_61
	l.nop	0
	l.j	.LBB1_60
	l.nop	0
.Lfunc_end1:
	.size	__divsf3, .Lfunc_end1-__divsf3

	.text
	.hidden	__fixsfsi
	.globl	__fixsfsi
	.p2align	2
	.type	__fixsfsi,@function
__fixsfsi:                              # @__fixsfsi
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 215
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r20, r20, 430           # CFC
	l.addi	r1, r1, -4
	l.movhi	r11, 0
	l.srli	r4, r3, 23
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.andi	r5, r4, 255
	l.movhi	r8, 0
	l.addi	r28, r28, 1290
	l.sw	8700(r21), r22
	l.sfgtui	r5, 126
	l.srli	r14, r13, 23
	l.andi	r15, r14, 255
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r31, 0
	l.srli	r24, r23, 23
	l.andi	r25, r24, 255
	l.bf	.LBB2_9
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1075
	l.sfgtui	r15, 126
	l.addi	r20, r20, 860           # CFC
	l.bf	.LBB2_10
	l.nop	0
.LBB2_1:                                # %if.then
	l.addi	r18, r18, 216
	l.addi	r1, r2, 0
	l.addi	r20, r20, 432           # CFC
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 1296
	l.lwz	r12, 4348(r10)
	l.addi	r18, r18, 1080
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 864           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB2_8
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB2_2:                                # %if.else16
	l.addi	r18, r18, 217
	l.srli	r4, r3, 31
	l.addi	r20, r20, 434           # CFC
	l.sfltui	r5, 158
	l.addi	r28, r28, 1302
	l.srli	r14, r13, 31
	l.srli	r24, r23, 31
	l.bf	.LBB2_11
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1085
	l.sfltui	r15, 158
	l.addi	r20, r20, 868           # CFC
	l.bf	.LBB2_12
	l.nop	0
.LBB2_3:                                # %if.then18
	l.addi	r18, r18, 218
	l.xori	r3, r4, 1
	l.movhi	r4, 32768
	l.addi	r20, r20, 436           # CFC
	l.sub	r11, r4, r3
	l.xori	r13, r14, 1
	l.addi	r28, r28, 1308
	l.movhi	r14, 32768
	l.sub	r8, r14, r13
	l.addi	r18, r18, 1090
	l.xori	r23, r24, 1
	l.movhi	r24, 32768
	l.sub	r31, r24, r23
	l.addi	r20, r20, 872           # CFC
	l.j	.LBB2_1
	l.nop	0                       # in delay slot
.LBB2_4:                                # %if.else31
	l.addi	r18, r18, 219
	l.movhi	r6, 127
	l.ori	r6, r6, 65535
	l.and	r3, r3, r6
	l.movhi	r6, 128
	l.or	r3, r3, r6
	l.movhi	r16, 127
	l.ori	r16, r16, 65535
	l.addi	r20, r20, 438           # CFC
	l.and	r13, r13, r16
	l.addi	r6, r5, -150
	l.movhi	r16, 128
	l.movhi	r26, 127
	l.sll	r11, r3, r6
	l.or	r13, r13, r16
	l.ori	r26, r26, 65535
	l.addi	r28, r28, 1314
	l.sfgtui	r5, 149
	l.addi	r16, r15, -150
	l.sll	r8, r13, r16
	l.and	r23, r23, r26
	l.movhi	r26, 128
	l.or	r23, r23, r26
	l.addi	r26, r25, -150
	l.sll	r31, r23, r26
	l.bf	.LBB2_13
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1095
	l.sfgtui	r15, 149
	l.addi	r20, r20, 876           # CFC
	l.bf	.LBB2_14
	l.nop	0
.LBB2_5:                                # %if.else31
	l.addi	r18, r18, 220
	l.addi	r6, r0, 150
	l.sub	r5, r6, r5
	l.addi	r20, r20, 440           # CFC
	l.srl	r11, r3, r5
	l.addi	r16, r0, 150
	l.addi	r28, r28, 1320
	l.sub	r15, r16, r15
	l.srl	r8, r13, r15
	l.addi	r18, r18, 1100
	l.addi	r26, r0, 150
	l.sub	r25, r26, r25
	l.srl	r31, r23, r25
	l.addi	r20, r20, 880           # CFC
.LBB2_6:                                # %if.else31
	l.sfeqi	r4, 0
	l.bf	.LBB2_15
	l.nop	0                       # in delay slot
	l.sfeqi	r14, 0
	l.bf	.LBB2_16
	l.nop	0
.LBB2_7:                                # %if.else31
	l.addi	r18, r18, 221
	l.movhi	r3, 0
	l.addi	r20, r20, 442           # CFC
	l.sub	r11, r3, r11
	l.movhi	r13, 0
	l.addi	r28, r28, 1326
	l.sub	r8, r13, r8
	l.addi	r18, r18, 1105
	l.movhi	r23, 0
	l.sub	r31, r23, r31
	l.addi	r20, r20, 884           # CFC
	l.j	.LBB2_1
	l.nop	0                       # in delay slot
.LBB2_8:                                # %if.else31
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB2_17
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB2_17
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB2_17
	l.nop	0
	l.nop	205
.LBB2_17:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB2_18
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB2_18
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB2_18
	l.nop	0
	l.nop	205
.LBB2_18:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB2_19
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB2_19
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB2_19
	l.nop	0
	l.nop	205
.LBB2_19:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB2_20
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB2_20
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB2_20
	l.nop	0
	l.nop	205
.LBB2_20:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB2_21
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB2_21
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB2_21
	l.nop	0
	l.nop	205
.LBB2_21:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB2_22
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB2_22
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB2_22
	l.nop	0
	l.nop	205
.LBB2_22:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB2_23
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB2_23
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB2_23
	l.nop	0
	l.nop	205
.LBB2_23:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB2_24
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB2_24
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB2_24
	l.nop	0
	l.nop	205
.LBB2_24:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB2_25
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB2_25
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB2_25
	l.nop	0
	l.nop	205
.LBB2_25:
.LBB2_26:
	l.jr	r30
	l.nop	0
.LBB2_9:
	l.addi	r18, r18, 1075
	l.sfgtui	r15, 126
	l.addi	r20, r20, 860           # CFC
	l.bf	.LBB2_2
	l.nop	0
.LBB2_10:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_8
	l.nop	0
	l.sfgtui	r5, 126
	l.bf	.LBB2_2
	l.nop	0
	l.j	.LBB2_1
	l.nop	0
.LBB2_11:
	l.addi	r18, r18, 1085
	l.sfltui	r15, 158
	l.addi	r20, r20, 868           # CFC
	l.bf	.LBB2_4
	l.nop	0
.LBB2_12:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_8
	l.nop	0
	l.sfltui	r5, 158
	l.bf	.LBB2_4
	l.nop	0
	l.j	.LBB2_3
	l.nop	0
.LBB2_13:
	l.addi	r18, r18, 1095
	l.sfgtui	r15, 149
	l.addi	r20, r20, 876           # CFC
	l.bf	.LBB2_6
	l.nop	0
.LBB2_14:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_8
	l.nop	0
	l.sfgtui	r5, 149
	l.bf	.LBB2_6
	l.nop	0
	l.j	.LBB2_5
	l.nop	0
.LBB2_15:
	l.sfeqi	r14, 0
	l.bf	.LBB2_1
	l.nop	0
.LBB2_16:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB2_8
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB2_1
	l.nop	0
	l.j	.LBB2_7
	l.nop	0
.Lfunc_end2:
	.size	__fixsfsi, .Lfunc_end2-__fixsfsi

	.hidden	__floatsisf
	.globl	__floatsisf
	.p2align	2
	.type	__floatsisf,@function
__floatsisf:                            # @__floatsisf
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 222
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r20, r20, 444           # CFC
	l.addi	r1, r1, -4
	l.movhi	r6, 0
	l.sfeqi	r3, 0
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.movhi	r5, 0
	l.movhi	r16, 0
	l.addi	r28, r28, 1332
	l.sw	8700(r21), r22
	l.movhi	r4, 0
	l.movhi	r15, 0
	l.movhi	r14, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r26, 0
	l.movhi	r25, 0
	l.movhi	r24, 0
	l.bf	.LBB3_25
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1110
	l.sfeqi	r13, 0
	l.addi	r20, r20, 888           # CFC
	l.bf	.LBB3_26
	l.nop	0
.LBB3_1:                                # %if.then
	l.addi	r18, r18, 223
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
	l.addi	r20, r20, 446           # CFC
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
	l.addi	r28, r28, 1338
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
	l.bf	.LBB3_27
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1115
	l.sfgtui	r15, 150
	l.addi	r20, r20, 892           # CFC
	l.bf	.LBB3_28
	l.nop	0
.LBB3_2:                                # %if.then9
	l.addi	r18, r18, 224
	l.addi	r3, r0, 150
	l.sub	r3, r3, r5
	l.addi	r20, r20, 448           # CFC
	l.sfgtsi	r3, 0
	l.addi	r13, r0, 150
	l.addi	r28, r28, 1344
	l.sub	r13, r13, r15
	l.addi	r23, r0, 150
	l.sub	r23, r23, r25
	l.bf	.LBB3_29
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1120
	l.sfgtsi	r13, 0
	l.addi	r20, r20, 896           # CFC
	l.bf	.LBB3_30
	l.nop	0
.LBB3_3:                                # %if.then9
	l.addi	r18, r18, 225
	l.addi	r20, r20, 450           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 1350
	l.movhi	r13, 0
	l.addi	r18, r18, 1125
	l.movhi	r23, 0
	l.addi	r20, r20, 900           # CFC
.LBB3_4:                                # %if.then9
	l.addi	r18, r18, 226
	l.addi	r20, r20, 452           # CFC
	l.sll	r6, r6, r3
	l.addi	r28, r28, 1356
	l.sll	r16, r16, r13
	l.addi	r18, r18, 1130
	l.sll	r26, r26, r23
	l.addi	r20, r20, 904           # CFC
	l.j	.LBB3_23
	l.nop	0                       # in delay slot
.LBB3_5:                                # %if.else
	l.sfltui	r5, 154
	l.bf	.LBB3_31
	l.nop	0                       # in delay slot
	l.sfltui	r15, 154
	l.bf	.LBB3_32
	l.nop	0
.LBB3_6:                                # %if.then21
	l.addi	r18, r18, 227
	l.addi	r3, r0, 185
	l.sub	r3, r3, r5
	l.sll	r7, r6, r3
	l.addi	r3, r0, 1
	l.addi	r20, r20, 454           # CFC
	l.sfnei	r7, 0
	l.addi	r13, r0, 185
	l.sub	r13, r13, r15
	l.sll	r17, r16, r13
	l.addi	r28, r28, 1362
	l.addi	r13, r0, 1
	l.addi	r23, r0, 185
	l.sub	r23, r23, r25
	l.sll	r27, r26, r23
	l.addi	r23, r0, 1
	l.bf	.LBB3_33
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1135
	l.sfnei	r17, 0
	l.addi	r20, r20, 908           # CFC
	l.bf	.LBB3_34
	l.nop	0
.LBB3_7:                                # %if.then21
	l.addi	r18, r18, 228
	l.addi	r20, r20, 456           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 1368
	l.movhi	r13, 0
	l.addi	r18, r18, 1140
	l.movhi	r23, 0
	l.addi	r20, r20, 912           # CFC
.LBB3_8:                                # %if.then21
	l.addi	r18, r18, 229
	l.addi	r7, r5, -153
	l.srl	r6, r6, r7
	l.andi	r3, r3, 1
	l.addi	r20, r20, 458           # CFC
	l.or	r6, r3, r6
	l.addi	r17, r15, -153
	l.srl	r16, r16, r17
	l.addi	r28, r28, 1374
	l.andi	r13, r13, 1
	l.or	r16, r13, r16
	l.addi	r27, r25, -153
	l.addi	r18, r18, 1145
	l.srl	r26, r26, r27
	l.andi	r23, r23, 1
	l.or	r26, r23, r26
	l.addi	r20, r20, 916           # CFC
.LBB3_9:                                # %if.end31
	l.addi	r18, r18, 230
	l.addi	r3, r0, 153
	l.sub	r3, r3, r5
	l.addi	r20, r20, 460           # CFC
	l.sfgtsi	r3, 0
	l.addi	r13, r0, 153
	l.addi	r28, r28, 1380
	l.sub	r13, r13, r15
	l.addi	r23, r0, 153
	l.sub	r23, r23, r25
	l.bf	.LBB3_35
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1150
	l.sfgtsi	r13, 0
	l.addi	r20, r20, 920           # CFC
	l.bf	.LBB3_36
	l.nop	0
.LBB3_10:                               # %if.end31
	l.addi	r18, r18, 231
	l.addi	r20, r20, 462           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 1386
	l.movhi	r13, 0
	l.addi	r18, r18, 1155
	l.movhi	r23, 0
	l.addi	r20, r20, 924           # CFC
.LBB3_11:                               # %if.end31
	l.addi	r18, r18, 232
	l.sll	r6, r6, r3
	l.movhi	r3, 64511
	l.ori	r3, r3, 65535
	l.and	r3, r6, r3
	l.andi	r7, r6, 15
	l.addi	r20, r20, 464           # CFC
	l.sfeqi	r7, 4
	l.sll	r16, r16, r13
	l.movhi	r13, 64511
	l.ori	r13, r13, 65535
	l.and	r13, r16, r13
	l.addi	r28, r28, 1392
	l.andi	r17, r16, 15
	l.sll	r26, r26, r23
	l.movhi	r23, 64511
	l.ori	r23, r23, 65535
	l.and	r23, r26, r23
	l.andi	r27, r26, 15
	l.bf	.LBB3_37
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1160
	l.sfeqi	r17, 4
	l.addi	r20, r20, 928           # CFC
	l.bf	.LBB3_38
	l.nop	0
.LBB3_40:
	l.addi	r18, r18, 233
	l.addi	r20, r20, 466           # CFC
	l.ori	r7, r3, 0
	l.addi	r28, r28, 1398
	l.ori	r17, r13, 0
	l.addi	r18, r18, 1165
	l.ori	r27, r23, 0
	l.addi	r20, r20, 932           # CFC
.LBB3_12:                               # %if.end31
	l.addi	r18, r18, 234
	l.addi	r20, r20, 468           # CFC
	l.addi	r7, r3, 4
	l.addi	r28, r28, 1404
	l.addi	r17, r13, 4
	l.addi	r18, r18, 1170
	l.addi	r27, r23, 4
	l.addi	r20, r20, 936           # CFC
.LBB3_13:                               # %if.end31
	l.addi	r18, r18, 235
	l.andi	r6, r6, 7
	l.addi	r20, r20, 470           # CFC
	l.sfeqi	r6, 0
	l.addi	r28, r28, 1410
	l.andi	r16, r16, 7
	l.andi	r26, r26, 7
	l.bf	.LBB3_41
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1175
	l.sfeqi	r16, 0
	l.addi	r20, r20, 940           # CFC
	l.bf	.LBB3_42
	l.nop	0
.LBB3_14:                               # %if.end31
	l.addi	r18, r18, 236
	l.addi	r20, r20, 472           # CFC
	l.ori	r3, r7, 0
	l.addi	r28, r28, 1416
	l.ori	r13, r17, 0
	l.addi	r18, r18, 1180
	l.ori	r23, r27, 0
	l.addi	r20, r20, 944           # CFC
.LBB3_15:                               # %if.end31
	l.addi	r18, r18, 237
	l.movhi	r6, 1024
	l.and	r6, r3, r6
	l.addi	r20, r20, 474           # CFC
	l.sfeqi	r6, 0
	l.movhi	r16, 1024
	l.addi	r28, r28, 1422
	l.and	r16, r13, r16
	l.movhi	r26, 1024
	l.and	r26, r23, r26
	l.bf	.LBB3_43
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1185
	l.sfeqi	r16, 0
	l.addi	r20, r20, 948           # CFC
	l.bf	.LBB3_44
	l.nop	0
.LBB3_16:                               # %if.then73
	l.addi	r18, r18, 238
	l.addi	r5, r5, 1
	l.movhi	r6, 0
	l.addi	r20, r20, 476           # CFC
	l.sfeqi	r5, 255
	l.addi	r15, r15, 1
	l.addi	r28, r28, 1428
	l.movhi	r16, 0
	l.addi	r25, r25, 1
	l.movhi	r26, 0
	l.bf	.LBB3_45
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1190
	l.sfeqi	r15, 255
	l.addi	r20, r20, 952           # CFC
	l.bf	.LBB3_46
	l.nop	0
.LBB3_17:                               # %if.then73
	l.addi	r18, r18, 239
	l.movhi	r6, 64511
	l.ori	r6, r6, 65535
	l.addi	r20, r20, 478           # CFC
	l.and	r6, r3, r6
	l.movhi	r16, 64511
	l.addi	r28, r28, 1434
	l.ori	r16, r16, 65535
	l.and	r16, r13, r16
	l.addi	r18, r18, 1195
	l.movhi	r26, 64511
	l.ori	r26, r26, 65535
	l.and	r26, r23, r26
	l.addi	r20, r20, 956           # CFC
.LBB3_18:                               # %if.then73
	l.addi	r18, r18, 240
	l.addi	r20, r20, 480           # CFC
	l.ori	r3, r6, 0
	l.addi	r28, r28, 1440
	l.ori	r13, r16, 0
	l.addi	r18, r18, 1200
	l.ori	r23, r26, 0
	l.addi	r20, r20, 960           # CFC
.LBB3_19:                               # %if.end82
	l.addi	r18, r18, 241
	l.srli	r6, r3, 3
	l.sfeqi	r6, 0
	l.addi	r20, r20, 482           # CFC
	l.ori	r3, r6, 0
	l.srli	r16, r13, 3
	l.addi	r28, r28, 1446
	l.ori	r13, r16, 0
	l.srli	r26, r23, 3
	l.ori	r23, r26, 0
	l.bf	.LBB3_47
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1205
	l.sfeqi	r16, 0
	l.addi	r20, r20, 964           # CFC
	l.bf	.LBB3_48
	l.nop	0
.LBB3_20:                               # %if.end82
	l.addi	r18, r18, 242
	l.movhi	r3, 64
	l.addi	r20, r20, 484           # CFC
	l.or	r3, r6, r3
	l.movhi	r13, 64
	l.addi	r28, r28, 1452
	l.or	r13, r16, r13
	l.addi	r18, r18, 1210
	l.movhi	r23, 64
	l.or	r23, r26, r23
	l.addi	r20, r20, 968           # CFC
.LBB3_21:                               # %if.end82
	l.sfnei	r5, 255
	l.bf	.LBB3_49
	l.nop	0                       # in delay slot
	l.sfnei	r15, 255
	l.bf	.LBB3_50
	l.nop	0
.LBB3_22:                               # %if.end82
	l.addi	r18, r18, 243
	l.addi	r20, r20, 486           # CFC
	l.ori	r6, r3, 0
	l.addi	r28, r28, 1458
	l.ori	r16, r13, 0
	l.addi	r18, r18, 1215
	l.ori	r26, r23, 0
	l.addi	r20, r20, 972           # CFC
.LBB3_23:                               # %do.body101
	l.addi	r18, r18, 244
	l.slli	r3, r5, 23
	l.movhi	r5, 32640
	l.and	r3, r3, r5
	l.movhi	r5, 127
	l.ori	r5, r5, 65535
	l.slli	r13, r15, 23
	l.movhi	r15, 32640
	l.addi	r20, r20, 488           # CFC
	l.and	r13, r13, r15
	l.and	r5, r6, r5
	l.movhi	r15, 127
	l.slli	r23, r25, 23
	l.or	r4, r4, r5
	l.ori	r15, r15, 65535
	l.movhi	r25, 32640
	l.or	r11, r4, r3
	l.addi	r28, r28, 1464
	l.and	r15, r16, r15
	l.and	r23, r23, r25
	l.addi	r1, r2, 0
	l.or	r14, r14, r15
	l.movhi	r25, 127
	l.lwz	r2, -4(r1)
	l.or	r8, r14, r13
	l.addi	r18, r18, 1220
	l.ori	r25, r25, 65535
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.and	r25, r26, r25
	l.or	r24, r24, r25
	l.or	r31, r24, r23
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 976           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB3_24
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB3_24:                               # %do.body101
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB3_51
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB3_51
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB3_51
	l.nop	0
	l.nop	205
.LBB3_51:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB3_52
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB3_52
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB3_52
	l.nop	0
	l.nop	205
.LBB3_52:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB3_53
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB3_53
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB3_53
	l.nop	0
	l.nop	205
.LBB3_53:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB3_54
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB3_54
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB3_54
	l.nop	0
	l.nop	205
.LBB3_54:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB3_55
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB3_55
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB3_55
	l.nop	0
	l.nop	205
.LBB3_55:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB3_56
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB3_56
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB3_56
	l.nop	0
	l.nop	205
.LBB3_56:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB3_57
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB3_57
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB3_57
	l.nop	0
	l.nop	205
.LBB3_57:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB3_58
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB3_58
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB3_58
	l.nop	0
	l.nop	205
.LBB3_58:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB3_59
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB3_59
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB3_59
	l.nop	0
	l.nop	205
.LBB3_59:
.LBB3_60:
	l.jr	r30
	l.nop	0
.LBB3_25:
	l.addi	r18, r18, 1110
	l.sfeqi	r13, 0
	l.addi	r20, r20, 888           # CFC
	l.bf	.LBB3_23
	l.nop	0
.LBB3_26:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_24
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB3_23
	l.nop	0
	l.j	.LBB3_1
	l.nop	0
.LBB3_27:
	l.addi	r18, r18, 1115
	l.sfgtui	r15, 150
	l.addi	r20, r20, 892           # CFC
	l.bf	.LBB3_5
	l.nop	0
.LBB3_28:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_24
	l.nop	0
	l.sfgtui	r5, 150
	l.bf	.LBB3_5
	l.nop	0
	l.j	.LBB3_2
	l.nop	0
.LBB3_29:
	l.addi	r18, r18, 1120
	l.sfgtsi	r13, 0
	l.addi	r20, r20, 896           # CFC
	l.bf	.LBB3_4
	l.nop	0
.LBB3_30:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_24
	l.nop	0
	l.sfgtsi	r3, 0
	l.bf	.LBB3_4
	l.nop	0
	l.j	.LBB3_3
	l.nop	0
.LBB3_31:
	l.sfltui	r15, 154
	l.bf	.LBB3_9
	l.nop	0
.LBB3_32:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_24
	l.nop	0
	l.sfltui	r5, 154
	l.bf	.LBB3_9
	l.nop	0
	l.j	.LBB3_6
	l.nop	0
.LBB3_33:
	l.addi	r18, r18, 1135
	l.sfnei	r17, 0
	l.addi	r20, r20, 908           # CFC
	l.bf	.LBB3_8
	l.nop	0
.LBB3_34:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_24
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB3_8
	l.nop	0
	l.j	.LBB3_7
	l.nop	0
.LBB3_35:
	l.addi	r18, r18, 1150
	l.sfgtsi	r13, 0
	l.addi	r20, r20, 920           # CFC
	l.bf	.LBB3_11
	l.nop	0
.LBB3_36:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_24
	l.nop	0
	l.sfgtsi	r3, 0
	l.bf	.LBB3_11
	l.nop	0
	l.j	.LBB3_10
	l.nop	0
.LBB3_37:
	l.addi	r18, r18, 1160
	l.sfeqi	r17, 4
	l.addi	r20, r20, 928           # CFC
	l.bf	.LBB3_39
	l.nop	0
.LBB3_38:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_24
	l.nop	0
	l.sfeqi	r7, 4
	l.bf	.LBB3_39
	l.nop	0
	l.j	.LBB3_40
	l.nop	0
.LBB3_39:
	l.addi	r18, r18, 245
	l.addi	r20, r20, 490           # CFC
	l.ori	r7, r3, 0
	l.addi	r28, r28, 1470
	l.ori	r17, r13, 0
	l.addi	r18, r18, 1225
	l.ori	r27, r23, 0
	l.addi	r20, r20, 980           # CFC
	l.j	.LBB3_13
	l.nop	0
.LBB3_41:
	l.addi	r18, r18, 1175
	l.sfeqi	r16, 0
	l.addi	r20, r20, 940           # CFC
	l.bf	.LBB3_15
	l.nop	0
.LBB3_42:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_24
	l.nop	0
	l.sfeqi	r6, 0
	l.bf	.LBB3_15
	l.nop	0
	l.j	.LBB3_14
	l.nop	0
.LBB3_43:
	l.addi	r18, r18, 1185
	l.sfeqi	r16, 0
	l.addi	r20, r20, 948           # CFC
	l.bf	.LBB3_19
	l.nop	0
.LBB3_44:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_24
	l.nop	0
	l.sfeqi	r6, 0
	l.bf	.LBB3_19
	l.nop	0
	l.j	.LBB3_16
	l.nop	0
.LBB3_45:
	l.addi	r18, r18, 1190
	l.sfeqi	r15, 255
	l.addi	r20, r20, 952           # CFC
	l.bf	.LBB3_18
	l.nop	0
.LBB3_46:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_24
	l.nop	0
	l.sfeqi	r5, 255
	l.bf	.LBB3_18
	l.nop	0
	l.j	.LBB3_17
	l.nop	0
.LBB3_47:
	l.addi	r18, r18, 1205
	l.sfeqi	r16, 0
	l.addi	r20, r20, 964           # CFC
	l.bf	.LBB3_21
	l.nop	0
.LBB3_48:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_24
	l.nop	0
	l.sfeqi	r6, 0
	l.bf	.LBB3_21
	l.nop	0
	l.j	.LBB3_20
	l.nop	0
.LBB3_49:
	l.sfnei	r15, 255
	l.bf	.LBB3_23
	l.nop	0
.LBB3_50:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB3_24
	l.nop	0
	l.sfnei	r5, 255
	l.bf	.LBB3_23
	l.nop	0
	l.j	.LBB3_22
	l.nop	0
.Lfunc_end3:
	.size	__floatsisf, .Lfunc_end3-__floatsisf

	.hidden	int_init
	.globl	int_init
	.p2align	2
	.type	int_init,@function
int_init:                               # @int_init
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 246
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r20, r20, 492           # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -8
	l.movhi	r3, hi(int_handlers)
	l.sw	4348(r10), r19
	l.sw	4344(r10), r12
	l.addi	r12, r10, 0
	l.ori	r3, r3, lo(int_handlers)
	l.addi	r10, r10, -8
	l.sw	8700(r21), r29
	l.addi	r5, r0, 256
	l.movhi	r13, hi(int_handlers)
	l.sw	8696(r21), r22
	l.addi	r28, r28, 1476
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
	l.addi	r18, r18, 1230
	l.movhi	r11, 0
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.movhi	r8, 0
	l.addi	r10, r12, 0
	l.lwz	r12, 4344(r10)
	l.lwz	r19, 4348(r10)
	l.movhi	r31, 0
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8696(r21)
	l.lwz	r29, 8700(r21)
	l.addi	r20, r20, 984           # CFC
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
	.size	int_init, .Lfunc_end4-int_init

	.hidden	int_add
	.globl	int_add
	.p2align	2
	.type	int_add,@function
int_add:                                # @int_add
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 247
	l.addi	r20, r20, 494           # CFC
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.addi	r11, r0, -1
	l.sfgtui	r3, 31
	l.sw	4348(r10), r19
	l.addi	r28, r28, 1482
	l.sw	4344(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -16
	l.addi	r8, r0, -1
	l.sw	8700(r21), r29
	l.sw	8696(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -16           # CFC
	l.addi	r31, r0, -1
	l.bf	.LBB5_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1235
	l.sfgtui	r13, 31
	l.addi	r20, r20, 988           # CFC
	l.bf	.LBB5_5
	l.nop	0
.LBB5_1:                                # %if.end
	l.addi	r18, r18, 248
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
	l.sw	4352(r16), r14
	l.ori	r26, r26, lo(int_handlers)
	l.addi	r20, r20, 496           # CFC
	l.add	r4, r7, r4
	l.movhi	r14, hi(int_handlers+4)
	l.slli	r27, r23, 3
	l.sw	0(r4), r5
	l.ori	r14, r14, lo(int_handlers+4)
	l.add	r26, r27, r26
	l.addi	r4, r0, 1
	l.add	r14, r17, r14
	l.sw	8704(r26), r24
	l.sll	r3, r4, r3
	l.sw	4352(r14), r15
	l.movhi	r24, hi(int_handlers+4)
	l.sw	-12(r2), r3
	l.addi	r14, r0, 1
	l.addi	r28, r28, 1488
	l.ori	r24, r24, lo(int_handlers+4)
	l.addi	r3, r0, 18432
	l.sll	r13, r14, r13
	l.add	r24, r27, r24
	l.sw	-16(r2), r3
	l.sw	4340(r12), r13
	l.sw	8704(r24), r25
	l.addi	r13, r0, 18432
	l.sw	4336(r12), r13
	l.addi	r24, r0, 1
	l.sll	r23, r24, r23
	l.sw	8692(r22), r23
	l.addi	r23, r0, 18432
	l.sw	8688(r22), r23
	l.addi	r18, r18, 1240
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.lwz	r3, -12(r2)
	l.or	r4, r11, r3
	l.lwz	r3, -16(r2)
	l.lwz	r13, 4340(r12)
	l.or	r14, r8, r13
	l.lwz	r13, 4336(r12)
	l.lwz	r23, 8692(r22)
	l.or	r24, r31, r23
	l.lwz	r23, 8688(r22)
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r11, 0
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.addi	r20, r20, 992           # CFC
.LBB5_2:                                # %return
	l.addi	r18, r18, 249
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 498           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 1494
	l.lwz	r12, 4344(r10)
	l.lwz	r19, 4348(r10)
	l.addi	r18, r18, 1245
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8696(r21)
	l.lwz	r29, 8700(r21)
	l.addi	r20, r20, 996           # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB5_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB5_3:                                # %return
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
	l.addi	r18, r18, 1235
	l.sfgtui	r13, 31
	l.addi	r20, r20, 988           # CFC
	l.bf	.LBB5_2
	l.nop	0
.LBB5_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB5_3
	l.nop	0
	l.sfgtui	r3, 31
	l.bf	.LBB5_2
	l.nop	0
	l.j	.LBB5_1
	l.nop	0
.Lfunc_end5:
	.size	int_add, .Lfunc_end5-int_add

	.hidden	int_disable
	.globl	int_disable
	.p2align	2
	.type	int_disable,@function
int_disable:                            # @int_disable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 250
	l.addi	r20, r20, 500           # CFC
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.addi	r11, r0, -1
	l.sfgtui	r3, 31
	l.sw	4348(r10), r19
	l.addi	r28, r28, 1500
	l.sw	4344(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -16
	l.addi	r8, r0, -1
	l.sw	8700(r21), r29
	l.sw	8696(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -16           # CFC
	l.addi	r31, r0, -1
	l.bf	.LBB6_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1250
	l.sfgtui	r13, 31
	l.addi	r20, r20, 1000          # CFC
	l.bf	.LBB6_5
	l.nop	0
.LBB6_1:                                # %if.end
	l.addi	r18, r18, 251
	l.addi	r4, r0, 1
	l.sll	r3, r4, r3
	l.xori	r3, r3, -1
	l.sw	-12(r2), r3
	l.addi	r3, r0, 18432
	l.addi	r14, r0, 1
	l.sll	r13, r14, r13
	l.xori	r13, r13, -1
	l.addi	r20, r20, 502           # CFC
	l.sw	-16(r2), r3
	l.sw	4340(r12), r13
	l.addi	r24, r0, 1
	l.addi	r13, r0, 18432
	l.sw	4336(r12), r13
	l.sll	r23, r24, r23
	l.xori	r23, r23, -1
	l.sw	8692(r22), r23
	l.addi	r28, r28, 1506
	l.addi	r23, r0, 18432
	l.sw	8688(r22), r23
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.lwz	r3, -12(r2)
	l.and	r4, r11, r3
	l.lwz	r3, -16(r2)
	l.lwz	r13, 4340(r12)
	l.and	r14, r8, r13
	l.addi	r18, r18, 1255
	l.lwz	r13, 4336(r12)
	l.lwz	r23, 8692(r22)
	l.and	r24, r31, r23
	l.lwz	r23, 8688(r22)
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r11, 0
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.addi	r20, r20, 1004          # CFC
.LBB6_2:                                # %return
	l.addi	r18, r18, 252
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 504           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 1512
	l.lwz	r12, 4344(r10)
	l.lwz	r19, 4348(r10)
	l.addi	r18, r18, 1260
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8696(r21)
	l.lwz	r29, 8700(r21)
	l.addi	r20, r20, 1008          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB6_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB6_3:                                # %return
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
	l.addi	r18, r18, 1250
	l.sfgtui	r13, 31
	l.addi	r20, r20, 1000          # CFC
	l.bf	.LBB6_2
	l.nop	0
.LBB6_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB6_3
	l.nop	0
	l.sfgtui	r3, 31
	l.bf	.LBB6_2
	l.nop	0
	l.j	.LBB6_1
	l.nop	0
.Lfunc_end6:
	.size	int_disable, .Lfunc_end6-int_disable

	.hidden	int_enable
	.globl	int_enable
	.p2align	2
	.type	int_enable,@function
int_enable:                             # @int_enable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 253
	l.addi	r20, r20, 506           # CFC
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.addi	r11, r0, -1
	l.sfgtui	r3, 31
	l.sw	4348(r10), r19
	l.addi	r28, r28, 1518
	l.sw	4344(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -16
	l.addi	r8, r0, -1
	l.sw	8700(r21), r29
	l.sw	8696(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -16           # CFC
	l.addi	r31, r0, -1
	l.bf	.LBB7_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1265
	l.sfgtui	r13, 31
	l.addi	r20, r20, 1012          # CFC
	l.bf	.LBB7_5
	l.nop	0
.LBB7_1:                                # %if.end
	l.addi	r18, r18, 254
	l.addi	r4, r0, 1
	l.sll	r3, r4, r3
	l.sw	-12(r2), r3
	l.addi	r3, r0, 18432
	l.sw	-16(r2), r3
	l.addi	r14, r0, 1
	l.sll	r13, r14, r13
	l.addi	r20, r20, 508           # CFC
	l.sw	4340(r12), r13
	l.addi	r13, r0, 18432
	l.sw	4336(r12), r13
	l.addi	r24, r0, 1
	l.sll	r23, r24, r23
	l.sw	8692(r22), r23
	l.addi	r23, r0, 18432
	l.addi	r28, r28, 1524
	l.sw	8688(r22), r23
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.lwz	r3, -12(r2)
	l.or	r4, r11, r3
	l.lwz	r3, -16(r2)
	l.lwz	r13, 4340(r12)
	l.or	r14, r8, r13
	l.addi	r18, r18, 1270
	l.lwz	r13, 4336(r12)
	l.lwz	r23, 8692(r22)
	l.or	r24, r31, r23
	l.lwz	r23, 8688(r22)
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r11, 0
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.addi	r20, r20, 1016          # CFC
.LBB7_2:                                # %return
	l.addi	r18, r18, 255
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 510           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 1530
	l.lwz	r12, 4344(r10)
	l.lwz	r19, 4348(r10)
	l.addi	r18, r18, 1275
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8696(r21)
	l.lwz	r29, 8700(r21)
	l.addi	r20, r20, 1020          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB7_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB7_3:                                # %return
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
	l.addi	r18, r18, 1265
	l.sfgtui	r13, 31
	l.addi	r20, r20, 1012          # CFC
	l.bf	.LBB7_2
	l.nop	0
.LBB7_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB7_3
	l.nop	0
	l.sfgtui	r3, 31
	l.bf	.LBB7_2
	l.nop	0
	l.j	.LBB7_1
	l.nop	0
.Lfunc_end7:
	.size	int_enable, .Lfunc_end7-int_enable

	.hidden	int_main
	.globl	int_main
	.p2align	2
	.type	int_main,@function
int_main:                               # @int_main
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 256
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r20, r20, 512           # CFC
	l.addi	r1, r1, -28
	l.addi	r3, r0, 18434
	l.sw	4348(r10), r19
	l.sw	4344(r10), r12
	l.addi	r12, r10, 0
	l.sw	-12(r2), r3
	l.addi	r10, r10, -28
	l.sw	8700(r21), r29
	l.addi	r13, r0, 18434
	l.sw	4340(r12), r13
	l.sw	8696(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -28           # CFC
	l.addi	r28, r28, 1536
	l.addi	r23, r0, 18434
	l.sw	8692(r22), r23
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.sw	-28(r2), r11
	l.lwz	r3, -12(r2)
	l.movhi	r4, 0
	l.sw	4324(r12), r8
	l.lwz	r13, 4340(r12)
	l.movhi	r14, 0
	l.sw	8676(r22), r31
	l.lwz	r23, 8692(r22)
	l.movhi	r24, 0
	l.addi	r18, r18, 1280
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r6, 0
	l.lwz	r5, -28(r2)
	l.movhi	r3, hi(int_handlers+4)
	l.ori	r7, r3, lo(int_handlers+4)
	l.movhi	r16, 0
	l.lwz	r15, 4324(r12)
	l.movhi	r13, hi(int_handlers+4)
	l.ori	r17, r13, lo(int_handlers+4)
	l.movhi	r26, 0
	l.lwz	r25, 8676(r22)
	l.movhi	r23, hi(int_handlers+4)
	l.ori	r27, r23, lo(int_handlers+4)
	l.addi	r20, r20, 1024          # CFC
.LBB8_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 257
	l.addi	r3, r0, 1
	l.sll	r11, r3, r6
	l.and	r3, r11, r5
	l.addi	r20, r20, 514           # CFC
	l.sfeqi	r3, 0
	l.addi	r13, r0, 1
	l.sll	r8, r13, r16
	l.addi	r28, r28, 1542
	l.and	r13, r8, r15
	l.addi	r23, r0, 1
	l.sll	r31, r23, r26
	l.and	r23, r31, r25
	l.bf	.LBB8_7
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1285
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1028          # CFC
	l.bf	.LBB8_8
	l.nop	0
.LBB8_2:                                # %land.lhs.true
                                        #   in Loop: Header=BB8_1 Depth=1
	l.addi	r18, r18, 258
	l.lwz	r4, -4(r7)
	l.addi	r20, r20, 516           # CFC
	l.sfeqi	r4, 0
	l.addi	r28, r28, 1548
	l.lwz	r14, 4348(r17)
	l.lwz	r24, 8700(r27)
	l.bf	.LBB8_9
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1290
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1032          # CFC
	l.bf	.LBB8_10
	l.nop	0
.LBB8_3:                                # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	l.addi	r18, r18, 259
	l.lwz	r3, 0(r7)
	l.sw	-12(r2), r6
	l.sw	-16(r2), r7
	l.sw	-20(r2), r11
	l.lwz	r13, 4352(r17)
	l.sw	4340(r12), r16
	l.sw	4336(r12), r17
	l.sw	4332(r12), r8
	l.lwz	r23, 8704(r27)
	l.sw	8692(r22), r26
	l.addi	r20, r20, 518           # CFC
	l.sw	8688(r22), r27
	l.sw	8684(r22), r31
	l.sfne	r4, r14
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB8_6
	l.nop	0
	l.jalr	r4
	l.nop	0                       # in delay slot
	l.addi	r3, r0, 18434
	l.sw	-24(r2), r3
	l.addi	r13, r0, 18434
	l.sw	4328(r12), r13
	l.addi	r23, r0, 18434
	l.sw	8680(r22), r23
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.lwz	r3, -20(r2)
	l.addi	r28, r28, 1554
	l.xori	r3, r3, -1
	l.and	r4, r11, r3
	l.lwz	r3, -24(r2)
	l.lwz	r13, 4332(r12)
	l.xori	r13, r13, -1
	l.and	r14, r8, r13
	l.lwz	r13, 4328(r12)
	l.lwz	r23, 8684(r22)
	l.xori	r23, r23, -1
	l.and	r24, r31, r23
	l.addi	r18, r18, 1295
	l.lwz	r23, 8680(r22)
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.lwz	r7, -16(r2)
	l.lwz	r6, -12(r2)
	l.lwz	r5, -28(r2)
	l.lwz	r17, 4336(r12)
	l.lwz	r16, 4340(r12)
	l.lwz	r15, 4324(r12)
	l.lwz	r27, 8688(r22)
	l.lwz	r26, 8692(r22)
	l.lwz	r25, 8676(r22)
	l.addi	r20, r20, 1036          # CFC
.LBB8_4:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	l.addi	r18, r18, 260
	l.addi	r7, r7, 8
	l.addi	r6, r6, 1
	l.addi	r20, r20, 520           # CFC
	l.sfnei	r6, 32
	l.addi	r17, r17, 8
	l.addi	r28, r28, 1560
	l.addi	r16, r16, 1
	l.addi	r27, r27, 8
	l.addi	r26, r26, 1
	l.bf	.LBB8_11
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1300
	l.sfnei	r16, 32
	l.addi	r20, r20, 1040          # CFC
	l.bf	.LBB8_12
	l.nop	0
.LBB8_5:                                # %while.end
                                        #   in Loop: Header=BB8_1 Depth=1
	l.addi	r18, r18, 261
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 522           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 1566
	l.lwz	r12, 4344(r10)
	l.lwz	r19, 4348(r10)
	l.addi	r18, r18, 1305
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8696(r21)
	l.lwz	r29, 8700(r21)
	l.addi	r20, r20, 1044          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB8_6
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB8_6:                                # %while.end
                                        #   in Loop: Header=BB8_1 Depth=1
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB8_13
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB8_13
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB8_13
	l.nop	0
	l.nop	205
.LBB8_13:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB8_14
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB8_14
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB8_14
	l.nop	0
	l.nop	205
.LBB8_14:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB8_15
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB8_15
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB8_15
	l.nop	0
	l.nop	205
.LBB8_15:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB8_16
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB8_16
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB8_16
	l.nop	0
	l.nop	205
.LBB8_16:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB8_17
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB8_17
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB8_17
	l.nop	0
	l.nop	205
.LBB8_17:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB8_18
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB8_18
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB8_18
	l.nop	0
	l.nop	205
.LBB8_18:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB8_19
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB8_19
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB8_19
	l.nop	0
	l.nop	205
.LBB8_19:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB8_20
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB8_20
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB8_20
	l.nop	0
	l.nop	205
.LBB8_20:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB8_21
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB8_21
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB8_21
	l.nop	0
	l.nop	205
.LBB8_21:
.LBB8_22:
	l.jr	r30
	l.nop	0
.LBB8_7:                                #   in Loop: Header=BB8_1 Depth=1
	l.addi	r18, r18, 1285
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1028          # CFC
	l.bf	.LBB8_4
	l.nop	0
.LBB8_8:                                #   in Loop: Header=BB8_1 Depth=1
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_6
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB8_4
	l.nop	0
	l.j	.LBB8_2
	l.nop	0
.LBB8_9:                                #   in Loop: Header=BB8_1 Depth=1
	l.addi	r18, r18, 1290
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1032          # CFC
	l.bf	.LBB8_4
	l.nop	0
.LBB8_10:                               #   in Loop: Header=BB8_1 Depth=1
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_6
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB8_4
	l.nop	0
	l.j	.LBB8_3
	l.nop	0
.LBB8_11:                               #   in Loop: Header=BB8_1 Depth=1
	l.addi	r18, r18, 1300
	l.sfnei	r16, 32
	l.addi	r20, r20, 1040          # CFC
	l.bf	.LBB8_1
	l.nop	0
.LBB8_12:                               #   in Loop: Header=BB8_1 Depth=1
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB8_6
	l.nop	0
	l.sfnei	r6, 32
	l.bf	.LBB8_1
	l.nop	0
	l.j	.LBB8_5
	l.nop	0
.Lfunc_end8:
	.size	int_main, .Lfunc_end8-int_main

	.hidden	int_clear_all_pending
	.globl	int_clear_all_pending
	.p2align	2
	.type	int_clear_all_pending,@function
int_clear_all_pending:                  # @int_clear_all_pending
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 262
	l.addi	r20, r20, 524           # CFC
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -8
	l.addi	r3, r0, 18434
	l.sw	4348(r10), r19
	l.sw	4344(r10), r12
	l.addi	r12, r10, 0
	l.movhi	r4, 0
	l.addi	r28, r28, 1572
	l.addi	r10, r10, -8
	l.sw	8700(r21), r29
	l.addi	r13, r0, 18434
	l.movhi	r14, 0
	l.sw	8696(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -8            # CFC
	l.addi	r23, r0, 18434
	l.movhi	r24, 0
	l.addi	r18, r18, 1310
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 4344(r10)
	l.lwz	r19, 4348(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8696(r21)
	l.lwz	r29, 8700(r21)
	l.addi	r20, r20, 1048          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB9_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB9_1:                                # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB9_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB9_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB9_2
	l.nop	0
	l.nop	205
.LBB9_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB9_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB9_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB9_3
	l.nop	0
	l.nop	205
.LBB9_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB9_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB9_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB9_4
	l.nop	0
	l.nop	205
.LBB9_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB9_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB9_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB9_5
	l.nop	0
	l.nop	205
.LBB9_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB9_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB9_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB9_6
	l.nop	0
	l.nop	205
.LBB9_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB9_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB9_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB9_7
	l.nop	0
	l.nop	205
.LBB9_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB9_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB9_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB9_8
	l.nop	0
	l.nop	205
.LBB9_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB9_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB9_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB9_9
	l.nop	0
	l.nop	205
.LBB9_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB9_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB9_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB9_10
	l.nop	0
	l.nop	205
.LBB9_10:
.LBB9_11:
	l.jr	r30
	l.nop	0
.Lfunc_end9:
	.size	int_clear_all_pending, .Lfunc_end9-int_clear_all_pending

	.hidden	memcpy
	.globl	memcpy
	.p2align	2
	.type	memcpy,@function
memcpy:                                 # @memcpy
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 263
	l.addi	r20, r20, 526           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sfeqi	r5, 0
	l.addi	r28, r28, 1578
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.sw	8700(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.bf	.LBB10_5
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1315
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1052          # CFC
	l.bf	.LBB10_6
	l.nop	0
.LBB10_1:                               # %while.body.preheader
	l.addi	r18, r18, 264
	l.addi	r20, r20, 528           # CFC
	l.ori	r6, r3, 0
	l.addi	r28, r28, 1584
	l.ori	r16, r13, 0
	l.addi	r18, r18, 1320
	l.ori	r26, r23, 0
	l.addi	r20, r20, 1056          # CFC
.LBB10_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 265
	l.lbz	r7, 0(r4)
	l.sb	0(r6), r7
	l.addi	r6, r6, 1
	l.addi	r4, r4, 1
	l.addi	r5, r5, -1
	l.addi	r20, r20, 530           # CFC
	l.sfnei	r5, 0
	l.lbz	r17, 4352(r14)
	l.sb	4352(r16), r17
	l.addi	r16, r16, 1
	l.addi	r14, r14, 1
	l.addi	r28, r28, 1590
	l.addi	r15, r15, -1
	l.lbz	r27, 8704(r24)
	l.sb	8704(r26), r27
	l.addi	r26, r26, 1
	l.addi	r24, r24, 1
	l.addi	r25, r25, -1
	l.bf	.LBB10_7
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1325
	l.sfnei	r15, 0
	l.addi	r20, r20, 1060          # CFC
	l.bf	.LBB10_8
	l.nop	0
.LBB10_3:                               # %while.end
	l.addi	r18, r18, 266
	l.ori	r11, r3, 0
	l.addi	r1, r2, 0
	l.addi	r20, r20, 532           # CFC
	l.lwz	r2, -4(r1)
	l.ori	r8, r13, 0
	l.addi	r28, r28, 1596
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.addi	r18, r18, 1330
	l.ori	r31, r23, 0
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 1064          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB10_4
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB10_4:                               # %while.end
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB10_9
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB10_9
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB10_9
	l.nop	0
	l.nop	205
.LBB10_9:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB10_10
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB10_10
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB10_10
	l.nop	0
	l.nop	205
.LBB10_10:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB10_11
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB10_11
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB10_11
	l.nop	0
	l.nop	205
.LBB10_11:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB10_12
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB10_12
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB10_12
	l.nop	0
	l.nop	205
.LBB10_12:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB10_13
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB10_13
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB10_13
	l.nop	0
	l.nop	205
.LBB10_13:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB10_14
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB10_14
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB10_14
	l.nop	0
	l.nop	205
.LBB10_14:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB10_15
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB10_15
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB10_15
	l.nop	0
	l.nop	205
.LBB10_15:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB10_16
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB10_16
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB10_16
	l.nop	0
	l.nop	205
.LBB10_16:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB10_17
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB10_17
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB10_17
	l.nop	0
	l.nop	205
.LBB10_17:
.LBB10_18:
	l.jr	r30
	l.nop	0
.LBB10_5:
	l.addi	r18, r18, 1315
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1052          # CFC
	l.bf	.LBB10_3
	l.nop	0
.LBB10_6:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_4
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB10_3
	l.nop	0
	l.j	.LBB10_1
	l.nop	0
.LBB10_7:
	l.addi	r18, r18, 1325
	l.sfnei	r15, 0
	l.addi	r20, r20, 1060          # CFC
	l.bf	.LBB10_2
	l.nop	0
.LBB10_8:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB10_4
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB10_2
	l.nop	0
	l.j	.LBB10_3
	l.nop	0
.Lfunc_end10:
	.size	memcpy, .Lfunc_end10-memcpy

	.hidden	strlen
	.globl	strlen
	.p2align	2
	.type	strlen,@function
strlen:                                 # @strlen
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 267
	l.addi	r20, r20, 534           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r28, r28, 1602
	l.addi	r4, r3, -1
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.addi	r18, r18, 1335
	l.addi	r14, r13, -1
	l.sw	8700(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.addi	r24, r23, -1
	l.addi	r20, r20, 1068          # CFC
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 268
	l.addi	r5, r4, 1
	l.lbz	r4, 1(r4)
	l.addi	r20, r20, 536           # CFC
	l.sfnei	r4, 0
	l.addi	r15, r14, 1
	l.addi	r28, r28, 1608
	l.lbz	r14, 4353(r14)
	l.addi	r25, r24, 1
	l.lbz	r24, 8705(r24)
	l.bf	.LBB11_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1340
	l.sfnei	r14, 0
	l.addi	r20, r20, 1072          # CFC
	l.bf	.LBB11_5
	l.nop	0
.LBB11_7:
	l.addi	r18, r18, 269
	l.addi	r20, r20, 538           # CFC
	l.ori	r4, r5, 0
	l.addi	r28, r28, 1614
	l.ori	r14, r15, 0
	l.addi	r18, r18, 1345
	l.ori	r24, r25, 0
	l.addi	r20, r20, 1076          # CFC
.LBB11_2:                               # %for.end
	l.addi	r18, r18, 270
	l.sub	r11, r5, r3
	l.addi	r1, r2, 0
	l.addi	r20, r20, 540           # CFC
	l.lwz	r2, -4(r1)
	l.sub	r8, r15, r13
	l.addi	r28, r28, 1620
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.addi	r18, r18, 1350
	l.sub	r31, r25, r23
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 1080          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB11_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB11_3:                               # %for.end
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB11_8
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB11_8
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB11_8
	l.nop	0
	l.nop	205
.LBB11_8:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB11_9
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB11_9
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB11_9
	l.nop	0
	l.nop	205
.LBB11_9:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB11_10
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB11_10
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB11_10
	l.nop	0
	l.nop	205
.LBB11_10:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB11_11
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB11_11
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB11_11
	l.nop	0
	l.nop	205
.LBB11_11:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB11_12
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB11_12
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB11_12
	l.nop	0
	l.nop	205
.LBB11_12:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB11_13
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB11_13
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB11_13
	l.nop	0
	l.nop	205
.LBB11_13:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB11_14
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB11_14
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB11_14
	l.nop	0
	l.nop	205
.LBB11_14:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB11_15
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB11_15
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB11_15
	l.nop	0
	l.nop	205
.LBB11_15:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB11_16
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB11_16
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB11_16
	l.nop	0
	l.nop	205
.LBB11_16:
.LBB11_17:
	l.jr	r30
	l.nop	0
.LBB11_4:
	l.addi	r18, r18, 1340
	l.sfnei	r14, 0
	l.addi	r20, r20, 1072          # CFC
	l.bf	.LBB11_6
	l.nop	0
.LBB11_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB11_3
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB11_6
	l.nop	0
	l.j	.LBB11_7
	l.nop	0
.LBB11_6:
	l.addi	r18, r18, 271
	l.addi	r20, r20, 542           # CFC
	l.ori	r4, r5, 0
	l.addi	r28, r28, 1626
	l.ori	r14, r15, 0
	l.addi	r18, r18, 1355
	l.ori	r24, r25, 0
	l.addi	r20, r20, 1084          # CFC
	l.j	.LBB11_1
	l.nop	0
.Lfunc_end11:
	.size	strlen, .Lfunc_end11-strlen

	.hidden	memchr
	.globl	memchr
	.p2align	2
	.type	memchr,@function
memchr:                                 # @memchr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 272
	l.addi	r20, r20, 544           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r11, 0
	l.sfeqi	r5, 0
	l.sw	4348(r10), r12
	l.addi	r28, r28, 1632
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.movhi	r8, 0
	l.sw	8700(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r31, 0
	l.bf	.LBB12_6
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1360
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1088          # CFC
	l.bf	.LBB12_7
	l.nop	0
.LBB12_1:                               # %while.body.lr.ph
	l.addi	r18, r18, 273
	l.addi	r20, r20, 546           # CFC
	l.andi	r4, r4, 255
	l.addi	r28, r28, 1638
	l.andi	r14, r14, 255
	l.addi	r18, r18, 1365
	l.andi	r24, r24, 255
	l.addi	r20, r20, 1092          # CFC
.LBB12_2:                               # %while.body
	l.addi	r18, r18, 274
	l.lbz	r6, 0(r3)
	l.sfeq	r6, r4
	l.addi	r20, r20, 548           # CFC
	l.ori	r11, r3, 0
	l.lbz	r16, 4352(r13)
	l.addi	r28, r28, 1644
	l.ori	r8, r13, 0
	l.lbz	r26, 8704(r23)
	l.ori	r31, r23, 0
	l.bf	.LBB12_8
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1370
	l.sfeq	r16, r14
	l.addi	r20, r20, 1096          # CFC
	l.bf	.LBB12_9
	l.nop	0
.LBB12_3:                               # %if.end
	l.addi	r18, r18, 275
	l.addi	r3, r3, 1
	l.addi	r5, r5, -1
	l.sfnei	r5, 0
	l.addi	r20, r20, 550           # CFC
	l.movhi	r11, 0
	l.addi	r13, r13, 1
	l.addi	r15, r15, -1
	l.addi	r28, r28, 1650
	l.movhi	r8, 0
	l.addi	r23, r23, 1
	l.addi	r25, r25, -1
	l.movhi	r31, 0
	l.bf	.LBB12_10
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1375
	l.sfnei	r15, 0
	l.addi	r20, r20, 1100          # CFC
	l.bf	.LBB12_11
	l.nop	0
.LBB12_4:                               # %cleanup
	l.addi	r18, r18, 276
	l.addi	r1, r2, 0
	l.addi	r20, r20, 552           # CFC
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 1656
	l.lwz	r12, 4348(r10)
	l.addi	r18, r18, 1380
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 1104          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB12_5
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB12_5:                               # %cleanup
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB12_12
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB12_12
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB12_12
	l.nop	0
	l.nop	205
.LBB12_12:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB12_13
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB12_13
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB12_13
	l.nop	0
	l.nop	205
.LBB12_13:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB12_14
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB12_14
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB12_14
	l.nop	0
	l.nop	205
.LBB12_14:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB12_15
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB12_15
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB12_15
	l.nop	0
	l.nop	205
.LBB12_15:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB12_16
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB12_16
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB12_16
	l.nop	0
	l.nop	205
.LBB12_16:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB12_17
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB12_17
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB12_17
	l.nop	0
	l.nop	205
.LBB12_17:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB12_18
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB12_18
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB12_18
	l.nop	0
	l.nop	205
.LBB12_18:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB12_19
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB12_19
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB12_19
	l.nop	0
	l.nop	205
.LBB12_19:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB12_20
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB12_20
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB12_20
	l.nop	0
	l.nop	205
.LBB12_20:
.LBB12_21:
	l.jr	r30
	l.nop	0
.LBB12_6:
	l.addi	r18, r18, 1360
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1088          # CFC
	l.bf	.LBB12_4
	l.nop	0
.LBB12_7:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB12_5
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB12_4
	l.nop	0
	l.j	.LBB12_1
	l.nop	0
.LBB12_8:
	l.addi	r18, r18, 1370
	l.sfeq	r16, r14
	l.addi	r20, r20, 1096          # CFC
	l.bf	.LBB12_4
	l.nop	0
.LBB12_9:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB12_5
	l.nop	0
	l.sfeq	r6, r4
	l.bf	.LBB12_4
	l.nop	0
	l.j	.LBB12_3
	l.nop	0
.LBB12_10:
	l.addi	r18, r18, 1375
	l.sfnei	r15, 0
	l.addi	r20, r20, 1100          # CFC
	l.bf	.LBB12_2
	l.nop	0
.LBB12_11:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB12_5
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB12_2
	l.nop	0
	l.j	.LBB12_4
	l.nop	0
.Lfunc_end12:
	.size	memchr, .Lfunc_end12-memchr

	.hidden	rand
	.globl	rand
	.p2align	2
	.type	rand,@function
rand:                                   # @rand
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 277
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, hi(rand.lfsr)
	l.ori	r3, r3, lo(rand.lfsr)
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lwz	r4, 0(r3)
	l.movhi	r13, hi(rand.lfsr)
	l.sw	8700(r21), r22
	l.andi	r5, r4, 1
	l.addi	r20, r20, 554           # CFC
	l.ori	r13, r13, lo(rand.lfsr)
	l.addi	r22, r21, 0             # CFC
	l.movhi	r6, 0
	l.lwz	r14, 4352(r13)
	l.addi	r21, r21, -4            # CFC
	l.sub	r5, r6, r5
	l.andi	r15, r14, 1
	l.movhi	r23, hi(rand.lfsr)
	l.movhi	r6, 53248
	l.movhi	r16, 0
	l.ori	r23, r23, lo(rand.lfsr)
	l.ori	r6, r6, 1
	l.sub	r15, r16, r15
	l.lwz	r24, 8704(r23)
	l.and	r5, r5, r6
	l.movhi	r16, 53248
	l.andi	r25, r24, 1
	l.srli	r4, r4, 1
	l.addi	r28, r28, 1662
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
	l.sw	4352(r13), r8
	l.and	r25, r25, r26
	l.lwz	r4, 0(r3)
	l.movhi	r13, hi(rand.period)
	l.srli	r24, r24, 1
	l.addi	r4, r4, 1
	l.addi	r18, r18, 1385
	l.ori	r13, r13, lo(rand.period)
	l.xor	r31, r25, r24
	l.sw	0(r3), r4
	l.lwz	r14, 4352(r13)
	l.sw	8704(r23), r31
	l.addi	r1, r2, 0
	l.addi	r14, r14, 1
	l.movhi	r23, hi(rand.period)
	l.lwz	r2, -4(r1)
	l.sw	4352(r13), r14
	l.ori	r23, r23, lo(rand.period)
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.lwz	r24, 8704(r23)
	l.addi	r24, r24, 1
	l.sw	8704(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 1108          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB13_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB13_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB13_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB13_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB13_2
	l.nop	0
	l.nop	205
.LBB13_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB13_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB13_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB13_3
	l.nop	0
	l.nop	205
.LBB13_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB13_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB13_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB13_4
	l.nop	0
	l.nop	205
.LBB13_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB13_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB13_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB13_5
	l.nop	0
	l.nop	205
.LBB13_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB13_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB13_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB13_6
	l.nop	0
	l.nop	205
.LBB13_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB13_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB13_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB13_7
	l.nop	0
	l.nop	205
.LBB13_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB13_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB13_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB13_8
	l.nop	0
	l.nop	205
.LBB13_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB13_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB13_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB13_9
	l.nop	0
	l.nop	205
.LBB13_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB13_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB13_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB13_10
	l.nop	0
	l.nop	205
.LBB13_10:
.LBB13_11:
	l.jr	r30
	l.nop	0
.Lfunc_end13:
	.size	rand, .Lfunc_end13-rand

	.hidden	mtspr
	.globl	mtspr
	.p2align	2
	.type	mtspr,@function
mtspr:                                  # @mtspr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 278
	l.addi	r20, r20, 556           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r28, r28, 1668
	l.addi	r10, r10, -4
	l.sw	8700(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r18, r18, 1390
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 1112          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB14_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB14_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB14_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB14_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB14_2
	l.nop	0
	l.nop	205
.LBB14_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB14_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB14_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB14_3
	l.nop	0
	l.nop	205
.LBB14_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB14_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB14_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB14_4
	l.nop	0
	l.nop	205
.LBB14_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB14_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB14_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB14_5
	l.nop	0
	l.nop	205
.LBB14_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB14_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB14_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB14_6
	l.nop	0
	l.nop	205
.LBB14_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB14_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB14_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB14_7
	l.nop	0
	l.nop	205
.LBB14_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB14_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB14_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB14_8
	l.nop	0
	l.nop	205
.LBB14_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB14_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB14_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB14_9
	l.nop	0
	l.nop	205
.LBB14_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB14_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB14_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB14_10
	l.nop	0
	l.nop	205
.LBB14_10:
.LBB14_11:
	l.jr	r30
	l.nop	0
.Lfunc_end14:
	.size	mtspr, .Lfunc_end14-mtspr

	.hidden	mfspr
	.globl	mfspr
	.p2align	2
	.type	mfspr,@function
mfspr:                                  # @mfspr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 279
	l.addi	r20, r20, 558           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r28, r28, 1674
	l.addi	r10, r10, -4
	l.sw	8700(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	#APP
	l.mfspr		r11,r3,0
	#NO_APP
	l.addi	r18, r18, 1395
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 1116          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB15_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB15_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB15_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB15_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB15_2
	l.nop	0
	l.nop	205
.LBB15_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB15_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB15_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB15_3
	l.nop	0
	l.nop	205
.LBB15_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB15_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB15_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB15_4
	l.nop	0
	l.nop	205
.LBB15_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB15_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB15_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB15_5
	l.nop	0
	l.nop	205
.LBB15_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB15_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB15_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB15_6
	l.nop	0
	l.nop	205
.LBB15_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB15_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB15_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB15_7
	l.nop	0
	l.nop	205
.LBB15_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB15_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB15_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB15_8
	l.nop	0
	l.nop	205
.LBB15_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB15_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB15_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB15_9
	l.nop	0
	l.nop	205
.LBB15_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB15_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB15_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB15_10
	l.nop	0
	l.nop	205
.LBB15_10:
.LBB15_11:
	l.jr	r30
	l.nop	0
.Lfunc_end15:
	.size	mfspr, .Lfunc_end15-mfspr

	.hidden	sim_putc
	.globl	sim_putc
	.p2align	2
	.type	sim_putc,@function
sim_putc:                               # @sim_putc
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 280
	l.addi	r20, r20, 560           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r28, r28, 1680
	l.addi	r10, r10, -4
	l.sw	8700(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	#APP
	l.addi	r3,r3,0
	#NO_APP
	#APP

	l.sfne	r3, r13
	
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB16_1
	l.nop	0

	l.nop 4
	#NO_APP
	l.addi	r18, r18, 1400
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 1120          # CFC
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
	.size	sim_putc, .Lfunc_end16-sim_putc

	.hidden	report
	.globl	report
	.p2align	2
	.type	report,@function
report:                                 # @report
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 281
	l.addi	r20, r20, 562           # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r28, r28, 1686
	l.addi	r10, r10, -4
	l.sw	8700(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	#APP
	l.addi	r3,r3,0
	#NO_APP
	#APP
	l.nop 2
	#NO_APP
	l.addi	r18, r18, 1405
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 1124          # CFC
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
	.size	report, .Lfunc_end17-report

	.hidden	cpu_enable_user_interrupts
	.globl	cpu_enable_user_interrupts
	.p2align	2
	.type	cpu_enable_user_interrupts,@function
cpu_enable_user_interrupts:             # @cpu_enable_user_interrupts
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 282
	l.sw	-4(r1), r2
	l.addi	r20, r20, 564           # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r3, r0, 17
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.addi	r13, r0, 17
	l.addi	r28, r28, 1692
	l.sw	8700(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.addi	r23, r0, 17
	#APP
	l.mfspr		r4,r3,0
	#NO_APP
	l.ori	r4, r4, 4
	l.ori	r14, r14, 4
	l.addi	r18, r18, 1410
	l.ori	r24, r24, 4
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 1128          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB18_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB18_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB18_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB18_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB18_2
	l.nop	0
	l.nop	205
.LBB18_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB18_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB18_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB18_3
	l.nop	0
	l.nop	205
.LBB18_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB18_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB18_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB18_4
	l.nop	0
	l.nop	205
.LBB18_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB18_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB18_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB18_5
	l.nop	0
	l.nop	205
.LBB18_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB18_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB18_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB18_6
	l.nop	0
	l.nop	205
.LBB18_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB18_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB18_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB18_7
	l.nop	0
	l.nop	205
.LBB18_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB18_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB18_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB18_8
	l.nop	0
	l.nop	205
.LBB18_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB18_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB18_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB18_9
	l.nop	0
	l.nop	205
.LBB18_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB18_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB18_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB18_10
	l.nop	0
	l.nop	205
.LBB18_10:
.LBB18_11:
	l.jr	r30
	l.nop	0
.Lfunc_end18:
	.size	cpu_enable_user_interrupts, .Lfunc_end18-cpu_enable_user_interrupts

	.hidden	cpu_enable_timer
	.globl	cpu_enable_timer
	.p2align	2
	.type	cpu_enable_timer,@function
cpu_enable_timer:                       # @cpu_enable_timer
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 283
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 566           # CFC
	l.movhi	r3, 24576
	l.ori	r3, r3, 1000
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.addi	r4, r0, 20480
	l.movhi	r13, 24576
	l.sw	8700(r21), r22
	l.ori	r13, r13, 1000
	l.addi	r14, r0, 20480
	l.addi	r28, r28, 1698
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
	l.addi	r18, r18, 1415
	l.ori	r4, r4, 2
	l.ori	r14, r14, 2
	l.ori	r24, r24, 2
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 1132          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB19_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB19_1:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB19_2
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB19_2
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB19_2
	l.nop	0
	l.nop	205
.LBB19_2:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB19_3
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB19_3
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB19_3
	l.nop	0
	l.nop	205
.LBB19_3:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB19_4
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB19_4
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB19_4
	l.nop	0
	l.nop	205
.LBB19_4:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB19_5
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB19_5
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB19_5
	l.nop	0
	l.nop	205
.LBB19_5:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB19_6
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB19_6
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB19_6
	l.nop	0
	l.nop	205
.LBB19_6:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB19_7
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB19_7
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB19_7
	l.nop	0
	l.nop	205
.LBB19_7:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB19_8
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB19_8
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB19_8
	l.nop	0
	l.nop	205
.LBB19_8:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB19_9
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB19_9
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB19_9
	l.nop	0
	l.nop	205
.LBB19_9:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB19_10
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB19_10
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB19_10
	l.nop	0
	l.nop	205
.LBB19_10:
.LBB19_11:
	l.jr	r30
	l.nop	0
.Lfunc_end19:
	.size	cpu_enable_timer, .Lfunc_end19-cpu_enable_timer

	.hidden	cpu_disable_timer
	.globl	cpu_disable_timer
	.p2align	2
	.type	cpu_disable_timer,@function
cpu_disable_timer:                      # @cpu_disable_timer
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 284
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 568           # CFC
	l.addi	r3, r0, 17
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.addi	r13, r0, 17
	l.sw	8700(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.addi	r23, r0, 17
	#APP
	l.mfspr		r4,r3,0
	#NO_APP
	l.addi	r28, r28, 1704
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
	l.addi	r18, r18, 1420
	l.movhi	r14, 0
	l.addi	r23, r0, 20480
	l.movhi	r24, 0
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 1136          # CFC
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
	.size	cpu_disable_timer, .Lfunc_end20-cpu_disable_timer

	.hidden	cpu_timer_tick
	.globl	cpu_timer_tick
	.p2align	2
	.type	cpu_timer_tick,@function
cpu_timer_tick:                         # @cpu_timer_tick
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 285
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, hi(timer_ticks)
	l.ori	r3, r3, lo(timer_ticks)
	l.addi	r20, r20, 570           # CFC
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lwz	r4, 0(r3)
	l.movhi	r13, hi(timer_ticks)
	l.sw	8700(r21), r22
	l.addi	r4, r4, 1
	l.ori	r13, r13, lo(timer_ticks)
	l.addi	r22, r21, 0             # CFC
	l.sw	0(r3), r4
	l.lwz	r14, 4352(r13)
	l.addi	r21, r21, -4            # CFC
	l.addi	r28, r28, 1710
	l.movhi	r3, 24576
	l.addi	r14, r14, 1
	l.movhi	r23, hi(timer_ticks)
	l.ori	r3, r3, 1000
	l.sw	4352(r13), r14
	l.ori	r23, r23, lo(timer_ticks)
	l.addi	r4, r0, 20480
	l.movhi	r13, 24576
	l.lwz	r24, 8704(r23)
	l.ori	r13, r13, 1000
	l.addi	r14, r0, 20480
	l.addi	r18, r18, 1425
	l.addi	r24, r24, 1
	l.sw	8704(r23), r24
	l.movhi	r23, 24576
	l.ori	r23, r23, 1000
	l.addi	r24, r0, 20480
	#APP
	l.mtspr		r4,r3,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 1140          # CFC
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
	.size	cpu_timer_tick, .Lfunc_end21-cpu_timer_tick

	.hidden	cpu_reset_timer_ticks
	.globl	cpu_reset_timer_ticks
	.p2align	2
	.type	cpu_reset_timer_ticks,@function
cpu_reset_timer_ticks:                  # @cpu_reset_timer_ticks
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 286
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r20, r20, 572           # CFC
	l.addi	r1, r1, -4
	l.movhi	r3, hi(timer_ticks)
	l.ori	r3, r3, lo(timer_ticks)
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.movhi	r4, 0
	l.movhi	r13, hi(timer_ticks)
	l.addi	r28, r28, 1716
	l.sw	8700(r21), r22
	l.sw	0(r3), r4
	l.ori	r13, r13, lo(timer_ticks)
	l.addi	r22, r21, 0             # CFC
	l.addi	r1, r2, 0
	l.movhi	r14, 0
	l.addi	r21, r21, -4            # CFC
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 1430
	l.sw	4352(r13), r14
	l.movhi	r23, hi(timer_ticks)
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.ori	r23, r23, lo(timer_ticks)
	l.movhi	r24, 0
	l.sw	8704(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 1144          # CFC
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
	.size	cpu_reset_timer_ticks, .Lfunc_end22-cpu_reset_timer_ticks

	.hidden	cpu_get_timer_ticks
	.globl	cpu_get_timer_ticks
	.p2align	2
	.type	cpu_get_timer_ticks,@function
cpu_get_timer_ticks:                    # @cpu_get_timer_ticks
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 287
	l.sw	-4(r1), r2
	l.addi	r20, r20, 574           # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, hi(timer_ticks)
	l.ori	r3, r3, lo(timer_ticks)
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lwz	r11, 0(r3)
	l.addi	r28, r28, 1722
	l.movhi	r13, hi(timer_ticks)
	l.sw	8700(r21), r22
	l.addi	r1, r2, 0
	l.ori	r13, r13, lo(timer_ticks)
	l.addi	r22, r21, 0             # CFC
	l.lwz	r2, -4(r1)
	l.lwz	r8, 4352(r13)
	l.addi	r18, r18, 1435
	l.addi	r21, r21, -4            # CFC
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.movhi	r23, hi(timer_ticks)
	l.ori	r23, r23, lo(timer_ticks)
	l.lwz	r31, 8704(r23)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 1148          # CFC
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
	.size	cpu_get_timer_ticks, .Lfunc_end23-cpu_get_timer_ticks

	.hidden	cpu_sleep_10ms
	.globl	cpu_sleep_10ms
	.p2align	2
	.type	cpu_sleep_10ms,@function
cpu_sleep_10ms:                         # @cpu_sleep_10ms
# BB#0:                                 # %while.cond.preheader
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 288
	l.addi	r20, r20, 576           # CFC
	l.sw	-4(r1), r2
	l.addi	r28, r28, 1728
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r18, r18, 1440
	l.addi	r10, r10, -4
	l.sw	8700(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.addi	r20, r20, 1152          # CFC
.LBB24_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	l.j	.LBB24_1
	l.nop	0                       # in delay slot
.LBB24_2:                               # %while.cond
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB24_3
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB24_3
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB24_3
	l.nop	0
	l.nop	205
.LBB24_3:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB24_4
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB24_4
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB24_4
	l.nop	0
	l.nop	205
.LBB24_4:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB24_5
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB24_5
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB24_5
	l.nop	0
	l.nop	205
.LBB24_5:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB24_6
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB24_6
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB24_6
	l.nop	0
	l.nop	205
.LBB24_6:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB24_7
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB24_7
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB24_7
	l.nop	0
	l.nop	205
.LBB24_7:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB24_8
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB24_8
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB24_8
	l.nop	0
	l.nop	205
.LBB24_8:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB24_9
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB24_9
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB24_9
	l.nop	0
	l.nop	205
.LBB24_9:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB24_10
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB24_10
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB24_10
	l.nop	0
	l.nop	205
.LBB24_10:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB24_11
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB24_11
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB24_11
	l.nop	0
	l.nop	205
.LBB24_11:
.LBB24_12:
	l.jr	r30
	l.nop	0
.Lfunc_end24:
	.size	cpu_sleep_10ms, .Lfunc_end24-cpu_sleep_10ms

	.hidden	print_back_to_string
	.globl	print_back_to_string
	.p2align	2
	.type	print_back_to_string,@function
print_back_to_string:                   # @print_back_to_string
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 289
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -20
	l.ori	r11, r3, 0
	l.sw	4348(r10), r19
	l.sw	4344(r10), r12
	l.addi	r12, r10, 0
	l.addi	r20, r20, 578           # CFC
	l.lwz	r5, 0(r5)
	l.addi	r10, r10, -20
	l.sw	8700(r21), r29
	l.sw	-20(r2), r6
	l.ori	r8, r13, 0
	l.sw	8696(r21), r22
	l.lwz	r6, 0(r6)
	l.lwz	r15, 4352(r15)
	l.addi	r22, r21, 0             # CFC
	l.lwz	r3, 0(r7)
	l.sw	4332(r12), r16
	l.addi	r21, r21, -20           # CFC
	l.add	r3, r3, r6
	l.lwz	r16, 4352(r16)
	l.ori	r31, r23, 0
	l.sub	r5, r5, r6
	l.lwz	r13, 4352(r17)
	l.addi	r28, r28, 1734
	l.lwz	r25, 8704(r25)
	l.addi	r6, r5, -1
	l.add	r13, r13, r16
	l.sw	8684(r22), r26
	l.sfgtu	r6, r4
	l.sub	r15, r15, r16
	l.lwz	r26, 8704(r26)
	l.sw	-12(r2), r4
	l.addi	r16, r15, -1
	l.lwz	r23, 8704(r27)
	l.ori	r5, r4, 0
	l.sw	4340(r12), r14
	l.ori	r15, r14, 0
	l.add	r23, r23, r26
	l.sub	r25, r25, r26
	l.addi	r26, r25, -1
	l.sw	8692(r22), r24
	l.ori	r25, r24, 0
	l.bf	.LBB25_6
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1445
	l.sfgtu	r16, r14
	l.addi	r20, r20, 1156          # CFC
	l.bf	.LBB25_7
	l.nop	0
.LBB25_1:                               # %entry
	l.addi	r18, r18, 290
	l.addi	r20, r20, 580           # CFC
	l.ori	r5, r6, 0
	l.addi	r28, r28, 1740
	l.ori	r15, r16, 0
	l.addi	r18, r18, 1450
	l.ori	r25, r26, 0
	l.addi	r20, r20, 1160          # CFC
.LBB25_2:                               # %entry
	l.addi	r18, r18, 291
	l.sw	-16(r2), r5
	l.ori	r4, r11, 0
	l.sw	4336(r12), r15
	l.ori	r14, r8, 0
	l.sw	8688(r22), r25
	l.addi	r20, r20, 582           # CFC
	l.ori	r24, r31, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r5, -16(r2)
	l.movhi	r11, 0
	l.lwz	r3, -12(r2)
	l.sfges	r5, r3
	l.addi	r28, r28, 1746
	l.lwz	r15, 4336(r12)
	l.movhi	r8, 0
	l.lwz	r13, 4340(r12)
	l.lwz	r25, 8688(r22)
	l.movhi	r31, 0
	l.lwz	r23, 8692(r22)
	l.bf	.LBB25_8
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1455
	l.sfges	r15, r13
	l.addi	r20, r20, 1164          # CFC
	l.bf	.LBB25_9
	l.nop	0
.LBB25_3:                               # %cleanup
	l.addi	r18, r18, 292
	l.lwz	r4, -20(r2)
	l.lwz	r3, 0(r4)
	l.add	r3, r3, r5
	l.addi	r20, r20, 584           # CFC
	l.sw	0(r4), r3
	l.addi	r11, r0, 1
	l.lwz	r14, 4332(r12)
	l.lwz	r13, 4352(r14)
	l.addi	r28, r28, 1752
	l.add	r13, r13, r15
	l.sw	4352(r14), r13
	l.addi	r8, r0, 1
	l.lwz	r24, 8684(r22)
	l.addi	r18, r18, 1460
	l.lwz	r23, 8704(r24)
	l.add	r23, r23, r25
	l.sw	8704(r24), r23
	l.addi	r31, r0, 1
	l.addi	r20, r20, 1168          # CFC
.LBB25_4:
	l.addi	r18, r18, 293
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 586           # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 1758
	l.lwz	r12, 4344(r10)
	l.lwz	r19, 4348(r10)
	l.addi	r18, r18, 1465
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8696(r21)
	l.lwz	r29, 8700(r21)
	l.addi	r20, r20, 1172          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB25_5
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB25_5:
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB25_10
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB25_10
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB25_10
	l.nop	0
	l.nop	205
.LBB25_10:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB25_11
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB25_11
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB25_11
	l.nop	0
	l.nop	205
.LBB25_11:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB25_12
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB25_12
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB25_12
	l.nop	0
	l.nop	205
.LBB25_12:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB25_13
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB25_13
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB25_13
	l.nop	0
	l.nop	205
.LBB25_13:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB25_14
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB25_14
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB25_14
	l.nop	0
	l.nop	205
.LBB25_14:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB25_15
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB25_15
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB25_15
	l.nop	0
	l.nop	205
.LBB25_15:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB25_16
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB25_16
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB25_16
	l.nop	0
	l.nop	205
.LBB25_16:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB25_17
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB25_17
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB25_17
	l.nop	0
	l.nop	205
.LBB25_17:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB25_18
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB25_18
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB25_18
	l.nop	0
	l.nop	205
.LBB25_18:
.LBB25_19:
	l.jr	r30
	l.nop	0
.LBB25_6:
	l.addi	r18, r18, 1445
	l.sfgtu	r16, r14
	l.addi	r20, r20, 1156          # CFC
	l.bf	.LBB25_2
	l.nop	0
.LBB25_7:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB25_5
	l.nop	0
	l.sfgtu	r6, r4
	l.bf	.LBB25_2
	l.nop	0
	l.j	.LBB25_1
	l.nop	0
.LBB25_8:
	l.addi	r18, r18, 1455
	l.sfges	r15, r13
	l.addi	r20, r20, 1164          # CFC
	l.bf	.LBB25_4
	l.nop	0
.LBB25_9:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB25_5
	l.nop	0
	l.sfges	r5, r3
	l.bf	.LBB25_4
	l.nop	0
	l.j	.LBB25_3
	l.nop	0
.Lfunc_end25:
	.size	print_back_to_string, .Lfunc_end25-print_back_to_string

	.hidden	vfnprintf
	.globl	vfnprintf
	.p2align	2
	.type	vfnprintf,@function
vfnprintf:                              # @vfnprintf
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 294
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -164
	l.sw	-92(r2), r4
	l.sw	4348(r10), r19
	l.sw	4344(r10), r12
	l.addi	r12, r10, 0
	l.sw	-104(r2), r3
	l.addi	r10, r10, -164
	l.sw	8700(r21), r29
	l.sw	-12(r2), r6
	l.addi	r20, r20, 588           # CFC
	l.sw	4260(r12), r14
	l.sw	8696(r21), r22
	l.movhi	r7, 0
	l.sw	4248(r12), r13
	l.addi	r22, r21, 0             # CFC
	l.addi	r3, r2, -53
	l.sw	4340(r12), r16
	l.addi	r21, r21, -164          # CFC
	l.addi	r4, r3, 39
	l.movhi	r17, 0
	l.sw	8612(r22), r24
	l.sw	-152(r2), r4
	l.addi	r13, r12, -53
	l.sw	8600(r22), r23
	l.addi	r3, r3, 40
	l.addi	r14, r13, 39
	l.sw	8692(r22), r26
	l.sw	-144(r2), r3
	l.sw	4200(r12), r14
	l.movhi	r27, 0
	l.movhi	r11, hi(.L.str.1)
	l.addi	r28, r28, 1764
	l.addi	r13, r13, 40
	l.addi	r23, r22, -53
	l.movhi	r3, hi(vfnprintf.blanks)
	l.sw	4208(r12), r13
	l.addi	r24, r23, 39
	l.ori	r3, r3, lo(vfnprintf.blanks)
	l.movhi	r8, hi(.L.str.1)
	l.sw	8552(r22), r24
	l.sw	-108(r2), r3
	l.movhi	r13, hi(vfnprintf.blanks)
	l.addi	r23, r23, 40
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r13, r13, lo(vfnprintf.blanks)
	l.sw	8560(r22), r23
	l.ori	r3, r3, lo(vfnprintf.zeroes)
	l.sw	4244(r12), r13
	l.movhi	r31, hi(.L.str.1)
	l.sw	-96(r2), r3
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.movhi	r23, hi(vfnprintf.blanks)
	l.movhi	r3, hi(.LJTI26_0)
	l.addi	r18, r18, 1470
	l.ori	r13, r13, lo(vfnprintf.zeroes)
	l.ori	r23, r23, lo(vfnprintf.blanks)
	l.ori	r3, r3, lo(.LJTI26_0)
	l.sw	4256(r12), r13
	l.sw	8596(r22), r23
	l.sw	-72(r2), r3
	l.movhi	r13, hi(.LJTI26_0)
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.movhi	r3, 0
	l.ori	r13, r13, lo(.LJTI26_0)
	l.ori	r23, r23, lo(vfnprintf.zeroes)
	l.sw	-128(r2), r3
	l.sw	4280(r12), r13
	l.sw	8608(r22), r23
	l.movhi	r13, 0
	l.sw	4224(r12), r13
	l.movhi	r23, hi(.LJTI26_0)
	l.ori	r23, r23, lo(.LJTI26_0)
	l.sw	8632(r22), r23
	l.movhi	r23, 0
	l.sw	8576(r22), r23
	l.addi	r20, r20, 1176          # CFC
	l.j	.LBB26_1
	l.nop	0                       # in delay slot
.LBB26_229:                             # %do.end551
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r18, r18, 295
	l.lwz	r7, -76(r2)
	l.lwz	r3, -88(r2)
	l.add	r7, r7, r3
	l.addi	r20, r20, 590           # CFC
	l.movhi	r11, hi(.L.str.1)
	l.lwz	r5, -60(r2)
	l.lwz	r17, 4276(r12)
	l.lwz	r13, 4264(r12)
	l.addi	r28, r28, 1770
	l.add	r17, r17, r13
	l.movhi	r8, hi(.L.str.1)
	l.lwz	r15, 4292(r12)
	l.lwz	r27, 8628(r22)
	l.addi	r18, r18, 1475
	l.lwz	r23, 8616(r22)
	l.add	r27, r27, r23
	l.movhi	r31, hi(.L.str.1)
	l.lwz	r25, 8644(r22)
	l.addi	r20, r20, 1180          # CFC
.LBB26_1:                               # %for.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_2 Depth 2
                                        #       Child Loop BB26_3 Depth 3
                                        #         Child Loop BB26_160 Depth 4
                                        #         Child Loop BB26_188 Depth 4
                                        #         Child Loop BB26_202 Depth 4
                                        #         Child Loop BB26_221 Depth 4
                                        #         Child Loop BB26_116 Depth 4
                                        #         Child Loop BB26_132 Depth 4
                                        #         Child Loop BB26_118 Depth 4
                                        #         Child Loop BB26_42 Depth 4
                                        #         Child Loop BB26_33 Depth 4
	l.addi	r18, r18, 296
	l.addi	r20, r20, 592           # CFC
	l.ori	r6, r7, 0
	l.addi	r28, r28, 1776
	l.ori	r16, r17, 0
	l.addi	r18, r18, 1480
	l.ori	r26, r27, 0
	l.addi	r20, r20, 1184          # CFC
	l.j	.LBB26_2
	l.nop	0                       # in delay slot
.LBB26_62:                              # %sw.bb125
                                        #   in Loop: Header=BB26_2 Depth=2
	l.addi	r18, r18, 297
	l.lwz	r4, -88(r2)
	l.andi	r3, r4, 32
	l.addi	r20, r20, 594           # CFC
	l.sfeqi	r3, 0
	l.lwz	r14, 4264(r12)
	l.addi	r28, r28, 1782
	l.andi	r13, r14, 32
	l.lwz	r24, 8616(r22)
	l.andi	r23, r24, 32
	l.bf	.LBB26_237
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1485
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1188          # CFC
	l.bf	.LBB26_238
	l.nop	0
.LBB26_63:                              # %if.then128
                                        #   in Loop: Header=BB26_2 Depth=2
	l.addi	r18, r18, 298
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.addi	r20, r20, 596           # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 8692(r22)
	l.lwz	r3, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r6, -76(r2)
	l.sw	4340(r12), r14
	l.addi	r24, r0, -4
	l.sw	4(r3), r6
	l.addi	r28, r28, 1788
	l.lwz	r13, 4352(r13)
	l.and	r23, r23, r24
	l.srai	r4, r6, 31
	l.lwz	r16, 4276(r12)
	l.addi	r24, r23, 4
	l.sw	0(r3), r4
	l.sw	4356(r13), r16
	l.sw	8692(r22), r24
	l.lwz	r5, -60(r2)
	l.addi	r18, r18, 1490
	l.srai	r14, r16, 31
	l.lwz	r23, 8704(r23)
	l.sw	4352(r13), r14
	l.lwz	r15, 4292(r12)
	l.lwz	r26, 8628(r22)
	l.sw	8708(r23), r26
	l.srai	r24, r26, 31
	l.sw	8704(r23), r24
	l.lwz	r25, 8644(r22)
	l.addi	r20, r20, 1192          # CFC
.LBB26_2:                               # %for.cond
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB26_3 Depth 3
                                        #         Child Loop BB26_160 Depth 4
                                        #         Child Loop BB26_188 Depth 4
                                        #         Child Loop BB26_202 Depth 4
                                        #         Child Loop BB26_221 Depth 4
                                        #         Child Loop BB26_116 Depth 4
                                        #         Child Loop BB26_132 Depth 4
                                        #         Child Loop BB26_118 Depth 4
                                        #         Child Loop BB26_42 Depth 4
                                        #         Child Loop BB26_33 Depth 4
	l.addi	r18, r18, 299
	l.sw	-60(r2), r5
	l.addi	r20, r20, 598           # CFC
	l.ori	r4, r5, 0
	l.sw	4292(r12), r15
	l.addi	r28, r28, 1794
	l.ori	r14, r15, 0
	l.addi	r18, r18, 1495
	l.sw	8644(r22), r25
	l.ori	r24, r25, 0
	l.addi	r20, r20, 1196          # CFC
.LBB26_3:                               # %while.cond
                                        #   Parent Loop BB26_1 Depth=1
                                        #     Parent Loop BB26_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB26_160 Depth 4
                                        #         Child Loop BB26_188 Depth 4
                                        #         Child Loop BB26_202 Depth 4
                                        #         Child Loop BB26_221 Depth 4
                                        #         Child Loop BB26_116 Depth 4
                                        #         Child Loop BB26_132 Depth 4
                                        #         Child Loop BB26_118 Depth 4
                                        #         Child Loop BB26_42 Depth 4
                                        #         Child Loop BB26_33 Depth 4
	l.addi	r18, r18, 300
	l.ori	r7, r4, 0
	l.movhi	r5, 0
	l.lbz	r3, 0(r7)
	l.addi	r20, r20, 600           # CFC
	l.sfeqi	r3, 0
	l.ori	r17, r14, 0
	l.movhi	r15, 0
	l.addi	r28, r28, 1800
	l.lbz	r13, 4352(r17)
	l.ori	r27, r24, 0
	l.movhi	r25, 0
	l.lbz	r23, 8704(r27)
	l.bf	.LBB26_239
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1500
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1200          # CFC
	l.bf	.LBB26_240
	l.nop	0
.LBB26_4:                               # %while.body
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 301
	l.addi	r5, r0, 1
	l.addi	r4, r7, 1
	l.addi	r20, r20, 602           # CFC
	l.sfnei	r3, 37
	l.addi	r15, r0, 1
	l.addi	r28, r28, 1806
	l.addi	r14, r17, 1
	l.addi	r25, r0, 1
	l.addi	r24, r27, 1
	l.bf	.LBB26_241
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1505
	l.sfnei	r13, 37
	l.addi	r20, r20, 1204          # CFC
	l.bf	.LBB26_242
	l.nop	0
.LBB26_5:                               # %while.end
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 302
	l.sw	-64(r2), r5
	l.lwz	r4, -60(r2)
	l.sub	r3, r7, r4
	l.addi	r20, r20, 604           # CFC
	l.sfeqi	r3, 0
	l.sw	4288(r12), r15
	l.lwz	r14, 4292(r12)
	l.addi	r28, r28, 1812
	l.sub	r13, r17, r14
	l.sw	8640(r22), r25
	l.lwz	r24, 8644(r22)
	l.sub	r23, r27, r24
	l.bf	.LBB26_243
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1510
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1208          # CFC
	l.bf	.LBB26_244
	l.nop	0
.LBB26_6:                               # %if.then6
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 303
	l.ori	r11, r4, 0
	l.sw	-84(r2), r7
	l.ori	r7, r3, 0
	l.lwz	r3, -104(r2)
	l.add	r3, r3, r6
	l.ori	r8, r14, 0
	l.sw	4268(r12), r17
	l.ori	r17, r13, 0
	l.sw	-76(r2), r6
	l.lwz	r13, 4248(r12)
	l.ori	r31, r24, 0
	l.addi	r20, r20, 606           # CFC
	l.lwz	r4, -92(r2)
	l.add	r13, r13, r16
	l.sw	8620(r22), r27
	l.sub	r4, r4, r6
	l.sw	4276(r12), r16
	l.ori	r27, r23, 0
	l.addi	r4, r4, -1
	l.lwz	r14, 4260(r12)
	l.lwz	r23, 8600(r22)
	l.sfgtu	r4, r7
	l.sub	r14, r14, r16
	l.addi	r28, r28, 1818
	l.add	r23, r23, r26
	l.sw	-68(r2), r7
	l.addi	r14, r14, -1
	l.sw	8628(r22), r26
	l.ori	r5, r7, 0
	l.sw	4284(r12), r17
	l.ori	r15, r17, 0
	l.lwz	r24, 8612(r22)
	l.sub	r24, r24, r26
	l.addi	r24, r24, -1
	l.sw	8636(r22), r27
	l.ori	r25, r27, 0
	l.bf	.LBB26_245
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1515
	l.sfgtu	r14, r17
	l.addi	r20, r20, 1212          # CFC
	l.bf	.LBB26_246
	l.nop	0
.LBB26_7:                               # %if.then6
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 304
	l.addi	r20, r20, 608           # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 1824
	l.ori	r15, r14, 0
	l.addi	r18, r18, 1520
	l.ori	r25, r24, 0
	l.addi	r20, r20, 1216          # CFC
.LBB26_8:                               # %if.then6
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 305
	l.sw	-80(r2), r5
	l.ori	r4, r11, 0
	l.sw	4272(r12), r15
	l.ori	r14, r8, 0
	l.addi	r20, r20, 610           # CFC
	l.sw	8624(r22), r25
	l.ori	r24, r31, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r4, -80(r2)
	l.lwz	r3, -68(r2)
	l.addi	r28, r28, 1830
	l.sfges	r4, r3
	l.lwz	r14, 4272(r12)
	l.lwz	r13, 4284(r12)
	l.lwz	r24, 8624(r22)
	l.lwz	r23, 8636(r22)
	l.bf	.LBB26_247
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1525
	l.sfges	r14, r13
	l.addi	r20, r20, 1220          # CFC
	l.bf	.LBB26_248
	l.nop	0
.LBB26_9:                               # %print_back_to_string.exit
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 306
	l.addi	r20, r20, 612           # CFC
	l.lwz	r3, -76(r2)
	l.addi	r28, r28, 1836
	l.lwz	r13, 4276(r12)
	l.addi	r18, r18, 1530
	l.lwz	r23, 8628(r22)
	l.addi	r20, r20, 1224          # CFC
	l.j	.LBB26_10
	l.nop	0                       # in delay slot
.LBB26_12:                              # %if.end8
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 307
	l.lwz	r6, -76(r2)
	l.add	r6, r3, r6
	l.movhi	r11, hi(.L.str.1)
	l.addi	r20, r20, 614           # CFC
	l.lwz	r7, -84(r2)
	l.lwz	r16, 4276(r12)
	l.add	r16, r13, r16
	l.addi	r28, r28, 1842
	l.movhi	r8, hi(.L.str.1)
	l.lwz	r17, 4268(r12)
	l.lwz	r26, 8628(r22)
	l.addi	r18, r18, 1535
	l.add	r26, r23, r26
	l.movhi	r31, hi(.L.str.1)
	l.lwz	r27, 8620(r22)
	l.addi	r20, r20, 1228          # CFC
.LBB26_13:                              # %if.end9
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 308
	l.addi	r3, r0, 1
	l.lwz	r4, -92(r2)
	l.sw	-76(r2), r6
	l.addi	r20, r20, 616           # CFC
	l.sflts	r6, r4
	l.addi	r13, r0, 1
	l.lwz	r14, 4260(r12)
	l.addi	r28, r28, 1848
	l.sw	4276(r12), r16
	l.addi	r23, r0, 1
	l.lwz	r24, 8612(r22)
	l.sw	8628(r22), r26
	l.bf	.LBB26_249
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1540
	l.sflts	r16, r14
	l.addi	r20, r20, 1232          # CFC
	l.bf	.LBB26_250
	l.nop	0
.LBB26_14:                              # %if.end9
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 309
	l.addi	r20, r20, 618           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 1854
	l.movhi	r13, 0
	l.addi	r18, r18, 1545
	l.movhi	r23, 0
	l.addi	r20, r20, 1236          # CFC
.LBB26_15:                              # %if.end9
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 310
	l.lwz	r4, -64(r2)
	l.and	r3, r4, r3
	l.addi	r20, r20, 620           # CFC
	l.sfnei	r3, 1
	l.lwz	r14, 4288(r12)
	l.addi	r28, r28, 1860
	l.and	r13, r14, r13
	l.lwz	r24, 8640(r22)
	l.and	r23, r24, r23
	l.bf	.LBB26_251
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1550
	l.sfnei	r13, 1
	l.addi	r20, r20, 1240          # CFC
	l.bf	.LBB26_252
	l.nop	0
.LBB26_16:                              # %if.end15
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 311
	l.addi	r6, r0, -1
	l.movhi	r4, 0
	l.movhi	r3, 0
	l.sw	-120(r2), r3
	l.sb	-13(r2), r4
	l.addi	r16, r0, -1
	l.addi	r20, r20, 622           # CFC
	l.movhi	r14, 0
	l.movhi	r13, 0
	l.addi	r5, r7, 1
	l.sw	4232(r12), r13
	l.addi	r26, r0, -1
	l.movhi	r4, 0
	l.sb	4339(r12), r14
	l.addi	r28, r28, 1866
	l.movhi	r24, 0
	l.movhi	r3, 0
	l.addi	r15, r17, 1
	l.movhi	r23, 0
	l.sw	-88(r2), r3
	l.movhi	r14, 0
	l.sw	8584(r22), r23
	l.addi	r18, r18, 1555
	l.movhi	r13, 0
	l.sw	4264(r12), r13
	l.sb	8691(r22), r24
	l.addi	r25, r27, 1
	l.movhi	r24, 0
	l.movhi	r23, 0
	l.sw	8616(r22), r23
	l.addi	r20, r20, 1244          # CFC
	l.j	.LBB26_17
	l.nop	0                       # in delay slot
.LBB26_25:                              # %rflag
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 312
	l.lwz	r4, -68(r2)
	l.addi	r20, r20, 624           # CFC
	l.lwz	r6, -84(r2)
	l.lwz	r14, 4284(r12)
	l.addi	r28, r28, 1872
	l.lwz	r16, 4268(r12)
	l.addi	r18, r18, 1560
	l.lwz	r24, 8636(r22)
	l.lwz	r26, 8620(r22)
	l.addi	r20, r20, 1248          # CFC
.LBB26_17:                              # %rflag
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 313
	l.sw	-84(r2), r6
	l.lbs	r7, 0(r5)
	l.addi	r20, r20, 626           # CFC
	l.addi	r5, r5, 1
	l.sw	4268(r12), r16
	l.addi	r28, r28, 1878
	l.lbs	r17, 4352(r15)
	l.addi	r15, r15, 1
	l.addi	r18, r18, 1565
	l.sw	8620(r22), r26
	l.lbs	r27, 8704(r25)
	l.addi	r25, r25, 1
	l.addi	r20, r20, 1252          # CFC
	l.j	.LBB26_18
	l.nop	0                       # in delay slot
.LBB26_39:                              # %while.end50
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 314
	l.sw	-84(r2), r6
	l.ori	r5, r3, 0
	l.addi	r20, r20, 628           # CFC
	l.lwz	r4, -68(r2)
	l.sw	4268(r12), r16
	l.addi	r28, r28, 1884
	l.ori	r15, r13, 0
	l.lwz	r14, 4284(r12)
	l.addi	r18, r18, 1570
	l.sw	8620(r22), r26
	l.ori	r25, r23, 0
	l.lwz	r24, 8636(r22)
	l.addi	r20, r20, 1256          # CFC
.LBB26_18:                              # %reswitch
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 315
	l.sw	-68(r2), r4
	l.sw	-60(r2), r5
	l.sfgtui	r7, 122
	l.addi	r20, r20, 630           # CFC
	l.sw	-64(r2), r7
	l.sw	4284(r12), r14
	l.sw	4292(r12), r15
	l.addi	r28, r28, 1890
	l.sw	4288(r12), r17
	l.sw	8636(r22), r24
	l.sw	8644(r22), r25
	l.sw	8640(r22), r27
	l.bf	.LBB26_253
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1575
	l.sfgtui	r17, 122
	l.addi	r20, r20, 1260          # CFC
	l.bf	.LBB26_254
	l.nop	0
.LBB26_19:                              # %reswitch
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 316
	l.addi	r5, r0, 117
	l.addi	r6, r0, 111
	l.ori	r4, r11, lo(.L.str.1)
	l.slli	r3, r7, 2
	l.lwz	r7, -72(r2)
	l.addi	r15, r0, 117
	l.addi	r20, r20, 632           # CFC
	l.addi	r16, r0, 111
	l.ori	r14, r8, lo(.L.str.1)
	l.add	r3, r3, r7
	l.slli	r13, r17, 2
	l.addi	r25, r0, 117
	l.lwz	r7, -64(r2)
	l.addi	r28, r28, 1896
	l.lwz	r17, 4280(r12)
	l.addi	r26, r0, 111
	l.lwz	r3, 0(r3)
	l.add	r13, r13, r17
	l.ori	r24, r31, lo(.L.str.1)
	l.lwz	r17, 4288(r12)
	l.addi	r18, r18, 1580
	l.lwz	r13, 4352(r13)
	l.slli	r23, r27, 2
	l.lwz	r27, 8632(r22)
	l.add	r23, r23, r27
	l.lwz	r27, 8640(r22)
	l.lwz	r23, 8704(r23)
	l.addi	r20, r20, 1264          # CFC
	l.sfne	r3, r13
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB26_236
	l.nop	0
	l.jr	r3
	l.nop	0                       # in delay slot
.LBB26_41:                              # %do.body.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 317
	l.movhi	r4, 0
	l.addi	r20, r20, 634           # CFC
	l.lwz	r3, -60(r2)
	l.movhi	r14, 0
	l.addi	r28, r28, 1902
	l.lwz	r13, 4292(r12)
	l.addi	r18, r18, 1585
	l.movhi	r24, 0
	l.lwz	r23, 8644(r22)
	l.addi	r20, r20, 1268          # CFC
.LBB26_42:                              # %do.body
                                        #   Parent Loop BB26_1 Depth=1
                                        #     Parent Loop BB26_2 Depth=2
                                        #       Parent Loop BB26_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 318
	l.muli	r4, r4, 10
	l.add	r4, r7, r4
	l.addi	r5, r3, 1
	l.addi	r4, r4, -48
	l.lbs	r7, 0(r3)
	l.muli	r14, r14, 10
	l.addi	r20, r20, 636           # CFC
	l.add	r14, r17, r14
	l.addi	r15, r13, 1
	l.addi	r3, r7, -48
	l.addi	r14, r14, -48
	l.muli	r24, r24, 10
	l.sfltui	r3, 10
	l.addi	r28, r28, 1908
	l.lbs	r17, 4352(r13)
	l.addi	r13, r17, -48
	l.add	r24, r27, r24
	l.addi	r25, r23, 1
	l.addi	r24, r24, -48
	l.lbs	r27, 8704(r23)
	l.addi	r23, r27, -48
	l.bf	.LBB26_255
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1590
	l.sfltui	r13, 10
	l.addi	r20, r20, 1272          # CFC
	l.bf	.LBB26_256
	l.nop	0
.LBB26_258:
	l.addi	r18, r18, 319
	l.addi	r20, r20, 638           # CFC
	l.ori	r3, r5, 0
	l.addi	r28, r28, 1914
	l.ori	r13, r15, 0
	l.addi	r18, r18, 1595
	l.ori	r23, r25, 0
	l.addi	r20, r20, 1276          # CFC
.LBB26_234:                             # %do.body
                                        #   in Loop: Header=BB26_3 Depth=3
	l.j	.LBB26_18
	l.nop	0                       # in delay slot
.LBB26_30:                              # %sw.bb31
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 320
	l.lwz	r4, -60(r2)
	l.addi	r3, r4, 1
	l.lbs	r7, 0(r4)
	l.addi	r20, r20, 640           # CFC
	l.sfeqi	r7, 42
	l.lwz	r14, 4292(r12)
	l.addi	r13, r14, 1
	l.addi	r28, r28, 1920
	l.lbs	r17, 4352(r14)
	l.lwz	r24, 8644(r22)
	l.addi	r23, r24, 1
	l.lbs	r27, 8704(r24)
	l.bf	.LBB26_259
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1600
	l.sfeqi	r17, 42
	l.addi	r20, r20, 1280          # CFC
	l.bf	.LBB26_260
	l.nop	0
.LBB26_31:                              # %while.cond41.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 321
	l.movhi	r6, 0
	l.addi	r4, r7, -48
	l.addi	r20, r20, 642           # CFC
	l.sfgtui	r4, 9
	l.movhi	r16, 0
	l.addi	r28, r28, 1926
	l.addi	r14, r17, -48
	l.movhi	r26, 0
	l.addi	r24, r27, -48
	l.bf	.LBB26_261
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1605
	l.sfgtui	r14, 9
	l.addi	r20, r20, 1284          # CFC
	l.bf	.LBB26_262
	l.nop	0
.LBB26_32:                              # %while.body45.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 322
	l.movhi	r6, 0
	l.addi	r20, r20, 644           # CFC
	l.ori	r5, r3, 0
	l.movhi	r16, 0
	l.addi	r28, r28, 1932
	l.ori	r15, r13, 0
	l.addi	r18, r18, 1610
	l.movhi	r26, 0
	l.ori	r25, r23, 0
	l.addi	r20, r20, 1288          # CFC
.LBB26_33:                              # %while.body45
                                        #   Parent Loop BB26_1 Depth=1
                                        #     Parent Loop BB26_2 Depth=2
                                        #       Parent Loop BB26_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 323
	l.muli	r3, r6, 10
	l.add	r6, r3, r4
	l.addi	r3, r5, 1
	l.lbs	r7, 0(r5)
	l.addi	r4, r7, -48
	l.muli	r13, r16, 10
	l.addi	r20, r20, 646           # CFC
	l.add	r16, r13, r14
	l.addi	r13, r15, 1
	l.sfltui	r4, 10
	l.lbs	r17, 4352(r15)
	l.muli	r23, r26, 10
	l.ori	r5, r3, 0
	l.addi	r28, r28, 1938
	l.addi	r14, r17, -48
	l.ori	r15, r13, 0
	l.add	r26, r23, r24
	l.addi	r23, r25, 1
	l.lbs	r27, 8704(r25)
	l.addi	r24, r27, -48
	l.ori	r25, r23, 0
	l.bf	.LBB26_263
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1615
	l.sfltui	r14, 10
	l.addi	r20, r20, 1292          # CFC
	l.bf	.LBB26_264
	l.nop	0
.LBB26_37:                              # %while.end50
                                        #   in Loop: Header=BB26_3 Depth=3
	l.sfgtsi	r6, -1
	l.bf	.LBB26_265
	l.nop	0                       # in delay slot
	l.sfgtsi	r16, -1
	l.bf	.LBB26_266
	l.nop	0
.LBB26_38:                              # %while.end50
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 324
	l.addi	r20, r20, 648           # CFC
	l.addi	r6, r0, -1
	l.addi	r28, r28, 1944
	l.addi	r16, r0, -1
	l.addi	r18, r18, 1620
	l.addi	r26, r0, -1
	l.addi	r20, r20, 1296          # CFC
	l.j	.LBB26_39
	l.nop	0                       # in delay slot
.LBB26_20:                              # %sw.bb
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 325
	l.lwz	r3, -120(r2)
	l.andi	r3, r3, 255
	l.sfnei	r3, 0
	l.lwz	r5, -60(r2)
	l.lwz	r4, -68(r2)
	l.addi	r20, r20, 650           # CFC
	l.lwz	r6, -84(r2)
	l.lwz	r13, 4232(r12)
	l.andi	r13, r13, 255
	l.lwz	r15, 4292(r12)
	l.lwz	r14, 4284(r12)
	l.addi	r28, r28, 1950
	l.lwz	r16, 4268(r12)
	l.lwz	r23, 8584(r22)
	l.andi	r23, r23, 255
	l.lwz	r25, 8644(r22)
	l.lwz	r24, 8636(r22)
	l.lwz	r26, 8620(r22)
	l.bf	.LBB26_267
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1625
	l.sfnei	r13, 0
	l.addi	r20, r20, 1300          # CFC
	l.bf	.LBB26_268
	l.nop	0
.LBB26_21:                              # %if.then20
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 326
	l.addi	r3, r0, 32
	l.sw	-120(r2), r3
	l.addi	r20, r20, 652           # CFC
	l.sb	-13(r2), r3
	l.addi	r13, r0, 32
	l.addi	r28, r28, 1956
	l.sw	4232(r12), r13
	l.sb	4339(r12), r13
	l.addi	r18, r18, 1630
	l.addi	r23, r0, 32
	l.sw	8584(r22), r23
	l.sb	8691(r22), r23
	l.addi	r20, r20, 1304          # CFC
	l.j	.LBB26_17
	l.nop	0                       # in delay slot
.LBB26_22:                              # %sw.bb22
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 327
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 654           # CFC
	l.ori	r3, r3, 1
	l.lwz	r13, 4264(r12)
	l.addi	r28, r28, 1962
	l.ori	r13, r13, 1
	l.addi	r18, r18, 1635
	l.lwz	r23, 8616(r22)
	l.ori	r23, r23, 1
	l.addi	r20, r20, 1308          # CFC
	l.j	.LBB26_23
	l.nop	0                       # in delay slot
.LBB26_26:                              # %sw.bb23
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 328
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.addi	r20, r20, 656           # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 8692(r22)
	l.lwz	r4, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.sfgtsi	r4, -1
	l.sw	4340(r12), r14
	l.addi	r24, r0, -4
	l.lwz	r5, -60(r2)
	l.addi	r28, r28, 1968
	l.lwz	r14, 4352(r13)
	l.and	r23, r23, r24
	l.lwz	r6, -84(r2)
	l.lwz	r15, 4292(r12)
	l.lwz	r16, 4268(r12)
	l.addi	r24, r23, 4
	l.sw	8692(r22), r24
	l.lwz	r24, 8704(r23)
	l.lwz	r25, 8644(r22)
	l.lwz	r26, 8620(r22)
	l.bf	.LBB26_269
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1640
	l.sfgtsi	r14, -1
	l.addi	r20, r20, 1312          # CFC
	l.bf	.LBB26_270
	l.nop	0
.LBB26_27:                              # %if.end27
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 329
	l.movhi	r3, 0
	l.sub	r4, r3, r4
	l.addi	r20, r20, 658           # CFC
	l.sw	-68(r2), r4
	l.movhi	r13, 0
	l.addi	r28, r28, 1974
	l.sub	r14, r13, r14
	l.sw	4284(r12), r14
	l.addi	r18, r18, 1645
	l.movhi	r23, 0
	l.sub	r24, r23, r24
	l.sw	8636(r22), r24
	l.addi	r20, r20, 1316          # CFC
.LBB26_28:                              # %sw.bb28
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 330
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 660           # CFC
	l.ori	r3, r3, 4
	l.lwz	r13, 4264(r12)
	l.addi	r28, r28, 1980
	l.ori	r13, r13, 4
	l.addi	r18, r18, 1650
	l.lwz	r23, 8616(r22)
	l.ori	r23, r23, 4
	l.addi	r20, r20, 1320          # CFC
	l.j	.LBB26_23
	l.nop	0                       # in delay slot
.LBB26_29:                              # %sw.bb30
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 331
	l.addi	r3, r0, 43
	l.sw	-120(r2), r3
	l.addi	r20, r20, 662           # CFC
	l.sb	-13(r2), r3
	l.addi	r13, r0, 43
	l.addi	r28, r28, 1986
	l.sw	4232(r12), r13
	l.sb	4339(r12), r13
	l.addi	r18, r18, 1655
	l.addi	r23, r0, 43
	l.sw	8584(r22), r23
	l.sb	8691(r22), r23
	l.addi	r20, r20, 1324          # CFC
	l.j	.LBB26_24
	l.nop	0                       # in delay slot
.LBB26_40:                              # %sw.bb57
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 332
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 664           # CFC
	l.ori	r3, r3, 128
	l.lwz	r13, 4264(r12)
	l.addi	r28, r28, 1992
	l.ori	r13, r13, 128
	l.addi	r18, r18, 1660
	l.lwz	r23, 8616(r22)
	l.ori	r23, r23, 128
	l.addi	r20, r20, 1328          # CFC
	l.j	.LBB26_23
	l.nop	0                       # in delay slot
.LBB26_43:                              # %sw.bb68
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 333
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 666           # CFC
	l.ori	r3, r3, 64
	l.lwz	r13, 4264(r12)
	l.addi	r28, r28, 1998
	l.ori	r13, r13, 64
	l.addi	r18, r18, 1665
	l.lwz	r23, 8616(r22)
	l.ori	r23, r23, 64
	l.addi	r20, r20, 1332          # CFC
	l.j	.LBB26_23
	l.nop	0                       # in delay slot
.LBB26_44:                              # %sw.bb70
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 334
	l.lwz	r5, -60(r2)
	l.lbz	r3, 0(r5)
	l.addi	r20, r20, 668           # CFC
	l.sfnei	r3, 108
	l.lwz	r15, 4292(r12)
	l.addi	r28, r28, 2004
	l.lbz	r13, 4352(r15)
	l.lwz	r25, 8644(r22)
	l.lbz	r23, 8704(r25)
	l.bf	.LBB26_271
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1670
	l.sfnei	r13, 108
	l.addi	r20, r20, 1336          # CFC
	l.bf	.LBB26_272
	l.nop	0
.LBB26_45:                              # %if.then74
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 335
	l.lwz	r3, -88(r2)
	l.ori	r3, r3, 32
	l.sw	-88(r2), r3
	l.addi	r20, r20, 670           # CFC
	l.addi	r5, r5, 1
	l.lwz	r13, 4264(r12)
	l.ori	r13, r13, 32
	l.addi	r28, r28, 2010
	l.sw	4264(r12), r13
	l.addi	r15, r15, 1
	l.lwz	r23, 8616(r22)
	l.addi	r18, r18, 1675
	l.ori	r23, r23, 32
	l.sw	8616(r22), r23
	l.addi	r25, r25, 1
	l.addi	r20, r20, 1340          # CFC
	l.j	.LBB26_25
	l.nop	0                       # in delay slot
.LBB26_47:                              # %sw.bb79
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 336
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 672           # CFC
	l.ori	r3, r3, 32
	l.lwz	r13, 4264(r12)
	l.addi	r28, r28, 2016
	l.ori	r13, r13, 32
	l.addi	r18, r18, 1680
	l.lwz	r23, 8616(r22)
	l.ori	r23, r23, 32
	l.addi	r20, r20, 1344          # CFC
	l.j	.LBB26_23
	l.nop	0                       # in delay slot
.LBB26_143:                             # %sw.bb374
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 337
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 674           # CFC
	l.ori	r3, r3, 512
	l.lwz	r13, 4264(r12)
	l.addi	r28, r28, 2022
	l.ori	r13, r13, 512
	l.addi	r18, r18, 1685
	l.lwz	r23, 8616(r22)
	l.ori	r23, r23, 512
	l.addi	r20, r20, 1348          # CFC
.LBB26_23:                              # %rflag
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 338
	l.addi	r20, r20, 676           # CFC
	l.sw	-88(r2), r3
	l.addi	r28, r28, 2028
	l.sw	4264(r12), r13
	l.addi	r18, r18, 1690
	l.sw	8616(r22), r23
	l.addi	r20, r20, 1352          # CFC
.LBB26_24:                              # %rflag
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 339
	l.addi	r20, r20, 678           # CFC
	l.lwz	r5, -60(r2)
	l.addi	r28, r28, 2034
	l.lwz	r15, 4292(r12)
	l.addi	r18, r18, 1695
	l.lwz	r25, 8644(r22)
	l.addi	r20, r20, 1356          # CFC
	l.j	.LBB26_25
	l.nop	0                       # in delay slot
.LBB26_46:                              # %if.else
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 340
	l.lwz	r3, -88(r2)
	l.ori	r3, r3, 16
	l.addi	r20, r20, 680           # CFC
	l.sw	-88(r2), r3
	l.lwz	r13, 4264(r12)
	l.addi	r28, r28, 2040
	l.ori	r13, r13, 16
	l.sw	4264(r12), r13
	l.addi	r18, r18, 1700
	l.lwz	r23, 8616(r22)
	l.ori	r23, r23, 16
	l.sw	8616(r22), r23
	l.addi	r20, r20, 1360          # CFC
	l.j	.LBB26_25
	l.nop	0                       # in delay slot
.LBB26_34:                              # %if.then36
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 341
	l.lwz	r4, -12(r2)
	l.addi	r4, r4, 3
	l.addi	r5, r0, -4
	l.and	r4, r4, r5
	l.addi	r5, r4, 4
	l.lwz	r14, 4340(r12)
	l.addi	r14, r14, 3
	l.addi	r20, r20, 682           # CFC
	l.addi	r15, r0, -4
	l.sw	-12(r2), r5
	l.and	r14, r14, r15
	l.lwz	r24, 8692(r22)
	l.lwz	r6, 0(r4)
	l.addi	r15, r14, 4
	l.addi	r24, r24, 3
	l.addi	r28, r28, 2046
	l.sfgtsi	r6, -1
	l.sw	4340(r12), r15
	l.lwz	r16, 4352(r14)
	l.addi	r25, r0, -4
	l.and	r24, r24, r25
	l.addi	r25, r24, 4
	l.sw	8692(r22), r25
	l.lwz	r26, 8704(r24)
	l.bf	.LBB26_273
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1705
	l.sfgtsi	r16, -1
	l.addi	r20, r20, 1364          # CFC
	l.bf	.LBB26_274
	l.nop	0
.LBB26_35:                              # %if.then36
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 342
	l.addi	r20, r20, 684           # CFC
	l.addi	r6, r0, -1
	l.addi	r28, r28, 2052
	l.addi	r16, r0, -1
	l.addi	r18, r18, 1710
	l.addi	r26, r0, -1
	l.addi	r20, r20, 1368          # CFC
.LBB26_36:                              # %if.then36
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 343
	l.ori	r5, r3, 0
	l.addi	r20, r20, 686           # CFC
	l.lwz	r4, -68(r2)
	l.ori	r15, r13, 0
	l.addi	r28, r28, 2058
	l.lwz	r14, 4284(r12)
	l.addi	r18, r18, 1715
	l.ori	r25, r23, 0
	l.lwz	r24, 8636(r22)
	l.addi	r20, r20, 1372          # CFC
	l.j	.LBB26_17
	l.nop	0                       # in delay slot
.LBB26_64:                              # %if.else131
                                        #   in Loop: Header=BB26_2 Depth=2
	l.addi	r18, r18, 344
	l.andi	r3, r4, 16
	l.addi	r20, r20, 688           # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 2064
	l.andi	r13, r14, 16
	l.andi	r23, r24, 16
	l.bf	.LBB26_275
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1720
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1376          # CFC
	l.bf	.LBB26_276
	l.nop	0
.LBB26_65:                              # %if.then134
                                        #   in Loop: Header=BB26_2 Depth=2
	l.addi	r18, r18, 345
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r20, r20, 690           # CFC
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 8692(r22)
	l.lwz	r3, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r6, -76(r2)
	l.addi	r28, r28, 2070
	l.sw	4340(r12), r14
	l.addi	r24, r0, -4
	l.sw	0(r3), r6
	l.lwz	r13, 4352(r13)
	l.and	r23, r23, r24
	l.lwz	r5, -60(r2)
	l.lwz	r16, 4276(r12)
	l.addi	r18, r18, 1725
	l.addi	r24, r23, 4
	l.sw	4352(r13), r16
	l.lwz	r15, 4292(r12)
	l.sw	8692(r22), r24
	l.lwz	r23, 8704(r23)
	l.lwz	r26, 8628(r22)
	l.sw	8704(r23), r26
	l.lwz	r25, 8644(r22)
	l.addi	r20, r20, 1380          # CFC
	l.j	.LBB26_2
	l.nop	0                       # in delay slot
.LBB26_66:                              # %if.else136
                                        #   in Loop: Header=BB26_2 Depth=2
	l.addi	r18, r18, 346
	l.andi	r3, r4, 64
	l.addi	r20, r20, 692           # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 2076
	l.andi	r13, r14, 64
	l.andi	r23, r24, 64
	l.bf	.LBB26_277
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1730
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1384          # CFC
	l.bf	.LBB26_278
	l.nop	0
.LBB26_67:                              # %if.then139
                                        #   in Loop: Header=BB26_2 Depth=2
	l.addi	r18, r18, 347
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r20, r20, 694           # CFC
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 8692(r22)
	l.lwz	r3, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r6, -76(r2)
	l.addi	r28, r28, 2082
	l.sw	4340(r12), r14
	l.addi	r24, r0, -4
	l.sh	0(r3), r6
	l.lwz	r13, 4352(r13)
	l.and	r23, r23, r24
	l.lwz	r5, -60(r2)
	l.lwz	r16, 4276(r12)
	l.addi	r18, r18, 1735
	l.addi	r24, r23, 4
	l.sh	4352(r13), r16
	l.lwz	r15, 4292(r12)
	l.sw	8692(r22), r24
	l.lwz	r23, 8704(r23)
	l.lwz	r26, 8628(r22)
	l.sh	8704(r23), r26
	l.lwz	r25, 8644(r22)
	l.addi	r20, r20, 1388          # CFC
	l.j	.LBB26_2
	l.nop	0                       # in delay slot
.LBB26_61:                              # %sw.bb123
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 348
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r3, r3, 4
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r3
	l.addi	r20, r20, 696           # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 8692(r22)
	l.movhi	r7, 0
	l.addi	r13, r13, 4
	l.addi	r23, r23, 3
	l.sb	-13(r2), r7
	l.sw	4340(r12), r13
	l.addi	r24, r0, -4
	l.movhi	r3, hi(.L.str)
	l.addi	r28, r28, 2088
	l.movhi	r17, 0
	l.and	r23, r23, r24
	l.ori	r3, r3, lo(.L.str)
	l.sb	4339(r12), r17
	l.addi	r23, r23, 4
	l.sw	-136(r2), r3
	l.movhi	r13, hi(.L.str)
	l.sw	8692(r22), r23
	l.movhi	r4, 0
	l.addi	r18, r18, 1740
	l.ori	r13, r13, lo(.L.str)
	l.movhi	r27, 0
	l.sw	4216(r12), r13
	l.movhi	r14, 0
	l.sb	8691(r22), r27
	l.movhi	r23, hi(.L.str)
	l.ori	r23, r23, lo(.L.str)
	l.sw	8568(r22), r23
	l.movhi	r24, 0
	l.addi	r20, r20, 1392          # CFC
	l.j	.LBB26_146
	l.nop	0                       # in delay slot
.LBB26_144:                             # %if.end380
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 349
	l.sb	-53(r2), r7
	l.addi	r4, r0, 1
	l.movhi	r7, 0
	l.addi	r20, r20, 698           # CFC
	l.sb	-13(r2), r7
	l.sb	4299(r12), r17
	l.addi	r14, r0, 1
	l.addi	r28, r28, 2094
	l.movhi	r17, 0
	l.sb	4339(r12), r17
	l.sb	8651(r22), r27
	l.addi	r18, r18, 1745
	l.addi	r24, r0, 1
	l.movhi	r27, 0
	l.sb	8691(r22), r27
	l.addi	r20, r20, 1396          # CFC
	l.j	.LBB26_145
	l.nop	0                       # in delay slot
.LBB26_49:                              # %sw.bb84
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 350
	l.addi	r7, r0, 68
	l.lwz	r3, -88(r2)
	l.ori	r3, r3, 16
	l.addi	r20, r20, 700           # CFC
	l.sw	-88(r2), r3
	l.addi	r17, r0, 68
	l.lwz	r13, 4264(r12)
	l.addi	r28, r28, 2100
	l.ori	r13, r13, 16
	l.sw	4264(r12), r13
	l.addi	r27, r0, 68
	l.addi	r18, r18, 1750
	l.lwz	r23, 8616(r22)
	l.ori	r23, r23, 16
	l.sw	8616(r22), r23
	l.addi	r20, r20, 1400          # CFC
.LBB26_50:                              # %sw.bb86
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 351
	l.lwz	r5, -88(r2)
	l.andi	r3, r5, 32
	l.sfeqi	r3, 0
	l.addi	r20, r20, 702           # CFC
	l.sw	-64(r2), r7
	l.lwz	r15, 4264(r12)
	l.andi	r13, r15, 32
	l.addi	r28, r28, 2106
	l.sw	4288(r12), r17
	l.lwz	r25, 8616(r22)
	l.andi	r23, r25, 32
	l.sw	8640(r22), r27
	l.bf	.LBB26_279
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1755
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1404          # CFC
	l.bf	.LBB26_280
	l.nop	0
.LBB26_51:                              # %cond.true88
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 352
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.addi	r20, r20, 704           # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 8692(r22)
	l.lwz	r6, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r3, -12(r2)
	l.sw	4340(r12), r14
	l.addi	r24, r0, -4
	l.addi	r4, r3, 4
	l.lwz	r16, 4352(r13)
	l.addi	r28, r28, 2112
	l.and	r23, r23, r24
	l.sw	-12(r2), r4
	l.lwz	r13, 4340(r12)
	l.addi	r24, r23, 4
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.sw	8692(r22), r24
	l.lwz	r7, -84(r2)
	l.sw	4340(r12), r14
	l.lwz	r26, 8704(r23)
	l.addi	r18, r18, 1760
	l.lwz	r4, -120(r2)
	l.lwz	r8, 4352(r13)
	l.lwz	r23, 8692(r22)
	l.lwz	r17, 4268(r12)
	l.lwz	r14, 4232(r12)
	l.addi	r24, r23, 4
	l.sw	8692(r22), r24
	l.lwz	r31, 8704(r23)
	l.lwz	r27, 8620(r22)
	l.lwz	r24, 8584(r22)
	l.addi	r20, r20, 1408          # CFC
	l.j	.LBB26_57
	l.nop	0                       # in delay slot
.LBB26_52:                              # %cond.false90
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 353
	l.andi	r3, r5, 16
	l.addi	r20, r20, 706           # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 2118
	l.andi	r13, r15, 16
	l.andi	r23, r25, 16
	l.bf	.LBB26_281
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1765
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1412          # CFC
	l.bf	.LBB26_282
	l.nop	0
.LBB26_53:                              # %cond.true93
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 354
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 4340(r12)
	l.addi	r20, r20, 708           # CFC
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 8692(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r28, r28, 2124
	l.addi	r23, r23, 3
	l.lwz	r7, -84(r2)
	l.sw	4340(r12), r14
	l.addi	r24, r0, -4
	l.lwz	r4, -120(r2)
	l.lwz	r8, 4352(r13)
	l.and	r23, r23, r24
	l.addi	r18, r18, 1770
	l.lwz	r17, 4268(r12)
	l.lwz	r14, 4232(r12)
	l.addi	r24, r23, 4
	l.sw	8692(r22), r24
	l.lwz	r31, 8704(r23)
	l.lwz	r27, 8620(r22)
	l.lwz	r24, 8584(r22)
	l.addi	r20, r20, 1416          # CFC
	l.j	.LBB26_56
	l.nop	0                       # in delay slot
.LBB26_68:                              # %sw.bb153
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 355
	l.addi	r6, r0, 79
	l.lwz	r3, -88(r2)
	l.ori	r3, r3, 16
	l.addi	r20, r20, 710           # CFC
	l.sw	-88(r2), r3
	l.addi	r16, r0, 79
	l.lwz	r13, 4264(r12)
	l.addi	r28, r28, 2130
	l.ori	r13, r13, 16
	l.sw	4264(r12), r13
	l.addi	r26, r0, 79
	l.addi	r18, r18, 1775
	l.lwz	r23, 8616(r22)
	l.ori	r23, r23, 16
	l.sw	8616(r22), r23
	l.addi	r20, r20, 1420          # CFC
.LBB26_69:                              # %sw.bb155
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 356
	l.lwz	r5, -88(r2)
	l.andi	r3, r5, 32
	l.addi	r20, r20, 712           # CFC
	l.sfeqi	r3, 0
	l.lwz	r15, 4264(r12)
	l.addi	r28, r28, 2136
	l.andi	r13, r15, 32
	l.lwz	r25, 8616(r22)
	l.andi	r23, r25, 32
	l.bf	.LBB26_283
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1780
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1424          # CFC
	l.bf	.LBB26_284
	l.nop	0
.LBB26_70:                              # %cond.true158
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 357
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 8692(r22)
	l.lwz	r7, 0(r3)
	l.addi	r20, r20, 714           # CFC
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r4, -12(r2)
	l.sw	4340(r12), r14
	l.addi	r24, r0, -4
	l.addi	r3, r4, 4
	l.lwz	r17, 4352(r13)
	l.and	r23, r23, r24
	l.sw	-12(r2), r3
	l.lwz	r14, 4340(r12)
	l.addi	r24, r23, 4
	l.movhi	r3, 0
	l.addi	r28, r28, 2142
	l.addi	r13, r14, 4
	l.sw	8692(r22), r24
	l.sw	-112(r2), r3
	l.sw	4340(r12), r13
	l.lwz	r27, 8704(r23)
	l.lwz	r11, 0(r4)
	l.movhi	r13, 0
	l.lwz	r24, 8692(r22)
	l.sw	-64(r2), r6
	l.sw	4240(r12), r13
	l.addi	r23, r24, 4
	l.ori	r6, r7, 0
	l.addi	r18, r18, 1785
	l.lwz	r8, 4352(r14)
	l.sw	8692(r22), r23
	l.lwz	r7, -84(r2)
	l.sw	4288(r12), r16
	l.movhi	r23, 0
	l.ori	r16, r17, 0
	l.lwz	r17, 4268(r12)
	l.sw	8592(r22), r23
	l.lwz	r31, 8704(r24)
	l.sw	8640(r22), r26
	l.ori	r26, r27, 0
	l.lwz	r27, 8620(r22)
	l.addi	r20, r20, 1428          # CFC
	l.j	.LBB26_107
	l.nop	0                       # in delay slot
.LBB26_86:                              # %sw.bb217
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 358
	l.addi	r5, r0, 85
	l.lwz	r3, -88(r2)
	l.ori	r3, r3, 16
	l.addi	r20, r20, 716           # CFC
	l.sw	-88(r2), r3
	l.addi	r15, r0, 85
	l.lwz	r13, 4264(r12)
	l.addi	r28, r28, 2148
	l.ori	r13, r13, 16
	l.sw	4264(r12), r13
	l.addi	r25, r0, 85
	l.addi	r18, r18, 1790
	l.lwz	r23, 8616(r22)
	l.ori	r23, r23, 16
	l.sw	8616(r22), r23
	l.addi	r20, r20, 1432          # CFC
.LBB26_87:                              # %sw.bb219
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 359
	l.lwz	r6, -88(r2)
	l.andi	r3, r6, 32
	l.addi	r20, r20, 718           # CFC
	l.sfeqi	r3, 0
	l.lwz	r16, 4264(r12)
	l.addi	r28, r28, 2154
	l.andi	r13, r16, 32
	l.lwz	r26, 8616(r22)
	l.andi	r23, r26, 32
	l.bf	.LBB26_285
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1795
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1436          # CFC
	l.bf	.LBB26_286
	l.nop	0
.LBB26_88:                              # %cond.true222
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 360
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 8692(r22)
	l.lwz	r7, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r20, r20, 720           # CFC
	l.addi	r23, r23, 3
	l.lwz	r4, -12(r2)
	l.sw	4340(r12), r14
	l.addi	r24, r0, -4
	l.addi	r3, r4, 4
	l.lwz	r17, 4352(r13)
	l.and	r23, r23, r24
	l.sw	-12(r2), r3
	l.lwz	r14, 4340(r12)
	l.addi	r24, r23, 4
	l.addi	r3, r0, 1
	l.addi	r13, r14, 4
	l.sw	8692(r22), r24
	l.sw	-112(r2), r3
	l.addi	r28, r28, 2160
	l.sw	4340(r12), r13
	l.lwz	r27, 8704(r23)
	l.lwz	r11, 0(r4)
	l.addi	r13, r0, 1
	l.lwz	r24, 8692(r22)
	l.sw	-64(r2), r5
	l.sw	4240(r12), r13
	l.addi	r23, r24, 4
	l.lwz	r4, -84(r2)
	l.lwz	r8, 4352(r14)
	l.sw	8692(r22), r23
	l.ori	r5, r6, 0
	l.sw	4288(r12), r15
	l.addi	r18, r18, 1800
	l.addi	r23, r0, 1
	l.ori	r6, r7, 0
	l.lwz	r14, 4268(r12)
	l.sw	8592(r22), r23
	l.ori	r7, r4, 0
	l.ori	r15, r16, 0
	l.lwz	r31, 8704(r24)
	l.ori	r16, r17, 0
	l.ori	r17, r14, 0
	l.sw	8640(r22), r25
	l.lwz	r24, 8620(r22)
	l.ori	r25, r26, 0
	l.ori	r26, r27, 0
	l.ori	r27, r24, 0
	l.addi	r20, r20, 1440          # CFC
	l.j	.LBB26_107
	l.nop	0                       # in delay slot
.LBB26_94:                              # %hex.loopexit
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 361
	l.movhi	r3, hi(.L.str.3)
	l.addi	r20, r20, 722           # CFC
	l.ori	r4, r3, lo(.L.str.3)
	l.movhi	r13, hi(.L.str.3)
	l.addi	r28, r28, 2166
	l.ori	r14, r13, lo(.L.str.3)
	l.addi	r18, r18, 1805
	l.movhi	r23, hi(.L.str.3)
	l.ori	r24, r23, lo(.L.str.3)
	l.addi	r20, r20, 1444          # CFC
.LBB26_95:                              # %hex
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 362
	l.lwz	r5, -88(r2)
	l.andi	r3, r5, 32
	l.addi	r20, r20, 724           # CFC
	l.sfeqi	r3, 0
	l.lwz	r15, 4264(r12)
	l.addi	r28, r28, 2172
	l.andi	r13, r15, 32
	l.lwz	r25, 8616(r22)
	l.andi	r23, r25, 32
	l.bf	.LBB26_287
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1810
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1448          # CFC
	l.bf	.LBB26_288
	l.nop	0
.LBB26_96:                              # %cond.true256
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 363
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r5, r0, -4
	l.and	r3, r3, r5
	l.addi	r5, r3, 4
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r15, r0, -4
	l.sw	-12(r2), r5
	l.addi	r20, r20, 726           # CFC
	l.and	r13, r13, r15
	l.lwz	r23, 8692(r22)
	l.lwz	r6, 0(r3)
	l.addi	r15, r13, 4
	l.addi	r23, r23, 3
	l.lwz	r3, -12(r2)
	l.sw	4340(r12), r15
	l.addi	r25, r0, -4
	l.addi	r5, r3, 4
	l.addi	r28, r28, 2178
	l.lwz	r16, 4352(r13)
	l.and	r23, r23, r25
	l.sw	-12(r2), r5
	l.lwz	r13, 4340(r12)
	l.addi	r25, r23, 4
	l.lwz	r5, -88(r2)
	l.addi	r15, r13, 4
	l.sw	8692(r22), r25
	l.lwz	r11, 0(r3)
	l.addi	r18, r18, 1815
	l.sw	4340(r12), r15
	l.lwz	r26, 8704(r23)
	l.lwz	r15, 4264(r12)
	l.lwz	r8, 4352(r13)
	l.lwz	r23, 8692(r22)
	l.addi	r25, r23, 4
	l.sw	8692(r22), r25
	l.lwz	r25, 8616(r22)
	l.lwz	r31, 8704(r23)
	l.addi	r20, r20, 1452          # CFC
	l.j	.LBB26_102
	l.nop	0                       # in delay slot
.LBB26_48:                              # %sw.bb81
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 364
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.addi	r20, r20, 728           # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 8692(r22)
	l.lwz	r3, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.sb	-53(r2), r3
	l.sw	4340(r12), r14
	l.addi	r24, r0, -4
	l.addi	r4, r0, 1
	l.lwz	r13, 4352(r13)
	l.addi	r28, r28, 2184
	l.and	r23, r23, r24
	l.movhi	r7, 0
	l.sb	4299(r12), r13
	l.addi	r24, r23, 4
	l.sb	-13(r2), r7
	l.addi	r14, r0, 1
	l.sw	8692(r22), r24
	l.addi	r3, r0, 99
	l.movhi	r17, 0
	l.lwz	r23, 8704(r23)
	l.addi	r18, r18, 1820
	l.sw	-64(r2), r3
	l.sb	4339(r12), r17
	l.sb	8651(r22), r23
	l.addi	r13, r0, 99
	l.sw	4288(r12), r13
	l.addi	r24, r0, 1
	l.movhi	r27, 0
	l.sb	8691(r22), r27
	l.addi	r23, r0, 99
	l.sw	8640(r22), r23
	l.addi	r20, r20, 1456          # CFC
.LBB26_145:                             # %if.else386
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 365
	l.addi	r3, r2, -53
	l.addi	r20, r20, 730           # CFC
	l.sw	-136(r2), r3
	l.addi	r13, r12, -53
	l.addi	r28, r28, 2190
	l.sw	4216(r12), r13
	l.addi	r18, r18, 1825
	l.addi	r23, r22, -53
	l.sw	8568(r22), r23
	l.addi	r20, r20, 1460          # CFC
.LBB26_146:                             # %if.else386
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 366
	l.lwz	r6, -76(r2)
	l.addi	r20, r20, 732           # CFC
	l.lwz	r5, -88(r2)
	l.lwz	r16, 4276(r12)
	l.addi	r28, r28, 2196
	l.lwz	r15, 4264(r12)
	l.addi	r18, r18, 1830
	l.lwz	r26, 8628(r22)
	l.lwz	r25, 8616(r22)
	l.addi	r20, r20, 1464          # CFC
	l.j	.LBB26_147
	l.nop	0                       # in delay slot
.LBB26_76:                              # %sw.bb188
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 367
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r4, r3, r4
	l.addi	r3, r4, 4
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r3
	l.and	r14, r13, r14
	l.lwz	r23, 8692(r22)
	l.movhi	r6, 0
	l.addi	r13, r14, 4
	l.addi	r20, r20, 734           # CFC
	l.addi	r23, r23, 3
	l.addi	r3, r0, 120
	l.sw	4340(r12), r13
	l.addi	r24, r0, -4
	l.sw	-64(r2), r3
	l.movhi	r16, 0
	l.and	r24, r23, r24
	l.addi	r3, r0, 2
	l.addi	r13, r0, 120
	l.addi	r23, r24, 4
	l.sw	-112(r2), r3
	l.sw	4288(r12), r13
	l.sw	8692(r22), r23
	l.movhi	r5, hi(.L.str.1)
	l.addi	r28, r28, 2202
	l.addi	r13, r0, 2
	l.movhi	r26, 0
	l.ori	r5, r5, lo(.L.str.1)
	l.sw	4240(r12), r13
	l.addi	r23, r0, 120
	l.sw	-128(r2), r5
	l.movhi	r15, hi(.L.str.1)
	l.sw	8640(r22), r23
	l.lwz	r5, -88(r2)
	l.ori	r15, r15, lo(.L.str.1)
	l.addi	r23, r0, 2
	l.ori	r5, r5, 2
	l.sw	4224(r12), r15
	l.addi	r18, r18, 1835
	l.sw	8592(r22), r23
	l.lwz	r11, 0(r4)
	l.lwz	r15, 4264(r12)
	l.movhi	r25, hi(.L.str.1)
	l.lwz	r7, -84(r2)
	l.ori	r15, r15, 2
	l.ori	r25, r25, lo(.L.str.1)
	l.lwz	r8, 4352(r14)
	l.lwz	r17, 4268(r12)
	l.sw	8576(r22), r25
	l.lwz	r25, 8616(r22)
	l.ori	r25, r25, 2
	l.lwz	r31, 8704(r24)
	l.lwz	r27, 8620(r22)
	l.addi	r20, r20, 1468          # CFC
	l.j	.LBB26_107
	l.nop	0                       # in delay slot
.LBB26_77:                              # %sw.bb192
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 368
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.addi	r20, r20, 736           # CFC
	l.and	r13, r13, r14
	l.lwz	r23, 8692(r22)
	l.lwz	r3, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.movhi	r4, hi(.L.str.2)
	l.sw	4340(r12), r14
	l.addi	r24, r0, -4
	l.ori	r4, r4, lo(.L.str.2)
	l.addi	r28, r28, 2208
	l.lwz	r13, 4352(r13)
	l.and	r23, r23, r24
	l.sfeqi	r3, 0
	l.movhi	r14, hi(.L.str.2)
	l.ori	r14, r14, lo(.L.str.2)
	l.addi	r24, r23, 4
	l.sw	8692(r22), r24
	l.lwz	r23, 8704(r23)
	l.movhi	r24, hi(.L.str.2)
	l.ori	r24, r24, lo(.L.str.2)
	l.bf	.LBB26_289
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1840
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1472          # CFC
	l.bf	.LBB26_290
	l.nop	0
.LBB26_78:                              # %sw.bb192
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 369
	l.addi	r20, r20, 738           # CFC
	l.ori	r4, r3, 0
	l.addi	r28, r28, 2214
	l.ori	r14, r13, 0
	l.addi	r18, r18, 1845
	l.ori	r24, r23, 0
	l.addi	r20, r20, 1476          # CFC
.LBB26_79:                              # %sw.bb192
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 370
	l.sw	-136(r2), r4
	l.lwz	r3, -76(r2)
	l.lwz	r5, -84(r2)
	l.addi	r20, r20, 740           # CFC
	l.sfltsi	r5, 0
	l.sw	4216(r12), r14
	l.lwz	r13, 4276(r12)
	l.addi	r28, r28, 2220
	l.lwz	r15, 4268(r12)
	l.sw	8568(r22), r24
	l.lwz	r23, 8628(r22)
	l.lwz	r25, 8620(r22)
	l.bf	.LBB26_291
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1850
	l.sfltsi	r15, 0
	l.addi	r20, r20, 1480          # CFC
	l.bf	.LBB26_292
	l.nop	0
.LBB26_80:                              # %if.then200
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 371
	l.lwz	r3, -136(r2)
	l.movhi	r4, 0
	l.lwz	r13, 4216(r12)
	l.movhi	r14, 0
	l.lwz	r23, 8568(r22)
	l.addi	r20, r20, 742           # CFC
	l.movhi	r24, 0
	l.jal	memchr
	l.nop	0                       # in delay slot
	l.lwz	r4, -84(r2)
	l.sfeqi	r11, 0
	l.ori	r3, r4, 0
	l.lwz	r5, -88(r2)
	l.addi	r28, r28, 2226
	l.lwz	r14, 4268(r12)
	l.ori	r13, r14, 0
	l.lwz	r15, 4264(r12)
	l.lwz	r24, 8620(r22)
	l.ori	r23, r24, 0
	l.lwz	r25, 8616(r22)
	l.bf	.LBB26_293
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1855
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1484          # CFC
	l.bf	.LBB26_294
	l.nop	0
.LBB26_81:                              # %if.then204
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 372
	l.lwz	r3, -136(r2)
	l.sub	r3, r11, r3
	l.addi	r20, r20, 744           # CFC
	l.sfgts	r3, r4
	l.lwz	r13, 4216(r12)
	l.addi	r28, r28, 2232
	l.sub	r13, r8, r13
	l.lwz	r23, 8568(r22)
	l.sub	r23, r31, r23
	l.bf	.LBB26_295
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1860
	l.sfgts	r13, r14
	l.addi	r20, r20, 1488          # CFC
	l.bf	.LBB26_296
	l.nop	0
.LBB26_82:                              # %if.then204
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 373
	l.addi	r20, r20, 746           # CFC
	l.ori	r4, r3, 0
	l.addi	r28, r28, 2238
	l.ori	r14, r13, 0
	l.addi	r18, r18, 1865
	l.ori	r24, r23, 0
	l.addi	r20, r20, 1492          # CFC
.LBB26_83:                              # %if.then204
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 374
	l.addi	r20, r20, 748           # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 2244
	l.ori	r13, r14, 0
	l.addi	r18, r18, 1870
	l.ori	r23, r24, 0
	l.addi	r20, r20, 1496          # CFC
	l.j	.LBB26_85
	l.nop	0                       # in delay slot
.LBB26_71:                              # %cond.false160
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 375
	l.andi	r3, r5, 16
	l.sfeqi	r3, 0
	l.addi	r20, r20, 750           # CFC
	l.lwz	r7, -84(r2)
	l.andi	r13, r15, 16
	l.addi	r28, r28, 2250
	l.lwz	r17, 4268(r12)
	l.andi	r23, r25, 16
	l.lwz	r27, 8620(r22)
	l.bf	.LBB26_297
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1875
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1500          # CFC
	l.bf	.LBB26_298
	l.nop	0
.LBB26_72:                              # %cond.true163
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 376
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.addi	r20, r20, 752           # CFC
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.addi	r28, r28, 2256
	l.lwz	r23, 8692(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.sw	4340(r12), r14
	l.addi	r18, r18, 1880
	l.lwz	r8, 4352(r13)
	l.addi	r24, r0, -4
	l.and	r23, r23, r24
	l.addi	r24, r23, 4
	l.sw	8692(r22), r24
	l.lwz	r31, 8704(r23)
	l.addi	r20, r20, 1504          # CFC
	l.j	.LBB26_75
	l.nop	0                       # in delay slot
.LBB26_89:                              # %cond.false224
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 377
	l.andi	r3, r6, 16
	l.addi	r20, r20, 754           # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 2262
	l.andi	r13, r16, 16
	l.andi	r23, r26, 16
	l.bf	.LBB26_299
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1885
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1508          # CFC
	l.bf	.LBB26_300
	l.nop	0
.LBB26_90:                              # %cond.true227
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 378
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.addi	r20, r20, 756           # CFC
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.addi	r28, r28, 2268
	l.lwz	r23, 8692(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.sw	4340(r12), r14
	l.addi	r18, r18, 1890
	l.lwz	r8, 4352(r13)
	l.addi	r24, r0, -4
	l.and	r23, r23, r24
	l.addi	r24, r23, 4
	l.sw	8692(r22), r24
	l.lwz	r31, 8704(r23)
	l.addi	r20, r20, 1512          # CFC
	l.j	.LBB26_93
	l.nop	0                       # in delay slot
.LBB26_97:                              # %cond.false258
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 379
	l.andi	r3, r5, 16
	l.sfeqi	r3, 0
	l.addi	r20, r20, 758           # CFC
	l.ori	r6, r5, 0
	l.andi	r13, r15, 16
	l.addi	r28, r28, 2274
	l.ori	r16, r15, 0
	l.andi	r23, r25, 16
	l.ori	r26, r25, 0
	l.bf	.LBB26_301
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1895
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1516          # CFC
	l.bf	.LBB26_302
	l.nop	0
.LBB26_98:                              # %cond.true261
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 380
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r5, r0, -4
	l.and	r3, r3, r5
	l.addi	r5, r3, 4
	l.lwz	r13, 4340(r12)
	l.addi	r20, r20, 760           # CFC
	l.addi	r13, r13, 3
	l.addi	r15, r0, -4
	l.sw	-12(r2), r5
	l.and	r13, r13, r15
	l.lwz	r23, 8692(r22)
	l.lwz	r11, 0(r3)
	l.addi	r28, r28, 2280
	l.addi	r15, r13, 4
	l.addi	r23, r23, 3
	l.ori	r5, r6, 0
	l.sw	4340(r12), r15
	l.addi	r25, r0, -4
	l.lwz	r8, 4352(r13)
	l.addi	r18, r18, 1900
	l.ori	r15, r16, 0
	l.and	r23, r23, r25
	l.addi	r25, r23, 4
	l.sw	8692(r22), r25
	l.lwz	r31, 8704(r23)
	l.ori	r25, r26, 0
	l.addi	r20, r20, 1520          # CFC
	l.j	.LBB26_101
	l.nop	0                       # in delay slot
.LBB26_54:                              # %cond.false95
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 381
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.addi	r20, r20, 762           # CFC
	l.lwz	r23, 8692(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.andi	r3, r5, 64
	l.sw	4340(r12), r14
	l.addi	r24, r0, -4
	l.sfeqi	r3, 0
	l.lwz	r8, 4352(r13)
	l.and	r23, r23, r24
	l.addi	r28, r28, 2286
	l.lwz	r7, -84(r2)
	l.andi	r13, r15, 64
	l.addi	r24, r23, 4
	l.lwz	r4, -120(r2)
	l.lwz	r17, 4268(r12)
	l.lwz	r14, 4232(r12)
	l.sw	8692(r22), r24
	l.lwz	r31, 8704(r23)
	l.andi	r23, r25, 64
	l.lwz	r27, 8620(r22)
	l.lwz	r24, 8584(r22)
	l.bf	.LBB26_303
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1905
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1524          # CFC
	l.bf	.LBB26_304
	l.nop	0
.LBB26_55:                              # %cond.true98
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 382
	l.slli	r3, r11, 16
	l.addi	r20, r20, 764           # CFC
	l.srai	r11, r3, 16
	l.slli	r13, r8, 16
	l.addi	r28, r28, 2292
	l.srai	r8, r13, 16
	l.addi	r18, r18, 1910
	l.slli	r23, r31, 16
	l.srai	r31, r23, 16
	l.addi	r20, r20, 1528          # CFC
.LBB26_56:                              # %cond.end113
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 383
	l.addi	r20, r20, 766           # CFC
	l.srai	r6, r11, 31
	l.addi	r28, r28, 2298
	l.srai	r16, r8, 31
	l.addi	r18, r18, 1915
	l.srai	r26, r31, 31
	l.addi	r20, r20, 1532          # CFC
.LBB26_57:                              # %cond.end116
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 384
	l.addi	r3, r0, 1
	l.sw	-112(r2), r3
	l.addi	r20, r20, 768           # CFC
	l.sfgtsi	r6, -1
	l.addi	r13, r0, 1
	l.addi	r28, r28, 2304
	l.sw	4240(r12), r13
	l.addi	r23, r0, 1
	l.sw	8592(r22), r23
	l.bf	.LBB26_305
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1920
	l.sfgtsi	r16, -1
	l.addi	r20, r20, 1536          # CFC
	l.bf	.LBB26_306
	l.nop	0
.LBB26_58:                              # %if.then120
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 385
	l.movhi	r4, 0
	l.sub	r5, r4, r6
	l.addi	r6, r0, 1
	l.sfnei	r11, 0
	l.addi	r20, r20, 770           # CFC
	l.sw	-112(r2), r6
	l.movhi	r14, 0
	l.sub	r15, r14, r16
	l.addi	r16, r0, 1
	l.addi	r28, r28, 2310
	l.sw	4240(r12), r16
	l.movhi	r24, 0
	l.sub	r25, r24, r26
	l.addi	r26, r0, 1
	l.sw	8592(r22), r26
	l.bf	.LBB26_307
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1925
	l.sfnei	r8, 0
	l.addi	r20, r20, 1540          # CFC
	l.bf	.LBB26_308
	l.nop	0
.LBB26_59:                              # %if.then120
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 386
	l.addi	r20, r20, 772           # CFC
	l.movhi	r6, 0
	l.addi	r28, r28, 2316
	l.movhi	r16, 0
	l.addi	r18, r18, 1930
	l.movhi	r26, 0
	l.addi	r20, r20, 1544          # CFC
.LBB26_60:                              # %if.then120
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 387
	l.sub	r6, r5, r6
	l.sub	r11, r4, r11
	l.addi	r4, r0, 45
	l.addi	r20, r20, 774           # CFC
	l.sb	-13(r2), r4
	l.lwz	r5, -88(r2)
	l.sub	r16, r15, r16
	l.sub	r8, r14, r8
	l.addi	r28, r28, 2322
	l.addi	r14, r0, 45
	l.sb	4339(r12), r14
	l.lwz	r15, 4264(r12)
	l.sub	r26, r25, r26
	l.addi	r18, r18, 1935
	l.sub	r31, r24, r31
	l.addi	r24, r0, 45
	l.sb	8691(r22), r24
	l.lwz	r25, 8616(r22)
	l.addi	r20, r20, 1548          # CFC
	l.j	.LBB26_108
	l.nop	0                       # in delay slot
.LBB26_73:                              # %cond.false165
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 388
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.addi	r20, r20, 776           # CFC
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 8692(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.andi	r3, r5, 64
	l.sw	4340(r12), r14
	l.addi	r28, r28, 2328
	l.addi	r24, r0, -4
	l.sfeqi	r3, 0
	l.lwz	r8, 4352(r13)
	l.andi	r13, r15, 64
	l.and	r23, r23, r24
	l.addi	r24, r23, 4
	l.sw	8692(r22), r24
	l.lwz	r31, 8704(r23)
	l.andi	r23, r25, 64
	l.bf	.LBB26_309
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1940
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1552          # CFC
	l.bf	.LBB26_310
	l.nop	0
.LBB26_74:                              # %cond.false165
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 389
	l.addi	r20, r20, 778           # CFC
	l.andi	r11, r11, 65535
	l.addi	r28, r28, 2334
	l.andi	r8, r8, 65535
	l.addi	r18, r18, 1945
	l.andi	r31, r31, 65535
	l.addi	r20, r20, 1556          # CFC
.LBB26_75:                              # %cond.end183
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 390
	l.movhi	r3, 0
	l.sw	-112(r2), r3
	l.sw	-64(r2), r6
	l.addi	r20, r20, 780           # CFC
	l.movhi	r6, 0
	l.movhi	r13, 0
	l.sw	4240(r12), r13
	l.addi	r28, r28, 2340
	l.sw	4288(r12), r16
	l.movhi	r16, 0
	l.movhi	r23, 0
	l.addi	r18, r18, 1950
	l.sw	8592(r22), r23
	l.sw	8640(r22), r26
	l.movhi	r26, 0
	l.addi	r20, r20, 1560          # CFC
	l.j	.LBB26_107
	l.nop	0                       # in delay slot
.LBB26_91:                              # %cond.false229
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 391
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.and	r3, r3, r4
	l.addi	r4, r3, 4
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r14, r0, -4
	l.addi	r20, r20, 782           # CFC
	l.sw	-12(r2), r4
	l.and	r13, r13, r14
	l.lwz	r23, 8692(r22)
	l.lwz	r11, 0(r3)
	l.addi	r14, r13, 4
	l.addi	r23, r23, 3
	l.andi	r3, r6, 64
	l.sw	4340(r12), r14
	l.addi	r28, r28, 2346
	l.addi	r24, r0, -4
	l.sfeqi	r3, 0
	l.lwz	r8, 4352(r13)
	l.andi	r13, r16, 64
	l.and	r23, r23, r24
	l.addi	r24, r23, 4
	l.sw	8692(r22), r24
	l.lwz	r31, 8704(r23)
	l.andi	r23, r26, 64
	l.bf	.LBB26_311
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1955
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1564          # CFC
	l.bf	.LBB26_312
	l.nop	0
.LBB26_92:                              # %cond.false229
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 392
	l.addi	r20, r20, 784           # CFC
	l.andi	r11, r11, 65535
	l.addi	r28, r28, 2352
	l.andi	r8, r8, 65535
	l.addi	r18, r18, 1960
	l.andi	r31, r31, 65535
	l.addi	r20, r20, 1568          # CFC
.LBB26_93:                              # %cond.false229
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 393
	l.lwz	r7, -84(r2)
	l.movhi	r6, 0
	l.addi	r3, r0, 1
	l.sw	-112(r2), r3
	l.addi	r20, r20, 786           # CFC
	l.sw	-64(r2), r5
	l.lwz	r17, 4268(r12)
	l.movhi	r16, 0
	l.addi	r13, r0, 1
	l.lwz	r5, -88(r2)
	l.addi	r28, r28, 2358
	l.sw	4240(r12), r13
	l.lwz	r27, 8620(r22)
	l.sw	4288(r12), r15
	l.lwz	r15, 4264(r12)
	l.addi	r18, r18, 1965
	l.movhi	r26, 0
	l.addi	r23, r0, 1
	l.sw	8592(r22), r23
	l.sw	8640(r22), r25
	l.lwz	r25, 8616(r22)
	l.addi	r20, r20, 1572          # CFC
	l.j	.LBB26_107
	l.nop	0                       # in delay slot
.LBB26_99:                              # %cond.false263
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 394
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r5, r0, -4
	l.and	r3, r3, r5
	l.addi	r5, r3, 4
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 3
	l.addi	r15, r0, -4
	l.sw	-12(r2), r5
	l.addi	r20, r20, 788           # CFC
	l.and	r13, r13, r15
	l.lwz	r23, 8692(r22)
	l.lwz	r11, 0(r3)
	l.addi	r15, r13, 4
	l.addi	r23, r23, 3
	l.andi	r3, r6, 64
	l.sw	4340(r12), r15
	l.addi	r25, r0, -4
	l.sfeqi	r3, 0
	l.addi	r28, r28, 2364
	l.lwz	r8, 4352(r13)
	l.and	r23, r23, r25
	l.ori	r5, r6, 0
	l.andi	r13, r16, 64
	l.ori	r15, r16, 0
	l.addi	r25, r23, 4
	l.sw	8692(r22), r25
	l.lwz	r31, 8704(r23)
	l.andi	r23, r26, 64
	l.ori	r25, r26, 0
	l.bf	.LBB26_313
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1970
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1576          # CFC
	l.bf	.LBB26_314
	l.nop	0
.LBB26_100:                             # %cond.false263
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 395
	l.addi	r20, r20, 790           # CFC
	l.andi	r11, r11, 65535
	l.addi	r28, r28, 2370
	l.andi	r8, r8, 65535
	l.addi	r18, r18, 1975
	l.andi	r31, r31, 65535
	l.addi	r20, r20, 1580          # CFC
.LBB26_101:                             # %cond.end281
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 396
	l.addi	r20, r20, 792           # CFC
	l.movhi	r6, 0
	l.addi	r28, r28, 2376
	l.movhi	r16, 0
	l.addi	r18, r18, 1980
	l.movhi	r26, 0
	l.addi	r20, r20, 1584          # CFC
.LBB26_102:                             # %cond.end284
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 397
	l.sw	-80(r2), r6
	l.or	r3, r11, r6
	l.ori	r6, r5, 0
	l.ori	r5, r6, 2
	l.addi	r20, r20, 794           # CFC
	l.sfnei	r3, 0
	l.sw	4272(r12), r16
	l.or	r13, r8, r16
	l.ori	r16, r15, 0
	l.addi	r28, r28, 2382
	l.ori	r15, r16, 2
	l.sw	8624(r22), r26
	l.or	r23, r31, r26
	l.ori	r26, r25, 0
	l.ori	r25, r26, 2
	l.bf	.LBB26_315
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1985
	l.sfnei	r13, 0
	l.addi	r20, r20, 1588          # CFC
	l.bf	.LBB26_316
	l.nop	0
.LBB26_103:                             # %cond.end284
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 398
	l.addi	r20, r20, 796           # CFC
	l.ori	r5, r6, 0
	l.addi	r28, r28, 2388
	l.ori	r15, r16, 0
	l.addi	r18, r18, 1990
	l.ori	r25, r26, 0
	l.addi	r20, r20, 1592          # CFC
.LBB26_104:                             # %cond.end284
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 399
	l.andi	r3, r6, 1
	l.sfnei	r3, 0
	l.addi	r20, r20, 798           # CFC
	l.lwz	r7, -84(r2)
	l.andi	r13, r16, 1
	l.addi	r28, r28, 2394
	l.lwz	r17, 4268(r12)
	l.andi	r23, r26, 1
	l.lwz	r27, 8620(r22)
	l.bf	.LBB26_317
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 1995
	l.sfnei	r13, 0
	l.addi	r20, r20, 1596          # CFC
	l.bf	.LBB26_318
	l.nop	0
.LBB26_105:                             # %cond.end284
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 400
	l.addi	r20, r20, 800           # CFC
	l.ori	r5, r6, 0
	l.addi	r28, r28, 2400
	l.ori	r15, r16, 0
	l.addi	r18, r18, 2000
	l.ori	r25, r26, 0
	l.addi	r20, r20, 1600          # CFC
.LBB26_106:                             # %cond.end284
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 401
	l.addi	r3, r0, 2
	l.sw	-112(r2), r3
	l.sw	-128(r2), r4
	l.addi	r20, r20, 802           # CFC
	l.lwz	r6, -80(r2)
	l.addi	r13, r0, 2
	l.sw	4240(r12), r13
	l.addi	r28, r28, 2406
	l.sw	4224(r12), r14
	l.lwz	r16, 4272(r12)
	l.addi	r23, r0, 2
	l.addi	r18, r18, 2005
	l.sw	8592(r22), r23
	l.sw	8576(r22), r24
	l.lwz	r26, 8624(r22)
	l.addi	r20, r20, 1604          # CFC
.LBB26_107:                             # %nosign
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 402
	l.movhi	r4, 0
	l.addi	r20, r20, 804           # CFC
	l.sb	-13(r2), r4
	l.movhi	r14, 0
	l.addi	r28, r28, 2412
	l.sb	4339(r12), r14
	l.addi	r18, r18, 2010
	l.movhi	r24, 0
	l.sb	8691(r22), r24
	l.addi	r20, r20, 1608          # CFC
.LBB26_108:                             # %number
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 403
	l.ori	r3, r4, 0
	l.sw	-80(r2), r6
	l.addi	r4, r0, -129
	l.and	r4, r5, r4
	l.sw	-88(r2), r4
	l.addi	r20, r20, 806           # CFC
	l.sfgtsi	r7, -1
	l.ori	r13, r14, 0
	l.sw	4272(r12), r16
	l.addi	r14, r0, -129
	l.and	r14, r15, r14
	l.addi	r28, r28, 2418
	l.sw	4264(r12), r14
	l.ori	r23, r24, 0
	l.sw	8624(r22), r26
	l.addi	r24, r0, -129
	l.and	r24, r25, r24
	l.sw	8616(r22), r24
	l.bf	.LBB26_319
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2015
	l.sfgtsi	r17, -1
	l.addi	r20, r20, 1612          # CFC
	l.bf	.LBB26_320
	l.nop	0
.LBB26_109:                             # %number
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 404
	l.addi	r20, r20, 808           # CFC
	l.sw	-88(r2), r5
	l.addi	r28, r28, 2424
	l.sw	4264(r12), r15
	l.addi	r18, r18, 2020
	l.sw	8616(r22), r25
	l.addi	r20, r20, 1616          # CFC
.LBB26_110:                             # %number
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 405
	l.sw	-84(r2), r7
	l.sfnei	r7, 0
	l.lwz	r6, -76(r2)
	l.addi	r20, r20, 810           # CFC
	l.lwz	r4, -80(r2)
	l.sw	4268(r12), r17
	l.lwz	r16, 4276(r12)
	l.addi	r28, r28, 2430
	l.lwz	r14, 4272(r12)
	l.sw	8620(r22), r27
	l.lwz	r26, 8628(r22)
	l.lwz	r24, 8624(r22)
	l.bf	.LBB26_321
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2025
	l.sfnei	r17, 0
	l.addi	r20, r20, 1620          # CFC
	l.bf	.LBB26_322
	l.nop	0
.LBB26_111:                             # %number
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 406
	l.or	r4, r11, r4
	l.sfeqi	r4, 0
	l.addi	r20, r20, 812           # CFC
	l.lwz	r5, -144(r2)
	l.or	r14, r8, r14
	l.addi	r28, r28, 2436
	l.lwz	r15, 4208(r12)
	l.or	r24, r31, r24
	l.lwz	r25, 8560(r22)
	l.bf	.LBB26_323
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2030
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1624          # CFC
	l.bf	.LBB26_324
	l.nop	0
.LBB26_112:                             # %if.then305
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 407
	l.lwz	r4, -112(r2)
	l.addi	r20, r20, 814           # CFC
	l.sfeqi	r4, 0
	l.addi	r28, r28, 2442
	l.lwz	r14, 4240(r12)
	l.lwz	r24, 8592(r22)
	l.bf	.LBB26_325
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2035
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1628          # CFC
	l.bf	.LBB26_326
	l.nop	0
.LBB26_113:                             # %if.then305
                                        #   in Loop: Header=BB26_3 Depth=3
	l.sfeqi	r4, 1
	l.bf	.LBB26_327
	l.nop	0                       # in delay slot
	l.sfeqi	r14, 1
	l.bf	.LBB26_328
	l.nop	0
.LBB26_114:                             # %if.then305
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 408
	l.sw	-100(r2), r11
	l.lwz	r11, -84(r2)
	l.addi	r7, r0, 25
	l.sw	-112(r2), r4
	l.movhi	r4, hi(.L.str.4)
	l.sw	4252(r12), r8
	l.lwz	r8, 4268(r12)
	l.addi	r20, r20, 816           # CFC
	l.addi	r17, r0, 25
	l.ori	r5, r4, lo(.L.str.4)
	l.sw	4240(r12), r14
	l.sw	8604(r22), r31
	l.lwz	r4, -112(r2)
	l.movhi	r14, hi(.L.str.4)
	l.lwz	r31, 8620(r22)
	l.addi	r28, r28, 2448
	l.sfnei	r4, 2
	l.ori	r15, r14, lo(.L.str.4)
	l.lwz	r14, 4240(r12)
	l.addi	r27, r0, 25
	l.sw	8592(r22), r24
	l.movhi	r24, hi(.L.str.4)
	l.ori	r25, r24, lo(.L.str.4)
	l.lwz	r24, 8592(r22)
	l.bf	.LBB26_329
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2040
	l.sfnei	r14, 2
	l.addi	r20, r20, 1632          # CFC
	l.bf	.LBB26_330
	l.nop	0
.LBB26_115:                             # %do.body360.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 409
	l.lwz	r5, -144(r2)
	l.lwz	r11, -100(r2)
	l.addi	r20, r20, 818           # CFC
	l.lwz	r7, -80(r2)
	l.lwz	r15, 4208(r12)
	l.addi	r28, r28, 2454
	l.lwz	r8, 4252(r12)
	l.lwz	r17, 4272(r12)
	l.addi	r18, r18, 2045
	l.lwz	r25, 8560(r22)
	l.lwz	r31, 8604(r22)
	l.lwz	r27, 8624(r22)
	l.addi	r20, r20, 1636          # CFC
.LBB26_116:                             # %do.body360
                                        #   Parent Loop BB26_1 Depth=1
                                        #     Parent Loop BB26_2 Depth=2
                                        #       Parent Loop BB26_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 410
	l.andi	r3, r11, 15
	l.lwz	r4, -128(r2)
	l.add	r3, r4, r3
	l.lbz	r3, 0(r3)
	l.sb	-1(r5), r3
	l.andi	r13, r8, 15
	l.lwz	r14, 4224(r12)
	l.add	r13, r14, r13
	l.srli	r3, r11, 4
	l.lbz	r13, 4352(r13)
	l.andi	r23, r31, 15
	l.addi	r20, r20, 820           # CFC
	l.slli	r4, r7, 28
	l.sb	4351(r15), r13
	l.lwz	r24, 8576(r22)
	l.or	r11, r3, r4
	l.srli	r13, r8, 4
	l.add	r23, r24, r23
	l.addi	r5, r5, -1
	l.slli	r14, r17, 28
	l.lbz	r23, 8704(r23)
	l.srli	r7, r7, 4
	l.or	r8, r13, r14
	l.addi	r28, r28, 2460
	l.sb	8703(r25), r23
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
	l.bf	.LBB26_331
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2050
	l.sfnei	r13, 0
	l.addi	r20, r20, 1640          # CFC
	l.bf	.LBB26_332
	l.nop	0
.LBB26_235:                             # %do.body360
                                        #   in Loop: Header=BB26_3 Depth=3
	l.j	.LBB26_141
	l.nop	0                       # in delay slot
.LBB26_117:                             # %do.body307.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 411
	l.lwz	r3, -152(r2)
	l.addi	r20, r20, 822           # CFC
	l.lwz	r7, -80(r2)
	l.lwz	r13, 4200(r12)
	l.addi	r28, r28, 2466
	l.lwz	r17, 4272(r12)
	l.addi	r18, r18, 2055
	l.lwz	r23, 8552(r22)
	l.lwz	r27, 8624(r22)
	l.addi	r20, r20, 1644          # CFC
.LBB26_118:                             # %do.body307
                                        #   Parent Loop BB26_1 Depth=1
                                        #     Parent Loop BB26_2 Depth=2
                                        #       Parent Loop BB26_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 412
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
	l.addi	r20, r20, 824           # CFC
	l.slli	r24, r27, 29
	l.addi	r3, r3, -1
	l.ori	r14, r14, 48
	l.srli	r25, r31, 3
	l.srli	r7, r7, 3
	l.sb	4352(r13), r14
	l.or	r25, r25, r24
	l.or	r6, r5, r7
	l.addi	r13, r13, -1
	l.andi	r24, r31, 7
	l.addi	r28, r28, 2472
	l.sfnei	r6, 0
	l.srli	r17, r17, 3
	l.ori	r24, r24, 48
	l.ori	r11, r5, 0
	l.or	r16, r15, r17
	l.ori	r8, r15, 0
	l.sb	8704(r23), r24
	l.addi	r23, r23, -1
	l.srli	r27, r27, 3
	l.or	r26, r25, r27
	l.ori	r31, r25, 0
	l.bf	.LBB26_333
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2060
	l.sfnei	r16, 0
	l.addi	r20, r20, 1648          # CFC
	l.bf	.LBB26_334
	l.nop	0
.LBB26_119:                             # %do.end314
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 413
	l.addi	r6, r3, 1
	l.lwz	r5, -88(r2)
	l.andi	r5, r5, 1
	l.addi	r20, r20, 826           # CFC
	l.sfeqi	r5, 0
	l.addi	r16, r13, 1
	l.lwz	r15, 4264(r12)
	l.addi	r28, r28, 2478
	l.andi	r15, r15, 1
	l.addi	r26, r23, 1
	l.lwz	r25, 8616(r22)
	l.andi	r25, r25, 1
	l.bf	.LBB26_335
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2065
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1652          # CFC
	l.bf	.LBB26_336
	l.nop	0
.LBB26_338:
	l.addi	r18, r18, 414
	l.ori	r5, r6, 0
	l.addi	r20, r20, 828           # CFC
	l.lwz	r6, -76(r2)
	l.ori	r15, r16, 0
	l.addi	r28, r28, 2484
	l.lwz	r16, 4276(r12)
	l.addi	r18, r18, 2070
	l.ori	r25, r26, 0
	l.lwz	r26, 8628(r22)
	l.addi	r20, r20, 1656          # CFC
.LBB26_120:                             # %do.end314
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 415
	l.xori	r4, r4, 48
	l.addi	r20, r20, 830           # CFC
	l.sfeqi	r4, 0
	l.addi	r28, r28, 2490
	l.xori	r14, r14, 48
	l.xori	r24, r24, 48
	l.bf	.LBB26_339
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2075
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1660          # CFC
	l.bf	.LBB26_340
	l.nop	0
.LBB26_121:                             # %if.then321
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 416
	l.addi	r4, r0, 48
	l.sb	0(r3), r4
	l.addi	r20, r20, 832           # CFC
	l.ori	r5, r3, 0
	l.addi	r14, r0, 48
	l.addi	r28, r28, 2496
	l.sb	4352(r13), r14
	l.ori	r15, r13, 0
	l.addi	r18, r18, 2080
	l.addi	r24, r0, 48
	l.sb	8704(r23), r24
	l.ori	r25, r23, 0
	l.addi	r20, r20, 1664          # CFC
	l.j	.LBB26_141
	l.nop	0                       # in delay slot
.LBB26_122:                             # %sw.bb324
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 417
	l.lwz	r3, -88(r2)
	l.andi	r3, r3, 32
	l.sfeqi	r3, 0
	l.addi	r20, r20, 834           # CFC
	l.lwz	r5, -84(r2)
	l.lwz	r13, 4264(r12)
	l.andi	r13, r13, 32
	l.addi	r28, r28, 2502
	l.lwz	r15, 4268(r12)
	l.lwz	r23, 8616(r22)
	l.andi	r23, r23, 32
	l.lwz	r25, 8620(r22)
	l.bf	.LBB26_341
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2085
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1668          # CFC
	l.bf	.LBB26_342
	l.nop	0
.LBB26_123:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 418
	l.addi	r3, r0, 1
	l.addi	r20, r20, 836           # CFC
	l.sfltui	r11, 10
	l.addi	r28, r28, 2508
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.bf	.LBB26_343
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2090
	l.sfltui	r8, 10
	l.addi	r20, r20, 1672          # CFC
	l.bf	.LBB26_344
	l.nop	0
.LBB26_124:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 419
	l.addi	r20, r20, 838           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 2514
	l.movhi	r13, 0
	l.addi	r18, r18, 2095
	l.movhi	r23, 0
	l.addi	r20, r20, 1676          # CFC
.LBB26_125:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 420
	l.lwz	r4, -80(r2)
	l.addi	r20, r20, 840           # CFC
	l.sfeqi	r4, 0
	l.addi	r28, r28, 2520
	l.lwz	r14, 4272(r12)
	l.lwz	r24, 8624(r22)
	l.bf	.LBB26_345
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2100
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1680          # CFC
	l.bf	.LBB26_346
	l.nop	0
.LBB26_126:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 421
	l.addi	r20, r20, 842           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 2526
	l.movhi	r13, 0
	l.addi	r18, r18, 2105
	l.movhi	r23, 0
	l.addi	r20, r20, 1684          # CFC
.LBB26_127:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 422
	l.andi	r3, r3, 1
	l.sfnei	r3, 0
	l.addi	r20, r20, 844           # CFC
	l.lwz	r7, -144(r2)
	l.andi	r13, r13, 1
	l.addi	r28, r28, 2532
	l.lwz	r17, 4208(r12)
	l.andi	r23, r23, 1
	l.lwz	r27, 8560(r22)
	l.bf	.LBB26_347
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2110
	l.sfnei	r13, 0
	l.addi	r20, r20, 1688          # CFC
	l.bf	.LBB26_348
	l.nop	0
.LBB26_350:
	l.addi	r18, r18, 423
	l.addi	r20, r20, 846           # CFC
	l.lwz	r3, -80(r2)
	l.addi	r28, r28, 2538
	l.lwz	r13, 4272(r12)
	l.addi	r18, r18, 2115
	l.lwz	r23, 8624(r22)
	l.addi	r20, r20, 1692          # CFC
.LBB26_128:                             # %while.body346.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 424
	l.lwz	r7, -144(r2)
	l.addi	r20, r20, 848           # CFC
	l.ori	r4, r11, 0
	l.lwz	r17, 4208(r12)
	l.addi	r28, r28, 2544
	l.ori	r14, r8, 0
	l.addi	r18, r18, 2120
	l.lwz	r27, 8560(r22)
	l.ori	r24, r31, 0
	l.addi	r20, r20, 1696          # CFC
.LBB26_129:                             # %while.body346
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 425
	l.sw	-112(r2), r7
	l.addi	r6, r0, 10
	l.sw	-80(r2), r3
	l.sw	-116(r2), r4
	l.movhi	r5, 0
	l.sw	4240(r12), r17
	l.addi	r16, r0, 10
	l.sw	4272(r12), r13
	l.sw	4236(r12), r14
	l.movhi	r15, 0
	l.sw	8592(r22), r27
	l.addi	r26, r0, 10
	l.sw	8624(r22), r23
	l.sw	8588(r22), r24
	l.movhi	r25, 0
	l.addi	r20, r20, 850           # CFC
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
	l.sw	4232(r12), r8
	l.ori	r13, r8, 0
	l.sw	4252(r12), r14
	l.addi	r25, r0, -1
	l.addi	r28, r28, 2550
	l.addi	r26, r0, -10
	l.sw	8584(r22), r31
	l.ori	r23, r31, 0
	l.sw	8604(r22), r24
	l.jal	__muldi3
	l.nop	0                       # in delay slot
	l.addi	r3, r0, 1
	l.lwz	r5, -80(r2)
	l.sfnei	r5, 0
	l.ori	r4, r3, 0
	l.addi	r13, r0, 1
	l.lwz	r15, 4272(r12)
	l.ori	r14, r13, 0
	l.addi	r23, r0, 1
	l.lwz	r25, 8624(r22)
	l.ori	r24, r23, 0
	l.bf	.LBB26_351
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2125
	l.sfnei	r15, 0
	l.addi	r20, r20, 1700          # CFC
	l.bf	.LBB26_352
	l.nop	0
.LBB26_134:                             # %while.body346
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 426
	l.addi	r20, r20, 852           # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 2556
	l.movhi	r14, 0
	l.addi	r18, r18, 2130
	l.movhi	r24, 0
	l.addi	r20, r20, 1704          # CFC
.LBB26_135:                             # %while.body346
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 427
	l.lwz	r7, -116(r2)
	l.addi	r20, r20, 854           # CFC
	l.sfgtui	r7, 99
	l.addi	r28, r28, 2562
	l.lwz	r17, 4236(r12)
	l.lwz	r27, 8588(r22)
	l.bf	.LBB26_353
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2135
	l.sfgtui	r17, 99
	l.addi	r20, r20, 1708          # CFC
	l.bf	.LBB26_354
	l.nop	0
.LBB26_136:                             # %while.body346
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 428
	l.addi	r20, r20, 856           # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 2568
	l.movhi	r13, 0
	l.addi	r18, r18, 2140
	l.movhi	r23, 0
	l.addi	r20, r20, 1712          # CFC
.LBB26_137:                             # %while.body346
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 429
	l.sfeqi	r5, 0
	l.lwz	r6, -76(r2)
	l.addi	r20, r20, 858           # CFC
	l.lwz	r11, -100(r2)
	l.lwz	r16, 4276(r12)
	l.addi	r28, r28, 2574
	l.lwz	r8, 4252(r12)
	l.lwz	r26, 8628(r22)
	l.lwz	r31, 8604(r22)
	l.bf	.LBB26_355
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2145
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1716          # CFC
	l.bf	.LBB26_356
	l.nop	0
.LBB26_358:
	l.addi	r18, r18, 430
	l.addi	r20, r20, 860           # CFC
	l.lwz	r5, -84(r2)
	l.addi	r28, r28, 2580
	l.lwz	r15, 4268(r12)
	l.addi	r18, r18, 2150
	l.lwz	r25, 8620(r22)
	l.addi	r20, r20, 1720          # CFC
.LBB26_138:                             # %while.body346
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 431
	l.addi	r20, r20, 862           # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 2586
	l.ori	r13, r14, 0
	l.addi	r18, r18, 2155
	l.ori	r23, r24, 0
	l.addi	r20, r20, 1724          # CFC
.LBB26_139:                             # %while.body346
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 432
	l.add	r14, r17, r12
	l.add	r24, r27, r12
	l.add	r4, r7, r12
	l.addi	r4, r4, 48
	l.lwz	r7, -112(r2)
	l.sb	-1(r7), r4
	l.addi	r7, r7, -1
	l.addi	r20, r20, 864           # CFC
	l.andi	r3, r3, 1
	l.addi	r14, r14, 48
	l.lwz	r17, 4240(r12)
	l.sb	4351(r17), r14
	l.sfnei	r3, 0
	l.addi	r17, r17, -1
	l.addi	r24, r24, 48
	l.addi	r28, r28, 2592
	l.ori	r4, r11, 0
	l.andi	r13, r13, 1
	l.ori	r14, r8, 0
	l.lwz	r27, 8592(r22)
	l.sb	8703(r27), r24
	l.addi	r27, r27, -1
	l.andi	r23, r23, 1
	l.ori	r24, r31, 0
	l.bf	.LBB26_359
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2160
	l.sfnei	r13, 0
	l.addi	r20, r20, 1728          # CFC
	l.bf	.LBB26_360
	l.nop	0
.LBB26_362:
	l.addi	r18, r18, 433
	l.addi	r20, r20, 866           # CFC
	l.lwz	r3, -120(r2)
	l.addi	r28, r28, 2598
	l.lwz	r13, 4232(r12)
	l.addi	r18, r18, 2165
	l.lwz	r23, 8584(r22)
	l.addi	r20, r20, 1732          # CFC
.LBB26_140:                             # %while.end354
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 434
	l.addi	r3, r11, 48
	l.sb	-1(r7), r3
	l.addi	r20, r20, 868           # CFC
	l.addi	r5, r7, -1
	l.addi	r13, r8, 48
	l.addi	r28, r28, 2604
	l.sb	4351(r17), r13
	l.addi	r15, r17, -1
	l.addi	r18, r18, 2170
	l.addi	r23, r31, 48
	l.sb	8703(r27), r23
	l.addi	r25, r27, -1
	l.addi	r20, r20, 1736          # CFC
	l.j	.LBB26_141
	l.nop	0                       # in delay slot
.LBB26_130:                             # %if.then327
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 435
	l.sfltui	r11, 10
	l.addi	r20, r20, 870           # CFC
	l.lwz	r3, -144(r2)
	l.addi	r28, r28, 2610
	l.lwz	r13, 4208(r12)
	l.lwz	r23, 8560(r22)
	l.bf	.LBB26_363
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2175
	l.sfltui	r8, 10
	l.addi	r20, r20, 1740          # CFC
	l.bf	.LBB26_364
	l.nop	0
.LBB26_131:                             # %while.body332.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 436
	l.ori	r4, r11, 0
	l.addi	r20, r20, 872           # CFC
	l.lwz	r3, -144(r2)
	l.ori	r14, r8, 0
	l.addi	r28, r28, 2616
	l.lwz	r13, 4208(r12)
	l.addi	r18, r18, 2180
	l.ori	r24, r31, 0
	l.lwz	r23, 8560(r22)
	l.addi	r20, r20, 1744          # CFC
.LBB26_132:                             # %while.body332
                                        #   Parent Loop BB26_1 Depth=1
                                        #     Parent Loop BB26_2 Depth=2
                                        #       Parent Loop BB26_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 437
	l.addi	r5, r0, 10
	l.divu	r11, r4, r5
	l.muli	r5, r11, -10
	l.add	r5, r4, r5
	l.addi	r5, r5, 48
	l.addi	r15, r0, 10
	l.divu	r8, r14, r15
	l.addi	r20, r20, 874           # CFC
	l.muli	r15, r8, -10
	l.sb	-1(r3), r5
	l.add	r15, r14, r15
	l.addi	r25, r0, 10
	l.addi	r3, r3, -1
	l.addi	r15, r15, 48
	l.divu	r31, r24, r25
	l.addi	r28, r28, 2622
	l.sfgtui	r4, 99
	l.sb	4351(r13), r15
	l.addi	r13, r13, -1
	l.muli	r25, r31, -10
	l.add	r25, r24, r25
	l.addi	r25, r25, 48
	l.sb	8703(r23), r25
	l.addi	r23, r23, -1
	l.bf	.LBB26_365
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2185
	l.sfgtui	r14, 99
	l.addi	r20, r20, 1748          # CFC
	l.bf	.LBB26_366
	l.nop	0
.LBB26_368:
	l.addi	r18, r18, 438
	l.addi	r20, r20, 876           # CFC
	l.ori	r4, r11, 0
	l.addi	r28, r28, 2628
	l.ori	r14, r8, 0
	l.addi	r18, r18, 2190
	l.ori	r24, r31, 0
	l.addi	r20, r20, 1752          # CFC
.LBB26_133:                             # %while.end338
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 439
	l.addi	r4, r11, 48
	l.sb	-1(r3), r4
	l.addi	r20, r20, 878           # CFC
	l.addi	r5, r3, -1
	l.addi	r14, r8, 48
	l.addi	r28, r28, 2634
	l.sb	4351(r13), r14
	l.addi	r15, r13, -1
	l.addi	r18, r18, 2195
	l.addi	r24, r31, 48
	l.sb	8703(r23), r24
	l.addi	r25, r23, -1
	l.addi	r20, r20, 1756          # CFC
.LBB26_141:                             # %if.end368
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 440
	l.lwz	r11, -84(r2)
	l.lwz	r3, -144(r2)
	l.sub	r7, r3, r5
	l.addi	r20, r20, 880           # CFC
	l.lbz	r3, -13(r2)
	l.lwz	r8, 4268(r12)
	l.lwz	r13, 4208(r12)
	l.addi	r28, r28, 2640
	l.sub	r17, r13, r15
	l.lbz	r13, 4339(r12)
	l.lwz	r31, 8620(r22)
	l.addi	r18, r18, 2200
	l.lwz	r23, 8560(r22)
	l.sub	r27, r23, r25
	l.lbz	r23, 8691(r22)
	l.addi	r20, r20, 1760          # CFC
.LBB26_142:                             # %sw.epilog383
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 441
	l.sw	-136(r2), r5
	l.sw	-120(r2), r3
	l.andi	r3, r3, 255
	l.sfeqi	r3, 0
	l.ori	r4, r7, 0
	l.addi	r20, r20, 882           # CFC
	l.ori	r7, r11, 0
	l.sw	4216(r12), r15
	l.sw	4232(r12), r13
	l.andi	r13, r13, 255
	l.ori	r14, r17, 0
	l.addi	r28, r28, 2646
	l.ori	r17, r8, 0
	l.sw	8568(r22), r25
	l.sw	8584(r22), r23
	l.andi	r23, r23, 255
	l.ori	r24, r27, 0
	l.ori	r27, r31, 0
	l.bf	.LBB26_369
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2205
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1764          # CFC
	l.bf	.LBB26_370
	l.nop	0
.LBB26_372:
	l.addi	r18, r18, 442
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 884           # CFC
	l.ori	r5, r3, 0
	l.lwz	r13, 4264(r12)
	l.addi	r28, r28, 2652
	l.ori	r15, r13, 0
	l.addi	r18, r18, 2210
	l.lwz	r23, 8616(r22)
	l.ori	r25, r23, 0
	l.addi	r20, r20, 1768          # CFC
.LBB26_230:                             # %if.then385
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 443
	l.addi	r11, r4, 1
	l.sw	-88(r2), r3
	l.lwz	r5, -68(r2)
	l.addi	r20, r20, 886           # CFC
	l.ori	r3, r4, 0
	l.lwz	r4, -120(r2)
	l.addi	r8, r14, 1
	l.sw	4264(r12), r13
	l.addi	r28, r28, 2658
	l.lwz	r15, 4284(r12)
	l.ori	r13, r14, 0
	l.lwz	r14, 4232(r12)
	l.addi	r31, r24, 1
	l.addi	r18, r18, 2215
	l.sw	8616(r22), r23
	l.lwz	r25, 8636(r22)
	l.ori	r23, r24, 0
	l.lwz	r24, 8584(r22)
	l.addi	r20, r20, 1772          # CFC
	l.j	.LBB26_150
	l.nop	0                       # in delay slot
.LBB26_84:                              # %if.else214
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 444
	l.lwz	r3, -136(r2)
	l.lwz	r13, 4216(r12)
	l.addi	r20, r20, 888           # CFC
	l.lwz	r23, 8568(r22)
	l.jal	strlen
	l.nop	0                       # in delay slot
	l.ori	r3, r11, 0
	l.addi	r28, r28, 2664
	l.lwz	r5, -88(r2)
	l.ori	r13, r8, 0
	l.addi	r18, r18, 2220
	l.lwz	r15, 4264(r12)
	l.ori	r23, r31, 0
	l.lwz	r25, 8616(r22)
	l.addi	r20, r20, 1776          # CFC
.LBB26_85:                              # %if.end216
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 445
	l.movhi	r7, 0
	l.sb	-13(r2), r7
	l.ori	r4, r3, 0
	l.addi	r3, r0, 115
	l.addi	r20, r20, 890           # CFC
	l.sw	-64(r2), r3
	l.movhi	r17, 0
	l.sb	4339(r12), r17
	l.ori	r14, r13, 0
	l.lwz	r6, -76(r2)
	l.addi	r28, r28, 2670
	l.addi	r13, r0, 115
	l.movhi	r27, 0
	l.sw	4288(r12), r13
	l.lwz	r16, 4276(r12)
	l.addi	r18, r18, 2225
	l.sb	8691(r22), r27
	l.ori	r24, r23, 0
	l.addi	r23, r0, 115
	l.sw	8640(r22), r23
	l.lwz	r26, 8628(r22)
	l.addi	r20, r20, 1780          # CFC
.LBB26_147:                             # %if.else386
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 446
	l.sw	-88(r2), r5
	l.andi	r3, r5, 2
	l.sfeqi	r3, 0
	l.addi	r20, r20, 892           # CFC
	l.ori	r11, r4, 0
	l.sw	4264(r12), r15
	l.andi	r13, r15, 2
	l.addi	r28, r28, 2676
	l.ori	r8, r14, 0
	l.sw	8616(r22), r25
	l.andi	r23, r25, 2
	l.ori	r31, r24, 0
	l.bf	.LBB26_373
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2230
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1784          # CFC
	l.bf	.LBB26_374
	l.nop	0
.LBB26_376:
	l.addi	r18, r18, 447
	l.addi	r20, r20, 894           # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 2682
	l.ori	r13, r14, 0
	l.addi	r18, r18, 2235
	l.ori	r23, r24, 0
	l.addi	r20, r20, 1788          # CFC
.LBB26_148:                             # %if.else386
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 448
	l.addi	r20, r20, 896           # CFC
	l.addi	r11, r3, 2
	l.addi	r28, r28, 2688
	l.addi	r8, r13, 2
	l.addi	r18, r18, 2240
	l.addi	r31, r23, 2
	l.addi	r20, r20, 1792          # CFC
.LBB26_149:                             # %if.else386
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 449
	l.movhi	r4, 0
	l.addi	r20, r20, 898           # CFC
	l.lwz	r5, -68(r2)
	l.movhi	r14, 0
	l.addi	r28, r28, 2694
	l.lwz	r15, 4284(r12)
	l.addi	r18, r18, 2245
	l.movhi	r24, 0
	l.lwz	r25, 8636(r22)
	l.addi	r20, r20, 1796          # CFC
.LBB26_150:                             # %if.end392
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 450
	l.sw	-124(r2), r3
	l.sfgts	r7, r11
	l.addi	r20, r20, 900           # CFC
	l.sw	-116(r2), r7
	l.sw	4228(r12), r13
	l.addi	r28, r28, 2700
	l.sw	4236(r12), r17
	l.sw	8580(r22), r23
	l.sw	8588(r22), r27
	l.bf	.LBB26_377
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2250
	l.sfgts	r17, r8
	l.addi	r20, r20, 1800          # CFC
	l.bf	.LBB26_378
	l.nop	0
.LBB26_151:                             # %if.end392
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 451
	l.addi	r20, r20, 902           # CFC
	l.sw	-116(r2), r11
	l.addi	r28, r28, 2706
	l.sw	4236(r12), r8
	l.addi	r18, r18, 2255
	l.sw	8588(r22), r31
	l.addi	r20, r20, 1804          # CFC
.LBB26_152:                             # %if.end392
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 452
	l.lwz	r3, -88(r2)
	l.andi	r3, r3, 132
	l.sw	-140(r2), r3
	l.sfnei	r3, 0
	l.sw	-84(r2), r7
	l.addi	r20, r20, 904           # CFC
	l.sw	-132(r2), r11
	l.lwz	r13, 4264(r12)
	l.andi	r13, r13, 132
	l.sw	4212(r12), r13
	l.sw	4268(r12), r17
	l.addi	r28, r28, 2712
	l.sw	4220(r12), r8
	l.lwz	r23, 8616(r22)
	l.andi	r23, r23, 132
	l.sw	8564(r22), r23
	l.sw	8620(r22), r27
	l.sw	8572(r22), r31
	l.bf	.LBB26_379
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2260
	l.sfnei	r13, 0
	l.addi	r20, r20, 1808          # CFC
	l.bf	.LBB26_380
	l.nop	0
.LBB26_153:                             # %if.then402
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 453
	l.lwz	r3, -116(r2)
	l.lwz	r5, -68(r2)
	l.sub	r5, r5, r3
	l.addi	r20, r20, 906           # CFC
	l.sfltsi	r5, 1
	l.lwz	r13, 4236(r12)
	l.lwz	r15, 4284(r12)
	l.addi	r28, r28, 2718
	l.sub	r15, r15, r13
	l.lwz	r23, 8588(r22)
	l.lwz	r25, 8636(r22)
	l.sub	r25, r25, r23
	l.bf	.LBB26_381
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2265
	l.sfltsi	r15, 1
	l.addi	r20, r20, 1812          # CFC
	l.bf	.LBB26_382
	l.nop	0
.LBB26_154:                             # %while.cond412.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 454
	l.lwz	r3, -92(r2)
	l.sub	r3, r3, r6
	l.addi	r11, r3, -1
	l.sfgtsi	r5, 16
	l.ori	r7, r5, 0
	l.lwz	r13, 4260(r12)
	l.addi	r20, r20, 908           # CFC
	l.sub	r13, r13, r16
	l.addi	r8, r13, -1
	l.sw	-120(r2), r4
	l.ori	r17, r15, 0
	l.lwz	r23, 8612(r22)
	l.sw	-148(r2), r7
	l.addi	r28, r28, 2724
	l.sw	4232(r12), r14
	l.sw	4204(r12), r17
	l.sub	r23, r23, r26
	l.addi	r31, r23, -1
	l.ori	r27, r25, 0
	l.sw	8584(r22), r24
	l.sw	8556(r22), r27
	l.bf	.LBB26_383
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2270
	l.sfgtsi	r15, 16
	l.addi	r20, r20, 1816          # CFC
	l.bf	.LBB26_384
	l.nop	0
.LBB26_155:                             # %while.cond412.preheader.while.end421_crit_edge
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 455
	l.lwz	r3, -104(r2)
	l.add	r3, r3, r6
	l.addi	r20, r20, 910           # CFC
	l.ori	r5, r7, 0
	l.lwz	r13, 4248(r12)
	l.addi	r28, r28, 2730
	l.add	r13, r13, r16
	l.ori	r15, r17, 0
	l.addi	r18, r18, 2275
	l.lwz	r23, 8600(r22)
	l.add	r23, r23, r26
	l.ori	r25, r27, 0
	l.addi	r20, r20, 1820          # CFC
	l.j	.LBB26_162
	l.nop	0                       # in delay slot
.LBB26_156:                             # %while.body415.lr.ph
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 456
	l.addi	r5, r0, 16
	l.addi	r20, r20, 912           # CFC
	l.sfgtui	r11, 16
	l.addi	r28, r28, 2736
	l.addi	r15, r0, 16
	l.addi	r25, r0, 16
	l.bf	.LBB26_385
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2280
	l.sfgtui	r8, 16
	l.addi	r20, r20, 1824          # CFC
	l.bf	.LBB26_386
	l.nop	0
.LBB26_157:                             # %while.body415.lr.ph
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 457
	l.addi	r20, r20, 914           # CFC
	l.ori	r5, r11, 0
	l.addi	r28, r28, 2742
	l.ori	r15, r8, 0
	l.addi	r18, r18, 2285
	l.ori	r25, r31, 0
	l.addi	r20, r20, 1828          # CFC
.LBB26_158:                             # %while.body415.lr.ph
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 458
	l.lwz	r3, -104(r2)
	l.add	r3, r3, r6
	l.sw	-100(r2), r3
	l.sw	-112(r2), r5
	l.addi	r20, r20, 916           # CFC
	l.sfltsi	r5, 16
	l.lwz	r13, 4248(r12)
	l.add	r13, r13, r16
	l.sw	4252(r12), r13
	l.addi	r28, r28, 2748
	l.sw	4240(r12), r15
	l.lwz	r23, 8600(r22)
	l.add	r23, r23, r26
	l.sw	8604(r22), r23
	l.sw	8592(r22), r25
	l.bf	.LBB26_387
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2290
	l.sfltsi	r15, 16
	l.addi	r20, r20, 1832          # CFC
	l.bf	.LBB26_388
	l.nop	0
.LBB26_390:
	l.addi	r18, r18, 459
	l.addi	r20, r20, 918           # CFC
	l.lwz	r5, -68(r2)
	l.addi	r28, r28, 2754
	l.lwz	r15, 4284(r12)
	l.addi	r18, r18, 2295
	l.lwz	r25, 8636(r22)
	l.addi	r20, r20, 1836          # CFC
.LBB26_159:                             # %while.body415.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 460
	l.sw	-156(r2), r11
	l.addi	r3, r5, -17
	l.lwz	r4, -116(r2)
	l.sub	r3, r3, r4
	l.addi	r4, r0, -16
	l.sw	4196(r12), r8
	l.addi	r13, r15, -17
	l.lwz	r14, 4236(r12)
	l.and	r3, r3, r4
	l.addi	r20, r20, 920           # CFC
	l.sub	r13, r13, r14
	l.sw	8548(r22), r31
	l.sw	-160(r2), r3
	l.addi	r14, r0, -16
	l.addi	r23, r25, -17
	l.addi	r3, r5, -16
	l.and	r13, r13, r14
	l.lwz	r24, 8588(r22)
	l.sw	-164(r2), r3
	l.sw	4192(r12), r13
	l.addi	r28, r28, 2760
	l.sub	r23, r23, r24
	l.ori	r4, r7, 0
	l.addi	r13, r15, -16
	l.addi	r24, r0, -16
	l.lwz	r3, -108(r2)
	l.sw	4188(r12), r13
	l.and	r23, r23, r24
	l.lwz	r3, -100(r2)
	l.ori	r14, r17, 0
	l.sw	8544(r22), r23
	l.addi	r18, r18, 2300
	l.lwz	r3, -112(r2)
	l.lwz	r13, 4244(r12)
	l.addi	r23, r25, -16
	l.lwz	r13, 4252(r12)
	l.lwz	r13, 4240(r12)
	l.sw	8540(r22), r23
	l.ori	r24, r27, 0
	l.lwz	r23, 8596(r22)
	l.lwz	r23, 8604(r22)
	l.lwz	r23, 8592(r22)
	l.addi	r20, r20, 1840          # CFC
.LBB26_160:                             # %while.body415
                                        #   Parent Loop BB26_1 Depth=1
                                        #     Parent Loop BB26_2 Depth=2
                                        #       Parent Loop BB26_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 461
	l.sw	-80(r2), r4
	l.lwz	r3, -100(r2)
	l.lwz	r4, -108(r2)
	l.lwz	r5, -112(r2)
	l.sw	4272(r12), r14
	l.lwz	r13, 4252(r12)
	l.addi	r20, r20, 922           # CFC
	l.lwz	r14, 4244(r12)
	l.lwz	r15, 4240(r12)
	l.sw	8624(r22), r24
	l.lwz	r23, 8604(r22)
	l.lwz	r24, 8596(r22)
	l.lwz	r25, 8592(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.addi	r28, r28, 2766
	l.lwz	r4, -80(r2)
	l.addi	r4, r4, -16
	l.sfgtsi	r4, 16
	l.lwz	r14, 4272(r12)
	l.addi	r14, r14, -16
	l.lwz	r24, 8624(r22)
	l.addi	r24, r24, -16
	l.bf	.LBB26_391
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2305
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 1844          # CFC
	l.bf	.LBB26_392
	l.nop	0
.LBB26_161:                             # %while.end421.loopexit
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 462
	l.lwz	r3, -116(r2)
	l.lwz	r4, -164(r2)
	l.sub	r3, r4, r3
	l.lwz	r4, -160(r2)
	l.sub	r5, r3, r4
	l.lwz	r13, 4236(r12)
	l.lwz	r14, 4188(r12)
	l.addi	r20, r20, 924           # CFC
	l.sub	r13, r14, r13
	l.lwz	r6, -76(r2)
	l.lwz	r14, 4192(r12)
	l.lwz	r23, 8588(r22)
	l.lwz	r4, -120(r2)
	l.sub	r15, r13, r14
	l.lwz	r24, 8540(r22)
	l.lwz	r7, -148(r2)
	l.addi	r28, r28, 2772
	l.lwz	r16, 4276(r12)
	l.sub	r23, r24, r23
	l.lwz	r11, -156(r2)
	l.lwz	r14, 4232(r12)
	l.lwz	r24, 8544(r22)
	l.lwz	r3, -100(r2)
	l.lwz	r17, 4204(r12)
	l.addi	r18, r18, 2310
	l.sub	r25, r23, r24
	l.lwz	r8, 4196(r12)
	l.lwz	r13, 4252(r12)
	l.lwz	r26, 8628(r22)
	l.lwz	r24, 8584(r22)
	l.lwz	r27, 8556(r22)
	l.lwz	r31, 8548(r22)
	l.lwz	r23, 8604(r22)
	l.addi	r20, r20, 1848          # CFC
.LBB26_162:                             # %while.end421
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 463
	l.sfgtu	r11, r5
	l.sw	-100(r2), r5
	l.addi	r20, r20, 926           # CFC
	l.movhi	r4, hi(vfnprintf.blanks)
	l.sw	4252(r12), r15
	l.addi	r28, r28, 2778
	l.movhi	r14, hi(vfnprintf.blanks)
	l.sw	8604(r22), r25
	l.movhi	r24, hi(vfnprintf.blanks)
	l.bf	.LBB26_393
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2315
	l.sfgtu	r8, r15
	l.addi	r20, r20, 1852          # CFC
	l.bf	.LBB26_394
	l.nop	0
.LBB26_163:                             # %while.end421
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 464
	l.addi	r20, r20, 928           # CFC
	l.ori	r5, r11, 0
	l.addi	r28, r28, 2784
	l.ori	r15, r8, 0
	l.addi	r18, r18, 2320
	l.ori	r25, r31, 0
	l.addi	r20, r20, 1856          # CFC
.LBB26_164:                             # %while.end421
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 465
	l.sw	-80(r2), r5
	l.ori	r4, r4, lo(vfnprintf.blanks)
	l.lwz	r5, -80(r2)
	l.sw	4272(r12), r15
	l.ori	r14, r14, lo(vfnprintf.blanks)
	l.addi	r20, r20, 930           # CFC
	l.lwz	r15, 4272(r12)
	l.sw	8624(r22), r25
	l.ori	r24, r24, lo(vfnprintf.blanks)
	l.lwz	r25, 8624(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r4, -80(r2)
	l.addi	r28, r28, 2790
	l.lwz	r3, -100(r2)
	l.sfges	r4, r3
	l.lwz	r14, 4272(r12)
	l.lwz	r13, 4252(r12)
	l.lwz	r24, 8624(r22)
	l.lwz	r23, 8604(r22)
	l.bf	.LBB26_395
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2325
	l.sfges	r14, r13
	l.addi	r20, r20, 1860          # CFC
	l.bf	.LBB26_396
	l.nop	0
.LBB26_165:                             # %print_back_to_string.exit819
                                        #   in Loop: Header=BB26_3 Depth=3
	l.j	.LBB26_9
	l.nop	0                       # in delay slot
.LBB26_166:                             # %do.end428
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 466
	l.lwz	r6, -76(r2)
	l.lwz	r3, -148(r2)
	l.add	r6, r3, r6
	l.lwz	r3, -68(r2)
	l.lwz	r7, -84(r2)
	l.addi	r20, r20, 932           # CFC
	l.lwz	r16, 4276(r12)
	l.lwz	r13, 4204(r12)
	l.add	r16, r13, r16
	l.lwz	r4, -120(r2)
	l.lwz	r13, 4284(r12)
	l.addi	r28, r28, 2796
	l.lwz	r26, 8628(r22)
	l.lwz	r11, -132(r2)
	l.lwz	r17, 4268(r12)
	l.lwz	r23, 8556(r22)
	l.lwz	r14, 4232(r12)
	l.addi	r18, r18, 2330
	l.lwz	r8, 4220(r12)
	l.add	r26, r23, r26
	l.lwz	r23, 8636(r22)
	l.lwz	r27, 8620(r22)
	l.lwz	r24, 8584(r22)
	l.lwz	r31, 8572(r22)
	l.addi	r20, r20, 1864          # CFC
.LBB26_167:                             # %if.end432
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 467
	l.andi	r3, r4, 255
	l.addi	r20, r20, 934           # CFC
	l.sfeqi	r3, 0
	l.addi	r28, r28, 2802
	l.andi	r13, r14, 255
	l.andi	r23, r24, 255
	l.bf	.LBB26_397
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2335
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1868          # CFC
	l.bf	.LBB26_398
	l.nop	0
.LBB26_168:                             # %if.then434
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 468
	l.lwz	r3, -104(r2)
	l.add	r3, r3, r6
	l.sw	-76(r2), r6
	l.lwz	r4, -92(r2)
	l.sub	r4, r4, r6
	l.lwz	r13, 4248(r12)
	l.add	r13, r13, r16
	l.addi	r20, r20, 936           # CFC
	l.sw	4276(r12), r16
	l.addi	r4, r4, -1
	l.lwz	r14, 4260(r12)
	l.lwz	r23, 8600(r22)
	l.addi	r5, r0, 1
	l.sub	r14, r14, r16
	l.add	r23, r23, r26
	l.addi	r28, r28, 2808
	l.sfgtui	r4, 1
	l.addi	r14, r14, -1
	l.addi	r15, r0, 1
	l.sw	8628(r22), r26
	l.lwz	r24, 8612(r22)
	l.sub	r24, r24, r26
	l.addi	r24, r24, -1
	l.addi	r25, r0, 1
	l.bf	.LBB26_399
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2340
	l.sfgtui	r14, 1
	l.addi	r20, r20, 1872          # CFC
	l.bf	.LBB26_400
	l.nop	0
.LBB26_169:                             # %if.then434
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 469
	l.addi	r20, r20, 938           # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 2814
	l.ori	r15, r14, 0
	l.addi	r18, r18, 2345
	l.ori	r25, r24, 0
	l.addi	r20, r20, 1876          # CFC
.LBB26_170:                             # %if.then434
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 470
	l.sw	-64(r2), r5
	l.addi	r4, r2, -13
	l.lwz	r5, -64(r2)
	l.sw	4288(r12), r15
	l.addi	r20, r20, 940           # CFC
	l.addi	r14, r12, -13
	l.lwz	r15, 4288(r12)
	l.sw	8640(r22), r25
	l.addi	r24, r22, -13
	l.lwz	r25, 8640(r22)
	l.addi	r28, r28, 2820
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r4, -64(r2)
	l.sfgtsi	r4, 0
	l.lwz	r14, 4288(r12)
	l.lwz	r24, 8640(r22)
	l.bf	.LBB26_401
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2350
	l.sfgtsi	r14, 0
	l.addi	r20, r20, 1880          # CFC
	l.bf	.LBB26_402
	l.nop	0
.LBB26_171:                             # %print_back_to_string.exit810
                                        #   in Loop: Header=BB26_3 Depth=3
	l.j	.LBB26_9
	l.nop	0                       # in delay slot
.LBB26_172:                             # %if.end438
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 471
	l.lwz	r6, -76(r2)
	l.addi	r20, r20, 942           # CFC
	l.addi	r6, r6, 1
	l.lwz	r16, 4276(r12)
	l.addi	r28, r28, 2826
	l.addi	r16, r16, 1
	l.addi	r18, r18, 2355
	l.lwz	r26, 8628(r22)
	l.addi	r26, r26, 1
	l.addi	r20, r20, 1884          # CFC
	l.j	.LBB26_179
	l.nop	0                       # in delay slot
.LBB26_173:                             # %if.else440
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 472
	l.lwz	r3, -88(r2)
	l.andi	r3, r3, 2
	l.sfeqi	r3, 0
	l.addi	r20, r20, 944           # CFC
	l.lwz	r5, -68(r2)
	l.lwz	r13, 4264(r12)
	l.andi	r13, r13, 2
	l.addi	r28, r28, 2832
	l.lwz	r15, 4284(r12)
	l.lwz	r23, 8616(r22)
	l.andi	r23, r23, 2
	l.lwz	r25, 8636(r22)
	l.bf	.LBB26_403
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2360
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1888          # CFC
	l.bf	.LBB26_404
	l.nop	0
.LBB26_174:                             # %if.then443
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 473
	l.addi	r3, r0, 48
	l.sb	-55(r2), r3
	l.lwz	r3, -64(r2)
	l.sb	-54(r2), r3
	l.lwz	r3, -104(r2)
	l.addi	r13, r0, 48
	l.sb	4297(r12), r13
	l.lwz	r13, 4288(r12)
	l.add	r3, r3, r6
	l.sb	4298(r12), r13
	l.addi	r23, r0, 48
	l.addi	r20, r20, 946           # CFC
	l.sw	-76(r2), r6
	l.lwz	r13, 4248(r12)
	l.sb	8649(r22), r23
	l.lwz	r4, -92(r2)
	l.add	r13, r13, r16
	l.lwz	r23, 8640(r22)
	l.sub	r4, r4, r6
	l.sw	4276(r12), r16
	l.sb	8650(r22), r23
	l.addi	r4, r4, -1
	l.lwz	r14, 4260(r12)
	l.addi	r28, r28, 2838
	l.lwz	r23, 8600(r22)
	l.addi	r5, r0, 2
	l.sub	r14, r14, r16
	l.add	r23, r23, r26
	l.sfgtui	r4, 2
	l.addi	r14, r14, -1
	l.addi	r15, r0, 2
	l.sw	8628(r22), r26
	l.lwz	r24, 8612(r22)
	l.sub	r24, r24, r26
	l.addi	r24, r24, -1
	l.addi	r25, r0, 2
	l.bf	.LBB26_405
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2365
	l.sfgtui	r14, 2
	l.addi	r20, r20, 1892          # CFC
	l.bf	.LBB26_406
	l.nop	0
.LBB26_175:                             # %if.then443
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 474
	l.addi	r20, r20, 948           # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 2844
	l.ori	r15, r14, 0
	l.addi	r18, r18, 2370
	l.ori	r25, r24, 0
	l.addi	r20, r20, 1896          # CFC
.LBB26_176:                             # %if.then443
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 475
	l.sw	-64(r2), r5
	l.addi	r4, r2, -55
	l.lwz	r5, -64(r2)
	l.sw	4288(r12), r15
	l.addi	r20, r20, 950           # CFC
	l.addi	r14, r12, -55
	l.lwz	r15, 4288(r12)
	l.sw	8640(r22), r25
	l.addi	r24, r22, -55
	l.lwz	r25, 8640(r22)
	l.addi	r28, r28, 2850
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r4, -64(r2)
	l.sfgtsi	r4, 1
	l.lwz	r14, 4288(r12)
	l.lwz	r24, 8640(r22)
	l.bf	.LBB26_407
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2375
	l.sfgtsi	r14, 1
	l.addi	r20, r20, 1900          # CFC
	l.bf	.LBB26_408
	l.nop	0
.LBB26_177:                             # %print_back_to_string.exit801
                                        #   in Loop: Header=BB26_3 Depth=3
	l.j	.LBB26_9
	l.nop	0                       # in delay slot
.LBB26_178:                             # %if.end451
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 476
	l.lwz	r6, -76(r2)
	l.addi	r20, r20, 952           # CFC
	l.addi	r6, r6, 2
	l.lwz	r16, 4276(r12)
	l.addi	r28, r28, 2856
	l.addi	r16, r16, 2
	l.addi	r18, r18, 2380
	l.lwz	r26, 8628(r22)
	l.addi	r26, r26, 2
	l.addi	r20, r20, 1904          # CFC
.LBB26_179:                             # %if.end454
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 477
	l.lwz	r5, -68(r2)
	l.lwz	r7, -84(r2)
	l.addi	r20, r20, 954           # CFC
	l.lwz	r11, -132(r2)
	l.lwz	r15, 4284(r12)
	l.addi	r28, r28, 2862
	l.lwz	r17, 4268(r12)
	l.lwz	r8, 4220(r12)
	l.addi	r18, r18, 2385
	l.lwz	r25, 8636(r22)
	l.lwz	r27, 8620(r22)
	l.lwz	r31, 8572(r22)
	l.addi	r20, r20, 1908          # CFC
.LBB26_180:                             # %if.end454
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 478
	l.lwz	r3, -140(r2)
	l.addi	r20, r20, 956           # CFC
	l.sfnei	r3, 128
	l.addi	r28, r28, 2868
	l.lwz	r13, 4212(r12)
	l.lwz	r23, 8564(r22)
	l.bf	.LBB26_409
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2390
	l.sfnei	r13, 128
	l.addi	r20, r20, 1912          # CFC
	l.bf	.LBB26_410
	l.nop	0
.LBB26_181:                             # %if.then458
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 479
	l.lwz	r3, -116(r2)
	l.sub	r4, r5, r3
	l.addi	r20, r20, 958           # CFC
	l.sfltsi	r4, 1
	l.lwz	r13, 4236(r12)
	l.addi	r28, r28, 2874
	l.sub	r14, r15, r13
	l.lwz	r23, 8588(r22)
	l.sub	r24, r25, r23
	l.bf	.LBB26_411
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2395
	l.sfltsi	r14, 1
	l.addi	r20, r20, 1916          # CFC
	l.bf	.LBB26_412
	l.nop	0
.LBB26_182:                             # %while.cond468.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 480
	l.lwz	r3, -92(r2)
	l.sub	r3, r3, r6
	l.addi	r7, r3, -1
	l.sfgtsi	r4, 16
	l.sw	-76(r2), r6
	l.addi	r20, r20, 960           # CFC
	l.sw	-112(r2), r4
	l.lwz	r13, 4260(r12)
	l.sub	r13, r13, r16
	l.addi	r17, r13, -1
	l.sw	4276(r12), r16
	l.addi	r28, r28, 2880
	l.sw	4240(r12), r14
	l.lwz	r23, 8612(r22)
	l.sub	r23, r23, r26
	l.addi	r27, r23, -1
	l.sw	8628(r22), r26
	l.sw	8592(r22), r24
	l.bf	.LBB26_413
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2400
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 1920          # CFC
	l.bf	.LBB26_414
	l.nop	0
.LBB26_183:                             # %while.cond468.preheader.while.end477_crit_edge
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 481
	l.lwz	r3, -104(r2)
	l.add	r11, r3, r6
	l.addi	r20, r20, 962           # CFC
	l.ori	r3, r4, 0
	l.lwz	r13, 4248(r12)
	l.addi	r28, r28, 2886
	l.add	r8, r13, r16
	l.ori	r13, r14, 0
	l.addi	r18, r18, 2405
	l.lwz	r23, 8600(r22)
	l.add	r31, r23, r26
	l.ori	r23, r24, 0
	l.addi	r20, r20, 1924          # CFC
	l.j	.LBB26_190
	l.nop	0                       # in delay slot
.LBB26_184:                             # %while.body471.lr.ph
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 482
	l.addi	r3, r0, 16
	l.addi	r20, r20, 964           # CFC
	l.sfgtui	r7, 16
	l.addi	r28, r28, 2892
	l.addi	r13, r0, 16
	l.addi	r23, r0, 16
	l.bf	.LBB26_415
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2410
	l.sfgtui	r17, 16
	l.addi	r20, r20, 1928          # CFC
	l.bf	.LBB26_416
	l.nop	0
.LBB26_185:                             # %while.body471.lr.ph
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 483
	l.addi	r20, r20, 966           # CFC
	l.ori	r3, r7, 0
	l.addi	r28, r28, 2898
	l.ori	r13, r17, 0
	l.addi	r18, r18, 2415
	l.ori	r23, r27, 0
	l.addi	r20, r20, 1932          # CFC
.LBB26_186:                             # %while.body471.lr.ph
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 484
	l.sw	-80(r2), r3
	l.lwz	r3, -104(r2)
	l.add	r11, r3, r6
	l.lwz	r3, -80(r2)
	l.addi	r20, r20, 968           # CFC
	l.sfltsi	r3, 16
	l.sw	4272(r12), r13
	l.lwz	r13, 4248(r12)
	l.add	r8, r13, r16
	l.addi	r28, r28, 2904
	l.lwz	r13, 4272(r12)
	l.sw	8624(r22), r23
	l.lwz	r23, 8600(r22)
	l.add	r31, r23, r26
	l.lwz	r23, 8624(r22)
	l.bf	.LBB26_417
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2420
	l.sfltsi	r13, 16
	l.addi	r20, r20, 1936          # CFC
	l.bf	.LBB26_418
	l.nop	0
.LBB26_187:                             # %while.body471.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 485
	l.sw	-120(r2), r7
	l.addi	r3, r5, -17
	l.ori	r6, r4, 0
	l.lwz	r4, -116(r2)
	l.sub	r3, r3, r4
	l.sw	4232(r12), r17
	l.addi	r13, r15, -17
	l.ori	r16, r14, 0
	l.addi	r4, r0, -16
	l.addi	r20, r20, 970           # CFC
	l.lwz	r14, 4236(r12)
	l.sw	8584(r22), r27
	l.and	r3, r3, r4
	l.sub	r13, r13, r14
	l.addi	r23, r25, -17
	l.sw	-140(r2), r3
	l.addi	r14, r0, -16
	l.ori	r26, r24, 0
	l.addi	r3, r5, -16
	l.and	r13, r13, r14
	l.addi	r28, r28, 2910
	l.lwz	r24, 8588(r22)
	l.sw	-148(r2), r3
	l.sw	4212(r12), r13
	l.sub	r23, r23, r24
	l.ori	r3, r6, 0
	l.addi	r13, r15, -16
	l.addi	r24, r0, -16
	l.lwz	r4, -96(r2)
	l.sw	4204(r12), r13
	l.and	r23, r23, r24
	l.addi	r18, r18, 2425
	l.sw	-100(r2), r11
	l.ori	r13, r16, 0
	l.sw	8564(r22), r23
	l.lwz	r14, 4256(r12)
	l.sw	4252(r12), r8
	l.addi	r23, r25, -16
	l.sw	8556(r22), r23
	l.ori	r23, r26, 0
	l.lwz	r24, 8608(r22)
	l.sw	8604(r22), r31
	l.addi	r20, r20, 1940          # CFC
.LBB26_188:                             # %while.body471
                                        #   Parent Loop BB26_1 Depth=1
                                        #     Parent Loop BB26_2 Depth=2
                                        #       Parent Loop BB26_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 486
	l.sw	-64(r2), r3
	l.ori	r3, r11, 0
	l.lwz	r4, -96(r2)
	l.lwz	r5, -80(r2)
	l.sw	4288(r12), r13
	l.ori	r13, r8, 0
	l.lwz	r14, 4256(r12)
	l.addi	r20, r20, 972           # CFC
	l.lwz	r15, 4272(r12)
	l.sw	8640(r22), r23
	l.ori	r23, r31, 0
	l.lwz	r24, 8608(r22)
	l.lwz	r25, 8624(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r3, -64(r2)
	l.lwz	r11, -100(r2)
	l.addi	r28, r28, 2916
	l.addi	r3, r3, -16
	l.sfgtsi	r3, 16
	l.lwz	r13, 4288(r12)
	l.lwz	r8, 4252(r12)
	l.addi	r13, r13, -16
	l.lwz	r23, 8640(r22)
	l.lwz	r31, 8604(r22)
	l.addi	r23, r23, -16
	l.bf	.LBB26_419
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2430
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 1944          # CFC
	l.bf	.LBB26_420
	l.nop	0
.LBB26_189:                             # %while.end477.loopexit
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 487
	l.lwz	r3, -116(r2)
	l.lwz	r4, -148(r2)
	l.sub	r3, r4, r3
	l.lwz	r4, -140(r2)
	l.sub	r3, r3, r4
	l.addi	r20, r20, 974           # CFC
	l.lwz	r13, 4236(r12)
	l.lwz	r14, 4204(r12)
	l.sub	r13, r14, r13
	l.lwz	r4, -112(r2)
	l.lwz	r14, 4212(r12)
	l.addi	r28, r28, 2922
	l.lwz	r23, 8588(r22)
	l.lwz	r7, -120(r2)
	l.sub	r13, r13, r14
	l.lwz	r24, 8556(r22)
	l.lwz	r14, 4240(r12)
	l.addi	r18, r18, 2435
	l.lwz	r17, 4232(r12)
	l.sub	r23, r24, r23
	l.lwz	r24, 8564(r22)
	l.sub	r23, r23, r24
	l.lwz	r24, 8592(r22)
	l.lwz	r27, 8584(r22)
	l.addi	r20, r20, 1948          # CFC
.LBB26_190:                             # %while.end477
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 488
	l.sfgtu	r7, r3
	l.sw	-80(r2), r3
	l.addi	r20, r20, 976           # CFC
	l.ori	r4, r3, 0
	l.sw	4272(r12), r13
	l.addi	r28, r28, 2928
	l.ori	r14, r13, 0
	l.sw	8624(r22), r23
	l.ori	r24, r23, 0
	l.bf	.LBB26_421
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2440
	l.sfgtu	r17, r13
	l.addi	r20, r20, 1952          # CFC
	l.bf	.LBB26_422
	l.nop	0
.LBB26_424:
	l.addi	r18, r18, 489
	l.addi	r20, r20, 978           # CFC
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 2934
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r18, r18, 2445
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.addi	r20, r20, 1956          # CFC
.LBB26_191:                             # %while.end477
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 490
	l.addi	r20, r20, 980           # CFC
	l.ori	r4, r7, 0
	l.addi	r28, r28, 2940
	l.ori	r14, r17, 0
	l.addi	r18, r18, 2450
	l.ori	r24, r27, 0
	l.addi	r20, r20, 1960          # CFC
.LBB26_192:                             # %while.end477
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 491
	l.sw	-64(r2), r4
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r3, r11, 0
	l.lwz	r5, -64(r2)
	l.sw	4288(r12), r14
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.addi	r20, r20, 982           # CFC
	l.ori	r13, r8, 0
	l.lwz	r15, 4288(r12)
	l.sw	8640(r22), r24
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r23, r31, 0
	l.lwz	r25, 8640(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.addi	r28, r28, 2946
	l.lwz	r4, -64(r2)
	l.lwz	r3, -80(r2)
	l.sfges	r4, r3
	l.lwz	r14, 4288(r12)
	l.lwz	r13, 4272(r12)
	l.lwz	r24, 8640(r22)
	l.lwz	r23, 8624(r22)
	l.bf	.LBB26_425
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2455
	l.sfges	r14, r13
	l.addi	r20, r20, 1964          # CFC
	l.bf	.LBB26_426
	l.nop	0
.LBB26_193:                             # %print_back_to_string.exit783
                                        #   in Loop: Header=BB26_3 Depth=3
	l.j	.LBB26_9
	l.nop	0                       # in delay slot
.LBB26_194:                             # %do.end484
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 492
	l.lwz	r6, -76(r2)
	l.lwz	r3, -112(r2)
	l.add	r6, r6, r3
	l.addi	r20, r20, 984           # CFC
	l.lwz	r7, -84(r2)
	l.lwz	r11, -132(r2)
	l.lwz	r16, 4276(r12)
	l.lwz	r13, 4240(r12)
	l.addi	r28, r28, 2952
	l.add	r16, r16, r13
	l.lwz	r17, 4268(r12)
	l.lwz	r8, 4220(r12)
	l.lwz	r26, 8628(r22)
	l.addi	r18, r18, 2460
	l.lwz	r23, 8592(r22)
	l.add	r26, r26, r23
	l.lwz	r27, 8620(r22)
	l.lwz	r31, 8572(r22)
	l.addi	r20, r20, 1968          # CFC
.LBB26_195:                             # %if.end488
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 493
	l.sub	r5, r7, r11
	l.addi	r20, r20, 986           # CFC
	l.sfltsi	r5, 1
	l.addi	r28, r28, 2958
	l.sub	r15, r17, r8
	l.sub	r25, r27, r31
	l.bf	.LBB26_427
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2465
	l.sfltsi	r15, 1
	l.addi	r20, r20, 1972          # CFC
	l.bf	.LBB26_428
	l.nop	0
.LBB26_196:                             # %while.cond498.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 494
	l.lwz	r3, -92(r2)
	l.sub	r3, r3, r6
	l.addi	r4, r3, -1
	l.sfgtsi	r5, 16
	l.sw	-76(r2), r6
	l.addi	r20, r20, 988           # CFC
	l.sw	-100(r2), r5
	l.lwz	r13, 4260(r12)
	l.sub	r13, r13, r16
	l.addi	r14, r13, -1
	l.sw	4276(r12), r16
	l.addi	r28, r28, 2964
	l.sw	4252(r12), r15
	l.lwz	r23, 8612(r22)
	l.sub	r23, r23, r26
	l.addi	r24, r23, -1
	l.sw	8628(r22), r26
	l.sw	8604(r22), r25
	l.bf	.LBB26_429
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2470
	l.sfgtsi	r15, 16
	l.addi	r20, r20, 1976          # CFC
	l.bf	.LBB26_430
	l.nop	0
.LBB26_197:                             # %while.cond498.preheader.while.end507_crit_edge
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 495
	l.lwz	r3, -104(r2)
	l.add	r6, r3, r6
	l.addi	r20, r20, 990           # CFC
	l.ori	r3, r5, 0
	l.lwz	r13, 4248(r12)
	l.addi	r28, r28, 2970
	l.add	r16, r13, r16
	l.ori	r13, r15, 0
	l.addi	r18, r18, 2475
	l.lwz	r23, 8600(r22)
	l.add	r26, r23, r26
	l.ori	r23, r25, 0
	l.addi	r20, r20, 1980          # CFC
	l.j	.LBB26_204
	l.nop	0                       # in delay slot
.LBB26_198:                             # %while.body501.lr.ph
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 496
	l.addi	r3, r0, 16
	l.addi	r20, r20, 992           # CFC
	l.sfgtui	r4, 16
	l.addi	r28, r28, 2976
	l.addi	r13, r0, 16
	l.addi	r23, r0, 16
	l.bf	.LBB26_431
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2480
	l.sfgtui	r14, 16
	l.addi	r20, r20, 1984          # CFC
	l.bf	.LBB26_432
	l.nop	0
.LBB26_199:                             # %while.body501.lr.ph
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 497
	l.addi	r20, r20, 994           # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 2982
	l.ori	r13, r14, 0
	l.addi	r18, r18, 2485
	l.ori	r23, r24, 0
	l.addi	r20, r20, 1988          # CFC
.LBB26_200:                             # %while.body501.lr.ph
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 498
	l.sw	-80(r2), r3
	l.lwz	r3, -104(r2)
	l.add	r6, r3, r6
	l.lwz	r3, -80(r2)
	l.addi	r20, r20, 996           # CFC
	l.sfltsi	r3, 16
	l.sw	4272(r12), r13
	l.lwz	r13, 4248(r12)
	l.add	r16, r13, r16
	l.addi	r28, r28, 2988
	l.lwz	r13, 4272(r12)
	l.sw	8624(r22), r23
	l.lwz	r23, 8600(r22)
	l.add	r26, r23, r26
	l.lwz	r23, 8624(r22)
	l.bf	.LBB26_433
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2490
	l.sfltsi	r13, 16
	l.addi	r20, r20, 1992          # CFC
	l.bf	.LBB26_434
	l.nop	0
.LBB26_201:                             # %while.body501.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 499
	l.sw	-112(r2), r4
	l.addi	r3, r7, -17
	l.sub	r3, r3, r11
	l.addi	r4, r0, -16
	l.and	r3, r3, r4
	l.sw	4240(r12), r14
	l.addi	r13, r17, -17
	l.addi	r20, r20, 998           # CFC
	l.sub	r13, r13, r8
	l.sw	-120(r2), r3
	l.addi	r14, r0, -16
	l.sw	8592(r22), r24
	l.addi	r3, r7, -16
	l.and	r13, r13, r14
	l.addi	r23, r27, -17
	l.sw	-140(r2), r3
	l.addi	r28, r28, 2994
	l.sw	4232(r12), r13
	l.sub	r23, r23, r31
	l.ori	r3, r5, 0
	l.addi	r13, r17, -16
	l.addi	r24, r0, -16
	l.sw	-84(r2), r6
	l.sw	4212(r12), r13
	l.addi	r18, r18, 2495
	l.and	r23, r23, r24
	l.ori	r13, r15, 0
	l.sw	4268(r12), r16
	l.sw	8584(r22), r23
	l.addi	r23, r27, -16
	l.sw	8564(r22), r23
	l.ori	r23, r25, 0
	l.sw	8620(r22), r26
	l.addi	r20, r20, 1996          # CFC
.LBB26_202:                             # %while.body501
                                        #   Parent Loop BB26_1 Depth=1
                                        #     Parent Loop BB26_2 Depth=2
                                        #       Parent Loop BB26_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 500
	l.sw	-64(r2), r3
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r3, r6, 0
	l.lwz	r5, -80(r2)
	l.sw	4288(r12), r13
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.addi	r20, r20, 1000          # CFC
	l.ori	r13, r16, 0
	l.lwz	r15, 4272(r12)
	l.sw	8640(r22), r23
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r23, r26, 0
	l.lwz	r25, 8624(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r3, -64(r2)
	l.addi	r28, r28, 3000
	l.lwz	r6, -84(r2)
	l.addi	r3, r3, -16
	l.sfgtsi	r3, 16
	l.lwz	r13, 4288(r12)
	l.lwz	r16, 4268(r12)
	l.addi	r13, r13, -16
	l.lwz	r23, 8640(r22)
	l.lwz	r26, 8620(r22)
	l.addi	r23, r23, -16
	l.bf	.LBB26_435
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2500
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 2000          # CFC
	l.bf	.LBB26_436
	l.nop	0
.LBB26_203:                             # %while.end507.loopexit
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 501
	l.lwz	r3, -132(r2)
	l.lwz	r4, -140(r2)
	l.sub	r3, r4, r3
	l.lwz	r4, -120(r2)
	l.sub	r3, r3, r4
	l.addi	r20, r20, 1002          # CFC
	l.lwz	r13, 4220(r12)
	l.lwz	r14, 4212(r12)
	l.sub	r13, r14, r13
	l.lwz	r5, -100(r2)
	l.lwz	r14, 4232(r12)
	l.addi	r28, r28, 3006
	l.lwz	r23, 8572(r22)
	l.lwz	r4, -112(r2)
	l.sub	r13, r13, r14
	l.lwz	r24, 8564(r22)
	l.lwz	r15, 4252(r12)
	l.addi	r18, r18, 2505
	l.lwz	r14, 4240(r12)
	l.sub	r23, r24, r23
	l.lwz	r24, 8584(r22)
	l.sub	r23, r23, r24
	l.lwz	r25, 8604(r22)
	l.lwz	r24, 8592(r22)
	l.addi	r20, r20, 2004          # CFC
.LBB26_204:                             # %while.end507
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 502
	l.sfgtu	r4, r3
	l.sw	-80(r2), r3
	l.addi	r20, r20, 1004          # CFC
	l.ori	r5, r3, 0
	l.sw	4272(r12), r13
	l.addi	r28, r28, 3012
	l.ori	r15, r13, 0
	l.sw	8624(r22), r23
	l.ori	r25, r23, 0
	l.bf	.LBB26_437
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2510
	l.sfgtu	r14, r13
	l.addi	r20, r20, 2008          # CFC
	l.bf	.LBB26_438
	l.nop	0
.LBB26_440:
	l.addi	r18, r18, 503
	l.addi	r20, r20, 1006          # CFC
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 3018
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r18, r18, 2515
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.addi	r20, r20, 2012          # CFC
.LBB26_205:                             # %while.end507
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 504
	l.addi	r20, r20, 1008          # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 3024
	l.ori	r15, r14, 0
	l.addi	r18, r18, 2520
	l.ori	r25, r24, 0
	l.addi	r20, r20, 2016          # CFC
.LBB26_206:                             # %while.end507
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 505
	l.sw	-64(r2), r5
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r3, r6, 0
	l.lwz	r5, -64(r2)
	l.sw	4288(r12), r15
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.addi	r20, r20, 1010          # CFC
	l.ori	r13, r16, 0
	l.lwz	r15, 4288(r12)
	l.sw	8640(r22), r25
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r23, r26, 0
	l.lwz	r25, 8640(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.addi	r28, r28, 3030
	l.lwz	r4, -64(r2)
	l.lwz	r3, -80(r2)
	l.sfges	r4, r3
	l.lwz	r14, 4288(r12)
	l.lwz	r13, 4272(r12)
	l.lwz	r24, 8640(r22)
	l.lwz	r23, 8624(r22)
	l.bf	.LBB26_441
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2525
	l.sfges	r14, r13
	l.addi	r20, r20, 2020          # CFC
	l.bf	.LBB26_442
	l.nop	0
.LBB26_207:                             # %print_back_to_string.exit765
                                        #   in Loop: Header=BB26_3 Depth=3
	l.j	.LBB26_9
	l.nop	0                       # in delay slot
.LBB26_208:                             # %do.end514
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 506
	l.lwz	r6, -76(r2)
	l.lwz	r3, -100(r2)
	l.addi	r20, r20, 1012          # CFC
	l.add	r6, r6, r3
	l.lwz	r16, 4276(r12)
	l.addi	r28, r28, 3036
	l.lwz	r13, 4252(r12)
	l.add	r16, r16, r13
	l.addi	r18, r18, 2530
	l.lwz	r26, 8628(r22)
	l.lwz	r23, 8604(r22)
	l.add	r26, r26, r23
	l.addi	r20, r20, 2024          # CFC
.LBB26_209:                             # %if.end517
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 507
	l.lwz	r3, -104(r2)
	l.add	r3, r3, r6
	l.sw	-76(r2), r6
	l.lwz	r4, -92(r2)
	l.sub	r4, r4, r6
	l.lwz	r13, 4248(r12)
	l.add	r13, r13, r16
	l.sw	4276(r12), r16
	l.addi	r20, r20, 1014          # CFC
	l.addi	r6, r4, -1
	l.lwz	r14, 4260(r12)
	l.lwz	r23, 8600(r22)
	l.lwz	r5, -124(r2)
	l.sub	r14, r14, r16
	l.add	r23, r23, r26
	l.sfgtu	r6, r5
	l.addi	r16, r14, -1
	l.addi	r28, r28, 3042
	l.sw	8628(r22), r26
	l.lwz	r4, -136(r2)
	l.lwz	r15, 4228(r12)
	l.lwz	r14, 4216(r12)
	l.lwz	r24, 8612(r22)
	l.sub	r24, r24, r26
	l.addi	r26, r24, -1
	l.lwz	r25, 8580(r22)
	l.lwz	r24, 8568(r22)
	l.bf	.LBB26_443
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2535
	l.sfgtu	r16, r15
	l.addi	r20, r20, 2028          # CFC
	l.bf	.LBB26_444
	l.nop	0
.LBB26_210:                             # %if.end517
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 508
	l.addi	r20, r20, 1016          # CFC
	l.ori	r5, r6, 0
	l.addi	r28, r28, 3048
	l.ori	r15, r16, 0
	l.addi	r18, r18, 2540
	l.ori	r25, r26, 0
	l.addi	r20, r20, 2032          # CFC
.LBB26_211:                             # %if.end517
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 509
	l.sw	-64(r2), r5
	l.sw	4288(r12), r15
	l.sw	8640(r22), r25
	l.addi	r20, r20, 1018          # CFC
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r4, -64(r2)
	l.lwz	r3, -124(r2)
	l.sfges	r4, r3
	l.addi	r28, r28, 3054
	l.lwz	r14, 4288(r12)
	l.lwz	r13, 4228(r12)
	l.lwz	r24, 8640(r22)
	l.lwz	r23, 8580(r22)
	l.bf	.LBB26_445
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2545
	l.sfges	r14, r13
	l.addi	r20, r20, 2036          # CFC
	l.bf	.LBB26_446
	l.nop	0
.LBB26_212:                             # %print_back_to_string.exit756
                                        #   in Loop: Header=BB26_3 Depth=3
	l.j	.LBB26_9
	l.nop	0                       # in delay slot
.LBB26_213:                             # %if.end521
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 510
	l.lwz	r7, -76(r2)
	l.add	r7, r7, r3
	l.lwz	r3, -88(r2)
	l.andi	r3, r3, 4
	l.sfeqi	r3, 0
	l.lwz	r17, 4276(r12)
	l.add	r17, r17, r13
	l.addi	r20, r20, 1020          # CFC
	l.lwz	r13, 4264(r12)
	l.movhi	r11, hi(.L.str.1)
	l.andi	r13, r13, 4
	l.lwz	r27, 8628(r22)
	l.lwz	r5, -60(r2)
	l.movhi	r8, hi(.L.str.1)
	l.add	r27, r27, r23
	l.addi	r28, r28, 3060
	l.lwz	r6, -68(r2)
	l.lwz	r15, 4292(r12)
	l.lwz	r16, 4284(r12)
	l.lwz	r23, 8616(r22)
	l.andi	r23, r23, 4
	l.movhi	r31, hi(.L.str.1)
	l.lwz	r25, 8644(r22)
	l.lwz	r26, 8636(r22)
	l.bf	.LBB26_447
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2550
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2040          # CFC
	l.bf	.LBB26_448
	l.nop	0
.LBB26_214:                             # %if.then525
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 511
	l.lwz	r3, -116(r2)
	l.sub	r4, r6, r3
	l.addi	r20, r20, 1022          # CFC
	l.sfltsi	r4, 1
	l.lwz	r13, 4236(r12)
	l.addi	r28, r28, 3066
	l.sub	r14, r16, r13
	l.lwz	r23, 8588(r22)
	l.sub	r24, r26, r23
	l.bf	.LBB26_449
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2555
	l.sfltsi	r14, 1
	l.addi	r20, r20, 2044          # CFC
	l.bf	.LBB26_450
	l.nop	0
.LBB26_215:                             # %while.cond535.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 512
	l.lwz	r3, -92(r2)
	l.ori	r11, r7, 0
	l.sub	r3, r3, r11
	l.addi	r3, r3, -1
	l.sfgtsi	r4, 16
	l.lwz	r13, 4260(r12)
	l.ori	r8, r17, 0
	l.sub	r13, r13, r8
	l.addi	r20, r20, 1024          # CFC
	l.ori	r5, r4, 0
	l.addi	r13, r13, -1
	l.lwz	r23, 8612(r22)
	l.sw	-76(r2), r7
	l.ori	r15, r14, 0
	l.ori	r31, r27, 0
	l.sw	-88(r2), r5
	l.sw	4276(r12), r17
	l.addi	r28, r28, 3072
	l.sub	r23, r23, r31
	l.sw	-100(r2), r3
	l.sw	4264(r12), r15
	l.sw	4252(r12), r13
	l.addi	r23, r23, -1
	l.ori	r25, r24, 0
	l.sw	8628(r22), r27
	l.sw	8616(r22), r25
	l.sw	8604(r22), r23
	l.bf	.LBB26_451
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2560
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 2048          # CFC
	l.bf	.LBB26_452
	l.nop	0
.LBB26_216:                             # %while.cond535.preheader.while.end544_crit_edge
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 513
	l.lwz	r3, -104(r2)
	l.add	r7, r3, r11
	l.addi	r20, r20, 1026          # CFC
	l.ori	r3, r5, 0
	l.lwz	r13, 4248(r12)
	l.addi	r28, r28, 3078
	l.add	r17, r13, r8
	l.ori	r13, r15, 0
	l.addi	r18, r18, 2565
	l.lwz	r23, 8600(r22)
	l.add	r27, r23, r31
	l.ori	r23, r25, 0
	l.addi	r20, r20, 2052          # CFC
	l.j	.LBB26_225
	l.nop	0                       # in delay slot
.LBB26_217:                             # %while.body538.lr.ph
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 514
	l.ori	r11, r5, 0
	l.addi	r5, r0, 16
	l.sfgtui	r3, 16
	l.addi	r20, r20, 1028          # CFC
	l.ori	r4, r3, 0
	l.ori	r8, r15, 0
	l.addi	r15, r0, 16
	l.addi	r28, r28, 3084
	l.ori	r14, r13, 0
	l.ori	r31, r25, 0
	l.addi	r25, r0, 16
	l.ori	r24, r23, 0
	l.bf	.LBB26_453
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2570
	l.sfgtui	r13, 16
	l.addi	r20, r20, 2056          # CFC
	l.bf	.LBB26_454
	l.nop	0
.LBB26_218:                             # %while.body538.lr.ph
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 515
	l.addi	r20, r20, 1030          # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 3090
	l.ori	r15, r14, 0
	l.addi	r18, r18, 2575
	l.ori	r25, r24, 0
	l.addi	r20, r20, 2060          # CFC
.LBB26_219:                             # %while.body538.lr.ph
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 516
	l.lwz	r3, -104(r2)
	l.add	r7, r3, r7
	l.sfltsi	r5, 16
	l.addi	r20, r20, 1032          # CFC
	l.sw	-80(r2), r5
	l.lwz	r13, 4248(r12)
	l.add	r17, r13, r17
	l.addi	r28, r28, 3096
	l.sw	4272(r12), r15
	l.lwz	r23, 8600(r22)
	l.add	r27, r23, r27
	l.sw	8624(r22), r25
	l.bf	.LBB26_455
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2580
	l.sfltsi	r15, 16
	l.addi	r20, r20, 2064          # CFC
	l.bf	.LBB26_456
	l.nop	0
.LBB26_220:                             # %while.body538.preheader
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 517
	l.addi	r3, r6, -17
	l.lwz	r4, -116(r2)
	l.sub	r3, r3, r4
	l.addi	r4, r0, -16
	l.and	r3, r3, r4
	l.addi	r13, r16, -17
	l.lwz	r14, 4236(r12)
	l.addi	r20, r20, 1034          # CFC
	l.sub	r13, r13, r14
	l.sw	-112(r2), r3
	l.addi	r14, r0, -16
	l.addi	r23, r26, -17
	l.addi	r3, r6, -16
	l.and	r13, r13, r14
	l.lwz	r24, 8588(r22)
	l.sw	-68(r2), r3
	l.addi	r28, r28, 3102
	l.sw	4240(r12), r13
	l.sub	r23, r23, r24
	l.ori	r3, r11, 0
	l.addi	r13, r16, -16
	l.addi	r24, r0, -16
	l.sw	-84(r2), r7
	l.sw	4284(r12), r13
	l.addi	r18, r18, 2585
	l.and	r23, r23, r24
	l.ori	r13, r8, 0
	l.sw	4268(r12), r17
	l.sw	8592(r22), r23
	l.addi	r23, r26, -16
	l.sw	8636(r22), r23
	l.ori	r23, r31, 0
	l.sw	8620(r22), r27
	l.addi	r20, r20, 2068          # CFC
.LBB26_221:                             # %while.body538
                                        #   Parent Loop BB26_1 Depth=1
                                        #     Parent Loop BB26_2 Depth=2
                                        #       Parent Loop BB26_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.addi	r18, r18, 518
	l.sw	-64(r2), r3
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r3, r7, 0
	l.sw	4288(r12), r13
	l.movhi	r13, hi(vfnprintf.blanks)
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.ori	r13, r17, 0
	l.addi	r20, r20, 1036          # CFC
	l.sw	8640(r22), r23
	l.movhi	r23, hi(vfnprintf.blanks)
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r23, r27, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r3, -64(r2)
	l.lwz	r5, -80(r2)
	l.lwz	r7, -84(r2)
	l.addi	r3, r3, -16
	l.addi	r28, r28, 3108
	l.sfgtsi	r3, 16
	l.lwz	r13, 4288(r12)
	l.lwz	r15, 4272(r12)
	l.lwz	r17, 4268(r12)
	l.addi	r13, r13, -16
	l.lwz	r23, 8640(r22)
	l.lwz	r25, 8624(r22)
	l.lwz	r27, 8620(r22)
	l.addi	r23, r23, -16
	l.bf	.LBB26_457
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2590
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 2072          # CFC
	l.bf	.LBB26_458
	l.nop	0
.LBB26_224:                             # %while.end544.loopexit
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 519
	l.lwz	r3, -116(r2)
	l.lwz	r4, -68(r2)
	l.sub	r3, r4, r3
	l.lwz	r4, -112(r2)
	l.sub	r3, r3, r4
	l.addi	r20, r20, 1038          # CFC
	l.lwz	r13, 4236(r12)
	l.lwz	r14, 4284(r12)
	l.sub	r13, r14, r13
	l.lwz	r4, -76(r2)
	l.lwz	r14, 4240(r12)
	l.addi	r28, r28, 3114
	l.lwz	r23, 8588(r22)
	l.lwz	r5, -88(r2)
	l.sub	r13, r13, r14
	l.lwz	r24, 8636(r22)
	l.lwz	r14, 4276(r12)
	l.addi	r18, r18, 2595
	l.lwz	r15, 4264(r12)
	l.sub	r23, r24, r23
	l.lwz	r24, 8592(r22)
	l.sub	r23, r23, r24
	l.lwz	r24, 8628(r22)
	l.lwz	r25, 8616(r22)
	l.addi	r20, r20, 2076          # CFC
.LBB26_225:                             # %while.end544
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 520
	l.lwz	r4, -100(r2)
	l.sfgtu	r4, r3
	l.sw	-68(r2), r3
	l.addi	r20, r20, 1040          # CFC
	l.ori	r5, r3, 0
	l.lwz	r14, 4252(r12)
	l.sw	4284(r12), r13
	l.addi	r28, r28, 3120
	l.ori	r15, r13, 0
	l.lwz	r24, 8604(r22)
	l.sw	8636(r22), r23
	l.ori	r25, r23, 0
	l.bf	.LBB26_459
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2600
	l.sfgtu	r14, r13
	l.addi	r20, r20, 2080          # CFC
	l.bf	.LBB26_460
	l.nop	0
.LBB26_462:
	l.addi	r18, r18, 521
	l.addi	r20, r20, 1042          # CFC
	l.movhi	r3, hi(vfnprintf.blanks)
	l.addi	r28, r28, 3126
	l.movhi	r13, hi(vfnprintf.blanks)
	l.addi	r18, r18, 2605
	l.movhi	r23, hi(vfnprintf.blanks)
	l.addi	r20, r20, 2084          # CFC
.LBB26_226:                             # %while.end544
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 522
	l.addi	r20, r20, 1044          # CFC
	l.ori	r5, r4, 0
	l.addi	r28, r28, 3132
	l.ori	r15, r14, 0
	l.addi	r18, r18, 2610
	l.ori	r25, r24, 0
	l.addi	r20, r20, 2088          # CFC
.LBB26_227:                             # %while.end544
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 523
	l.sw	-64(r2), r5
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r3, r7, 0
	l.lwz	r5, -64(r2)
	l.sw	4288(r12), r15
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.addi	r20, r20, 1046          # CFC
	l.ori	r13, r17, 0
	l.lwz	r15, 4288(r12)
	l.sw	8640(r22), r25
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r23, r27, 0
	l.lwz	r25, 8640(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.addi	r28, r28, 3138
	l.lwz	r4, -64(r2)
	l.lwz	r3, -68(r2)
	l.sfges	r4, r3
	l.lwz	r14, 4288(r12)
	l.lwz	r13, 4284(r12)
	l.lwz	r24, 8640(r22)
	l.lwz	r23, 8636(r22)
	l.bf	.LBB26_463
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2615
	l.sfges	r14, r13
	l.addi	r20, r20, 2092          # CFC
	l.bf	.LBB26_464
	l.nop	0
.LBB26_228:                             # %print_back_to_string.exit738
                                        #   in Loop: Header=BB26_3 Depth=3
	l.j	.LBB26_9
	l.nop	0                       # in delay slot
.LBB26_233:                             # %while.body501.us
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 524
	l.ori	r5, r3, 0
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.addi	r20, r20, 1048          # CFC
	l.ori	r3, r6, 0
	l.ori	r15, r13, 0
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 3144
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.ori	r13, r16, 0
	l.ori	r25, r23, 0
	l.addi	r18, r18, 2620
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r23, r26, 0
	l.addi	r20, r20, 2096          # CFC
	l.j	.LBB26_223
	l.nop	0                       # in delay slot
.LBB26_232:                             # %while.body471.us
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 525
	l.ori	r5, r3, 0
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.addi	r20, r20, 1050          # CFC
	l.ori	r3, r11, 0
	l.ori	r15, r13, 0
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 3150
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.ori	r13, r8, 0
	l.ori	r25, r23, 0
	l.addi	r18, r18, 2625
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r23, r31, 0
	l.addi	r20, r20, 2100          # CFC
	l.j	.LBB26_223
	l.nop	0                       # in delay slot
.LBB26_231:                             # %while.body415.us
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 526
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.lwz	r3, -100(r2)
	l.lwz	r5, -112(r2)
	l.addi	r20, r20, 1052          # CFC
	l.movhi	r13, hi(vfnprintf.blanks)
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.lwz	r13, 4252(r12)
	l.lwz	r15, 4240(r12)
	l.movhi	r23, hi(vfnprintf.blanks)
	l.addi	r28, r28, 3156
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.lwz	r23, 8604(r22)
	l.lwz	r25, 8592(r22)
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.lwz	r3, -76(r2)
	l.addi	r18, r18, 2630
	l.lwz	r4, -112(r2)
	l.lwz	r13, 4276(r12)
	l.lwz	r14, 4240(r12)
	l.lwz	r23, 8628(r22)
	l.lwz	r24, 8592(r22)
	l.addi	r20, r20, 2104          # CFC
	l.j	.LBB26_10
	l.nop	0                       # in delay slot
.LBB26_222:                             # %while.body538.us
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 527
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.addi	r20, r20, 1054          # CFC
	l.ori	r3, r7, 0
	l.movhi	r13, hi(vfnprintf.blanks)
	l.addi	r28, r28, 3162
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.ori	r13, r17, 0
	l.addi	r18, r18, 2635
	l.movhi	r23, hi(vfnprintf.blanks)
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r23, r27, 0
	l.addi	r20, r20, 2108          # CFC
.LBB26_223:                             # %error
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 528
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.addi	r20, r20, 1056          # CFC
	l.lwz	r3, -76(r2)
	l.lwz	r4, -80(r2)
	l.addi	r28, r28, 3168
	l.lwz	r13, 4276(r12)
	l.lwz	r14, 4272(r12)
	l.addi	r18, r18, 2640
	l.lwz	r23, 8628(r22)
	l.lwz	r24, 8624(r22)
	l.addi	r20, r20, 2112          # CFC
.LBB26_10:                              # %error
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 529
	l.add	r3, r4, r3
	l.addi	r20, r20, 1058          # CFC
	l.sw	-76(r2), r3
	l.add	r13, r14, r13
	l.addi	r28, r28, 3174
	l.sw	4276(r12), r13
	l.addi	r18, r18, 2645
	l.add	r23, r24, r23
	l.sw	8628(r22), r23
	l.addi	r20, r20, 2116          # CFC
.LBB26_11:                              # %error
                                        #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 530
	l.lwz	r11, -76(r2)
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 1060          # CFC
	l.lwz	r9, -4(r1)
	l.lwz	r8, 4276(r12)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 3180
	l.lwz	r12, 4344(r10)
	l.lwz	r19, 4348(r10)
	l.lwz	r31, 8628(r22)
	l.addi	r18, r18, 2650
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8696(r21)
	l.lwz	r29, 8700(r21)
	l.addi	r20, r20, 2120          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB26_236
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB26_236:                             # %error
                                        #   in Loop: Header=BB26_3 Depth=3
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB26_465
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB26_465
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB26_465
	l.nop	0
	l.nop	205
.LBB26_465:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB26_466
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB26_466
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB26_466
	l.nop	0
	l.nop	205
.LBB26_466:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB26_467
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB26_467
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB26_467
	l.nop	0
	l.nop	205
.LBB26_467:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB26_468
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB26_468
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB26_468
	l.nop	0
	l.nop	205
.LBB26_468:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB26_469
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB26_469
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB26_469
	l.nop	0
	l.nop	205
.LBB26_469:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB26_470
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB26_470
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB26_470
	l.nop	0
	l.nop	205
.LBB26_470:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB26_471
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB26_471
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB26_471
	l.nop	0
	l.nop	205
.LBB26_471:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB26_472
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB26_472
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB26_472
	l.nop	0
	l.nop	205
.LBB26_472:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB26_473
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB26_473
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB26_473
	l.nop	0
	l.nop	205
.LBB26_473:
.LBB26_474:
	l.jr	r30
	l.nop	0
.LBB26_237:                             #   in Loop: Header=BB26_2 Depth=2
	l.addi	r18, r18, 1485
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1188          # CFC
	l.bf	.LBB26_64
	l.nop	0
.LBB26_238:                             #   in Loop: Header=BB26_2 Depth=2
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_64
	l.nop	0
	l.j	.LBB26_63
	l.nop	0
.LBB26_239:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1500
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1200          # CFC
	l.bf	.LBB26_5
	l.nop	0
.LBB26_240:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_5
	l.nop	0
	l.j	.LBB26_4
	l.nop	0
.LBB26_241:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1505
	l.sfnei	r13, 37
	l.addi	r20, r20, 1204          # CFC
	l.bf	.LBB26_3
	l.nop	0
.LBB26_242:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfnei	r3, 37
	l.bf	.LBB26_3
	l.nop	0
	l.j	.LBB26_5
	l.nop	0
.LBB26_243:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1510
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1208          # CFC
	l.bf	.LBB26_13
	l.nop	0
.LBB26_244:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_13
	l.nop	0
	l.j	.LBB26_6
	l.nop	0
.LBB26_245:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1515
	l.sfgtu	r14, r17
	l.addi	r20, r20, 1212          # CFC
	l.bf	.LBB26_8
	l.nop	0
.LBB26_246:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtu	r4, r7
	l.bf	.LBB26_8
	l.nop	0
	l.j	.LBB26_7
	l.nop	0
.LBB26_247:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1525
	l.sfges	r14, r13
	l.addi	r20, r20, 1220          # CFC
	l.bf	.LBB26_12
	l.nop	0
.LBB26_248:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB26_12
	l.nop	0
	l.j	.LBB26_9
	l.nop	0
.LBB26_249:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1540
	l.sflts	r16, r14
	l.addi	r20, r20, 1232          # CFC
	l.bf	.LBB26_15
	l.nop	0
.LBB26_250:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sflts	r6, r4
	l.bf	.LBB26_15
	l.nop	0
	l.j	.LBB26_14
	l.nop	0
.LBB26_251:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1550
	l.sfnei	r13, 1
	l.addi	r20, r20, 1240          # CFC
	l.bf	.LBB26_11
	l.nop	0
.LBB26_252:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfnei	r3, 1
	l.bf	.LBB26_11
	l.nop	0
	l.j	.LBB26_16
	l.nop	0
.LBB26_253:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1575
	l.sfgtui	r17, 122
	l.addi	r20, r20, 1260          # CFC
	l.bf	.LBB26_144
	l.nop	0
.LBB26_254:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtui	r7, 122
	l.bf	.LBB26_144
	l.nop	0
	l.j	.LBB26_19
	l.nop	0
.LBB26_255:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1590
	l.sfltui	r13, 10
	l.addi	r20, r20, 1272          # CFC
	l.bf	.LBB26_257
	l.nop	0
.LBB26_256:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfltui	r3, 10
	l.bf	.LBB26_257
	l.nop	0
	l.j	.LBB26_258
	l.nop	0
.LBB26_257:
	l.addi	r18, r18, 531
	l.addi	r20, r20, 1062          # CFC
	l.ori	r3, r5, 0
	l.addi	r28, r28, 3186
	l.ori	r13, r15, 0
	l.addi	r18, r18, 2655
	l.ori	r23, r25, 0
	l.addi	r20, r20, 2124          # CFC
	l.j	.LBB26_42
	l.nop	0
.LBB26_259:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1600
	l.sfeqi	r17, 42
	l.addi	r20, r20, 1280          # CFC
	l.bf	.LBB26_34
	l.nop	0
.LBB26_260:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r7, 42
	l.bf	.LBB26_34
	l.nop	0
	l.j	.LBB26_31
	l.nop	0
.LBB26_261:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1605
	l.sfgtui	r14, 9
	l.addi	r20, r20, 1284          # CFC
	l.bf	.LBB26_37
	l.nop	0
.LBB26_262:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtui	r4, 9
	l.bf	.LBB26_37
	l.nop	0
	l.j	.LBB26_32
	l.nop	0
.LBB26_263:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1615
	l.sfltui	r14, 10
	l.addi	r20, r20, 1292          # CFC
	l.bf	.LBB26_33
	l.nop	0
.LBB26_264:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfltui	r4, 10
	l.bf	.LBB26_33
	l.nop	0
	l.j	.LBB26_37
	l.nop	0
.LBB26_265:                             #   in Loop: Header=BB26_3 Depth=3
	l.sfgtsi	r16, -1
	l.bf	.LBB26_39
	l.nop	0
.LBB26_266:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtsi	r6, -1
	l.bf	.LBB26_39
	l.nop	0
	l.j	.LBB26_38
	l.nop	0
.LBB26_267:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1625
	l.sfnei	r13, 0
	l.addi	r20, r20, 1300          # CFC
	l.bf	.LBB26_17
	l.nop	0
.LBB26_268:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB26_17
	l.nop	0
	l.j	.LBB26_21
	l.nop	0
.LBB26_269:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1640
	l.sfgtsi	r14, -1
	l.addi	r20, r20, 1312          # CFC
	l.bf	.LBB26_17
	l.nop	0
.LBB26_270:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtsi	r4, -1
	l.bf	.LBB26_17
	l.nop	0
	l.j	.LBB26_27
	l.nop	0
.LBB26_271:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1670
	l.sfnei	r13, 108
	l.addi	r20, r20, 1336          # CFC
	l.bf	.LBB26_46
	l.nop	0
.LBB26_272:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfnei	r3, 108
	l.bf	.LBB26_46
	l.nop	0
	l.j	.LBB26_45
	l.nop	0
.LBB26_273:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1705
	l.sfgtsi	r16, -1
	l.addi	r20, r20, 1364          # CFC
	l.bf	.LBB26_36
	l.nop	0
.LBB26_274:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtsi	r6, -1
	l.bf	.LBB26_36
	l.nop	0
	l.j	.LBB26_35
	l.nop	0
.LBB26_275:                             #   in Loop: Header=BB26_2 Depth=2
	l.addi	r18, r18, 1720
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1376          # CFC
	l.bf	.LBB26_66
	l.nop	0
.LBB26_276:                             #   in Loop: Header=BB26_2 Depth=2
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_66
	l.nop	0
	l.j	.LBB26_65
	l.nop	0
.LBB26_277:                             #   in Loop: Header=BB26_2 Depth=2
	l.addi	r18, r18, 1730
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1384          # CFC
	l.bf	.LBB26_65
	l.nop	0
.LBB26_278:                             #   in Loop: Header=BB26_2 Depth=2
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_65
	l.nop	0
	l.j	.LBB26_67
	l.nop	0
.LBB26_279:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1755
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1404          # CFC
	l.bf	.LBB26_52
	l.nop	0
.LBB26_280:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_52
	l.nop	0
	l.j	.LBB26_51
	l.nop	0
.LBB26_281:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1765
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1412          # CFC
	l.bf	.LBB26_54
	l.nop	0
.LBB26_282:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_54
	l.nop	0
	l.j	.LBB26_53
	l.nop	0
.LBB26_283:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1780
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1424          # CFC
	l.bf	.LBB26_71
	l.nop	0
.LBB26_284:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_71
	l.nop	0
	l.j	.LBB26_70
	l.nop	0
.LBB26_285:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1795
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1436          # CFC
	l.bf	.LBB26_89
	l.nop	0
.LBB26_286:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_89
	l.nop	0
	l.j	.LBB26_88
	l.nop	0
.LBB26_287:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1810
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1448          # CFC
	l.bf	.LBB26_97
	l.nop	0
.LBB26_288:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_97
	l.nop	0
	l.j	.LBB26_96
	l.nop	0
.LBB26_289:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1840
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1472          # CFC
	l.bf	.LBB26_79
	l.nop	0
.LBB26_290:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_79
	l.nop	0
	l.j	.LBB26_78
	l.nop	0
.LBB26_291:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1850
	l.sfltsi	r15, 0
	l.addi	r20, r20, 1480          # CFC
	l.bf	.LBB26_84
	l.nop	0
.LBB26_292:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfltsi	r5, 0
	l.bf	.LBB26_84
	l.nop	0
	l.j	.LBB26_80
	l.nop	0
.LBB26_293:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1855
	l.sfeqi	r8, 0
	l.addi	r20, r20, 1484          # CFC
	l.bf	.LBB26_85
	l.nop	0
.LBB26_294:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB26_85
	l.nop	0
	l.j	.LBB26_81
	l.nop	0
.LBB26_295:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1860
	l.sfgts	r13, r14
	l.addi	r20, r20, 1488          # CFC
	l.bf	.LBB26_83
	l.nop	0
.LBB26_296:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgts	r3, r4
	l.bf	.LBB26_83
	l.nop	0
	l.j	.LBB26_82
	l.nop	0
.LBB26_297:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1875
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1500          # CFC
	l.bf	.LBB26_73
	l.nop	0
.LBB26_298:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_73
	l.nop	0
	l.j	.LBB26_72
	l.nop	0
.LBB26_299:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1885
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1508          # CFC
	l.bf	.LBB26_91
	l.nop	0
.LBB26_300:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_91
	l.nop	0
	l.j	.LBB26_90
	l.nop	0
.LBB26_301:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1895
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1516          # CFC
	l.bf	.LBB26_99
	l.nop	0
.LBB26_302:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_99
	l.nop	0
	l.j	.LBB26_98
	l.nop	0
.LBB26_303:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1905
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1524          # CFC
	l.bf	.LBB26_56
	l.nop	0
.LBB26_304:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_56
	l.nop	0
	l.j	.LBB26_55
	l.nop	0
.LBB26_305:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1920
	l.sfgtsi	r16, -1
	l.addi	r20, r20, 1536          # CFC
	l.bf	.LBB26_108
	l.nop	0
.LBB26_306:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtsi	r6, -1
	l.bf	.LBB26_108
	l.nop	0
	l.j	.LBB26_58
	l.nop	0
.LBB26_307:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1925
	l.sfnei	r8, 0
	l.addi	r20, r20, 1540          # CFC
	l.bf	.LBB26_60
	l.nop	0
.LBB26_308:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfnei	r11, 0
	l.bf	.LBB26_60
	l.nop	0
	l.j	.LBB26_59
	l.nop	0
.LBB26_309:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1940
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1552          # CFC
	l.bf	.LBB26_75
	l.nop	0
.LBB26_310:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_75
	l.nop	0
	l.j	.LBB26_74
	l.nop	0
.LBB26_311:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1955
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1564          # CFC
	l.bf	.LBB26_93
	l.nop	0
.LBB26_312:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_93
	l.nop	0
	l.j	.LBB26_92
	l.nop	0
.LBB26_313:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1970
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1576          # CFC
	l.bf	.LBB26_101
	l.nop	0
.LBB26_314:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_101
	l.nop	0
	l.j	.LBB26_100
	l.nop	0
.LBB26_315:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1985
	l.sfnei	r13, 0
	l.addi	r20, r20, 1588          # CFC
	l.bf	.LBB26_104
	l.nop	0
.LBB26_316:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB26_104
	l.nop	0
	l.j	.LBB26_103
	l.nop	0
.LBB26_317:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 1995
	l.sfnei	r13, 0
	l.addi	r20, r20, 1596          # CFC
	l.bf	.LBB26_106
	l.nop	0
.LBB26_318:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB26_106
	l.nop	0
	l.j	.LBB26_105
	l.nop	0
.LBB26_319:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2015
	l.sfgtsi	r17, -1
	l.addi	r20, r20, 1612          # CFC
	l.bf	.LBB26_110
	l.nop	0
.LBB26_320:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtsi	r7, -1
	l.bf	.LBB26_110
	l.nop	0
	l.j	.LBB26_109
	l.nop	0
.LBB26_321:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2025
	l.sfnei	r17, 0
	l.addi	r20, r20, 1620          # CFC
	l.bf	.LBB26_112
	l.nop	0
.LBB26_322:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB26_112
	l.nop	0
	l.j	.LBB26_111
	l.nop	0
.LBB26_323:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2030
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1624          # CFC
	l.bf	.LBB26_141
	l.nop	0
.LBB26_324:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB26_141
	l.nop	0
	l.j	.LBB26_112
	l.nop	0
.LBB26_325:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2035
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1628          # CFC
	l.bf	.LBB26_117
	l.nop	0
.LBB26_326:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB26_117
	l.nop	0
	l.j	.LBB26_113
	l.nop	0
.LBB26_327:                             #   in Loop: Header=BB26_3 Depth=3
	l.sfeqi	r14, 1
	l.bf	.LBB26_122
	l.nop	0
.LBB26_328:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r4, 1
	l.bf	.LBB26_122
	l.nop	0
	l.j	.LBB26_114
	l.nop	0
.LBB26_329:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2040
	l.sfnei	r14, 2
	l.addi	r20, r20, 1632          # CFC
	l.bf	.LBB26_142
	l.nop	0
.LBB26_330:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfnei	r4, 2
	l.bf	.LBB26_142
	l.nop	0
	l.j	.LBB26_115
	l.nop	0
.LBB26_331:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2050
	l.sfnei	r13, 0
	l.addi	r20, r20, 1640          # CFC
	l.bf	.LBB26_116
	l.nop	0
.LBB26_332:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB26_116
	l.nop	0
	l.j	.LBB26_235
	l.nop	0
.LBB26_333:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2060
	l.sfnei	r16, 0
	l.addi	r20, r20, 1648          # CFC
	l.bf	.LBB26_118
	l.nop	0
.LBB26_334:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfnei	r6, 0
	l.bf	.LBB26_118
	l.nop	0
	l.j	.LBB26_119
	l.nop	0
.LBB26_335:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2065
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1652          # CFC
	l.bf	.LBB26_337
	l.nop	0
.LBB26_336:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB26_337
	l.nop	0
	l.j	.LBB26_338
	l.nop	0
.LBB26_337:
	l.addi	r18, r18, 532
	l.ori	r5, r6, 0
	l.addi	r20, r20, 1064          # CFC
	l.lwz	r6, -76(r2)
	l.ori	r15, r16, 0
	l.addi	r28, r28, 3192
	l.lwz	r16, 4276(r12)
	l.addi	r18, r18, 2660
	l.ori	r25, r26, 0
	l.lwz	r26, 8628(r22)
	l.addi	r20, r20, 2128          # CFC
	l.j	.LBB26_141
	l.nop	0
.LBB26_339:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2075
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1660          # CFC
	l.bf	.LBB26_141
	l.nop	0
.LBB26_340:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB26_141
	l.nop	0
	l.j	.LBB26_121
	l.nop	0
.LBB26_341:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2085
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1668          # CFC
	l.bf	.LBB26_130
	l.nop	0
.LBB26_342:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_130
	l.nop	0
	l.j	.LBB26_123
	l.nop	0
.LBB26_343:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2090
	l.sfltui	r8, 10
	l.addi	r20, r20, 1672          # CFC
	l.bf	.LBB26_125
	l.nop	0
.LBB26_344:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfltui	r11, 10
	l.bf	.LBB26_125
	l.nop	0
	l.j	.LBB26_124
	l.nop	0
.LBB26_345:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2100
	l.sfeqi	r14, 0
	l.addi	r20, r20, 1680          # CFC
	l.bf	.LBB26_127
	l.nop	0
.LBB26_346:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB26_127
	l.nop	0
	l.j	.LBB26_126
	l.nop	0
.LBB26_347:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2110
	l.sfnei	r13, 0
	l.addi	r20, r20, 1688          # CFC
	l.bf	.LBB26_349
	l.nop	0
.LBB26_348:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB26_349
	l.nop	0
	l.j	.LBB26_350
	l.nop	0
.LBB26_349:
	l.addi	r18, r18, 533
	l.addi	r20, r20, 1066          # CFC
	l.lwz	r3, -80(r2)
	l.addi	r28, r28, 3198
	l.lwz	r13, 4272(r12)
	l.addi	r18, r18, 2665
	l.lwz	r23, 8624(r22)
	l.addi	r20, r20, 2132          # CFC
	l.j	.LBB26_140
	l.nop	0
.LBB26_351:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2125
	l.sfnei	r15, 0
	l.addi	r20, r20, 1700          # CFC
	l.bf	.LBB26_135
	l.nop	0
.LBB26_352:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB26_135
	l.nop	0
	l.j	.LBB26_134
	l.nop	0
.LBB26_353:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2135
	l.sfgtui	r17, 99
	l.addi	r20, r20, 1708          # CFC
	l.bf	.LBB26_137
	l.nop	0
.LBB26_354:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtui	r7, 99
	l.bf	.LBB26_137
	l.nop	0
	l.j	.LBB26_136
	l.nop	0
.LBB26_355:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2145
	l.sfeqi	r15, 0
	l.addi	r20, r20, 1716          # CFC
	l.bf	.LBB26_357
	l.nop	0
.LBB26_356:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB26_357
	l.nop	0
	l.j	.LBB26_358
	l.nop	0
.LBB26_357:
	l.addi	r18, r18, 534
	l.addi	r20, r20, 1068          # CFC
	l.lwz	r5, -84(r2)
	l.addi	r28, r28, 3204
	l.lwz	r15, 4268(r12)
	l.addi	r18, r18, 2670
	l.lwz	r25, 8620(r22)
	l.addi	r20, r20, 2136          # CFC
	l.j	.LBB26_139
	l.nop	0
.LBB26_359:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2160
	l.sfnei	r13, 0
	l.addi	r20, r20, 1728          # CFC
	l.bf	.LBB26_361
	l.nop	0
.LBB26_360:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB26_361
	l.nop	0
	l.j	.LBB26_362
	l.nop	0
.LBB26_361:
	l.addi	r18, r18, 535
	l.addi	r20, r20, 1070          # CFC
	l.lwz	r3, -120(r2)
	l.addi	r28, r28, 3210
	l.lwz	r13, 4232(r12)
	l.addi	r18, r18, 2675
	l.lwz	r23, 8584(r22)
	l.addi	r20, r20, 2140          # CFC
	l.j	.LBB26_129
	l.nop	0
.LBB26_363:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2175
	l.sfltui	r8, 10
	l.addi	r20, r20, 1740          # CFC
	l.bf	.LBB26_133
	l.nop	0
.LBB26_364:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfltui	r11, 10
	l.bf	.LBB26_133
	l.nop	0
	l.j	.LBB26_131
	l.nop	0
.LBB26_365:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2185
	l.sfgtui	r14, 99
	l.addi	r20, r20, 1748          # CFC
	l.bf	.LBB26_367
	l.nop	0
.LBB26_366:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtui	r4, 99
	l.bf	.LBB26_367
	l.nop	0
	l.j	.LBB26_368
	l.nop	0
.LBB26_367:
	l.addi	r18, r18, 536
	l.addi	r20, r20, 1072          # CFC
	l.ori	r4, r11, 0
	l.addi	r28, r28, 3216
	l.ori	r14, r8, 0
	l.addi	r18, r18, 2680
	l.ori	r24, r31, 0
	l.addi	r20, r20, 2144          # CFC
	l.j	.LBB26_132
	l.nop	0
.LBB26_369:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2205
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1764          # CFC
	l.bf	.LBB26_371
	l.nop	0
.LBB26_370:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_371
	l.nop	0
	l.j	.LBB26_372
	l.nop	0
.LBB26_371:
	l.addi	r18, r18, 537
	l.lwz	r3, -88(r2)
	l.addi	r20, r20, 1074          # CFC
	l.ori	r5, r3, 0
	l.lwz	r13, 4264(r12)
	l.addi	r28, r28, 3222
	l.ori	r15, r13, 0
	l.addi	r18, r18, 2685
	l.lwz	r23, 8616(r22)
	l.ori	r25, r23, 0
	l.addi	r20, r20, 2148          # CFC
	l.j	.LBB26_147
	l.nop	0
.LBB26_373:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2230
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1784          # CFC
	l.bf	.LBB26_375
	l.nop	0
.LBB26_374:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_375
	l.nop	0
	l.j	.LBB26_376
	l.nop	0
.LBB26_375:
	l.addi	r18, r18, 538
	l.addi	r20, r20, 1076          # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 3228
	l.ori	r13, r14, 0
	l.addi	r18, r18, 2690
	l.ori	r23, r24, 0
	l.addi	r20, r20, 2152          # CFC
	l.j	.LBB26_149
	l.nop	0
.LBB26_377:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2250
	l.sfgts	r17, r8
	l.addi	r20, r20, 1800          # CFC
	l.bf	.LBB26_152
	l.nop	0
.LBB26_378:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgts	r7, r11
	l.bf	.LBB26_152
	l.nop	0
	l.j	.LBB26_151
	l.nop	0
.LBB26_379:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2260
	l.sfnei	r13, 0
	l.addi	r20, r20, 1808          # CFC
	l.bf	.LBB26_167
	l.nop	0
.LBB26_380:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB26_167
	l.nop	0
	l.j	.LBB26_153
	l.nop	0
.LBB26_381:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2265
	l.sfltsi	r15, 1
	l.addi	r20, r20, 1812          # CFC
	l.bf	.LBB26_167
	l.nop	0
.LBB26_382:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfltsi	r5, 1
	l.bf	.LBB26_167
	l.nop	0
	l.j	.LBB26_154
	l.nop	0
.LBB26_383:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2270
	l.sfgtsi	r15, 16
	l.addi	r20, r20, 1816          # CFC
	l.bf	.LBB26_156
	l.nop	0
.LBB26_384:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtsi	r5, 16
	l.bf	.LBB26_156
	l.nop	0
	l.j	.LBB26_155
	l.nop	0
.LBB26_385:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2280
	l.sfgtui	r8, 16
	l.addi	r20, r20, 1824          # CFC
	l.bf	.LBB26_158
	l.nop	0
.LBB26_386:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtui	r11, 16
	l.bf	.LBB26_158
	l.nop	0
	l.j	.LBB26_157
	l.nop	0
.LBB26_387:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2290
	l.sfltsi	r15, 16
	l.addi	r20, r20, 1832          # CFC
	l.bf	.LBB26_389
	l.nop	0
.LBB26_388:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfltsi	r5, 16
	l.bf	.LBB26_389
	l.nop	0
	l.j	.LBB26_390
	l.nop	0
.LBB26_389:
	l.addi	r18, r18, 539
	l.addi	r20, r20, 1078          # CFC
	l.lwz	r5, -68(r2)
	l.addi	r28, r28, 3234
	l.lwz	r15, 4284(r12)
	l.addi	r18, r18, 2695
	l.lwz	r25, 8636(r22)
	l.addi	r20, r20, 2156          # CFC
	l.j	.LBB26_231
	l.nop	0
.LBB26_391:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2305
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 1844          # CFC
	l.bf	.LBB26_160
	l.nop	0
.LBB26_392:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtsi	r4, 16
	l.bf	.LBB26_160
	l.nop	0
	l.j	.LBB26_161
	l.nop	0
.LBB26_393:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2315
	l.sfgtu	r8, r15
	l.addi	r20, r20, 1852          # CFC
	l.bf	.LBB26_164
	l.nop	0
.LBB26_394:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtu	r11, r5
	l.bf	.LBB26_164
	l.nop	0
	l.j	.LBB26_163
	l.nop	0
.LBB26_395:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2325
	l.sfges	r14, r13
	l.addi	r20, r20, 1860          # CFC
	l.bf	.LBB26_166
	l.nop	0
.LBB26_396:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB26_166
	l.nop	0
	l.j	.LBB26_165
	l.nop	0
.LBB26_397:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2335
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1868          # CFC
	l.bf	.LBB26_173
	l.nop	0
.LBB26_398:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_173
	l.nop	0
	l.j	.LBB26_168
	l.nop	0
.LBB26_399:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2340
	l.sfgtui	r14, 1
	l.addi	r20, r20, 1872          # CFC
	l.bf	.LBB26_170
	l.nop	0
.LBB26_400:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtui	r4, 1
	l.bf	.LBB26_170
	l.nop	0
	l.j	.LBB26_169
	l.nop	0
.LBB26_401:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2350
	l.sfgtsi	r14, 0
	l.addi	r20, r20, 1880          # CFC
	l.bf	.LBB26_172
	l.nop	0
.LBB26_402:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtsi	r4, 0
	l.bf	.LBB26_172
	l.nop	0
	l.j	.LBB26_171
	l.nop	0
.LBB26_403:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2360
	l.sfeqi	r13, 0
	l.addi	r20, r20, 1888          # CFC
	l.bf	.LBB26_180
	l.nop	0
.LBB26_404:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_180
	l.nop	0
	l.j	.LBB26_174
	l.nop	0
.LBB26_405:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2365
	l.sfgtui	r14, 2
	l.addi	r20, r20, 1892          # CFC
	l.bf	.LBB26_176
	l.nop	0
.LBB26_406:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtui	r4, 2
	l.bf	.LBB26_176
	l.nop	0
	l.j	.LBB26_175
	l.nop	0
.LBB26_407:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2375
	l.sfgtsi	r14, 1
	l.addi	r20, r20, 1900          # CFC
	l.bf	.LBB26_178
	l.nop	0
.LBB26_408:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtsi	r4, 1
	l.bf	.LBB26_178
	l.nop	0
	l.j	.LBB26_177
	l.nop	0
.LBB26_409:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2390
	l.sfnei	r13, 128
	l.addi	r20, r20, 1912          # CFC
	l.bf	.LBB26_195
	l.nop	0
.LBB26_410:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfnei	r3, 128
	l.bf	.LBB26_195
	l.nop	0
	l.j	.LBB26_181
	l.nop	0
.LBB26_411:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2395
	l.sfltsi	r14, 1
	l.addi	r20, r20, 1916          # CFC
	l.bf	.LBB26_195
	l.nop	0
.LBB26_412:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfltsi	r4, 1
	l.bf	.LBB26_195
	l.nop	0
	l.j	.LBB26_182
	l.nop	0
.LBB26_413:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2400
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 1920          # CFC
	l.bf	.LBB26_184
	l.nop	0
.LBB26_414:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtsi	r4, 16
	l.bf	.LBB26_184
	l.nop	0
	l.j	.LBB26_183
	l.nop	0
.LBB26_415:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2410
	l.sfgtui	r17, 16
	l.addi	r20, r20, 1928          # CFC
	l.bf	.LBB26_186
	l.nop	0
.LBB26_416:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtui	r7, 16
	l.bf	.LBB26_186
	l.nop	0
	l.j	.LBB26_185
	l.nop	0
.LBB26_417:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2420
	l.sfltsi	r13, 16
	l.addi	r20, r20, 1936          # CFC
	l.bf	.LBB26_232
	l.nop	0
.LBB26_418:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfltsi	r3, 16
	l.bf	.LBB26_232
	l.nop	0
	l.j	.LBB26_187
	l.nop	0
.LBB26_419:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2430
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 1944          # CFC
	l.bf	.LBB26_188
	l.nop	0
.LBB26_420:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtsi	r3, 16
	l.bf	.LBB26_188
	l.nop	0
	l.j	.LBB26_189
	l.nop	0
.LBB26_421:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2440
	l.sfgtu	r17, r13
	l.addi	r20, r20, 1952          # CFC
	l.bf	.LBB26_423
	l.nop	0
.LBB26_422:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtu	r7, r3
	l.bf	.LBB26_423
	l.nop	0
	l.j	.LBB26_424
	l.nop	0
.LBB26_423:
	l.addi	r18, r18, 540
	l.addi	r20, r20, 1080          # CFC
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 3240
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r18, r18, 2700
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.addi	r20, r20, 2160          # CFC
	l.j	.LBB26_192
	l.nop	0
.LBB26_425:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2455
	l.sfges	r14, r13
	l.addi	r20, r20, 1964          # CFC
	l.bf	.LBB26_194
	l.nop	0
.LBB26_426:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB26_194
	l.nop	0
	l.j	.LBB26_193
	l.nop	0
.LBB26_427:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2465
	l.sfltsi	r15, 1
	l.addi	r20, r20, 1972          # CFC
	l.bf	.LBB26_209
	l.nop	0
.LBB26_428:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfltsi	r5, 1
	l.bf	.LBB26_209
	l.nop	0
	l.j	.LBB26_196
	l.nop	0
.LBB26_429:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2470
	l.sfgtsi	r15, 16
	l.addi	r20, r20, 1976          # CFC
	l.bf	.LBB26_198
	l.nop	0
.LBB26_430:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtsi	r5, 16
	l.bf	.LBB26_198
	l.nop	0
	l.j	.LBB26_197
	l.nop	0
.LBB26_431:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2480
	l.sfgtui	r14, 16
	l.addi	r20, r20, 1984          # CFC
	l.bf	.LBB26_200
	l.nop	0
.LBB26_432:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtui	r4, 16
	l.bf	.LBB26_200
	l.nop	0
	l.j	.LBB26_199
	l.nop	0
.LBB26_433:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2490
	l.sfltsi	r13, 16
	l.addi	r20, r20, 1992          # CFC
	l.bf	.LBB26_233
	l.nop	0
.LBB26_434:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfltsi	r3, 16
	l.bf	.LBB26_233
	l.nop	0
	l.j	.LBB26_201
	l.nop	0
.LBB26_435:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2500
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 2000          # CFC
	l.bf	.LBB26_202
	l.nop	0
.LBB26_436:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtsi	r3, 16
	l.bf	.LBB26_202
	l.nop	0
	l.j	.LBB26_203
	l.nop	0
.LBB26_437:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2510
	l.sfgtu	r14, r13
	l.addi	r20, r20, 2008          # CFC
	l.bf	.LBB26_439
	l.nop	0
.LBB26_438:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtu	r4, r3
	l.bf	.LBB26_439
	l.nop	0
	l.j	.LBB26_440
	l.nop	0
.LBB26_439:
	l.addi	r18, r18, 541
	l.addi	r20, r20, 1082          # CFC
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.addi	r28, r28, 3246
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.addi	r18, r18, 2705
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.addi	r20, r20, 2164          # CFC
	l.j	.LBB26_206
	l.nop	0
.LBB26_441:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2525
	l.sfges	r14, r13
	l.addi	r20, r20, 2020          # CFC
	l.bf	.LBB26_208
	l.nop	0
.LBB26_442:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB26_208
	l.nop	0
	l.j	.LBB26_207
	l.nop	0
.LBB26_443:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2535
	l.sfgtu	r16, r15
	l.addi	r20, r20, 2028          # CFC
	l.bf	.LBB26_211
	l.nop	0
.LBB26_444:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtu	r6, r5
	l.bf	.LBB26_211
	l.nop	0
	l.j	.LBB26_210
	l.nop	0
.LBB26_445:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2545
	l.sfges	r14, r13
	l.addi	r20, r20, 2036          # CFC
	l.bf	.LBB26_213
	l.nop	0
.LBB26_446:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB26_213
	l.nop	0
	l.j	.LBB26_212
	l.nop	0
.LBB26_447:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2550
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2040          # CFC
	l.bf	.LBB26_1
	l.nop	0
.LBB26_448:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB26_1
	l.nop	0
	l.j	.LBB26_214
	l.nop	0
.LBB26_449:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2555
	l.sfltsi	r14, 1
	l.addi	r20, r20, 2044          # CFC
	l.bf	.LBB26_1
	l.nop	0
.LBB26_450:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfltsi	r4, 1
	l.bf	.LBB26_1
	l.nop	0
	l.j	.LBB26_215
	l.nop	0
.LBB26_451:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2560
	l.sfgtsi	r14, 16
	l.addi	r20, r20, 2048          # CFC
	l.bf	.LBB26_217
	l.nop	0
.LBB26_452:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtsi	r4, 16
	l.bf	.LBB26_217
	l.nop	0
	l.j	.LBB26_216
	l.nop	0
.LBB26_453:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2570
	l.sfgtui	r13, 16
	l.addi	r20, r20, 2056          # CFC
	l.bf	.LBB26_219
	l.nop	0
.LBB26_454:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtui	r3, 16
	l.bf	.LBB26_219
	l.nop	0
	l.j	.LBB26_218
	l.nop	0
.LBB26_455:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2580
	l.sfltsi	r15, 16
	l.addi	r20, r20, 2064          # CFC
	l.bf	.LBB26_222
	l.nop	0
.LBB26_456:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfltsi	r5, 16
	l.bf	.LBB26_222
	l.nop	0
	l.j	.LBB26_220
	l.nop	0
.LBB26_457:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2590
	l.sfgtsi	r13, 16
	l.addi	r20, r20, 2072          # CFC
	l.bf	.LBB26_221
	l.nop	0
.LBB26_458:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtsi	r3, 16
	l.bf	.LBB26_221
	l.nop	0
	l.j	.LBB26_224
	l.nop	0
.LBB26_459:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2600
	l.sfgtu	r14, r13
	l.addi	r20, r20, 2080          # CFC
	l.bf	.LBB26_461
	l.nop	0
.LBB26_460:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfgtu	r4, r3
	l.bf	.LBB26_461
	l.nop	0
	l.j	.LBB26_462
	l.nop	0
.LBB26_461:
	l.addi	r18, r18, 542
	l.addi	r20, r20, 1084          # CFC
	l.movhi	r3, hi(vfnprintf.blanks)
	l.addi	r28, r28, 3252
	l.movhi	r13, hi(vfnprintf.blanks)
	l.addi	r18, r18, 2710
	l.movhi	r23, hi(vfnprintf.blanks)
	l.addi	r20, r20, 2168          # CFC
	l.j	.LBB26_227
	l.nop	0
.LBB26_463:                             #   in Loop: Header=BB26_3 Depth=3
	l.addi	r18, r18, 2615
	l.sfges	r14, r13
	l.addi	r20, r20, 2092          # CFC
	l.bf	.LBB26_229
	l.nop	0
.LBB26_464:                             #   in Loop: Header=BB26_3 Depth=3
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB26_236
	l.nop	0
	l.sfges	r4, r3
	l.bf	.LBB26_229
	l.nop	0
	l.j	.LBB26_228
	l.nop	0
.Lfunc_end26:
	.size	vfnprintf, .Lfunc_end26-vfnprintf

	.text
	.hidden	sprintf
	.globl	sprintf
	.p2align	2
	.type	sprintf,@function
sprintf:                                # @sprintf
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 543
	l.sw	-4(r1), r9
	l.addi	r20, r20, 1086          # CFC
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -12
	l.ori	r5, r4, 0
	l.sw	4348(r10), r19
	l.sw	4344(r10), r12
	l.addi	r12, r10, 0
	l.addi	r6, r2, 0
	l.addi	r10, r10, -12
	l.sw	8700(r21), r29
	l.sw	-12(r2), r6
	l.addi	r28, r28, 3258
	l.ori	r15, r14, 0
	l.sw	8696(r21), r22
	l.addi	r4, r0, 1024
	l.addi	r16, r12, 0
	l.addi	r22, r21, 0             # CFC
	l.sw	4340(r12), r16
	l.addi	r14, r0, 1024
	l.addi	r21, r21, -12           # CFC
	l.ori	r25, r24, 0
	l.addi	r26, r22, 0
	l.sw	8692(r22), r26
	l.addi	r18, r18, 2715
	l.addi	r24, r0, 1024
	l.jal	vfnprintf
	l.nop	0                       # in delay slot
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 4344(r10)
	l.lwz	r19, 4348(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8696(r21)
	l.lwz	r29, 8700(r21)
	l.addi	r20, r20, 2172          # CFC
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
	.size	sprintf, .Lfunc_end27-sprintf

	.hidden	printf_to_sim
	.globl	printf_to_sim
	.p2align	2
	.type	printf_to_sim,@function
printf_to_sim:                          # @printf_to_sim
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 544
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -24
	l.ori	r5, r3, 0
	l.sw	4348(r10), r19
	l.addi	r20, r20, 1088          # CFC
	l.sw	4344(r10), r12
	l.addi	r12, r10, 0
	l.addi	r6, r2, 0
	l.addi	r10, r10, -24
	l.sw	8700(r21), r29
	l.sw	-12(r2), r6
	l.ori	r15, r13, 0
	l.sw	8696(r21), r22
	l.movhi	r3, hi(PRINTFBUFFER)
	l.addi	r16, r12, 0
	l.addi	r22, r21, 0             # CFC
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.sw	4340(r12), r16
	l.addi	r21, r21, -24           # CFC
	l.addi	r4, r0, 2048
	l.movhi	r13, hi(PRINTFBUFFER)
	l.addi	r28, r28, 3264
	l.ori	r25, r23, 0
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.addi	r14, r0, 2048
	l.addi	r26, r22, 0
	l.sw	8692(r22), r26
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
	l.bf	.LBB28_7
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2720
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2176          # CFC
	l.bf	.LBB28_8
	l.nop	0
.LBB28_1:                               # %while.cond.preheader
	l.addi	r18, r18, 545
	l.sw	-24(r2), r3
	l.addi	r20, r20, 1090          # CFC
	l.sfltsi	r3, 1
	l.addi	r28, r28, 3270
	l.sw	4328(r12), r13
	l.sw	8680(r22), r23
	l.bf	.LBB28_9
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2725
	l.sfltsi	r13, 1
	l.addi	r20, r20, 2180          # CFC
	l.bf	.LBB28_10
	l.nop	0
.LBB28_2:                               # %while.body.preheader
	l.addi	r18, r18, 546
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.addi	r20, r20, 1092          # CFC
	l.lwz	r4, -24(r2)
	l.movhi	r13, hi(PRINTFBUFFER)
	l.addi	r28, r28, 3276
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.lwz	r14, 4328(r12)
	l.addi	r18, r18, 2730
	l.movhi	r23, hi(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.lwz	r24, 8680(r22)
	l.addi	r20, r20, 2184          # CFC
.LBB28_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 547
	l.sw	-20(r2), r4
	l.sw	-16(r2), r3
	l.lwz	r3, -16(r2)
	l.lbz	r3, 0(r3)
	l.sw	4332(r12), r14
	l.sw	4336(r12), r13
	l.lwz	r13, 4336(r12)
	l.lbz	r13, 4352(r13)
	l.addi	r20, r20, 1094          # CFC
	l.sw	8684(r22), r24
	l.sw	8688(r22), r23
	l.lwz	r23, 8688(r22)
	l.lbz	r23, 8704(r23)
	l.jal	sim_putc
	l.nop	0                       # in delay slot
	l.lwz	r4, -20(r2)
	l.lwz	r3, -16(r2)
	l.addi	r3, r3, 1
	l.addi	r4, r4, -1
	l.addi	r28, r28, 3282
	l.sfnei	r4, 0
	l.lwz	r14, 4332(r12)
	l.lwz	r13, 4336(r12)
	l.addi	r13, r13, 1
	l.addi	r14, r14, -1
	l.lwz	r24, 8684(r22)
	l.lwz	r23, 8688(r22)
	l.addi	r23, r23, 1
	l.addi	r24, r24, -1
	l.bf	.LBB28_11
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2735
	l.sfnei	r14, 0
	l.addi	r20, r20, 2188          # CFC
	l.bf	.LBB28_12
	l.nop	0
.LBB28_4:                               # %while.end
	l.addi	r18, r18, 548
	l.addi	r20, r20, 1096          # CFC
	l.lwz	r11, -24(r2)
	l.addi	r28, r28, 3288
	l.lwz	r8, 4328(r12)
	l.addi	r18, r18, 2740
	l.lwz	r31, 8680(r22)
	l.addi	r20, r20, 2192          # CFC
.LBB28_5:                               # %cleanup
	l.addi	r18, r18, 549
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 1098          # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 3294
	l.lwz	r12, 4344(r10)
	l.lwz	r19, 4348(r10)
	l.addi	r18, r18, 2745
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8696(r21)
	l.lwz	r29, 8700(r21)
	l.addi	r20, r20, 2196          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB28_6
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB28_6:                               # %cleanup
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB28_13
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB28_13
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB28_13
	l.nop	0
	l.nop	205
.LBB28_13:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB28_14
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB28_14
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB28_14
	l.nop	0
	l.nop	205
.LBB28_14:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB28_15
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB28_15
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB28_15
	l.nop	0
	l.nop	205
.LBB28_15:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB28_16
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB28_16
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB28_16
	l.nop	0
	l.nop	205
.LBB28_16:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB28_17
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB28_17
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB28_17
	l.nop	0
	l.nop	205
.LBB28_17:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB28_18
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB28_18
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB28_18
	l.nop	0
	l.nop	205
.LBB28_18:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB28_19
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB28_19
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB28_19
	l.nop	0
	l.nop	205
.LBB28_19:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB28_20
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB28_20
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB28_20
	l.nop	0
	l.nop	205
.LBB28_20:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB28_21
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB28_21
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB28_21
	l.nop	0
	l.nop	205
.LBB28_21:
.LBB28_22:
	l.jr	r30
	l.nop	0
.LBB28_7:
	l.addi	r18, r18, 2720
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2176          # CFC
	l.bf	.LBB28_5
	l.nop	0
.LBB28_8:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB28_6
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB28_5
	l.nop	0
	l.j	.LBB28_1
	l.nop	0
.LBB28_9:
	l.addi	r18, r18, 2725
	l.sfltsi	r13, 1
	l.addi	r20, r20, 2180          # CFC
	l.bf	.LBB28_4
	l.nop	0
.LBB28_10:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB28_6
	l.nop	0
	l.sfltsi	r3, 1
	l.bf	.LBB28_4
	l.nop	0
	l.j	.LBB28_2
	l.nop	0
.LBB28_11:
	l.addi	r18, r18, 2735
	l.sfnei	r14, 0
	l.addi	r20, r20, 2188          # CFC
	l.bf	.LBB28_3
	l.nop	0
.LBB28_12:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB28_6
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB28_3
	l.nop	0
	l.j	.LBB28_4
	l.nop	0
.Lfunc_end28:
	.size	printf_to_sim, .Lfunc_end28-printf_to_sim

	.hidden	puts_to_sim
	.globl	puts_to_sim
	.p2align	2
	.type	puts_to_sim,@function
puts_to_sim:                            # @puts_to_sim
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 550
	l.sw	-4(r1), r9
	l.addi	r20, r20, 1100          # CFC
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -12
	l.sw	0(r1), r3
	l.sw	4348(r10), r19
	l.sw	4344(r10), r12
	l.addi	r12, r10, 0
	l.movhi	r3, hi(.L.str.5)
	l.addi	r10, r10, -12
	l.sw	8700(r21), r29
	l.addi	r28, r28, 3300
	l.ori	r3, r3, lo(.L.str.5)
	l.sw	4352(r10), r13
	l.sw	8696(r21), r22
	l.movhi	r13, hi(.L.str.5)
	l.ori	r13, r13, lo(.L.str.5)
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -12           # CFC
	l.sw	8704(r21), r23
	l.movhi	r23, hi(.L.str.5)
	l.ori	r23, r23, lo(.L.str.5)
	l.addi	r18, r18, 2750
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 4344(r10)
	l.lwz	r19, 4348(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8696(r21)
	l.lwz	r29, 8700(r21)
	l.addi	r20, r20, 2200          # CFC
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
	.size	puts_to_sim, .Lfunc_end29-puts_to_sim

	.hidden	printf_to_uart
	.globl	printf_to_uart
	.p2align	2
	.type	printf_to_uart,@function
printf_to_uart:                         # @printf_to_uart
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 551
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -24
	l.ori	r5, r3, 0
	l.sw	4348(r10), r19
	l.addi	r20, r20, 1102          # CFC
	l.sw	4344(r10), r12
	l.addi	r12, r10, 0
	l.addi	r6, r2, 0
	l.addi	r10, r10, -24
	l.sw	8700(r21), r29
	l.sw	-12(r2), r6
	l.ori	r15, r13, 0
	l.sw	8696(r21), r22
	l.movhi	r3, hi(PRINTFBUFFER)
	l.addi	r16, r12, 0
	l.addi	r22, r21, 0             # CFC
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.sw	4340(r12), r16
	l.addi	r21, r21, -24           # CFC
	l.addi	r4, r0, 2048
	l.movhi	r13, hi(PRINTFBUFFER)
	l.addi	r28, r28, 3306
	l.ori	r25, r23, 0
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.addi	r14, r0, 2048
	l.addi	r26, r22, 0
	l.sw	8692(r22), r26
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
	l.bf	.LBB30_7
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2755
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2204          # CFC
	l.bf	.LBB30_8
	l.nop	0
.LBB30_1:                               # %while.cond.preheader
	l.addi	r18, r18, 552
	l.sw	-24(r2), r3
	l.addi	r20, r20, 1104          # CFC
	l.sfltsi	r3, 1
	l.addi	r28, r28, 3312
	l.sw	4328(r12), r13
	l.sw	8680(r22), r23
	l.bf	.LBB30_9
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2760
	l.sfltsi	r13, 1
	l.addi	r20, r20, 2208          # CFC
	l.bf	.LBB30_10
	l.nop	0
.LBB30_2:                               # %while.body.preheader
	l.addi	r18, r18, 553
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.addi	r20, r20, 1106          # CFC
	l.lwz	r4, -24(r2)
	l.movhi	r13, hi(PRINTFBUFFER)
	l.addi	r28, r28, 3318
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.lwz	r14, 4328(r12)
	l.addi	r18, r18, 2765
	l.movhi	r23, hi(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.lwz	r24, 8680(r22)
	l.addi	r20, r20, 2212          # CFC
.LBB30_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 554
	l.sw	-20(r2), r4
	l.sw	-16(r2), r3
	l.lbs	r4, 0(r3)
	l.movhi	r3, 0
	l.sw	4332(r12), r14
	l.sw	4336(r12), r13
	l.lbs	r14, 4352(r13)
	l.movhi	r13, 0
	l.addi	r20, r20, 1108          # CFC
	l.sw	8684(r22), r24
	l.sw	8688(r22), r23
	l.lbs	r24, 8704(r23)
	l.movhi	r23, 0
	l.jal	uart_putc
	l.nop	0                       # in delay slot
	l.lwz	r4, -20(r2)
	l.lwz	r3, -16(r2)
	l.addi	r3, r3, 1
	l.addi	r4, r4, -1
	l.addi	r28, r28, 3324
	l.sfnei	r4, 0
	l.lwz	r14, 4332(r12)
	l.lwz	r13, 4336(r12)
	l.addi	r13, r13, 1
	l.addi	r14, r14, -1
	l.lwz	r24, 8684(r22)
	l.lwz	r23, 8688(r22)
	l.addi	r23, r23, 1
	l.addi	r24, r24, -1
	l.bf	.LBB30_11
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2770
	l.sfnei	r14, 0
	l.addi	r20, r20, 2216          # CFC
	l.bf	.LBB30_12
	l.nop	0
.LBB30_4:                               # %while.end
	l.addi	r18, r18, 555
	l.addi	r20, r20, 1110          # CFC
	l.lwz	r11, -24(r2)
	l.addi	r28, r28, 3330
	l.lwz	r8, 4328(r12)
	l.addi	r18, r18, 2775
	l.lwz	r31, 8680(r22)
	l.addi	r20, r20, 2220          # CFC
.LBB30_5:                               # %cleanup
	l.addi	r18, r18, 556
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 1112          # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 3336
	l.lwz	r12, 4344(r10)
	l.lwz	r19, 4348(r10)
	l.addi	r18, r18, 2780
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8696(r21)
	l.lwz	r29, 8700(r21)
	l.addi	r20, r20, 2224          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB30_6
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB30_6:                               # %cleanup
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB30_13
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB30_13
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB30_13
	l.nop	0
	l.nop	205
.LBB30_13:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB30_14
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB30_14
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB30_14
	l.nop	0
	l.nop	205
.LBB30_14:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB30_15
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB30_15
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB30_15
	l.nop	0
	l.nop	205
.LBB30_15:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB30_16
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB30_16
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB30_16
	l.nop	0
	l.nop	205
.LBB30_16:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB30_17
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB30_17
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB30_17
	l.nop	0
	l.nop	205
.LBB30_17:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB30_18
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB30_18
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB30_18
	l.nop	0
	l.nop	205
.LBB30_18:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB30_19
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB30_19
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB30_19
	l.nop	0
	l.nop	205
.LBB30_19:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB30_20
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB30_20
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB30_20
	l.nop	0
	l.nop	205
.LBB30_20:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB30_21
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB30_21
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB30_21
	l.nop	0
	l.nop	205
.LBB30_21:
.LBB30_22:
	l.jr	r30
	l.nop	0
.LBB30_7:
	l.addi	r18, r18, 2755
	l.sfeqi	r13, 0
	l.addi	r20, r20, 2204          # CFC
	l.bf	.LBB30_5
	l.nop	0
.LBB30_8:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB30_6
	l.nop	0
	l.sfeqi	r3, 0
	l.bf	.LBB30_5
	l.nop	0
	l.j	.LBB30_1
	l.nop	0
.LBB30_9:
	l.addi	r18, r18, 2760
	l.sfltsi	r13, 1
	l.addi	r20, r20, 2208          # CFC
	l.bf	.LBB30_4
	l.nop	0
.LBB30_10:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB30_6
	l.nop	0
	l.sfltsi	r3, 1
	l.bf	.LBB30_4
	l.nop	0
	l.j	.LBB30_2
	l.nop	0
.LBB30_11:
	l.addi	r18, r18, 2770
	l.sfnei	r14, 0
	l.addi	r20, r20, 2216          # CFC
	l.bf	.LBB30_3
	l.nop	0
.LBB30_12:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB30_6
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB30_3
	l.nop	0
	l.j	.LBB30_4
	l.nop	0
.Lfunc_end30:
	.size	printf_to_uart, .Lfunc_end30-printf_to_uart

	.hidden	putchar_to_uart
	.globl	putchar_to_uart
	.p2align	2
	.type	putchar_to_uart,@function
putchar_to_uart:                        # @putchar_to_uart
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 557
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r20, r20, 1114          # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.sw	-12(r2), r3
	l.sw	4348(r10), r19
	l.sw	4344(r10), r12
	l.addi	r12, r10, 0
	l.sw	0(r1), r3
	l.addi	r10, r10, -16
	l.sw	8700(r21), r29
	l.movhi	r3, hi(.L.str.6)
	l.sw	4340(r12), r13
	l.sw	8696(r21), r22
	l.addi	r28, r28, 3342
	l.ori	r3, r3, lo(.L.str.6)
	l.sw	4352(r10), r13
	l.addi	r22, r21, 0             # CFC
	l.movhi	r13, hi(.L.str.6)
	l.ori	r13, r13, lo(.L.str.6)
	l.addi	r21, r21, -16           # CFC
	l.sw	8692(r22), r23
	l.sw	8704(r21), r23
	l.movhi	r23, hi(.L.str.6)
	l.ori	r23, r23, lo(.L.str.6)
	l.jal	printf_to_uart
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2785
	l.lwz	r11, -12(r2)
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.lwz	r8, 4340(r12)
	l.addi	r10, r12, 0
	l.lwz	r12, 4344(r10)
	l.lwz	r19, 4348(r10)
	l.lwz	r31, 8692(r22)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8696(r21)
	l.lwz	r29, 8700(r21)
	l.addi	r20, r20, 2228          # CFC
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
	.size	putchar_to_uart, .Lfunc_end31-putchar_to_uart

	.hidden	puts_to_uart
	.globl	puts_to_uart
	.p2align	2
	.type	puts_to_uart,@function
puts_to_uart:                           # @puts_to_uart
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 558
	l.sw	-4(r1), r9
	l.addi	r20, r20, 1116          # CFC
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -12
	l.sw	0(r1), r3
	l.sw	4348(r10), r19
	l.sw	4344(r10), r12
	l.addi	r12, r10, 0
	l.movhi	r3, hi(.L.str.5)
	l.addi	r10, r10, -12
	l.sw	8700(r21), r29
	l.addi	r28, r28, 3348
	l.ori	r3, r3, lo(.L.str.5)
	l.sw	4352(r10), r13
	l.sw	8696(r21), r22
	l.movhi	r13, hi(.L.str.5)
	l.ori	r13, r13, lo(.L.str.5)
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -12           # CFC
	l.sw	8704(r21), r23
	l.movhi	r23, hi(.L.str.5)
	l.ori	r23, r23, lo(.L.str.5)
	l.addi	r18, r18, 2790
	l.jal	printf_to_uart
	l.nop	0                       # in delay slot
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 4344(r10)
	l.lwz	r19, 4348(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8696(r21)
	l.lwz	r29, 8700(r21)
	l.addi	r20, r20, 2232          # CFC
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
	.size	puts_to_uart, .Lfunc_end32-puts_to_uart

	.hidden	__muldi3
	.globl	__muldi3
	.p2align	2
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 559
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -28
	l.sw	-12(r2), r5
	l.sw	-24(r2), r3
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -28
	l.andi	r5, r4, 65535
	l.sw	4340(r12), r15
	l.sw	8700(r21), r22
	l.andi	r7, r6, 65535
	l.sw	4328(r12), r13
	l.addi	r22, r21, 0             # CFC
	l.mul	r11, r7, r5
	l.andi	r15, r14, 65535
	l.addi	r21, r21, -28           # CFC
	l.sw	-16(r2), r6
	l.andi	r17, r16, 65535
	l.addi	r20, r20, 1118          # CFC
	l.sw	8692(r22), r25
	l.srli	r3, r6, 16
	l.mul	r8, r17, r15
	l.sw	8680(r22), r23
	l.sw	-28(r2), r3
	l.sw	4336(r12), r16
	l.andi	r25, r24, 65535
	l.mul	r5, r3, r5
	l.srli	r13, r16, 16
	l.andi	r27, r26, 65535
	l.sw	-20(r2), r4
	l.sw	4324(r12), r13
	l.mul	r31, r27, r25
	l.srli	r3, r4, 16
	l.mul	r15, r13, r15
	l.sw	8688(r22), r26
	l.mul	r6, r7, r3
	l.sw	4332(r12), r14
	l.srli	r23, r26, 16
	l.add	r5, r6, r5
	l.srli	r13, r14, 16
	l.sw	8676(r22), r23
	l.sw	-8(r2), r11
	l.mul	r16, r17, r13
	l.mul	r25, r23, r25
	l.addi	r28, r28, 3354
	l.srli	r7, r11, 16
	l.add	r15, r16, r15
	l.sw	8684(r22), r24
	l.add	r7, r5, r7
	l.sw	4344(r12), r8
	l.srli	r23, r24, 16
	l.lwz	r4, -28(r2)
	l.srli	r17, r8, 16
	l.mul	r26, r27, r23
	l.mul	r11, r4, r3
	l.add	r17, r15, r17
	l.add	r25, r26, r25
	l.movhi	r3, 1
	l.lwz	r14, 4324(r12)
	l.sw	8696(r22), r31
	l.add	r5, r11, r3
	l.mul	r8, r14, r13
	l.srli	r27, r31, 16
	l.sfltu	r7, r6
	l.movhi	r13, 1
	l.add	r15, r8, r13
	l.add	r27, r25, r27
	l.lwz	r24, 8676(r22)
	l.mul	r31, r24, r23
	l.movhi	r23, 1
	l.add	r25, r31, r23
	l.bf	.LBB33_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2795
	l.sfltu	r17, r16
	l.addi	r20, r20, 2236          # CFC
	l.bf	.LBB33_5
	l.nop	0
.LBB33_1:                               # %entry
	l.addi	r18, r18, 560
	l.addi	r20, r20, 1120          # CFC
	l.ori	r5, r11, 0
	l.addi	r28, r28, 3360
	l.ori	r15, r8, 0
	l.addi	r18, r18, 2800
	l.ori	r25, r31, 0
	l.addi	r20, r20, 2240          # CFC
.LBB33_2:                               # %entry
	l.addi	r18, r18, 561
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
	l.addi	r20, r20, 1122          # CFC
	l.andi	r4, r4, 65535
	l.lwz	r13, 4336(r12)
	l.lwz	r14, 4328(r12)
	l.mul	r13, r14, r13
	l.lwz	r14, 4340(r12)
	l.lwz	r16, 4332(r12)
	l.mul	r14, r14, r16
	l.add	r13, r14, r13
	l.srli	r14, r17, 16
	l.add	r13, r13, r14
	l.add	r8, r13, r15
	l.slli	r13, r17, 16
	l.addi	r28, r28, 3366
	l.lwz	r14, 4344(r12)
	l.andi	r14, r14, 65535
	l.or	r12, r13, r14
	l.lwz	r23, 8688(r22)
	l.lwz	r24, 8680(r22)
	l.mul	r23, r24, r23
	l.lwz	r24, 8692(r22)
	l.lwz	r26, 8684(r22)
	l.mul	r24, r24, r26
	l.add	r23, r24, r23
	l.srli	r24, r27, 16
	l.add	r23, r23, r24
	l.addi	r18, r18, 2805
	l.add	r31, r23, r25
	l.slli	r23, r27, 16
	l.lwz	r24, 8696(r22)
	l.andi	r24, r24, 65535
	l.or	r12, r23, r24
	l.or	r12, r3, r4
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 2244          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB33_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB33_3:                               # %entry
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB33_6
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB33_6
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB33_6
	l.nop	0
	l.nop	205
.LBB33_6:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB33_7
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB33_7
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB33_7
	l.nop	0
	l.nop	205
.LBB33_7:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB33_8
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB33_8
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB33_8
	l.nop	0
	l.nop	205
.LBB33_8:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB33_9
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB33_9
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB33_9
	l.nop	0
	l.nop	205
.LBB33_9:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB33_10
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB33_10
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB33_10
	l.nop	0
	l.nop	205
.LBB33_10:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB33_11
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB33_11
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB33_11
	l.nop	0
	l.nop	205
.LBB33_11:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB33_12
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB33_12
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB33_12
	l.nop	0
	l.nop	205
.LBB33_12:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB33_13
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB33_13
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB33_13
	l.nop	0
	l.nop	205
.LBB33_13:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB33_14
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB33_14
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB33_14
	l.nop	0
	l.nop	205
.LBB33_14:
.LBB33_15:
	l.jr	r30
	l.nop	0
.LBB33_4:
	l.addi	r18, r18, 2795
	l.sfltu	r17, r16
	l.addi	r20, r20, 2236          # CFC
	l.bf	.LBB33_2
	l.nop	0
.LBB33_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB33_3
	l.nop	0
	l.sfltu	r7, r6
	l.bf	.LBB33_2
	l.nop	0
	l.j	.LBB33_1
	l.nop	0
.Lfunc_end33:
	.size	__muldi3, .Lfunc_end33-__muldi3

	.hidden	__udivdi3
	.globl	__udivdi3
	.p2align	2
	.type	__udivdi3,@function
__udivdi3:                              # @__udivdi3
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 562
	l.addi	r20, r20, 1124          # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -36
	l.sfnei	r5, 0
	l.addi	r28, r28, 3372
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -36
	l.sw	8700(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -36           # CFC
	l.bf	.LBB34_74
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2810
	l.sfnei	r15, 0
	l.addi	r20, r20, 2248          # CFC
	l.bf	.LBB34_75
	l.nop	0
.LBB34_1:                               # %if.then.i
	l.addi	r18, r18, 563
	l.movhi	r5, 256
	l.addi	r11, r0, 16
	l.addi	r20, r20, 1126          # CFC
	l.sfltu	r6, r5
	l.movhi	r15, 256
	l.addi	r28, r28, 3378
	l.addi	r8, r0, 16
	l.movhi	r25, 256
	l.addi	r31, r0, 16
	l.bf	.LBB34_76
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2815
	l.sfltu	r16, r15
	l.addi	r20, r20, 2252          # CFC
	l.bf	.LBB34_77
	l.nop	0
.LBB34_2:                               # %if.then.i
	l.addi	r18, r18, 564
	l.addi	r20, r20, 1128          # CFC
	l.addi	r11, r0, 24
	l.addi	r28, r28, 3384
	l.addi	r8, r0, 24
	l.addi	r18, r18, 2820
	l.addi	r31, r0, 24
	l.addi	r20, r20, 2256          # CFC
.LBB34_3:                               # %if.then.i
	l.addi	r18, r18, 565
	l.movhi	r5, 0
	l.addi	r20, r20, 1130          # CFC
	l.sfltui	r6, 256
	l.addi	r28, r28, 3390
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.bf	.LBB34_78
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2825
	l.sfltui	r16, 256
	l.addi	r20, r20, 2260          # CFC
	l.bf	.LBB34_79
	l.nop	0
.LBB34_4:                               # %if.then.i
	l.addi	r18, r18, 566
	l.addi	r20, r20, 1132          # CFC
	l.addi	r5, r0, 8
	l.addi	r28, r28, 3396
	l.addi	r15, r0, 8
	l.addi	r18, r18, 2830
	l.addi	r25, r0, 8
	l.addi	r20, r20, 2264          # CFC
.LBB34_5:                               # %if.then.i
	l.addi	r18, r18, 567
	l.movhi	r7, 1
	l.sw	-12(r2), r6
	l.addi	r20, r20, 1134          # CFC
	l.sfltu	r6, r7
	l.movhi	r17, 1
	l.addi	r28, r28, 3402
	l.sw	4340(r12), r16
	l.movhi	r27, 1
	l.sw	8692(r22), r26
	l.bf	.LBB34_80
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2835
	l.sfltu	r16, r17
	l.addi	r20, r20, 2268          # CFC
	l.bf	.LBB34_81
	l.nop	0
.LBB34_6:                               # %if.then.i
	l.addi	r18, r18, 568
	l.addi	r20, r20, 1136          # CFC
	l.ori	r5, r11, 0
	l.addi	r28, r28, 3408
	l.ori	r15, r8, 0
	l.addi	r18, r18, 2840
	l.ori	r25, r31, 0
	l.addi	r20, r20, 2272          # CFC
.LBB34_7:                               # %if.then.i
	l.addi	r18, r18, 569
	l.movhi	r6, hi(__clz_tab)
	l.ori	r6, r6, lo(__clz_tab)
	l.lwz	r11, -12(r2)
	l.srl	r7, r11, r5
	l.add	r6, r7, r6
	l.movhi	r16, hi(__clz_tab)
	l.ori	r16, r16, lo(__clz_tab)
	l.lwz	r8, 4340(r12)
	l.lbz	r6, 0(r6)
	l.addi	r20, r20, 1138          # CFC
	l.srl	r17, r8, r15
	l.movhi	r26, hi(__clz_tab)
	l.add	r6, r6, r5
	l.add	r16, r17, r16
	l.ori	r26, r26, lo(__clz_tab)
	l.addi	r5, r0, 32
	l.lbz	r16, 4352(r16)
	l.lwz	r31, 8692(r22)
	l.sub	r7, r5, r6
	l.addi	r28, r28, 3414
	l.add	r16, r16, r15
	l.srl	r27, r31, r25
	l.sfgeu	r3, r11
	l.addi	r15, r0, 32
	l.sub	r17, r15, r16
	l.add	r26, r27, r26
	l.lbz	r26, 8704(r26)
	l.add	r26, r26, r25
	l.addi	r25, r0, 32
	l.sub	r27, r25, r26
	l.bf	.LBB34_82
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2845
	l.sfgeu	r13, r8
	l.addi	r20, r20, 2276          # CFC
	l.bf	.LBB34_83
	l.nop	0
.LBB34_8:                               # %do.body.i
	l.addi	r18, r18, 570
	l.sfeqi	r7, 0
	l.addi	r20, r20, 1140          # CFC
	l.lwz	r5, -12(r2)
	l.addi	r28, r28, 3420
	l.lwz	r15, 4340(r12)
	l.lwz	r25, 8692(r22)
	l.bf	.LBB34_84
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2850
	l.sfeqi	r17, 0
	l.addi	r20, r20, 2280          # CFC
	l.bf	.LBB34_85
	l.nop	0
.LBB34_9:                               # %if.then16.i
	l.addi	r18, r18, 571
	l.srl	r6, r4, r6
	l.sll	r3, r3, r7
	l.or	r3, r3, r6
	l.addi	r20, r20, 1142          # CFC
	l.sll	r4, r4, r7
	l.sll	r5, r5, r7
	l.srl	r16, r14, r16
	l.sll	r13, r13, r17
	l.addi	r28, r28, 3426
	l.or	r13, r13, r16
	l.sll	r14, r14, r17
	l.sll	r15, r15, r17
	l.srl	r26, r24, r26
	l.addi	r18, r18, 2855
	l.sll	r23, r23, r27
	l.or	r23, r23, r26
	l.sll	r24, r24, r27
	l.sll	r25, r25, r27
	l.addi	r20, r20, 2284          # CFC
.LBB34_10:                              # %do.body21.i
	l.addi	r18, r18, 572
	l.srli	r7, r5, 16
	l.ori	r6, r4, 0
	l.divu	r11, r3, r7
	l.sw	-16(r2), r7
	l.mul	r4, r11, r7
	l.srli	r17, r15, 16
	l.ori	r16, r14, 0
	l.divu	r8, r13, r17
	l.sub	r3, r3, r4
	l.sw	4336(r12), r17
	l.srli	r27, r25, 16
	l.slli	r3, r3, 16
	l.mul	r14, r8, r17
	l.ori	r26, r24, 0
	l.addi	r20, r20, 1144          # CFC
	l.sw	-8(r2), r6
	l.sub	r13, r13, r14
	l.divu	r31, r23, r27
	l.srli	r4, r6, 16
	l.slli	r13, r13, 16
	l.sw	8688(r22), r27
	l.or	r7, r3, r4
	l.sw	4344(r12), r16
	l.mul	r24, r31, r27
	l.andi	r4, r5, 65535
	l.srli	r14, r16, 16
	l.sub	r23, r23, r24
	l.mul	r3, r11, r4
	l.or	r17, r13, r14
	l.addi	r28, r28, 3432
	l.slli	r23, r23, 16
	l.sfgeu	r7, r3
	l.andi	r14, r15, 65535
	l.sw	8696(r22), r26
	l.sw	-12(r2), r11
	l.mul	r13, r8, r14
	l.srli	r24, r26, 16
	l.ori	r6, r5, 0
	l.sw	4340(r12), r8
	l.ori	r16, r15, 0
	l.or	r27, r23, r24
	l.andi	r24, r25, 65535
	l.mul	r23, r31, r24
	l.sw	8692(r22), r31
	l.ori	r26, r25, 0
	l.bf	.LBB34_86
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2860
	l.sfgeu	r17, r13
	l.addi	r20, r20, 2288          # CFC
	l.bf	.LBB34_87
	l.nop	0
.LBB34_11:                              # %if.then28.i
	l.addi	r18, r18, 573
	l.addi	r5, r11, -1
	l.sw	-12(r2), r5
	l.add	r7, r7, r6
	l.addi	r20, r20, 1146          # CFC
	l.sfltu	r7, r6
	l.addi	r15, r8, -1
	l.sw	4340(r12), r15
	l.addi	r28, r28, 3438
	l.add	r17, r17, r16
	l.addi	r25, r31, -1
	l.sw	8692(r22), r25
	l.add	r27, r27, r26
	l.bf	.LBB34_88
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2865
	l.sfltu	r17, r16
	l.addi	r20, r20, 2292          # CFC
	l.bf	.LBB34_89
	l.nop	0
.LBB34_12:                              # %if.then28.i
	l.sfgeu	r7, r3
	l.bf	.LBB34_90
	l.nop	0                       # in delay slot
	l.sfgeu	r17, r13
	l.bf	.LBB34_91
	l.nop	0
.LBB34_13:                              # %if.then35.i
	l.addi	r18, r18, 574
	l.add	r7, r7, r6
	l.addi	r5, r11, -2
	l.addi	r20, r20, 1148          # CFC
	l.sw	-12(r2), r5
	l.add	r17, r17, r16
	l.addi	r28, r28, 3444
	l.addi	r15, r8, -2
	l.sw	4340(r12), r15
	l.addi	r18, r18, 2870
	l.add	r27, r27, r26
	l.addi	r25, r31, -2
	l.sw	8692(r22), r25
	l.addi	r20, r20, 2296          # CFC
.LBB34_14:                              # %if.end40.i
	l.addi	r18, r18, 575
	l.sub	r3, r7, r3
	l.lwz	r5, -16(r2)
	l.divu	r7, r3, r5
	l.mul	r5, r7, r5
	l.sub	r3, r3, r5
	l.sub	r13, r17, r13
	l.lwz	r15, 4336(r12)
	l.divu	r17, r13, r15
	l.slli	r3, r3, 16
	l.mul	r15, r17, r15
	l.addi	r20, r20, 1150          # CFC
	l.sub	r23, r27, r23
	l.lwz	r5, -8(r2)
	l.sub	r13, r13, r15
	l.lwz	r25, 8688(r22)
	l.andi	r5, r5, 65535
	l.slli	r13, r13, 16
	l.divu	r27, r23, r25
	l.or	r3, r3, r5
	l.lwz	r15, 4344(r12)
	l.mul	r25, r27, r25
	l.addi	r28, r28, 3450
	l.mul	r11, r7, r4
	l.andi	r15, r15, 65535
	l.sub	r23, r23, r25
	l.sfgeu	r3, r11
	l.or	r13, r13, r15
	l.mul	r8, r17, r14
	l.slli	r23, r23, 16
	l.lwz	r25, 8696(r22)
	l.andi	r25, r25, 65535
	l.or	r23, r23, r25
	l.mul	r31, r27, r24
	l.bf	.LBB34_92
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2875
	l.sfgeu	r13, r8
	l.addi	r20, r20, 2300          # CFC
	l.bf	.LBB34_93
	l.nop	0
.LBB34_15:                              # %if.then50.i
	l.addi	r18, r18, 576
	l.add	r5, r3, r6
	l.addi	r3, r0, -1
	l.addi	r4, r0, -2
	l.addi	r20, r20, 1152          # CFC
	l.sfltu	r5, r11
	l.add	r15, r13, r16
	l.addi	r13, r0, -1
	l.addi	r28, r28, 3456
	l.addi	r14, r0, -2
	l.add	r25, r23, r26
	l.addi	r23, r0, -1
	l.addi	r24, r0, -2
	l.bf	.LBB34_94
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2880
	l.sfltu	r15, r8
	l.addi	r20, r20, 2304          # CFC
	l.bf	.LBB34_95
	l.nop	0
.LBB34_16:                              # %if.then50.i
	l.addi	r18, r18, 577
	l.addi	r20, r20, 1154          # CFC
	l.ori	r4, r3, 0
	l.addi	r28, r28, 3462
	l.ori	r14, r13, 0
	l.addi	r18, r18, 2885
	l.ori	r24, r23, 0
	l.addi	r20, r20, 2308          # CFC
.LBB34_17:                              # %if.then50.i
	l.sfgeu	r5, r6
	l.bf	.LBB34_96
	l.nop	0                       # in delay slot
	l.sfgeu	r15, r16
	l.bf	.LBB34_97
	l.nop	0
.LBB34_18:                              # %if.then50.i
	l.addi	r18, r18, 578
	l.addi	r20, r20, 1156          # CFC
	l.ori	r4, r3, 0
	l.addi	r28, r28, 3468
	l.ori	r14, r13, 0
	l.addi	r18, r18, 2890
	l.ori	r24, r23, 0
	l.addi	r20, r20, 2312          # CFC
.LBB34_19:                              # %if.then50.i
	l.addi	r18, r18, 579
	l.addi	r20, r20, 1158          # CFC
	l.add	r7, r7, r4
	l.addi	r28, r28, 3474
	l.add	r17, r17, r14
	l.addi	r18, r18, 2895
	l.add	r27, r27, r24
	l.addi	r20, r20, 2316          # CFC
.LBB34_20:                              # %if.end63.i
	l.addi	r18, r18, 580
	l.lwz	r3, -12(r2)
	l.slli	r3, r3, 16
	l.or	r7, r7, r3
	l.addi	r20, r20, 1160          # CFC
	l.movhi	r11, 0
	l.lwz	r13, 4340(r12)
	l.slli	r13, r13, 16
	l.addi	r28, r28, 3480
	l.or	r17, r17, r13
	l.movhi	r8, 0
	l.lwz	r23, 8692(r22)
	l.addi	r18, r18, 2900
	l.slli	r23, r23, 16
	l.or	r27, r27, r23
	l.movhi	r31, 0
	l.addi	r20, r20, 2320          # CFC
	l.j	.LBB34_72
	l.nop	0                       # in delay slot
.LBB34_43:                              # %if.else240.i
	l.addi	r18, r18, 581
	l.sw	-8(r2), r4
	l.movhi	r11, 0
	l.sfltu	r3, r5
	l.addi	r20, r20, 1162          # CFC
	l.movhi	r7, 0
	l.sw	4344(r12), r14
	l.movhi	r8, 0
	l.addi	r28, r28, 3486
	l.movhi	r17, 0
	l.sw	8696(r22), r24
	l.movhi	r31, 0
	l.movhi	r27, 0
	l.bf	.LBB34_98
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2905
	l.sfltu	r13, r15
	l.addi	r20, r20, 2324          # CFC
	l.bf	.LBB34_99
	l.nop	0
.LBB34_44:                              # %do.body254.i
	l.addi	r18, r18, 582
	l.movhi	r7, 256
	l.addi	r4, r0, 16
	l.addi	r20, r20, 1164          # CFC
	l.sfltu	r5, r7
	l.movhi	r17, 256
	l.addi	r28, r28, 3492
	l.addi	r14, r0, 16
	l.movhi	r27, 256
	l.addi	r24, r0, 16
	l.bf	.LBB34_100
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2910
	l.sfltu	r15, r17
	l.addi	r20, r20, 2328          # CFC
	l.bf	.LBB34_101
	l.nop	0
.LBB34_45:                              # %do.body254.i
	l.addi	r18, r18, 583
	l.addi	r20, r20, 1166          # CFC
	l.addi	r4, r0, 24
	l.addi	r28, r28, 3498
	l.addi	r14, r0, 24
	l.addi	r18, r18, 2915
	l.addi	r24, r0, 24
	l.addi	r20, r20, 2332          # CFC
.LBB34_46:                              # %do.body254.i
	l.addi	r18, r18, 584
	l.movhi	r7, 0
	l.addi	r20, r20, 1168          # CFC
	l.sfltui	r5, 256
	l.addi	r28, r28, 3504
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.bf	.LBB34_102
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2920
	l.sfltui	r15, 256
	l.addi	r20, r20, 2336          # CFC
	l.bf	.LBB34_103
	l.nop	0
.LBB34_47:                              # %do.body254.i
	l.addi	r18, r18, 585
	l.addi	r20, r20, 1170          # CFC
	l.addi	r7, r0, 8
	l.addi	r28, r28, 3510
	l.addi	r17, r0, 8
	l.addi	r18, r18, 2925
	l.addi	r27, r0, 8
	l.addi	r20, r20, 2340          # CFC
.LBB34_48:                              # %do.body254.i
	l.addi	r18, r18, 586
	l.movhi	r11, 1
	l.addi	r20, r20, 1172          # CFC
	l.sfltu	r5, r11
	l.addi	r28, r28, 3516
	l.movhi	r8, 1
	l.movhi	r31, 1
	l.bf	.LBB34_104
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2930
	l.sfltu	r15, r8
	l.addi	r20, r20, 2344          # CFC
	l.bf	.LBB34_105
	l.nop	0
.LBB34_49:                              # %do.body254.i
	l.addi	r18, r18, 587
	l.addi	r20, r20, 1174          # CFC
	l.ori	r7, r4, 0
	l.addi	r28, r28, 3522
	l.ori	r17, r14, 0
	l.addi	r18, r18, 2935
	l.ori	r27, r24, 0
	l.addi	r20, r20, 2348          # CFC
.LBB34_50:                              # %do.body254.i
	l.addi	r18, r18, 588
	l.srl	r4, r5, r7
	l.movhi	r11, hi(__clz_tab)
	l.ori	r11, r11, lo(__clz_tab)
	l.add	r4, r4, r11
	l.lbz	r4, 0(r4)
	l.srl	r14, r15, r17
	l.movhi	r8, hi(__clz_tab)
	l.ori	r8, r8, lo(__clz_tab)
	l.addi	r20, r20, 1176          # CFC
	l.add	r4, r4, r7
	l.add	r14, r14, r8
	l.srl	r24, r25, r27
	l.addi	r7, r0, 32
	l.lbz	r14, 4352(r14)
	l.movhi	r31, hi(__clz_tab)
	l.sub	r7, r7, r4
	l.add	r14, r14, r17
	l.addi	r28, r28, 3528
	l.ori	r31, r31, lo(__clz_tab)
	l.sfnei	r7, 0
	l.addi	r17, r0, 32
	l.sub	r17, r17, r14
	l.add	r24, r24, r31
	l.lbz	r24, 8704(r24)
	l.add	r24, r24, r27
	l.addi	r27, r0, 32
	l.sub	r27, r27, r24
	l.bf	.LBB34_106
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2940
	l.sfnei	r17, 0
	l.addi	r20, r20, 2352          # CFC
	l.bf	.LBB34_107
	l.nop	0
.LBB34_51:                              # %if.then278.i
	l.addi	r18, r18, 589
	l.movhi	r11, 0
	l.addi	r4, r0, 1
	l.addi	r20, r20, 1178          # CFC
	l.sfleu	r3, r5
	l.movhi	r8, 0
	l.addi	r28, r28, 3534
	l.addi	r14, r0, 1
	l.movhi	r31, 0
	l.addi	r24, r0, 1
	l.bf	.LBB34_108
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2945
	l.sfleu	r13, r15
	l.addi	r20, r20, 2356          # CFC
	l.bf	.LBB34_109
	l.nop	0
.LBB34_111:
	l.addi	r18, r18, 590
	l.addi	r20, r20, 1180          # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 3540
	l.ori	r13, r14, 0
	l.addi	r18, r18, 2950
	l.ori	r23, r24, 0
	l.addi	r20, r20, 2360          # CFC
.LBB34_52:                              # %if.then278.i
	l.addi	r18, r18, 591
	l.addi	r20, r20, 1182          # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 3546
	l.movhi	r13, 0
	l.addi	r18, r18, 2955
	l.movhi	r23, 0
	l.addi	r20, r20, 2364          # CFC
.LBB34_53:                              # %if.then278.i
	l.addi	r18, r18, 592
	l.lwz	r5, -8(r2)
	l.addi	r20, r20, 1184          # CFC
	l.sfltu	r5, r6
	l.addi	r28, r28, 3552
	l.lwz	r15, 4344(r12)
	l.lwz	r25, 8696(r22)
	l.bf	.LBB34_112
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2960
	l.sfltu	r15, r16
	l.addi	r20, r20, 2368          # CFC
	l.bf	.LBB34_113
	l.nop	0
.LBB34_54:                              # %if.then278.i
	l.addi	r18, r18, 593
	l.addi	r20, r20, 1186          # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 3558
	l.movhi	r14, 0
	l.addi	r18, r18, 2965
	l.movhi	r24, 0
	l.addi	r20, r20, 2372          # CFC
.LBB34_55:                              # %if.then278.i
	l.addi	r18, r18, 594
	l.and	r3, r4, r3
	l.xori	r3, r3, -1
	l.addi	r20, r20, 1188          # CFC
	l.andi	r7, r3, 1
	l.and	r13, r14, r13
	l.addi	r28, r28, 3564
	l.xori	r13, r13, -1
	l.andi	r17, r13, 1
	l.addi	r18, r18, 2970
	l.and	r23, r24, r23
	l.xori	r23, r23, -1
	l.andi	r27, r23, 1
	l.addi	r20, r20, 2376          # CFC
	l.j	.LBB34_72
	l.nop	0                       # in delay slot
.LBB34_56:                              # %if.else303.i
	l.addi	r18, r18, 595
	l.sll	r5, r5, r7
	l.sw	-12(r2), r6
	l.sw	-16(r2), r7
	l.srl	r7, r6, r4
	l.or	r5, r5, r7
	l.sll	r15, r15, r17
	l.sw	4340(r12), r16
	l.sw	4336(r12), r17
	l.sw	-36(r2), r5
	l.srl	r17, r16, r14
	l.sll	r25, r25, r27
	l.srli	r6, r5, 16
	l.or	r15, r15, r17
	l.sw	8692(r22), r26
	l.srl	r5, r3, r4
	l.sw	4316(r12), r15
	l.sw	8688(r22), r27
	l.divu	r11, r5, r6
	l.srli	r16, r15, 16
	l.srl	r27, r26, r24
	l.sw	-24(r2), r6
	l.srl	r15, r13, r14
	l.or	r25, r25, r27
	l.mul	r7, r11, r6
	l.divu	r8, r15, r16
	l.sw	8668(r22), r25
	l.addi	r20, r20, 1190          # CFC
	l.sub	r5, r5, r7
	l.sw	4328(r12), r16
	l.srli	r26, r25, 16
	l.lwz	r7, -16(r2)
	l.mul	r17, r8, r16
	l.srl	r25, r23, r24
	l.lwz	r6, -8(r2)
	l.sub	r15, r15, r17
	l.divu	r31, r25, r26
	l.srl	r4, r6, r4
	l.lwz	r17, 4336(r12)
	l.sw	8680(r22), r26
	l.lwz	r6, -36(r2)
	l.lwz	r16, 4344(r12)
	l.mul	r27, r31, r26
	l.sll	r3, r3, r7
	l.srl	r14, r16, r14
	l.sub	r25, r25, r27
	l.or	r4, r3, r4
	l.lwz	r16, 4316(r12)
	l.lwz	r27, 8688(r22)
	l.slli	r3, r5, 16
	l.sll	r13, r13, r17
	l.lwz	r26, 8696(r22)
	l.sw	-28(r2), r4
	l.or	r14, r13, r14
	l.addi	r28, r28, 3570
	l.srl	r24, r26, r24
	l.srli	r4, r4, 16
	l.slli	r13, r15, 16
	l.lwz	r26, 8668(r22)
	l.or	r3, r3, r4
	l.sw	4324(r12), r14
	l.sll	r23, r23, r27
	l.andi	r4, r6, 65535
	l.srli	r14, r14, 16
	l.or	r24, r23, r24
	l.sw	-32(r2), r4
	l.or	r13, r13, r14
	l.slli	r23, r25, 16
	l.mul	r4, r11, r4
	l.andi	r14, r16, 65535
	l.sw	8676(r22), r24
	l.sfgeu	r3, r4
	l.sw	4320(r12), r14
	l.srli	r24, r24, 16
	l.ori	r5, r11, 0
	l.mul	r14, r8, r14
	l.ori	r15, r8, 0
	l.or	r23, r23, r24
	l.andi	r24, r26, 65535
	l.sw	8672(r22), r24
	l.mul	r24, r31, r24
	l.ori	r25, r31, 0
	l.bf	.LBB34_114
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2975
	l.sfgeu	r13, r14
	l.addi	r20, r20, 2380          # CFC
	l.bf	.LBB34_115
	l.nop	0
.LBB34_57:                              # %if.then332.i
	l.addi	r18, r18, 596
	l.addi	r5, r11, -1
	l.add	r3, r3, r6
	l.addi	r20, r20, 1192          # CFC
	l.sfltu	r3, r6
	l.addi	r15, r8, -1
	l.addi	r28, r28, 3576
	l.add	r13, r13, r16
	l.addi	r25, r31, -1
	l.add	r23, r23, r26
	l.bf	.LBB34_116
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2980
	l.sfltu	r13, r16
	l.addi	r20, r20, 2384          # CFC
	l.bf	.LBB34_117
	l.nop	0
.LBB34_58:                              # %if.then332.i
	l.sfgeu	r3, r4
	l.bf	.LBB34_118
	l.nop	0                       # in delay slot
	l.sfgeu	r13, r14
	l.bf	.LBB34_119
	l.nop	0
.LBB34_59:                              # %if.then340.i
	l.addi	r18, r18, 597
	l.add	r3, r3, r6
	l.addi	r20, r20, 1194          # CFC
	l.addi	r5, r11, -2
	l.add	r13, r13, r16
	l.addi	r28, r28, 3582
	l.addi	r15, r8, -2
	l.addi	r18, r18, 2985
	l.add	r23, r23, r26
	l.addi	r25, r31, -2
	l.addi	r20, r20, 2388          # CFC
.LBB34_60:                              # %if.end345.i
	l.addi	r18, r18, 598
	l.sw	-20(r2), r5
	l.lwz	r5, -12(r2)
	l.sll	r11, r5, r7
	l.sub	r3, r3, r4
	l.lwz	r5, -24(r2)
	l.sw	4332(r12), r15
	l.lwz	r15, 4340(r12)
	l.sll	r8, r15, r17
	l.divu	r4, r3, r5
	l.sub	r13, r13, r14
	l.sw	8684(r22), r25
	l.mul	r5, r4, r5
	l.lwz	r15, 4328(r12)
	l.lwz	r25, 8692(r22)
	l.sub	r3, r3, r5
	l.addi	r20, r20, 1196          # CFC
	l.divu	r14, r13, r15
	l.sll	r31, r25, r27
	l.slli	r3, r3, 16
	l.mul	r15, r14, r15
	l.sub	r23, r23, r24
	l.lwz	r5, -28(r2)
	l.sub	r13, r13, r15
	l.lwz	r25, 8680(r22)
	l.andi	r5, r5, 65535
	l.slli	r13, r13, 16
	l.divu	r24, r23, r25
	l.or	r3, r3, r5
	l.lwz	r15, 4324(r12)
	l.mul	r25, r24, r25
	l.lwz	r5, -32(r2)
	l.addi	r28, r28, 3588
	l.andi	r15, r15, 65535
	l.sub	r23, r23, r25
	l.mul	r5, r4, r5
	l.or	r13, r13, r15
	l.slli	r23, r23, 16
	l.sfgeu	r3, r5
	l.lwz	r15, 4320(r12)
	l.lwz	r25, 8676(r22)
	l.ori	r7, r4, 0
	l.mul	r15, r14, r15
	l.ori	r17, r14, 0
	l.andi	r25, r25, 65535
	l.or	r23, r23, r25
	l.lwz	r25, 8672(r22)
	l.mul	r25, r24, r25
	l.ori	r27, r24, 0
	l.bf	.LBB34_120
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2990
	l.sfgeu	r13, r15
	l.addi	r20, r20, 2392          # CFC
	l.bf	.LBB34_121
	l.nop	0
.LBB34_61:                              # %if.then355.i
	l.addi	r18, r18, 599
	l.addi	r7, r4, -1
	l.add	r3, r3, r6
	l.addi	r20, r20, 1198          # CFC
	l.sfltu	r3, r6
	l.addi	r17, r14, -1
	l.addi	r28, r28, 3594
	l.add	r13, r13, r16
	l.addi	r27, r24, -1
	l.add	r23, r23, r26
	l.bf	.LBB34_122
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 2995
	l.sfltu	r13, r16
	l.addi	r20, r20, 2396          # CFC
	l.bf	.LBB34_123
	l.nop	0
.LBB34_62:                              # %if.then355.i
	l.sfgeu	r3, r5
	l.bf	.LBB34_124
	l.nop	0                       # in delay slot
	l.sfgeu	r13, r15
	l.bf	.LBB34_125
	l.nop	0
.LBB34_63:                              # %if.then363.i
	l.addi	r18, r18, 600
	l.add	r3, r3, r6
	l.addi	r20, r20, 1200          # CFC
	l.addi	r7, r4, -2
	l.add	r13, r13, r16
	l.addi	r28, r28, 3600
	l.addi	r17, r14, -2
	l.addi	r18, r18, 3000
	l.add	r23, r23, r26
	l.addi	r27, r24, -2
	l.addi	r20, r20, 2400          # CFC
.LBB34_64:                              # %if.end368.i
	l.addi	r18, r18, 601
	l.sw	-24(r2), r5
	l.sw	-12(r2), r3
	l.andi	r4, r11, 65535
	l.srli	r11, r11, 16
	l.andi	r3, r7, 65535
	l.sw	4328(r12), r15
	l.sw	4340(r12), r13
	l.andi	r14, r8, 65535
	l.mul	r5, r3, r11
	l.srli	r8, r8, 16
	l.sw	8680(r22), r25
	l.mul	r3, r3, r4
	l.andi	r13, r17, 65535
	l.sw	8692(r22), r23
	l.sw	-28(r2), r3
	l.mul	r15, r13, r8
	l.andi	r24, r31, 65535
	l.addi	r20, r20, 1202          # CFC
	l.srli	r3, r3, 16
	l.mul	r13, r13, r14
	l.srli	r31, r31, 16
	l.add	r6, r3, r5
	l.sw	4324(r12), r13
	l.andi	r23, r27, 65535
	l.lwz	r3, -20(r2)
	l.srli	r13, r13, 16
	l.mul	r25, r23, r31
	l.slli	r3, r3, 16
	l.add	r16, r13, r15
	l.mul	r23, r23, r24
	l.or	r7, r7, r3
	l.lwz	r13, 4332(r12)
	l.sw	8676(r22), r23
	l.srli	r3, r7, 16
	l.slli	r13, r13, 16
	l.addi	r28, r28, 3606
	l.srli	r23, r23, 16
	l.mul	r4, r3, r4
	l.or	r17, r17, r13
	l.add	r26, r23, r25
	l.add	r5, r6, r4
	l.srli	r13, r17, 16
	l.lwz	r23, 8684(r22)
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
	l.bf	.LBB34_126
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3005
	l.sfltu	r15, r16
	l.addi	r20, r20, 2404          # CFC
	l.bf	.LBB34_127
	l.nop	0
.LBB34_65:                              # %if.end368.i
	l.addi	r18, r18, 602
	l.addi	r20, r20, 1204          # CFC
	l.movhi	r4, 0
	l.addi	r28, r28, 3612
	l.movhi	r14, 0
	l.addi	r18, r18, 3010
	l.movhi	r24, 0
	l.addi	r20, r20, 2408          # CFC
.LBB34_66:                              # %if.end368.i
	l.addi	r18, r18, 603
	l.mul	r3, r3, r11
	l.movhi	r6, 1
	l.add	r11, r3, r6
	l.addi	r20, r20, 1206          # CFC
	l.sfnei	r4, 0
	l.mul	r13, r13, r8
	l.movhi	r16, 1
	l.addi	r28, r28, 3618
	l.add	r8, r13, r16
	l.mul	r23, r23, r31
	l.movhi	r26, 1
	l.add	r31, r23, r26
	l.bf	.LBB34_128
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3015
	l.sfnei	r14, 0
	l.addi	r20, r20, 2412          # CFC
	l.bf	.LBB34_129
	l.nop	0
.LBB34_67:                              # %if.end368.i
	l.addi	r18, r18, 604
	l.addi	r20, r20, 1208          # CFC
	l.ori	r11, r3, 0
	l.addi	r28, r28, 3624
	l.ori	r8, r13, 0
	l.addi	r18, r18, 3020
	l.ori	r31, r23, 0
	l.addi	r20, r20, 2416          # CFC
.LBB34_68:                              # %if.end368.i
	l.addi	r18, r18, 605
	l.lwz	r3, -12(r2)
	l.lwz	r4, -24(r2)
	l.sub	r3, r3, r4
	l.srli	r4, r5, 16
	l.add	r6, r11, r4
	l.addi	r20, r20, 1210          # CFC
	l.sfgtu	r6, r3
	l.lwz	r13, 4340(r12)
	l.lwz	r14, 4328(r12)
	l.sub	r13, r13, r14
	l.srli	r14, r15, 16
	l.addi	r28, r28, 3630
	l.add	r16, r8, r14
	l.lwz	r23, 8692(r22)
	l.lwz	r24, 8680(r22)
	l.sub	r23, r23, r24
	l.srli	r24, r25, 16
	l.add	r26, r31, r24
	l.bf	.LBB34_130
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3025
	l.sfgtu	r16, r13
	l.addi	r20, r20, 2420          # CFC
	l.bf	.LBB34_131
	l.nop	0
.LBB34_69:                              # %lor.lhs.false401.i
	l.addi	r18, r18, 606
	l.lwz	r4, -8(r2)
	l.lwz	r11, -16(r2)
	l.sll	r4, r4, r11
	l.lwz	r11, -28(r2)
	l.andi	r11, r11, 65535
	l.lwz	r14, 4344(r12)
	l.lwz	r8, 4336(r12)
	l.sll	r14, r14, r8
	l.addi	r20, r20, 1212          # CFC
	l.slli	r5, r5, 16
	l.lwz	r8, 4324(r12)
	l.lwz	r24, 8696(r22)
	l.or	r5, r5, r11
	l.andi	r8, r8, 65535
	l.lwz	r31, 8688(r22)
	l.movhi	r11, 0
	l.slli	r15, r15, 16
	l.addi	r28, r28, 3636
	l.sll	r24, r24, r31
	l.sfleu	r5, r4
	l.or	r15, r15, r8
	l.movhi	r8, 0
	l.lwz	r31, 8676(r22)
	l.andi	r31, r31, 65535
	l.slli	r25, r25, 16
	l.or	r25, r25, r31
	l.movhi	r31, 0
	l.bf	.LBB34_132
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3030
	l.sfleu	r15, r14
	l.addi	r20, r20, 2424          # CFC
	l.bf	.LBB34_133
	l.nop	0
.LBB34_70:                              # %lor.lhs.false401.i
	l.sfne	r6, r3
	l.bf	.LBB34_134
	l.nop	0                       # in delay slot
	l.sfne	r16, r13
	l.bf	.LBB34_135
	l.nop	0
.LBB34_71:                              # %if.then406.i
	l.addi	r18, r18, 607
	l.movhi	r11, 0
	l.addi	r20, r20, 1214          # CFC
	l.addi	r7, r7, -1
	l.movhi	r8, 0
	l.addi	r28, r28, 3642
	l.addi	r17, r17, -1
	l.addi	r18, r18, 3035
	l.movhi	r31, 0
	l.addi	r27, r27, -1
	l.addi	r20, r20, 2428          # CFC
	l.j	.LBB34_72
	l.nop	0                       # in delay slot
.LBB34_21:                              # %if.else.i
	l.sfnei	r7, 0
	l.bf	.LBB34_136
	l.nop	0                       # in delay slot
	l.sfnei	r17, 0
	l.bf	.LBB34_137
	l.nop	0
.LBB34_22:                              # %if.then98.i
	l.addi	r18, r18, 608
	l.lwz	r6, -12(r2)
	l.sub	r3, r3, r6
	l.ori	r5, r4, 0
	l.addi	r20, r20, 1216          # CFC
	l.ori	r4, r3, 0
	l.addi	r3, r0, 1
	l.lwz	r16, 4340(r12)
	l.sub	r13, r13, r16
	l.addi	r28, r28, 3648
	l.ori	r15, r14, 0
	l.ori	r14, r13, 0
	l.addi	r13, r0, 1
	l.lwz	r26, 8692(r22)
	l.addi	r18, r18, 3040
	l.sub	r23, r23, r26
	l.ori	r25, r24, 0
	l.ori	r24, r23, 0
	l.addi	r23, r0, 1
	l.addi	r20, r20, 2432          # CFC
	l.j	.LBB34_32
	l.nop	0                       # in delay slot
.LBB34_23:                              # %if.else100.i
	l.addi	r18, r18, 609
	l.sw	-8(r2), r4
	l.srl	r4, r4, r6
	l.sll	r11, r3, r7
	l.or	r11, r11, r4
	l.srl	r3, r3, r6
	l.sw	4344(r12), r14
	l.srl	r14, r14, r16
	l.sll	r8, r13, r17
	l.lwz	r6, -12(r2)
	l.or	r8, r8, r14
	l.sw	8696(r22), r24
	l.sll	r6, r6, r7
	l.srl	r13, r13, r16
	l.srl	r24, r24, r26
	l.srli	r4, r6, 16
	l.lwz	r16, 4340(r12)
	l.sll	r31, r23, r27
	l.divu	r5, r3, r4
	l.sll	r16, r16, r17
	l.addi	r20, r20, 1218          # CFC
	l.or	r31, r31, r24
	l.sw	-20(r2), r4
	l.srli	r14, r16, 16
	l.srl	r23, r23, r26
	l.mul	r4, r5, r4
	l.divu	r15, r13, r14
	l.lwz	r26, 8692(r22)
	l.sub	r3, r3, r4
	l.sw	4332(r12), r14
	l.sll	r26, r26, r27
	l.slli	r3, r3, 16
	l.mul	r14, r15, r14
	l.srli	r24, r26, 16
	l.sw	-16(r2), r11
	l.sub	r13, r13, r14
	l.divu	r25, r23, r24
	l.srli	r4, r11, 16
	l.slli	r13, r13, 16
	l.sw	8684(r22), r24
	l.addi	r28, r28, 3654
	l.or	r3, r3, r4
	l.sw	4336(r12), r8
	l.mul	r24, r25, r24
	l.andi	r11, r6, 65535
	l.srli	r14, r8, 16
	l.sub	r23, r23, r24
	l.mul	r4, r5, r11
	l.or	r13, r13, r14
	l.slli	r23, r23, 16
	l.sfgeu	r3, r4
	l.andi	r8, r16, 65535
	l.sw	8688(r22), r31
	l.sw	-12(r2), r5
	l.mul	r14, r15, r8
	l.sw	4340(r12), r15
	l.srli	r24, r31, 16
	l.or	r23, r23, r24
	l.andi	r31, r26, 65535
	l.mul	r24, r25, r31
	l.sw	8692(r22), r25
	l.bf	.LBB34_138
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3045
	l.sfgeu	r13, r14
	l.addi	r20, r20, 2436          # CFC
	l.bf	.LBB34_139
	l.nop	0
.LBB34_24:                              # %if.then126.i
	l.addi	r18, r18, 610
	l.sw	-24(r2), r4
	l.addi	r4, r5, -1
	l.sw	-12(r2), r4
	l.lwz	r4, -24(r2)
	l.add	r3, r3, r6
	l.addi	r20, r20, 1220          # CFC
	l.sfltu	r3, r6
	l.sw	4328(r12), r14
	l.addi	r14, r15, -1
	l.sw	4340(r12), r14
	l.lwz	r14, 4328(r12)
	l.addi	r28, r28, 3660
	l.add	r13, r13, r16
	l.sw	8680(r22), r24
	l.addi	r24, r25, -1
	l.sw	8692(r22), r24
	l.lwz	r24, 8680(r22)
	l.add	r23, r23, r26
	l.bf	.LBB34_140
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3050
	l.sfltu	r13, r16
	l.addi	r20, r20, 2440          # CFC
	l.bf	.LBB34_141
	l.nop	0
.LBB34_25:                              # %if.then126.i
	l.sfgeu	r3, r4
	l.bf	.LBB34_142
	l.nop	0                       # in delay slot
	l.sfgeu	r13, r14
	l.bf	.LBB34_143
	l.nop	0
.LBB34_26:                              # %if.then134.i
	l.addi	r18, r18, 611
	l.add	r3, r3, r6
	l.addi	r5, r5, -2
	l.addi	r20, r20, 1222          # CFC
	l.sw	-12(r2), r5
	l.add	r13, r13, r16
	l.addi	r28, r28, 3666
	l.addi	r15, r15, -2
	l.sw	4340(r12), r15
	l.addi	r18, r18, 3055
	l.add	r23, r23, r26
	l.addi	r25, r25, -2
	l.sw	8692(r22), r25
	l.addi	r20, r20, 2444          # CFC
.LBB34_27:                              # %if.end139.i
	l.addi	r18, r18, 612
	l.sub	r3, r3, r4
	l.lwz	r4, -20(r2)
	l.divu	r5, r3, r4
	l.mul	r4, r5, r4
	l.sub	r3, r3, r4
	l.sub	r13, r13, r14
	l.lwz	r14, 4332(r12)
	l.divu	r15, r13, r14
	l.slli	r3, r3, 16
	l.mul	r14, r15, r14
	l.sub	r23, r23, r24
	l.addi	r20, r20, 1224          # CFC
	l.lwz	r4, -16(r2)
	l.sub	r13, r13, r14
	l.lwz	r24, 8684(r22)
	l.andi	r4, r4, 65535
	l.slli	r13, r13, 16
	l.divu	r25, r23, r24
	l.or	r3, r3, r4
	l.lwz	r14, 4336(r12)
	l.mul	r24, r25, r24
	l.mul	r4, r5, r11
	l.andi	r14, r14, 65535
	l.addi	r28, r28, 3672
	l.sub	r23, r23, r24
	l.sfgeu	r3, r4
	l.or	r13, r13, r14
	l.slli	r23, r23, 16
	l.ori	r11, r5, 0
	l.mul	r14, r15, r8
	l.ori	r8, r15, 0
	l.lwz	r24, 8688(r22)
	l.andi	r24, r24, 65535
	l.or	r23, r23, r24
	l.mul	r24, r25, r31
	l.ori	r31, r25, 0
	l.bf	.LBB34_144
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3060
	l.sfgeu	r13, r14
	l.addi	r20, r20, 2448          # CFC
	l.bf	.LBB34_145
	l.nop	0
.LBB34_28:                              # %if.then149.i
	l.addi	r18, r18, 613
	l.addi	r11, r5, -1
	l.add	r3, r3, r6
	l.addi	r20, r20, 1226          # CFC
	l.sfltu	r3, r6
	l.addi	r8, r15, -1
	l.addi	r28, r28, 3678
	l.add	r13, r13, r16
	l.addi	r31, r25, -1
	l.add	r23, r23, r26
	l.bf	.LBB34_146
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3065
	l.sfltu	r13, r16
	l.addi	r20, r20, 2452          # CFC
	l.bf	.LBB34_147
	l.nop	0
.LBB34_29:                              # %if.then149.i
	l.sfgeu	r3, r4
	l.bf	.LBB34_148
	l.nop	0                       # in delay slot
	l.sfgeu	r13, r14
	l.bf	.LBB34_149
	l.nop	0
.LBB34_30:                              # %if.then157.i
	l.addi	r18, r18, 614
	l.add	r3, r3, r6
	l.addi	r20, r20, 1228          # CFC
	l.addi	r11, r5, -2
	l.add	r13, r13, r16
	l.addi	r28, r28, 3684
	l.addi	r8, r15, -2
	l.addi	r18, r18, 3070
	l.add	r23, r23, r26
	l.addi	r31, r25, -2
	l.addi	r20, r20, 2456          # CFC
.LBB34_31:                              # %if.end162.i
	l.addi	r18, r18, 615
	l.lwz	r5, -8(r2)
	l.sll	r5, r5, r7
	l.sub	r4, r3, r4
	l.lwz	r3, -12(r2)
	l.addi	r20, r20, 1230          # CFC
	l.slli	r3, r3, 16
	l.lwz	r15, 4344(r12)
	l.sll	r15, r15, r17
	l.sub	r14, r13, r14
	l.or	r3, r11, r3
	l.addi	r28, r28, 3690
	l.lwz	r13, 4340(r12)
	l.lwz	r25, 8696(r22)
	l.slli	r13, r13, 16
	l.or	r13, r8, r13
	l.addi	r18, r18, 3075
	l.sll	r25, r25, r27
	l.sub	r24, r23, r24
	l.lwz	r23, 8692(r22)
	l.slli	r23, r23, 16
	l.or	r23, r31, r23
	l.addi	r20, r20, 2460          # CFC
.LBB34_32:                              # %do.body169.i
	l.addi	r18, r18, 616
	l.sw	-16(r2), r3
	l.srli	r11, r6, 16
	l.divu	r3, r4, r11
	l.mul	r7, r3, r11
	l.sub	r4, r4, r7
	l.sw	4336(r12), r13
	l.srli	r8, r16, 16
	l.divu	r13, r14, r8
	l.slli	r4, r4, 16
	l.mul	r17, r13, r8
	l.sw	8688(r22), r23
	l.sw	-8(r2), r5
	l.sub	r14, r14, r17
	l.addi	r20, r20, 1232          # CFC
	l.srli	r31, r26, 16
	l.srli	r7, r5, 16
	l.slli	r14, r14, 16
	l.divu	r23, r24, r31
	l.or	r7, r4, r7
	l.sw	4344(r12), r15
	l.mul	r27, r23, r31
	l.andi	r4, r6, 65535
	l.srli	r17, r15, 16
	l.sub	r24, r24, r27
	l.sw	-12(r2), r4
	l.or	r17, r14, r17
	l.slli	r24, r24, 16
	l.addi	r28, r28, 3696
	l.mul	r4, r3, r4
	l.andi	r14, r16, 65535
	l.sw	8696(r22), r25
	l.sfgeu	r7, r4
	l.sw	4340(r12), r14
	l.srli	r27, r25, 16
	l.ori	r5, r3, 0
	l.mul	r14, r13, r14
	l.ori	r15, r13, 0
	l.or	r27, r24, r27
	l.andi	r24, r26, 65535
	l.sw	8692(r22), r24
	l.mul	r24, r23, r24
	l.ori	r25, r23, 0
	l.bf	.LBB34_150
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3080
	l.sfgeu	r17, r14
	l.addi	r20, r20, 2464          # CFC
	l.bf	.LBB34_151
	l.nop	0
.LBB34_33:                              # %if.then187.i
	l.addi	r18, r18, 617
	l.addi	r5, r3, -1
	l.add	r7, r7, r6
	l.addi	r20, r20, 1234          # CFC
	l.sfltu	r7, r6
	l.addi	r15, r13, -1
	l.addi	r28, r28, 3702
	l.add	r17, r17, r16
	l.addi	r25, r23, -1
	l.add	r27, r27, r26
	l.bf	.LBB34_152
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3085
	l.sfltu	r17, r16
	l.addi	r20, r20, 2468          # CFC
	l.bf	.LBB34_153
	l.nop	0
.LBB34_34:                              # %if.then187.i
	l.sfgeu	r7, r4
	l.bf	.LBB34_154
	l.nop	0                       # in delay slot
	l.sfgeu	r17, r14
	l.bf	.LBB34_155
	l.nop	0
.LBB34_35:                              # %if.then195.i
	l.addi	r18, r18, 618
	l.add	r7, r7, r6
	l.addi	r20, r20, 1236          # CFC
	l.addi	r5, r3, -2
	l.add	r17, r17, r16
	l.addi	r28, r28, 3708
	l.addi	r15, r13, -2
	l.addi	r18, r18, 3090
	l.add	r27, r27, r26
	l.addi	r25, r23, -2
	l.addi	r20, r20, 2472          # CFC
.LBB34_36:                              # %if.end200.i
	l.addi	r18, r18, 619
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
	l.addi	r20, r20, 1238          # CFC
	l.andi	r4, r4, 65535
	l.slli	r13, r13, 16
	l.divu	r27, r23, r31
	l.or	r4, r3, r4
	l.lwz	r14, 4344(r12)
	l.mul	r24, r27, r31
	l.lwz	r3, -12(r2)
	l.andi	r14, r14, 65535
	l.sub	r23, r23, r24
	l.mul	r3, r7, r3
	l.or	r14, r13, r14
	l.addi	r28, r28, 3714
	l.slli	r23, r23, 16
	l.sfgeu	r4, r3
	l.lwz	r13, 4340(r12)
	l.lwz	r24, 8696(r22)
	l.lwz	r11, -16(r2)
	l.mul	r13, r17, r13
	l.lwz	r8, 4336(r12)
	l.andi	r24, r24, 65535
	l.or	r24, r23, r24
	l.lwz	r23, 8692(r22)
	l.mul	r23, r27, r23
	l.lwz	r31, 8688(r22)
	l.bf	.LBB34_156
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3095
	l.sfgeu	r14, r13
	l.addi	r20, r20, 2476          # CFC
	l.bf	.LBB34_157
	l.nop	0
.LBB34_37:                              # %if.then210.i
	l.addi	r18, r18, 620
	l.sw	-8(r2), r5
	l.add	r5, r4, r6
	l.addi	r4, r0, -1
	l.sw	-12(r2), r4
	l.addi	r4, r0, -2
	l.addi	r20, r20, 1240          # CFC
	l.sfltu	r5, r3
	l.sw	4344(r12), r15
	l.add	r15, r14, r16
	l.addi	r14, r0, -1
	l.sw	4340(r12), r14
	l.addi	r28, r28, 3720
	l.addi	r14, r0, -2
	l.sw	8696(r22), r25
	l.add	r25, r24, r26
	l.addi	r24, r0, -1
	l.sw	8692(r22), r24
	l.addi	r24, r0, -2
	l.bf	.LBB34_158
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3100
	l.sfltu	r15, r13
	l.addi	r20, r20, 2480          # CFC
	l.bf	.LBB34_159
	l.nop	0
.LBB34_38:                              # %if.then210.i
	l.addi	r18, r18, 621
	l.addi	r20, r20, 1242          # CFC
	l.lwz	r4, -12(r2)
	l.addi	r28, r28, 3726
	l.lwz	r14, 4340(r12)
	l.addi	r18, r18, 3105
	l.lwz	r24, 8692(r22)
	l.addi	r20, r20, 2484          # CFC
.LBB34_39:                              # %if.then210.i
	l.sfgeu	r5, r6
	l.bf	.LBB34_160
	l.nop	0                       # in delay slot
	l.sfgeu	r15, r16
	l.bf	.LBB34_161
	l.nop	0
.LBB34_40:                              # %if.then210.i
	l.addi	r18, r18, 622
	l.addi	r20, r20, 1244          # CFC
	l.lwz	r4, -12(r2)
	l.addi	r28, r28, 3732
	l.lwz	r14, 4340(r12)
	l.addi	r18, r18, 3110
	l.lwz	r24, 8692(r22)
	l.addi	r20, r20, 2488          # CFC
.LBB34_41:                              # %if.then210.i
	l.addi	r18, r18, 623
	l.add	r7, r7, r4
	l.addi	r20, r20, 1246          # CFC
	l.lwz	r5, -8(r2)
	l.add	r17, r17, r14
	l.addi	r28, r28, 3738
	l.lwz	r15, 4344(r12)
	l.addi	r18, r18, 3115
	l.add	r27, r27, r24
	l.lwz	r25, 8696(r22)
	l.addi	r20, r20, 2492          # CFC
.LBB34_42:                              # %if.end223.i
	l.addi	r18, r18, 624
	l.slli	r3, r5, 16
	l.addi	r20, r20, 1248          # CFC
	l.or	r7, r7, r3
	l.slli	r13, r15, 16
	l.addi	r28, r28, 3744
	l.or	r17, r17, r13
	l.addi	r18, r18, 3120
	l.slli	r23, r25, 16
	l.or	r27, r27, r23
	l.addi	r20, r20, 2496          # CFC
.LBB34_72:                              # %__udivmoddi4.exit
	l.addi	r18, r18, 625
	l.ori	r12, r17, 0
	l.ori	r12, r27, 0
	l.addi	r20, r20, 1250          # CFC
	l.ori	r12, r7, 0
	l.addi	r1, r2, 0
	l.addi	r28, r28, 3750
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r18, r18, 3125
	l.lwz	r12, 4348(r10)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 2500          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB34_73
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB34_73:                              # %__udivmoddi4.exit
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB34_162
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB34_162
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB34_162
	l.nop	0
	l.nop	205
.LBB34_162:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB34_163
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB34_163
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB34_163
	l.nop	0
	l.nop	205
.LBB34_163:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB34_164
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB34_164
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB34_164
	l.nop	0
	l.nop	205
.LBB34_164:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB34_165
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB34_165
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB34_165
	l.nop	0
	l.nop	205
.LBB34_165:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB34_166
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB34_166
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB34_166
	l.nop	0
	l.nop	205
.LBB34_166:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB34_167
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB34_167
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB34_167
	l.nop	0
	l.nop	205
.LBB34_167:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB34_168
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB34_168
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB34_168
	l.nop	0
	l.nop	205
.LBB34_168:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB34_169
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB34_169
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB34_169
	l.nop	0
	l.nop	205
.LBB34_169:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB34_170
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB34_170
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB34_170
	l.nop	0
	l.nop	205
.LBB34_170:
.LBB34_171:
	l.jr	r30
	l.nop	0
.LBB34_74:
	l.addi	r18, r18, 2810
	l.sfnei	r15, 0
	l.addi	r20, r20, 2248          # CFC
	l.bf	.LBB34_43
	l.nop	0
.LBB34_75:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB34_43
	l.nop	0
	l.j	.LBB34_1
	l.nop	0
.LBB34_76:
	l.addi	r18, r18, 2815
	l.sfltu	r16, r15
	l.addi	r20, r20, 2252          # CFC
	l.bf	.LBB34_3
	l.nop	0
.LBB34_77:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfltu	r6, r5
	l.bf	.LBB34_3
	l.nop	0
	l.j	.LBB34_2
	l.nop	0
.LBB34_78:
	l.addi	r18, r18, 2825
	l.sfltui	r16, 256
	l.addi	r20, r20, 2260          # CFC
	l.bf	.LBB34_5
	l.nop	0
.LBB34_79:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfltui	r6, 256
	l.bf	.LBB34_5
	l.nop	0
	l.j	.LBB34_4
	l.nop	0
.LBB34_80:
	l.addi	r18, r18, 2835
	l.sfltu	r16, r17
	l.addi	r20, r20, 2268          # CFC
	l.bf	.LBB34_7
	l.nop	0
.LBB34_81:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfltu	r6, r7
	l.bf	.LBB34_7
	l.nop	0
	l.j	.LBB34_6
	l.nop	0
.LBB34_82:
	l.addi	r18, r18, 2845
	l.sfgeu	r13, r8
	l.addi	r20, r20, 2276          # CFC
	l.bf	.LBB34_21
	l.nop	0
.LBB34_83:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgeu	r3, r11
	l.bf	.LBB34_21
	l.nop	0
	l.j	.LBB34_8
	l.nop	0
.LBB34_84:
	l.addi	r18, r18, 2850
	l.sfeqi	r17, 0
	l.addi	r20, r20, 2280          # CFC
	l.bf	.LBB34_10
	l.nop	0
.LBB34_85:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfeqi	r7, 0
	l.bf	.LBB34_10
	l.nop	0
	l.j	.LBB34_9
	l.nop	0
.LBB34_86:
	l.addi	r18, r18, 2860
	l.sfgeu	r17, r13
	l.addi	r20, r20, 2288          # CFC
	l.bf	.LBB34_14
	l.nop	0
.LBB34_87:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgeu	r7, r3
	l.bf	.LBB34_14
	l.nop	0
	l.j	.LBB34_11
	l.nop	0
.LBB34_88:
	l.addi	r18, r18, 2865
	l.sfltu	r17, r16
	l.addi	r20, r20, 2292          # CFC
	l.bf	.LBB34_14
	l.nop	0
.LBB34_89:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfltu	r7, r6
	l.bf	.LBB34_14
	l.nop	0
	l.j	.LBB34_12
	l.nop	0
.LBB34_90:
	l.sfgeu	r17, r13
	l.bf	.LBB34_14
	l.nop	0
.LBB34_91:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgeu	r7, r3
	l.bf	.LBB34_14
	l.nop	0
	l.j	.LBB34_13
	l.nop	0
.LBB34_92:
	l.addi	r18, r18, 2875
	l.sfgeu	r13, r8
	l.addi	r20, r20, 2300          # CFC
	l.bf	.LBB34_20
	l.nop	0
.LBB34_93:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgeu	r3, r11
	l.bf	.LBB34_20
	l.nop	0
	l.j	.LBB34_15
	l.nop	0
.LBB34_94:
	l.addi	r18, r18, 2880
	l.sfltu	r15, r8
	l.addi	r20, r20, 2304          # CFC
	l.bf	.LBB34_17
	l.nop	0
.LBB34_95:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfltu	r5, r11
	l.bf	.LBB34_17
	l.nop	0
	l.j	.LBB34_16
	l.nop	0
.LBB34_96:
	l.sfgeu	r15, r16
	l.bf	.LBB34_19
	l.nop	0
.LBB34_97:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgeu	r5, r6
	l.bf	.LBB34_19
	l.nop	0
	l.j	.LBB34_18
	l.nop	0
.LBB34_98:
	l.addi	r18, r18, 2905
	l.sfltu	r13, r15
	l.addi	r20, r20, 2324          # CFC
	l.bf	.LBB34_72
	l.nop	0
.LBB34_99:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfltu	r3, r5
	l.bf	.LBB34_72
	l.nop	0
	l.j	.LBB34_44
	l.nop	0
.LBB34_100:
	l.addi	r18, r18, 2910
	l.sfltu	r15, r17
	l.addi	r20, r20, 2328          # CFC
	l.bf	.LBB34_46
	l.nop	0
.LBB34_101:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfltu	r5, r7
	l.bf	.LBB34_46
	l.nop	0
	l.j	.LBB34_45
	l.nop	0
.LBB34_102:
	l.addi	r18, r18, 2920
	l.sfltui	r15, 256
	l.addi	r20, r20, 2336          # CFC
	l.bf	.LBB34_48
	l.nop	0
.LBB34_103:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfltui	r5, 256
	l.bf	.LBB34_48
	l.nop	0
	l.j	.LBB34_47
	l.nop	0
.LBB34_104:
	l.addi	r18, r18, 2930
	l.sfltu	r15, r8
	l.addi	r20, r20, 2344          # CFC
	l.bf	.LBB34_50
	l.nop	0
.LBB34_105:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfltu	r5, r11
	l.bf	.LBB34_50
	l.nop	0
	l.j	.LBB34_49
	l.nop	0
.LBB34_106:
	l.addi	r18, r18, 2940
	l.sfnei	r17, 0
	l.addi	r20, r20, 2352          # CFC
	l.bf	.LBB34_56
	l.nop	0
.LBB34_107:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB34_56
	l.nop	0
	l.j	.LBB34_51
	l.nop	0
.LBB34_108:
	l.addi	r18, r18, 2945
	l.sfleu	r13, r15
	l.addi	r20, r20, 2356          # CFC
	l.bf	.LBB34_110
	l.nop	0
.LBB34_109:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfleu	r3, r5
	l.bf	.LBB34_110
	l.nop	0
	l.j	.LBB34_111
	l.nop	0
.LBB34_110:
	l.addi	r18, r18, 626
	l.addi	r20, r20, 1252          # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 3756
	l.ori	r13, r14, 0
	l.addi	r18, r18, 3130
	l.ori	r23, r24, 0
	l.addi	r20, r20, 2504          # CFC
	l.j	.LBB34_53
	l.nop	0
.LBB34_112:
	l.addi	r18, r18, 2960
	l.sfltu	r15, r16
	l.addi	r20, r20, 2368          # CFC
	l.bf	.LBB34_55
	l.nop	0
.LBB34_113:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfltu	r5, r6
	l.bf	.LBB34_55
	l.nop	0
	l.j	.LBB34_54
	l.nop	0
.LBB34_114:
	l.addi	r18, r18, 2975
	l.sfgeu	r13, r14
	l.addi	r20, r20, 2380          # CFC
	l.bf	.LBB34_60
	l.nop	0
.LBB34_115:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB34_60
	l.nop	0
	l.j	.LBB34_57
	l.nop	0
.LBB34_116:
	l.addi	r18, r18, 2980
	l.sfltu	r13, r16
	l.addi	r20, r20, 2384          # CFC
	l.bf	.LBB34_60
	l.nop	0
.LBB34_117:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfltu	r3, r6
	l.bf	.LBB34_60
	l.nop	0
	l.j	.LBB34_58
	l.nop	0
.LBB34_118:
	l.sfgeu	r13, r14
	l.bf	.LBB34_60
	l.nop	0
.LBB34_119:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB34_60
	l.nop	0
	l.j	.LBB34_59
	l.nop	0
.LBB34_120:
	l.addi	r18, r18, 2990
	l.sfgeu	r13, r15
	l.addi	r20, r20, 2392          # CFC
	l.bf	.LBB34_64
	l.nop	0
.LBB34_121:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgeu	r3, r5
	l.bf	.LBB34_64
	l.nop	0
	l.j	.LBB34_61
	l.nop	0
.LBB34_122:
	l.addi	r18, r18, 2995
	l.sfltu	r13, r16
	l.addi	r20, r20, 2396          # CFC
	l.bf	.LBB34_64
	l.nop	0
.LBB34_123:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfltu	r3, r6
	l.bf	.LBB34_64
	l.nop	0
	l.j	.LBB34_62
	l.nop	0
.LBB34_124:
	l.sfgeu	r13, r15
	l.bf	.LBB34_64
	l.nop	0
.LBB34_125:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgeu	r3, r5
	l.bf	.LBB34_64
	l.nop	0
	l.j	.LBB34_63
	l.nop	0
.LBB34_126:
	l.addi	r18, r18, 3005
	l.sfltu	r15, r16
	l.addi	r20, r20, 2404          # CFC
	l.bf	.LBB34_66
	l.nop	0
.LBB34_127:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfltu	r5, r6
	l.bf	.LBB34_66
	l.nop	0
	l.j	.LBB34_65
	l.nop	0
.LBB34_128:
	l.addi	r18, r18, 3015
	l.sfnei	r14, 0
	l.addi	r20, r20, 2412          # CFC
	l.bf	.LBB34_68
	l.nop	0
.LBB34_129:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB34_68
	l.nop	0
	l.j	.LBB34_67
	l.nop	0
.LBB34_130:
	l.addi	r18, r18, 3025
	l.sfgtu	r16, r13
	l.addi	r20, r20, 2420          # CFC
	l.bf	.LBB34_71
	l.nop	0
.LBB34_131:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgtu	r6, r3
	l.bf	.LBB34_71
	l.nop	0
	l.j	.LBB34_69
	l.nop	0
.LBB34_132:
	l.addi	r18, r18, 3030
	l.sfleu	r15, r14
	l.addi	r20, r20, 2424          # CFC
	l.bf	.LBB34_72
	l.nop	0
.LBB34_133:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfleu	r5, r4
	l.bf	.LBB34_72
	l.nop	0
	l.j	.LBB34_70
	l.nop	0
.LBB34_134:
	l.sfne	r16, r13
	l.bf	.LBB34_72
	l.nop	0
.LBB34_135:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfne	r6, r3
	l.bf	.LBB34_72
	l.nop	0
	l.j	.LBB34_71
	l.nop	0
.LBB34_136:
	l.sfnei	r17, 0
	l.bf	.LBB34_23
	l.nop	0
.LBB34_137:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfnei	r7, 0
	l.bf	.LBB34_23
	l.nop	0
	l.j	.LBB34_22
	l.nop	0
.LBB34_138:
	l.addi	r18, r18, 3045
	l.sfgeu	r13, r14
	l.addi	r20, r20, 2436          # CFC
	l.bf	.LBB34_27
	l.nop	0
.LBB34_139:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB34_27
	l.nop	0
	l.j	.LBB34_24
	l.nop	0
.LBB34_140:
	l.addi	r18, r18, 3050
	l.sfltu	r13, r16
	l.addi	r20, r20, 2440          # CFC
	l.bf	.LBB34_27
	l.nop	0
.LBB34_141:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfltu	r3, r6
	l.bf	.LBB34_27
	l.nop	0
	l.j	.LBB34_25
	l.nop	0
.LBB34_142:
	l.sfgeu	r13, r14
	l.bf	.LBB34_27
	l.nop	0
.LBB34_143:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB34_27
	l.nop	0
	l.j	.LBB34_26
	l.nop	0
.LBB34_144:
	l.addi	r18, r18, 3060
	l.sfgeu	r13, r14
	l.addi	r20, r20, 2448          # CFC
	l.bf	.LBB34_31
	l.nop	0
.LBB34_145:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB34_31
	l.nop	0
	l.j	.LBB34_28
	l.nop	0
.LBB34_146:
	l.addi	r18, r18, 3065
	l.sfltu	r13, r16
	l.addi	r20, r20, 2452          # CFC
	l.bf	.LBB34_31
	l.nop	0
.LBB34_147:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfltu	r3, r6
	l.bf	.LBB34_31
	l.nop	0
	l.j	.LBB34_29
	l.nop	0
.LBB34_148:
	l.sfgeu	r13, r14
	l.bf	.LBB34_31
	l.nop	0
.LBB34_149:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgeu	r3, r4
	l.bf	.LBB34_31
	l.nop	0
	l.j	.LBB34_30
	l.nop	0
.LBB34_150:
	l.addi	r18, r18, 3080
	l.sfgeu	r17, r14
	l.addi	r20, r20, 2464          # CFC
	l.bf	.LBB34_36
	l.nop	0
.LBB34_151:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgeu	r7, r4
	l.bf	.LBB34_36
	l.nop	0
	l.j	.LBB34_33
	l.nop	0
.LBB34_152:
	l.addi	r18, r18, 3085
	l.sfltu	r17, r16
	l.addi	r20, r20, 2468          # CFC
	l.bf	.LBB34_36
	l.nop	0
.LBB34_153:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfltu	r7, r6
	l.bf	.LBB34_36
	l.nop	0
	l.j	.LBB34_34
	l.nop	0
.LBB34_154:
	l.sfgeu	r17, r14
	l.bf	.LBB34_36
	l.nop	0
.LBB34_155:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgeu	r7, r4
	l.bf	.LBB34_36
	l.nop	0
	l.j	.LBB34_35
	l.nop	0
.LBB34_156:
	l.addi	r18, r18, 3095
	l.sfgeu	r14, r13
	l.addi	r20, r20, 2476          # CFC
	l.bf	.LBB34_42
	l.nop	0
.LBB34_157:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgeu	r4, r3
	l.bf	.LBB34_42
	l.nop	0
	l.j	.LBB34_37
	l.nop	0
.LBB34_158:
	l.addi	r18, r18, 3100
	l.sfltu	r15, r13
	l.addi	r20, r20, 2480          # CFC
	l.bf	.LBB34_39
	l.nop	0
.LBB34_159:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfltu	r5, r3
	l.bf	.LBB34_39
	l.nop	0
	l.j	.LBB34_38
	l.nop	0
.LBB34_160:
	l.sfgeu	r15, r16
	l.bf	.LBB34_41
	l.nop	0
.LBB34_161:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB34_73
	l.nop	0
	l.sfgeu	r5, r6
	l.bf	.LBB34_41
	l.nop	0
	l.j	.LBB34_40
	l.nop	0
.Lfunc_end34:
	.size	__udivdi3, .Lfunc_end34-__udivdi3

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
	l.addi	r18, r18, 627
	l.addi	r20, r20, 1254          # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.sfltui	r5, 8
	l.ori	r7, r3, 0
	l.sw	4348(r10), r12
	l.addi	r28, r28, 3762
	l.addi	r12, r10, 0
	l.addi	r10, r10, -16
	l.ori	r17, r13, 0
	l.sw	8700(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -16           # CFC
	l.ori	r27, r23, 0
	l.bf	.LBB35_17
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3135
	l.sfltui	r15, 8
	l.addi	r20, r20, 2508          # CFC
	l.bf	.LBB35_18
	l.nop	0
.LBB35_1:                               # %if.then
	l.addi	r18, r18, 628
	l.andi	r6, r4, 255
	l.ori	r11, r4, 0
	l.slli	r4, r6, 8
	l.or	r6, r4, r6
	l.slli	r4, r6, 16
	l.andi	r16, r14, 255
	l.ori	r8, r14, 0
	l.slli	r14, r16, 8
	l.addi	r20, r20, 1256          # CFC
	l.sw	-16(r2), r4
	l.or	r16, r14, r16
	l.andi	r26, r24, 255
	l.andi	r4, r3, 3
	l.slli	r14, r16, 16
	l.ori	r31, r24, 0
	l.sfeqi	r4, 0
	l.sw	4336(r12), r14
	l.addi	r28, r28, 3768
	l.slli	r24, r26, 8
	l.ori	r7, r3, 0
	l.andi	r14, r13, 3
	l.ori	r17, r13, 0
	l.or	r26, r24, r26
	l.slli	r24, r26, 16
	l.sw	8688(r22), r24
	l.andi	r24, r23, 3
	l.ori	r27, r23, 0
	l.bf	.LBB35_19
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3140
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2512          # CFC
	l.bf	.LBB35_20
	l.nop	0
.LBB35_2:                               # %while.body.preheader
	l.addi	r18, r18, 629
	l.addi	r20, r20, 1258          # CFC
	l.ori	r7, r3, 0
	l.addi	r28, r28, 3774
	l.ori	r17, r13, 0
	l.addi	r18, r18, 3145
	l.ori	r27, r23, 0
	l.addi	r20, r20, 2516          # CFC
.LBB35_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 630
	l.sb	0(r7), r11
	l.addi	r5, r5, -1
	l.addi	r7, r7, 1
	l.andi	r4, r7, 3
	l.addi	r20, r20, 1260          # CFC
	l.sfnei	r4, 0
	l.sb	4352(r17), r8
	l.addi	r15, r15, -1
	l.addi	r17, r17, 1
	l.addi	r28, r28, 3780
	l.andi	r14, r17, 3
	l.sb	8704(r27), r31
	l.addi	r25, r25, -1
	l.addi	r27, r27, 1
	l.andi	r24, r27, 3
	l.bf	.LBB35_21
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3150
	l.sfnei	r14, 0
	l.addi	r20, r20, 2520          # CFC
	l.bf	.LBB35_22
	l.nop	0
.LBB35_4:                               # %while.end
	l.addi	r18, r18, 631
	l.sw	-12(r2), r11
	l.lwz	r4, -16(r2)
	l.or	r4, r4, r6
	l.srli	r11, r5, 5
	l.sfeqi	r11, 0
	l.addi	r20, r20, 1262          # CFC
	l.sw	-8(r2), r3
	l.sw	4340(r12), r8
	l.lwz	r14, 4336(r12)
	l.or	r14, r14, r16
	l.srli	r8, r15, 5
	l.addi	r28, r28, 3786
	l.sw	4344(r12), r13
	l.sw	8692(r22), r31
	l.lwz	r24, 8688(r22)
	l.or	r24, r24, r26
	l.srli	r31, r25, 5
	l.sw	8696(r22), r23
	l.bf	.LBB35_23
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3155
	l.sfeqi	r8, 0
	l.addi	r20, r20, 2524          # CFC
	l.bf	.LBB35_24
	l.nop	0
.LBB35_5:                               # %while.body10.preheader
	l.addi	r18, r18, 632
	l.movhi	r6, 0
	l.ori	r3, r11, 0
	l.sub	r11, r6, r3
	l.slli	r6, r3, 5
	l.addi	r20, r20, 1264          # CFC
	l.sw	-16(r2), r6
	l.movhi	r16, 0
	l.ori	r13, r8, 0
	l.sub	r8, r16, r13
	l.ori	r6, r7, 0
	l.addi	r28, r28, 3792
	l.slli	r16, r13, 5
	l.movhi	r26, 0
	l.sw	4336(r12), r16
	l.ori	r16, r17, 0
	l.addi	r18, r18, 3160
	l.ori	r23, r31, 0
	l.sub	r31, r26, r23
	l.slli	r26, r23, 5
	l.sw	8688(r22), r26
	l.ori	r26, r27, 0
	l.addi	r20, r20, 2528          # CFC
.LBB35_6:                               # %while.body10
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 633
	l.sw	0(r6), r4
	l.sw	4(r6), r4
	l.sw	8(r6), r4
	l.sw	12(r6), r4
	l.sw	16(r6), r4
	l.sw	4352(r16), r14
	l.sw	4356(r16), r14
	l.sw	4360(r16), r14
	l.sw	20(r6), r4
	l.sw	4364(r16), r14
	l.addi	r20, r20, 1266          # CFC
	l.sw	8704(r26), r24
	l.sw	24(r6), r4
	l.sw	4368(r16), r14
	l.sw	8708(r26), r24
	l.sw	28(r6), r4
	l.sw	4372(r16), r14
	l.sw	8712(r26), r24
	l.addi	r6, r6, 32
	l.sw	4376(r16), r14
	l.sw	8716(r26), r24
	l.addi	r28, r28, 3798
	l.addi	r11, r11, 1
	l.sw	4380(r16), r14
	l.sw	8720(r26), r24
	l.sfnei	r11, 0
	l.addi	r16, r16, 32
	l.addi	r8, r8, 1
	l.sw	8724(r26), r24
	l.sw	8728(r26), r24
	l.sw	8732(r26), r24
	l.addi	r26, r26, 32
	l.addi	r31, r31, 1
	l.bf	.LBB35_25
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3165
	l.sfnei	r8, 0
	l.addi	r20, r20, 2532          # CFC
	l.bf	.LBB35_26
	l.nop	0
.LBB35_7:                               # %while.end21.loopexit
	l.addi	r18, r18, 634
	l.lwz	r6, -16(r2)
	l.add	r7, r7, r6
	l.addi	r20, r20, 1268          # CFC
	l.lwz	r3, -8(r2)
	l.lwz	r16, 4336(r12)
	l.addi	r28, r28, 3804
	l.add	r17, r17, r16
	l.lwz	r13, 4344(r12)
	l.addi	r18, r18, 3170
	l.lwz	r26, 8688(r22)
	l.add	r27, r27, r26
	l.lwz	r23, 8696(r22)
	l.addi	r20, r20, 2536          # CFC
.LBB35_8:                               # %while.end21
	l.addi	r18, r18, 635
	l.srli	r6, r5, 2
	l.andi	r11, r6, 7
	l.addi	r20, r20, 1270          # CFC
	l.sfeqi	r11, 0
	l.srli	r16, r15, 2
	l.addi	r28, r28, 3810
	l.andi	r8, r16, 7
	l.srli	r26, r25, 2
	l.andi	r31, r26, 7
	l.bf	.LBB35_27
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3175
	l.sfeqi	r8, 0
	l.addi	r20, r20, 2540          # CFC
	l.bf	.LBB35_28
	l.nop	0
.LBB35_9:                               # %while.body27.preheader
	l.addi	r18, r18, 636
	l.movhi	r6, 0
	l.ori	r3, r11, 0
	l.sub	r11, r6, r3
	l.addi	r20, r20, 1272          # CFC
	l.slli	r6, r3, 2
	l.ori	r3, r7, 0
	l.movhi	r16, 0
	l.ori	r13, r8, 0
	l.addi	r28, r28, 3816
	l.sub	r8, r16, r13
	l.slli	r16, r13, 2
	l.ori	r13, r17, 0
	l.movhi	r26, 0
	l.addi	r18, r18, 3180
	l.ori	r23, r31, 0
	l.sub	r31, r26, r23
	l.slli	r26, r23, 2
	l.ori	r23, r27, 0
	l.addi	r20, r20, 2544          # CFC
.LBB35_10:                              # %while.body27
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 637
	l.sw	0(r3), r4
	l.addi	r3, r3, 4
	l.addi	r11, r11, 1
	l.addi	r20, r20, 1274          # CFC
	l.sfnei	r11, 0
	l.sw	4352(r13), r14
	l.addi	r13, r13, 4
	l.addi	r28, r28, 3822
	l.addi	r8, r8, 1
	l.sw	8704(r23), r24
	l.addi	r23, r23, 4
	l.addi	r31, r31, 1
	l.bf	.LBB35_29
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3185
	l.sfnei	r8, 0
	l.addi	r20, r20, 2548          # CFC
	l.bf	.LBB35_30
	l.nop	0
.LBB35_11:                              # %while.end31.loopexit
	l.addi	r18, r18, 638
	l.add	r7, r7, r6
	l.addi	r20, r20, 1276          # CFC
	l.lwz	r3, -8(r2)
	l.add	r17, r17, r16
	l.addi	r28, r28, 3828
	l.lwz	r13, 4344(r12)
	l.addi	r18, r18, 3190
	l.add	r27, r27, r26
	l.lwz	r23, 8696(r22)
	l.addi	r20, r20, 2552          # CFC
.LBB35_12:                              # %while.end31
	l.addi	r18, r18, 639
	l.andi	r5, r5, 3
	l.addi	r20, r20, 1278          # CFC
	l.lwz	r4, -12(r2)
	l.andi	r15, r15, 3
	l.addi	r28, r28, 3834
	l.lwz	r14, 4340(r12)
	l.addi	r18, r18, 3195
	l.andi	r25, r25, 3
	l.lwz	r24, 8692(r22)
	l.addi	r20, r20, 2556          # CFC
.LBB35_13:                              # %while.cond33.preheader
	l.sfeqi	r5, 0
	l.bf	.LBB35_31
	l.nop	0                       # in delay slot
	l.sfeqi	r15, 0
	l.bf	.LBB35_32
	l.nop	0
.LBB35_14:                              # %while.body36
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 640
	l.sb	0(r7), r4
	l.addi	r7, r7, 1
	l.addi	r5, r5, -1
	l.addi	r20, r20, 1280          # CFC
	l.sfnei	r5, 0
	l.sb	4352(r17), r14
	l.addi	r17, r17, 1
	l.addi	r28, r28, 3840
	l.addi	r15, r15, -1
	l.sb	8704(r27), r24
	l.addi	r27, r27, 1
	l.addi	r25, r25, -1
	l.bf	.LBB35_33
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3200
	l.sfnei	r15, 0
	l.addi	r20, r20, 2560          # CFC
	l.bf	.LBB35_34
	l.nop	0
.LBB35_15:                              # %while.end41
	l.addi	r18, r18, 641
	l.ori	r11, r3, 0
	l.addi	r1, r2, 0
	l.addi	r20, r20, 1282          # CFC
	l.lwz	r2, -4(r1)
	l.ori	r8, r13, 0
	l.addi	r28, r28, 3846
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.addi	r18, r18, 3205
	l.ori	r31, r23, 0
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 2564          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB35_16
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB35_16:                              # %while.end41
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB35_35
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB35_35
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB35_35
	l.nop	0
	l.nop	205
.LBB35_35:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB35_36
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB35_36
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB35_36
	l.nop	0
	l.nop	205
.LBB35_36:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB35_37
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB35_37
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB35_37
	l.nop	0
	l.nop	205
.LBB35_37:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB35_38
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB35_38
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB35_38
	l.nop	0
	l.nop	205
.LBB35_38:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB35_39
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB35_39
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB35_39
	l.nop	0
	l.nop	205
.LBB35_39:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB35_40
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB35_40
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB35_40
	l.nop	0
	l.nop	205
.LBB35_40:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB35_41
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB35_41
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB35_41
	l.nop	0
	l.nop	205
.LBB35_41:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB35_42
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB35_42
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB35_42
	l.nop	0
	l.nop	205
.LBB35_42:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB35_43
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB35_43
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB35_43
	l.nop	0
	l.nop	205
.LBB35_43:
.LBB35_44:
	l.jr	r30
	l.nop	0
.LBB35_17:
	l.addi	r18, r18, 3135
	l.sfltui	r15, 8
	l.addi	r20, r20, 2508          # CFC
	l.bf	.LBB35_13
	l.nop	0
.LBB35_18:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB35_16
	l.nop	0
	l.sfltui	r5, 8
	l.bf	.LBB35_13
	l.nop	0
	l.j	.LBB35_1
	l.nop	0
.LBB35_19:
	l.addi	r18, r18, 3140
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2512          # CFC
	l.bf	.LBB35_4
	l.nop	0
.LBB35_20:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB35_16
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB35_4
	l.nop	0
	l.j	.LBB35_2
	l.nop	0
.LBB35_21:
	l.addi	r18, r18, 3150
	l.sfnei	r14, 0
	l.addi	r20, r20, 2520          # CFC
	l.bf	.LBB35_3
	l.nop	0
.LBB35_22:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB35_16
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB35_3
	l.nop	0
	l.j	.LBB35_4
	l.nop	0
.LBB35_23:
	l.addi	r18, r18, 3155
	l.sfeqi	r8, 0
	l.addi	r20, r20, 2524          # CFC
	l.bf	.LBB35_8
	l.nop	0
.LBB35_24:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB35_16
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB35_8
	l.nop	0
	l.j	.LBB35_5
	l.nop	0
.LBB35_25:
	l.addi	r18, r18, 3165
	l.sfnei	r8, 0
	l.addi	r20, r20, 2532          # CFC
	l.bf	.LBB35_6
	l.nop	0
.LBB35_26:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB35_16
	l.nop	0
	l.sfnei	r11, 0
	l.bf	.LBB35_6
	l.nop	0
	l.j	.LBB35_7
	l.nop	0
.LBB35_27:
	l.addi	r18, r18, 3175
	l.sfeqi	r8, 0
	l.addi	r20, r20, 2540          # CFC
	l.bf	.LBB35_12
	l.nop	0
.LBB35_28:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB35_16
	l.nop	0
	l.sfeqi	r11, 0
	l.bf	.LBB35_12
	l.nop	0
	l.j	.LBB35_9
	l.nop	0
.LBB35_29:
	l.addi	r18, r18, 3185
	l.sfnei	r8, 0
	l.addi	r20, r20, 2548          # CFC
	l.bf	.LBB35_10
	l.nop	0
.LBB35_30:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB35_16
	l.nop	0
	l.sfnei	r11, 0
	l.bf	.LBB35_10
	l.nop	0
	l.j	.LBB35_11
	l.nop	0
.LBB35_31:
	l.sfeqi	r15, 0
	l.bf	.LBB35_15
	l.nop	0
.LBB35_32:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB35_16
	l.nop	0
	l.sfeqi	r5, 0
	l.bf	.LBB35_15
	l.nop	0
	l.j	.LBB35_14
	l.nop	0
.LBB35_33:
	l.addi	r18, r18, 3200
	l.sfnei	r15, 0
	l.addi	r20, r20, 2560          # CFC
	l.bf	.LBB35_14
	l.nop	0
.LBB35_34:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB35_16
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB35_14
	l.nop	0
	l.j	.LBB35_15
	l.nop	0
.Lfunc_end35:
	.size	memset, .Lfunc_end35-memset

	.hidden	my_strcmp
	.globl	my_strcmp
	.p2align	2
	.type	my_strcmp,@function
my_strcmp:                              # @my_strcmp
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 642
	l.addi	r20, r20, 1284          # CFC
	l.sw	-4(r1), r2
	l.addi	r28, r28, 3852
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r18, r18, 3210
	l.addi	r10, r10, -4
	l.sw	8700(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.addi	r20, r20, 2568          # CFC
.LBB36_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 643
	l.movhi	r7, 0
	l.lbz	r5, 0(r4)
	l.lbz	r6, 0(r3)
	l.addi	r20, r20, 1286          # CFC
	l.sfeqi	r6, 0
	l.movhi	r17, 0
	l.lbz	r15, 4352(r14)
	l.addi	r28, r28, 3858
	l.lbz	r16, 4352(r13)
	l.movhi	r27, 0
	l.lbz	r25, 8704(r24)
	l.lbz	r26, 8704(r23)
	l.bf	.LBB36_5
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3215
	l.sfeqi	r16, 0
	l.addi	r20, r20, 2572          # CFC
	l.bf	.LBB36_6
	l.nop	0
.LBB36_2:                               # %do.cond
                                        #   in Loop: Header=BB36_1 Depth=1
	l.addi	r18, r18, 644
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.sfeq	r6, r5
	l.addi	r20, r20, 1288          # CFC
	l.ori	r7, r6, 0
	l.addi	r13, r13, 1
	l.addi	r14, r14, 1
	l.addi	r28, r28, 3864
	l.ori	r17, r16, 0
	l.addi	r23, r23, 1
	l.addi	r24, r24, 1
	l.ori	r27, r26, 0
	l.bf	.LBB36_7
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3220
	l.sfeq	r16, r15
	l.addi	r20, r20, 2576          # CFC
	l.bf	.LBB36_8
	l.nop	0
.LBB36_3:                               # %cleanup
                                        #   in Loop: Header=BB36_1 Depth=1
	l.addi	r18, r18, 645
	l.sub	r11, r7, r5
	l.addi	r1, r2, 0
	l.addi	r20, r20, 1290          # CFC
	l.lwz	r2, -4(r1)
	l.sub	r8, r17, r15
	l.addi	r28, r28, 3870
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.addi	r18, r18, 3225
	l.sub	r31, r27, r25
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 2580          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB36_4
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB36_4:                               # %cleanup
                                        #   in Loop: Header=BB36_1 Depth=1
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB36_9
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB36_9
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB36_9
	l.nop	0
	l.nop	205
.LBB36_9:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB36_10
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB36_10
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB36_10
	l.nop	0
	l.nop	205
.LBB36_10:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB36_11
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB36_11
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB36_11
	l.nop	0
	l.nop	205
.LBB36_11:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB36_12
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB36_12
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB36_12
	l.nop	0
	l.nop	205
.LBB36_12:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB36_13
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB36_13
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB36_13
	l.nop	0
	l.nop	205
.LBB36_13:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB36_14
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB36_14
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB36_14
	l.nop	0
	l.nop	205
.LBB36_14:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB36_15
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB36_15
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB36_15
	l.nop	0
	l.nop	205
.LBB36_15:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB36_16
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB36_16
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB36_16
	l.nop	0
	l.nop	205
.LBB36_16:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB36_17
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB36_17
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB36_17
	l.nop	0
	l.nop	205
.LBB36_17:
.LBB36_18:
	l.jr	r30
	l.nop	0
.LBB36_5:                               #   in Loop: Header=BB36_1 Depth=1
	l.addi	r18, r18, 3215
	l.sfeqi	r16, 0
	l.addi	r20, r20, 2572          # CFC
	l.bf	.LBB36_3
	l.nop	0
.LBB36_6:                               #   in Loop: Header=BB36_1 Depth=1
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB36_4
	l.nop	0
	l.sfeqi	r6, 0
	l.bf	.LBB36_3
	l.nop	0
	l.j	.LBB36_2
	l.nop	0
.LBB36_7:                               #   in Loop: Header=BB36_1 Depth=1
	l.addi	r18, r18, 3220
	l.sfeq	r16, r15
	l.addi	r20, r20, 2576          # CFC
	l.bf	.LBB36_1
	l.nop	0
.LBB36_8:                               #   in Loop: Header=BB36_1 Depth=1
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB36_4
	l.nop	0
	l.sfeq	r6, r5
	l.bf	.LBB36_1
	l.nop	0
	l.j	.LBB36_3
	l.nop	0
.Lfunc_end36:
	.size	my_strcmp, .Lfunc_end36-my_strcmp

	.hidden	compare
	.globl	compare
	.p2align	2
	.type	compare,@function
compare:                                # @compare
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 646
	l.addi	r20, r20, 1292          # CFC
	l.sw	-4(r1), r2
	l.addi	r28, r28, 3876
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r18, r18, 3230
	l.addi	r10, r10, -4
	l.sw	8700(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.addi	r20, r20, 2584          # CFC
.LBB37_1:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 647
	l.lbz	r5, 0(r4)
	l.lbz	r6, 0(r3)
	l.sfeqi	r6, 0
	l.addi	r20, r20, 1294          # CFC
	l.movhi	r7, 0
	l.lbz	r15, 4352(r14)
	l.lbz	r16, 4352(r13)
	l.addi	r28, r28, 3882
	l.movhi	r17, 0
	l.lbz	r25, 8704(r24)
	l.lbz	r26, 8704(r23)
	l.movhi	r27, 0
	l.bf	.LBB37_9
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3235
	l.sfeqi	r16, 0
	l.addi	r20, r20, 2588          # CFC
	l.bf	.LBB37_10
	l.nop	0
.LBB37_2:                               # %do.cond.i
                                        #   in Loop: Header=BB37_1 Depth=1
	l.addi	r18, r18, 648
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.sfeq	r6, r5
	l.addi	r20, r20, 1296          # CFC
	l.ori	r7, r6, 0
	l.addi	r13, r13, 1
	l.addi	r14, r14, 1
	l.addi	r28, r28, 3888
	l.ori	r17, r16, 0
	l.addi	r23, r23, 1
	l.addi	r24, r24, 1
	l.ori	r27, r26, 0
	l.bf	.LBB37_11
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3240
	l.sfeq	r16, r15
	l.addi	r20, r20, 2592          # CFC
	l.bf	.LBB37_12
	l.nop	0
.LBB37_3:                               # %my_strcmp.exit
                                        #   in Loop: Header=BB37_1 Depth=1
	l.addi	r18, r18, 649
	l.sub	r4, r7, r5
	l.addi	r3, r0, -1
	l.addi	r20, r20, 1298          # CFC
	l.sfnei	r4, 0
	l.sub	r14, r17, r15
	l.addi	r28, r28, 3894
	l.addi	r13, r0, -1
	l.sub	r24, r27, r25
	l.addi	r23, r0, -1
	l.bf	.LBB37_13
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3245
	l.sfnei	r14, 0
	l.addi	r20, r20, 2596          # CFC
	l.bf	.LBB37_14
	l.nop	0
.LBB37_4:                               # %my_strcmp.exit
                                        #   in Loop: Header=BB37_1 Depth=1
	l.addi	r18, r18, 650
	l.addi	r20, r20, 1300          # CFC
	l.movhi	r3, 0
	l.addi	r28, r28, 3900
	l.movhi	r13, 0
	l.addi	r18, r18, 3250
	l.movhi	r23, 0
	l.addi	r20, r20, 2600          # CFC
.LBB37_5:                               # %my_strcmp.exit
                                        #   in Loop: Header=BB37_1 Depth=1
	l.addi	r18, r18, 651
	l.addi	r11, r0, 1
	l.addi	r20, r20, 1302          # CFC
	l.sfltsi	r4, 0
	l.addi	r28, r28, 3906
	l.addi	r8, r0, 1
	l.addi	r31, r0, 1
	l.bf	.LBB37_15
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3255
	l.sfltsi	r14, 0
	l.addi	r20, r20, 2604          # CFC
	l.bf	.LBB37_16
	l.nop	0
.LBB37_6:                               # %my_strcmp.exit
                                        #   in Loop: Header=BB37_1 Depth=1
	l.addi	r18, r18, 652
	l.addi	r20, r20, 1304          # CFC
	l.ori	r11, r3, 0
	l.addi	r28, r28, 3912
	l.ori	r8, r13, 0
	l.addi	r18, r18, 3260
	l.ori	r31, r23, 0
	l.addi	r20, r20, 2608          # CFC
.LBB37_7:                               # %my_strcmp.exit
                                        #   in Loop: Header=BB37_1 Depth=1
	l.addi	r18, r18, 653
	l.addi	r1, r2, 0
	l.addi	r20, r20, 1306          # CFC
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 3918
	l.lwz	r12, 4348(r10)
	l.addi	r18, r18, 3265
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 2612          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB37_8
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB37_8:                               # %my_strcmp.exit
                                        #   in Loop: Header=BB37_1 Depth=1
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB37_17
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB37_17
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB37_17
	l.nop	0
	l.nop	205
.LBB37_17:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB37_18
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB37_18
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB37_18
	l.nop	0
	l.nop	205
.LBB37_18:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB37_19
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB37_19
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB37_19
	l.nop	0
	l.nop	205
.LBB37_19:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB37_20
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB37_20
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB37_20
	l.nop	0
	l.nop	205
.LBB37_20:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB37_21
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB37_21
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB37_21
	l.nop	0
	l.nop	205
.LBB37_21:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB37_22
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB37_22
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB37_22
	l.nop	0
	l.nop	205
.LBB37_22:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB37_23
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB37_23
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB37_23
	l.nop	0
	l.nop	205
.LBB37_23:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB37_24
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB37_24
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB37_24
	l.nop	0
	l.nop	205
.LBB37_24:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB37_25
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB37_25
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB37_25
	l.nop	0
	l.nop	205
.LBB37_25:
.LBB37_26:
	l.jr	r30
	l.nop	0
.LBB37_9:                               #   in Loop: Header=BB37_1 Depth=1
	l.addi	r18, r18, 3235
	l.sfeqi	r16, 0
	l.addi	r20, r20, 2588          # CFC
	l.bf	.LBB37_3
	l.nop	0
.LBB37_10:                              #   in Loop: Header=BB37_1 Depth=1
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB37_8
	l.nop	0
	l.sfeqi	r6, 0
	l.bf	.LBB37_3
	l.nop	0
	l.j	.LBB37_2
	l.nop	0
.LBB37_11:                              #   in Loop: Header=BB37_1 Depth=1
	l.addi	r18, r18, 3240
	l.sfeq	r16, r15
	l.addi	r20, r20, 2592          # CFC
	l.bf	.LBB37_1
	l.nop	0
.LBB37_12:                              #   in Loop: Header=BB37_1 Depth=1
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB37_8
	l.nop	0
	l.sfeq	r6, r5
	l.bf	.LBB37_1
	l.nop	0
	l.j	.LBB37_3
	l.nop	0
.LBB37_13:                              #   in Loop: Header=BB37_1 Depth=1
	l.addi	r18, r18, 3245
	l.sfnei	r14, 0
	l.addi	r20, r20, 2596          # CFC
	l.bf	.LBB37_5
	l.nop	0
.LBB37_14:                              #   in Loop: Header=BB37_1 Depth=1
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB37_8
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB37_5
	l.nop	0
	l.j	.LBB37_4
	l.nop	0
.LBB37_15:                              #   in Loop: Header=BB37_1 Depth=1
	l.addi	r18, r18, 3255
	l.sfltsi	r14, 0
	l.addi	r20, r20, 2604          # CFC
	l.bf	.LBB37_7
	l.nop	0
.LBB37_16:                              #   in Loop: Header=BB37_1 Depth=1
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB37_8
	l.nop	0
	l.sfltsi	r4, 0
	l.bf	.LBB37_7
	l.nop	0
	l.j	.LBB37_6
	l.nop	0
.Lfunc_end37:
	.size	compare, .Lfunc_end37-compare

	.hidden	_quicksort
	.globl	_quicksort
	.p2align	2
	.type	_quicksort,@function
_quicksort:                             # @_quicksort
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 654
	l.addi	r20, r20, 1308          # CFC
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -320
	l.sw	-284(r2), r7
	l.sw	4348(r10), r19
	l.sw	4344(r10), r12
	l.addi	r12, r10, 0
	l.sw	-280(r2), r6
	l.addi	r28, r28, 3924
	l.addi	r10, r10, -320
	l.sw	8700(r21), r29
	l.sfeqi	r4, 0
	l.sw	4068(r12), r17
	l.sw	4072(r12), r16
	l.sw	8696(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -320          # CFC
	l.sw	8420(r22), r27
	l.sw	8424(r22), r26
	l.bf	.LBB38_66
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3270
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2616          # CFC
	l.bf	.LBB38_67
	l.nop	0
.LBB38_1:                               # %if.end
	l.addi	r18, r18, 655
	l.slli	r7, r5, 2
	l.addi	r6, r4, -1
	l.mul	r6, r6, r5
	l.add	r6, r3, r6
	l.sfltui	r4, 5
	l.slli	r17, r15, 2
	l.addi	r16, r14, -1
	l.addi	r20, r20, 1310          # CFC
	l.mul	r16, r16, r15
	l.sw	-272(r2), r5
	l.add	r16, r13, r16
	l.slli	r27, r25, 2
	l.sw	-320(r2), r6
	l.sw	4080(r12), r15
	l.addi	r26, r24, -1
	l.addi	r28, r28, 3930
	l.sw	-316(r2), r3
	l.sw	4032(r12), r16
	l.sw	4036(r12), r13
	l.mul	r26, r26, r25
	l.add	r26, r23, r26
	l.sw	8432(r22), r25
	l.sw	8384(r22), r26
	l.sw	8388(r22), r23
	l.bf	.LBB38_68
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3275
	l.sfltui	r14, 5
	l.addi	r20, r20, 2620          # CFC
	l.bf	.LBB38_69
	l.nop	0
.LBB38_2:                               # %if.then3
	l.addi	r18, r18, 656
	l.movhi	r4, 0
	l.sw	-264(r2), r4
	l.sw	-260(r2), r4
	l.sub	r4, r4, r5
	l.sw	-292(r2), r4
	l.movhi	r14, 0
	l.sw	4088(r12), r14
	l.sw	4092(r12), r14
	l.addi	r4, r2, -264
	l.addi	r20, r20, 1312          # CFC
	l.sub	r14, r14, r15
	l.movhi	r24, 0
	l.addi	r4, r4, 8
	l.sw	4060(r12), r14
	l.sw	8440(r22), r24
	l.sw	-296(r2), r3
	l.addi	r14, r12, -264
	l.sw	8444(r22), r24
	l.sw	-288(r2), r6
	l.addi	r28, r28, 3936
	l.addi	r14, r14, 8
	l.sub	r24, r24, r25
	l.lwz	r11, -284(r2)
	l.sw	4056(r12), r13
	l.sw	8412(r22), r24
	l.lwz	r6, -280(r2)
	l.sw	4064(r12), r16
	l.addi	r24, r22, -264
	l.sw	-308(r2), r7
	l.addi	r18, r18, 3280
	l.lwz	r8, 4068(r12)
	l.addi	r24, r24, 8
	l.lwz	r16, 4072(r12)
	l.sw	4044(r12), r17
	l.sw	8408(r22), r23
	l.sw	8416(r22), r26
	l.lwz	r31, 8420(r22)
	l.lwz	r26, 8424(r22)
	l.sw	8396(r22), r27
	l.addi	r20, r20, 2624          # CFC
.LBB38_3:                               # %while.cond.outer.while.cond.outer.split_crit_edge
	l.addi	r18, r18, 657
	l.addi	r20, r20, 1314          # CFC
	l.sw	-312(r2), r4
	l.addi	r28, r28, 3942
	l.sw	4040(r12), r14
	l.addi	r18, r18, 3285
	l.sw	8392(r22), r24
	l.addi	r20, r20, 2628          # CFC
.LBB38_4:                               # %while.cond.outer391
	l.addi	r18, r18, 658
	l.lwz	r4, -288(r2)
	l.lwz	r3, -292(r2)
	l.sw	-300(r2), r4
	l.add	r3, r4, r3
	l.sw	-304(r2), r3
	l.addi	r20, r20, 1316          # CFC
	l.lwz	r14, 4064(r12)
	l.lwz	r13, 4060(r12)
	l.sw	4052(r12), r14
	l.lwz	r3, -296(r2)
	l.add	r13, r14, r13
	l.addi	r28, r28, 3948
	l.lwz	r24, 8416(r22)
	l.lwz	r5, -272(r2)
	l.sw	4048(r12), r13
	l.lwz	r23, 8412(r22)
	l.lwz	r13, 4056(r12)
	l.addi	r18, r18, 3290
	l.lwz	r15, 4080(r12)
	l.sw	8404(r22), r24
	l.add	r23, r24, r23
	l.sw	8400(r22), r23
	l.lwz	r23, 8408(r22)
	l.lwz	r25, 8432(r22)
	l.addi	r20, r20, 2632          # CFC
.LBB38_5:                               # %while.cond
	l.addi	r18, r18, 659
	l.ori	r4, r3, 0
	l.lwz	r3, -300(r2)
	l.sub	r3, r3, r4
	l.divu	r3, r3, r5
	l.srli	r3, r3, 1
	l.ori	r14, r13, 0
	l.lwz	r13, 4052(r12)
	l.sub	r13, r13, r14
	l.mul	r3, r3, r5
	l.divu	r13, r13, r15
	l.addi	r20, r20, 1318          # CFC
	l.ori	r24, r23, 0
	l.add	r3, r4, r3
	l.srli	r13, r13, 1
	l.lwz	r23, 8404(r22)
	l.sw	-276(r2), r3
	l.mul	r13, r13, r15
	l.sub	r23, r23, r24
	l.sw	-296(r2), r4
	l.add	r13, r14, r13
	l.divu	r23, r23, r25
	l.ori	r5, r11, 0
	l.addi	r28, r28, 3954
	l.sw	4076(r12), r13
	l.srli	r23, r23, 1
	l.sw	4056(r12), r14
	l.ori	r15, r8, 0
	l.mul	r23, r23, r25
	l.add	r23, r24, r23
	l.sw	8428(r22), r23
	l.sw	8408(r22), r24
	l.ori	r25, r31, 0
	l.sfne	r6, r16
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB38_65
	l.nop	0
	l.jalr	r6
	l.nop	0                       # in delay slot
	l.sfgtsi	r11, -1
	l.bf	.LBB38_70
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3295
	l.sfgtsi	r8, -1
	l.addi	r20, r20, 2636          # CFC
	l.bf	.LBB38_71
	l.nop	0
.LBB38_6:                               # %do.body12.preheader
	l.addi	r18, r18, 660
	l.lwz	r3, -276(r2)
	l.lwz	r4, -296(r2)
	l.addi	r20, r20, 1320          # CFC
	l.lwz	r5, -272(r2)
	l.lwz	r13, 4076(r12)
	l.addi	r28, r28, 3960
	l.lwz	r14, 4056(r12)
	l.lwz	r15, 4080(r12)
	l.addi	r18, r18, 3300
	l.lwz	r23, 8428(r22)
	l.lwz	r24, 8408(r22)
	l.lwz	r25, 8432(r22)
	l.addi	r20, r20, 2640          # CFC
.LBB38_7:                               # %do.body12
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 661
	l.lbz	r6, 0(r3)
	l.lbz	r7, 0(r4)
	l.sb	0(r3), r7
	l.sb	0(r4), r6
	l.addi	r4, r4, 1
	l.lbz	r16, 4352(r13)
	l.lbz	r17, 4352(r14)
	l.addi	r20, r20, 1322          # CFC
	l.sb	4352(r13), r17
	l.addi	r3, r3, 1
	l.sb	4352(r14), r16
	l.lbz	r26, 8704(r23)
	l.addi	r5, r5, -1
	l.addi	r14, r14, 1
	l.lbz	r27, 8704(r24)
	l.addi	r28, r28, 3966
	l.sfnei	r5, 0
	l.addi	r13, r13, 1
	l.addi	r15, r15, -1
	l.sb	8704(r23), r27
	l.sb	8704(r24), r26
	l.addi	r24, r24, 1
	l.addi	r23, r23, 1
	l.addi	r25, r25, -1
	l.bf	.LBB38_72
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3305
	l.sfnei	r15, 0
	l.addi	r20, r20, 2644          # CFC
	l.bf	.LBB38_73
	l.nop	0
.LBB38_8:                               # %if.end18
	l.addi	r18, r18, 662
	l.lwz	r3, -300(r2)
	l.lwz	r4, -276(r2)
	l.lwz	r5, -284(r2)
	l.lwz	r6, -280(r2)
	l.addi	r20, r20, 1324          # CFC
	l.lwz	r13, 4052(r12)
	l.lwz	r14, 4076(r12)
	l.lwz	r15, 4068(r12)
	l.lwz	r16, 4072(r12)
	l.lwz	r23, 8404(r22)
	l.addi	r28, r28, 3972
	l.lwz	r24, 8428(r22)
	l.lwz	r25, 8420(r22)
	l.lwz	r26, 8424(r22)
	l.sfne	r6, r16
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB38_65
	l.nop	0
	l.jalr	r6
	l.nop	0                       # in delay slot
	l.sfgtsi	r11, -1
	l.bf	.LBB38_74
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3310
	l.sfgtsi	r8, -1
	l.addi	r20, r20, 2648          # CFC
	l.bf	.LBB38_75
	l.nop	0
.LBB38_77:
	l.addi	r18, r18, 663
	l.addi	r20, r20, 1326          # CFC
	l.lwz	r11, -272(r2)
	l.addi	r28, r28, 3978
	l.lwz	r8, 4080(r12)
	l.addi	r18, r18, 3315
	l.lwz	r31, 8432(r22)
	l.addi	r20, r20, 2652          # CFC
.LBB38_9:                               # %do.body26.preheader
	l.addi	r18, r18, 664
	l.ori	r3, r11, 0
	l.lwz	r4, -276(r2)
	l.addi	r20, r20, 1328          # CFC
	l.lwz	r5, -300(r2)
	l.ori	r13, r8, 0
	l.addi	r28, r28, 3984
	l.lwz	r14, 4076(r12)
	l.lwz	r15, 4052(r12)
	l.addi	r18, r18, 3320
	l.ori	r23, r31, 0
	l.lwz	r24, 8428(r22)
	l.lwz	r25, 8404(r22)
	l.addi	r20, r20, 2656          # CFC
.LBB38_10:                              # %do.body26
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 665
	l.lbz	r6, 0(r4)
	l.lbz	r7, 0(r5)
	l.sb	0(r4), r7
	l.sb	0(r5), r6
	l.addi	r5, r5, 1
	l.lbz	r16, 4352(r14)
	l.lbz	r17, 4352(r15)
	l.addi	r20, r20, 1330          # CFC
	l.sb	4352(r14), r17
	l.addi	r4, r4, 1
	l.sb	4352(r15), r16
	l.lbz	r26, 8704(r24)
	l.addi	r3, r3, -1
	l.addi	r15, r15, 1
	l.lbz	r27, 8704(r25)
	l.addi	r28, r28, 3990
	l.sfnei	r3, 0
	l.addi	r14, r14, 1
	l.addi	r13, r13, -1
	l.sb	8704(r24), r27
	l.sb	8704(r25), r26
	l.addi	r25, r25, 1
	l.addi	r24, r24, 1
	l.addi	r23, r23, -1
	l.bf	.LBB38_78
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3325
	l.sfnei	r13, 0
	l.addi	r20, r20, 2660          # CFC
	l.bf	.LBB38_79
	l.nop	0
.LBB38_11:                              # %do.end33
	l.addi	r18, r18, 666
	l.lwz	r3, -276(r2)
	l.lwz	r4, -296(r2)
	l.lwz	r5, -284(r2)
	l.lwz	r6, -280(r2)
	l.addi	r20, r20, 1332          # CFC
	l.lwz	r13, 4076(r12)
	l.lwz	r14, 4056(r12)
	l.lwz	r15, 4068(r12)
	l.lwz	r16, 4072(r12)
	l.lwz	r23, 8428(r22)
	l.addi	r28, r28, 3996
	l.lwz	r24, 8408(r22)
	l.lwz	r25, 8420(r22)
	l.lwz	r26, 8424(r22)
	l.sfne	r6, r16
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB38_65
	l.nop	0
	l.jalr	r6
	l.nop	0                       # in delay slot
	l.sfgtsi	r11, -1
	l.bf	.LBB38_80
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3330
	l.sfgtsi	r8, -1
	l.addi	r20, r20, 2664          # CFC
	l.bf	.LBB38_81
	l.nop	0
.LBB38_83:
	l.addi	r18, r18, 667
	l.addi	r20, r20, 1334          # CFC
	l.lwz	r11, -272(r2)
	l.addi	r28, r28, 4002
	l.lwz	r8, 4080(r12)
	l.addi	r18, r18, 3335
	l.lwz	r31, 8432(r22)
	l.addi	r20, r20, 2668          # CFC
.LBB38_12:                              # %do.body44.preheader
	l.addi	r18, r18, 668
	l.ori	r3, r11, 0
	l.lwz	r4, -276(r2)
	l.addi	r20, r20, 1336          # CFC
	l.lwz	r5, -296(r2)
	l.ori	r13, r8, 0
	l.addi	r28, r28, 4008
	l.lwz	r14, 4076(r12)
	l.lwz	r15, 4056(r12)
	l.addi	r18, r18, 3340
	l.ori	r23, r31, 0
	l.lwz	r24, 8428(r22)
	l.lwz	r25, 8408(r22)
	l.addi	r20, r20, 2672          # CFC
.LBB38_13:                              # %do.body44
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 669
	l.lbz	r6, 0(r4)
	l.lbz	r7, 0(r5)
	l.sb	0(r4), r7
	l.sb	0(r5), r6
	l.addi	r5, r5, 1
	l.lbz	r16, 4352(r14)
	l.lbz	r17, 4352(r15)
	l.addi	r20, r20, 1338          # CFC
	l.sb	4352(r14), r17
	l.addi	r4, r4, 1
	l.sb	4352(r15), r16
	l.lbz	r26, 8704(r24)
	l.addi	r3, r3, -1
	l.addi	r15, r15, 1
	l.lbz	r27, 8704(r25)
	l.addi	r28, r28, 4014
	l.sfnei	r3, 0
	l.addi	r14, r14, 1
	l.addi	r13, r13, -1
	l.sb	8704(r24), r27
	l.sb	8704(r25), r26
	l.addi	r25, r25, 1
	l.addi	r24, r24, 1
	l.addi	r23, r23, -1
	l.bf	.LBB38_84
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3345
	l.sfnei	r13, 0
	l.addi	r20, r20, 2676          # CFC
	l.bf	.LBB38_85
	l.nop	0
.LBB38_14:                              # %jump_over
	l.addi	r18, r18, 670
	l.lwz	r3, -296(r2)
	l.ori	r4, r11, 0
	l.add	r6, r3, r4
	l.lwz	r7, -304(r2)
	l.lwz	r3, -284(r2)
	l.addi	r20, r20, 1340          # CFC
	l.lwz	r13, 4056(r12)
	l.ori	r14, r8, 0
	l.add	r16, r13, r14
	l.lwz	r3, -280(r2)
	l.lwz	r17, 4048(r12)
	l.addi	r28, r28, 4020
	l.lwz	r23, 8408(r22)
	l.lwz	r4, -276(r2)
	l.lwz	r13, 4068(r12)
	l.ori	r24, r31, 0
	l.lwz	r13, 4072(r12)
	l.addi	r18, r18, 3350
	l.lwz	r14, 4076(r12)
	l.add	r26, r23, r24
	l.lwz	r27, 8400(r22)
	l.lwz	r23, 8420(r22)
	l.lwz	r23, 8424(r22)
	l.lwz	r24, 8428(r22)
	l.addi	r20, r20, 2680          # CFC
.LBB38_15:                              # %do.body57
	l.addi	r18, r18, 671
	l.sw	-268(r2), r6
	l.sw	-276(r2), r4
	l.sw	-288(r2), r7
	l.ori	r3, r6, 0
	l.lwz	r5, -284(r2)
	l.sw	4084(r12), r16
	l.addi	r20, r20, 1342          # CFC
	l.sw	4076(r12), r14
	l.sw	4064(r12), r17
	l.lwz	r6, -280(r2)
	l.ori	r13, r16, 0
	l.sw	8436(r22), r26
	l.lwz	r15, 4068(r12)
	l.lwz	r16, 4072(r12)
	l.addi	r28, r28, 4026
	l.sw	8428(r22), r24
	l.sw	8416(r22), r27
	l.ori	r23, r26, 0
	l.lwz	r25, 8420(r22)
	l.lwz	r26, 8424(r22)
	l.sfne	r6, r16
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB38_65
	l.nop	0
	l.jalr	r6
	l.nop	0                       # in delay slot
	l.sfgtsi	r11, -1
	l.bf	.LBB38_86
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3355
	l.sfgtsi	r8, -1
	l.addi	r20, r20, 2684          # CFC
	l.bf	.LBB38_87
	l.nop	0
.LBB38_16:                              # %while.body61
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 672
	l.lwz	r3, -268(r2)
	l.lwz	r4, -272(r2)
	l.add	r3, r3, r4
	l.sw	-268(r2), r3
	l.lwz	r4, -276(r2)
	l.lwz	r13, 4084(r12)
	l.lwz	r14, 4080(r12)
	l.addi	r20, r20, 1344          # CFC
	l.add	r13, r13, r14
	l.lwz	r5, -284(r2)
	l.sw	4084(r12), r13
	l.lwz	r23, 8436(r22)
	l.lwz	r6, -280(r2)
	l.lwz	r14, 4076(r12)
	l.lwz	r24, 8432(r22)
	l.lwz	r15, 4068(r12)
	l.addi	r28, r28, 4032
	l.lwz	r16, 4072(r12)
	l.add	r23, r23, r24
	l.sw	8436(r22), r23
	l.lwz	r24, 8428(r22)
	l.lwz	r25, 8420(r22)
	l.lwz	r26, 8424(r22)
	l.sfne	r6, r16
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB38_65
	l.nop	0
	l.jalr	r6
	l.nop	0                       # in delay slot
	l.sfltsi	r11, 0
	l.bf	.LBB38_88
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3360
	l.sfltsi	r8, 0
	l.addi	r20, r20, 2688          # CFC
	l.bf	.LBB38_89
	l.nop	0
.LBB38_17:                              # %while.cond63.preheader
	l.addi	r18, r18, 673
	l.lwz	r3, -268(r2)
	l.sw	-268(r2), r3
	l.lwz	r3, -276(r2)
	l.lwz	r4, -288(r2)
	l.lwz	r5, -284(r2)
	l.lwz	r13, 4084(r12)
	l.sw	4084(r12), r13
	l.addi	r20, r20, 1346          # CFC
	l.lwz	r13, 4076(r12)
	l.lwz	r6, -280(r2)
	l.lwz	r14, 4064(r12)
	l.lwz	r23, 8436(r22)
	l.lwz	r15, 4068(r12)
	l.lwz	r16, 4072(r12)
	l.sw	8436(r22), r23
	l.lwz	r23, 8428(r22)
	l.addi	r28, r28, 4038
	l.lwz	r24, 8416(r22)
	l.lwz	r25, 8420(r22)
	l.lwz	r26, 8424(r22)
	l.sfne	r6, r16
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB38_65
	l.nop	0
	l.jalr	r6
	l.nop	0                       # in delay slot
	l.sfgtsi	r11, -1
	l.lwz	r3, -292(r2)
	l.lwz	r13, 4060(r12)
	l.lwz	r23, 8412(r22)
	l.bf	.LBB38_90
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3365
	l.sfgtsi	r8, -1
	l.addi	r20, r20, 2692          # CFC
	l.bf	.LBB38_91
	l.nop	0
.LBB38_18:                              # %while.body66
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 674
	l.lwz	r4, -288(r2)
	l.add	r4, r4, r3
	l.lwz	r3, -276(r2)
	l.sw	-288(r2), r4
	l.lwz	r5, -284(r2)
	l.lwz	r14, 4064(r12)
	l.add	r14, r14, r13
	l.addi	r20, r20, 1348          # CFC
	l.lwz	r13, 4076(r12)
	l.lwz	r6, -280(r2)
	l.sw	4064(r12), r14
	l.lwz	r24, 8416(r22)
	l.lwz	r15, 4068(r12)
	l.lwz	r16, 4072(r12)
	l.add	r24, r24, r23
	l.lwz	r23, 8428(r22)
	l.addi	r28, r28, 4044
	l.sw	8416(r22), r24
	l.lwz	r25, 8420(r22)
	l.lwz	r26, 8424(r22)
	l.sfne	r6, r16
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB38_65
	l.nop	0
	l.jalr	r6
	l.nop	0                       # in delay slot
	l.lwz	r3, -292(r2)
	l.sfltsi	r11, 0
	l.lwz	r13, 4060(r12)
	l.lwz	r23, 8412(r22)
	l.bf	.LBB38_92
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3370
	l.sfltsi	r8, 0
	l.addi	r20, r20, 2696          # CFC
	l.bf	.LBB38_93
	l.nop	0
.LBB38_19:                              # %while.end69
	l.addi	r18, r18, 675
	l.lwz	r3, -276(r2)
	l.lwz	r6, -268(r2)
	l.lwz	r3, -288(r2)
	l.sfgeu	r6, r3
	l.addi	r20, r20, 1350          # CFC
	l.ori	r7, r3, 0
	l.lwz	r13, 4076(r12)
	l.lwz	r16, 4084(r12)
	l.lwz	r13, 4064(r12)
	l.addi	r28, r28, 4050
	l.ori	r17, r13, 0
	l.lwz	r23, 8428(r22)
	l.lwz	r26, 8436(r22)
	l.lwz	r23, 8416(r22)
	l.ori	r27, r23, 0
	l.bf	.LBB38_94
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3375
	l.sfgeu	r16, r13
	l.addi	r20, r20, 2700          # CFC
	l.bf	.LBB38_95
	l.nop	0
.LBB38_20:                              # %do.body76.preheader
	l.addi	r18, r18, 676
	l.movhi	r3, 0
	l.addi	r20, r20, 1352          # CFC
	l.lwz	r4, -272(r2)
	l.movhi	r13, 0
	l.addi	r28, r28, 4056
	l.lwz	r14, 4080(r12)
	l.addi	r18, r18, 3380
	l.movhi	r23, 0
	l.lwz	r24, 8432(r22)
	l.addi	r20, r20, 2704          # CFC
.LBB38_21:                              # %do.body76
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 677
	l.add	r4, r7, r3
	l.lwz	r5, -268(r2)
	l.add	r5, r5, r3
	l.lbz	r6, 0(r5)
	l.ori	r11, r7, 0
	l.add	r14, r17, r13
	l.lwz	r15, 4084(r12)
	l.add	r15, r15, r13
	l.lbz	r7, 0(r4)
	l.lbz	r16, 4352(r15)
	l.add	r24, r27, r23
	l.addi	r20, r20, 1354          # CFC
	l.sb	0(r5), r7
	l.ori	r8, r17, 0
	l.lwz	r25, 8436(r22)
	l.ori	r7, r11, 0
	l.lbz	r17, 4352(r14)
	l.add	r25, r25, r23
	l.sb	0(r4), r6
	l.sb	4352(r15), r17
	l.lbz	r26, 8704(r25)
	l.addi	r3, r3, 1
	l.ori	r17, r8, 0
	l.addi	r28, r28, 4062
	l.ori	r31, r27, 0
	l.lwz	r4, -272(r2)
	l.sb	4352(r14), r16
	l.lbz	r27, 8704(r24)
	l.sfne	r4, r3
	l.addi	r13, r13, 1
	l.lwz	r14, 4080(r12)
	l.sb	8704(r25), r27
	l.ori	r27, r31, 0
	l.sb	8704(r24), r26
	l.addi	r23, r23, 1
	l.lwz	r24, 8432(r22)
	l.bf	.LBB38_96
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3385
	l.sfne	r14, r13
	l.addi	r20, r20, 2708          # CFC
	l.bf	.LBB38_97
	l.nop	0
.LBB38_22:                              # %do.end83
	l.addi	r18, r18, 678
	l.lwz	r5, -272(r2)
	l.lwz	r4, -276(r2)
	l.sfeq	r4, r7
	l.lwz	r3, -268(r2)
	l.lwz	r6, -284(r2)
	l.addi	r20, r20, 1356          # CFC
	l.lwz	r6, -280(r2)
	l.lwz	r15, 4080(r12)
	l.lwz	r14, 4076(r12)
	l.lwz	r13, 4084(r12)
	l.lwz	r16, 4068(r12)
	l.addi	r28, r28, 4068
	l.lwz	r16, 4072(r12)
	l.lwz	r25, 8432(r22)
	l.lwz	r24, 8428(r22)
	l.lwz	r23, 8436(r22)
	l.lwz	r26, 8420(r22)
	l.lwz	r26, 8424(r22)
	l.bf	.LBB38_98
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3390
	l.sfeq	r14, r17
	l.addi	r20, r20, 2712          # CFC
	l.bf	.LBB38_99
	l.nop	0
.LBB38_23:                              # %do.end83
	l.addi	r18, r18, 679
	l.addi	r20, r20, 1358          # CFC
	l.ori	r3, r4, 0
	l.addi	r28, r28, 4074
	l.ori	r13, r14, 0
	l.addi	r18, r18, 3395
	l.ori	r23, r24, 0
	l.addi	r20, r20, 2716          # CFC
.LBB38_24:                              # %do.end83
	l.addi	r18, r18, 680
	l.lwz	r6, -268(r2)
	l.addi	r20, r20, 1360          # CFC
	l.sfeq	r4, r6
	l.addi	r28, r28, 4080
	l.lwz	r16, 4084(r12)
	l.lwz	r26, 8436(r22)
	l.bf	.LBB38_100
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3400
	l.sfeq	r14, r16
	l.addi	r20, r20, 2720          # CFC
	l.bf	.LBB38_101
	l.nop	0
.LBB38_103:
	l.addi	r18, r18, 681
	l.ori	r4, r7, 0
	l.addi	r20, r20, 1362          # CFC
	l.lwz	r7, -292(r2)
	l.ori	r14, r17, 0
	l.addi	r28, r28, 4086
	l.lwz	r17, 4060(r12)
	l.addi	r18, r18, 3405
	l.ori	r24, r27, 0
	l.lwz	r27, 8412(r22)
	l.addi	r20, r20, 2724          # CFC
.LBB38_25:                              # %do.end83
	l.addi	r18, r18, 682
	l.addi	r20, r20, 1364          # CFC
	l.ori	r4, r3, 0
	l.addi	r28, r28, 4092
	l.ori	r14, r13, 0
	l.addi	r18, r18, 3410
	l.ori	r24, r23, 0
	l.addi	r20, r20, 2728          # CFC
.LBB38_26:                              # %do.end83
	l.addi	r18, r18, 683
	l.add	r11, r11, r7
	l.ori	r7, r11, 0
	l.lwz	r6, -268(r2)
	l.addi	r20, r20, 1366          # CFC
	l.add	r6, r6, r5
	l.lwz	r3, -280(r2)
	l.add	r8, r8, r17
	l.ori	r17, r8, 0
	l.addi	r28, r28, 4098
	l.lwz	r16, 4084(r12)
	l.add	r16, r16, r15
	l.lwz	r13, 4072(r12)
	l.add	r31, r31, r27
	l.addi	r18, r18, 3415
	l.ori	r27, r31, 0
	l.lwz	r26, 8436(r22)
	l.add	r26, r26, r25
	l.lwz	r23, 8424(r22)
	l.addi	r20, r20, 2732          # CFC
	l.j	.LBB38_27
	l.nop	0                       # in delay slot
.LBB38_28:                              # %if.else96
	l.addi	r18, r18, 684
	l.sfne	r6, r7
	l.lwz	r3, -284(r2)
	l.lwz	r3, -280(r2)
	l.lwz	r11, -272(r2)
	l.addi	r20, r20, 1368          # CFC
	l.lwz	r4, -276(r2)
	l.lwz	r13, 4068(r12)
	l.lwz	r13, 4072(r12)
	l.lwz	r8, 4080(r12)
	l.addi	r28, r28, 4104
	l.lwz	r14, 4076(r12)
	l.lwz	r23, 8420(r22)
	l.lwz	r23, 8424(r22)
	l.lwz	r31, 8432(r22)
	l.lwz	r24, 8428(r22)
	l.bf	.LBB38_104
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3420
	l.sfne	r16, r17
	l.addi	r20, r20, 2736          # CFC
	l.bf	.LBB38_105
	l.nop	0
.LBB38_29:                              # %if.then98
	l.addi	r18, r18, 685
	l.lwz	r3, -292(r2)
	l.add	r7, r6, r3
	l.addi	r20, r20, 1370          # CFC
	l.add	r6, r6, r11
	l.lwz	r13, 4060(r12)
	l.addi	r28, r28, 4110
	l.add	r17, r16, r13
	l.add	r16, r16, r8
	l.addi	r18, r18, 3425
	l.lwz	r23, 8412(r22)
	l.add	r27, r26, r23
	l.add	r26, r26, r31
	l.addi	r20, r20, 2740          # CFC
	l.j	.LBB38_30
	l.nop	0                       # in delay slot
.LBB38_27:                              # %do.cond104
	l.sfleu	r6, r7
	l.bf	.LBB38_106
	l.nop	0                       # in delay slot
	l.sfleu	r16, r17
	l.bf	.LBB38_107
	l.nop	0
.LBB38_30:                              # %do.end106
	l.addi	r18, r18, 686
	l.ori	r5, r6, 0
	l.lwz	r3, -300(r2)
	l.sub	r3, r3, r5
	l.lwz	r4, -296(r2)
	l.sub	r4, r7, r4
	l.ori	r15, r16, 0
	l.lwz	r13, 4052(r12)
	l.addi	r20, r20, 1372          # CFC
	l.sub	r13, r13, r15
	l.ori	r6, r7, 0
	l.lwz	r14, 4056(r12)
	l.ori	r25, r26, 0
	l.lwz	r7, -308(r2)
	l.sub	r14, r17, r14
	l.lwz	r23, 8404(r22)
	l.addi	r28, r28, 4116
	l.sfgtu	r4, r7
	l.ori	r16, r17, 0
	l.lwz	r17, 4044(r12)
	l.sub	r23, r23, r25
	l.lwz	r24, 8408(r22)
	l.sub	r24, r27, r24
	l.ori	r26, r27, 0
	l.lwz	r27, 8396(r22)
	l.bf	.LBB38_108
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3430
	l.sfgtu	r14, r17
	l.addi	r20, r20, 2744          # CFC
	l.bf	.LBB38_109
	l.nop	0
.LBB38_31:                              # %if.then111
	l.addi	r18, r18, 687
	l.sfgtu	r3, r7
	l.lwz	r11, -284(r2)
	l.addi	r20, r20, 1374          # CFC
	l.lwz	r6, -280(r2)
	l.lwz	r8, 4068(r12)
	l.addi	r28, r28, 4122
	l.lwz	r16, 4072(r12)
	l.lwz	r31, 8420(r22)
	l.lwz	r26, 8424(r22)
	l.bf	.LBB38_110
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3435
	l.sfgtu	r13, r17
	l.addi	r20, r20, 2748          # CFC
	l.bf	.LBB38_111
	l.nop	0
.LBB38_113:
	l.addi	r18, r18, 688
	l.ori	r3, r5, 0
	l.addi	r20, r20, 1376          # CFC
	l.lwz	r5, -272(r2)
	l.ori	r13, r15, 0
	l.addi	r28, r28, 4128
	l.lwz	r15, 4080(r12)
	l.addi	r18, r18, 3440
	l.ori	r23, r25, 0
	l.lwz	r25, 8432(r22)
	l.addi	r20, r20, 2752          # CFC
.LBB38_32:                              # %if.then116
	l.addi	r18, r18, 689
	l.lwz	r4, -312(r2)
	l.lwz	r3, -4(r4)
	l.sw	-288(r2), r3
	l.lwz	r3, -8(r4)
	l.addi	r20, r20, 1378          # CFC
	l.sw	-296(r2), r3
	l.lwz	r14, 4040(r12)
	l.lwz	r13, 4348(r14)
	l.sw	4064(r12), r13
	l.addi	r4, r4, -8
	l.addi	r28, r28, 4134
	l.lwz	r13, 4344(r14)
	l.lwz	r24, 8392(r22)
	l.sw	4056(r12), r13
	l.addi	r14, r14, -8
	l.addi	r18, r18, 3445
	l.lwz	r23, 8700(r24)
	l.sw	8416(r22), r23
	l.lwz	r23, 8696(r24)
	l.sw	8408(r22), r23
	l.addi	r24, r24, -8
	l.addi	r20, r20, 2756          # CFC
	l.j	.LBB38_33
	l.nop	0                       # in delay slot
.LBB38_34:                              # %if.else122
	l.addi	r18, r18, 690
	l.sw	-268(r2), r5
	l.sw	-288(r2), r6
	l.sfleu	r3, r7
	l.lwz	r5, -272(r2)
	l.lwz	r11, -284(r2)
	l.addi	r20, r20, 1380          # CFC
	l.lwz	r6, -280(r2)
	l.sw	4084(r12), r15
	l.sw	4064(r12), r16
	l.lwz	r15, 4080(r12)
	l.lwz	r8, 4068(r12)
	l.addi	r28, r28, 4140
	l.lwz	r16, 4072(r12)
	l.sw	8436(r22), r25
	l.sw	8416(r22), r26
	l.lwz	r25, 8432(r22)
	l.lwz	r31, 8420(r22)
	l.lwz	r26, 8424(r22)
	l.bf	.LBB38_114
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3450
	l.sfleu	r13, r17
	l.addi	r20, r20, 2760          # CFC
	l.bf	.LBB38_115
	l.nop	0
.LBB38_35:                              # %if.else128
	l.sfles	r4, r3
	l.bf	.LBB38_116
	l.nop	0                       # in delay slot
	l.sfles	r14, r13
	l.bf	.LBB38_117
	l.nop	0
.LBB38_119:
	l.addi	r18, r18, 691
	l.addi	r20, r20, 1382          # CFC
	l.lwz	r4, -312(r2)
	l.addi	r28, r28, 4146
	l.lwz	r14, 4040(r12)
	l.addi	r18, r18, 3455
	l.lwz	r24, 8392(r22)
	l.addi	r20, r20, 2764          # CFC
.LBB38_36:                              # %if.then136
	l.addi	r18, r18, 692
	l.lwz	r3, -296(r2)
	l.sw	0(r4), r3
	l.lwz	r3, -288(r2)
	l.sw	4(r4), r3
	l.addi	r4, r4, 8
	l.lwz	r13, 4056(r12)
	l.addi	r20, r20, 1384          # CFC
	l.sw	4352(r14), r13
	l.lwz	r13, 4064(r12)
	l.lwz	r3, -300(r2)
	l.sw	4356(r14), r13
	l.lwz	r23, 8408(r22)
	l.sw	-288(r2), r3
	l.addi	r14, r14, 8
	l.addi	r28, r28, 4152
	l.sw	8704(r24), r23
	l.lwz	r3, -268(r2)
	l.lwz	r13, 4052(r12)
	l.lwz	r23, 8416(r22)
	l.sw	-296(r2), r3
	l.sw	4064(r12), r13
	l.sw	8708(r24), r23
	l.addi	r18, r18, 3460
	l.lwz	r13, 4084(r12)
	l.sw	4056(r12), r13
	l.addi	r24, r24, 8
	l.lwz	r23, 8404(r22)
	l.sw	8416(r22), r23
	l.lwz	r23, 8436(r22)
	l.sw	8408(r22), r23
	l.addi	r20, r20, 2768          # CFC
	l.j	.LBB38_33
	l.nop	0                       # in delay slot
.LBB38_37:                              # %if.else140
	l.addi	r18, r18, 693
	l.lwz	r3, -268(r2)
	l.sw	0(r4), r3
	l.lwz	r3, -300(r2)
	l.addi	r20, r20, 1386          # CFC
	l.sw	4(r4), r3
	l.addi	r4, r4, 8
	l.lwz	r13, 4084(r12)
	l.sw	4352(r14), r13
	l.addi	r28, r28, 4158
	l.lwz	r13, 4052(r12)
	l.sw	4356(r14), r13
	l.addi	r14, r14, 8
	l.lwz	r23, 8436(r22)
	l.addi	r18, r18, 3465
	l.sw	8704(r24), r23
	l.lwz	r23, 8404(r22)
	l.sw	8708(r24), r23
	l.addi	r24, r24, 8
	l.addi	r20, r20, 2772          # CFC
.LBB38_33:                              # %while.cond.outer.backedge
	l.addi	r18, r18, 694
	l.addi	r3, r2, -264
	l.addi	r20, r20, 1388          # CFC
	l.sfltu	r3, r4
	l.addi	r28, r28, 4164
	l.addi	r13, r12, -264
	l.addi	r23, r22, -264
	l.bf	.LBB38_120
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3470
	l.sfltu	r13, r14
	l.addi	r20, r20, 2776          # CFC
	l.bf	.LBB38_121
	l.nop	0
.LBB38_38:                              # %while.end147.split
	l.addi	r18, r18, 695
	l.lwz	r6, -320(r2)
	l.lwz	r3, -316(r2)
	l.addi	r20, r20, 1390          # CFC
	l.lwz	r5, -272(r2)
	l.lwz	r16, 4032(r12)
	l.addi	r28, r28, 4170
	l.lwz	r13, 4036(r12)
	l.lwz	r15, 4080(r12)
	l.addi	r18, r18, 3475
	l.lwz	r26, 8384(r22)
	l.lwz	r23, 8388(r22)
	l.lwz	r25, 8432(r22)
	l.addi	r20, r20, 2780          # CFC
.LBB38_39:                              # %if.end148
	l.addi	r18, r18, 696
	l.add	r4, r3, r5
	l.add	r3, r3, r7
	l.sfltu	r6, r3
	l.addi	r20, r20, 1392          # CFC
	l.ori	r11, r6, 0
	l.add	r14, r13, r15
	l.add	r13, r13, r17
	l.addi	r28, r28, 4176
	l.ori	r8, r16, 0
	l.add	r24, r23, r25
	l.add	r23, r23, r27
	l.ori	r31, r26, 0
	l.bf	.LBB38_122
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3480
	l.sfltu	r16, r13
	l.addi	r20, r20, 2784          # CFC
	l.bf	.LBB38_123
	l.nop	0
.LBB38_40:                              # %if.end148
	l.addi	r18, r18, 697
	l.addi	r20, r20, 1394          # CFC
	l.ori	r11, r3, 0
	l.addi	r28, r28, 4182
	l.ori	r8, r13, 0
	l.addi	r18, r18, 3485
	l.ori	r31, r23, 0
	l.addi	r20, r20, 2788          # CFC
.LBB38_41:                              # %if.end148
	l.addi	r18, r18, 698
	l.sw	-300(r2), r4
	l.addi	r20, r20, 1396          # CFC
	l.sfgtu	r4, r11
	l.addi	r28, r28, 4188
	l.sw	4052(r12), r14
	l.sw	8404(r22), r24
	l.bf	.LBB38_124
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3490
	l.sfgtu	r14, r8
	l.addi	r20, r20, 2792          # CFC
	l.bf	.LBB38_125
	l.nop	0
.LBB38_42:                              # %for.body.preheader
	l.addi	r18, r18, 699
	l.lwz	r3, -300(r2)
	l.lwz	r4, -316(r2)
	l.lwz	r5, -284(r2)
	l.addi	r20, r20, 1398          # CFC
	l.lwz	r6, -280(r2)
	l.sw	-288(r2), r11
	l.lwz	r13, 4052(r12)
	l.lwz	r14, 4036(r12)
	l.addi	r28, r28, 4194
	l.lwz	r15, 4068(r12)
	l.lwz	r16, 4072(r12)
	l.sw	4064(r12), r8
	l.lwz	r23, 8404(r22)
	l.addi	r18, r18, 3495
	l.lwz	r24, 8388(r22)
	l.lwz	r25, 8420(r22)
	l.lwz	r26, 8424(r22)
	l.sw	8416(r22), r31
	l.addi	r20, r20, 2796          # CFC
.LBB38_43:                              # %for.body
	l.addi	r18, r18, 700
	l.sw	-268(r2), r3
	l.sw	-276(r2), r4
	l.lwz	r6, -280(r2)
	l.sw	4084(r12), r13
	l.sw	4076(r12), r14
	l.addi	r20, r20, 1400          # CFC
	l.lwz	r16, 4072(r12)
	l.sw	8436(r22), r23
	l.sw	8428(r22), r24
	l.lwz	r26, 8424(r22)
	l.sfne	r6, r16
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB38_65
	l.nop	0
	l.jalr	r6
	l.nop	0                       # in delay slot
	l.lwz	r3, -268(r2)
	l.addi	r28, r28, 4200
	l.sfltsi	r11, 0
	l.ori	r6, r3, 0
	l.lwz	r13, 4084(r12)
	l.ori	r16, r13, 0
	l.lwz	r23, 8436(r22)
	l.ori	r26, r23, 0
	l.bf	.LBB38_126
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3500
	l.sfltsi	r8, 0
	l.addi	r20, r20, 2800          # CFC
	l.bf	.LBB38_127
	l.nop	0
.LBB38_44:                              # %for.body
	l.addi	r18, r18, 701
	l.addi	r20, r20, 1402          # CFC
	l.lwz	r6, -276(r2)
	l.addi	r28, r28, 4206
	l.lwz	r16, 4076(r12)
	l.addi	r18, r18, 3505
	l.lwz	r26, 8428(r22)
	l.addi	r20, r20, 2804          # CFC
.LBB38_45:                              # %for.body
	l.addi	r18, r18, 702
	l.lwz	r4, -272(r2)
	l.add	r3, r3, r4
	l.lwz	r11, -288(r2)
	l.sfleu	r3, r11
	l.ori	r4, r6, 0
	l.lwz	r14, 4080(r12)
	l.addi	r20, r20, 1404          # CFC
	l.add	r13, r13, r14
	l.lwz	r8, 4064(r12)
	l.lwz	r5, -284(r2)
	l.ori	r14, r16, 0
	l.lwz	r24, 8432(r22)
	l.lwz	r7, -280(r2)
	l.addi	r28, r28, 4212
	l.lwz	r15, 4068(r12)
	l.lwz	r17, 4072(r12)
	l.add	r23, r23, r24
	l.lwz	r31, 8416(r22)
	l.ori	r24, r26, 0
	l.lwz	r25, 8420(r22)
	l.lwz	r27, 8424(r22)
	l.bf	.LBB38_128
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3510
	l.sfleu	r13, r8
	l.addi	r20, r20, 2808          # CFC
	l.bf	.LBB38_129
	l.nop	0
.LBB38_46:                              # %for.end
	l.addi	r18, r18, 703
	l.lwz	r4, -316(r2)
	l.sfeq	r6, r4
	l.addi	r20, r20, 1406          # CFC
	l.lwz	r5, -272(r2)
	l.lwz	r14, 4036(r12)
	l.addi	r28, r28, 4218
	l.lwz	r15, 4080(r12)
	l.lwz	r24, 8388(r22)
	l.lwz	r25, 8432(r22)
	l.bf	.LBB38_130
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3515
	l.sfeq	r16, r14
	l.addi	r20, r20, 2812          # CFC
	l.bf	.LBB38_131
	l.nop	0
.LBB38_47:                              # %do.body168.preheader
	l.addi	r18, r18, 704
	l.ori	r4, r5, 0
	l.addi	r20, r20, 1408          # CFC
	l.lwz	r11, -316(r2)
	l.ori	r14, r15, 0
	l.addi	r28, r28, 4224
	l.lwz	r8, 4036(r12)
	l.addi	r18, r18, 3520
	l.ori	r24, r25, 0
	l.lwz	r31, 8388(r22)
	l.addi	r20, r20, 2816          # CFC
.LBB38_48:                              # %do.body168
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 705
	l.lbz	r3, 0(r6)
	l.lbz	r7, 0(r11)
	l.sb	0(r6), r7
	l.sb	0(r11), r3
	l.addi	r11, r11, 1
	l.lbz	r13, 4352(r16)
	l.lbz	r17, 4352(r8)
	l.addi	r20, r20, 1410          # CFC
	l.sb	4352(r16), r17
	l.addi	r6, r6, 1
	l.sb	4352(r8), r13
	l.lbz	r23, 8704(r26)
	l.addi	r4, r4, -1
	l.addi	r8, r8, 1
	l.lbz	r27, 8704(r31)
	l.addi	r28, r28, 4230
	l.sfnei	r4, 0
	l.addi	r16, r16, 1
	l.addi	r14, r14, -1
	l.sb	8704(r26), r27
	l.sb	8704(r31), r23
	l.addi	r31, r31, 1
	l.addi	r26, r26, 1
	l.addi	r24, r24, -1
	l.bf	.LBB38_132
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3525
	l.sfnei	r14, 0
	l.addi	r20, r20, 2820          # CFC
	l.bf	.LBB38_133
	l.nop	0
.LBB38_49:                              # %while.cond180.preheader
	l.addi	r18, r18, 706
	l.lwz	r7, -300(r2)
	l.add	r11, r7, r5
	l.lwz	r3, -320(r2)
	l.addi	r20, r20, 1412          # CFC
	l.sfgtu	r11, r3
	l.lwz	r17, 4052(r12)
	l.add	r8, r17, r15
	l.addi	r28, r28, 4236
	l.lwz	r13, 4032(r12)
	l.lwz	r27, 8404(r22)
	l.add	r31, r27, r25
	l.lwz	r23, 8384(r22)
	l.bf	.LBB38_134
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3530
	l.sfgtu	r8, r13
	l.addi	r20, r20, 2824          # CFC
	l.bf	.LBB38_135
	l.nop	0
.LBB38_137:
	l.addi	r18, r18, 707
	l.addi	r20, r20, 1414          # CFC
	l.lwz	r3, -316(r2)
	l.addi	r28, r28, 4242
	l.lwz	r13, 4036(r12)
	l.addi	r18, r18, 3535
	l.lwz	r23, 8388(r22)
	l.addi	r20, r20, 2828          # CFC
.LBB38_50:                              # %while.body183.lr.ph
	l.addi	r18, r18, 708
	l.movhi	r4, 0
	l.sub	r4, r4, r3
	l.muli	r6, r5, 3
	l.sw	-308(r2), r11
	l.sub	r11, r4, r6
	l.movhi	r14, 0
	l.sub	r14, r14, r13
	l.muli	r16, r15, 3
	l.add	r4, r3, r6
	l.sw	4044(r12), r8
	l.movhi	r24, 0
	l.slli	r6, r5, 1
	l.sub	r8, r14, r16
	l.addi	r20, r20, 1416          # CFC
	l.sub	r24, r24, r23
	l.add	r3, r3, r6
	l.add	r14, r13, r16
	l.muli	r26, r25, 3
	l.movhi	r6, 0
	l.slli	r16, r15, 1
	l.sw	8396(r22), r31
	l.sub	r6, r6, r5
	l.add	r13, r13, r16
	l.sub	r31, r24, r26
	l.sw	-304(r2), r6
	l.movhi	r16, 0
	l.add	r24, r23, r26
	l.addi	r3, r3, -1
	l.addi	r28, r28, 4248
	l.sub	r16, r16, r15
	l.slli	r26, r25, 1
	l.sw	-268(r2), r3
	l.sw	4048(r12), r16
	l.add	r23, r23, r26
	l.addi	r3, r4, -1
	l.addi	r13, r13, -1
	l.movhi	r26, 0
	l.sw	-276(r2), r3
	l.sw	4084(r12), r13
	l.sub	r26, r26, r25
	l.lwz	r6, -308(r2)
	l.addi	r13, r14, -1
	l.addi	r18, r18, 3540
	l.sw	8400(r22), r26
	l.movhi	r3, 0
	l.sw	4076(r12), r13
	l.addi	r23, r23, -1
	l.sw	-312(r2), r3
	l.lwz	r16, 4044(r12)
	l.sw	8436(r22), r23
	l.movhi	r13, 0
	l.sw	4040(r12), r13
	l.addi	r23, r24, -1
	l.sw	8428(r22), r23
	l.lwz	r26, 8396(r22)
	l.movhi	r23, 0
	l.sw	8392(r22), r23
	l.addi	r20, r20, 2832          # CFC
	l.j	.LBB38_51
	l.nop	0                       # in delay slot
.LBB38_55:                              # %if.then195
	l.addi	r18, r18, 709
	l.lwz	r3, -308(r2)
	l.addi	r4, r3, -1
	l.addi	r20, r20, 1418          # CFC
	l.sfltu	r4, r6
	l.lwz	r13, 4044(r12)
	l.addi	r28, r28, 4254
	l.addi	r14, r13, -1
	l.lwz	r23, 8396(r22)
	l.addi	r24, r23, -1
	l.bf	.LBB38_138
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3545
	l.sfltu	r14, r16
	l.addi	r20, r20, 2836          # CFC
	l.bf	.LBB38_139
	l.nop	0
.LBB38_56:                              # %while.body200.preheader
	l.addi	r18, r18, 710
	l.movhi	r3, 0
	l.sub	r5, r3, r5
	l.lwz	r3, -312(r2)
	l.addi	r20, r20, 1420          # CFC
	l.sw	-288(r2), r3
	l.movhi	r13, 0
	l.sub	r15, r13, r15
	l.addi	r28, r28, 4260
	l.lwz	r13, 4040(r12)
	l.sw	4064(r12), r13
	l.movhi	r23, 0
	l.addi	r18, r18, 3550
	l.sub	r25, r23, r25
	l.lwz	r23, 8392(r22)
	l.sw	8416(r22), r23
	l.addi	r20, r20, 2840          # CFC
.LBB38_57:                              # %while.body200
	l.addi	r18, r18, 711
	l.lwz	r3, -304(r2)
	l.add	r11, r4, r3
	l.lbz	r3, 0(r4)
	l.addi	r20, r20, 1422          # CFC
	l.sfltu	r11, r5
	l.lwz	r13, 4048(r12)
	l.add	r8, r14, r13
	l.addi	r28, r28, 4266
	l.lbz	r13, 4352(r14)
	l.lwz	r23, 8400(r22)
	l.add	r31, r24, r23
	l.lbz	r23, 8704(r24)
	l.bf	.LBB38_140
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3555
	l.sfltu	r8, r15
	l.addi	r20, r20, 2844          # CFC
	l.bf	.LBB38_141
	l.nop	0
.LBB38_143:
	l.addi	r18, r18, 712
	l.addi	r20, r20, 1424          # CFC
	l.ori	r11, r4, 0
	l.addi	r28, r28, 4272
	l.ori	r8, r14, 0
	l.addi	r18, r18, 3560
	l.ori	r31, r24, 0
	l.addi	r20, r20, 2848          # CFC
.LBB38_58:                              # %for.body207.preheader
	l.addi	r18, r18, 713
	l.sw	-292(r2), r3
	l.lwz	r11, -288(r2)
	l.addi	r20, r20, 1426          # CFC
	l.lwz	r6, -272(r2)
	l.sw	4060(r12), r13
	l.addi	r28, r28, 4278
	l.lwz	r8, 4064(r12)
	l.lwz	r16, 4080(r12)
	l.addi	r18, r18, 3565
	l.sw	8412(r22), r23
	l.lwz	r31, 8416(r22)
	l.lwz	r26, 8432(r22)
	l.addi	r20, r20, 2852          # CFC
.LBB38_59:                              # %for.body207
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 714
	l.add	r3, r7, r11
	l.lwz	r7, -268(r2)
	l.add	r7, r7, r11
	l.lbz	r7, 0(r7)
	l.sb	0(r3), r7
	l.add	r13, r17, r8
	l.lwz	r17, 4084(r12)
	l.add	r17, r17, r8
	l.lwz	r7, -276(r2)
	l.addi	r20, r20, 1428          # CFC
	l.lbz	r17, 4352(r17)
	l.add	r23, r27, r31
	l.sub	r11, r11, r6
	l.sb	4352(r13), r17
	l.lwz	r27, 8436(r22)
	l.lwz	r3, -268(r2)
	l.lwz	r17, 4076(r12)
	l.add	r27, r27, r31
	l.add	r3, r3, r11
	l.addi	r28, r28, 4284
	l.sub	r8, r8, r16
	l.lbz	r27, 8704(r27)
	l.sfgeu	r3, r5
	l.lwz	r13, 4084(r12)
	l.add	r13, r13, r8
	l.sb	8704(r23), r27
	l.lwz	r27, 8428(r22)
	l.sub	r31, r31, r26
	l.lwz	r23, 8436(r22)
	l.add	r23, r23, r31
	l.bf	.LBB38_144
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3570
	l.sfgeu	r13, r15
	l.addi	r20, r20, 2856          # CFC
	l.bf	.LBB38_145
	l.nop	0
.LBB38_60:                              # %for.end209.loopexit
	l.addi	r18, r18, 715
	l.add	r11, r7, r11
	l.lwz	r6, -296(r2)
	l.addi	r20, r20, 1430          # CFC
	l.lwz	r3, -292(r2)
	l.add	r8, r17, r8
	l.addi	r28, r28, 4290
	l.lwz	r16, 4056(r12)
	l.lwz	r13, 4060(r12)
	l.addi	r18, r18, 3575
	l.add	r31, r27, r31
	l.lwz	r26, 8408(r22)
	l.lwz	r23, 8412(r22)
	l.addi	r20, r20, 2860          # CFC
.LBB38_61:                              # %for.end209
	l.addi	r18, r18, 716
	l.sb	0(r11), r3
	l.lwz	r3, -288(r2)
	l.addi	r3, r3, -1
	l.sw	-288(r2), r3
	l.addi	r4, r4, -1
	l.addi	r20, r20, 1432          # CFC
	l.sfltu	r4, r6
	l.sb	4352(r8), r13
	l.lwz	r13, 4064(r12)
	l.addi	r13, r13, -1
	l.sw	4064(r12), r13
	l.addi	r28, r28, 4296
	l.addi	r14, r14, -1
	l.sb	8704(r31), r23
	l.lwz	r23, 8416(r22)
	l.addi	r23, r23, -1
	l.sw	8416(r22), r23
	l.addi	r24, r24, -1
	l.bf	.LBB38_146
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3580
	l.sfltu	r14, r16
	l.addi	r20, r20, 2864          # CFC
	l.bf	.LBB38_147
	l.nop	0
.LBB38_63:                              # %for.end209
	l.j	.LBB38_57
	l.nop	0                       # in delay slot
.LBB38_51:                              # %while.body183
	l.addi	r18, r18, 717
	l.sw	-300(r2), r7
	l.sw	-316(r2), r11
	l.ori	r3, r11, 0
	l.movhi	r4, 0
	l.lwz	r5, -284(r2)
	l.addi	r20, r20, 1434          # CFC
	l.sw	4052(r12), r17
	l.sw	4036(r12), r8
	l.ori	r13, r8, 0
	l.lwz	r5, -280(r2)
	l.movhi	r14, 0
	l.addi	r28, r28, 4302
	l.sw	8404(r22), r27
	l.sw	-296(r2), r6
	l.lwz	r15, 4068(r12)
	l.sw	8388(r22), r31
	l.lwz	r15, 4072(r12)
	l.addi	r18, r18, 3585
	l.sw	4056(r12), r16
	l.ori	r23, r31, 0
	l.movhi	r24, 0
	l.lwz	r25, 8420(r22)
	l.lwz	r25, 8424(r22)
	l.sw	8408(r22), r26
	l.addi	r20, r20, 2868          # CFC
.LBB38_52:                              # %while.cond186
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 718
	l.sw	-292(r2), r3
	l.sw	-288(r2), r4
	l.lwz	r3, -288(r2)
	l.lwz	r4, -300(r2)
	l.add	r4, r4, r3
	l.sw	4060(r12), r13
	l.sw	4064(r12), r14
	l.lwz	r13, 4064(r12)
	l.ori	r3, r6, 0
	l.lwz	r14, 4052(r12)
	l.sw	8412(r22), r23
	l.lwz	r5, -284(r2)
	l.add	r14, r14, r13
	l.sw	8416(r22), r24
	l.addi	r20, r20, 1436          # CFC
	l.lwz	r6, -280(r2)
	l.ori	r13, r16, 0
	l.lwz	r23, 8416(r22)
	l.lwz	r15, 4068(r12)
	l.lwz	r16, 4072(r12)
	l.lwz	r24, 8404(r22)
	l.add	r24, r24, r23
	l.ori	r23, r26, 0
	l.lwz	r25, 8420(r22)
	l.lwz	r26, 8424(r22)
	l.sfne	r6, r16
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB38_65
	l.nop	0
	l.jalr	r6
	l.nop	0                       # in delay slot
	l.lwz	r3, -292(r2)
	l.lwz	r4, -288(r2)
	l.lwz	r6, -296(r2)
	l.lwz	r5, -272(r2)
	l.addi	r28, r28, 4308
	l.add	r3, r3, r5
	l.lwz	r13, 4060(r12)
	l.lwz	r14, 4064(r12)
	l.lwz	r16, 4056(r12)
	l.sub	r4, r4, r5
	l.lwz	r15, 4080(r12)
	l.lwz	r23, 8412(r22)
	l.sfltsi	r11, 0
	l.add	r13, r13, r15
	l.sub	r14, r14, r15
	l.lwz	r24, 8416(r22)
	l.lwz	r26, 8408(r22)
	l.lwz	r25, 8432(r22)
	l.add	r23, r23, r25
	l.sub	r24, r24, r25
	l.bf	.LBB38_148
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3590
	l.sfltsi	r8, 0
	l.addi	r20, r20, 2872          # CFC
	l.bf	.LBB38_149
	l.nop	0
.LBB38_53:                              # %while.end192
	l.addi	r18, r18, 719
	l.ori	r5, r3, 0
	l.lwz	r3, -300(r2)
	l.lwz	r3, -272(r2)
	l.add	r3, r6, r3
	l.sw	-308(r2), r3
	l.ori	r15, r13, 0
	l.lwz	r13, 4052(r12)
	l.addi	r20, r20, 1438          # CFC
	l.lwz	r13, 4080(r12)
	l.lwz	r3, -304(r2)
	l.add	r13, r16, r13
	l.ori	r25, r23, 0
	l.sfne	r3, r4
	l.sw	4044(r12), r13
	l.lwz	r23, 8404(r22)
	l.addi	r28, r28, 4314
	l.lwz	r7, -276(r2)
	l.lwz	r13, 4048(r12)
	l.lwz	r17, 4076(r12)
	l.lwz	r23, 8432(r22)
	l.add	r23, r26, r23
	l.sw	8396(r22), r23
	l.lwz	r23, 8400(r22)
	l.lwz	r27, 8428(r22)
	l.bf	.LBB38_150
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3595
	l.sfne	r13, r14
	l.addi	r20, r20, 2876          # CFC
	l.bf	.LBB38_151
	l.nop	0
.LBB38_54:                              # %while.cond180.backedge
	l.addi	r18, r18, 720
	l.lwz	r5, -272(r2)
	l.lwz	r3, -312(r2)
	l.add	r3, r3, r5
	l.sw	-312(r2), r3
	l.lwz	r7, -300(r2)
	l.lwz	r15, 4080(r12)
	l.lwz	r13, 4040(r12)
	l.add	r13, r13, r15
	l.add	r7, r7, r5
	l.sw	4040(r12), r13
	l.addi	r20, r20, 1440          # CFC
	l.lwz	r25, 8432(r22)
	l.lwz	r11, -316(r2)
	l.lwz	r17, 4052(r12)
	l.lwz	r23, 8392(r22)
	l.sub	r11, r11, r5
	l.add	r17, r17, r15
	l.add	r23, r23, r25
	l.lwz	r3, -320(r2)
	l.lwz	r8, 4036(r12)
	l.sw	8392(r22), r23
	l.addi	r28, r28, 4320
	l.lwz	r6, -308(r2)
	l.sub	r8, r8, r15
	l.lwz	r27, 8404(r22)
	l.sfgtu	r6, r3
	l.lwz	r13, 4032(r12)
	l.lwz	r16, 4044(r12)
	l.add	r27, r27, r25
	l.lwz	r31, 8388(r22)
	l.sub	r31, r31, r25
	l.lwz	r23, 8384(r22)
	l.lwz	r26, 8396(r22)
	l.bf	.LBB38_152
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3600
	l.sfgtu	r16, r13
	l.addi	r20, r20, 2880          # CFC
	l.bf	.LBB38_153
	l.nop	0
.LBB38_64:                              # %while.cond180.backedge
	l.j	.LBB38_51
	l.nop	0                       # in delay slot
.LBB38_62:                              # %cleanup
	l.addi	r18, r18, 721
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 1442          # CFC
	l.lwz	r9, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 4326
	l.lwz	r12, 4344(r10)
	l.lwz	r19, 4348(r10)
	l.addi	r18, r18, 3605
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8696(r21)
	l.lwz	r29, 8700(r21)
	l.addi	r20, r20, 2884          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB38_65
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB38_65:                              # %cleanup
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB38_154
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB38_154
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB38_154
	l.nop	0
	l.nop	205
.LBB38_154:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB38_155
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB38_155
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB38_155
	l.nop	0
	l.nop	205
.LBB38_155:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB38_156
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB38_156
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB38_156
	l.nop	0
	l.nop	205
.LBB38_156:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB38_157
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB38_157
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB38_157
	l.nop	0
	l.nop	205
.LBB38_157:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB38_158
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB38_158
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB38_158
	l.nop	0
	l.nop	205
.LBB38_158:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB38_159
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB38_159
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB38_159
	l.nop	0
	l.nop	205
.LBB38_159:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB38_160
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB38_160
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB38_160
	l.nop	0
	l.nop	205
.LBB38_160:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB38_161
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB38_161
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB38_161
	l.nop	0
	l.nop	205
.LBB38_161:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB38_162
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB38_162
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB38_162
	l.nop	0
	l.nop	205
.LBB38_162:
.LBB38_163:
	l.jr	r30
	l.nop	0
.LBB38_66:
	l.addi	r18, r18, 3270
	l.sfeqi	r14, 0
	l.addi	r20, r20, 2616          # CFC
	l.bf	.LBB38_62
	l.nop	0
.LBB38_67:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfeqi	r4, 0
	l.bf	.LBB38_62
	l.nop	0
	l.j	.LBB38_1
	l.nop	0
.LBB38_68:
	l.addi	r18, r18, 3275
	l.sfltui	r14, 5
	l.addi	r20, r20, 2620          # CFC
	l.bf	.LBB38_39
	l.nop	0
.LBB38_69:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfltui	r4, 5
	l.bf	.LBB38_39
	l.nop	0
	l.j	.LBB38_2
	l.nop	0
.LBB38_70:
	l.addi	r18, r18, 3295
	l.sfgtsi	r8, -1
	l.addi	r20, r20, 2636          # CFC
	l.bf	.LBB38_8
	l.nop	0
.LBB38_71:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfgtsi	r11, -1
	l.bf	.LBB38_8
	l.nop	0
	l.j	.LBB38_6
	l.nop	0
.LBB38_72:
	l.addi	r18, r18, 3305
	l.sfnei	r15, 0
	l.addi	r20, r20, 2644          # CFC
	l.bf	.LBB38_7
	l.nop	0
.LBB38_73:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfnei	r5, 0
	l.bf	.LBB38_7
	l.nop	0
	l.j	.LBB38_8
	l.nop	0
.LBB38_74:
	l.addi	r18, r18, 3310
	l.sfgtsi	r8, -1
	l.addi	r20, r20, 2648          # CFC
	l.bf	.LBB38_76
	l.nop	0
.LBB38_75:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfgtsi	r11, -1
	l.bf	.LBB38_76
	l.nop	0
	l.j	.LBB38_77
	l.nop	0
.LBB38_76:
	l.addi	r18, r18, 722
	l.addi	r20, r20, 1444          # CFC
	l.lwz	r11, -272(r2)
	l.addi	r28, r28, 4332
	l.lwz	r8, 4080(r12)
	l.addi	r18, r18, 3610
	l.lwz	r31, 8432(r22)
	l.addi	r20, r20, 2888          # CFC
	l.j	.LBB38_14
	l.nop	0
.LBB38_78:
	l.addi	r18, r18, 3325
	l.sfnei	r13, 0
	l.addi	r20, r20, 2660          # CFC
	l.bf	.LBB38_10
	l.nop	0
.LBB38_79:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB38_10
	l.nop	0
	l.j	.LBB38_11
	l.nop	0
.LBB38_80:
	l.addi	r18, r18, 3330
	l.sfgtsi	r8, -1
	l.addi	r20, r20, 2664          # CFC
	l.bf	.LBB38_82
	l.nop	0
.LBB38_81:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfgtsi	r11, -1
	l.bf	.LBB38_82
	l.nop	0
	l.j	.LBB38_83
	l.nop	0
.LBB38_82:
	l.addi	r18, r18, 723
	l.addi	r20, r20, 1446          # CFC
	l.lwz	r11, -272(r2)
	l.addi	r28, r28, 4338
	l.lwz	r8, 4080(r12)
	l.addi	r18, r18, 3615
	l.lwz	r31, 8432(r22)
	l.addi	r20, r20, 2892          # CFC
	l.j	.LBB38_14
	l.nop	0
.LBB38_84:
	l.addi	r18, r18, 3345
	l.sfnei	r13, 0
	l.addi	r20, r20, 2676          # CFC
	l.bf	.LBB38_13
	l.nop	0
.LBB38_85:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfnei	r3, 0
	l.bf	.LBB38_13
	l.nop	0
	l.j	.LBB38_14
	l.nop	0
.LBB38_86:
	l.addi	r18, r18, 3355
	l.sfgtsi	r8, -1
	l.addi	r20, r20, 2684          # CFC
	l.bf	.LBB38_17
	l.nop	0
.LBB38_87:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfgtsi	r11, -1
	l.bf	.LBB38_17
	l.nop	0
	l.j	.LBB38_16
	l.nop	0
.LBB38_88:
	l.addi	r18, r18, 3360
	l.sfltsi	r8, 0
	l.addi	r20, r20, 2688          # CFC
	l.bf	.LBB38_16
	l.nop	0
.LBB38_89:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfltsi	r11, 0
	l.bf	.LBB38_16
	l.nop	0
	l.j	.LBB38_17
	l.nop	0
.LBB38_90:
	l.addi	r18, r18, 3365
	l.sfgtsi	r8, -1
	l.addi	r20, r20, 2692          # CFC
	l.bf	.LBB38_19
	l.nop	0
.LBB38_91:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfgtsi	r11, -1
	l.bf	.LBB38_19
	l.nop	0
	l.j	.LBB38_18
	l.nop	0
.LBB38_92:
	l.addi	r18, r18, 3370
	l.sfltsi	r8, 0
	l.addi	r20, r20, 2696          # CFC
	l.bf	.LBB38_18
	l.nop	0
.LBB38_93:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfltsi	r11, 0
	l.bf	.LBB38_18
	l.nop	0
	l.j	.LBB38_19
	l.nop	0
.LBB38_94:
	l.addi	r18, r18, 3375
	l.sfgeu	r16, r13
	l.addi	r20, r20, 2700          # CFC
	l.bf	.LBB38_28
	l.nop	0
.LBB38_95:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfgeu	r6, r3
	l.bf	.LBB38_28
	l.nop	0
	l.j	.LBB38_20
	l.nop	0
.LBB38_96:
	l.addi	r18, r18, 3385
	l.sfne	r14, r13
	l.addi	r20, r20, 2708          # CFC
	l.bf	.LBB38_21
	l.nop	0
.LBB38_97:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfne	r4, r3
	l.bf	.LBB38_21
	l.nop	0
	l.j	.LBB38_22
	l.nop	0
.LBB38_98:
	l.addi	r18, r18, 3390
	l.sfeq	r14, r17
	l.addi	r20, r20, 2712          # CFC
	l.bf	.LBB38_24
	l.nop	0
.LBB38_99:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfeq	r4, r7
	l.bf	.LBB38_24
	l.nop	0
	l.j	.LBB38_23
	l.nop	0
.LBB38_100:
	l.addi	r18, r18, 3400
	l.sfeq	r14, r16
	l.addi	r20, r20, 2720          # CFC
	l.bf	.LBB38_102
	l.nop	0
.LBB38_101:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfeq	r4, r6
	l.bf	.LBB38_102
	l.nop	0
	l.j	.LBB38_103
	l.nop	0
.LBB38_102:
	l.addi	r18, r18, 724
	l.ori	r4, r7, 0
	l.addi	r20, r20, 1448          # CFC
	l.lwz	r7, -292(r2)
	l.ori	r14, r17, 0
	l.addi	r28, r28, 4344
	l.lwz	r17, 4060(r12)
	l.addi	r18, r18, 3620
	l.ori	r24, r27, 0
	l.lwz	r27, 8412(r22)
	l.addi	r20, r20, 2896          # CFC
	l.j	.LBB38_26
	l.nop	0
.LBB38_104:
	l.addi	r18, r18, 3420
	l.sfne	r16, r17
	l.addi	r20, r20, 2736          # CFC
	l.bf	.LBB38_27
	l.nop	0
.LBB38_105:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfne	r6, r7
	l.bf	.LBB38_27
	l.nop	0
	l.j	.LBB38_29
	l.nop	0
.LBB38_106:
	l.sfleu	r16, r17
	l.bf	.LBB38_15
	l.nop	0
.LBB38_107:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfleu	r6, r7
	l.bf	.LBB38_15
	l.nop	0
	l.j	.LBB38_30
	l.nop	0
.LBB38_108:
	l.addi	r18, r18, 3430
	l.sfgtu	r14, r17
	l.addi	r20, r20, 2744          # CFC
	l.bf	.LBB38_34
	l.nop	0
.LBB38_109:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfgtu	r4, r7
	l.bf	.LBB38_34
	l.nop	0
	l.j	.LBB38_31
	l.nop	0
.LBB38_110:
	l.addi	r18, r18, 3435
	l.sfgtu	r13, r17
	l.addi	r20, r20, 2748          # CFC
	l.bf	.LBB38_112
	l.nop	0
.LBB38_111:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfgtu	r3, r7
	l.bf	.LBB38_112
	l.nop	0
	l.j	.LBB38_113
	l.nop	0
.LBB38_112:
	l.addi	r18, r18, 725
	l.ori	r3, r5, 0
	l.addi	r20, r20, 1450          # CFC
	l.lwz	r5, -272(r2)
	l.ori	r13, r15, 0
	l.addi	r28, r28, 4350
	l.lwz	r15, 4080(r12)
	l.addi	r18, r18, 3625
	l.ori	r23, r25, 0
	l.lwz	r25, 8432(r22)
	l.addi	r20, r20, 2900          # CFC
	l.j	.LBB38_5
	l.nop	0
.LBB38_114:
	l.addi	r18, r18, 3450
	l.sfleu	r13, r17
	l.addi	r20, r20, 2760          # CFC
	l.bf	.LBB38_4
	l.nop	0
.LBB38_115:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfleu	r3, r7
	l.bf	.LBB38_4
	l.nop	0
	l.j	.LBB38_35
	l.nop	0
.LBB38_116:
	l.sfles	r14, r13
	l.bf	.LBB38_118
	l.nop	0
.LBB38_117:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfles	r4, r3
	l.bf	.LBB38_118
	l.nop	0
	l.j	.LBB38_119
	l.nop	0
.LBB38_118:
	l.addi	r18, r18, 726
	l.addi	r20, r20, 1452          # CFC
	l.lwz	r4, -312(r2)
	l.addi	r28, r28, 4356
	l.lwz	r14, 4040(r12)
	l.addi	r18, r18, 3630
	l.lwz	r24, 8392(r22)
	l.addi	r20, r20, 2904          # CFC
	l.j	.LBB38_37
	l.nop	0
.LBB38_120:
	l.addi	r18, r18, 3470
	l.sfltu	r13, r14
	l.addi	r20, r20, 2776          # CFC
	l.bf	.LBB38_3
	l.nop	0
.LBB38_121:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfltu	r3, r4
	l.bf	.LBB38_3
	l.nop	0
	l.j	.LBB38_38
	l.nop	0
.LBB38_122:
	l.addi	r18, r18, 3480
	l.sfltu	r16, r13
	l.addi	r20, r20, 2784          # CFC
	l.bf	.LBB38_41
	l.nop	0
.LBB38_123:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfltu	r6, r3
	l.bf	.LBB38_41
	l.nop	0
	l.j	.LBB38_40
	l.nop	0
.LBB38_124:
	l.addi	r18, r18, 3490
	l.sfgtu	r14, r8
	l.addi	r20, r20, 2792          # CFC
	l.bf	.LBB38_49
	l.nop	0
.LBB38_125:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfgtu	r4, r11
	l.bf	.LBB38_49
	l.nop	0
	l.j	.LBB38_42
	l.nop	0
.LBB38_126:
	l.addi	r18, r18, 3500
	l.sfltsi	r8, 0
	l.addi	r20, r20, 2800          # CFC
	l.bf	.LBB38_45
	l.nop	0
.LBB38_127:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfltsi	r11, 0
	l.bf	.LBB38_45
	l.nop	0
	l.j	.LBB38_44
	l.nop	0
.LBB38_128:
	l.addi	r18, r18, 3510
	l.sfleu	r13, r8
	l.addi	r20, r20, 2808          # CFC
	l.bf	.LBB38_43
	l.nop	0
.LBB38_129:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfleu	r3, r11
	l.bf	.LBB38_43
	l.nop	0
	l.j	.LBB38_46
	l.nop	0
.LBB38_130:
	l.addi	r18, r18, 3515
	l.sfeq	r16, r14
	l.addi	r20, r20, 2812          # CFC
	l.bf	.LBB38_49
	l.nop	0
.LBB38_131:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfeq	r6, r4
	l.bf	.LBB38_49
	l.nop	0
	l.j	.LBB38_47
	l.nop	0
.LBB38_132:
	l.addi	r18, r18, 3525
	l.sfnei	r14, 0
	l.addi	r20, r20, 2820          # CFC
	l.bf	.LBB38_48
	l.nop	0
.LBB38_133:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfnei	r4, 0
	l.bf	.LBB38_48
	l.nop	0
	l.j	.LBB38_49
	l.nop	0
.LBB38_134:
	l.addi	r18, r18, 3530
	l.sfgtu	r8, r13
	l.addi	r20, r20, 2824          # CFC
	l.bf	.LBB38_136
	l.nop	0
.LBB38_135:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfgtu	r11, r3
	l.bf	.LBB38_136
	l.nop	0
	l.j	.LBB38_137
	l.nop	0
.LBB38_136:
	l.addi	r18, r18, 727
	l.addi	r20, r20, 1454          # CFC
	l.lwz	r3, -316(r2)
	l.addi	r28, r28, 4362
	l.lwz	r13, 4036(r12)
	l.addi	r18, r18, 3635
	l.lwz	r23, 8388(r22)
	l.addi	r20, r20, 2908          # CFC
	l.j	.LBB38_62
	l.nop	0
.LBB38_138:
	l.addi	r18, r18, 3545
	l.sfltu	r14, r16
	l.addi	r20, r20, 2836          # CFC
	l.bf	.LBB38_54
	l.nop	0
.LBB38_139:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfltu	r4, r6
	l.bf	.LBB38_54
	l.nop	0
	l.j	.LBB38_56
	l.nop	0
.LBB38_140:
	l.addi	r18, r18, 3555
	l.sfltu	r8, r15
	l.addi	r20, r20, 2844          # CFC
	l.bf	.LBB38_142
	l.nop	0
.LBB38_141:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfltu	r11, r5
	l.bf	.LBB38_142
	l.nop	0
	l.j	.LBB38_143
	l.nop	0
.LBB38_142:
	l.addi	r18, r18, 728
	l.addi	r20, r20, 1456          # CFC
	l.ori	r11, r4, 0
	l.addi	r28, r28, 4368
	l.ori	r8, r14, 0
	l.addi	r18, r18, 3640
	l.ori	r31, r24, 0
	l.addi	r20, r20, 2912          # CFC
	l.j	.LBB38_61
	l.nop	0
.LBB38_144:
	l.addi	r18, r18, 3570
	l.sfgeu	r13, r15
	l.addi	r20, r20, 2856          # CFC
	l.bf	.LBB38_59
	l.nop	0
.LBB38_145:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfgeu	r3, r5
	l.bf	.LBB38_59
	l.nop	0
	l.j	.LBB38_60
	l.nop	0
.LBB38_146:
	l.addi	r18, r18, 3580
	l.sfltu	r14, r16
	l.addi	r20, r20, 2864          # CFC
	l.bf	.LBB38_54
	l.nop	0
.LBB38_147:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfltu	r4, r6
	l.bf	.LBB38_54
	l.nop	0
	l.j	.LBB38_63
	l.nop	0
.LBB38_148:
	l.addi	r18, r18, 3590
	l.sfltsi	r8, 0
	l.addi	r20, r20, 2872          # CFC
	l.bf	.LBB38_52
	l.nop	0
.LBB38_149:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfltsi	r11, 0
	l.bf	.LBB38_52
	l.nop	0
	l.j	.LBB38_53
	l.nop	0
.LBB38_150:
	l.addi	r18, r18, 3595
	l.sfne	r13, r14
	l.addi	r20, r20, 2876          # CFC
	l.bf	.LBB38_55
	l.nop	0
.LBB38_151:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfne	r3, r4
	l.bf	.LBB38_55
	l.nop	0
	l.j	.LBB38_54
	l.nop	0
.LBB38_152:
	l.addi	r18, r18, 3600
	l.sfgtu	r16, r13
	l.addi	r20, r20, 2880          # CFC
	l.bf	.LBB38_62
	l.nop	0
.LBB38_153:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB38_65
	l.nop	0
	l.sfgtu	r6, r3
	l.bf	.LBB38_62
	l.nop	0
	l.j	.LBB38_64
	l.nop	0
.Lfunc_end38:
	.size	_quicksort, .Lfunc_end38-_quicksort

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
	l.addi	r18, r18, 729
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -24
	l.movhi	r3, hi(globalInput)
	l.sw	4348(r10), r19
	l.addi	r20, r20, 1458          # CFC
	l.sw	4344(r10), r12
	l.addi	r12, r10, 0
	l.ori	r3, r3, lo(globalInput)
	l.addi	r10, r10, -24
	l.sw	8700(r21), r29
	l.movhi	r4, hi(compare)
	l.movhi	r13, hi(globalInput)
	l.sw	8696(r21), r22
	l.ori	r6, r4, lo(compare)
	l.ori	r13, r13, lo(globalInput)
	l.addi	r22, r21, 0             # CFC
	l.addi	r4, r0, 30
	l.movhi	r14, hi(compare)
	l.addi	r21, r21, -24           # CFC
	l.addi	r5, r0, 13
	l.addi	r28, r28, 4374
	l.ori	r16, r14, lo(compare)
	l.movhi	r23, hi(globalInput)
	l.movhi	r7, 0
	l.addi	r14, r0, 30
	l.ori	r23, r23, lo(globalInput)
	l.sw	-12(r2), r7
	l.addi	r15, r0, 13
	l.movhi	r24, hi(compare)
	l.sw	-16(r2), r3
	l.movhi	r17, 0
	l.ori	r26, r24, lo(compare)
	l.movhi	r7, 0
	l.sw	4340(r12), r17
	l.addi	r24, r0, 30
	l.sw	4336(r12), r13
	l.addi	r18, r18, 3645
	l.movhi	r17, 0
	l.addi	r25, r0, 13
	l.movhi	r27, 0
	l.sw	8692(r22), r27
	l.sw	8688(r22), r23
	l.movhi	r27, 0
	l.jal	_quicksort
	l.nop	0                       # in delay slot
	l.movhi	r3, hi(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.sw	-20(r2), r3
	l.movhi	r13, hi(.L.str.7)
	l.ori	r13, r13, lo(.L.str.7)
	l.sw	4332(r12), r13
	l.movhi	r23, hi(.L.str.7)
	l.ori	r23, r23, lo(.L.str.7)
	l.sw	8684(r22), r23
	l.addi	r20, r20, 2916          # CFC
.LBB39_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 730
	l.lwz	r3, -16(r2)
	l.lwz	r4, -12(r2)
	l.sw	-12(r2), r4
	l.add	r3, r4, r3
	l.sw	0(r1), r3
	l.lwz	r13, 4336(r12)
	l.lwz	r14, 4340(r12)
	l.sw	4340(r12), r14
	l.lwz	r3, -20(r2)
	l.addi	r20, r20, 1460          # CFC
	l.add	r13, r14, r13
	l.lwz	r23, 8688(r22)
	l.sw	4352(r10), r13
	l.lwz	r13, 4332(r12)
	l.lwz	r24, 8692(r22)
	l.sw	8692(r22), r24
	l.add	r23, r24, r23
	l.sw	8704(r21), r23
	l.lwz	r23, 8684(r22)
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.addi	r28, r28, 4380
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 13
	l.sw	-12(r2), r3
	l.sfnei	r3, 390
	l.lwz	r13, 4340(r12)
	l.addi	r13, r13, 13
	l.sw	4340(r12), r13
	l.lwz	r23, 8692(r22)
	l.addi	r23, r23, 13
	l.sw	8692(r22), r23
	l.bf	.LBB39_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3650
	l.sfnei	r13, 390
	l.addi	r20, r20, 2920          # CFC
	l.bf	.LBB39_5
	l.nop	0
.LBB39_2:                               # %for.end
	l.addi	r18, r18, 731
	l.movhi	r11, 0
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.addi	r20, r20, 1462          # CFC
	l.lwz	r9, -4(r1)
	l.movhi	r8, 0
	l.addi	r10, r12, 0
	l.addi	r28, r28, 4386
	l.lwz	r12, 4344(r10)
	l.lwz	r19, 4348(r10)
	l.movhi	r31, 0
	l.addi	r18, r18, 3655
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8696(r21)
	l.lwz	r29, 8700(r21)
	l.addi	r20, r20, 2924          # CFC
	l.sfne	r9, r19
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.bf	.LBB39_3
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
	l.nop	0                       # in delay slot
.LBB39_3:                               # %for.end
	l.sfeq	r1, r10
	l.cmov	r21, r1, r21
	l.bf	.LBB39_6
	l.sfeq	r10, r21
	l.cmov	r1, r10, r1
	l.bf	.LBB39_6
	l.sfeq	r21, r1
	l.cmov	r10, r21, r10
	l.bf	.LBB39_6
	l.nop	0
	l.nop	205
.LBB39_6:
	l.sfeq	r2, r12
	l.cmov	r22, r2, r22
	l.bf	.LBB39_7
	l.sfeq	r12, r22
	l.cmov	r2, r12, r2
	l.bf	.LBB39_7
	l.sfeq	r22, r2
	l.cmov	r12, r22, r12
	l.bf	.LBB39_7
	l.nop	0
	l.nop	205
.LBB39_7:
	l.sfeq	r3, r13
	l.cmov	r23, r3, r23
	l.bf	.LBB39_8
	l.sfeq	r13, r23
	l.cmov	r3, r13, r3
	l.bf	.LBB39_8
	l.sfeq	r23, r3
	l.cmov	r13, r23, r13
	l.bf	.LBB39_8
	l.nop	0
	l.nop	205
.LBB39_8:
	l.sfeq	r4, r14
	l.cmov	r24, r4, r24
	l.bf	.LBB39_9
	l.sfeq	r14, r24
	l.cmov	r4, r14, r4
	l.bf	.LBB39_9
	l.sfeq	r24, r4
	l.cmov	r14, r24, r14
	l.bf	.LBB39_9
	l.nop	0
	l.nop	205
.LBB39_9:
	l.sfeq	r5, r15
	l.cmov	r25, r5, r25
	l.bf	.LBB39_10
	l.sfeq	r15, r25
	l.cmov	r5, r15, r5
	l.bf	.LBB39_10
	l.sfeq	r25, r5
	l.cmov	r15, r25, r15
	l.bf	.LBB39_10
	l.nop	0
	l.nop	205
.LBB39_10:
	l.sfeq	r6, r16
	l.cmov	r26, r6, r26
	l.bf	.LBB39_11
	l.sfeq	r16, r26
	l.cmov	r6, r16, r6
	l.bf	.LBB39_11
	l.sfeq	r26, r6
	l.cmov	r16, r26, r16
	l.bf	.LBB39_11
	l.nop	0
	l.nop	205
.LBB39_11:
	l.sfeq	r7, r17
	l.cmov	r27, r7, r27
	l.bf	.LBB39_12
	l.sfeq	r17, r27
	l.cmov	r7, r17, r7
	l.bf	.LBB39_12
	l.sfeq	r27, r7
	l.cmov	r17, r27, r17
	l.bf	.LBB39_12
	l.nop	0
	l.nop	205
.LBB39_12:
	l.sfeq	r11, r8
	l.cmov	r31, r11, r31
	l.bf	.LBB39_13
	l.sfeq	r8, r31
	l.cmov	r11, r8, r11
	l.bf	.LBB39_13
	l.sfeq	r31, r11
	l.cmov	r8, r31, r8
	l.bf	.LBB39_13
	l.nop	0
	l.nop	205
.LBB39_13:
	l.sfeq	r9, r19
	l.cmov	r29, r9, r29
	l.bf	.LBB39_14
	l.sfeq	r19, r29
	l.cmov	r9, r19, r9
	l.bf	.LBB39_14
	l.sfeq	r29, r9
	l.cmov	r19, r29, r19
	l.bf	.LBB39_14
	l.nop	0
	l.nop	205
.LBB39_14:
.LBB39_15:
	l.jr	r30
	l.nop	0
.LBB39_4:
	l.addi	r18, r18, 3650
	l.sfnei	r13, 390
	l.addi	r20, r20, 2920          # CFC
	l.bf	.LBB39_1
	l.nop	0
.LBB39_5:
	l.mfspr	r30, r0, 16
	l.addi	r30, r30, 16
	l.j	.LBB39_3
	l.nop	0
	l.sfnei	r3, 390
	l.bf	.LBB39_1
	l.nop	0
	l.j	.LBB39_2
	l.nop	0
.Lfunc_end39:
	.size	main, .Lfunc_end39-main

	.hidden	uart_init
	.globl	uart_init
	.p2align	2
	.type	uart_init,@function
uart_init:                              # @uart_init
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.addi	r18, r18, 732
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r4, 36864
	l.ori	r5, r4, 2
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.addi	r6, r0, 199
	l.movhi	r14, 36864
	l.sw	8700(r21), r22
	l.sb	0(r5), r6
	l.ori	r15, r14, 2
	l.addi	r22, r21, 0             # CFC
	l.ori	r5, r4, 1
	l.addi	r16, r0, 199
	l.addi	r21, r21, -4            # CFC
	l.addi	r20, r20, 1464          # CFC
	l.movhi	r6, 0
	l.sb	4352(r15), r16
	l.movhi	r24, 36864
	l.sb	0(r5), r6
	l.ori	r15, r14, 1
	l.ori	r25, r24, 2
	l.ori	r4, r4, 3
	l.movhi	r16, 0
	l.addi	r26, r0, 199
	l.addi	r7, r0, 3
	l.sb	4352(r15), r16
	l.sb	8704(r25), r26
	l.sb	0(r4), r7
	l.ori	r14, r14, 3
	l.ori	r25, r24, 1
	l.lbz	r7, 0(r4)
	l.addi	r17, r0, 3
	l.movhi	r26, 0
	l.ori	r7, r7, 128
	l.sb	4352(r14), r17
	l.sb	8704(r25), r26
	l.sb	0(r4), r7
	l.lbz	r17, 4352(r14)
	l.addi	r28, r28, 4392
	l.ori	r24, r24, 3
	l.movhi	r7, hi(UART_BASE_ADR)
	l.ori	r17, r17, 128
	l.addi	r27, r0, 3
	l.ori	r7, r7, lo(UART_BASE_ADR)
	l.sb	4352(r14), r17
	l.sb	8704(r24), r27
	l.slli	r3, r3, 2
	l.movhi	r17, hi(UART_BASE_ADR)
	l.lbz	r27, 8704(r24)
	l.add	r3, r3, r7
	l.ori	r17, r17, lo(UART_BASE_ADR)
	l.ori	r27, r27, 128
	l.lwz	r3, 0(r3)
	l.slli	r13, r13, 2
	l.sb	8704(r24), r27
	l.addi	r7, r0, 27
	l.add	r13, r13, r17
	l.movhi	r27, hi(UART_BASE_ADR)
	l.sb	0(r3), r7
	l.lwz	r13, 4352(r13)
	l.ori	r27, r27, lo(UART_BASE_ADR)
	l.sb	0(r5), r6
	l.addi	r18, r18, 3660
	l.addi	r17, r0, 27
	l.slli	r23, r23, 2
	l.lbz	r3, 0(r4)
	l.sb	4352(r13), r17
	l.add	r23, r23, r27
	l.andi	r3, r3, 127
	l.sb	4352(r15), r16
	l.lwz	r23, 8704(r23)
	l.sb	0(r4), r3
	l.lbz	r13, 4352(r14)
	l.addi	r27, r0, 27
	l.addi	r1, r2, 0
	l.andi	r13, r13, 127
	l.sb	8704(r23), r27
	l.lwz	r2, -4(r1)
	l.sb	4352(r14), r13
	l.sb	8704(r25), r26
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.lbz	r23, 8704(r24)
	l.andi	r23, r23, 127
	l.sb	8704(r24), r23
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 2928          # CFC
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
	l.addi	r18, r18, 733
	l.addi	r20, r20, 1466          # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r5, 36864
	l.addi	r28, r28, 4398
	l.ori	r5, r5, 5
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.movhi	r15, 36864
	l.addi	r18, r18, 3665
	l.ori	r15, r15, 5
	l.sw	8700(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r25, 36864
	l.ori	r25, r25, 5
	l.addi	r20, r20, 2932          # CFC
.LBB41_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 734
	l.lbz	r6, 0(r5)
	l.andi	r6, r6, 32
	l.addi	r20, r20, 1468          # CFC
	l.sfeqi	r6, 0
	l.lbz	r16, 4352(r15)
	l.addi	r28, r28, 4404
	l.andi	r16, r16, 32
	l.lbz	r26, 8704(r25)
	l.andi	r26, r26, 32
	l.bf	.LBB41_10
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3670
	l.sfeqi	r16, 0
	l.addi	r20, r20, 2936          # CFC
	l.bf	.LBB41_11
	l.nop	0
.LBB41_2:                               # %do.end
	l.addi	r18, r18, 735
	l.movhi	r5, hi(UART_BASE_ADR)
	l.ori	r5, r5, lo(UART_BASE_ADR)
	l.slli	r3, r3, 2
	l.add	r3, r3, r5
	l.lwz	r3, 0(r3)
	l.movhi	r15, hi(UART_BASE_ADR)
	l.ori	r15, r15, lo(UART_BASE_ADR)
	l.addi	r20, r20, 1470          # CFC
	l.slli	r13, r13, 2
	l.sb	0(r3), r4
	l.add	r13, r13, r15
	l.movhi	r25, hi(UART_BASE_ADR)
	l.andi	r4, r4, 255
	l.lwz	r13, 4352(r13)
	l.ori	r25, r25, lo(UART_BASE_ADR)
	l.addi	r28, r28, 4410
	l.sfnei	r4, 10
	l.sb	4352(r13), r14
	l.andi	r14, r14, 255
	l.slli	r23, r23, 2
	l.add	r23, r23, r25
	l.lwz	r23, 8704(r23)
	l.sb	8704(r23), r24
	l.andi	r24, r24, 255
	l.bf	.LBB41_12
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3675
	l.sfnei	r14, 10
	l.addi	r20, r20, 2940          # CFC
	l.bf	.LBB41_13
	l.nop	0
.LBB41_3:                               # %do.body7.preheader
	l.addi	r18, r18, 736
	l.movhi	r4, 36864
	l.addi	r20, r20, 1472          # CFC
	l.ori	r4, r4, 5
	l.movhi	r14, 36864
	l.addi	r28, r28, 4416
	l.ori	r14, r14, 5
	l.addi	r18, r18, 3680
	l.movhi	r24, 36864
	l.ori	r24, r24, 5
	l.addi	r20, r20, 2944          # CFC
.LBB41_4:                               # %do.body7
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 737
	l.lbz	r5, 0(r4)
	l.andi	r5, r5, 32
	l.addi	r20, r20, 1474          # CFC
	l.sfeqi	r5, 0
	l.lbz	r15, 4352(r14)
	l.addi	r28, r28, 4422
	l.andi	r15, r15, 32
	l.lbz	r25, 8704(r24)
	l.andi	r25, r25, 32
	l.bf	.LBB41_14
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3685
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2948          # CFC
	l.bf	.LBB41_15
	l.nop	0
.LBB41_5:                               # %do.end15
	l.addi	r18, r18, 738
	l.addi	r4, r0, 13
	l.addi	r20, r20, 1476          # CFC
	l.sb	0(r3), r4
	l.addi	r14, r0, 13
	l.addi	r28, r28, 4428
	l.sb	4352(r13), r14
	l.addi	r18, r18, 3690
	l.addi	r24, r0, 13
	l.sb	8704(r23), r24
	l.addi	r20, r20, 2952          # CFC
.LBB41_6:                               # %do.body18.preheader
	l.addi	r18, r18, 739
	l.movhi	r3, 36864
	l.addi	r20, r20, 1478          # CFC
	l.ori	r3, r3, 5
	l.movhi	r13, 36864
	l.addi	r28, r28, 4434
	l.ori	r13, r13, 5
	l.addi	r18, r18, 3695
	l.movhi	r23, 36864
	l.ori	r23, r23, 5
	l.addi	r20, r20, 2956          # CFC
.LBB41_7:                               # %do.body18
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 740
	l.lbz	r4, 0(r3)
	l.andi	r4, r4, 96
	l.addi	r20, r20, 1480          # CFC
	l.sfnei	r4, 96
	l.lbz	r14, 4352(r13)
	l.addi	r28, r28, 4440
	l.andi	r14, r14, 96
	l.lbz	r24, 8704(r23)
	l.andi	r24, r24, 96
	l.bf	.LBB41_16
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3700
	l.sfnei	r14, 96
	l.addi	r20, r20, 2960          # CFC
	l.bf	.LBB41_17
	l.nop	0
.LBB41_8:                               # %do.end26
	l.addi	r18, r18, 741
	l.addi	r1, r2, 0
	l.addi	r20, r20, 1482          # CFC
	l.lwz	r2, -4(r1)
	l.addi	r10, r12, 0
	l.addi	r28, r28, 4446
	l.lwz	r12, 4348(r10)
	l.addi	r18, r18, 3705
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 2964          # CFC
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
	l.addi	r18, r18, 3670
	l.sfeqi	r16, 0
	l.addi	r20, r20, 2936          # CFC
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
	l.addi	r18, r18, 3675
	l.sfnei	r14, 10
	l.addi	r20, r20, 2940          # CFC
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
	l.addi	r18, r18, 3685
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2948          # CFC
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
	l.addi	r18, r18, 3700
	l.sfnei	r14, 96
	l.addi	r20, r20, 2960          # CFC
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
	l.addi	r18, r18, 742
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 1484          # CFC
	l.movhi	r5, hi(UART_BASE_ADR)
	l.ori	r5, r5, lo(UART_BASE_ADR)
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.slli	r3, r3, 2
	l.movhi	r15, hi(UART_BASE_ADR)
	l.sw	8700(r21), r22
	l.add	r3, r3, r5
	l.ori	r15, r15, lo(UART_BASE_ADR)
	l.addi	r28, r28, 4452
	l.addi	r22, r21, 0             # CFC
	l.lwz	r3, 0(r3)
	l.slli	r13, r13, 2
	l.addi	r21, r21, -4            # CFC
	l.sb	0(r3), r4
	l.add	r13, r13, r15
	l.movhi	r25, hi(UART_BASE_ADR)
	l.addi	r1, r2, 0
	l.lwz	r13, 4352(r13)
	l.ori	r25, r25, lo(UART_BASE_ADR)
	l.addi	r18, r18, 3710
	l.lwz	r2, -4(r1)
	l.sb	4352(r13), r14
	l.slli	r23, r23, 2
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.add	r23, r23, r25
	l.lwz	r23, 8704(r23)
	l.sb	8704(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 2968          # CFC
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
	l.addi	r18, r18, 743
	l.addi	r20, r20, 1486          # CFC
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r4, 36864
	l.addi	r28, r28, 4458
	l.ori	r4, r4, 5
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.movhi	r14, 36864
	l.addi	r18, r18, 3715
	l.ori	r14, r14, 5
	l.sw	8700(r21), r22
	l.addi	r22, r21, 0             # CFC
	l.addi	r21, r21, -4            # CFC
	l.movhi	r24, 36864
	l.ori	r24, r24, 5
	l.addi	r20, r20, 2972          # CFC
.LBB43_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r18, r18, 744
	l.lbz	r5, 0(r4)
	l.andi	r5, r5, 1
	l.addi	r20, r20, 1488          # CFC
	l.sfeqi	r5, 0
	l.lbz	r15, 4352(r14)
	l.addi	r28, r28, 4464
	l.andi	r15, r15, 1
	l.lbz	r25, 8704(r24)
	l.andi	r25, r25, 1
	l.bf	.LBB43_4
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 3720
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2976          # CFC
	l.bf	.LBB43_5
	l.nop	0
.LBB43_2:                               # %do.end
	l.addi	r18, r18, 745
	l.movhi	r4, hi(UART_BASE_ADR)
	l.ori	r4, r4, lo(UART_BASE_ADR)
	l.slli	r3, r3, 2
	l.add	r3, r3, r4
	l.lwz	r3, 0(r3)
	l.movhi	r14, hi(UART_BASE_ADR)
	l.addi	r20, r20, 1490          # CFC
	l.ori	r14, r14, lo(UART_BASE_ADR)
	l.slli	r13, r13, 2
	l.lbs	r11, 0(r3)
	l.add	r13, r13, r14
	l.movhi	r24, hi(UART_BASE_ADR)
	l.addi	r1, r2, 0
	l.addi	r28, r28, 4470
	l.lwz	r13, 4352(r13)
	l.ori	r24, r24, lo(UART_BASE_ADR)
	l.lwz	r2, -4(r1)
	l.lbs	r8, 4352(r13)
	l.slli	r23, r23, 2
	l.addi	r10, r12, 0
	l.addi	r18, r18, 3725
	l.lwz	r12, 4348(r10)
	l.add	r23, r23, r24
	l.lwz	r23, 8704(r23)
	l.lbs	r31, 8704(r23)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 2980          # CFC
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
	l.addi	r18, r18, 3720
	l.sfeqi	r15, 0
	l.addi	r20, r20, 2976          # CFC
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
	l.addi	r18, r18, 746
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r20, r20, 1492          # CFC
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.ori	r3, r3, 5
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbz	r3, 0(r3)
	l.movhi	r13, 36864
	l.addi	r28, r28, 4476
	l.sw	8700(r21), r22
	l.andi	r11, r3, 1
	l.ori	r13, r13, 5
	l.addi	r22, r21, 0             # CFC
	l.addi	r1, r2, 0
	l.lbz	r13, 4352(r13)
	l.addi	r21, r21, -4            # CFC
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 3730
	l.andi	r8, r13, 1
	l.movhi	r23, 36864
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.ori	r23, r23, 5
	l.lbz	r23, 8704(r23)
	l.andi	r31, r23, 1
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 2984          # CFC
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
	l.addi	r18, r18, 747
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 1494          # CFC
	l.movhi	r3, 36864
	l.ori	r3, r3, 1
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbz	r4, 0(r3)
	l.movhi	r13, 36864
	l.sw	8700(r21), r22
	l.ori	r4, r4, 1
	l.addi	r28, r28, 4482
	l.ori	r13, r13, 1
	l.addi	r22, r21, 0             # CFC
	l.sb	0(r3), r4
	l.lbz	r14, 4352(r13)
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r2, 0
	l.ori	r14, r14, 1
	l.movhi	r23, 36864
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 3735
	l.sb	4352(r13), r14
	l.ori	r23, r23, 1
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.lbz	r24, 8704(r23)
	l.ori	r24, r24, 1
	l.sb	8704(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 2988          # CFC
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
	l.addi	r18, r18, 748
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 1496          # CFC
	l.movhi	r3, 36864
	l.ori	r3, r3, 1
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbz	r4, 0(r3)
	l.movhi	r13, 36864
	l.sw	8700(r21), r22
	l.andi	r4, r4, 254
	l.addi	r28, r28, 4488
	l.ori	r13, r13, 1
	l.addi	r22, r21, 0             # CFC
	l.sb	0(r3), r4
	l.lbz	r14, 4352(r13)
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r2, 0
	l.andi	r14, r14, 254
	l.movhi	r23, 36864
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 3740
	l.sb	4352(r13), r14
	l.ori	r23, r23, 1
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.lbz	r24, 8704(r23)
	l.andi	r24, r24, 254
	l.sb	8704(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 2992          # CFC
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
	l.addi	r18, r18, 749
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 1498          # CFC
	l.movhi	r3, 36864
	l.ori	r3, r3, 1
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbz	r4, 0(r3)
	l.movhi	r13, 36864
	l.sw	8700(r21), r22
	l.ori	r4, r4, 2
	l.addi	r28, r28, 4494
	l.ori	r13, r13, 1
	l.addi	r22, r21, 0             # CFC
	l.sb	0(r3), r4
	l.lbz	r14, 4352(r13)
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r2, 0
	l.ori	r14, r14, 2
	l.movhi	r23, 36864
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 3745
	l.sb	4352(r13), r14
	l.ori	r23, r23, 1
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.lbz	r24, 8704(r23)
	l.ori	r24, r24, 2
	l.sb	8704(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 2996          # CFC
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
	l.addi	r18, r18, 750
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r20, r20, 1500          # CFC
	l.movhi	r3, 36864
	l.ori	r3, r3, 1
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbz	r4, 0(r3)
	l.movhi	r13, 36864
	l.sw	8700(r21), r22
	l.andi	r4, r4, 253
	l.addi	r28, r28, 4500
	l.ori	r13, r13, 1
	l.addi	r22, r21, 0             # CFC
	l.sb	0(r3), r4
	l.lbz	r14, 4352(r13)
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r2, 0
	l.andi	r14, r14, 253
	l.movhi	r23, 36864
	l.lwz	r2, -4(r1)
	l.addi	r18, r18, 3750
	l.sb	4352(r13), r14
	l.ori	r23, r23, 1
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.lbz	r24, 8704(r23)
	l.andi	r24, r24, 253
	l.sb	8704(r23), r24
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 3000          # CFC
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
	l.addi	r18, r18, 751
	l.sw	-4(r1), r2
	l.addi	r20, r20, 1502          # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.ori	r3, r3, 2
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbs	r11, 0(r3)
	l.addi	r28, r28, 4506
	l.movhi	r13, 36864
	l.sw	8700(r21), r22
	l.addi	r1, r2, 0
	l.ori	r13, r13, 2
	l.addi	r22, r21, 0             # CFC
	l.lwz	r2, -4(r1)
	l.lbs	r8, 4352(r13)
	l.addi	r18, r18, 3755
	l.addi	r21, r21, -4            # CFC
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.movhi	r23, 36864
	l.ori	r23, r23, 2
	l.lbs	r31, 8704(r23)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 3004          # CFC
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
	l.addi	r18, r18, 752
	l.sw	-4(r1), r2
	l.addi	r20, r20, 1504          # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.ori	r3, r3, 5
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbs	r11, 0(r3)
	l.addi	r28, r28, 4512
	l.movhi	r13, 36864
	l.sw	8700(r21), r22
	l.addi	r1, r2, 0
	l.ori	r13, r13, 5
	l.addi	r22, r21, 0             # CFC
	l.lwz	r2, -4(r1)
	l.lbs	r8, 4352(r13)
	l.addi	r18, r18, 3760
	l.addi	r21, r21, -4            # CFC
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.movhi	r23, 36864
	l.ori	r23, r23, 5
	l.lbs	r31, 8704(r23)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 3008          # CFC
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
	l.addi	r18, r18, 753
	l.sw	-4(r1), r2
	l.addi	r20, r20, 1506          # CFC
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.ori	r3, r3, 6
	l.sw	4348(r10), r12
	l.addi	r12, r10, 0
	l.addi	r10, r10, -4
	l.lbs	r11, 0(r3)
	l.addi	r28, r28, 4518
	l.movhi	r13, 36864
	l.sw	8700(r21), r22
	l.addi	r1, r2, 0
	l.ori	r13, r13, 6
	l.addi	r22, r21, 0             # CFC
	l.lwz	r2, -4(r1)
	l.lbs	r8, 4352(r13)
	l.addi	r18, r18, 3765
	l.addi	r21, r21, -4            # CFC
	l.addi	r10, r12, 0
	l.lwz	r12, 4348(r10)
	l.movhi	r23, 36864
	l.ori	r23, r23, 6
	l.lbs	r31, 8704(r23)
	l.addi	r21, r22, 0             # CFC
	l.lwz	r22, 8700(r21)
	l.addi	r20, r20, 3012          # CFC
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

	.type	.L.str,@object          # @.str
.L.str:
	.zero	1
	.size	.L.str, 1

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

	.hidden	globalInput             # @globalInput
	.type	globalInput,@object
	.globl	globalInput
globalInput:
	.asciz	"Kurt\000\000\000\000\000\000\000\000"
	.asciz	"Vonneguts\000\000\000"
	.asciz	"Commencement"
	.asciz	"Address\000\000\000\000\000"
	.asciz	"at\000\000\000\000\000\000\000\000\000\000"
	.asciz	"MIT\000\000\000\000\000\000\000\000\000"
	.asciz	"Ladies\000\000\000\000\000\000"
	.asciz	"and\000\000\000\000\000\000\000\000\000"
	.asciz	"gentlemen\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"class\000\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"97\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Wear\000\000\000\000\000\000\000\000"
	.asciz	"sunscreen\000\000\000"
	.asciz	"If\000\000\000\000\000\000\000\000\000\000"
	.asciz	"I\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"could\000\000\000\000\000\000\000"
	.asciz	"offer\000\000\000\000\000\000\000"
	.asciz	"you\000\000\000\000\000\000\000\000\000"
	.asciz	"only\000\000\000\000\000\000\000\000"
	.asciz	"one\000\000\000\000\000\000\000\000\000"
	.asciz	"tip\000\000\000\000\000\000\000\000\000"
	.asciz	"for\000\000\000\000\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"future\000\000\000\000\000\000"
	.asciz	"sunscreen\000\000\000"
	.asciz	"would\000\000\000\000\000\000\000"
	.asciz	"be\000\000\000\000\000\000\000\000\000\000"
	.asciz	"it\000\000\000\000\000\000\000\000\000\000"
	.asciz	"The\000\000\000\000\000\000\000\000\000"
	.asciz	"longterm\000\000\000\000"
	.asciz	"benefits\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"sunscreen\000\000\000"
	.asciz	"have\000\000\000\000\000\000\000\000"
	.asciz	"been\000\000\000\000\000\000\000\000"
	.asciz	"proved\000\000\000\000\000\000"
	.asciz	"by\000\000\000\000\000\000\000\000\000\000"
	.asciz	"scientists\000\000"
	.asciz	"whereas\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"rest\000\000\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"my\000\000\000\000\000\000\000\000\000\000"
	.asciz	"advice\000\000\000\000\000\000"
	.asciz	"has\000\000\000\000\000\000\000\000\000"
	.asciz	"no\000\000\000\000\000\000\000\000\000\000"
	.asciz	"basis\000\000\000\000\000\000\000"
	.asciz	"more\000\000\000\000\000\000\000\000"
	.asciz	"reliable\000\000\000\000"
	.asciz	"than\000\000\000\000\000\000\000\000"
	.asciz	"my\000\000\000\000\000\000\000\000\000\000"
	.asciz	"own\000\000\000\000\000\000\000\000\000"
	.asciz	"meandering\000\000"
	.asciz	"experience\000\000"
	.asciz	"I\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"will\000\000\000\000\000\000\000\000"
	.asciz	"dispense\000\000\000\000"
	.asciz	"this\000\000\000\000\000\000\000\000"
	.asciz	"advice\000\000\000\000\000\000"
	.asciz	"now\000\000\000\000\000\000\000\000\000"
	.asciz	"Enjoy\000\000\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"power\000\000\000\000\000\000\000"
	.asciz	"and\000\000\000\000\000\000\000\000\000"
	.asciz	"beauty\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"your\000\000\000\000\000\000\000\000"
	.asciz	"youth\000\000\000\000\000\000\000"
	.asciz	"Oh\000\000\000\000\000\000\000\000\000\000"
	.asciz	"never\000\000\000\000\000\000\000"
	.asciz	"mind\000\000\000\000\000\000\000\000"
	.asciz	"You\000\000\000\000\000\000\000\000\000"
	.asciz	"will\000\000\000\000\000\000\000\000"
	.asciz	"not\000\000\000\000\000\000\000\000\000"
	.asciz	"understand\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"power\000\000\000\000\000\000\000"
	.asciz	"and\000\000\000\000\000\000\000\000\000"
	.asciz	"beauty\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"your\000\000\000\000\000\000\000\000"
	.asciz	"youth\000\000\000\000\000\000\000"
	.asciz	"until\000\000\000\000\000\000\000"
	.asciz	"theyve\000\000\000\000\000\000"
	.asciz	"faded\000\000\000\000\000\000\000"
	.asciz	"But\000\000\000\000\000\000\000\000\000"
	.asciz	"trust\000\000\000\000\000\000\000"
	.asciz	"me\000\000\000\000\000\000\000\000\000\000"
	.asciz	"in\000\000\000\000\000\000\000\000\000\000"
	.asciz	"20\000\000\000\000\000\000\000\000\000\000"
	.asciz	"years\000\000\000\000\000\000\000"
	.asciz	"youll\000\000\000\000\000\000\000"
	.asciz	"look\000\000\000\000\000\000\000\000"
	.asciz	"back\000\000\000\000\000\000\000\000"
	.asciz	"at\000\000\000\000\000\000\000\000\000\000"
	.asciz	"photos\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.size	globalInput, 1300

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s\n"
	.size	.L.str.7, 4

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
.LJTI1_0:
	.long	.LBB1_18
	.long	.LBB1_63
	.long	.LBB1_62
	.long	.LBB1_41
	.long	.LBB1_62
	.long	.LBB1_40
	.long	.LBB1_62
	.long	.LBB1_41
	.long	.LBB1_63
	.long	.LBB1_63
	.long	.LBB1_40
	.long	.LBB1_41
	.long	.LBB1_42
	.long	.LBB1_42
	.long	.LBB1_42
	.long	.LBB1_33
.LJTI1_1:
	.long	.LBB1_32
	.long	.LBB1_62
	.long	.LBB1_63
	.long	.LBB1_40


	
	
	.p2align	2
.LJTI26_0:
	.long	.LBB26_11
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_20
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_22
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_26
	.long	.LBB26_29
	.long	.LBB26_144
	.long	.LBB26_28
	.long	.LBB26_30
	.long	.LBB26_144
	.long	.LBB26_40
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_49
	.long	.LBB26_61
	.long	.LBB26_144
	.long	.LBB26_61
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_68
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_86
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_94
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_48
	.long	.LBB26_50
	.long	.LBB26_61
	.long	.LBB26_61
	.long	.LBB26_61
	.long	.LBB26_43
	.long	.LBB26_50
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_44
	.long	.LBB26_144
	.long	.LBB26_62
	.long	.LBB26_69
	.long	.LBB26_76
	.long	.LBB26_47
	.long	.LBB26_144
	.long	.LBB26_77
	.long	.LBB26_144
	.long	.LBB26_87
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_95
	.long	.LBB26_144
	.long	.LBB26_143

	
	
	
#SHADOW1_START
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

	.type	.L.str_SHADOW1,@object          # @.str
.L.str_SHADOW1:
	.zero	1
	.size	.L.str_SHADOW1, 1

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

	.hidden	globalInput_SHADOW1             # @globalInput
	.type	globalInput_SHADOW1,@object
	.globl	globalInput_SHADOW1
globalInput_SHADOW1:
	.asciz	"Kurt\000\000\000\000\000\000\000\000"
	.asciz	"Vonneguts\000\000\000"
	.asciz	"Commencement"
	.asciz	"Address\000\000\000\000\000"
	.asciz	"at\000\000\000\000\000\000\000\000\000\000"
	.asciz	"MIT\000\000\000\000\000\000\000\000\000"
	.asciz	"Ladies\000\000\000\000\000\000"
	.asciz	"and\000\000\000\000\000\000\000\000\000"
	.asciz	"gentlemen\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"class\000\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"97\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Wear\000\000\000\000\000\000\000\000"
	.asciz	"sunscreen\000\000\000"
	.asciz	"If\000\000\000\000\000\000\000\000\000\000"
	.asciz	"I\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"could\000\000\000\000\000\000\000"
	.asciz	"offer\000\000\000\000\000\000\000"
	.asciz	"you\000\000\000\000\000\000\000\000\000"
	.asciz	"only\000\000\000\000\000\000\000\000"
	.asciz	"one\000\000\000\000\000\000\000\000\000"
	.asciz	"tip\000\000\000\000\000\000\000\000\000"
	.asciz	"for\000\000\000\000\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"future\000\000\000\000\000\000"
	.asciz	"sunscreen\000\000\000"
	.asciz	"would\000\000\000\000\000\000\000"
	.asciz	"be\000\000\000\000\000\000\000\000\000\000"
	.asciz	"it\000\000\000\000\000\000\000\000\000\000"
	.asciz	"The\000\000\000\000\000\000\000\000\000"
	.asciz	"longterm\000\000\000\000"
	.asciz	"benefits\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"sunscreen\000\000\000"
	.asciz	"have\000\000\000\000\000\000\000\000"
	.asciz	"been\000\000\000\000\000\000\000\000"
	.asciz	"proved\000\000\000\000\000\000"
	.asciz	"by\000\000\000\000\000\000\000\000\000\000"
	.asciz	"scientists\000\000"
	.asciz	"whereas\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"rest\000\000\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"my\000\000\000\000\000\000\000\000\000\000"
	.asciz	"advice\000\000\000\000\000\000"
	.asciz	"has\000\000\000\000\000\000\000\000\000"
	.asciz	"no\000\000\000\000\000\000\000\000\000\000"
	.asciz	"basis\000\000\000\000\000\000\000"
	.asciz	"more\000\000\000\000\000\000\000\000"
	.asciz	"reliable\000\000\000\000"
	.asciz	"than\000\000\000\000\000\000\000\000"
	.asciz	"my\000\000\000\000\000\000\000\000\000\000"
	.asciz	"own\000\000\000\000\000\000\000\000\000"
	.asciz	"meandering\000\000"
	.asciz	"experience\000\000"
	.asciz	"I\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"will\000\000\000\000\000\000\000\000"
	.asciz	"dispense\000\000\000\000"
	.asciz	"this\000\000\000\000\000\000\000\000"
	.asciz	"advice\000\000\000\000\000\000"
	.asciz	"now\000\000\000\000\000\000\000\000\000"
	.asciz	"Enjoy\000\000\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"power\000\000\000\000\000\000\000"
	.asciz	"and\000\000\000\000\000\000\000\000\000"
	.asciz	"beauty\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"your\000\000\000\000\000\000\000\000"
	.asciz	"youth\000\000\000\000\000\000\000"
	.asciz	"Oh\000\000\000\000\000\000\000\000\000\000"
	.asciz	"never\000\000\000\000\000\000\000"
	.asciz	"mind\000\000\000\000\000\000\000\000"
	.asciz	"You\000\000\000\000\000\000\000\000\000"
	.asciz	"will\000\000\000\000\000\000\000\000"
	.asciz	"not\000\000\000\000\000\000\000\000\000"
	.asciz	"understand\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"power\000\000\000\000\000\000\000"
	.asciz	"and\000\000\000\000\000\000\000\000\000"
	.asciz	"beauty\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"your\000\000\000\000\000\000\000\000"
	.asciz	"youth\000\000\000\000\000\000\000"
	.asciz	"until\000\000\000\000\000\000\000"
	.asciz	"theyve\000\000\000\000\000\000"
	.asciz	"faded\000\000\000\000\000\000\000"
	.asciz	"But\000\000\000\000\000\000\000\000\000"
	.asciz	"trust\000\000\000\000\000\000\000"
	.asciz	"me\000\000\000\000\000\000\000\000\000\000"
	.asciz	"in\000\000\000\000\000\000\000\000\000\000"
	.asciz	"20\000\000\000\000\000\000\000\000\000\000"
	.asciz	"years\000\000\000\000\000\000\000"
	.asciz	"youll\000\000\000\000\000\000\000"
	.asciz	"look\000\000\000\000\000\000\000\000"
	.asciz	"back\000\000\000\000\000\000\000\000"
	.asciz	"at\000\000\000\000\000\000\000\000\000\000"
	.asciz	"photos\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.size	globalInput_SHADOW1, 1300

	.type	.L.str.7_SHADOW1,@object        # @.str.7
.L.str.7_SHADOW1:
	.asciz	"%s\n"
	.size	.L.str.7_SHADOW1, 4

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
	#.comm	tx_level,4,4
tx_level_SHADOW1:
	.long	0
	
	.type	rx_level_SHADOW1,@object
	#.comm	rx_level,4,4
rx_level_SHADOW1:
	.long	0
	
	
	.p2align	2
.LJTI1_0_SHADOW1:
	.long	.LBB1_18
	.long	.LBB1_63
	.long	.LBB1_62
	.long	.LBB1_41
	.long	.LBB1_62
	.long	.LBB1_40
	.long	.LBB1_62
	.long	.LBB1_41
	.long	.LBB1_63
	.long	.LBB1_63
	.long	.LBB1_40
	.long	.LBB1_41
	.long	.LBB1_42
	.long	.LBB1_42
	.long	.LBB1_42
	.long	.LBB1_33
.LJTI1_1_SHADOW1:
	.long	.LBB1_32
	.long	.LBB1_62
	.long	.LBB1_63
	.long	.LBB1_40


	
	
	.p2align	2
.LJTI26_0_SHADOW1:
	.long	.LBB26_11
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_20
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_22
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_26
	.long	.LBB26_29
	.long	.LBB26_144
	.long	.LBB26_28
	.long	.LBB26_30
	.long	.LBB26_144
	.long	.LBB26_40
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_49
	.long	.LBB26_61
	.long	.LBB26_144
	.long	.LBB26_61
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_68
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_86
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_94
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_48
	.long	.LBB26_50
	.long	.LBB26_61
	.long	.LBB26_61
	.long	.LBB26_61
	.long	.LBB26_43
	.long	.LBB26_50
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_44
	.long	.LBB26_144
	.long	.LBB26_62
	.long	.LBB26_69
	.long	.LBB26_76
	.long	.LBB26_47
	.long	.LBB26_144
	.long	.LBB26_77
	.long	.LBB26_144
	.long	.LBB26_87
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_95
	.long	.LBB26_144
	.long	.LBB26_143

	
	
	
	
	
	
	
#SHADOW2_START
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

	.type	.L.str_SHADOW2,@object          # @.str
.L.str_SHADOW2:
	.zero	1
	.size	.L.str_SHADOW2, 1

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

	.hidden	globalInput_SHADOW2             # @globalInput
	.type	globalInput_SHADOW2,@object
	.globl	globalInput_SHADOW2
globalInput_SHADOW2:
	.asciz	"Kurt\000\000\000\000\000\000\000\000"
	.asciz	"Vonneguts\000\000\000"
	.asciz	"Commencement"
	.asciz	"Address\000\000\000\000\000"
	.asciz	"at\000\000\000\000\000\000\000\000\000\000"
	.asciz	"MIT\000\000\000\000\000\000\000\000\000"
	.asciz	"Ladies\000\000\000\000\000\000"
	.asciz	"and\000\000\000\000\000\000\000\000\000"
	.asciz	"gentlemen\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"class\000\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"97\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Wear\000\000\000\000\000\000\000\000"
	.asciz	"sunscreen\000\000\000"
	.asciz	"If\000\000\000\000\000\000\000\000\000\000"
	.asciz	"I\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"could\000\000\000\000\000\000\000"
	.asciz	"offer\000\000\000\000\000\000\000"
	.asciz	"you\000\000\000\000\000\000\000\000\000"
	.asciz	"only\000\000\000\000\000\000\000\000"
	.asciz	"one\000\000\000\000\000\000\000\000\000"
	.asciz	"tip\000\000\000\000\000\000\000\000\000"
	.asciz	"for\000\000\000\000\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"future\000\000\000\000\000\000"
	.asciz	"sunscreen\000\000\000"
	.asciz	"would\000\000\000\000\000\000\000"
	.asciz	"be\000\000\000\000\000\000\000\000\000\000"
	.asciz	"it\000\000\000\000\000\000\000\000\000\000"
	.asciz	"The\000\000\000\000\000\000\000\000\000"
	.asciz	"longterm\000\000\000\000"
	.asciz	"benefits\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"sunscreen\000\000\000"
	.asciz	"have\000\000\000\000\000\000\000\000"
	.asciz	"been\000\000\000\000\000\000\000\000"
	.asciz	"proved\000\000\000\000\000\000"
	.asciz	"by\000\000\000\000\000\000\000\000\000\000"
	.asciz	"scientists\000\000"
	.asciz	"whereas\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"rest\000\000\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"my\000\000\000\000\000\000\000\000\000\000"
	.asciz	"advice\000\000\000\000\000\000"
	.asciz	"has\000\000\000\000\000\000\000\000\000"
	.asciz	"no\000\000\000\000\000\000\000\000\000\000"
	.asciz	"basis\000\000\000\000\000\000\000"
	.asciz	"more\000\000\000\000\000\000\000\000"
	.asciz	"reliable\000\000\000\000"
	.asciz	"than\000\000\000\000\000\000\000\000"
	.asciz	"my\000\000\000\000\000\000\000\000\000\000"
	.asciz	"own\000\000\000\000\000\000\000\000\000"
	.asciz	"meandering\000\000"
	.asciz	"experience\000\000"
	.asciz	"I\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"will\000\000\000\000\000\000\000\000"
	.asciz	"dispense\000\000\000\000"
	.asciz	"this\000\000\000\000\000\000\000\000"
	.asciz	"advice\000\000\000\000\000\000"
	.asciz	"now\000\000\000\000\000\000\000\000\000"
	.asciz	"Enjoy\000\000\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"power\000\000\000\000\000\000\000"
	.asciz	"and\000\000\000\000\000\000\000\000\000"
	.asciz	"beauty\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"your\000\000\000\000\000\000\000\000"
	.asciz	"youth\000\000\000\000\000\000\000"
	.asciz	"Oh\000\000\000\000\000\000\000\000\000\000"
	.asciz	"never\000\000\000\000\000\000\000"
	.asciz	"mind\000\000\000\000\000\000\000\000"
	.asciz	"You\000\000\000\000\000\000\000\000\000"
	.asciz	"will\000\000\000\000\000\000\000\000"
	.asciz	"not\000\000\000\000\000\000\000\000\000"
	.asciz	"understand\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"power\000\000\000\000\000\000\000"
	.asciz	"and\000\000\000\000\000\000\000\000\000"
	.asciz	"beauty\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"your\000\000\000\000\000\000\000\000"
	.asciz	"youth\000\000\000\000\000\000\000"
	.asciz	"until\000\000\000\000\000\000\000"
	.asciz	"theyve\000\000\000\000\000\000"
	.asciz	"faded\000\000\000\000\000\000\000"
	.asciz	"But\000\000\000\000\000\000\000\000\000"
	.asciz	"trust\000\000\000\000\000\000\000"
	.asciz	"me\000\000\000\000\000\000\000\000\000\000"
	.asciz	"in\000\000\000\000\000\000\000\000\000\000"
	.asciz	"20\000\000\000\000\000\000\000\000\000\000"
	.asciz	"years\000\000\000\000\000\000\000"
	.asciz	"youll\000\000\000\000\000\000\000"
	.asciz	"look\000\000\000\000\000\000\000\000"
	.asciz	"back\000\000\000\000\000\000\000\000"
	.asciz	"at\000\000\000\000\000\000\000\000\000\000"
	.asciz	"photos\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.size	globalInput_SHADOW2, 1300

	.type	.L.str.7_SHADOW2,@object        # @.str.7
.L.str.7_SHADOW2:
	.asciz	"%s\n"
	.size	.L.str.7_SHADOW2, 4

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
	#.comm	tx_level,4,4
tx_level_SHADOW2:
	.long	0
	
	.type	rx_level_SHADOW2,@object
	#.comm	rx_level,4,4
rx_level_SHADOW2:
	.long	0
	
	
	.p2align	2
.LJTI1_0_SHADOW2:
	.long	.LBB1_18
	.long	.LBB1_63
	.long	.LBB1_62
	.long	.LBB1_41
	.long	.LBB1_62
	.long	.LBB1_40
	.long	.LBB1_62
	.long	.LBB1_41
	.long	.LBB1_63
	.long	.LBB1_63
	.long	.LBB1_40
	.long	.LBB1_41
	.long	.LBB1_42
	.long	.LBB1_42
	.long	.LBB1_42
	.long	.LBB1_33
.LJTI1_1_SHADOW2:
	.long	.LBB1_32
	.long	.LBB1_62
	.long	.LBB1_63
	.long	.LBB1_40


	
	
	.p2align	2
.LJTI26_0_SHADOW2:
	.long	.LBB26_11
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_20
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_22
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_26
	.long	.LBB26_29
	.long	.LBB26_144
	.long	.LBB26_28
	.long	.LBB26_30
	.long	.LBB26_144
	.long	.LBB26_40
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_41
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_49
	.long	.LBB26_61
	.long	.LBB26_144
	.long	.LBB26_61
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_68
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_86
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_94
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_48
	.long	.LBB26_50
	.long	.LBB26_61
	.long	.LBB26_61
	.long	.LBB26_61
	.long	.LBB26_43
	.long	.LBB26_50
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_44
	.long	.LBB26_144
	.long	.LBB26_62
	.long	.LBB26_69
	.long	.LBB26_76
	.long	.LBB26_47
	.long	.LBB26_144
	.long	.LBB26_77
	.long	.LBB26_144
	.long	.LBB26_87
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_95
	.long	.LBB26_144
	.long	.LBB26_143

	

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
