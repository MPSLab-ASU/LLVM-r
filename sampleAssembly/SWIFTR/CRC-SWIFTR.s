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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -16
	l.addi	r21, r21, -16           # CFC
	l.addi	r1, r1, -16
	l.movhi	r15, 1023
	l.movhi	r25, 1023
	l.movhi	r5, 1023
	l.ori	r15, r15, 65528
	l.ori	r25, r25, 65528
	l.ori	r5, r5, 65528
	l.slli	r16, r14, 3
	l.slli	r26, r24, 3
	l.slli	r6, r4, 3
	l.and	r16, r16, r15
	l.and	r26, r26, r25
	l.and	r6, r6, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.slli	r16, r13, 3
	l.slli	r26, r23, 3
	l.slli	r6, r3, 3
	l.and	r15, r16, r15
	l.and	r25, r26, r25
	l.and	r5, r6, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-8(r2), r5
	l.srli	r15, r14, 23
	l.srli	r25, r24, 23
	l.srli	r5, r4, 23
	l.andi	r15, r15, 255
	l.andi	r25, r25, 255
	l.andi	r5, r5, 255
	l.srli	r8, r13, 23
	l.srli	r31, r23, 23
	l.srli	r11, r3, 23
	l.andi	r17, r8, 255
	l.andi	r27, r31, 255
	l.andi	r7, r11, 255
	l.sub	r16, r17, r15
	l.sub	r26, r27, r25
	l.sub	r6, r7, r5
	l.srli	r14, r14, 31
	l.srli	r24, r24, 31
	l.srli	r4, r4, 31
	l.srli	r13, r13, 31
	l.srli	r23, r23, 31
	l.srli	r3, r3, 31
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r4
	l.bf	.LBB0_6
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltsi	r6, 1
	l.bf	.LBB0_23
	l.nop	0                       # in delay slot
# BB#2:                                 # %if.then40
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB0_11
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.then42
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.ori	r14, r17, 0
	l.ori	r24, r27, 0
	l.ori	r4, r7, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#4:                                 # %if.else
	l.addi	r16, r16, -1
	l.addi	r26, r26, -1
	l.addi	r6, r6, -1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 0
	l.bf	.LBB0_69
	l.nop	0                       # in delay slot
# BB#5:                                 # %if.then55
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.j	.LBB0_58
	l.nop	0                       # in delay slot
.LBB0_6:                                # %if.else333
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltsi	r6, 1
	l.bf	.LBB0_28
	l.nop	0                       # in delay slot
# BB#7:                                 # %if.then338
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB0_17
	l.nop	0                       # in delay slot
# BB#8:                                 # %if.then341
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.ori	r14, r17, 0
	l.ori	r24, r27, 0
	l.ori	r4, r7, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#9:                                 # %if.else363
	l.addi	r16, r16, -1
	l.addi	r26, r26, -1
	l.addi	r6, r6, -1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 0
	l.bf	.LBB0_70
	l.nop	0                       # in delay slot
# BB#10:                                # %if.then367
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.j	.LBB0_66
	l.nop	0                       # in delay slot
.LBB0_11:                               # %if.else76
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfeqi	r7, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#12:                                # %if.end96
	l.movhi	r14, 1024
	l.movhi	r24, 1024
	l.movhi	r4, 1024
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.or	r15, r15, r14
	l.or	r25, r25, r24
	l.or	r5, r5, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
.LBB0_13:                               # %add1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, 27
	l.bf	.LBB0_55
	l.nop	0                       # in delay slot
# BB#14:                                # %if.then98
	l.addi	r14, r0, 32
	l.addi	r24, r0, 32
	l.addi	r4, r0, 32
	l.sub	r14, r14, r16
	l.sub	r24, r24, r26
	l.sub	r4, r4, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sll	r15, r8, r14
	l.sll	r25, r31, r24
	l.sll	r5, r11, r4
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB0_16
	l.nop	0                       # in delay slot
# BB#15:                                # %if.then98
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB0_16:                               # %if.then98
	l.srl	r15, r8, r16
	l.srl	r25, r31, r26
	l.srl	r5, r11, r6
	l.andi	r14, r14, 1
	l.andi	r24, r24, 1
	l.andi	r4, r4, 1
	l.or	r14, r14, r15
	l.or	r24, r24, r25
	l.or	r4, r4, r5
	l.j	.LBB0_58
	l.nop	0                       # in delay slot
.LBB0_17:                               # %if.else392
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfeqi	r7, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#18:                                # %if.end415
	l.movhi	r14, 1024
	l.movhi	r24, 1024
	l.movhi	r4, 1024
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.or	r15, r15, r14
	l.or	r25, r25, r24
	l.or	r5, r5, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
.LBB0_19:                               # %sub1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, 27
	l.bf	.LBB0_63
	l.nop	0                       # in delay slot
# BB#20:                                # %if.then419
	l.addi	r14, r0, 32
	l.addi	r24, r0, 32
	l.addi	r4, r0, 32
	l.sub	r14, r14, r16
	l.sub	r24, r24, r26
	l.sub	r4, r4, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sll	r15, r8, r14
	l.sll	r25, r31, r24
	l.sll	r5, r11, r4
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB0_22
	l.nop	0                       # in delay slot
# BB#21:                                # %if.then419
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB0_22:                               # %if.then419
	l.srl	r15, r8, r16
	l.srl	r25, r31, r26
	l.srl	r5, r11, r6
	l.andi	r14, r14, 1
	l.andi	r24, r24, 1
	l.andi	r4, r4, 1
	l.or	r14, r14, r15
	l.or	r24, r24, r25
	l.or	r4, r4, r5
	l.j	.LBB0_66
	l.nop	0                       # in delay slot
.LBB0_23:                               # %if.else110
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, -1
	l.bf	.LBB0_33
	l.nop	0                       # in delay slot
# BB#24:                                # %if.then113
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB0_71
	l.nop	0                       # in delay slot
# BB#25:                                # %if.then117
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#26:                                # %if.else139
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, -1
	l.bf	.LBB0_133
	l.nop	0                       # in delay slot
# BB#27:                                # %if.then143
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -8(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.j	.LBB0_126
	l.nop	0                       # in delay slot
.LBB0_28:                               # %if.else433
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, -1
	l.bf	.LBB0_45
	l.nop	0                       # in delay slot
# BB#29:                                # %if.then436
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB0_77
	l.nop	0                       # in delay slot
# BB#30:                                # %if.then440
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -8(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.ori	r17, r14, 0
	l.ori	r27, r24, 0
	l.ori	r7, r4, 0
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#31:                                # %if.else462
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, -1
	l.bf	.LBB0_134
	l.nop	0                       # in delay slot
# BB#32:                                # %if.then466
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r8, r13, r14
	l.sub	r31, r23, r24
	l.sub	r11, r3, r4
	l.j	.LBB0_132
	l.nop	0                       # in delay slot
.LBB0_33:                               # %if.else209
	l.addi	r14, r8, 1
	l.addi	r24, r31, 1
	l.addi	r4, r11, 1
	l.andi	r14, r14, 254
	l.andi	r24, r24, 254
	l.andi	r4, r4, 254
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB0_51
	l.nop	0                       # in delay slot
# BB#34:                                # %if.then214
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -12(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfeqi	r6, 0
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
	l.bf	.LBB0_36
	l.nop	0                       # in delay slot
# BB#35:                                # %if.then214
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
.LBB0_36:                               # %if.then214
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB0_38
	l.nop	0                       # in delay slot
# BB#37:                                # %if.then214
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB0_38:                               # %if.then214
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.ori	r8, r16, 0
	l.ori	r31, r26, 0
	l.ori	r11, r6, 0
	l.bf	.LBB0_40
	l.nop	0                       # in delay slot
# BB#39:                                # %if.then214
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
.LBB0_40:                               # %if.then214
	l.or	r15, r14, r15
	l.or	r25, r24, r25
	l.or	r5, r4, r5
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB0_103
	l.nop	0                       # in delay slot
# BB#41:                                # %if.then217
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.andi	r15, r15, 1
	l.andi	r25, r25, 1
	l.andi	r5, r5, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#42:                                # %if.else229
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.add	r14, r14, r15
	l.add	r24, r24, r25
	l.add	r4, r4, r5
	l.movhi	r15, 1024
	l.movhi	r25, 1024
	l.movhi	r5, 1024
	l.and	r15, r14, r15
	l.and	r25, r24, r25
	l.and	r5, r4, r5
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.ori	r8, r14, 0
	l.ori	r31, r24, 0
	l.ori	r11, r4, 0
	l.bf	.LBB0_44
	l.nop	0                       # in delay slot
# BB#43:                                # %if.else229
	l.movhi	r15, 1023
	l.movhi	r25, 1023
	l.movhi	r5, 1023
	l.ori	r15, r15, 65528
	l.ori	r25, r25, 65528
	l.ori	r5, r5, 65528
	l.and	r8, r14, r15
	l.and	r31, r24, r25
	l.and	r11, r4, r5
.LBB0_44:                               # %if.else229
	l.srli	r14, r14, 26
	l.srli	r24, r24, 26
	l.srli	r4, r4, 26
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_45:                               # %if.else532
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-16(r2), r4
	l.addi	r14, r8, 1
	l.addi	r24, r31, 1
	l.addi	r4, r11, 1
	l.andi	r14, r14, 254
	l.andi	r24, r24, 254
	l.andi	r4, r4, 254
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB0_53
	l.nop	0                       # in delay slot
# BB#46:                                # %if.then537
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -8(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB0_109
	l.nop	0                       # in delay slot
# BB#47:                                # %if.then540
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 0
	l.bf	.LBB0_135
	l.nop	0                       # in delay slot
# BB#48:                                # %if.then543
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.bf	.LBB0_50
	l.nop	0                       # in delay slot
# BB#49:                                # %if.then543
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB0_50:                               # %if.then543
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_51:                               # %if.end303
	l.addi	r14, r17, 1
	l.addi	r24, r27, 1
	l.addi	r4, r7, 1
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#52:                                # %if.end303
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -8(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r15, r15, r16
	l.add	r25, r25, r26
	l.add	r5, r5, r6
	l.srli	r8, r15, 1
	l.srli	r31, r25, 1
	l.srli	r11, r5, 1
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_53:                               # %if.end641
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -12(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sub	r15, r8, r16
	l.sub	r25, r31, r26
	l.sub	r5, r11, r6
	l.movhi	r14, 1024
	l.movhi	r24, 1024
	l.movhi	r4, 1024
	l.and	r14, r15, r14
	l.and	r24, r25, r24
	l.and	r4, r5, r4
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB0_83
	l.nop	0                       # in delay slot
# BB#54:                                # %if.then645
	l.sub	r15, r16, r8
	l.sub	r25, r26, r31
	l.sub	r5, r6, r11
	l.j	.LBB0_84
	l.nop	0                       # in delay slot
.LBB0_55:                               # %if.else103
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB0_57
	l.nop	0                       # in delay slot
# BB#56:                                # %if.else103
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB0_57:                               # %if.else103
	l.andi	r14, r14, 1
	l.andi	r24, r24, 1
	l.andi	r4, r4, 1
.LBB0_58:                               # %add3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.add	r8, r14, r15
	l.add	r31, r24, r25
	l.add	r11, r4, r5
	l.ori	r14, r17, 0
	l.ori	r24, r27, 0
	l.ori	r4, r7, 0
.LBB0_59:                               # %add3
	l.movhi	r15, 1024
	l.movhi	r25, 1024
	l.movhi	r5, 1024
	l.and	r15, r8, r15
	l.and	r25, r31, r25
	l.and	r5, r11, r5
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#60:                                # %if.then320
	l.addi	r14, r14, 1
	l.addi	r24, r24, 1
	l.addi	r4, r4, 1
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 255
	l.bf	.LBB0_62
	l.nop	0                       # in delay slot
# BB#61:                                # %if.then320
	l.movhi	r15, 32255
	l.movhi	r25, 32255
	l.movhi	r5, 32255
	l.ori	r15, r15, 65535
	l.ori	r25, r25, 65535
	l.ori	r5, r5, 65535
	l.srli	r16, r8, 1
	l.srli	r26, r31, 1
	l.srli	r6, r11, 1
	l.and	r15, r16, r15
	l.and	r25, r26, r25
	l.and	r5, r6, r5
	l.andi	r16, r8, 1
	l.andi	r26, r31, 1
	l.andi	r6, r11, 1
	l.or	r15, r15, r16
	l.or	r25, r25, r26
	l.or	r5, r5, r6
.LBB0_62:                               # %if.then320
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_63:                               # %if.else426
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB0_65
	l.nop	0                       # in delay slot
# BB#64:                                # %if.else426
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB0_65:                               # %if.else426
	l.andi	r14, r14, 1
	l.andi	r24, r24, 1
	l.andi	r4, r4, 1
.LBB0_66:                               # %sub3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sub	r8, r15, r14
	l.sub	r31, r25, r24
	l.sub	r11, r5, r4
	l.ori	r14, r17, 0
	l.ori	r24, r27, 0
	l.ori	r4, r7, 0
.LBB0_67:                               # %sub3
	l.movhi	r15, 1024
	l.movhi	r25, 1024
	l.movhi	r5, 1024
	l.and	r15, r8, r15
	l.and	r25, r31, r25
	l.and	r5, r11, r5
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#68:                                # %if.then657
	l.movhi	r15, 1023
	l.movhi	r25, 1023
	l.movhi	r5, 1023
	l.ori	r15, r15, 65535
	l.ori	r25, r25, 65535
	l.ori	r5, r5, 65535
	l.and	r15, r8, r15
	l.and	r25, r31, r25
	l.and	r5, r11, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.ori	r17, r14, 0
	l.ori	r27, r24, 0
	l.ori	r7, r4, 0
	l.j	.LBB0_84
	l.nop	0                       # in delay slot
.LBB0_69:                               # %if.end56
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfeqi	r7, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
	l.j	.LBB0_13
	l.nop	0                       # in delay slot
.LBB0_70:                               # %if.end369
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfeqi	r7, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
	l.j	.LBB0_19
	l.nop	0                       # in delay slot
.LBB0_71:                               # %if.else168
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#72:                                # %if.end191
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sub	r16, r14, r16
	l.sub	r26, r24, r26
	l.sub	r6, r4, r6
	l.movhi	r14, 1024
	l.movhi	r24, 1024
	l.movhi	r4, 1024
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -8(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.or	r17, r17, r14
	l.or	r27, r27, r24
	l.or	r7, r7, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-8(r2), r7
.LBB0_73:                               # %add2
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, 27
	l.bf	.LBB0_123
	l.nop	0                       # in delay slot
# BB#74:                                # %if.then195
	l.addi	r14, r0, 32
	l.addi	r24, r0, 32
	l.addi	r4, r0, 32
	l.sub	r14, r14, r16
	l.sub	r24, r24, r26
	l.sub	r4, r4, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sll	r17, r8, r14
	l.sll	r27, r31, r24
	l.sll	r7, r11, r4
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.addi	r20, r7, 0              # CFC
	l.addi	r28, r17, 0
	l.addi	r30, r27, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -12(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfnei	r20, 0                  # CFC
	l.bf	.LBB0_76
	l.nop	0                       # in delay slot
# BB#75:                                # %if.then195
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB0_76:                               # %if.then195
	l.srl	r16, r8, r16
	l.srl	r26, r31, r26
	l.srl	r6, r11, r6
	l.andi	r14, r14, 1
	l.andi	r24, r24, 1
	l.andi	r4, r4, 1
	l.or	r14, r14, r16
	l.or	r24, r24, r26
	l.or	r4, r4, r6
	l.add	r8, r14, r17
	l.add	r31, r24, r27
	l.add	r11, r4, r7
	l.j	.LBB0_127
	l.nop	0                       # in delay slot
.LBB0_77:                               # %if.else491
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.ori	r17, r13, 0
	l.ori	r27, r23, 0
	l.ori	r7, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#78:                                # %if.end514
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sub	r16, r13, r16
	l.sub	r26, r23, r26
	l.sub	r6, r3, r6
	l.movhi	r13, 1024
	l.movhi	r23, 1024
	l.movhi	r3, 1024
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.or	r14, r14, r13
	l.or	r24, r24, r23
	l.or	r4, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-8(r2), r4
.LBB0_79:                               # %sub2
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, 27
	l.bf	.LBB0_128
	l.nop	0                       # in delay slot
# BB#80:                                # %if.then518
	l.addi	r13, r0, 32
	l.addi	r23, r0, 32
	l.addi	r3, r0, 32
	l.sub	r13, r13, r16
	l.sub	r23, r23, r26
	l.sub	r3, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sll	r14, r8, r13
	l.sll	r24, r31, r23
	l.sll	r4, r11, r3
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.addi	r20, r4, 0              # CFC
	l.addi	r28, r14, 0
	l.addi	r30, r24, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfnei	r20, 0                  # CFC
	l.bf	.LBB0_82
	l.nop	0                       # in delay slot
# BB#81:                                # %if.then518
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB0_82:                               # %if.then518
	l.srl	r14, r8, r16
	l.srl	r24, r31, r26
	l.srl	r4, r11, r6
	l.andi	r13, r13, 1
	l.andi	r23, r23, 1
	l.andi	r3, r3, 1
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.j	.LBB0_131
	l.nop	0                       # in delay slot
.LBB0_83:                               # %if.else647
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_84:                               # %do.body659
	l.srli	r13, r15, 1
	l.srli	r23, r25, 1
	l.srli	r3, r5, 1
	l.or	r13, r15, r13
	l.or	r23, r25, r23
	l.or	r3, r5, r3
	l.srli	r14, r13, 2
	l.srli	r24, r23, 2
	l.srli	r4, r3, 2
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.srli	r14, r13, 4
	l.srli	r24, r23, 4
	l.srli	r4, r3, 4
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.srli	r14, r13, 8
	l.srli	r24, r23, 8
	l.srli	r4, r3, 8
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.srli	r14, r13, 16
	l.srli	r24, r23, 16
	l.srli	r4, r3, 16
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.movhi	r14, 21845
	l.movhi	r24, 21845
	l.movhi	r4, 21845
	l.ori	r14, r14, 21845
	l.ori	r24, r24, 21845
	l.ori	r4, r4, 21845
	l.xori	r13, r13, -1
	l.xori	r23, r23, -1
	l.xori	r3, r3, -1
	l.srli	r16, r13, 1
	l.srli	r26, r23, 1
	l.srli	r6, r3, 1
	l.and	r14, r16, r14
	l.and	r24, r26, r24
	l.and	r4, r6, r4
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.movhi	r14, 13107
	l.movhi	r24, 13107
	l.movhi	r4, 13107
	l.ori	r14, r14, 13107
	l.ori	r24, r24, 13107
	l.ori	r4, r4, 13107
	l.and	r16, r13, r14
	l.and	r26, r23, r24
	l.and	r6, r3, r4
	l.srli	r13, r13, 2
	l.srli	r23, r23, 2
	l.srli	r3, r3, 2
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.add	r13, r16, r13
	l.add	r23, r26, r23
	l.add	r3, r6, r3
	l.srli	r14, r13, 4
	l.srli	r24, r23, 4
	l.srli	r4, r3, 4
	l.add	r13, r13, r14
	l.add	r23, r23, r24
	l.add	r3, r3, r4
	l.movhi	r14, 3855
	l.movhi	r24, 3855
	l.movhi	r4, 3855
	l.ori	r14, r14, 3855
	l.ori	r24, r24, 3855
	l.ori	r4, r4, 3855
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.movhi	r14, 257
	l.movhi	r24, 257
	l.movhi	r4, 257
	l.ori	r14, r14, 257
	l.ori	r24, r24, 257
	l.ori	r4, r4, 257
	l.mul	r13, r13, r14
	l.mul	r23, r23, r24
	l.mul	r3, r3, r4
	l.srli	r13, r13, 24
	l.srli	r23, r23, 24
	l.srli	r3, r3, 24
	l.addi	r14, r13, -5
	l.addi	r24, r23, -5
	l.addi	r4, r3, -5
	l.sll	r13, r15, r14
	l.sll	r23, r25, r24
	l.sll	r3, r5, r4
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgts	r7, r4
	l.bf	.LBB0_88
	l.nop	0                       # in delay slot
# BB#85:                                # %if.then669
	l.sub	r14, r14, r17
	l.sub	r24, r24, r27
	l.sub	r4, r4, r7
	l.addi	r15, r0, 31
	l.addi	r25, r0, 31
	l.addi	r5, r0, 31
	l.sub	r16, r15, r14
	l.sub	r26, r25, r24
	l.sub	r6, r5, r4
	l.addi	r14, r14, 1
	l.addi	r24, r24, 1
	l.addi	r4, r4, 1
	l.srl	r15, r13, r14
	l.srl	r25, r23, r24
	l.srl	r5, r3, r4
	l.sll	r16, r13, r16
	l.sll	r26, r23, r26
	l.sll	r6, r3, r6
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 0
	l.bf	.LBB0_87
	l.nop	0                       # in delay slot
# BB#86:                                # %if.then669
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB0_87:                               # %if.then669
	l.andi	r13, r13, 1
	l.andi	r23, r23, 1
	l.andi	r3, r3, 1
	l.or	r8, r13, r15
	l.or	r31, r23, r25
	l.or	r11, r3, r5
	l.j	.LBB0_89
	l.nop	0                       # in delay slot
.LBB0_88:                               # %if.else678
	l.sub	r14, r17, r14
	l.sub	r24, r27, r24
	l.sub	r4, r7, r4
	l.movhi	r15, 64511
	l.movhi	r25, 64511
	l.movhi	r5, 64511
	l.ori	r15, r15, 65535
	l.ori	r25, r25, 65535
	l.ori	r5, r5, 65535
	l.and	r8, r13, r15
	l.and	r31, r23, r25
	l.and	r11, r3, r5
.LBB0_89:                               # %do.body687
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB0_90:                               # %do.body687
	l.andi	r15, r8, 15
	l.andi	r25, r31, 15
	l.andi	r5, r11, 15
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 4
	l.ori	r15, r8, 0
	l.ori	r25, r31, 0
	l.ori	r5, r11, 0
	l.bf	.LBB0_92
	l.nop	0                       # in delay slot
# BB#91:                                # %do.body687
	l.addi	r15, r8, 4
	l.addi	r25, r31, 4
	l.addi	r5, r11, 4
.LBB0_92:                               # %do.body687
	l.andi	r16, r8, 7
	l.andi	r26, r31, 7
	l.andi	r6, r11, 7
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfeqi	r6, 0
	l.bf	.LBB0_94
	l.nop	0                       # in delay slot
# BB#93:                                # %do.body687
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
.LBB0_94:                               # %do.body687
	l.movhi	r15, 1024
	l.movhi	r25, 1024
	l.movhi	r5, 1024
	l.and	r15, r8, r15
	l.and	r25, r31, r25
	l.and	r5, r11, r5
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB0_98
	l.nop	0                       # in delay slot
# BB#95:                                # %if.then718
	l.addi	r14, r14, 1
	l.addi	r24, r24, 1
	l.addi	r4, r4, 1
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 255
	l.bf	.LBB0_97
	l.nop	0                       # in delay slot
# BB#96:                                # %if.then718
	l.movhi	r15, 64511
	l.movhi	r25, 64511
	l.movhi	r5, 64511
	l.ori	r15, r15, 65535
	l.ori	r25, r25, 65535
	l.ori	r5, r5, 65535
	l.and	r15, r8, r15
	l.and	r25, r31, r25
	l.and	r5, r11, r5
.LBB0_97:                               # %if.then718
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
.LBB0_98:                               # %if.end728
	l.srli	r15, r8, 3
	l.srli	r25, r31, 3
	l.srli	r5, r11, 3
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.ori	r16, r15, 0
	l.ori	r26, r25, 0
	l.ori	r6, r5, 0
	l.bf	.LBB0_100
	l.nop	0                       # in delay slot
# BB#99:                                # %if.end728
	l.movhi	r16, 64
	l.movhi	r26, 64
	l.movhi	r6, 64
	l.or	r16, r15, r16
	l.or	r26, r25, r26
	l.or	r6, r5, r6
.LBB0_100:                              # %if.end728
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 255
	l.bf	.LBB0_102
	l.nop	0                       # in delay slot
# BB#101:                               # %if.end728
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
.LBB0_102:                              # %if.end728
	l.slli	r14, r14, 23
	l.slli	r24, r24, 23
	l.slli	r4, r4, 23
	l.movhi	r16, 32640
	l.movhi	r26, 32640
	l.movhi	r6, 32640
	l.and	r14, r14, r16
	l.and	r24, r24, r26
	l.and	r4, r4, r6
	l.slli	r13, r13, 31
	l.slli	r23, r23, 31
	l.slli	r3, r3, 31
	l.or	r13, r14, r13
	l.or	r23, r24, r23
	l.or	r3, r4, r3
	l.movhi	r14, 127
	l.movhi	r24, 127
	l.movhi	r4, 127
	l.ori	r14, r14, 65535
	l.ori	r24, r24, 65535
	l.ori	r4, r4, 65535
	l.and	r14, r15, r14
	l.and	r24, r25, r24
	l.and	r4, r5, r4
	l.or	r8, r13, r14
	l.or	r31, r23, r24
	l.or	r11, r3, r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB0_103:                              # %do.body237
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.andi	r15, r15, 1
	l.andi	r25, r25, 1
	l.andi	r5, r5, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#104:                               # %do.body281
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.srli	r15, r15, 3
	l.srli	r25, r25, 3
	l.srli	r5, r5, 3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -12(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.srli	r16, r16, 3
	l.srli	r26, r26, 3
	l.srli	r6, r6, 3
	l.movhi	r17, 64
	l.movhi	r27, 64
	l.movhi	r7, 64
	l.and	r8, r16, r17
	l.and	r31, r26, r27
	l.and	r11, r6, r7
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB0_106
	l.nop	0                       # in delay slot
# BB#105:                               # %do.body281
	l.ori	r16, r15, 0
	l.ori	r26, r25, 0
	l.ori	r6, r5, 0
.LBB0_106:                              # %do.body281
	l.and	r17, r15, r17
	l.and	r27, r25, r27
	l.and	r7, r5, r7
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB0_108
	l.nop	0                       # in delay slot
# BB#107:                               # %do.body281
	l.ori	r16, r15, 0
	l.ori	r26, r25, 0
	l.ori	r6, r5, 0
.LBB0_108:                              # %do.body281
	l.slli	r8, r16, 3
	l.slli	r31, r26, 3
	l.slli	r11, r6, 3
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_109:                              # %do.body566
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 0
	l.bf	.LBB0_115
	l.nop	0                       # in delay slot
# BB#110:                               # %if.then604
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB0_112
	l.nop	0                       # in delay slot
# BB#111:                               # %if.then604
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB0_112:                              # %if.then604
	l.movhi	r8, 512
	l.movhi	r31, 512
	l.movhi	r11, 512
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB0_114
	l.nop	0                       # in delay slot
# BB#113:                               # %if.then604
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
.LBB0_114:                              # %if.then604
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_115:                              # %if.else614
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.ori	r8, r16, 0
	l.ori	r31, r26, 0
	l.ori	r11, r6, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#116:                               # %do.body619
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.srli	r15, r15, 3
	l.srli	r25, r25, 3
	l.srli	r5, r5, 3
	l.movhi	r16, 64
	l.movhi	r26, 64
	l.movhi	r6, 64
	l.and	r17, r15, r16
	l.and	r27, r25, r26
	l.and	r7, r5, r6
	l.addi	r16, r0, 1
	l.addi	r26, r0, 1
	l.addi	r6, r0, 1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfeqi	r7, 0
	l.bf	.LBB0_118
	l.nop	0                       # in delay slot
# BB#117:                               # %do.body619
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
.LBB0_118:                              # %do.body619
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.srli	r17, r8, 25
	l.srli	r27, r31, 25
	l.srli	r7, r11, 25
	l.and	r16, r17, r16
	l.and	r26, r27, r26
	l.and	r6, r7, r6
	l.andi	r16, r16, 1
	l.andi	r26, r26, 1
	l.andi	r6, r6, 1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 0
	l.bf	.LBB0_120
	l.nop	0                       # in delay slot
# BB#119:                               # %do.body619
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
.LBB0_120:                              # %do.body619
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 0
	l.bf	.LBB0_122
	l.nop	0                       # in delay slot
# BB#121:                               # %do.body619
	l.srli	r15, r8, 3
	l.srli	r25, r31, 3
	l.srli	r5, r11, 3
.LBB0_122:                              # %do.body619
	l.slli	r8, r15, 3
	l.slli	r31, r25, 3
	l.slli	r11, r5, 3
	l.j	.LBB0_89
	l.nop	0                       # in delay slot
.LBB0_123:                              # %if.else202
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -8(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.addi	r20, r6, 0              # CFC
	l.addi	r28, r16, 0
	l.addi	r30, r26, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -12(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfnei	r20, 0                  # CFC
	l.bf	.LBB0_125
	l.nop	0                       # in delay slot
# BB#124:                               # %if.else202
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB0_125:                              # %if.else202
	l.andi	r14, r14, 1
	l.andi	r24, r24, 1
	l.andi	r4, r4, 1
.LBB0_126:                              # %add3
	l.add	r8, r14, r16
	l.add	r31, r24, r26
	l.add	r11, r4, r6
.LBB0_127:                              # %add3
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
	l.j	.LBB0_59
	l.nop	0                       # in delay slot
.LBB0_128:                              # %if.else525
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r20, r4, 0              # CFC
	l.addi	r28, r14, 0
	l.addi	r30, r24, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfnei	r20, 0                  # CFC
	l.bf	.LBB0_130
	l.nop	0                       # in delay slot
# BB#129:                               # %if.else525
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB0_130:                              # %if.else525
	l.andi	r13, r13, 1
	l.andi	r23, r23, 1
	l.andi	r3, r3, 1
.LBB0_131:                              # %sub3
	l.sub	r8, r14, r13
	l.sub	r31, r24, r23
	l.sub	r11, r4, r3
.LBB0_132:                              # %sub3
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
	l.j	.LBB0_67
	l.nop	0                       # in delay slot
.LBB0_133:                              # %if.end145
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.xori	r16, r16, -1
	l.xori	r26, r26, -1
	l.xori	r6, r6, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
	l.j	.LBB0_73
	l.nop	0                       # in delay slot
.LBB0_134:                              # %if.end468
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.xori	r16, r16, -1
	l.xori	r26, r26, -1
	l.xori	r6, r6, -1
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
	l.j	.LBB0_79
	l.nop	0                       # in delay slot
.LBB0_135:                              # %if.else549
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.ori	r8, r16, 0
	l.ori	r31, r26, 0
	l.ori	r11, r6, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#136:                               # %if.else553
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -12(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -8(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sub	r8, r17, r16
	l.sub	r31, r27, r26
	l.sub	r11, r7, r6
	l.movhi	r15, 1024
	l.movhi	r25, 1024
	l.movhi	r5, 1024
	l.and	r15, r8, r15
	l.and	r25, r31, r25
	l.and	r5, r11, r5
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB0_138
	l.nop	0                       # in delay slot
# BB#137:                               # %if.then557
	l.sub	r8, r16, r17
	l.sub	r31, r26, r27
	l.sub	r11, r6, r7
	l.j	.LBB0_89
	l.nop	0                       # in delay slot
.LBB0_138:                              # %if.else559
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.bf	.LBB0_140
	l.nop	0                       # in delay slot
# BB#139:                               # %if.else559
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
.LBB0_140:                              # %if.else559
	l.ori	r13, r15, 0
	l.ori	r23, r25, 0
	l.ori	r3, r5, 0
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -28
	l.addi	r21, r21, -28           # CFC
	l.addi	r1, r1, -28
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-24(r2), r3
	l.andi	r15, r14, 65535
	l.andi	r25, r24, 65535
	l.andi	r5, r4, 65535
	l.andi	r17, r16, 65535
	l.andi	r27, r26, 65535
	l.andi	r7, r6, 65535
	l.mul	r8, r17, r15
	l.mul	r31, r27, r25
	l.mul	r11, r7, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-16(r2), r6
	l.srli	r13, r16, 16
	l.srli	r23, r26, 16
	l.srli	r3, r6, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-28(r2), r3
	l.mul	r15, r13, r15
	l.mul	r25, r23, r25
	l.mul	r5, r3, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-20(r2), r4
	l.srli	r13, r14, 16
	l.srli	r23, r24, 16
	l.srli	r3, r4, 16
	l.mul	r16, r17, r13
	l.mul	r26, r27, r23
	l.mul	r6, r7, r3
	l.add	r15, r16, r15
	l.add	r25, r26, r25
	l.add	r5, r6, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-8(r2), r11
	l.srli	r17, r8, 16
	l.srli	r27, r31, 16
	l.srli	r7, r11, 16
	l.add	r17, r15, r17
	l.add	r27, r25, r27
	l.add	r7, r5, r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -28(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.mul	r8, r14, r13
	l.mul	r31, r24, r23
	l.mul	r11, r4, r3
	l.movhi	r13, 1
	l.movhi	r23, 1
	l.movhi	r3, 1
	l.add	r15, r8, r13
	l.add	r25, r31, r23
	l.add	r5, r11, r3
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r7, r6
	l.bf	.LBB1_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %entry
	l.ori	r15, r8, 0
	l.ori	r25, r31, 0
	l.ori	r5, r11, 0
.LBB1_2:                                # %entry
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -24(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.mul	r13, r14, r13
	l.mul	r23, r24, r23
	l.mul	r3, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -20(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.mul	r14, r14, r16
	l.mul	r24, r24, r26
	l.mul	r4, r4, r6
	l.add	r13, r14, r13
	l.add	r23, r24, r23
	l.add	r3, r4, r3
	l.srli	r14, r17, 16
	l.srli	r24, r27, 16
	l.srli	r4, r7, 16
	l.add	r13, r13, r14
	l.add	r23, r23, r24
	l.add	r3, r3, r4
	l.add	r8, r13, r15
	l.add	r31, r23, r25
	l.add	r11, r3, r5
	l.slli	r13, r17, 16
	l.slli	r23, r27, 16
	l.slli	r3, r7, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.andi	r14, r14, 65535
	l.andi	r24, r24, 65535
	l.andi	r4, r4, 65535
	l.or	r12, r13, r14
	l.or	r12, r23, r24
	l.or	r12, r3, r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -36
	l.addi	r21, r21, -36           # CFC
	l.addi	r1, r1, -36
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB2_43
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then.i
	l.movhi	r15, 256
	l.movhi	r25, 256
	l.movhi	r5, 256
	l.addi	r8, r0, 16
	l.addi	r31, r0, 16
	l.addi	r11, r0, 16
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltu	r6, r5
	l.bf	.LBB2_3
	l.nop	0                       # in delay slot
# BB#2:                                 # %if.then.i
	l.addi	r8, r0, 24
	l.addi	r31, r0, 24
	l.addi	r11, r0, 24
.LBB2_3:                                # %if.then.i
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltui	r6, 256
	l.bf	.LBB2_5
	l.nop	0                       # in delay slot
# BB#4:                                 # %if.then.i
	l.addi	r15, r0, 8
	l.addi	r25, r0, 8
	l.addi	r5, r0, 8
.LBB2_5:                                # %if.then.i
	l.movhi	r17, 1
	l.movhi	r27, 1
	l.movhi	r7, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfltu	r6, r7
	l.bf	.LBB2_7
	l.nop	0                       # in delay slot
# BB#6:                                 # %if.then.i
	l.ori	r15, r8, 0
	l.ori	r25, r31, 0
	l.ori	r5, r11, 0
.LBB2_7:                                # %if.then.i
	l.movhi	r16, hi(__clz_tab)
	l.movhi	r26, hi(__clz_tab)
	l.movhi	r6, hi(__clz_tab)
	l.ori	r16, r16, lo(__clz_tab)
	l.ori	r26, r26, lo(__clz_tab)
	l.ori	r6, r6, lo(__clz_tab)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.srl	r17, r8, r15
	l.srl	r27, r31, r25
	l.srl	r7, r11, r5
	l.add	r16, r17, r16
	l.add	r26, r27, r26
	l.add	r6, r7, r6
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lbz	r6, 0(r6)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r16, r16, r15
	l.add	r26, r26, r25
	l.add	r6, r6, r5
	l.addi	r15, r0, 32
	l.addi	r25, r0, 32
	l.addi	r5, r0, 32
	l.sub	r17, r15, r16
	l.sub	r27, r25, r26
	l.sub	r7, r5, r6
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfgeu	r3, r11
	l.bf	.LBB2_21
	l.nop	0                       # in delay slot
# BB#8:                                 # %do.body.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfeqi	r7, 0
	l.bf	.LBB2_10
	l.nop	0                       # in delay slot
# BB#9:                                 # %if.then16.i
	l.srl	r16, r14, r16
	l.srl	r26, r24, r26
	l.srl	r6, r4, r6
	l.sll	r13, r13, r17
	l.sll	r23, r23, r27
	l.sll	r3, r3, r7
	l.or	r13, r13, r16
	l.or	r23, r23, r26
	l.or	r3, r3, r6
	l.sll	r14, r14, r17
	l.sll	r24, r24, r27
	l.sll	r4, r4, r7
	l.sll	r15, r15, r17
	l.sll	r25, r25, r27
	l.sll	r5, r5, r7
.LBB2_10:                               # %do.body21.i
	l.srli	r17, r15, 16
	l.srli	r27, r25, 16
	l.srli	r7, r5, 16
	l.ori	r16, r14, 0
	l.ori	r26, r24, 0
	l.ori	r6, r4, 0
	l.divu	r8, r13, r17
	l.divu	r31, r23, r27
	l.divu	r11, r3, r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-16(r2), r7
	l.mul	r14, r8, r17
	l.mul	r24, r31, r27
	l.mul	r4, r11, r7
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-8(r2), r6
	l.srli	r14, r16, 16
	l.srli	r24, r26, 16
	l.srli	r4, r6, 16
	l.or	r17, r13, r14
	l.or	r27, r23, r24
	l.or	r7, r3, r4
	l.andi	r14, r15, 65535
	l.andi	r24, r25, 65535
	l.andi	r4, r5, 65535
	l.mul	r13, r8, r14
	l.mul	r23, r31, r24
	l.mul	r3, r11, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-12(r2), r11
	l.ori	r16, r15, 0
	l.ori	r26, r25, 0
	l.ori	r6, r5, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgeu	r7, r3
	l.bf	.LBB2_14
	l.nop	0                       # in delay slot
# BB#11:                                # %if.then28.i
	l.addi	r15, r8, -1
	l.addi	r25, r31, -1
	l.addi	r5, r11, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
	l.add	r17, r17, r16
	l.add	r27, r27, r26
	l.add	r7, r7, r6
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r7, r6
	l.bf	.LBB2_14
	l.nop	0                       # in delay slot
# BB#12:                                # %if.then28.i
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgeu	r7, r3
	l.bf	.LBB2_14
	l.nop	0                       # in delay slot
# BB#13:                                # %if.then35.i
	l.add	r17, r17, r16
	l.add	r27, r27, r26
	l.add	r7, r7, r6
	l.addi	r15, r8, -2
	l.addi	r25, r31, -2
	l.addi	r5, r11, -2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
.LBB2_14:                               # %if.end40.i
	l.sub	r13, r17, r13
	l.sub	r23, r27, r23
	l.sub	r3, r7, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -16(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.divu	r17, r13, r15
	l.divu	r27, r23, r25
	l.divu	r7, r3, r5
	l.mul	r15, r17, r15
	l.mul	r25, r27, r25
	l.mul	r5, r7, r5
	l.sub	r13, r13, r15
	l.sub	r23, r23, r25
	l.sub	r3, r3, r5
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.andi	r15, r15, 65535
	l.andi	r25, r25, 65535
	l.andi	r5, r5, 65535
	l.or	r13, r13, r15
	l.or	r23, r23, r25
	l.or	r3, r3, r5
	l.mul	r8, r17, r14
	l.mul	r31, r27, r24
	l.mul	r11, r7, r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfgeu	r3, r11
	l.bf	.LBB2_20
	l.nop	0                       # in delay slot
# BB#15:                                # %if.then50.i
	l.add	r15, r13, r16
	l.add	r25, r23, r26
	l.add	r5, r3, r6
	l.addi	r13, r0, -1
	l.addi	r23, r0, -1
	l.addi	r3, r0, -1
	l.addi	r14, r0, -2
	l.addi	r24, r0, -2
	l.addi	r4, r0, -2
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfltu	r5, r11
	l.bf	.LBB2_17
	l.nop	0                       # in delay slot
# BB#16:                                # %if.then50.i
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
.LBB2_17:                               # %if.then50.i
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgeu	r5, r6
	l.bf	.LBB2_19
	l.nop	0                       # in delay slot
# BB#18:                                # %if.then50.i
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
.LBB2_19:                               # %if.then50.i
	l.add	r17, r17, r14
	l.add	r27, r27, r24
	l.add	r7, r7, r4
.LBB2_20:                               # %if.end63.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.or	r17, r17, r13
	l.or	r27, r27, r23
	l.or	r7, r7, r3
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.j	.LBB2_72
	l.nop	0                       # in delay slot
.LBB2_43:                               # %if.else240.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-8(r2), r4
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltu	r3, r5
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.movhi	r7, 0
	l.bf	.LBB2_72
	l.nop	0                       # in delay slot
# BB#44:                                # %do.body254.i
	l.movhi	r17, 256
	l.movhi	r27, 256
	l.movhi	r7, 256
	l.addi	r14, r0, 16
	l.addi	r24, r0, 16
	l.addi	r4, r0, 16
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfltu	r5, r7
	l.bf	.LBB2_46
	l.nop	0                       # in delay slot
# BB#45:                                # %do.body254.i
	l.addi	r14, r0, 24
	l.addi	r24, r0, 24
	l.addi	r4, r0, 24
.LBB2_46:                               # %do.body254.i
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.movhi	r7, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltui	r5, 256
	l.bf	.LBB2_48
	l.nop	0                       # in delay slot
# BB#47:                                # %do.body254.i
	l.addi	r17, r0, 8
	l.addi	r27, r0, 8
	l.addi	r7, r0, 8
.LBB2_48:                               # %do.body254.i
	l.movhi	r8, 1
	l.movhi	r31, 1
	l.movhi	r11, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfltu	r5, r11
	l.bf	.LBB2_50
	l.nop	0                       # in delay slot
# BB#49:                                # %do.body254.i
	l.ori	r17, r14, 0
	l.ori	r27, r24, 0
	l.ori	r7, r4, 0
.LBB2_50:                               # %do.body254.i
	l.srl	r14, r15, r17
	l.srl	r24, r25, r27
	l.srl	r4, r5, r7
	l.movhi	r8, hi(__clz_tab)
	l.movhi	r31, hi(__clz_tab)
	l.movhi	r11, hi(__clz_tab)
	l.ori	r8, r8, lo(__clz_tab)
	l.ori	r31, r31, lo(__clz_tab)
	l.ori	r11, r11, lo(__clz_tab)
	l.add	r14, r14, r8
	l.add	r24, r24, r31
	l.add	r4, r4, r11
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbz	r4, 0(r4)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.add	r14, r14, r17
	l.add	r24, r24, r27
	l.add	r4, r4, r7
	l.addi	r17, r0, 32
	l.addi	r27, r0, 32
	l.addi	r7, r0, 32
	l.sub	r17, r17, r14
	l.sub	r27, r27, r24
	l.sub	r7, r7, r4
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB2_56
	l.nop	0                       # in delay slot
# BB#51:                                # %if.then278.i
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfleu	r3, r5
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.bf	.LBB2_53
	l.nop	0                       # in delay slot
# BB#52:                                # %if.then278.i
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB2_53:                               # %if.then278.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r5, r6
	l.bf	.LBB2_55
	l.nop	0                       # in delay slot
# BB#54:                                # %if.then278.i
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB2_55:                               # %if.then278.i
	l.and	r13, r14, r13
	l.and	r23, r24, r23
	l.and	r3, r4, r3
	l.xori	r13, r13, -1
	l.xori	r23, r23, -1
	l.xori	r3, r3, -1
	l.andi	r17, r13, 1
	l.andi	r27, r23, 1
	l.andi	r7, r3, 1
	l.j	.LBB2_72
	l.nop	0                       # in delay slot
.LBB2_56:                               # %if.else303.i
	l.sll	r15, r15, r17
	l.sll	r25, r25, r27
	l.sll	r5, r5, r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-16(r2), r7
	l.srl	r17, r16, r14
	l.srl	r27, r26, r24
	l.srl	r7, r6, r4
	l.or	r15, r15, r17
	l.or	r25, r25, r27
	l.or	r5, r5, r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-36(r2), r5
	l.srli	r16, r15, 16
	l.srli	r26, r25, 16
	l.srli	r6, r5, 16
	l.srl	r15, r13, r14
	l.srl	r25, r23, r24
	l.srl	r5, r3, r4
	l.divu	r8, r15, r16
	l.divu	r31, r25, r26
	l.divu	r11, r5, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-24(r2), r6
	l.mul	r17, r8, r16
	l.mul	r27, r31, r26
	l.mul	r7, r11, r6
	l.sub	r15, r15, r17
	l.sub	r25, r25, r27
	l.sub	r5, r5, r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -16(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -8(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.srl	r14, r16, r14
	l.srl	r24, r26, r24
	l.srl	r4, r6, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -36(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sll	r13, r13, r17
	l.sll	r23, r23, r27
	l.sll	r3, r3, r7
	l.or	r14, r13, r14
	l.or	r24, r23, r24
	l.or	r4, r3, r4
	l.slli	r13, r15, 16
	l.slli	r23, r25, 16
	l.slli	r3, r5, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-28(r2), r4
	l.srli	r14, r14, 16
	l.srli	r24, r24, 16
	l.srli	r4, r4, 16
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.andi	r14, r16, 65535
	l.andi	r24, r26, 65535
	l.andi	r4, r6, 65535
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-32(r2), r4
	l.mul	r14, r8, r14
	l.mul	r24, r31, r24
	l.mul	r4, r11, r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r3, r4
	l.ori	r15, r8, 0
	l.ori	r25, r31, 0
	l.ori	r5, r11, 0
	l.bf	.LBB2_60
	l.nop	0                       # in delay slot
# BB#57:                                # %if.then332.i
	l.addi	r15, r8, -1
	l.addi	r25, r31, -1
	l.addi	r5, r11, -1
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r3, r6
	l.bf	.LBB2_60
	l.nop	0                       # in delay slot
# BB#58:                                # %if.then332.i
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r3, r4
	l.bf	.LBB2_60
	l.nop	0                       # in delay slot
# BB#59:                                # %if.then340.i
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.addi	r15, r8, -2
	l.addi	r25, r31, -2
	l.addi	r5, r11, -2
.LBB2_60:                               # %if.end345.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-20(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sll	r8, r15, r17
	l.sll	r31, r25, r27
	l.sll	r11, r5, r7
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -24(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.divu	r14, r13, r15
	l.divu	r24, r23, r25
	l.divu	r4, r3, r5
	l.mul	r15, r14, r15
	l.mul	r25, r24, r25
	l.mul	r5, r4, r5
	l.sub	r13, r13, r15
	l.sub	r23, r23, r25
	l.sub	r3, r3, r5
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -28(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.andi	r15, r15, 65535
	l.andi	r25, r25, 65535
	l.andi	r5, r5, 65535
	l.or	r13, r13, r15
	l.or	r23, r23, r25
	l.or	r3, r3, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -32(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.mul	r15, r14, r15
	l.mul	r25, r24, r25
	l.mul	r5, r4, r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgeu	r3, r5
	l.ori	r17, r14, 0
	l.ori	r27, r24, 0
	l.ori	r7, r4, 0
	l.bf	.LBB2_64
	l.nop	0                       # in delay slot
# BB#61:                                # %if.then355.i
	l.addi	r17, r14, -1
	l.addi	r27, r24, -1
	l.addi	r7, r4, -1
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r3, r6
	l.bf	.LBB2_64
	l.nop	0                       # in delay slot
# BB#62:                                # %if.then355.i
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgeu	r3, r5
	l.bf	.LBB2_64
	l.nop	0                       # in delay slot
# BB#63:                                # %if.then363.i
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.addi	r17, r14, -2
	l.addi	r27, r24, -2
	l.addi	r7, r4, -2
.LBB2_64:                               # %if.end368.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-24(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.andi	r14, r8, 65535
	l.andi	r24, r31, 65535
	l.andi	r4, r11, 65535
	l.srli	r8, r8, 16
	l.srli	r31, r31, 16
	l.srli	r11, r11, 16
	l.andi	r13, r17, 65535
	l.andi	r23, r27, 65535
	l.andi	r3, r7, 65535
	l.mul	r15, r13, r8
	l.mul	r25, r23, r31
	l.mul	r5, r3, r11
	l.mul	r13, r13, r14
	l.mul	r23, r23, r24
	l.mul	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-28(r2), r3
	l.srli	r13, r13, 16
	l.srli	r23, r23, 16
	l.srli	r3, r3, 16
	l.add	r16, r13, r15
	l.add	r26, r23, r25
	l.add	r6, r3, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -20(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.or	r17, r17, r13
	l.or	r27, r27, r23
	l.or	r7, r7, r3
	l.srli	r13, r17, 16
	l.srli	r23, r27, 16
	l.srli	r3, r7, 16
	l.mul	r14, r13, r14
	l.mul	r24, r23, r24
	l.mul	r4, r3, r4
	l.add	r15, r16, r14
	l.add	r25, r26, r24
	l.add	r5, r6, r4
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r5, r6
	l.bf	.LBB2_66
	l.nop	0                       # in delay slot
# BB#65:                                # %if.end368.i
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB2_66:                               # %if.end368.i
	l.mul	r13, r13, r8
	l.mul	r23, r23, r31
	l.mul	r3, r3, r11
	l.movhi	r16, 1
	l.movhi	r26, 1
	l.movhi	r6, 1
	l.add	r8, r13, r16
	l.add	r31, r23, r26
	l.add	r11, r3, r6
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB2_68
	l.nop	0                       # in delay slot
# BB#67:                                # %if.end368.i
	l.ori	r8, r13, 0
	l.ori	r31, r23, 0
	l.ori	r11, r3, 0
.LBB2_68:                               # %if.end368.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -24(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.srli	r14, r15, 16
	l.srli	r24, r25, 16
	l.srli	r4, r5, 16
	l.add	r16, r8, r14
	l.add	r26, r31, r24
	l.add	r6, r11, r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtu	r6, r3
	l.bf	.LBB2_71
	l.nop	0                       # in delay slot
# BB#69:                                # %lor.lhs.false401.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -16(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sll	r14, r14, r8
	l.sll	r24, r24, r31
	l.sll	r4, r4, r11
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -28(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.andi	r8, r8, 65535
	l.andi	r31, r31, 65535
	l.andi	r11, r11, 65535
	l.slli	r15, r15, 16
	l.slli	r25, r25, 16
	l.slli	r5, r5, 16
	l.or	r15, r15, r8
	l.or	r25, r25, r31
	l.or	r5, r5, r11
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfleu	r5, r4
	l.bf	.LBB2_72
	l.nop	0                       # in delay slot
# BB#70:                                # %lor.lhs.false401.i
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r6, r3
	l.bf	.LBB2_72
	l.nop	0                       # in delay slot
.LBB2_71:                               # %if.then406.i
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.addi	r17, r17, -1
	l.addi	r27, r27, -1
	l.addi	r7, r7, -1
	l.j	.LBB2_72
	l.nop	0                       # in delay slot
.LBB2_21:                               # %if.else.i
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB2_23
	l.nop	0                       # in delay slot
# BB#22:                                # %if.then98.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -12(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sub	r13, r13, r16
	l.sub	r23, r23, r26
	l.sub	r3, r3, r6
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.j	.LBB2_32
	l.nop	0                       # in delay slot
.LBB2_23:                               # %if.else100.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-8(r2), r4
	l.srl	r14, r14, r16
	l.srl	r24, r24, r26
	l.srl	r4, r4, r6
	l.sll	r8, r13, r17
	l.sll	r31, r23, r27
	l.sll	r11, r3, r7
	l.or	r8, r8, r14
	l.or	r31, r31, r24
	l.or	r11, r11, r4
	l.srl	r13, r13, r16
	l.srl	r23, r23, r26
	l.srl	r3, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -12(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sll	r16, r16, r17
	l.sll	r26, r26, r27
	l.sll	r6, r6, r7
	l.srli	r14, r16, 16
	l.srli	r24, r26, 16
	l.srli	r4, r6, 16
	l.divu	r15, r13, r14
	l.divu	r25, r23, r24
	l.divu	r5, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-20(r2), r4
	l.mul	r14, r15, r14
	l.mul	r24, r25, r24
	l.mul	r4, r5, r4
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-16(r2), r11
	l.srli	r14, r8, 16
	l.srli	r24, r31, 16
	l.srli	r4, r11, 16
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.andi	r8, r16, 65535
	l.andi	r31, r26, 65535
	l.andi	r11, r6, 65535
	l.mul	r14, r15, r8
	l.mul	r24, r25, r31
	l.mul	r4, r5, r11
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r3, r4
	l.bf	.LBB2_27
	l.nop	0                       # in delay slot
# BB#24:                                # %if.then126.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-24(r2), r4
	l.addi	r14, r15, -1
	l.addi	r24, r25, -1
	l.addi	r4, r5, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -24(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r3, r6
	l.bf	.LBB2_27
	l.nop	0                       # in delay slot
# BB#25:                                # %if.then126.i
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r3, r4
	l.bf	.LBB2_27
	l.nop	0                       # in delay slot
# BB#26:                                # %if.then134.i
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.addi	r15, r15, -2
	l.addi	r25, r25, -2
	l.addi	r5, r5, -2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
.LBB2_27:                               # %if.end139.i
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -20(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.divu	r15, r13, r14
	l.divu	r25, r23, r24
	l.divu	r5, r3, r4
	l.mul	r14, r15, r14
	l.mul	r24, r25, r24
	l.mul	r4, r5, r4
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -16(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.andi	r14, r14, 65535
	l.andi	r24, r24, 65535
	l.andi	r4, r4, 65535
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.mul	r14, r15, r8
	l.mul	r24, r25, r31
	l.mul	r4, r5, r11
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r3, r4
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
	l.bf	.LBB2_31
	l.nop	0                       # in delay slot
# BB#28:                                # %if.then149.i
	l.addi	r8, r15, -1
	l.addi	r31, r25, -1
	l.addi	r11, r5, -1
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r3, r6
	l.bf	.LBB2_31
	l.nop	0                       # in delay slot
# BB#29:                                # %if.then149.i
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r3, r4
	l.bf	.LBB2_31
	l.nop	0                       # in delay slot
# BB#30:                                # %if.then157.i
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.addi	r8, r15, -2
	l.addi	r31, r25, -2
	l.addi	r11, r5, -2
.LBB2_31:                               # %if.end162.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sll	r15, r15, r17
	l.sll	r25, r25, r27
	l.sll	r5, r5, r7
	l.sub	r14, r13, r14
	l.sub	r24, r23, r24
	l.sub	r4, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.or	r13, r8, r13
	l.or	r23, r31, r23
	l.or	r3, r11, r3
.LBB2_32:                               # %do.body169.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.srli	r8, r16, 16
	l.srli	r31, r26, 16
	l.srli	r11, r6, 16
	l.divu	r13, r14, r8
	l.divu	r23, r24, r31
	l.divu	r3, r4, r11
	l.mul	r17, r13, r8
	l.mul	r27, r23, r31
	l.mul	r7, r3, r11
	l.sub	r14, r14, r17
	l.sub	r24, r24, r27
	l.sub	r4, r4, r7
	l.slli	r14, r14, 16
	l.slli	r24, r24, 16
	l.slli	r4, r4, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-8(r2), r5
	l.srli	r17, r15, 16
	l.srli	r27, r25, 16
	l.srli	r7, r5, 16
	l.or	r17, r14, r17
	l.or	r27, r24, r27
	l.or	r7, r4, r7
	l.andi	r14, r16, 65535
	l.andi	r24, r26, 65535
	l.andi	r4, r6, 65535
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.mul	r14, r13, r14
	l.mul	r24, r23, r24
	l.mul	r4, r3, r4
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r7, r4
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.bf	.LBB2_36
	l.nop	0                       # in delay slot
# BB#33:                                # %if.then187.i
	l.addi	r15, r13, -1
	l.addi	r25, r23, -1
	l.addi	r5, r3, -1
	l.add	r17, r17, r16
	l.add	r27, r27, r26
	l.add	r7, r7, r6
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r7, r6
	l.bf	.LBB2_36
	l.nop	0                       # in delay slot
# BB#34:                                # %if.then187.i
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r7, r4
	l.bf	.LBB2_36
	l.nop	0                       # in delay slot
# BB#35:                                # %if.then195.i
	l.add	r17, r17, r16
	l.add	r27, r27, r26
	l.add	r7, r7, r6
	l.addi	r15, r13, -2
	l.addi	r25, r23, -2
	l.addi	r5, r3, -2
.LBB2_36:                               # %if.end200.i
	l.sub	r13, r17, r14
	l.sub	r23, r27, r24
	l.sub	r3, r7, r4
	l.divu	r17, r13, r8
	l.divu	r27, r23, r31
	l.divu	r7, r3, r11
	l.mul	r14, r17, r8
	l.mul	r24, r27, r31
	l.mul	r4, r7, r11
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.andi	r14, r14, 65535
	l.andi	r24, r24, 65535
	l.andi	r4, r4, 65535
	l.or	r14, r13, r14
	l.or	r24, r23, r24
	l.or	r4, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.mul	r13, r17, r13
	l.mul	r23, r27, r23
	l.mul	r3, r7, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -16(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgeu	r4, r3
	l.bf	.LBB2_42
	l.nop	0                       # in delay slot
# BB#37:                                # %if.then210.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-8(r2), r5
	l.add	r15, r14, r16
	l.add	r25, r24, r26
	l.add	r5, r4, r6
	l.addi	r14, r0, -1
	l.addi	r24, r0, -1
	l.addi	r4, r0, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.addi	r14, r0, -2
	l.addi	r24, r0, -2
	l.addi	r4, r0, -2
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfltu	r5, r3
	l.bf	.LBB2_39
	l.nop	0                       # in delay slot
# BB#38:                                # %if.then210.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB2_39:                               # %if.then210.i
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgeu	r5, r6
	l.bf	.LBB2_41
	l.nop	0                       # in delay slot
# BB#40:                                # %if.then210.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB2_41:                               # %if.then210.i
	l.add	r17, r17, r14
	l.add	r27, r27, r24
	l.add	r7, r7, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
.LBB2_42:                               # %if.end223.i
	l.slli	r13, r15, 16
	l.slli	r23, r25, 16
	l.slli	r3, r5, 16
	l.or	r17, r17, r13
	l.or	r27, r27, r23
	l.or	r7, r7, r3
.LBB2_72:                               # %__udivmoddi4.exit
	l.ori	r12, r17, 0
	l.ori	r12, r27, 0
	l.ori	r12, r7, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -16
	l.addi	r21, r21, -16           # CFC
	l.addi	r1, r1, -16
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltui	r5, 8
	l.ori	r17, r13, 0
	l.ori	r27, r23, 0
	l.ori	r7, r3, 0
	l.bf	.LBB3_13
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.andi	r16, r14, 255
	l.andi	r26, r24, 255
	l.andi	r6, r4, 255
	l.ori	r8, r14, 0
	l.ori	r31, r24, 0
	l.ori	r11, r4, 0
	l.slli	r14, r16, 8
	l.slli	r24, r26, 8
	l.slli	r4, r6, 8
	l.or	r16, r14, r16
	l.or	r26, r24, r26
	l.or	r6, r4, r6
	l.slli	r14, r16, 16
	l.slli	r24, r26, 16
	l.slli	r4, r6, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-16(r2), r4
	l.andi	r14, r13, 3
	l.andi	r24, r23, 3
	l.andi	r4, r3, 3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.ori	r17, r13, 0
	l.ori	r27, r23, 0
	l.ori	r7, r3, 0
	l.bf	.LBB3_4
	l.nop	0                       # in delay slot
# BB#2:                                 # %while.body.preheader
	l.ori	r17, r13, 0
	l.ori	r27, r23, 0
	l.ori	r7, r3, 0
.LBB3_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sb	0(r7), r11
	l.addi	r15, r15, -1
	l.addi	r25, r25, -1
	l.addi	r5, r5, -1
	l.addi	r17, r17, 1
	l.addi	r27, r27, 1
	l.addi	r7, r7, 1
	l.andi	r14, r17, 3
	l.andi	r24, r27, 3
	l.andi	r4, r7, 3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB3_3
	l.nop	0                       # in delay slot
.LBB3_4:                                # %while.end
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-12(r2), r11
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -16(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.or	r14, r14, r16
	l.or	r24, r24, r26
	l.or	r4, r4, r6
	l.srli	r8, r15, 5
	l.srli	r31, r25, 5
	l.srli	r11, r5, 5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-8(r2), r3
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB3_8
	l.nop	0                       # in delay slot
# BB#5:                                 # %while.body10.preheader
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.sub	r8, r16, r13
	l.sub	r31, r26, r23
	l.sub	r11, r6, r3
	l.slli	r16, r13, 5
	l.slli	r26, r23, 5
	l.slli	r6, r3, 5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-16(r2), r6
	l.ori	r16, r17, 0
	l.ori	r26, r27, 0
	l.ori	r6, r7, 0
.LBB3_6:                                # %while.body10
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r6), r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	4(r6), r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	8(r6), r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	12(r6), r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	16(r6), r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	20(r6), r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	24(r6), r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	28(r6), r4
	l.addi	r16, r16, 32
	l.addi	r26, r26, 32
	l.addi	r6, r6, 32
	l.addi	r8, r8, 1
	l.addi	r31, r31, 1
	l.addi	r11, r11, 1
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfnei	r11, 0
	l.bf	.LBB3_6
	l.nop	0                       # in delay slot
# BB#7:                                 # %while.end21.loopexit
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -16(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r17, r17, r16
	l.add	r27, r27, r26
	l.add	r7, r7, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -8(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB3_8:                                # %while.end21
	l.srli	r16, r15, 2
	l.srli	r26, r25, 2
	l.srli	r6, r5, 2
	l.andi	r8, r16, 7
	l.andi	r31, r26, 7
	l.andi	r11, r6, 7
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB3_12
	l.nop	0                       # in delay slot
# BB#9:                                 # %while.body27.preheader
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.sub	r8, r16, r13
	l.sub	r31, r26, r23
	l.sub	r11, r6, r3
	l.slli	r16, r13, 2
	l.slli	r26, r23, 2
	l.slli	r6, r3, 2
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
.LBB3_10:                               # %while.body27
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r3), r4
	l.addi	r13, r13, 4
	l.addi	r23, r23, 4
	l.addi	r3, r3, 4
	l.addi	r8, r8, 1
	l.addi	r31, r31, 1
	l.addi	r11, r11, 1
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfnei	r11, 0
	l.bf	.LBB3_10
	l.nop	0                       # in delay slot
# BB#11:                                # %while.end31.loopexit
	l.add	r17, r17, r16
	l.add	r27, r27, r26
	l.add	r7, r7, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -8(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB3_12:                               # %while.end31
	l.andi	r15, r15, 3
	l.andi	r25, r25, 3
	l.andi	r5, r5, 3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB3_13:                               # %while.cond33.preheader
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB3_15
	l.nop	0                       # in delay slot
.LBB3_14:                               # %while.body36
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r7), r4
	l.addi	r17, r17, 1
	l.addi	r27, r27, 1
	l.addi	r7, r7, 1
	l.addi	r15, r15, -1
	l.addi	r25, r25, -1
	l.addi	r5, r5, -1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB3_14
	l.nop	0                       # in delay slot
.LBB3_15:                               # %while.end41
	l.ori	r8, r13, 0
	l.ori	r31, r23, 0
	l.ori	r11, r3, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.andi	r15, r14, 255
	l.andi	r25, r24, 255
	l.andi	r5, r4, 255
	l.xor	r13, r15, r13
	l.xor	r23, r25, r23
	l.xor	r3, r5, r3
	l.slli	r13, r13, 2
	l.slli	r23, r23, 2
	l.slli	r3, r3, 2
	l.movhi	r15, hi(crc_32_tab)
	l.movhi	r25, hi(crc_32_tab)
	l.movhi	r5, hi(crc_32_tab)
	l.ori	r15, r15, lo(crc_32_tab)
	l.ori	r25, r25, lo(crc_32_tab)
	l.ori	r5, r5, lo(crc_32_tab)
	l.add	r13, r13, r15
	l.add	r23, r23, r25
	l.add	r3, r3, r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.srli	r14, r14, 8
	l.srli	r24, r24, 8
	l.srli	r4, r4, 8
	l.xor	r8, r13, r14
	l.xor	r31, r23, r24
	l.xor	r11, r3, r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	0(r4), r6
	l.addi	r15, r0, -1
	l.addi	r25, r0, -1
	l.addi	r5, r0, -1
	l.movhi	r17, hi(crc_32_tab)
	l.movhi	r27, hi(crc_32_tab)
	l.movhi	r7, hi(crc_32_tab)
	l.ori	r17, r17, lo(crc_32_tab)
	l.ori	r27, r27, lo(crc_32_tab)
	l.ori	r7, r7, lo(crc_32_tab)
.LBB5_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.xor	r8, r16, r15
	l.xor	r31, r26, r25
	l.xor	r11, r6, r5
	l.andi	r8, r8, 255
	l.andi	r31, r31, 255
	l.andi	r11, r11, 255
	l.slli	r8, r8, 2
	l.slli	r31, r31, 2
	l.slli	r11, r11, 2
	l.add	r8, r8, r17
	l.add	r31, r31, r27
	l.add	r11, r11, r7
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.lwz	r11, 0(r11)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.srli	r15, r15, 8
	l.srli	r25, r25, 8
	l.srli	r5, r5, 8
	l.xor	r15, r8, r15
	l.xor	r25, r31, r25
	l.xor	r5, r11, r5
	l.addi	r16, r16, 1
	l.addi	r26, r26, 1
	l.addi	r6, r6, 1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 2216
	l.bf	.LBB5_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %while.end
	l.addi	r16, r0, 2216
	l.addi	r26, r0, 2216
	l.addi	r6, r0, 2216
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	0(r4), r6
	l.xori	r14, r15, -1
	l.xori	r24, r25, -1
	l.xori	r4, r5, -1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r3), r4
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB6_4
	l.nop	0                       # in delay slot
# BB#1:                                 # %for.body.preheader
	l.addi	r15, r0, -1
	l.addi	r25, r0, -1
	l.addi	r5, r0, -1
	l.movhi	r16, hi(crc_32_tab)
	l.movhi	r26, hi(crc_32_tab)
	l.movhi	r6, hi(crc_32_tab)
	l.ori	r16, r16, lo(crc_32_tab)
	l.ori	r26, r26, lo(crc_32_tab)
	l.ori	r6, r6, lo(crc_32_tab)
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	l.andi	r17, r15, 255
	l.andi	r27, r25, 255
	l.andi	r7, r5, 255
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.xor	r17, r8, r17
	l.xor	r27, r31, r27
	l.xor	r7, r11, r7
	l.slli	r17, r17, 2
	l.slli	r27, r27, 2
	l.slli	r7, r7, 2
	l.add	r17, r17, r16
	l.add	r27, r27, r26
	l.add	r7, r7, r6
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.lwz	r7, 0(r7)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.srli	r15, r15, 8
	l.srli	r25, r25, 8
	l.srli	r5, r5, 8
	l.xor	r15, r17, r15
	l.xor	r25, r27, r25
	l.xor	r5, r7, r5
	l.addi	r13, r13, 1
	l.addi	r23, r23, 1
	l.addi	r3, r3, 1
	l.addi	r14, r14, -1
	l.addi	r24, r24, -1
	l.addi	r4, r4, -1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB6_2
	l.nop	0                       # in delay slot
# BB#3:                                 # %for.end.loopexit
	l.xori	r8, r15, -1
	l.xori	r31, r25, -1
	l.xori	r11, r5, -1
.LBB6_4:                                # %for.end
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
l.nop 100
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -16
	l.addi	r21, r21, -16           # CFC
	l.addi	r1, r1, -16
	l.addi	r13, r0, -1
	l.addi	r23, r0, -1
	l.addi	r3, r0, -1
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.movhi	r15, hi(crc_32_tab)
	l.movhi	r25, hi(crc_32_tab)
	l.movhi	r5, hi(crc_32_tab)
	l.ori	r15, r15, lo(crc_32_tab)
	l.ori	r25, r25, lo(crc_32_tab)
	l.ori	r5, r5, lo(crc_32_tab)
.LBB7_1:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	l.xor	r16, r13, r14
	l.xor	r26, r23, r24
	l.xor	r6, r3, r4
	l.andi	r16, r16, 255
	l.andi	r26, r26, 255
	l.andi	r6, r6, 255
	l.slli	r16, r16, 2
	l.slli	r26, r26, 2
	l.slli	r6, r6, 2
	l.add	r16, r16, r15
	l.add	r26, r26, r25
	l.add	r6, r6, r5
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lwz	r6, 0(r6)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.srli	r13, r13, 8
	l.srli	r23, r23, 8
	l.srli	r3, r3, 8
	l.xor	r13, r16, r13
	l.xor	r23, r26, r23
	l.xor	r3, r6, r3
	l.addi	r14, r14, 1
	l.addi	r24, r24, 1
	l.addi	r4, r4, 1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 2216
	l.bf	.LBB7_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %crc32file.exit
	l.addi	r14, r0, 2216
	l.addi	r24, r0, 2216
	l.addi	r4, r0, 2216
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	4(r1), r4
	l.xori	r13, r13, -1
	l.xori	r23, r23, -1
	l.xori	r3, r3, -1
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	0(r1), r3
	l.movhi	r13, hi(.L.str)
	l.movhi	r23, hi(.L.str)
	l.movhi	r3, hi(.L.str)
	l.ori	r13, r13, lo(.L.str)
	l.ori	r23, r23, lo(.L.str)
	l.ori	r3, r3, lo(.L.str)
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
    l.nop 200
	#l.jr	r9
    l.nop 1111
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -28
	l.addi	r21, r21, -28           # CFC
	l.addi	r1, r1, -28
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.movhi	r15, 127
	l.movhi	r25, 127
	l.movhi	r5, 127
	l.ori	r15, r15, 65535
	l.ori	r25, r25, 65535
	l.ori	r5, r5, 65535
	l.and	r8, r13, r15
	l.and	r31, r23, r25
	l.and	r11, r3, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.srli	r15, r13, 23
	l.srli	r25, r23, 23
	l.srli	r5, r3, 23
	l.andi	r13, r15, 255
	l.andi	r23, r25, 255
	l.andi	r3, r5, 255
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB8_3
	l.nop	0                       # in delay slot
.LBB8_1:                                # %entry
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 255
	l.bf	.LBB8_5
	l.nop	0                       # in delay slot
.LBB8_2:                                # %sw.default
	l.slli	r15, r8, 3
	l.slli	r25, r31, 3
	l.slli	r5, r11, 3
	l.movhi	r17, 1024
	l.movhi	r27, 1024
	l.movhi	r7, 1024
	l.or	r14, r15, r17
	l.or	r24, r25, r27
	l.or	r4, r5, r7
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-8(r2), r5
	l.addi	r13, r13, -127
	l.addi	r23, r23, -127
	l.addi	r3, r3, -127
	l.j	.LBB8_8
	l.nop	0                       # in delay slot
.LBB8_3:                                # %sw.bb
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-8(r2), r4
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB8_8
	l.nop	0                       # in delay slot
# BB#4:                                 # %if.else
	l.srli	r15, r8, 1
	l.srli	r25, r31, 1
	l.srli	r5, r11, 1
	l.or	r15, r8, r15
	l.or	r25, r31, r25
	l.or	r5, r11, r5
	l.srli	r17, r15, 2
	l.srli	r27, r25, 2
	l.srli	r7, r5, 2
	l.or	r15, r15, r17
	l.or	r25, r25, r27
	l.or	r5, r5, r7
	l.srli	r17, r15, 4
	l.srli	r27, r25, 4
	l.srli	r7, r5, 4
	l.or	r15, r15, r17
	l.or	r25, r25, r27
	l.or	r5, r5, r7
	l.srli	r17, r15, 8
	l.srli	r27, r25, 8
	l.srli	r7, r5, 8
	l.or	r15, r15, r17
	l.or	r25, r25, r27
	l.or	r5, r5, r7
	l.srli	r17, r15, 16
	l.srli	r27, r25, 16
	l.srli	r7, r5, 16
	l.or	r15, r15, r17
	l.or	r25, r25, r27
	l.or	r5, r5, r7
	l.movhi	r17, 21845
	l.movhi	r27, 21845
	l.movhi	r7, 21845
	l.ori	r14, r17, 21845
	l.ori	r24, r27, 21845
	l.ori	r4, r7, 21845
	l.xori	r15, r15, -1
	l.xori	r25, r25, -1
	l.xori	r5, r5, -1
	l.srli	r17, r15, 1
	l.srli	r27, r25, 1
	l.srli	r7, r5, 1
	l.and	r17, r17, r14
	l.and	r27, r27, r24
	l.and	r7, r7, r4
	l.sub	r15, r15, r17
	l.sub	r25, r25, r27
	l.sub	r5, r5, r7
	l.movhi	r17, 13107
	l.movhi	r27, 13107
	l.movhi	r7, 13107
	l.ori	r17, r17, 13107
	l.ori	r27, r27, 13107
	l.ori	r7, r7, 13107
	l.and	r14, r15, r17
	l.and	r24, r25, r27
	l.and	r4, r5, r7
	l.srli	r15, r15, 2
	l.srli	r25, r25, 2
	l.srli	r5, r5, 2
	l.and	r15, r15, r17
	l.and	r25, r25, r27
	l.and	r5, r5, r7
	l.add	r15, r14, r15
	l.add	r25, r24, r25
	l.add	r5, r4, r5
	l.srli	r17, r15, 4
	l.srli	r27, r25, 4
	l.srli	r7, r5, 4
	l.add	r15, r15, r17
	l.add	r25, r25, r27
	l.add	r5, r5, r7
	l.movhi	r17, 3855
	l.movhi	r27, 3855
	l.movhi	r7, 3855
	l.ori	r17, r17, 3855
	l.ori	r27, r27, 3855
	l.ori	r7, r7, 3855
	l.and	r15, r15, r17
	l.and	r25, r25, r27
	l.and	r5, r5, r7
	l.movhi	r17, 257
	l.movhi	r27, 257
	l.movhi	r7, 257
	l.ori	r17, r17, 257
	l.ori	r27, r27, 257
	l.ori	r7, r7, 257
	l.mul	r15, r15, r17
	l.mul	r25, r25, r27
	l.mul	r5, r5, r7
	l.srli	r15, r15, 24
	l.srli	r25, r25, 24
	l.srli	r5, r5, 24
	l.addi	r17, r0, -118
	l.addi	r27, r0, -118
	l.addi	r7, r0, -118
	l.sub	r17, r17, r15
	l.sub	r27, r27, r25
	l.sub	r7, r7, r5
	l.add	r13, r17, r13
	l.add	r23, r27, r23
	l.add	r3, r7, r3
	l.addi	r15, r15, -5
	l.addi	r25, r25, -5
	l.addi	r5, r5, -5
	l.sll	r14, r8, r15
	l.sll	r24, r31, r25
	l.sll	r4, r11, r5
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-8(r2), r5
	l.j	.LBB8_8
	l.nop	0                       # in delay slot
.LBB8_5:                                # %sw.bb25
	l.addi	r14, r0, 2
	l.addi	r24, r0, 2
	l.addi	r4, r0, 2
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB8_7
	l.nop	0                       # in delay slot
# BB#6:                                 # %sw.bb25
	l.addi	r14, r0, 3
	l.addi	r24, r0, 3
	l.addi	r4, r0, 3
.LBB8_7:                                # %sw.bb25
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-8(r2), r4
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
.LBB8_8:                                # %do.body39
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-20(r2), r4
	l.movhi	r15, 127
	l.movhi	r25, 127
	l.movhi	r5, 127
	l.ori	r15, r15, 65535
	l.ori	r25, r25, 65535
	l.ori	r5, r5, 65535
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.and	r15, r14, r15
	l.and	r25, r24, r25
	l.and	r5, r4, r5
	l.srli	r17, r14, 23
	l.srli	r27, r24, 23
	l.srli	r7, r4, 23
	l.andi	r8, r17, 255
	l.andi	r31, r27, 255
	l.andi	r11, r7, 255
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB8_11
	l.nop	0                       # in delay slot
.LBB8_9:                                # %do.body39
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 255
	l.bf	.LBB8_13
	l.nop	0                       # in delay slot
.LBB8_10:                               # %sw.default55
	l.slli	r15, r15, 3
	l.slli	r25, r25, 3
	l.slli	r5, r5, 3
	l.movhi	r17, 1024
	l.movhi	r27, 1024
	l.movhi	r7, 1024
	l.or	r17, r15, r17
	l.or	r27, r25, r27
	l.or	r7, r5, r7
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.addi	r8, r8, -127
	l.addi	r31, r31, -127
	l.addi	r11, r11, -127
	l.j	.LBB8_16
	l.nop	0                       # in delay slot
.LBB8_11:                               # %sw.bb62
	l.addi	r16, r0, 1
	l.addi	r26, r0, 1
	l.addi	r6, r0, 1
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.movhi	r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB8_16
	l.nop	0                       # in delay slot
# BB#12:                                # %if.else65
	l.srli	r17, r15, 1
	l.srli	r27, r25, 1
	l.srli	r7, r5, 1
	l.or	r14, r15, r17
	l.or	r24, r25, r27
	l.or	r4, r5, r7
	l.srli	r17, r14, 2
	l.srli	r27, r24, 2
	l.srli	r7, r4, 2
	l.or	r14, r14, r17
	l.or	r24, r24, r27
	l.or	r4, r4, r7
	l.srli	r17, r14, 4
	l.srli	r27, r24, 4
	l.srli	r7, r4, 4
	l.or	r14, r14, r17
	l.or	r24, r24, r27
	l.or	r4, r4, r7
	l.srli	r17, r14, 8
	l.srli	r27, r24, 8
	l.srli	r7, r4, 8
	l.or	r14, r14, r17
	l.or	r24, r24, r27
	l.or	r4, r4, r7
	l.srli	r17, r14, 16
	l.srli	r27, r24, 16
	l.srli	r7, r4, 16
	l.or	r14, r14, r17
	l.or	r24, r24, r27
	l.or	r4, r4, r7
	l.movhi	r17, 21845
	l.movhi	r27, 21845
	l.movhi	r7, 21845
	l.ori	r16, r17, 21845
	l.ori	r26, r27, 21845
	l.ori	r6, r7, 21845
	l.xori	r14, r14, -1
	l.xori	r24, r24, -1
	l.xori	r4, r4, -1
	l.srli	r17, r14, 1
	l.srli	r27, r24, 1
	l.srli	r7, r4, 1
	l.and	r17, r17, r16
	l.and	r27, r27, r26
	l.and	r7, r7, r6
	l.sub	r14, r14, r17
	l.sub	r24, r24, r27
	l.sub	r4, r4, r7
	l.movhi	r17, 13107
	l.movhi	r27, 13107
	l.movhi	r7, 13107
	l.ori	r17, r17, 13107
	l.ori	r27, r27, 13107
	l.ori	r7, r7, 13107
	l.and	r16, r14, r17
	l.and	r26, r24, r27
	l.and	r6, r4, r7
	l.srli	r14, r14, 2
	l.srli	r24, r24, 2
	l.srli	r4, r4, 2
	l.and	r14, r14, r17
	l.and	r24, r24, r27
	l.and	r4, r4, r7
	l.add	r14, r16, r14
	l.add	r24, r26, r24
	l.add	r4, r6, r4
	l.srli	r17, r14, 4
	l.srli	r27, r24, 4
	l.srli	r7, r4, 4
	l.add	r14, r14, r17
	l.add	r24, r24, r27
	l.add	r4, r4, r7
	l.movhi	r17, 3855
	l.movhi	r27, 3855
	l.movhi	r7, 3855
	l.ori	r17, r17, 3855
	l.ori	r27, r27, 3855
	l.ori	r7, r7, 3855
	l.and	r14, r14, r17
	l.and	r24, r24, r27
	l.and	r4, r4, r7
	l.movhi	r17, 257
	l.movhi	r27, 257
	l.movhi	r7, 257
	l.ori	r17, r17, 257
	l.ori	r27, r27, 257
	l.ori	r7, r7, 257
	l.mul	r14, r14, r17
	l.mul	r24, r24, r27
	l.mul	r4, r4, r7
	l.srli	r14, r14, 24
	l.srli	r24, r24, 24
	l.srli	r4, r4, 24
	l.addi	r17, r0, -118
	l.addi	r27, r0, -118
	l.addi	r7, r0, -118
	l.sub	r17, r17, r14
	l.sub	r27, r27, r24
	l.sub	r7, r7, r4
	l.add	r8, r17, r8
	l.add	r31, r27, r31
	l.add	r11, r7, r11
	l.addi	r14, r14, -5
	l.addi	r24, r24, -5
	l.addi	r4, r4, -5
	l.sll	r17, r15, r14
	l.sll	r27, r25, r24
	l.sll	r7, r5, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.j	.LBB8_16
	l.nop	0                       # in delay slot
.LBB8_13:                               # %sw.bb79
	l.addi	r16, r0, 2
	l.addi	r26, r0, 2
	l.addi	r6, r0, 2
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB8_15
	l.nop	0                       # in delay slot
# BB#14:                                # %sw.bb79
	l.addi	r16, r0, 3
	l.addi	r26, r0, 3
	l.addi	r6, r0, 3
.LBB8_15:                               # %sw.bb79
	l.ori	r17, r15, 0
	l.ori	r27, r25, 0
	l.ori	r7, r5, 0
.LBB8_16:                               # %do.body98
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-24(r2), r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -16(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.srli	r17, r15, 31
	l.srli	r27, r25, 31
	l.srli	r7, r5, 31
	l.sub	r13, r13, r8
	l.sub	r23, r23, r31
	l.sub	r3, r3, r11
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.slli	r14, r14, 2
	l.slli	r24, r24, 2
	l.slli	r4, r4, 2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-28(r2), r6
	l.or	r14, r16, r14
	l.or	r24, r26, r24
	l.or	r4, r6, r4
	l.andi	r16, r14, 15
	l.andi	r26, r24, 15
	l.andi	r6, r4, 15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtui	r6, 15
	l.bf	.LBB8_42
	l.nop	0                       # in delay slot
.LBB8_17:                               # %do.body98
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.srli	r15, r13, 31
	l.srli	r25, r23, 31
	l.srli	r5, r3, 31
	l.xor	r8, r15, r17
	l.xor	r31, r25, r27
	l.xor	r11, r5, r7
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.movhi	r14, 64
	l.movhi	r24, 64
	l.movhi	r4, 64
	l.movhi	r13, hi(.LJTI8_0)
	l.movhi	r23, hi(.LJTI8_0)
	l.movhi	r3, hi(.LJTI8_0)
	l.ori	r13, r13, lo(.LJTI8_0)
	l.ori	r23, r23, lo(.LJTI8_0)
	l.ori	r3, r3, lo(.LJTI8_0)
	l.slli	r16, r16, 2
	l.slli	r26, r26, 2
	l.slli	r6, r6, 2
	l.add	r13, r16, r13
	l.add	r23, r26, r23
	l.add	r3, r6, r3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.jr	r3
	l.nop	0                       # in delay slot
.LBB8_41:                               # %sw.bb159
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -28(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-8(r2), r3
	l.ori	r17, r15, 0
	l.ori	r27, r25, 0
	l.ori	r7, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -24(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-20(r2), r3
.LBB8_42:                               # %do.body169
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -20(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.ori	r8, r17, 0
	l.ori	r31, r27, 0
	l.ori	r11, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -16(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtui	r4, 3
	l.bf	.LBB8_64
	l.nop	0                       # in delay slot
.LBB8_43:                               # %do.body169
	l.movhi	r13, hi(.LJTI8_1)
	l.movhi	r23, hi(.LJTI8_1)
	l.movhi	r3, hi(.LJTI8_1)
	l.ori	r13, r13, lo(.LJTI8_1)
	l.ori	r23, r23, lo(.LJTI8_1)
	l.ori	r3, r3, lo(.LJTI8_1)
	l.slli	r14, r14, 2
	l.slli	r24, r24, 2
	l.slli	r4, r4, 2
	l.add	r13, r14, r13
	l.add	r23, r24, r23
	l.add	r3, r4, r3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
	l.ori	r16, r14, 0
	l.ori	r26, r24, 0
	l.ori	r6, r4, 0
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.jr	r3
	l.nop	0                       # in delay slot
.LBB8_62:                               # %sw.bb269
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.j	.LBB8_64
	l.nop	0                       # in delay slot
.LBB8_63:                               # %sw.bb270
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.addi	r16, r0, 255
	l.addi	r26, r0, 255
	l.addi	r6, r0, 255
	l.j	.LBB8_64
	l.nop	0                       # in delay slot
.LBB8_18:                               # %sw.bb102
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-28(r2), r11
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -24(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.slli	r14, r13, 5
	l.slli	r24, r23, 5
	l.slli	r4, r3, 5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -20(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.slli	r17, r13, 5
	l.slli	r27, r23, 5
	l.slli	r7, r3, 5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfltu	r7, r4
	l.bf	.LBB8_20
	l.nop	0                       # in delay slot
# BB#19:                                # %if.then113
	l.sub	r17, r17, r14
	l.sub	r27, r27, r24
	l.sub	r7, r7, r4
	l.addi	r13, r0, 26
	l.addi	r23, r0, 26
	l.addi	r3, r0, 26
	l.addi	r15, r0, 1
	l.addi	r25, r0, 1
	l.addi	r5, r0, 1
	l.j	.LBB8_21
	l.nop	0                       # in delay slot
.LBB8_33:                               # %do.body148
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
	l.ori	r15, r17, 0
	l.ori	r25, r27, 0
	l.ori	r5, r7, 0
	l.movhi	r14, 64
	l.movhi	r24, 64
	l.movhi	r4, 64
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -24(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r16, r0, 1
	l.addi	r26, r0, 1
	l.addi	r6, r0, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB8_35
	l.nop	0                       # in delay slot
# BB#34:                                # %do.body148
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
.LBB8_35:                               # %do.body148
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -20(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.and	r13, r17, r14
	l.and	r23, r27, r24
	l.and	r3, r7, r4
	l.srli	r13, r13, 22
	l.srli	r23, r23, 22
	l.srli	r3, r3, 22
	l.and	r14, r13, r16
	l.and	r24, r23, r26
	l.and	r4, r3, r6
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB8_37
	l.nop	0                       # in delay slot
# BB#36:                                # %do.body148
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-24(r2), r7
.LBB8_37:                               # %do.body148
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB8_39
	l.nop	0                       # in delay slot
# BB#38:                                # %do.body148
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
.LBB8_39:                               # %do.body148
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -24(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-12(r2), r11
.LBB8_40:                               # %sw.bb271
	l.movhi	r13, 64
	l.movhi	r23, 64
	l.movhi	r3, 64
	l.or	r15, r14, r13
	l.or	r25, r24, r23
	l.or	r5, r4, r3
	l.addi	r16, r0, 255
	l.addi	r26, r0, 255
	l.addi	r6, r0, 255
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
.LBB8_64:                               # %do.body279
	l.movhi	r13, 127
	l.movhi	r23, 127
	l.movhi	r3, 127
	l.ori	r13, r13, 65535
	l.ori	r23, r23, 65535
	l.ori	r3, r3, 65535
	l.and	r13, r15, r13
	l.and	r23, r25, r23
	l.and	r3, r5, r3
	l.slli	r14, r16, 23
	l.slli	r24, r26, 23
	l.slli	r4, r6, 23
	l.movhi	r15, 32640
	l.movhi	r25, 32640
	l.movhi	r5, 32640
	l.and	r14, r14, r15
	l.and	r24, r24, r25
	l.and	r4, r4, r5
	l.slli	r15, r8, 31
	l.slli	r25, r31, 31
	l.slli	r5, r11, 31
	l.or	r14, r14, r15
	l.or	r24, r24, r25
	l.or	r4, r4, r5
	l.or	r8, r14, r13
	l.or	r31, r24, r23
	l.or	r11, r4, r3
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB8_20:                               # %if.else116
	l.addi	r13, r0, 27
	l.addi	r23, r0, 27
	l.addi	r3, r0, 27
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -16(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r14, r14, -1
	l.addi	r24, r24, -1
	l.addi	r4, r4, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-16(r2), r4
.LBB8_21:                               # %do.body119.preheader
	l.addi	r8, r13, 1
	l.addi	r31, r23, 1
	l.addi	r11, r3, 1
.LBB8_22:                               # %do.body119
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-8(r2), r5
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.addi	r16, r0, 1
	l.addi	r26, r0, 1
	l.addi	r6, r0, 1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtsi	r7, -1
	l.ori	r14, r16, 0
	l.ori	r24, r26, 0
	l.ori	r4, r6, 0
	l.bf	.LBB8_24
	l.nop	0                       # in delay slot
# BB#23:                                # %do.body119
                                        #   in Loop: Header=BB8_22 Depth=1
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB8_24:                               # %do.body119
                                        #   in Loop: Header=BB8_22 Depth=1
	l.slli	r17, r17, 1
	l.slli	r27, r27, 1
	l.slli	r7, r7, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltu	r7, r5
	l.bf	.LBB8_26
	l.nop	0                       # in delay slot
# BB#25:                                # %do.body119
                                        #   in Loop: Header=BB8_22 Depth=1
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
.LBB8_26:                               # %do.body119
                                        #   in Loop: Header=BB8_22 Depth=1
	l.and	r14, r14, r16
	l.and	r24, r24, r26
	l.and	r4, r4, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB8_28
	l.nop	0                       # in delay slot
# BB#27:                                # %do.body119
                                        #   in Loop: Header=BB8_22 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB8_28:                               # %do.body119
                                        #   in Loop: Header=BB8_22 Depth=1
	l.sub	r17, r17, r13
	l.sub	r27, r27, r23
	l.sub	r7, r7, r3
	l.andi	r13, r14, 1
	l.andi	r23, r24, 1
	l.andi	r3, r4, 1
	l.slli	r14, r15, 1
	l.slli	r24, r25, 1
	l.slli	r4, r5, 1
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.xori	r15, r13, 1
	l.xori	r25, r23, 1
	l.xori	r5, r3, 1
	l.addi	r8, r8, -1
	l.addi	r31, r31, -1
	l.addi	r11, r11, -1
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfgtsi	r11, 1
	l.bf	.LBB8_22
	l.nop	0                       # in delay slot
# BB#29:                                # %do.body169.thread439
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB8_31
	l.nop	0                       # in delay slot
# BB#30:                                # %do.body169.thread439
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB8_31:                               # %do.body169.thread439
	l.andi	r13, r13, 1
	l.andi	r23, r23, 1
	l.andi	r3, r3, 1
	l.or	r13, r13, r15
	l.or	r23, r23, r25
	l.or	r3, r3, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-20(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -28(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
.LBB8_32:                               # %sw.bb170
	l.ori	r8, r16, 0
	l.ori	r31, r26, 0
	l.ori	r11, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -16(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -20(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfltsi	r7, -126
	l.bf	.LBB8_52
	l.nop	0                       # in delay slot
# BB#44:                                # %do.body175
	l.andi	r13, r14, 15
	l.andi	r23, r24, 15
	l.andi	r3, r4, 15
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 4
	l.ori	r16, r14, 0
	l.ori	r26, r24, 0
	l.ori	r6, r4, 0
	l.bf	.LBB8_46
	l.nop	0                       # in delay slot
# BB#45:                                # %do.body175
	l.addi	r16, r14, 4
	l.addi	r26, r24, 4
	l.addi	r6, r4, 4
.LBB8_46:                               # %do.body175
	l.andi	r13, r14, 7
	l.andi	r23, r24, 7
	l.andi	r3, r4, 7
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB8_48
	l.nop	0                       # in delay slot
# BB#47:                                # %do.body175
	l.ori	r14, r16, 0
	l.ori	r24, r26, 0
	l.ori	r4, r6, 0
.LBB8_48:                               # %do.body175
	l.srli	r13, r14, 27
	l.srli	r23, r24, 27
	l.srli	r3, r4, 27
	l.andi	r13, r13, 1
	l.andi	r23, r23, 1
	l.andi	r3, r3, 1
	l.add	r13, r17, r13
	l.add	r23, r27, r23
	l.add	r3, r7, r3
	l.addi	r17, r13, 127
	l.addi	r27, r23, 127
	l.addi	r7, r3, 127
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtsi	r7, 254
	l.bf	.LBB8_50
	l.nop	0                       # in delay slot
# BB#49:                                # %do.body175
	l.movhi	r13, 7935
	l.movhi	r23, 7935
	l.movhi	r3, 7935
	l.ori	r13, r13, 65535
	l.ori	r23, r23, 65535
	l.ori	r3, r3, 65535
	l.srli	r14, r14, 3
	l.srli	r24, r24, 3
	l.srli	r4, r4, 3
	l.and	r15, r14, r13
	l.and	r25, r24, r23
	l.and	r5, r4, r3
.LBB8_50:                               # %do.body175
	l.addi	r16, r0, 255
	l.addi	r26, r0, 255
	l.addi	r6, r0, 255
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtsi	r7, 254
	l.bf	.LBB8_64
	l.nop	0                       # in delay slot
# BB#51:                                # %do.body175
	l.ori	r16, r17, 0
	l.ori	r26, r27, 0
	l.ori	r6, r7, 0
	l.j	.LBB8_64
	l.nop	0                       # in delay slot
.LBB8_52:                               # %if.else205
	l.addi	r13, r0, -126
	l.addi	r23, r0, -126
	l.addi	r3, r0, -126
	l.sub	r13, r13, r17
	l.sub	r23, r23, r27
	l.sub	r3, r3, r7
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtsi	r3, 27
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.bf	.LBB8_64
	l.nop	0                       # in delay slot
# BB#53:                                # %if.then210
	l.ori	r16, r13, 0
	l.ori	r26, r23, 0
	l.ori	r6, r3, 0
	l.addi	r13, r0, -127
	l.addi	r23, r0, -127
	l.addi	r3, r0, -127
	l.sub	r13, r13, r17
	l.sub	r23, r23, r27
	l.sub	r3, r3, r7
	l.addi	r15, r0, 31
	l.addi	r25, r0, 31
	l.addi	r5, r0, 31
	l.sub	r13, r15, r13
	l.sub	r23, r25, r23
	l.sub	r3, r5, r3
	l.srl	r15, r14, r16
	l.srl	r25, r24, r26
	l.srl	r5, r4, r6
	l.sll	r13, r14, r13
	l.sll	r23, r24, r23
	l.sll	r3, r4, r3
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 0
	l.bf	.LBB8_55
	l.nop	0                       # in delay slot
# BB#54:                                # %if.then210
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB8_55:                               # %if.then210
	l.andi	r13, r14, 1
	l.andi	r23, r24, 1
	l.andi	r3, r4, 1
	l.or	r14, r13, r15
	l.or	r24, r23, r25
	l.or	r4, r3, r5
	l.andi	r13, r14, 15
	l.andi	r23, r24, 15
	l.andi	r3, r4, 15
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 4
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
	l.bf	.LBB8_57
	l.nop	0                       # in delay slot
# BB#56:                                # %if.then210
	l.addi	r15, r14, 4
	l.addi	r25, r24, 4
	l.addi	r5, r4, 4
.LBB8_57:                               # %if.then210
	l.andi	r13, r14, 7
	l.andi	r23, r24, 7
	l.andi	r3, r4, 7
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB8_59
	l.nop	0                       # in delay slot
# BB#58:                                # %if.then210
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
.LBB8_59:                               # %if.then210
	l.movhi	r13, 1024
	l.movhi	r23, 1024
	l.movhi	r3, 1024
	l.and	r13, r14, r13
	l.and	r23, r24, r23
	l.and	r3, r4, r3
	l.srli	r15, r14, 3
	l.srli	r25, r24, 3
	l.srli	r5, r4, 3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB8_61
	l.nop	0                       # in delay slot
# BB#60:                                # %if.then210
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
.LBB8_61:                               # %if.then210
	l.srli	r16, r13, 26
	l.srli	r26, r23, 26
	l.srli	r6, r3, 26
	l.j	.LBB8_64
	l.nop	0                       # in delay slot
.Lfunc_end8:
	.size	__divsf3, .Lfunc_end8-__divsf3
	.section	.rodata,"a",@progbits
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

	.text
	.hidden	__fixsfsi
	.globl	__fixsfsi
	.p2align	2
	.type	__fixsfsi,@function
__fixsfsi:                              # @__fixsfsi
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.srli	r14, r13, 23
	l.srli	r24, r23, 23
	l.srli	r4, r3, 23
	l.andi	r15, r14, 255
	l.andi	r25, r24, 255
	l.andi	r5, r4, 255
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgtui	r5, 126
	l.bf	.LBB9_2
	l.nop	0                       # in delay slot
.LBB9_1:                                # %if.then
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB9_2:                                # %if.else16
	l.srli	r14, r13, 31
	l.srli	r24, r23, 31
	l.srli	r4, r3, 31
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltui	r5, 158
	l.bf	.LBB9_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.then18
	l.xori	r13, r14, 1
	l.xori	r23, r24, 1
	l.xori	r3, r4, 1
	l.movhi	r14, 32768
	l.movhi	r24, 32768
	l.movhi	r4, 32768
	l.sub	r8, r14, r13
	l.sub	r31, r24, r23
	l.sub	r11, r4, r3
	l.j	.LBB9_1
	l.nop	0                       # in delay slot
.LBB9_4:                                # %if.else31
	l.movhi	r16, 127
	l.movhi	r26, 127
	l.movhi	r6, 127
	l.ori	r16, r16, 65535
	l.ori	r26, r26, 65535
	l.ori	r6, r6, 65535
	l.and	r13, r13, r16
	l.and	r23, r23, r26
	l.and	r3, r3, r6
	l.movhi	r16, 128
	l.movhi	r26, 128
	l.movhi	r6, 128
	l.or	r13, r13, r16
	l.or	r23, r23, r26
	l.or	r3, r3, r6
	l.addi	r16, r15, -150
	l.addi	r26, r25, -150
	l.addi	r6, r5, -150
	l.sll	r8, r13, r16
	l.sll	r31, r23, r26
	l.sll	r11, r3, r6
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgtui	r5, 149
	l.bf	.LBB9_6
	l.nop	0                       # in delay slot
# BB#5:                                 # %if.else31
	l.addi	r16, r0, 150
	l.addi	r26, r0, 150
	l.addi	r6, r0, 150
	l.sub	r15, r16, r15
	l.sub	r25, r26, r25
	l.sub	r5, r6, r5
	l.srl	r8, r13, r15
	l.srl	r31, r23, r25
	l.srl	r11, r3, r5
.LBB9_6:                                # %if.else31
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB9_1
	l.nop	0                       # in delay slot
# BB#7:                                 # %if.else31
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sub	r8, r13, r8
	l.sub	r31, r23, r31
	l.sub	r11, r3, r11
	l.j	.LBB9_1
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.bf	.LBB10_23
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.srai	r14, r13, 31
	l.srai	r24, r23, 31
	l.srai	r4, r3, 31
	l.add	r15, r13, r14
	l.add	r25, r23, r24
	l.add	r5, r3, r4
	l.xor	r16, r15, r14
	l.xor	r26, r25, r24
	l.xor	r6, r5, r4
	l.srli	r14, r16, 1
	l.srli	r24, r26, 1
	l.srli	r4, r6, 1
	l.or	r14, r16, r14
	l.or	r24, r26, r24
	l.or	r4, r6, r4
	l.srli	r15, r14, 2
	l.srli	r25, r24, 2
	l.srli	r5, r4, 2
	l.or	r15, r14, r15
	l.or	r25, r24, r25
	l.or	r5, r4, r5
	l.movhi	r14, 32768
	l.movhi	r24, 32768
	l.movhi	r4, 32768
	l.and	r14, r13, r14
	l.and	r24, r23, r24
	l.and	r4, r3, r4
	l.srli	r13, r15, 4
	l.srli	r23, r25, 4
	l.srli	r3, r5, 4
	l.or	r13, r15, r13
	l.or	r23, r25, r23
	l.or	r3, r5, r3
	l.srli	r15, r13, 8
	l.srli	r25, r23, 8
	l.srli	r5, r3, 8
	l.or	r13, r13, r15
	l.or	r23, r23, r25
	l.or	r3, r3, r5
	l.srli	r15, r13, 16
	l.srli	r25, r23, 16
	l.srli	r5, r3, 16
	l.or	r13, r13, r15
	l.or	r23, r23, r25
	l.or	r3, r3, r5
	l.movhi	r15, 21845
	l.movhi	r25, 21845
	l.movhi	r5, 21845
	l.ori	r15, r15, 21845
	l.ori	r25, r25, 21845
	l.ori	r5, r5, 21845
	l.xori	r13, r13, -1
	l.xori	r23, r23, -1
	l.xori	r3, r3, -1
	l.srli	r17, r13, 1
	l.srli	r27, r23, 1
	l.srli	r7, r3, 1
	l.and	r15, r17, r15
	l.and	r25, r27, r25
	l.and	r5, r7, r5
	l.sub	r13, r13, r15
	l.sub	r23, r23, r25
	l.sub	r3, r3, r5
	l.movhi	r15, 13107
	l.movhi	r25, 13107
	l.movhi	r5, 13107
	l.ori	r15, r15, 13107
	l.ori	r25, r25, 13107
	l.ori	r5, r5, 13107
	l.and	r17, r13, r15
	l.and	r27, r23, r25
	l.and	r7, r3, r5
	l.srli	r13, r13, 2
	l.srli	r23, r23, 2
	l.srli	r3, r3, 2
	l.and	r13, r13, r15
	l.and	r23, r23, r25
	l.and	r3, r3, r5
	l.add	r13, r17, r13
	l.add	r23, r27, r23
	l.add	r3, r7, r3
	l.srli	r15, r13, 4
	l.srli	r25, r23, 4
	l.srli	r5, r3, 4
	l.add	r13, r13, r15
	l.add	r23, r23, r25
	l.add	r3, r3, r5
	l.movhi	r15, 3855
	l.movhi	r25, 3855
	l.movhi	r5, 3855
	l.ori	r15, r15, 3855
	l.ori	r25, r25, 3855
	l.ori	r5, r5, 3855
	l.and	r13, r13, r15
	l.and	r23, r23, r25
	l.and	r3, r3, r5
	l.movhi	r15, 257
	l.movhi	r25, 257
	l.movhi	r5, 257
	l.ori	r15, r15, 257
	l.ori	r25, r25, 257
	l.ori	r5, r5, 257
	l.mul	r13, r13, r15
	l.mul	r23, r23, r25
	l.mul	r3, r3, r5
	l.srli	r13, r13, 24
	l.srli	r23, r23, 24
	l.srli	r3, r3, 24
	l.addi	r15, r0, 158
	l.addi	r25, r0, 158
	l.addi	r5, r0, 158
	l.sub	r15, r15, r13
	l.sub	r25, r25, r23
	l.sub	r5, r5, r3
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgtui	r5, 150
	l.bf	.LBB10_5
	l.nop	0                       # in delay slot
# BB#2:                                 # %if.then9
	l.addi	r13, r0, 150
	l.addi	r23, r0, 150
	l.addi	r3, r0, 150
	l.sub	r13, r13, r15
	l.sub	r23, r23, r25
	l.sub	r3, r3, r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtsi	r3, 0
	l.bf	.LBB10_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.then9
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB10_4:                               # %if.then9
	l.sll	r16, r16, r13
	l.sll	r26, r26, r23
	l.sll	r6, r6, r3
	l.j	.LBB10_23
	l.nop	0                       # in delay slot
.LBB10_5:                               # %if.else
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltui	r5, 154
	l.bf	.LBB10_9
	l.nop	0                       # in delay slot
# BB#6:                                 # %if.then21
	l.addi	r13, r0, 185
	l.addi	r23, r0, 185
	l.addi	r3, r0, 185
	l.sub	r13, r13, r15
	l.sub	r23, r23, r25
	l.sub	r3, r3, r5
	l.sll	r17, r16, r13
	l.sll	r27, r26, r23
	l.sll	r7, r6, r3
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB10_8
	l.nop	0                       # in delay slot
# BB#7:                                 # %if.then21
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB10_8:                               # %if.then21
	l.addi	r17, r15, -153
	l.addi	r27, r25, -153
	l.addi	r7, r5, -153
	l.srl	r16, r16, r17
	l.srl	r26, r26, r27
	l.srl	r6, r6, r7
	l.andi	r13, r13, 1
	l.andi	r23, r23, 1
	l.andi	r3, r3, 1
	l.or	r16, r13, r16
	l.or	r26, r23, r26
	l.or	r6, r3, r6
.LBB10_9:                               # %if.end31
	l.addi	r13, r0, 153
	l.addi	r23, r0, 153
	l.addi	r3, r0, 153
	l.sub	r13, r13, r15
	l.sub	r23, r23, r25
	l.sub	r3, r3, r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtsi	r3, 0
	l.bf	.LBB10_11
	l.nop	0                       # in delay slot
# BB#10:                                # %if.end31
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB10_11:                              # %if.end31
	l.sll	r16, r16, r13
	l.sll	r26, r26, r23
	l.sll	r6, r6, r3
	l.movhi	r13, 64511
	l.movhi	r23, 64511
	l.movhi	r3, 64511
	l.ori	r13, r13, 65535
	l.ori	r23, r23, 65535
	l.ori	r3, r3, 65535
	l.and	r13, r16, r13
	l.and	r23, r26, r23
	l.and	r3, r6, r3
	l.andi	r17, r16, 15
	l.andi	r27, r26, 15
	l.andi	r7, r6, 15
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfeqi	r7, 4
	l.ori	r17, r13, 0
	l.ori	r27, r23, 0
	l.ori	r7, r3, 0
	l.bf	.LBB10_13
	l.nop	0                       # in delay slot
# BB#12:                                # %if.end31
	l.addi	r17, r13, 4
	l.addi	r27, r23, 4
	l.addi	r7, r3, 4
.LBB10_13:                              # %if.end31
	l.andi	r16, r16, 7
	l.andi	r26, r26, 7
	l.andi	r6, r6, 7
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfeqi	r6, 0
	l.bf	.LBB10_15
	l.nop	0                       # in delay slot
# BB#14:                                # %if.end31
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
.LBB10_15:                              # %if.end31
	l.movhi	r16, 1024
	l.movhi	r26, 1024
	l.movhi	r6, 1024
	l.and	r16, r13, r16
	l.and	r26, r23, r26
	l.and	r6, r3, r6
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfeqi	r6, 0
	l.bf	.LBB10_19
	l.nop	0                       # in delay slot
# BB#16:                                # %if.then73
	l.addi	r15, r15, 1
	l.addi	r25, r25, 1
	l.addi	r5, r5, 1
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 255
	l.bf	.LBB10_18
	l.nop	0                       # in delay slot
# BB#17:                                # %if.then73
	l.movhi	r16, 64511
	l.movhi	r26, 64511
	l.movhi	r6, 64511
	l.ori	r16, r16, 65535
	l.ori	r26, r26, 65535
	l.ori	r6, r6, 65535
	l.and	r16, r13, r16
	l.and	r26, r23, r26
	l.and	r6, r3, r6
.LBB10_18:                              # %if.then73
	l.ori	r13, r16, 0
	l.ori	r23, r26, 0
	l.ori	r3, r6, 0
.LBB10_19:                              # %if.end82
	l.srli	r16, r13, 3
	l.srli	r26, r23, 3
	l.srli	r6, r3, 3
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfeqi	r6, 0
	l.ori	r13, r16, 0
	l.ori	r23, r26, 0
	l.ori	r3, r6, 0
	l.bf	.LBB10_21
	l.nop	0                       # in delay slot
# BB#20:                                # %if.end82
	l.movhi	r13, 64
	l.movhi	r23, 64
	l.movhi	r3, 64
	l.or	r13, r16, r13
	l.or	r23, r26, r23
	l.or	r3, r6, r3
.LBB10_21:                              # %if.end82
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 255
	l.bf	.LBB10_23
	l.nop	0                       # in delay slot
# BB#22:                                # %if.end82
	l.ori	r16, r13, 0
	l.ori	r26, r23, 0
	l.ori	r6, r3, 0
.LBB10_23:                              # %do.body101
	l.slli	r13, r15, 23
	l.slli	r23, r25, 23
	l.slli	r3, r5, 23
	l.movhi	r15, 32640
	l.movhi	r25, 32640
	l.movhi	r5, 32640
	l.and	r13, r13, r15
	l.and	r23, r23, r25
	l.and	r3, r3, r5
	l.movhi	r15, 127
	l.movhi	r25, 127
	l.movhi	r5, 127
	l.ori	r15, r15, 65535
	l.ori	r25, r25, 65535
	l.ori	r5, r5, 65535
	l.and	r15, r16, r15
	l.and	r25, r26, r25
	l.and	r5, r6, r5
	l.or	r14, r14, r15
	l.or	r24, r24, r25
	l.or	r4, r4, r5
	l.or	r8, r14, r13
	l.or	r31, r24, r23
	l.or	r11, r4, r3
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -8
	l.addi	r21, r21, -8            # CFC
	l.addi	r1, r1, -8
	l.movhi	r13, hi(int_handlers)
	l.movhi	r23, hi(int_handlers)
	l.movhi	r3, hi(int_handlers)
	l.ori	r13, r13, lo(int_handlers)
	l.ori	r23, r23, lo(int_handlers)
	l.ori	r3, r3, lo(int_handlers)
	l.addi	r15, r0, 256
	l.addi	r25, r0, 256
	l.addi	r5, r0, 256
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.jal	memset
	l.nop	0                       # in delay slot
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -16
	l.addi	r21, r21, -16           # CFC
	l.addi	r1, r1, -16
	l.addi	r8, r0, -1
	l.addi	r31, r0, -1
	l.addi	r11, r0, -1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtui	r3, 31
	l.bf	.LBB12_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.end
	l.movhi	r16, hi(int_handlers)
	l.movhi	r26, hi(int_handlers)
	l.movhi	r6, hi(int_handlers)
	l.ori	r16, r16, lo(int_handlers)
	l.ori	r26, r26, lo(int_handlers)
	l.ori	r6, r6, lo(int_handlers)
	l.slli	r17, r13, 3
	l.slli	r27, r23, 3
	l.slli	r7, r3, 3
	l.add	r16, r17, r16
	l.add	r26, r27, r26
	l.add	r6, r7, r6
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r6), r4
	l.movhi	r14, hi(int_handlers+4)
	l.movhi	r24, hi(int_handlers+4)
	l.movhi	r4, hi(int_handlers+4)
	l.ori	r14, r14, lo(int_handlers+4)
	l.ori	r24, r24, lo(int_handlers+4)
	l.ori	r4, r4, lo(int_handlers+4)
	l.add	r14, r17, r14
	l.add	r24, r27, r24
	l.add	r4, r7, r4
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	0(r4), r5
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sll	r13, r14, r13
	l.sll	r23, r24, r23
	l.sll	r3, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.addi	r13, r0, 18432
	l.addi	r23, r0, 18432
	l.addi	r3, r0, 18432
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.or	r14, r8, r13
	l.or	r24, r31, r23
	l.or	r4, r11, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
.LBB12_2:                               # %return
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -16
	l.addi	r21, r21, -16           # CFC
	l.addi	r1, r1, -16
	l.addi	r8, r0, -1
	l.addi	r31, r0, -1
	l.addi	r11, r0, -1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtui	r3, 31
	l.bf	.LBB13_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.end
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sll	r13, r14, r13
	l.sll	r23, r24, r23
	l.sll	r3, r4, r3
	l.xori	r13, r13, -1
	l.xori	r23, r23, -1
	l.xori	r3, r3, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.addi	r13, r0, 18432
	l.addi	r23, r0, 18432
	l.addi	r3, r0, 18432
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.and	r14, r8, r13
	l.and	r24, r31, r23
	l.and	r4, r11, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
.LBB13_2:                               # %return
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -16
	l.addi	r21, r21, -16           # CFC
	l.addi	r1, r1, -16
	l.addi	r8, r0, -1
	l.addi	r31, r0, -1
	l.addi	r11, r0, -1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtui	r3, 31
	l.bf	.LBB14_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.end
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sll	r13, r14, r13
	l.sll	r23, r24, r23
	l.sll	r3, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.addi	r13, r0, 18432
	l.addi	r23, r0, 18432
	l.addi	r3, r0, 18432
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.or	r14, r8, r13
	l.or	r24, r31, r23
	l.or	r4, r11, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
.LBB14_2:                               # %return
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -28
	l.addi	r21, r21, -28           # CFC
	l.addi	r1, r1, -28
	l.addi	r13, r0, 18434
	l.addi	r23, r0, 18434
	l.addi	r3, r0, 18434
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-28(r2), r11
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -28(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.movhi	r13, hi(int_handlers+4)
	l.movhi	r23, hi(int_handlers+4)
	l.movhi	r3, hi(int_handlers+4)
	l.ori	r17, r13, lo(int_handlers+4)
	l.ori	r27, r23, lo(int_handlers+4)
	l.ori	r7, r3, lo(int_handlers+4)
.LBB15_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sll	r8, r13, r16
	l.sll	r31, r23, r26
	l.sll	r11, r3, r6
	l.and	r13, r8, r15
	l.and	r23, r31, r25
	l.and	r3, r11, r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB15_4
	l.nop	0                       # in delay slot
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB15_1 Depth=1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.lwz	r4, -4(r7)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB15_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB15_1 Depth=1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.lwz	r3, 0(r7)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-16(r2), r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-20(r2), r11
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.jalr	r4
	l.nop	0                       # in delay slot
	l.addi	r13, r0, 18434
	l.addi	r23, r0, 18434
	l.addi	r3, r0, 18434
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-24(r2), r3
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -20(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.xori	r13, r13, -1
	l.xori	r23, r23, -1
	l.xori	r3, r3, -1
	l.and	r14, r8, r13
	l.and	r24, r31, r23
	l.and	r4, r11, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -24(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -16(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -12(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -28(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
.LBB15_4:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	l.addi	r17, r17, 8
	l.addi	r27, r27, 8
	l.addi	r7, r7, 8
	l.addi	r16, r16, 1
	l.addi	r26, r26, 1
	l.addi	r6, r6, 1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 32
	l.bf	.LBB15_1
	l.nop	0                       # in delay slot
# BB#5:                                 # %while.end
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -8
	l.addi	r21, r21, -8            # CFC
	l.addi	r1, r1, -8
	l.addi	r13, r0, 18434
	l.addi	r23, r0, 18434
	l.addi	r3, r0, 18434
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB17_3
	l.nop	0                       # in delay slot
# BB#1:                                 # %while.body.preheader
	l.ori	r16, r13, 0
	l.ori	r26, r23, 0
	l.ori	r6, r3, 0
.LBB17_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbz	r7, 0(r4)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	0(r6), r7
	l.addi	r16, r16, 1
	l.addi	r26, r26, 1
	l.addi	r6, r6, 1
	l.addi	r14, r14, 1
	l.addi	r24, r24, 1
	l.addi	r4, r4, 1
	l.addi	r15, r15, -1
	l.addi	r25, r25, -1
	l.addi	r5, r5, -1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB17_2
	l.nop	0                       # in delay slot
.LBB17_3:                               # %while.end
	l.ori	r8, r13, 0
	l.ori	r31, r23, 0
	l.ori	r11, r3, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.addi	r14, r13, -1
	l.addi	r24, r23, -1
	l.addi	r4, r3, -1
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r15, r14, 1
	l.addi	r25, r24, 1
	l.addi	r5, r4, 1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbz	r4, 1(r4)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
	l.bf	.LBB18_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %for.end
	l.sub	r8, r15, r13
	l.sub	r31, r25, r23
	l.sub	r11, r5, r3
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB19_4
	l.nop	0                       # in delay slot
# BB#1:                                 # %while.body.lr.ph
	l.andi	r14, r14, 255
	l.andi	r24, r24, 255
	l.andi	r4, r4, 255
.LBB19_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r6, 0(r3)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeq	r6, r4
	l.ori	r8, r13, 0
	l.ori	r31, r23, 0
	l.ori	r11, r3, 0
	l.bf	.LBB19_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB19_2 Depth=1
	l.addi	r13, r13, 1
	l.addi	r23, r23, 1
	l.addi	r3, r3, 1
	l.addi	r15, r15, -1
	l.addi	r25, r25, -1
	l.addi	r5, r5, -1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.bf	.LBB19_2
	l.nop	0                       # in delay slot
.LBB19_4:                               # %cleanup
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, hi(rand.lfsr)
	l.movhi	r23, hi(rand.lfsr)
	l.movhi	r3, hi(rand.lfsr)
	l.ori	r13, r13, lo(rand.lfsr)
	l.ori	r23, r23, lo(rand.lfsr)
	l.ori	r3, r3, lo(rand.lfsr)
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.andi	r15, r14, 1
	l.andi	r25, r24, 1
	l.andi	r5, r4, 1
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.sub	r15, r16, r15
	l.sub	r25, r26, r25
	l.sub	r5, r6, r5
	l.movhi	r16, 53248
	l.movhi	r26, 53248
	l.movhi	r6, 53248
	l.ori	r16, r16, 1
	l.ori	r26, r26, 1
	l.ori	r6, r6, 1
	l.and	r15, r15, r16
	l.and	r25, r25, r26
	l.and	r5, r5, r6
	l.srli	r14, r14, 1
	l.srli	r24, r24, 1
	l.srli	r4, r4, 1
	l.xor	r8, r15, r14
	l.xor	r31, r25, r24
	l.xor	r11, r5, r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	0(r3), r11
	l.movhi	r13, hi(rand.period)
	l.movhi	r23, hi(rand.period)
	l.movhi	r3, hi(rand.period)
	l.ori	r13, r13, lo(rand.period)
	l.ori	r23, r23, lo(rand.period)
	l.ori	r3, r3, lo(rand.period)
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r14, r14, 1
	l.addi	r24, r24, 1
	l.addi	r4, r4, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r3), r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	#APP
	l.mtspr		r13,r14,0
	#NO_APP
	#APP
	l.mtspr		r23,r24,0
	#NO_APP
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	#APP
	l.mfspr		r8,r13,0
	#NO_APP
	#APP
	l.mfspr		r31,r23,0
	#NO_APP
	#APP
	l.mfspr		r11,r3,0
	#NO_APP
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	#APP
	l.addi	r13,r13,0
	#NO_APP
	#APP
	l.addi	r23,r23,0
	#NO_APP
	#APP
	l.addi	r3,r3,0
	#NO_APP
	#APP

    l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13

	l.nop 4
	#NO_APP
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	#APP
	l.addi	r13,r13,0
	#NO_APP
	#APP
	l.addi	r23,r23,0
	#NO_APP
	#APP
	l.addi	r3,r3,0
	#NO_APP
	#APP

    l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13

	l.nop 2
	#NO_APP
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.addi	r13, r0, 17
	l.addi	r23, r0, 17
	l.addi	r3, r0, 17
	#APP
	l.mfspr		r14,r13,0
	#NO_APP
	#APP
	l.mfspr		r24,r23,0
	#NO_APP
	#APP
	l.mfspr		r4,r3,0
	#NO_APP
	l.ori	r14, r14, 4
	l.ori	r24, r24, 4
	l.ori	r4, r4, 4
	#APP
	l.mtspr		r13,r14,0
	#NO_APP
	#APP
	l.mtspr		r23,r24,0
	#NO_APP
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 24576
	l.movhi	r23, 24576
	l.movhi	r3, 24576
	l.ori	r13, r13, 1000
	l.ori	r23, r23, 1000
	l.ori	r3, r3, 1000
	l.addi	r14, r0, 20480
	l.addi	r24, r0, 20480
	l.addi	r4, r0, 20480
	#APP
	l.mtspr		r14,r13,0
	#NO_APP
	#APP
	l.mtspr		r24,r23,0
	#NO_APP
	#APP
	l.mtspr		r4,r3,0
	#NO_APP
	l.addi	r13, r0, 17
	l.addi	r23, r0, 17
	l.addi	r3, r0, 17
	#APP
	l.mfspr		r14,r13,0
	#NO_APP
	#APP
	l.mfspr		r24,r23,0
	#NO_APP
	#APP
	l.mfspr		r4,r3,0
	#NO_APP
	l.ori	r14, r14, 2
	l.ori	r24, r24, 2
	l.ori	r4, r4, 2
	#APP
	l.mtspr		r13,r14,0
	#NO_APP
	#APP
	l.mtspr		r23,r24,0
	#NO_APP
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.addi	r13, r0, 17
	l.addi	r23, r0, 17
	l.addi	r3, r0, 17
	#APP
	l.mfspr		r14,r13,0
	#NO_APP
	#APP
	l.mfspr		r24,r23,0
	#NO_APP
	#APP
	l.mfspr		r4,r3,0
	#NO_APP
	l.addi	r15, r0, -3
	l.addi	r25, r0, -3
	l.addi	r5, r0, -3
	l.and	r14, r14, r15
	l.and	r24, r24, r25
	l.and	r4, r4, r5
	#APP
	l.mtspr		r13,r14,0
	#NO_APP
	#APP
	l.mtspr		r23,r24,0
	#NO_APP
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r13, r0, 20480
	l.addi	r23, r0, 20480
	l.addi	r3, r0, 20480
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	#APP
	l.mtspr		r13,r14,0
	#NO_APP
	#APP
	l.mtspr		r23,r24,0
	#NO_APP
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, hi(timer_ticks)
	l.movhi	r23, hi(timer_ticks)
	l.movhi	r3, hi(timer_ticks)
	l.ori	r13, r13, lo(timer_ticks)
	l.ori	r23, r23, lo(timer_ticks)
	l.ori	r3, r3, lo(timer_ticks)
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r14, r14, 1
	l.addi	r24, r24, 1
	l.addi	r4, r4, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r3), r4
	l.movhi	r13, 24576
	l.movhi	r23, 24576
	l.movhi	r3, 24576
	l.ori	r13, r13, 1000
	l.ori	r23, r23, 1000
	l.ori	r3, r3, 1000
	l.addi	r14, r0, 20480
	l.addi	r24, r0, 20480
	l.addi	r4, r0, 20480
	#APP
	l.mtspr		r14,r13,0
	#NO_APP
	#APP
	l.mtspr		r24,r23,0
	#NO_APP
	#APP
	l.mtspr		r4,r3,0
	#NO_APP
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, hi(timer_ticks)
	l.movhi	r23, hi(timer_ticks)
	l.movhi	r3, hi(timer_ticks)
	l.ori	r13, r13, lo(timer_ticks)
	l.ori	r23, r23, lo(timer_ticks)
	l.ori	r3, r3, lo(timer_ticks)
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r3), r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, hi(timer_ticks)
	l.movhi	r23, hi(timer_ticks)
	l.movhi	r3, hi(timer_ticks)
	l.ori	r13, r13, lo(timer_ticks)
	l.ori	r23, r23, lo(timer_ticks)
	l.ori	r3, r3, lo(timer_ticks)
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
.LBB31_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	l.j	.LBB31_1
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -20
	l.addi	r21, r21, -20           # CFC
	l.addi	r1, r1, -20
	l.ori	r8, r13, 0
	l.ori	r31, r23, 0
	l.ori	r11, r3, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.lwz	r5, 0(r5)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-20(r2), r6
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lwz	r6, 0(r6)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.lwz	r3, 0(r7)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sub	r15, r15, r16
	l.sub	r25, r25, r26
	l.sub	r5, r5, r6
	l.addi	r16, r15, -1
	l.addi	r26, r25, -1
	l.addi	r6, r5, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtu	r6, r4
	l.bf	.LBB32_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %entry
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
.LBB32_2:                               # %entry
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-16(r2), r5
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -16(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfges	r5, r3
	l.bf	.LBB32_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %cleanup
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -20(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lwz	r3, 0(r4)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r13, r15
	l.add	r23, r23, r25
	l.add	r3, r3, r5
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	0(r4), r3
	l.addi	r8, r0, 1
	l.addi	r31, r0, 1
	l.addi	r11, r0, 1
.LBB32_4:
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -164
	l.addi	r21, r21, -164          # CFC
	l.addi	r1, r1, -164
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-92(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-104(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.movhi	r7, 0
	l.addi	r13, r12, -53
	l.addi	r23, r22, -53
	l.addi	r3, r2, -53
	l.addi	r14, r13, 39
	l.addi	r24, r23, 39
	l.addi	r4, r3, 39
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-152(r2), r4
	l.addi	r13, r13, 40
	l.addi	r23, r23, 40
	l.addi	r3, r3, 40
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-144(r2), r3
	l.movhi	r8, hi(.L.str.1)
	l.movhi	r31, hi(.L.str.1)
	l.movhi	r11, hi(.L.str.1)
	l.movhi	r13, hi(vfnprintf.blanks)
	l.movhi	r23, hi(vfnprintf.blanks)
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r13, r13, lo(vfnprintf.blanks)
	l.ori	r23, r23, lo(vfnprintf.blanks)
	l.ori	r3, r3, lo(vfnprintf.blanks)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-108(r2), r3
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r13, r13, lo(vfnprintf.zeroes)
	l.ori	r23, r23, lo(vfnprintf.zeroes)
	l.ori	r3, r3, lo(vfnprintf.zeroes)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-96(r2), r3
	l.movhi	r13, hi(.LJTI33_0)
	l.movhi	r23, hi(.LJTI33_0)
	l.movhi	r3, hi(.LJTI33_0)
	l.ori	r13, r13, lo(.LJTI33_0)
	l.ori	r23, r23, lo(.LJTI33_0)
	l.ori	r3, r3, lo(.LJTI33_0)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-72(r2), r3
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-128(r2), r3
	l.j	.LBB33_1
	l.nop	0                       # in delay slot
.LBB33_229:                             # %do.end551
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -76(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r17, r17, r13
	l.add	r27, r27, r23
	l.add	r7, r7, r3
	l.movhi	r8, hi(.L.str.1)
	l.movhi	r31, hi(.L.str.1)
	l.movhi	r11, hi(.L.str.1)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
.LBB33_1:                               # %for.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_2 Depth 2
                                        #       Child Loop BB33_3 Depth 3
                                        #       Child Loop BB33_17 Depth 3
                                        #         Child Loop BB33_18 Depth 4
                                        #           Child Loop BB33_42 Depth 5
                                        #           Child Loop BB33_33 Depth 5
                                        #     Child Loop BB33_116 Depth 2
                                        #     Child Loop BB33_129 Depth 2
                                        #     Child Loop BB33_132 Depth 2
                                        #     Child Loop BB33_118 Depth 2
                                        #     Child Loop BB33_160 Depth 2
                                        #     Child Loop BB33_188 Depth 2
                                        #     Child Loop BB33_202 Depth 2
                                        #     Child Loop BB33_221 Depth 2
	l.ori	r16, r17, 0
	l.ori	r26, r27, 0
	l.ori	r6, r7, 0
	l.j	.LBB33_2
	l.nop	0                       # in delay slot
.LBB33_62:                              # %sw.bb125
                                        #   in Loop: Header=BB33_2 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -88(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.andi	r13, r14, 32
	l.andi	r23, r24, 32
	l.andi	r3, r4, 32
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_64
	l.nop	0                       # in delay slot
# BB#63:                                # %if.then128
                                        #   in Loop: Header=BB33_2 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	4(r3), r6
	l.srai	r14, r16, 31
	l.srai	r24, r26, 31
	l.srai	r4, r6, 31
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r3), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
.LBB33_2:                               # %for.cond
                                        #   Parent Loop BB33_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB33_3 Depth 3
                                        #       Child Loop BB33_17 Depth 3
                                        #         Child Loop BB33_18 Depth 4
                                        #           Child Loop BB33_42 Depth 5
                                        #           Child Loop BB33_33 Depth 5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-60(r2), r5
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
.LBB33_3:                               # %while.cond
                                        #   Parent Loop BB33_1 Depth=1
                                        #     Parent Loop BB33_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	l.ori	r17, r14, 0
	l.ori	r27, r24, 0
	l.ori	r7, r4, 0
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.lbz	r3, 0(r7)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_5
	l.nop	0                       # in delay slot
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB33_3 Depth=3
	l.addi	r15, r0, 1
	l.addi	r25, r0, 1
	l.addi	r5, r0, 1
	l.addi	r14, r17, 1
	l.addi	r24, r27, 1
	l.addi	r4, r7, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 37
	l.bf	.LBB33_3
	l.nop	0                       # in delay slot
.LBB33_5:                               # %while.end
                                        #   in Loop: Header=BB33_2 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-64(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -60(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r17, r14
	l.sub	r23, r27, r24
	l.sub	r3, r7, r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_13
	l.nop	0                       # in delay slot
# BB#6:                                 # %if.then6
                                        #   in Loop: Header=BB33_2 Depth=2
	l.ori	r8, r14, 0
	l.ori	r31, r24, 0
	l.ori	r11, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-84(r2), r7
	l.ori	r17, r13, 0
	l.ori	r27, r23, 0
	l.ori	r7, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-76(r2), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -92(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r14, r14, r16
	l.sub	r24, r24, r26
	l.sub	r4, r4, r6
	l.addi	r14, r14, -1
	l.addi	r24, r24, -1
	l.addi	r4, r4, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-68(r2), r7
	l.ori	r15, r17, 0
	l.ori	r25, r27, 0
	l.ori	r5, r7, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtu	r4, r7
	l.bf	.LBB33_8
	l.nop	0                       # in delay slot
# BB#7:                                 # %if.then6
                                        #   in Loop: Header=BB33_2 Depth=2
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB33_8:                               # %if.then6
                                        #   in Loop: Header=BB33_2 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-80(r2), r5
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -80(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -68(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfges	r4, r3
	l.bf	.LBB33_12
	l.nop	0                       # in delay slot
.LBB33_9:                               # %print_back_to_string.exit
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -76(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.j	.LBB33_10
	l.nop	0                       # in delay slot
.LBB33_12:                              # %if.end8
                                        #   in Loop: Header=BB33_2 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r16, r13, r16
	l.add	r26, r23, r26
	l.add	r6, r3, r6
	l.movhi	r8, hi(.L.str.1)
	l.movhi	r31, hi(.L.str.1)
	l.movhi	r11, hi(.L.str.1)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
.LBB33_13:                              # %if.end9
                                        #   in Loop: Header=BB33_2 Depth=2
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -92(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-76(r2), r6
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sflts	r6, r4
	l.bf	.LBB33_15
	l.nop	0                       # in delay slot
# BB#14:                                # %if.end9
                                        #   in Loop: Header=BB33_2 Depth=2
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB33_15:                              # %if.end9
                                        #   in Loop: Header=BB33_2 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -64(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.and	r13, r14, r13
	l.and	r23, r24, r23
	l.and	r3, r4, r3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 1
	l.bf	.LBB33_11
	l.nop	0                       # in delay slot
# BB#16:                                # %if.end15
                                        #   in Loop: Header=BB33_2 Depth=2
	l.addi	r16, r0, -1
	l.addi	r26, r0, -1
	l.addi	r6, r0, -1
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-120(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	-13(r2), r4
	l.addi	r15, r17, 1
	l.addi	r25, r27, 1
	l.addi	r5, r7, 1
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-88(r2), r3
	l.j	.LBB33_17
	l.nop	0                       # in delay slot
.LBB33_25:                              # %rflag
                                        #   in Loop: Header=BB33_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -68(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -84(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
.LBB33_17:                              # %rflag
                                        #   Parent Loop BB33_1 Depth=1
                                        #     Parent Loop BB33_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB33_18 Depth 4
                                        #           Child Loop BB33_42 Depth 5
                                        #           Child Loop BB33_33 Depth 5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-84(r2), r6
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.lbs	r7, 0(r5)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.addi	r15, r15, 1
	l.addi	r25, r25, 1
	l.addi	r5, r5, 1
	l.j	.LBB33_18
	l.nop	0                       # in delay slot
.LBB33_39:                              # %while.end50
                                        #   in Loop: Header=BB33_18 Depth=4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-84(r2), r6
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -68(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB33_18:                              # %reswitch
                                        #   Parent Loop BB33_1 Depth=1
                                        #     Parent Loop BB33_2 Depth=2
                                        #       Parent Loop BB33_17 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB33_42 Depth 5
                                        #           Child Loop BB33_33 Depth 5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-68(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-60(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-64(r2), r7
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtui	r7, 122
	l.bf	.LBB33_144
	l.nop	0                       # in delay slot
.LBB33_19:                              # %reswitch
                                        #   in Loop: Header=BB33_18 Depth=4
	l.addi	r15, r0, 117
	l.addi	r25, r0, 117
	l.addi	r5, r0, 117
	l.addi	r16, r0, 111
	l.addi	r26, r0, 111
	l.addi	r6, r0, 111
	l.ori	r14, r8, lo(.L.str.1)
	l.ori	r24, r31, lo(.L.str.1)
	l.ori	r4, r11, lo(.L.str.1)
	l.slli	r13, r17, 2
	l.slli	r23, r27, 2
	l.slli	r3, r7, 2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -72(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.add	r13, r13, r17
	l.add	r23, r23, r27
	l.add	r3, r3, r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -64(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.jr	r3
	l.nop	0                       # in delay slot
.LBB33_41:                              # %do.body.preheader
                                        #   in Loop: Header=BB33_18 Depth=4
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -60(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB33_42:                              # %do.body
                                        #   Parent Loop BB33_1 Depth=1
                                        #     Parent Loop BB33_2 Depth=2
                                        #       Parent Loop BB33_17 Depth=3
                                        #         Parent Loop BB33_18 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	l.muli	r14, r14, 10
	l.muli	r24, r24, 10
	l.muli	r4, r4, 10
	l.add	r14, r17, r14
	l.add	r24, r27, r24
	l.add	r4, r7, r4
	l.addi	r15, r13, 1
	l.addi	r25, r23, 1
	l.addi	r5, r3, 1
	l.addi	r14, r14, -48
	l.addi	r24, r24, -48
	l.addi	r4, r4, -48
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbs	r7, 0(r3)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.addi	r13, r17, -48
	l.addi	r23, r27, -48
	l.addi	r3, r7, -48
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfltui	r3, 10
	l.ori	r13, r15, 0
	l.ori	r23, r25, 0
	l.ori	r3, r5, 0
	l.bf	.LBB33_42
	l.nop	0                       # in delay slot
	l.j	.LBB33_18
	l.nop	0                       # in delay slot
.LBB33_30:                              # %sw.bb31
                                        #   in Loop: Header=BB33_18 Depth=4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -60(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r13, r14, 1
	l.addi	r23, r24, 1
	l.addi	r3, r4, 1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbs	r7, 0(r4)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfeqi	r7, 42
	l.bf	.LBB33_34
	l.nop	0                       # in delay slot
# BB#31:                                # %while.cond41.preheader
                                        #   in Loop: Header=BB33_18 Depth=4
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.addi	r14, r17, -48
	l.addi	r24, r27, -48
	l.addi	r4, r7, -48
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtui	r4, 9
	l.bf	.LBB33_37
	l.nop	0                       # in delay slot
# BB#32:                                # %while.body45.preheader
                                        #   in Loop: Header=BB33_18 Depth=4
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
.LBB33_33:                              # %while.body45
                                        #   Parent Loop BB33_1 Depth=1
                                        #     Parent Loop BB33_2 Depth=2
                                        #       Parent Loop BB33_17 Depth=3
                                        #         Parent Loop BB33_18 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	l.muli	r13, r16, 10
	l.muli	r23, r26, 10
	l.muli	r3, r6, 10
	l.add	r16, r13, r14
	l.add	r26, r23, r24
	l.add	r6, r3, r4
	l.addi	r13, r15, 1
	l.addi	r23, r25, 1
	l.addi	r3, r5, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.lbs	r7, 0(r5)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.addi	r14, r17, -48
	l.addi	r24, r27, -48
	l.addi	r4, r7, -48
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfltui	r4, 10
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.bf	.LBB33_33
	l.nop	0                       # in delay slot
.LBB33_37:                              # %while.end50
                                        #   in Loop: Header=BB33_18 Depth=4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, -1
	l.bf	.LBB33_39
	l.nop	0                       # in delay slot
# BB#38:                                # %while.end50
                                        #   in Loop: Header=BB33_18 Depth=4
	l.addi	r16, r0, -1
	l.addi	r26, r0, -1
	l.addi	r6, r0, -1
	l.j	.LBB33_39
	l.nop	0                       # in delay slot
.LBB33_20:                              # %sw.bb
                                        #   in Loop: Header=BB33_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -120(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.andi	r13, r13, 255
	l.andi	r23, r23, 255
	l.andi	r3, r3, 255
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -68(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -84(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 0
	l.bf	.LBB33_17
	l.nop	0                       # in delay slot
# BB#21:                                # %if.then20
                                        #   in Loop: Header=BB33_17 Depth=3
	l.addi	r13, r0, 32
	l.addi	r23, r0, 32
	l.addi	r3, r0, 32
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-120(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	-13(r2), r3
	l.j	.LBB33_17
	l.nop	0                       # in delay slot
.LBB33_22:                              # %sw.bb22
                                        #   in Loop: Header=BB33_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 1
	l.ori	r23, r23, 1
	l.ori	r3, r3, 1
	l.j	.LBB33_23
	l.nop	0                       # in delay slot
.LBB33_26:                              # %sw.bb23
                                        #   in Loop: Header=BB33_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -84(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtsi	r4, -1
	l.bf	.LBB33_17
	l.nop	0                       # in delay slot
# BB#27:                                # %if.end27
                                        #   in Loop: Header=BB33_17 Depth=3
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sub	r14, r13, r14
	l.sub	r24, r23, r24
	l.sub	r4, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-68(r2), r4
.LBB33_28:                              # %sw.bb28
                                        #   in Loop: Header=BB33_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 4
	l.ori	r23, r23, 4
	l.ori	r3, r3, 4
	l.j	.LBB33_23
	l.nop	0                       # in delay slot
.LBB33_29:                              # %sw.bb30
                                        #   in Loop: Header=BB33_17 Depth=3
	l.addi	r13, r0, 43
	l.addi	r23, r0, 43
	l.addi	r3, r0, 43
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-120(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	-13(r2), r3
	l.j	.LBB33_24
	l.nop	0                       # in delay slot
.LBB33_40:                              # %sw.bb57
                                        #   in Loop: Header=BB33_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 128
	l.ori	r23, r23, 128
	l.ori	r3, r3, 128
	l.j	.LBB33_23
	l.nop	0                       # in delay slot
.LBB33_43:                              # %sw.bb68
                                        #   in Loop: Header=BB33_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 64
	l.ori	r23, r23, 64
	l.ori	r3, r3, 64
	l.j	.LBB33_23
	l.nop	0                       # in delay slot
.LBB33_44:                              # %sw.bb70
                                        #   in Loop: Header=BB33_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.lbz	r3, 0(r5)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 108
	l.bf	.LBB33_46
	l.nop	0                       # in delay slot
# BB#45:                                # %if.then74
                                        #   in Loop: Header=BB33_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 32
	l.ori	r23, r23, 32
	l.ori	r3, r3, 32
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-88(r2), r3
	l.addi	r15, r15, 1
	l.addi	r25, r25, 1
	l.addi	r5, r5, 1
	l.j	.LBB33_25
	l.nop	0                       # in delay slot
.LBB33_47:                              # %sw.bb79
                                        #   in Loop: Header=BB33_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 32
	l.ori	r23, r23, 32
	l.ori	r3, r3, 32
	l.j	.LBB33_23
	l.nop	0                       # in delay slot
.LBB33_143:                             # %sw.bb374
                                        #   in Loop: Header=BB33_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 512
	l.ori	r23, r23, 512
	l.ori	r3, r3, 512
.LBB33_23:                              # %rflag
                                        #   in Loop: Header=BB33_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-88(r2), r3
.LBB33_24:                              # %rflag
                                        #   in Loop: Header=BB33_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.j	.LBB33_25
	l.nop	0                       # in delay slot
.LBB33_46:                              # %if.else
                                        #   in Loop: Header=BB33_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 16
	l.ori	r23, r23, 16
	l.ori	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-88(r2), r3
	l.j	.LBB33_25
	l.nop	0                       # in delay slot
.LBB33_34:                              # %if.then36
                                        #   in Loop: Header=BB33_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r14, r14, 3
	l.addi	r24, r24, 3
	l.addi	r4, r4, 3
	l.addi	r15, r0, -4
	l.addi	r25, r0, -4
	l.addi	r5, r0, -4
	l.and	r14, r14, r15
	l.and	r24, r24, r25
	l.and	r4, r4, r5
	l.addi	r15, r14, 4
	l.addi	r25, r24, 4
	l.addi	r5, r4, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lwz	r6, 0(r4)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, -1
	l.bf	.LBB33_36
	l.nop	0                       # in delay slot
# BB#35:                                # %if.then36
                                        #   in Loop: Header=BB33_17 Depth=3
	l.addi	r16, r0, -1
	l.addi	r26, r0, -1
	l.addi	r6, r0, -1
.LBB33_36:                              # %if.then36
                                        #   in Loop: Header=BB33_17 Depth=3
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -68(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.j	.LBB33_17
	l.nop	0                       # in delay slot
.LBB33_64:                              # %if.else131
                                        #   in Loop: Header=BB33_2 Depth=2
	l.andi	r13, r14, 16
	l.andi	r23, r24, 16
	l.andi	r3, r4, 16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_66
	l.nop	0                       # in delay slot
.LBB33_65:                              # %if.then134
                                        #   in Loop: Header=BB33_2 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	0(r3), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.j	.LBB33_2
	l.nop	0                       # in delay slot
.LBB33_66:                              # %if.else136
                                        #   in Loop: Header=BB33_2 Depth=2
	l.andi	r13, r14, 64
	l.andi	r23, r24, 64
	l.andi	r3, r4, 64
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_65
	l.nop	0                       # in delay slot
# BB#67:                                # %if.then139
                                        #   in Loop: Header=BB33_2 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sh	0(r3), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.j	.LBB33_2
	l.nop	0                       # in delay slot
.LBB33_61:                              # %sw.bb123
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r13, r13, 4
	l.addi	r23, r23, 4
	l.addi	r3, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.movhi	r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	-13(r2), r7
	l.movhi	r13, hi(.L.str.5)
	l.movhi	r23, hi(.L.str.5)
	l.movhi	r3, hi(.L.str.5)
	l.ori	r13, r13, lo(.L.str.5)
	l.ori	r23, r23, lo(.L.str.5)
	l.ori	r3, r3, lo(.L.str.5)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-136(r2), r3
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.j	.LBB33_146
	l.nop	0                       # in delay slot
.LBB33_144:                             # %if.end380
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	-53(r2), r7
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.movhi	r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	-13(r2), r7
	l.j	.LBB33_145
	l.nop	0                       # in delay slot
.LBB33_49:                              # %sw.bb84
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r17, r0, 68
	l.addi	r27, r0, 68
	l.addi	r7, r0, 68
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 16
	l.ori	r23, r23, 16
	l.ori	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-88(r2), r3
.LBB33_50:                              # %sw.bb86
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.andi	r13, r15, 32
	l.andi	r23, r25, 32
	l.andi	r3, r5, 32
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-64(r2), r7
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_52
	l.nop	0                       # in delay slot
# BB#51:                                # %cond.true88
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r6, 0(r3)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -120(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.j	.LBB33_57
	l.nop	0                       # in delay slot
.LBB33_52:                              # %cond.false90
                                        #   in Loop: Header=BB33_1 Depth=1
	l.andi	r13, r15, 16
	l.andi	r23, r25, 16
	l.andi	r3, r5, 16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_54
	l.nop	0                       # in delay slot
# BB#53:                                # %cond.true93
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -120(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.j	.LBB33_56
	l.nop	0                       # in delay slot
.LBB33_68:                              # %sw.bb153
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r16, r0, 79
	l.addi	r26, r0, 79
	l.addi	r6, r0, 79
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 16
	l.ori	r23, r23, 16
	l.ori	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-88(r2), r3
.LBB33_69:                              # %sw.bb155
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.andi	r13, r15, 32
	l.andi	r23, r25, 32
	l.andi	r3, r5, 32
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_71
	l.nop	0                       # in delay slot
# BB#70:                                # %cond.true158
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r7, 0(r3)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r13, r14, 4
	l.addi	r23, r24, 4
	l.addi	r3, r4, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-112(r2), r3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lwz	r11, 0(r4)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-64(r2), r6
	l.ori	r16, r17, 0
	l.ori	r26, r27, 0
	l.ori	r6, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.j	.LBB33_107
	l.nop	0                       # in delay slot
.LBB33_86:                              # %sw.bb217
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r15, r0, 85
	l.addi	r25, r0, 85
	l.addi	r5, r0, 85
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 16
	l.ori	r23, r23, 16
	l.ori	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-88(r2), r3
.LBB33_87:                              # %sw.bb219
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -88(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.andi	r13, r16, 32
	l.andi	r23, r26, 32
	l.andi	r3, r6, 32
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_89
	l.nop	0                       # in delay slot
# BB#88:                                # %cond.true222
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r7, 0(r3)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r13, r14, 4
	l.addi	r23, r24, 4
	l.addi	r3, r4, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-112(r2), r3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lwz	r11, 0(r4)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-64(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -84(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
	l.ori	r16, r17, 0
	l.ori	r26, r27, 0
	l.ori	r6, r7, 0
	l.ori	r17, r14, 0
	l.ori	r27, r24, 0
	l.ori	r7, r4, 0
	l.j	.LBB33_107
	l.nop	0                       # in delay slot
.LBB33_94:                              # %hex.loopexit
                                        #   in Loop: Header=BB33_1 Depth=1
	l.movhi	r13, hi(.L.str.3)
	l.movhi	r23, hi(.L.str.3)
	l.movhi	r3, hi(.L.str.3)
	l.ori	r14, r13, lo(.L.str.3)
	l.ori	r24, r23, lo(.L.str.3)
	l.ori	r4, r3, lo(.L.str.3)
.LBB33_95:                              # %hex
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.andi	r13, r15, 32
	l.andi	r23, r25, 32
	l.andi	r3, r5, 32
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_97
	l.nop	0                       # in delay slot
# BB#96:                                # %cond.true256
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r15, r0, -4
	l.addi	r25, r0, -4
	l.addi	r5, r0, -4
	l.and	r13, r13, r15
	l.and	r23, r23, r25
	l.and	r3, r3, r5
	l.addi	r15, r13, 4
	l.addi	r25, r23, 4
	l.addi	r5, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r6, 0(r3)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r15, r13, 4
	l.addi	r25, r23, 4
	l.addi	r5, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.j	.LBB33_102
	l.nop	0                       # in delay slot
.LBB33_48:                              # %sw.bb81
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	-53(r2), r3
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.movhi	r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	-13(r2), r7
	l.addi	r13, r0, 99
	l.addi	r23, r0, 99
	l.addi	r3, r0, 99
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-64(r2), r3
.LBB33_145:                             # %if.else386
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r13, r12, -53
	l.addi	r23, r22, -53
	l.addi	r3, r2, -53
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-136(r2), r3
.LBB33_146:                             # %if.else386
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.j	.LBB33_147
	l.nop	0                       # in delay slot
.LBB33_76:                              # %sw.bb188
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r14, r13, r14
	l.and	r24, r23, r24
	l.and	r4, r3, r4
	l.addi	r13, r14, 4
	l.addi	r23, r24, 4
	l.addi	r3, r4, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.addi	r13, r0, 120
	l.addi	r23, r0, 120
	l.addi	r3, r0, 120
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-64(r2), r3
	l.addi	r13, r0, 2
	l.addi	r23, r0, 2
	l.addi	r3, r0, 2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-112(r2), r3
	l.movhi	r15, hi(.L.str.1)
	l.movhi	r25, hi(.L.str.1)
	l.movhi	r5, hi(.L.str.1)
	l.ori	r15, r15, lo(.L.str.1)
	l.ori	r25, r25, lo(.L.str.1)
	l.ori	r5, r5, lo(.L.str.1)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-128(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.ori	r15, r15, 2
	l.ori	r25, r25, 2
	l.ori	r5, r5, 2
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lwz	r11, 0(r4)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.j	.LBB33_107
	l.nop	0                       # in delay slot
.LBB33_77:                              # %sw.bb192
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.movhi	r14, hi(.L.str.2)
	l.movhi	r24, hi(.L.str.2)
	l.movhi	r4, hi(.L.str.2)
	l.ori	r14, r14, lo(.L.str.2)
	l.ori	r24, r24, lo(.L.str.2)
	l.ori	r4, r4, lo(.L.str.2)
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_79
	l.nop	0                       # in delay slot
# BB#78:                                # %sw.bb192
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
.LBB33_79:                              # %sw.bb192
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-136(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -76(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -84(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltsi	r5, 0
	l.bf	.LBB33_84
	l.nop	0                       # in delay slot
# BB#80:                                # %if.then200
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -136(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.jal	memchr
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -84(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB33_85
	l.nop	0                       # in delay slot
# BB#81:                                # %if.then204
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -136(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sub	r13, r8, r13
	l.sub	r23, r31, r23
	l.sub	r3, r11, r3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgts	r3, r4
	l.bf	.LBB33_83
	l.nop	0                       # in delay slot
# BB#82:                                # %if.then204
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
.LBB33_83:                              # %if.then204
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.j	.LBB33_85
	l.nop	0                       # in delay slot
.LBB33_71:                              # %cond.false160
                                        #   in Loop: Header=BB33_1 Depth=1
	l.andi	r13, r15, 16
	l.andi	r23, r25, 16
	l.andi	r3, r5, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_73
	l.nop	0                       # in delay slot
# BB#72:                                # %cond.true163
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.j	.LBB33_75
	l.nop	0                       # in delay slot
.LBB33_89:                              # %cond.false224
                                        #   in Loop: Header=BB33_1 Depth=1
	l.andi	r13, r16, 16
	l.andi	r23, r26, 16
	l.andi	r3, r6, 16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_91
	l.nop	0                       # in delay slot
# BB#90:                                # %cond.true227
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.j	.LBB33_93
	l.nop	0                       # in delay slot
.LBB33_97:                              # %cond.false258
                                        #   in Loop: Header=BB33_1 Depth=1
	l.andi	r13, r15, 16
	l.andi	r23, r25, 16
	l.andi	r3, r5, 16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.ori	r16, r15, 0
	l.ori	r26, r25, 0
	l.ori	r6, r5, 0
	l.bf	.LBB33_99
	l.nop	0                       # in delay slot
# BB#98:                                # %cond.true261
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r15, r0, -4
	l.addi	r25, r0, -4
	l.addi	r5, r0, -4
	l.and	r13, r13, r15
	l.and	r23, r23, r25
	l.and	r3, r3, r5
	l.addi	r15, r13, 4
	l.addi	r25, r23, 4
	l.addi	r5, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
	l.j	.LBB33_101
	l.nop	0                       # in delay slot
.LBB33_54:                              # %cond.false95
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.andi	r13, r15, 64
	l.andi	r23, r25, 64
	l.andi	r3, r5, 64
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -120(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_56
	l.nop	0                       # in delay slot
# BB#55:                                # %cond.true98
                                        #   in Loop: Header=BB33_1 Depth=1
	l.slli	r13, r8, 16
	l.slli	r23, r31, 16
	l.slli	r3, r11, 16
	l.srai	r8, r13, 16
	l.srai	r31, r23, 16
	l.srai	r11, r3, 16
.LBB33_56:                              # %cond.end113
                                        #   in Loop: Header=BB33_1 Depth=1
	l.srai	r16, r8, 31
	l.srai	r26, r31, 31
	l.srai	r6, r11, 31
.LBB33_57:                              # %cond.end116
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-112(r2), r3
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, -1
	l.bf	.LBB33_108
	l.nop	0                       # in delay slot
# BB#58:                                # %if.then120
                                        #   in Loop: Header=BB33_1 Depth=1
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sub	r15, r14, r16
	l.sub	r25, r24, r26
	l.sub	r5, r4, r6
	l.addi	r16, r0, 1
	l.addi	r26, r0, 1
	l.addi	r6, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-112(r2), r6
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfnei	r11, 0
	l.bf	.LBB33_60
	l.nop	0                       # in delay slot
# BB#59:                                # %if.then120
                                        #   in Loop: Header=BB33_1 Depth=1
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
.LBB33_60:                              # %if.then120
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sub	r16, r15, r16
	l.sub	r26, r25, r26
	l.sub	r6, r5, r6
	l.sub	r8, r14, r8
	l.sub	r31, r24, r31
	l.sub	r11, r4, r11
	l.addi	r14, r0, 45
	l.addi	r24, r0, 45
	l.addi	r4, r0, 45
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	-13(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.j	.LBB33_108
	l.nop	0                       # in delay slot
.LBB33_73:                              # %cond.false165
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.andi	r13, r15, 64
	l.andi	r23, r25, 64
	l.andi	r3, r5, 64
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_75
	l.nop	0                       # in delay slot
# BB#74:                                # %cond.false165
                                        #   in Loop: Header=BB33_1 Depth=1
	l.andi	r8, r8, 65535
	l.andi	r31, r31, 65535
	l.andi	r11, r11, 65535
.LBB33_75:                              # %cond.end183
                                        #   in Loop: Header=BB33_1 Depth=1
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-112(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-64(r2), r6
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.j	.LBB33_107
	l.nop	0                       # in delay slot
.LBB33_91:                              # %cond.false229
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.andi	r13, r16, 64
	l.andi	r23, r26, 64
	l.andi	r3, r6, 64
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_93
	l.nop	0                       # in delay slot
# BB#92:                                # %cond.false229
                                        #   in Loop: Header=BB33_1 Depth=1
	l.andi	r8, r8, 65535
	l.andi	r31, r31, 65535
	l.andi	r11, r11, 65535
.LBB33_93:                              # %cond.false229
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-112(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-64(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.j	.LBB33_107
	l.nop	0                       # in delay slot
.LBB33_99:                              # %cond.false263
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r15, r0, -4
	l.addi	r25, r0, -4
	l.addi	r5, r0, -4
	l.and	r13, r13, r15
	l.and	r23, r23, r25
	l.and	r3, r3, r5
	l.addi	r15, r13, 4
	l.addi	r25, r23, 4
	l.addi	r5, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.andi	r13, r16, 64
	l.andi	r23, r26, 64
	l.andi	r3, r6, 64
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
	l.bf	.LBB33_101
	l.nop	0                       # in delay slot
# BB#100:                               # %cond.false263
                                        #   in Loop: Header=BB33_1 Depth=1
	l.andi	r8, r8, 65535
	l.andi	r31, r31, 65535
	l.andi	r11, r11, 65535
.LBB33_101:                             # %cond.end281
                                        #   in Loop: Header=BB33_1 Depth=1
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
.LBB33_102:                             # %cond.end284
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-80(r2), r6
	l.or	r13, r8, r16
	l.or	r23, r31, r26
	l.or	r3, r11, r6
	l.ori	r16, r15, 0
	l.ori	r26, r25, 0
	l.ori	r6, r5, 0
	l.ori	r15, r16, 2
	l.ori	r25, r26, 2
	l.ori	r5, r6, 2
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 0
	l.bf	.LBB33_104
	l.nop	0                       # in delay slot
# BB#103:                               # %cond.end284
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
.LBB33_104:                             # %cond.end284
                                        #   in Loop: Header=BB33_1 Depth=1
	l.andi	r13, r16, 1
	l.andi	r23, r26, 1
	l.andi	r3, r6, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 0
	l.bf	.LBB33_106
	l.nop	0                       # in delay slot
# BB#105:                               # %cond.end284
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
.LBB33_106:                             # %cond.end284
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r13, r0, 2
	l.addi	r23, r0, 2
	l.addi	r3, r0, 2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-112(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-128(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -80(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
.LBB33_107:                             # %nosign
                                        #   in Loop: Header=BB33_1 Depth=1
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	-13(r2), r4
.LBB33_108:                             # %number
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-80(r2), r6
	l.addi	r14, r0, -129
	l.addi	r24, r0, -129
	l.addi	r4, r0, -129
	l.and	r14, r15, r14
	l.and	r24, r25, r24
	l.and	r4, r5, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-88(r2), r4
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtsi	r7, -1
	l.bf	.LBB33_110
	l.nop	0                       # in delay slot
# BB#109:                               # %number
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-88(r2), r5
.LBB33_110:                             # %number
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-84(r2), r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -80(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB33_112
	l.nop	0                       # in delay slot
# BB#111:                               # %number
                                        #   in Loop: Header=BB33_1 Depth=1
	l.or	r14, r8, r14
	l.or	r24, r31, r24
	l.or	r4, r11, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -144(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB33_141
	l.nop	0                       # in delay slot
.LBB33_112:                             # %if.then305
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -112(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB33_117
	l.nop	0                       # in delay slot
.LBB33_113:                             # %if.then305
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 1
	l.bf	.LBB33_122
	l.nop	0                       # in delay slot
.LBB33_114:                             # %if.then305
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-100(r2), r11
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -84(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r17, r0, 25
	l.addi	r27, r0, 25
	l.addi	r7, r0, 25
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-112(r2), r4
	l.movhi	r14, hi(.L.str.4)
	l.movhi	r24, hi(.L.str.4)
	l.movhi	r4, hi(.L.str.4)
	l.ori	r15, r14, lo(.L.str.4)
	l.ori	r25, r24, lo(.L.str.4)
	l.ori	r5, r4, lo(.L.str.4)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -112(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 2
	l.bf	.LBB33_142
	l.nop	0                       # in delay slot
.LBB33_115:                             # %do.body360.preheader
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -144(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -100(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -80(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
.LBB33_116:                             # %do.body360
                                        #   Parent Loop BB33_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.andi	r13, r8, 15
	l.andi	r23, r31, 15
	l.andi	r3, r11, 15
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -128(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.add	r13, r14, r13
	l.add	r23, r24, r23
	l.add	r3, r4, r3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	-1(r5), r3
	l.srli	r13, r8, 4
	l.srli	r23, r31, 4
	l.srli	r3, r11, 4
	l.slli	r14, r17, 28
	l.slli	r24, r27, 28
	l.slli	r4, r7, 28
	l.or	r8, r13, r14
	l.or	r31, r23, r24
	l.or	r11, r3, r4
	l.addi	r15, r15, -1
	l.addi	r25, r25, -1
	l.addi	r5, r5, -1
	l.srli	r17, r17, 4
	l.srli	r27, r27, 4
	l.srli	r7, r7, 4
	l.or	r13, r8, r17
	l.or	r23, r31, r27
	l.or	r3, r11, r7
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 0
	l.bf	.LBB33_116
	l.nop	0                       # in delay slot
	l.j	.LBB33_141
	l.nop	0                       # in delay slot
.LBB33_117:                             # %do.body307.preheader
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -152(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -80(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
.LBB33_118:                             # %do.body307
                                        #   Parent Loop BB33_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.slli	r14, r17, 29
	l.slli	r24, r27, 29
	l.slli	r4, r7, 29
	l.srli	r15, r8, 3
	l.srli	r25, r31, 3
	l.srli	r5, r11, 3
	l.or	r15, r15, r14
	l.or	r25, r25, r24
	l.or	r5, r5, r4
	l.andi	r14, r8, 7
	l.andi	r24, r31, 7
	l.andi	r4, r11, 7
	l.ori	r14, r14, 48
	l.ori	r24, r24, 48
	l.ori	r4, r4, 48
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
	l.addi	r13, r13, -1
	l.addi	r23, r23, -1
	l.addi	r3, r3, -1
	l.srli	r17, r17, 3
	l.srli	r27, r27, 3
	l.srli	r7, r7, 3
	l.or	r16, r15, r17
	l.or	r26, r25, r27
	l.or	r6, r5, r7
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 0
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
	l.bf	.LBB33_118
	l.nop	0                       # in delay slot
# BB#119:                               # %do.end314
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r16, r13, 1
	l.addi	r26, r23, 1
	l.addi	r6, r3, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.andi	r15, r15, 1
	l.andi	r25, r25, 1
	l.andi	r5, r5, 1
	l.addi	r20, r5, 0              # CFC
	l.addi	r28, r15, 0
	l.addi	r30, r25, 0
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfeqi	r20, 0
	l.bf	.LBB33_141
	l.nop	0                       # in delay slot
# BB#120:                               # %do.end314
                                        #   in Loop: Header=BB33_1 Depth=1
	l.xori	r14, r14, 48
	l.xori	r24, r24, 48
	l.xori	r4, r4, 48
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB33_141
	l.nop	0                       # in delay slot
# BB#121:                               # %if.then321
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r14, r0, 48
	l.addi	r24, r0, 48
	l.addi	r4, r0, 48
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.j	.LBB33_141
	l.nop	0                       # in delay slot
.LBB33_122:                             # %sw.bb324
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.andi	r13, r13, 32
	l.andi	r23, r23, 32
	l.andi	r3, r3, 32
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -84(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_130
	l.nop	0                       # in delay slot
# BB#123:                               # %while.cond343.preheader
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfltui	r11, 10
	l.bf	.LBB33_125
	l.nop	0                       # in delay slot
# BB#124:                               # %while.cond343.preheader
                                        #   in Loop: Header=BB33_1 Depth=1
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB33_125:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -80(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB33_127
	l.nop	0                       # in delay slot
# BB#126:                               # %while.cond343.preheader
                                        #   in Loop: Header=BB33_1 Depth=1
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB33_127:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB33_1 Depth=1
	l.andi	r13, r13, 1
	l.andi	r23, r23, 1
	l.andi	r3, r3, 1
	l.addi	r20, r3, 0              # CFC
	l.addi	r28, r13, 0
	l.addi	r30, r23, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -144(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -80(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfnei	r20, 0                  # CFC
	l.bf	.LBB33_140
	l.nop	0                       # in delay slot
# BB#128:                               # %while.body346.preheader
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -144(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
.LBB33_129:                             # %while.body346
                                        #   Parent Loop BB33_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-112(r2), r7
	l.addi	r16, r0, 10
	l.addi	r26, r0, 10
	l.addi	r6, r0, 10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-80(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-116(r2), r4
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.jal	__udivdi3
	l.nop	0                       # in delay slot
	l.ori	r14, r12, 0
	l.ori	r24, r12, 0
	l.ori	r4, r12, 0
	l.addi	r15, r0, -1
	l.addi	r25, r0, -1
	l.addi	r5, r0, -1
	l.addi	r16, r0, -10
	l.addi	r26, r0, -10
	l.addi	r6, r0, -10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-120(r2), r11
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-100(r2), r4
	l.jal	__muldi3
	l.nop	0                       # in delay slot
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -80(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
	l.bf	.LBB33_135
	l.nop	0                       # in delay slot
# BB#134:                               # %while.body346
                                        #   in Loop: Header=BB33_129 Depth=2
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB33_135:                             # %while.body346
                                        #   in Loop: Header=BB33_129 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -116(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtui	r7, 99
	l.bf	.LBB33_137
	l.nop	0                       # in delay slot
# BB#136:                               # %while.body346
                                        #   in Loop: Header=BB33_129 Depth=2
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB33_137:                             # %while.body346
                                        #   in Loop: Header=BB33_129 Depth=2
	l.addi	r20, r5, 0              # CFC
	l.addi	r28, r15, 0
	l.addi	r30, r25, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -84(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -100(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfeqi	r20, 0
	l.bf	.LBB33_139
	l.nop	0                       # in delay slot
# BB#138:                               # %while.body346
                                        #   in Loop: Header=BB33_129 Depth=2
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
.LBB33_139:                             # %while.body346
                                        #   in Loop: Header=BB33_129 Depth=2
	l.add	r14, r17, r12
	l.add	r24, r27, r12
	l.add	r4, r7, r12
	l.addi	r14, r14, 48
	l.addi	r24, r24, 48
	l.addi	r4, r4, 48
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -112(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	-1(r7), r4
	l.addi	r17, r17, -1
	l.addi	r27, r27, -1
	l.addi	r7, r7, -1
	l.andi	r13, r13, 1
	l.andi	r23, r23, 1
	l.andi	r3, r3, 1
	l.addi	r20, r3, 0              # CFC
	l.addi	r28, r13, 0
	l.addi	r30, r23, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -120(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfnei	r20, 0                  # CFC
	l.bf	.LBB33_129
	l.nop	0                       # in delay slot
.LBB33_140:                             # %while.end354
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r13, r8, 48
	l.addi	r23, r31, 48
	l.addi	r3, r11, 48
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	-1(r7), r3
	l.addi	r15, r17, -1
	l.addi	r25, r27, -1
	l.addi	r5, r7, -1
	l.j	.LBB33_141
	l.nop	0                       # in delay slot
.LBB33_130:                             # %if.then327
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -144(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfltui	r11, 10
	l.bf	.LBB33_133
	l.nop	0                       # in delay slot
# BB#131:                               # %while.body332.preheader
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -144(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB33_132:                             # %while.body332
                                        #   Parent Loop BB33_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.addi	r15, r0, 10
	l.addi	r25, r0, 10
	l.addi	r5, r0, 10
	l.divu	r8, r14, r15
	l.divu	r31, r24, r25
	l.divu	r11, r4, r5
	l.muli	r15, r8, -10
	l.muli	r25, r31, -10
	l.muli	r5, r11, -10
	l.add	r15, r14, r15
	l.add	r25, r24, r25
	l.add	r5, r4, r5
	l.addi	r15, r15, 48
	l.addi	r25, r25, 48
	l.addi	r5, r5, 48
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sb	-1(r3), r5
	l.addi	r13, r13, -1
	l.addi	r23, r23, -1
	l.addi	r3, r3, -1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtui	r4, 99
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
	l.bf	.LBB33_132
	l.nop	0                       # in delay slot
.LBB33_133:                             # %while.end338
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r14, r8, 48
	l.addi	r24, r31, 48
	l.addi	r4, r11, 48
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	-1(r3), r4
	l.addi	r15, r13, -1
	l.addi	r25, r23, -1
	l.addi	r5, r3, -1
.LBB33_141:                             # %if.end368
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -84(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -144(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sub	r17, r13, r15
	l.sub	r27, r23, r25
	l.sub	r7, r3, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lbz	r3, -13(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB33_142:                             # %sw.epilog383
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-136(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-120(r2), r3
	l.andi	r13, r13, 255
	l.andi	r23, r23, 255
	l.andi	r3, r3, 255
	l.addi	r20, r3, 0              # CFC
	l.addi	r28, r13, 0
	l.addi	r30, r23, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.ori	r14, r17, 0
	l.ori	r24, r27, 0
	l.ori	r4, r7, 0
	l.ori	r17, r8, 0
	l.ori	r27, r31, 0
	l.ori	r7, r11, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfeqi	r20, 0
	l.bf	.LBB33_147
	l.nop	0                       # in delay slot
# BB#230:                               # %if.then385
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r8, r14, 1
	l.addi	r31, r24, 1
	l.addi	r11, r4, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-88(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -68(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -120(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.j	.LBB33_150
	l.nop	0                       # in delay slot
.LBB33_84:                              # %if.else214
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -136(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	strlen
	l.nop	0                       # in delay slot
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
.LBB33_85:                              # %if.end216
                                        #   in Loop: Header=BB33_1 Depth=1
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.movhi	r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	-13(r2), r7
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
	l.addi	r13, r0, 115
	l.addi	r23, r0, 115
	l.addi	r3, r0, 115
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-64(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
.LBB33_147:                             # %if.else386
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-88(r2), r5
	l.andi	r13, r15, 2
	l.andi	r23, r25, 2
	l.andi	r3, r5, 2
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.ori	r8, r14, 0
	l.ori	r31, r24, 0
	l.ori	r11, r4, 0
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.bf	.LBB33_149
	l.nop	0                       # in delay slot
# BB#148:                               # %if.else386
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r8, r13, 2
	l.addi	r31, r23, 2
	l.addi	r11, r3, 2
.LBB33_149:                             # %if.else386
                                        #   in Loop: Header=BB33_1 Depth=1
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -68(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
.LBB33_150:                             # %if.end392
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-124(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-116(r2), r7
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfgts	r7, r11
	l.bf	.LBB33_152
	l.nop	0                       # in delay slot
# BB#151:                               # %if.end392
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-116(r2), r11
.LBB33_152:                             # %if.end392
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.andi	r13, r13, 132
	l.andi	r23, r23, 132
	l.andi	r3, r3, 132
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-140(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-84(r2), r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-132(r2), r11
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 0
	l.bf	.LBB33_167
	l.nop	0                       # in delay slot
# BB#153:                               # %if.then402
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -116(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -68(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sub	r15, r15, r13
	l.sub	r25, r25, r23
	l.sub	r5, r5, r3
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltsi	r5, 1
	l.bf	.LBB33_167
	l.nop	0                       # in delay slot
# BB#154:                               # %while.cond412.preheader
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -92(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sub	r13, r13, r16
	l.sub	r23, r23, r26
	l.sub	r3, r3, r6
	l.addi	r8, r13, -1
	l.addi	r31, r23, -1
	l.addi	r11, r3, -1
	l.ori	r17, r15, 0
	l.ori	r27, r25, 0
	l.ori	r7, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-120(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-148(r2), r7
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgtsi	r5, 16
	l.bf	.LBB33_156
	l.nop	0                       # in delay slot
# BB#155:                               # %while.cond412.preheader.while.end421_crit_edge
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.ori	r15, r17, 0
	l.ori	r25, r27, 0
	l.ori	r5, r7, 0
	l.j	.LBB33_162
	l.nop	0                       # in delay slot
.LBB33_156:                             # %while.body415.lr.ph
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r15, r0, 16
	l.addi	r25, r0, 16
	l.addi	r5, r0, 16
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfgtui	r11, 16
	l.bf	.LBB33_158
	l.nop	0                       # in delay slot
# BB#157:                               # %while.body415.lr.ph
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r15, r8, 0
	l.ori	r25, r31, 0
	l.ori	r5, r11, 0
.LBB33_158:                             # %while.body415.lr.ph
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-100(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-112(r2), r5
	l.addi	r20, r5, 0              # CFC
	l.addi	r28, r15, 0
	l.addi	r30, r25, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -68(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfltsi	r20, 16
	l.bf	.LBB33_231
	l.nop	0                       # in delay slot
# BB#159:                               # %while.body415.preheader
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-156(r2), r11
	l.addi	r13, r15, -17
	l.addi	r23, r25, -17
	l.addi	r3, r5, -17
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -116(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.addi	r14, r0, -16
	l.addi	r24, r0, -16
	l.addi	r4, r0, -16
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-160(r2), r3
	l.addi	r13, r15, -16
	l.addi	r23, r25, -16
	l.addi	r3, r5, -16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-164(r2), r3
	l.ori	r14, r17, 0
	l.ori	r24, r27, 0
	l.ori	r4, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -108(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -100(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -112(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB33_160:                             # %while.body415
                                        #   Parent Loop BB33_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-80(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -100(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -108(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -112(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -80(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r14, r14, -16
	l.addi	r24, r24, -16
	l.addi	r4, r4, -16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtsi	r4, 16
	l.bf	.LBB33_160
	l.nop	0                       # in delay slot
# BB#161:                               # %while.end421.loopexit
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -116(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -164(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r14, r13
	l.sub	r23, r24, r23
	l.sub	r3, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -160(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r15, r13, r14
	l.sub	r25, r23, r24
	l.sub	r5, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -120(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -148(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -156(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -100(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB33_162:                             # %while.end421
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-100(r2), r5
	l.movhi	r14, hi(vfnprintf.blanks)
	l.movhi	r24, hi(vfnprintf.blanks)
	l.movhi	r4, hi(vfnprintf.blanks)
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgtu	r11, r5
	l.bf	.LBB33_164
	l.nop	0                       # in delay slot
# BB#163:                               # %while.end421
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r15, r8, 0
	l.ori	r25, r31, 0
	l.ori	r5, r11, 0
.LBB33_164:                             # %while.end421
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-80(r2), r5
	l.ori	r14, r14, lo(vfnprintf.blanks)
	l.ori	r24, r24, lo(vfnprintf.blanks)
	l.ori	r4, r4, lo(vfnprintf.blanks)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -80(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -80(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -100(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfges	r4, r3
	l.bf	.LBB33_166
	l.nop	0                       # in delay slot
# BB#165:                               # %print_back_to_string.exit819
	l.j	.LBB33_9
	l.nop	0                       # in delay slot
.LBB33_166:                             # %do.end428
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -148(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r16, r13, r16
	l.add	r26, r23, r26
	l.add	r6, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -68(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -120(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -132(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
.LBB33_167:                             # %if.end432
                                        #   in Loop: Header=BB33_1 Depth=1
	l.andi	r13, r14, 255
	l.andi	r23, r24, 255
	l.andi	r3, r4, 255
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_173
	l.nop	0                       # in delay slot
# BB#168:                               # %if.then434
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-76(r2), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -92(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r14, r14, r16
	l.sub	r24, r24, r26
	l.sub	r4, r4, r6
	l.addi	r14, r14, -1
	l.addi	r24, r24, -1
	l.addi	r4, r4, -1
	l.addi	r15, r0, 1
	l.addi	r25, r0, 1
	l.addi	r5, r0, 1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtui	r4, 1
	l.bf	.LBB33_170
	l.nop	0                       # in delay slot
# BB#169:                               # %if.then434
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB33_170:                             # %if.then434
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-64(r2), r5
	l.addi	r14, r12, -13
	l.addi	r24, r22, -13
	l.addi	r4, r2, -13
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -64(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -64(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtsi	r4, 0
	l.bf	.LBB33_172
	l.nop	0                       # in delay slot
# BB#171:                               # %print_back_to_string.exit810
	l.j	.LBB33_9
	l.nop	0                       # in delay slot
.LBB33_172:                             # %if.end438
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.addi	r16, r16, 1
	l.addi	r26, r26, 1
	l.addi	r6, r6, 1
	l.j	.LBB33_179
	l.nop	0                       # in delay slot
.LBB33_173:                             # %if.else440
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.andi	r13, r13, 2
	l.andi	r23, r23, 2
	l.andi	r3, r3, 2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -68(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_180
	l.nop	0                       # in delay slot
# BB#174:                               # %if.then443
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r13, r0, 48
	l.addi	r23, r0, 48
	l.addi	r3, r0, 48
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	-55(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -64(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	-54(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-76(r2), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -92(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r14, r14, r16
	l.sub	r24, r24, r26
	l.sub	r4, r4, r6
	l.addi	r14, r14, -1
	l.addi	r24, r24, -1
	l.addi	r4, r4, -1
	l.addi	r15, r0, 2
	l.addi	r25, r0, 2
	l.addi	r5, r0, 2
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtui	r4, 2
	l.bf	.LBB33_176
	l.nop	0                       # in delay slot
# BB#175:                               # %if.then443
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB33_176:                             # %if.then443
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-64(r2), r5
	l.addi	r14, r12, -55
	l.addi	r24, r22, -55
	l.addi	r4, r2, -55
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -64(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -64(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtsi	r4, 1
	l.bf	.LBB33_178
	l.nop	0                       # in delay slot
# BB#177:                               # %print_back_to_string.exit801
	l.j	.LBB33_9
	l.nop	0                       # in delay slot
.LBB33_178:                             # %if.end451
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.addi	r16, r16, 2
	l.addi	r26, r26, 2
	l.addi	r6, r6, 2
.LBB33_179:                             # %if.end454
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -68(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -132(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
.LBB33_180:                             # %if.end454
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -140(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 128
	l.bf	.LBB33_195
	l.nop	0                       # in delay slot
# BB#181:                               # %if.then458
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -116(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sub	r14, r15, r13
	l.sub	r24, r25, r23
	l.sub	r4, r5, r3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfltsi	r4, 1
	l.bf	.LBB33_195
	l.nop	0                       # in delay slot
# BB#182:                               # %while.cond468.preheader
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -92(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sub	r13, r13, r16
	l.sub	r23, r23, r26
	l.sub	r3, r3, r6
	l.addi	r17, r13, -1
	l.addi	r27, r23, -1
	l.addi	r7, r3, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-76(r2), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-112(r2), r4
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtsi	r4, 16
	l.bf	.LBB33_184
	l.nop	0                       # in delay slot
# BB#183:                               # %while.cond468.preheader.while.end477_crit_edge
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r8, r13, r16
	l.add	r31, r23, r26
	l.add	r11, r3, r6
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.j	.LBB33_190
	l.nop	0                       # in delay slot
.LBB33_184:                             # %while.body471.lr.ph
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r13, r0, 16
	l.addi	r23, r0, 16
	l.addi	r3, r0, 16
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtui	r7, 16
	l.bf	.LBB33_186
	l.nop	0                       # in delay slot
# BB#185:                               # %while.body471.lr.ph
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
.LBB33_186:                             # %while.body471.lr.ph
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-80(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r8, r13, r16
	l.add	r31, r23, r26
	l.add	r11, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -80(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfltsi	r3, 16
	l.bf	.LBB33_232
	l.nop	0                       # in delay slot
# BB#187:                               # %while.body471.preheader
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-120(r2), r7
	l.addi	r13, r15, -17
	l.addi	r23, r25, -17
	l.addi	r3, r5, -17
	l.ori	r16, r14, 0
	l.ori	r26, r24, 0
	l.ori	r6, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -116(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.addi	r14, r0, -16
	l.addi	r24, r0, -16
	l.addi	r4, r0, -16
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-140(r2), r3
	l.addi	r13, r15, -16
	l.addi	r23, r25, -16
	l.addi	r3, r5, -16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-148(r2), r3
	l.ori	r13, r16, 0
	l.ori	r23, r26, 0
	l.ori	r3, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -96(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-100(r2), r11
.LBB33_188:                             # %while.body471
                                        #   Parent Loop BB33_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-64(r2), r3
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -96(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -80(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -64(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -100(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r13, r13, -16
	l.addi	r23, r23, -16
	l.addi	r3, r3, -16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtsi	r3, 16
	l.bf	.LBB33_188
	l.nop	0                       # in delay slot
# BB#189:                               # %while.end477.loopexit
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -116(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -148(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r14, r13
	l.sub	r23, r24, r23
	l.sub	r3, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -140(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -112(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -120(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
.LBB33_190:                             # %while.end477
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-80(r2), r3
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtu	r7, r3
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.bf	.LBB33_192
	l.nop	0                       # in delay slot
# BB#191:                               # %while.end477
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r14, r17, 0
	l.ori	r24, r27, 0
	l.ori	r4, r7, 0
.LBB33_192:                             # %while.end477
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-64(r2), r4
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -64(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -64(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -80(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfges	r4, r3
	l.bf	.LBB33_194
	l.nop	0                       # in delay slot
# BB#193:                               # %print_back_to_string.exit783
	l.j	.LBB33_9
	l.nop	0                       # in delay slot
.LBB33_194:                             # %do.end484
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -112(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r16, r16, r13
	l.add	r26, r26, r23
	l.add	r6, r6, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -132(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
.LBB33_195:                             # %if.end488
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sub	r15, r17, r8
	l.sub	r25, r27, r31
	l.sub	r5, r7, r11
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltsi	r5, 1
	l.bf	.LBB33_209
	l.nop	0                       # in delay slot
# BB#196:                               # %while.cond498.preheader
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -92(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sub	r13, r13, r16
	l.sub	r23, r23, r26
	l.sub	r3, r3, r6
	l.addi	r14, r13, -1
	l.addi	r24, r23, -1
	l.addi	r4, r3, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-76(r2), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-100(r2), r5
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgtsi	r5, 16
	l.bf	.LBB33_198
	l.nop	0                       # in delay slot
# BB#197:                               # %while.cond498.preheader.while.end507_crit_edge
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r16, r13, r16
	l.add	r26, r23, r26
	l.add	r6, r3, r6
	l.ori	r13, r15, 0
	l.ori	r23, r25, 0
	l.ori	r3, r5, 0
	l.j	.LBB33_204
	l.nop	0                       # in delay slot
.LBB33_198:                             # %while.body501.lr.ph
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r13, r0, 16
	l.addi	r23, r0, 16
	l.addi	r3, r0, 16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtui	r4, 16
	l.bf	.LBB33_200
	l.nop	0                       # in delay slot
# BB#199:                               # %while.body501.lr.ph
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
.LBB33_200:                             # %while.body501.lr.ph
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-80(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r16, r13, r16
	l.add	r26, r23, r26
	l.add	r6, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -80(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfltsi	r3, 16
	l.bf	.LBB33_233
	l.nop	0                       # in delay slot
# BB#201:                               # %while.body501.preheader
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-112(r2), r4
	l.addi	r13, r17, -17
	l.addi	r23, r27, -17
	l.addi	r3, r7, -17
	l.sub	r13, r13, r8
	l.sub	r23, r23, r31
	l.sub	r3, r3, r11
	l.addi	r14, r0, -16
	l.addi	r24, r0, -16
	l.addi	r4, r0, -16
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-120(r2), r3
	l.addi	r13, r17, -16
	l.addi	r23, r27, -16
	l.addi	r3, r7, -16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-140(r2), r3
	l.ori	r13, r15, 0
	l.ori	r23, r25, 0
	l.ori	r3, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-84(r2), r6
.LBB33_202:                             # %while.body501
                                        #   Parent Loop BB33_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-64(r2), r3
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r13, r16, 0
	l.ori	r23, r26, 0
	l.ori	r3, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -80(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -64(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -84(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.addi	r13, r13, -16
	l.addi	r23, r23, -16
	l.addi	r3, r3, -16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtsi	r3, 16
	l.bf	.LBB33_202
	l.nop	0                       # in delay slot
# BB#203:                               # %while.end507.loopexit
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -132(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -140(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r14, r13
	l.sub	r23, r24, r23
	l.sub	r3, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -120(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -100(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -112(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB33_204:                             # %while.end507
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-80(r2), r3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtu	r4, r3
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.bf	.LBB33_206
	l.nop	0                       # in delay slot
# BB#205:                               # %while.end507
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB33_206:                             # %while.end507
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-64(r2), r5
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r13, r16, 0
	l.ori	r23, r26, 0
	l.ori	r3, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -64(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -64(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -80(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfges	r4, r3
	l.bf	.LBB33_208
	l.nop	0                       # in delay slot
# BB#207:                               # %print_back_to_string.exit765
	l.j	.LBB33_9
	l.nop	0                       # in delay slot
.LBB33_208:                             # %do.end514
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -100(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r16, r16, r13
	l.add	r26, r26, r23
	l.add	r6, r6, r3
.LBB33_209:                             # %if.end517
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-76(r2), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -92(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r14, r14, r16
	l.sub	r24, r24, r26
	l.sub	r4, r4, r6
	l.addi	r16, r14, -1
	l.addi	r26, r24, -1
	l.addi	r6, r4, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -124(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -136(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgtu	r6, r5
	l.bf	.LBB33_211
	l.nop	0                       # in delay slot
# BB#210:                               # %if.end517
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
.LBB33_211:                             # %if.end517
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-64(r2), r5
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -64(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -124(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfges	r4, r3
	l.bf	.LBB33_213
	l.nop	0                       # in delay slot
# BB#212:                               # %print_back_to_string.exit756
	l.j	.LBB33_9
	l.nop	0                       # in delay slot
.LBB33_213:                             # %if.end521
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -76(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.add	r17, r17, r13
	l.add	r27, r27, r23
	l.add	r7, r7, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.andi	r13, r13, 4
	l.andi	r23, r23, 4
	l.andi	r3, r3, 4
	l.movhi	r8, hi(.L.str.1)
	l.movhi	r31, hi(.L.str.1)
	l.movhi	r11, hi(.L.str.1)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -68(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB33_1
	l.nop	0                       # in delay slot
# BB#214:                               # %if.then525
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -116(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sub	r14, r16, r13
	l.sub	r24, r26, r23
	l.sub	r4, r6, r3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfltsi	r4, 1
	l.bf	.LBB33_1
	l.nop	0                       # in delay slot
# BB#215:                               # %while.cond535.preheader
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -92(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r8, r17, 0
	l.ori	r31, r27, 0
	l.ori	r11, r7, 0
	l.sub	r13, r13, r8
	l.sub	r23, r23, r31
	l.sub	r3, r3, r11
	l.addi	r13, r13, -1
	l.addi	r23, r23, -1
	l.addi	r3, r3, -1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-76(r2), r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-88(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-100(r2), r3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtsi	r4, 16
	l.bf	.LBB33_217
	l.nop	0                       # in delay slot
# BB#216:                               # %while.cond535.preheader.while.end544_crit_edge
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r17, r13, r8
	l.add	r27, r23, r31
	l.add	r7, r3, r11
	l.ori	r13, r15, 0
	l.ori	r23, r25, 0
	l.ori	r3, r5, 0
	l.j	.LBB33_225
	l.nop	0                       # in delay slot
.LBB33_217:                             # %while.body538.lr.ph
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
	l.addi	r15, r0, 16
	l.addi	r25, r0, 16
	l.addi	r5, r0, 16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtui	r3, 16
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
	l.bf	.LBB33_219
	l.nop	0                       # in delay slot
# BB#218:                               # %while.body538.lr.ph
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB33_219:                             # %while.body538.lr.ph
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r17, r13, r17
	l.add	r27, r23, r27
	l.add	r7, r3, r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-80(r2), r5
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltsi	r5, 16
	l.bf	.LBB33_222
	l.nop	0                       # in delay slot
# BB#220:                               # %while.body538.preheader
                                        #   in Loop: Header=BB33_1 Depth=1
	l.addi	r13, r16, -17
	l.addi	r23, r26, -17
	l.addi	r3, r6, -17
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -116(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.addi	r14, r0, -16
	l.addi	r24, r0, -16
	l.addi	r4, r0, -16
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-112(r2), r3
	l.addi	r13, r16, -16
	l.addi	r23, r26, -16
	l.addi	r3, r6, -16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-68(r2), r3
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-84(r2), r7
.LBB33_221:                             # %while.body538
                                        #   Parent Loop BB33_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-64(r2), r3
	l.movhi	r13, hi(vfnprintf.blanks)
	l.movhi	r23, hi(vfnprintf.blanks)
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -64(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -80(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.addi	r13, r13, -16
	l.addi	r23, r23, -16
	l.addi	r3, r3, -16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtsi	r3, 16
	l.bf	.LBB33_221
	l.nop	0                       # in delay slot
# BB#224:                               # %while.end544.loopexit
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -116(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -68(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r14, r13
	l.sub	r23, r24, r23
	l.sub	r3, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -112(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -76(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
.LBB33_225:                             # %while.end544
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -100(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-68(r2), r3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtu	r4, r3
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.movhi	r13, hi(vfnprintf.blanks)
	l.movhi	r23, hi(vfnprintf.blanks)
	l.movhi	r3, hi(vfnprintf.blanks)
	l.bf	.LBB33_227
	l.nop	0                       # in delay slot
# BB#226:                               # %while.end544
                                        #   in Loop: Header=BB33_1 Depth=1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB33_227:                             # %while.end544
                                        #   in Loop: Header=BB33_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-64(r2), r5
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -64(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -64(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -68(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfges	r4, r3
	l.bf	.LBB33_229
	l.nop	0                       # in delay slot
# BB#228:                               # %print_back_to_string.exit738
	l.j	.LBB33_9
	l.nop	0                       # in delay slot
.LBB33_233:                             # %while.body501.us
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r13, r16, 0
	l.ori	r23, r26, 0
	l.ori	r3, r6, 0
	l.j	.LBB33_223
	l.nop	0                       # in delay slot
.LBB33_232:                             # %while.body471.us
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.j	.LBB33_223
	l.nop	0                       # in delay slot
.LBB33_231:                             # %while.body415.us
	l.movhi	r13, hi(vfnprintf.blanks)
	l.movhi	r23, hi(vfnprintf.blanks)
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -100(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -112(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -76(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -112(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.j	.LBB33_10
	l.nop	0                       # in delay slot
.LBB33_222:                             # %while.body538.us
	l.movhi	r13, hi(vfnprintf.blanks)
	l.movhi	r23, hi(vfnprintf.blanks)
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
.LBB33_223:                             # %error
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -76(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -80(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB33_10:                              # %error
	l.add	r13, r14, r13
	l.add	r23, r24, r23
	l.add	r3, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-76(r2), r3
.LBB33_11:                              # %error
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -76(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end33:
	.size	vfnprintf, .Lfunc_end33-vfnprintf
	.section	.rodata,"a",@progbits
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

	.text
	.hidden	sprintf
	.globl	sprintf
	.p2align	2
	.type	sprintf,@function
sprintf:                                # @sprintf
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -12
	l.addi	r21, r21, -12           # CFC
	l.addi	r1, r1, -12
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
	l.addi	r16, r12, 0
	l.addi	r26, r22, 0
	l.addi	r6, r2, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.addi	r14, r0, 1024
	l.addi	r24, r0, 1024
	l.addi	r4, r0, 1024
	l.jal	vfnprintf
	l.nop	0                       # in delay slot
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -24
	l.addi	r21, r21, -24           # CFC
	l.addi	r1, r1, -24
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.addi	r16, r12, 0
	l.addi	r26, r22, 0
	l.addi	r6, r2, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.movhi	r13, hi(PRINTFBUFFER)
	l.movhi	r23, hi(PRINTFBUFFER)
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.addi	r14, r0, 512
	l.addi	r24, r0, 512
	l.addi	r4, r0, 512
	l.jal	vfnprintf
	l.nop	0                       # in delay slot
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.addi	r8, r0, -1
	l.addi	r31, r0, -1
	l.addi	r11, r0, -1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB35_5
	l.nop	0                       # in delay slot
# BB#1:                                 # %while.cond.preheader
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-24(r2), r3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfltsi	r3, 1
	l.bf	.LBB35_4
	l.nop	0                       # in delay slot
# BB#2:                                 # %while.body.preheader
	l.movhi	r13, hi(PRINTFBUFFER)
	l.movhi	r23, hi(PRINTFBUFFER)
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -24(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB35_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-20(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	sim_putc
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -20(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 1
	l.addi	r23, r23, 1
	l.addi	r3, r3, 1
	l.addi	r14, r14, -1
	l.addi	r24, r24, -1
	l.addi	r4, r4, -1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB35_3
	l.nop	0                       # in delay slot
.LBB35_4:                               # %while.end
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -24(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
.LBB35_5:                               # %cleanup
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -12
	l.addi	r21, r21, -12           # CFC
	l.addi	r1, r1, -12
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	0(r1), r3
	l.movhi	r13, hi(.L.str.5.8)
	l.movhi	r23, hi(.L.str.5.8)
	l.movhi	r3, hi(.L.str.5.8)
	l.ori	r13, r13, lo(.L.str.5.8)
	l.ori	r23, r23, lo(.L.str.5.8)
	l.ori	r3, r3, lo(.L.str.5.8)
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -24
	l.addi	r21, r21, -24           # CFC
	l.addi	r1, r1, -24
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.addi	r16, r12, 0
	l.addi	r26, r22, 0
	l.addi	r6, r2, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.movhi	r13, hi(PRINTFBUFFER)
	l.movhi	r23, hi(PRINTFBUFFER)
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.addi	r14, r0, 512
	l.addi	r24, r0, 512
	l.addi	r4, r0, 512
	l.jal	vfnprintf
	l.nop	0                       # in delay slot
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.addi	r8, r0, -1
	l.addi	r31, r0, -1
	l.addi	r11, r0, -1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB37_5
	l.nop	0                       # in delay slot
# BB#1:                                 # %while.cond.preheader
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-24(r2), r3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfltsi	r3, 1
	l.bf	.LBB37_4
	l.nop	0                       # in delay slot
# BB#2:                                 # %while.body.preheader
	l.movhi	r13, hi(PRINTFBUFFER)
	l.movhi	r23, hi(PRINTFBUFFER)
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -24(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB37_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-20(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbs	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.jal	uart_putc
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -20(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 1
	l.addi	r23, r23, 1
	l.addi	r3, r3, 1
	l.addi	r14, r14, -1
	l.addi	r24, r24, -1
	l.addi	r4, r4, -1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB37_3
	l.nop	0                       # in delay slot
.LBB37_4:                               # %while.end
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -24(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
.LBB37_5:                               # %cleanup
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -16
	l.addi	r21, r21, -16           # CFC
	l.addi	r1, r1, -16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	0(r1), r3
	l.movhi	r13, hi(.L.str.6)
	l.movhi	r23, hi(.L.str.6)
	l.movhi	r3, hi(.L.str.6)
	l.ori	r13, r13, lo(.L.str.6)
	l.ori	r23, r23, lo(.L.str.6)
	l.ori	r3, r3, lo(.L.str.6)
	l.jal	printf_to_uart
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -12
	l.addi	r21, r21, -12           # CFC
	l.addi	r1, r1, -12
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	0(r1), r3
	l.movhi	r13, hi(.L.str.5.8)
	l.movhi	r23, hi(.L.str.5.8)
	l.movhi	r3, hi(.L.str.5.8)
	l.ori	r13, r13, lo(.L.str.5.8)
	l.ori	r23, r23, lo(.L.str.5.8)
	l.ori	r3, r3, lo(.L.str.5.8)
	l.jal	printf_to_uart
	l.nop	0                       # in delay slot
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r14, 36864
	l.movhi	r24, 36864
	l.movhi	r4, 36864
	l.ori	r15, r14, 2
	l.ori	r25, r24, 2
	l.ori	r5, r4, 2
	l.addi	r16, r0, 199
	l.addi	r26, r0, 199
	l.addi	r6, r0, 199
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sb	0(r5), r6
	l.ori	r15, r14, 1
	l.ori	r25, r24, 1
	l.ori	r5, r4, 1
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sb	0(r5), r6
	l.ori	r14, r14, 3
	l.ori	r24, r24, 3
	l.ori	r4, r4, 3
	l.addi	r17, r0, 3
	l.addi	r27, r0, 3
	l.addi	r7, r0, 3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	0(r4), r7
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbz	r7, 0(r4)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.ori	r17, r17, 128
	l.ori	r27, r27, 128
	l.ori	r7, r7, 128
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	0(r4), r7
	l.movhi	r17, hi(UART_BASE_ADR)
	l.movhi	r27, hi(UART_BASE_ADR)
	l.movhi	r7, hi(UART_BASE_ADR)
	l.ori	r17, r17, lo(UART_BASE_ADR)
	l.ori	r27, r27, lo(UART_BASE_ADR)
	l.ori	r7, r7, lo(UART_BASE_ADR)
	l.slli	r13, r13, 2
	l.slli	r23, r23, 2
	l.slli	r3, r3, 2
	l.add	r13, r13, r17
	l.add	r23, r23, r27
	l.add	r3, r3, r7
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r17, r0, 27
	l.addi	r27, r0, 27
	l.addi	r7, r0, 27
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	0(r3), r7
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sb	0(r5), r6
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbz	r3, 0(r4)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.andi	r13, r13, 127
	l.andi	r23, r23, 127
	l.andi	r3, r3, 127
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	0(r4), r3
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r15, 36864
	l.movhi	r25, 36864
	l.movhi	r5, 36864
	l.ori	r15, r15, 5
	l.ori	r25, r25, 5
	l.ori	r5, r5, 5
.LBB41_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.lbz	r6, 0(r5)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.andi	r16, r16, 32
	l.andi	r26, r26, 32
	l.andi	r6, r6, 32
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfeqi	r6, 0
	l.bf	.LBB41_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %do.end
	l.movhi	r15, hi(UART_BASE_ADR)
	l.movhi	r25, hi(UART_BASE_ADR)
	l.movhi	r5, hi(UART_BASE_ADR)
	l.ori	r15, r15, lo(UART_BASE_ADR)
	l.ori	r25, r25, lo(UART_BASE_ADR)
	l.ori	r5, r5, lo(UART_BASE_ADR)
	l.slli	r13, r13, 2
	l.slli	r23, r23, 2
	l.slli	r3, r3, 2
	l.add	r13, r13, r15
	l.add	r23, r23, r25
	l.add	r3, r3, r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
	l.andi	r14, r14, 255
	l.andi	r24, r24, 255
	l.andi	r4, r4, 255
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 10
	l.bf	.LBB41_6
	l.nop	0                       # in delay slot
# BB#3:                                 # %do.body7.preheader
	l.movhi	r14, 36864
	l.movhi	r24, 36864
	l.movhi	r4, 36864
	l.ori	r14, r14, 5
	l.ori	r24, r24, 5
	l.ori	r4, r4, 5
.LBB41_4:                               # %do.body7
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbz	r5, 0(r4)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.andi	r15, r15, 32
	l.andi	r25, r25, 32
	l.andi	r5, r5, 32
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB41_4
	l.nop	0                       # in delay slot
# BB#5:                                 # %do.end15
	l.addi	r14, r0, 13
	l.addi	r24, r0, 13
	l.addi	r4, r0, 13
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
.LBB41_6:                               # %do.body18.preheader
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 5
	l.ori	r23, r23, 5
	l.ori	r3, r3, 5
.LBB41_7:                               # %do.body18
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.andi	r14, r14, 96
	l.andi	r24, r24, 96
	l.andi	r4, r4, 96
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 96
	l.bf	.LBB41_7
	l.nop	0                       # in delay slot
# BB#8:                                 # %do.end26
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r15, hi(UART_BASE_ADR)
	l.movhi	r25, hi(UART_BASE_ADR)
	l.movhi	r5, hi(UART_BASE_ADR)
	l.ori	r15, r15, lo(UART_BASE_ADR)
	l.ori	r25, r25, lo(UART_BASE_ADR)
	l.ori	r5, r5, lo(UART_BASE_ADR)
	l.slli	r13, r13, 2
	l.slli	r23, r23, 2
	l.slli	r3, r3, 2
	l.add	r13, r13, r15
	l.add	r23, r23, r25
	l.add	r3, r3, r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r14, 36864
	l.movhi	r24, 36864
	l.movhi	r4, 36864
	l.ori	r14, r14, 5
	l.ori	r24, r24, 5
	l.ori	r4, r4, 5
.LBB43_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbz	r5, 0(r4)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.andi	r15, r15, 1
	l.andi	r25, r25, 1
	l.andi	r5, r5, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB43_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %do.end
	l.movhi	r14, hi(UART_BASE_ADR)
	l.movhi	r24, hi(UART_BASE_ADR)
	l.movhi	r4, hi(UART_BASE_ADR)
	l.ori	r14, r14, lo(UART_BASE_ADR)
	l.ori	r24, r24, lo(UART_BASE_ADR)
	l.ori	r4, r4, lo(UART_BASE_ADR)
	l.slli	r13, r13, 2
	l.slli	r23, r23, 2
	l.slli	r3, r3, 2
	l.add	r13, r13, r14
	l.add	r23, r23, r24
	l.add	r3, r3, r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbs	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 5
	l.ori	r23, r23, 5
	l.ori	r3, r3, 5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.andi	r8, r13, 1
	l.andi	r31, r23, 1
	l.andi	r11, r3, 1
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 1
	l.ori	r23, r23, 1
	l.ori	r3, r3, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.ori	r14, r14, 1
	l.ori	r24, r24, 1
	l.ori	r4, r4, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 1
	l.ori	r23, r23, 1
	l.ori	r3, r3, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.andi	r14, r14, 254
	l.andi	r24, r24, 254
	l.andi	r4, r4, 254
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 1
	l.ori	r23, r23, 1
	l.ori	r3, r3, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.ori	r14, r14, 2
	l.ori	r24, r24, 2
	l.ori	r4, r4, 2
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 1
	l.ori	r23, r23, 1
	l.ori	r3, r3, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.andi	r14, r14, 253
	l.andi	r24, r24, 253
	l.andi	r4, r4, 253
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 2
	l.ori	r23, r23, 2
	l.ori	r3, r3, 2
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbs	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 5
	l.ori	r23, r23, 5
	l.ori	r3, r3, 5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbs	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
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
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 6
	l.ori	r23, r23, 6
	l.ori	r3, r3, 6
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbs	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end51:
	.size	uart_get_msr, .Lfunc_end51-uart_get_msr

	.type	crc_32_tab,@object      # @crc_32_tab
	.section	.rodata,"a",@progbits
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
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%08lX %7ld \n"
	.size	.L.str, 13

	.hidden	int_handlers            # @int_handlers
	.type	int_handlers,@object
	.comm	int_handlers,256,4
	.type	rand.lfsr,@object       # @rand.lfsr
	.data
	.p2align	2
rand.lfsr:
	.long	347520060               # 0x14b6bc3c
	.size	rand.lfsr, 4

	.type	rand.period,@object     # @rand.period
	.local	rand.period
	.comm	rand.period,4,4
	.hidden	timer_ticks             # @timer_ticks
	.type	timer_ticks,@object
	.comm	timer_ticks,4,4
	.hidden	PRINTFBUFFER            # @PRINTFBUFFER
	.type	PRINTFBUFFER,@object
	.comm	PRINTFBUFFER,512,1
	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
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
	.data
vfnprintf.blanks:
	.zero	16,32
	.size	vfnprintf.blanks, 16

	.type	vfnprintf.zeroes,@object # @vfnprintf.zeroes
vfnprintf.zeroes:
	.zero	16,48
	.size	vfnprintf.zeroes, 16

	.type	.L.str.5.8,@object      # @.str.5.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5.8:
	.asciz	"%s\n"
	.size	.L.str.5.8, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%c"
	.size	.L.str.6, 3

	.hidden	UART_BASE_ADR           # @UART_BASE_ADR
	.type	UART_BASE_ADR,@object
	.section	.rodata,"a",@progbits
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

	.hidden	tx_buff                 # @tx_buff
	.type	tx_buff,@object
	.comm	tx_buff,32,1
	.hidden	tx_level                # @tx_level
	.type	tx_level,@object
	.comm	tx_level,4,4
	.hidden	rx_level                # @rx_level
	.type	rx_level,@object
	.comm	rx_level,4,4

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
