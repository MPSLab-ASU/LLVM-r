	.text
	.file	"ADPCMD.LL"
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

	.hidden	adpcm_coder
	.globl	adpcm_coder
	.p2align	2
	.type	adpcm_coder,@function
adpcm_coder:                            # @adpcm_coder
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
	l.addi	r10, r10, -48
	l.addi	r21, r21, -48           # CFC
	l.addi	r1, r1, -48
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-44(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-20(r2), r3
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lbs	r7, 2(r6)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lhs	r11, 0(r6)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltsi	r5, 1
	l.bf	.LBB1_30
	l.nop	0                       # in delay slot
# BB#1:                                 # %for.body.preheader
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-48(r2), r6
	l.movhi	r13, hi(stepsizeTable)
	l.movhi	r23, hi(stepsizeTable)
	l.movhi	r3, hi(stepsizeTable)
	l.ori	r13, r13, lo(stepsizeTable)
	l.ori	r23, r23, lo(stepsizeTable)
	l.ori	r3, r3, lo(stepsizeTable)
	l.slli	r14, r17, 2
	l.slli	r24, r27, 2
	l.slli	r4, r7, 2
	l.add	r13, r14, r13
	l.add	r23, r24, r23
	l.add	r3, r4, r3
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.addi	r15, r15, 1
	l.addi	r25, r25, 1
	l.addi	r5, r5, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.movhi	r13, hi(indexTable)
	l.movhi	r23, hi(indexTable)
	l.movhi	r3, hi(indexTable)
	l.ori	r13, r13, lo(indexTable)
	l.ori	r23, r23, lo(indexTable)
	l.ori	r3, r3, lo(indexTable)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-40(r2), r3
                                        # implicit-def: %R13
                                        # implicit-def: %R23
                                        # implicit-def: %R3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-36(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -20(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
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
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-28(r2), r5
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
	l.lhs	r3, 0(r6)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r17, r8, 0
	l.ori	r27, r31, 0
	l.ori	r7, r11, 0
	l.sub	r16, r13, r8
	l.sub	r26, r23, r31
	l.sub	r6, r3, r11
	l.srai	r15, r16, 31
	l.srai	r25, r26, 31
	l.srai	r5, r6, 31
	l.add	r13, r16, r15
	l.add	r23, r26, r25
	l.add	r3, r6, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-32(r2), r5
	l.xor	r13, r13, r15
	l.xor	r23, r23, r25
	l.xor	r3, r3, r5
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-8(r2), r11
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sflts	r3, r4
	l.bf	.LBB1_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	l.addi	r8, r0, 4
	l.addi	r31, r0, 4
	l.addi	r11, r0, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-8(r2), r11
.LBB1_4:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -16(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sflts	r3, r4
	l.bf	.LBB1_6
	l.nop	0                       # in delay slot
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB1_6:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-24(r2), r7
	l.sub	r17, r13, r15
	l.sub	r27, r23, r25
	l.sub	r7, r3, r5
	l.srai	r13, r14, 3
	l.srai	r23, r24, 3
	l.srai	r3, r4, 3
	l.add	r13, r15, r13
	l.add	r23, r25, r23
	l.add	r3, r5, r3
	l.srai	r15, r14, 1
	l.srai	r25, r24, 1
	l.srai	r5, r4, 1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sflts	r7, r5
	l.bf	.LBB1_8
	l.nop	0                       # in delay slot
# BB#7:                                 # %if.then16
                                        #   in Loop: Header=BB1_2 Depth=1
	l.add	r13, r13, r15
	l.add	r23, r23, r25
	l.add	r3, r3, r5
	l.sub	r17, r17, r15
	l.sub	r27, r27, r25
	l.sub	r7, r7, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.ori	r15, r15, 2
	l.ori	r25, r25, 2
	l.ori	r5, r5, 2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-8(r2), r5
.LBB1_8:                                # %if.end19
                                        #   in Loop: Header=BB1_2 Depth=1
	l.srai	r15, r14, 2
	l.srai	r25, r24, 2
	l.srai	r5, r4, 2
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sflts	r7, r5
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.bf	.LBB1_10
	l.nop	0                       # in delay slot
# BB#9:                                 # %if.end19
                                        #   in Loop: Header=BB1_2 Depth=1
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
.LBB1_10:                               # %if.end19
                                        #   in Loop: Header=BB1_2 Depth=1
	l.add	r13, r8, r13
	l.add	r23, r31, r23
	l.add	r3, r11, r3
	l.sub	r8, r14, r13
	l.sub	r31, r24, r23
	l.sub	r11, r4, r3
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltsi	r6, 0
	l.bf	.LBB1_12
	l.nop	0                       # in delay slot
# BB#11:                                # %if.end19
                                        #   in Loop: Header=BB1_2 Depth=1
	l.ori	r8, r13, 0
	l.ori	r31, r23, 0
	l.ori	r11, r3, 0
.LBB1_12:                               # %if.end19
                                        #   in Loop: Header=BB1_2 Depth=1
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfges	r7, r5
	l.bf	.LBB1_14
	l.nop	0                       # in delay slot
# BB#13:                                # %if.end19
                                        #   in Loop: Header=BB1_2 Depth=1
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB1_14:                               # %if.end19
                                        #   in Loop: Header=BB1_2 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -24(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.add	r16, r8, r15
	l.add	r26, r31, r25
	l.add	r6, r11, r5
	l.addi	r15, r0, -32768
	l.addi	r25, r0, -32768
	l.addi	r5, r0, -32768
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltsi	r6, -32768
	l.bf	.LBB1_16
	l.nop	0                       # in delay slot
# BB#15:                                # %if.end19
                                        #   in Loop: Header=BB1_2 Depth=1
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
.LBB1_16:                               # %if.end19
                                        #   in Loop: Header=BB1_2 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -32(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.andi	r17, r17, 8
	l.andi	r27, r27, 8
	l.andi	r7, r7, 8
	l.addi	r8, r0, 32767
	l.addi	r31, r0, 32767
	l.addi	r11, r0, 32767
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, 32767
	l.bf	.LBB1_18
	l.nop	0                       # in delay slot
# BB#17:                                # %if.end19
                                        #   in Loop: Header=BB1_2 Depth=1
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
.LBB1_18:                               # %if.end19
                                        #   in Loop: Header=BB1_2 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.or	r15, r15, r17
	l.or	r25, r25, r27
	l.or	r5, r5, r7
	l.andi	r13, r13, 1
	l.andi	r23, r23, 1
	l.andi	r3, r3, 1
	l.or	r13, r15, r13
	l.or	r23, r25, r23
	l.or	r3, r5, r3
	l.slli	r15, r13, 2
	l.slli	r25, r23, 2
	l.slli	r5, r3, 2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -40(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r15, r15, r16
	l.add	r25, r25, r26
	l.add	r5, r5, r6
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.lwz	r5, 0(r5)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -16(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r15, r15, r16
	l.add	r25, r25, r26
	l.add	r5, r5, r6
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltsi	r5, 0
	l.bf	.LBB1_20
	l.nop	0                       # in delay slot
# BB#19:                                # %if.end19
                                        #   in Loop: Header=BB1_2 Depth=1
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
.LBB1_20:                               # %if.end19
                                        #   in Loop: Header=BB1_2 Depth=1
	l.addi	r17, r0, 88
	l.addi	r27, r0, 88
	l.addi	r7, r0, 88
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtsi	r4, 88
	l.bf	.LBB1_22
	l.nop	0                       # in delay slot
# BB#21:                                # %if.end19
                                        #   in Loop: Header=BB1_2 Depth=1
	l.ori	r17, r14, 0
	l.ori	r27, r24, 0
	l.ori	r7, r4, 0
.LBB1_22:                               # %if.end19
                                        #   in Loop: Header=BB1_2 Depth=1
	l.movhi	r14, hi(stepsizeTable)
	l.movhi	r24, hi(stepsizeTable)
	l.movhi	r4, hi(stepsizeTable)
	l.ori	r14, r14, lo(stepsizeTable)
	l.ori	r24, r24, lo(stepsizeTable)
	l.ori	r4, r4, lo(stepsizeTable)
	l.slli	r16, r17, 2
	l.slli	r26, r27, 2
	l.slli	r6, r7, 2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB1_24
	l.nop	0                       # in delay slot
# BB#23:                                # %if.then54
                                        #   in Loop: Header=BB1_2 Depth=1
	l.slli	r13, r13, 4
	l.slli	r23, r23, 4
	l.slli	r3, r3, 4
	l.andi	r13, r13, 240
	l.andi	r23, r23, 240
	l.andi	r3, r3, 240
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-36(r2), r3
	l.j	.LBB1_25
	l.nop	0                       # in delay slot
.LBB1_24:                               # %if.else55
                                        #   in Loop: Header=BB1_2 Depth=1
	l.andi	r13, r13, 15
	l.andi	r23, r23, 15
	l.andi	r3, r3, 15
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -36(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.or	r13, r13, r15
	l.or	r23, r23, r25
	l.or	r3, r3, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -44(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	0(r5), r3
	l.addi	r15, r15, 1
	l.addi	r25, r25, 1
	l.addi	r5, r5, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-44(r2), r5
.LBB1_25:                               # %if.end60
                                        #   in Loop: Header=BB1_2 Depth=1
	l.add	r13, r16, r14
	l.add	r23, r26, r24
	l.add	r3, r6, r4
	l.addi	r15, r0, 1
	l.addi	r25, r0, 1
	l.addi	r5, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB1_27
	l.nop	0                       # in delay slot
# BB#26:                                # %if.end60
                                        #   in Loop: Header=BB1_2 Depth=1
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
.LBB1_27:                               # %if.end60
                                        #   in Loop: Header=BB1_2 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -20(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.addi	r16, r16, 2
	l.addi	r26, r26, 2
	l.addi	r6, r6, 2
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.andi	r13, r15, 1
	l.andi	r23, r25, 1
	l.andi	r3, r5, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -28(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.addi	r15, r15, -1
	l.addi	r25, r25, -1
	l.addi	r5, r5, -1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgtsi	r5, 1
	l.bf	.LBB1_2
	l.nop	0                       # in delay slot
# BB#28:                                # %for.end
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -48(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 0
	l.bf	.LBB1_30
	l.nop	0                       # in delay slot
# BB#29:                                # %if.then63
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -44(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -36(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
.LBB1_30:                               # %if.end66
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sh	0(r6), r11
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	2(r6), r7
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
	.size	adpcm_coder, .Lfunc_end1-adpcm_coder

	.hidden	adpcm_decoder
	.globl	adpcm_decoder
	.p2align	2
	.type	adpcm_decoder,@function
adpcm_decoder:                          # @adpcm_decoder
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
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-32(r2), r3
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lbs	r7, 2(r6)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-36(r2), r6
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lhs	r3, 0(r6)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-8(r2), r3
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltsi	r5, 1
	l.bf	.LBB2_17
	l.nop	0                       # in delay slot
# BB#1:                                 # %for.body.preheader
	l.movhi	r13, hi(stepsizeTable)
	l.movhi	r23, hi(stepsizeTable)
	l.movhi	r3, hi(stepsizeTable)
	l.ori	r13, r13, lo(stepsizeTable)
	l.ori	r23, r23, lo(stepsizeTable)
	l.ori	r3, r3, lo(stepsizeTable)
	l.slli	r16, r17, 2
	l.slli	r26, r27, 2
	l.slli	r6, r7, 2
	l.add	r13, r16, r13
	l.add	r23, r26, r23
	l.add	r3, r6, r3
	l.addi	r15, r15, 1
	l.addi	r25, r25, 1
	l.addi	r5, r5, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.movhi	r16, hi(indexTable)
	l.movhi	r26, hi(indexTable)
	l.movhi	r6, hi(indexTable)
	l.ori	r16, r16, lo(indexTable)
	l.ori	r26, r26, lo(indexTable)
	l.ori	r6, r6, lo(indexTable)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-28(r2), r6
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
                                        # implicit-def: %R8
                                        # implicit-def: %R31
                                        # implicit-def: %R11
.LBB2_2:                                # %for.body
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
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-16(r2), r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
	l.ori	r14, r16, 0
	l.ori	r24, r26, 0
	l.ori	r4, r6, 0
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 0
	l.ori	r15, r8, 0
	l.ori	r25, r31, 0
	l.ori	r5, r11, 0
	l.bf	.LBB2_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.else
                                        #   in Loop: Header=BB2_2 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -32(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.addi	r16, r15, 1
	l.addi	r26, r25, 1
	l.addi	r6, r5, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.lbs	r5, 0(r5)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.srli	r8, r15, 4
	l.srli	r31, r25, 4
	l.srli	r11, r5, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-32(r2), r6
.LBB2_4:                                # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-24(r2), r5
	l.slli	r16, r8, 30
	l.slli	r26, r31, 30
	l.slli	r6, r11, 30
	l.srai	r16, r16, 31
	l.srai	r26, r26, 31
	l.srai	r6, r6, 31
	l.srai	r17, r13, 1
	l.srai	r27, r23, 1
	l.srai	r7, r3, 1
	l.and	r16, r16, r17
	l.and	r26, r26, r27
	l.and	r6, r6, r7
	l.slli	r17, r8, 29
	l.slli	r27, r31, 29
	l.slli	r7, r11, 29
	l.srai	r17, r17, 31
	l.srai	r27, r27, 31
	l.srai	r7, r7, 31
	l.and	r17, r17, r13
	l.and	r27, r27, r23
	l.and	r7, r7, r3
	l.srai	r15, r13, 3
	l.srai	r25, r23, 3
	l.srai	r5, r3, 3
	l.add	r15, r17, r15
	l.add	r25, r27, r25
	l.add	r5, r7, r5
	l.add	r15, r15, r16
	l.add	r25, r25, r26
	l.add	r5, r5, r6
	l.srai	r13, r13, 2
	l.srai	r23, r23, 2
	l.srai	r3, r3, 2
	l.slli	r16, r8, 31
	l.slli	r26, r31, 31
	l.slli	r6, r11, 31
	l.srai	r16, r16, 31
	l.srai	r26, r26, 31
	l.srai	r6, r6, 31
	l.and	r13, r16, r13
	l.and	r23, r26, r23
	l.and	r3, r6, r3
	l.add	r17, r15, r13
	l.add	r27, r25, r23
	l.add	r7, r5, r3
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.andi	r15, r8, 8
	l.andi	r25, r31, 8
	l.andi	r5, r11, 8
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB2_6
	l.nop	0                       # in delay slot
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	l.sub	r17, r13, r17
	l.sub	r27, r23, r27
	l.sub	r7, r3, r7
.LBB2_6:                                # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.add	r17, r17, r15
	l.add	r27, r27, r25
	l.add	r7, r7, r5
	l.addi	r16, r0, -32768
	l.addi	r26, r0, -32768
	l.addi	r6, r0, -32768
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfltsi	r7, -32768
	l.bf	.LBB2_8
	l.nop	0                       # in delay slot
# BB#7:                                 # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	l.ori	r16, r17, 0
	l.ori	r26, r27, 0
	l.ori	r6, r7, 0
.LBB2_8:                                # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	l.addi	r15, r0, 32767
	l.addi	r25, r0, 32767
	l.addi	r5, r0, 32767
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-8(r2), r5
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtsi	r7, 32767
	l.bf	.LBB2_10
	l.nop	0                       # in delay slot
# BB#9:                                 # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-8(r2), r6
.LBB2_10:                               # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	l.andi	r15, r8, 15
	l.andi	r25, r31, 15
	l.andi	r5, r11, 15
	l.slli	r15, r15, 2
	l.slli	r25, r25, 2
	l.slli	r5, r5, 2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -28(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r15, r15, r16
	l.add	r25, r25, r26
	l.add	r5, r5, r6
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.lwz	r5, 0(r5)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -16(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r17, r15, r16
	l.add	r27, r25, r26
	l.add	r7, r5, r6
	l.addi	r8, r0, 1
	l.addi	r31, r0, 1
	l.addi	r11, r0, 1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB2_12
	l.nop	0                       # in delay slot
# BB#11:                                # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
.LBB2_12:                               # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfltsi	r7, 0
	l.bf	.LBB2_14
	l.nop	0                       # in delay slot
# BB#13:                                # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
.LBB2_14:                               # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	l.addi	r17, r0, 88
	l.addi	r27, r0, 88
	l.addi	r7, r0, 88
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtsi	r3, 88
	l.bf	.LBB2_16
	l.nop	0                       # in delay slot
# BB#15:                                # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	l.ori	r17, r13, 0
	l.ori	r27, r23, 0
	l.ori	r7, r3, 0
.LBB2_16:                               # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	l.movhi	r13, hi(stepsizeTable)
	l.movhi	r23, hi(stepsizeTable)
	l.movhi	r3, hi(stepsizeTable)
	l.ori	r13, r13, lo(stepsizeTable)
	l.ori	r23, r23, lo(stepsizeTable)
	l.ori	r3, r3, lo(stepsizeTable)
	l.slli	r15, r17, 2
	l.slli	r25, r27, 2
	l.slli	r5, r7, 2
	l.add	r13, r15, r13
	l.add	r23, r25, r23
	l.add	r3, r5, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -20(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sh	0(r4), r5
	l.addi	r14, r14, 2
	l.addi	r24, r24, 2
	l.addi	r4, r4, 2
	l.andi	r16, r8, 1
	l.andi	r26, r31, 1
	l.andi	r6, r11, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.addi	r15, r15, -1
	l.addi	r25, r25, -1
	l.addi	r5, r5, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -24(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgtsi	r5, 1
	l.bf	.LBB2_2
	l.nop	0                       # in delay slot
.LBB2_17:                               # %for.end
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -36(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sh	0(r3), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	2(r3), r7
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
	.size	adpcm_decoder, .Lfunc_end2-adpcm_decoder

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
	l.bf	.LBB3_3
	l.nop	0                       # in delay slot
.LBB3_1:                                # %entry
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 255
	l.bf	.LBB3_5
	l.nop	0                       # in delay slot
.LBB3_2:                                # %sw.default
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
	l.j	.LBB3_8
	l.nop	0                       # in delay slot
.LBB3_3:                                # %sw.bb
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
	l.bf	.LBB3_8
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
	l.j	.LBB3_8
	l.nop	0                       # in delay slot
.LBB3_5:                                # %sw.bb25
	l.addi	r14, r0, 2
	l.addi	r24, r0, 2
	l.addi	r4, r0, 2
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB3_7
	l.nop	0                       # in delay slot
# BB#6:                                 # %sw.bb25
	l.addi	r14, r0, 3
	l.addi	r24, r0, 3
	l.addi	r4, r0, 3
.LBB3_7:                                # %sw.bb25
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
.LBB3_8:                                # %do.body39
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
	l.bf	.LBB3_11
	l.nop	0                       # in delay slot
.LBB3_9:                                # %do.body39
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
	l.bf	.LBB3_13
	l.nop	0                       # in delay slot
.LBB3_10:                               # %sw.default55
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
	l.j	.LBB3_16
	l.nop	0                       # in delay slot
.LBB3_11:                               # %sw.bb62
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
	l.bf	.LBB3_16
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
	l.j	.LBB3_16
	l.nop	0                       # in delay slot
.LBB3_13:                               # %sw.bb79
	l.addi	r16, r0, 2
	l.addi	r26, r0, 2
	l.addi	r6, r0, 2
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB3_15
	l.nop	0                       # in delay slot
# BB#14:                                # %sw.bb79
	l.addi	r16, r0, 3
	l.addi	r26, r0, 3
	l.addi	r6, r0, 3
.LBB3_15:                               # %sw.bb79
	l.ori	r17, r15, 0
	l.ori	r27, r25, 0
	l.ori	r7, r5, 0
.LBB3_16:                               # %do.body98
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
	l.bf	.LBB3_42
	l.nop	0                       # in delay slot
.LBB3_17:                               # %do.body98
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
	l.movhi	r13, hi(.LJTI3_0)
	l.movhi	r23, hi(.LJTI3_0)
	l.movhi	r3, hi(.LJTI3_0)
	l.ori	r13, r13, lo(.LJTI3_0)
	l.ori	r23, r23, lo(.LJTI3_0)
	l.ori	r3, r3, lo(.LJTI3_0)
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
.LBB3_41:                               # %sw.bb159
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
.LBB3_42:                               # %do.body169
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
	l.bf	.LBB3_64
	l.nop	0                       # in delay slot
.LBB3_43:                               # %do.body169
	l.movhi	r13, hi(.LJTI3_1)
	l.movhi	r23, hi(.LJTI3_1)
	l.movhi	r3, hi(.LJTI3_1)
	l.ori	r13, r13, lo(.LJTI3_1)
	l.ori	r23, r23, lo(.LJTI3_1)
	l.ori	r3, r3, lo(.LJTI3_1)
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
.LBB3_62:                               # %sw.bb269
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.j	.LBB3_64
	l.nop	0                       # in delay slot
.LBB3_63:                               # %sw.bb270
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.addi	r16, r0, 255
	l.addi	r26, r0, 255
	l.addi	r6, r0, 255
	l.j	.LBB3_64
	l.nop	0                       # in delay slot
.LBB3_18:                               # %sw.bb102
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
	l.bf	.LBB3_20
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
	l.j	.LBB3_21
	l.nop	0                       # in delay slot
.LBB3_33:                               # %do.body148
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
	l.bf	.LBB3_35
	l.nop	0                       # in delay slot
# BB#34:                                # %do.body148
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
.LBB3_35:                               # %do.body148
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
	l.bf	.LBB3_37
	l.nop	0                       # in delay slot
# BB#36:                                # %do.body148
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-24(r2), r7
.LBB3_37:                               # %do.body148
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB3_39
	l.nop	0                       # in delay slot
# BB#38:                                # %do.body148
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
.LBB3_39:                               # %do.body148
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
.LBB3_40:                               # %sw.bb271
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
.LBB3_64:                               # %do.body279
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
.LBB3_20:                               # %if.else116
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
.LBB3_21:                               # %do.body119.preheader
	l.addi	r8, r13, 1
	l.addi	r31, r23, 1
	l.addi	r11, r3, 1
.LBB3_22:                               # %do.body119
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
	l.bf	.LBB3_24
	l.nop	0                       # in delay slot
# BB#23:                                # %do.body119
                                        #   in Loop: Header=BB3_22 Depth=1
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB3_24:                               # %do.body119
                                        #   in Loop: Header=BB3_22 Depth=1
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
	l.bf	.LBB3_26
	l.nop	0                       # in delay slot
# BB#25:                                # %do.body119
                                        #   in Loop: Header=BB3_22 Depth=1
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
.LBB3_26:                               # %do.body119
                                        #   in Loop: Header=BB3_22 Depth=1
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
	l.bf	.LBB3_28
	l.nop	0                       # in delay slot
# BB#27:                                # %do.body119
                                        #   in Loop: Header=BB3_22 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB3_28:                               # %do.body119
                                        #   in Loop: Header=BB3_22 Depth=1
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
	l.bf	.LBB3_22
	l.nop	0                       # in delay slot
# BB#29:                                # %do.body169.thread439
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB3_31
	l.nop	0                       # in delay slot
# BB#30:                                # %do.body169.thread439
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB3_31:                               # %do.body169.thread439
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
.LBB3_32:                               # %sw.bb170
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
	l.bf	.LBB3_52
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
	l.bf	.LBB3_46
	l.nop	0                       # in delay slot
# BB#45:                                # %do.body175
	l.addi	r16, r14, 4
	l.addi	r26, r24, 4
	l.addi	r6, r4, 4
.LBB3_46:                               # %do.body175
	l.andi	r13, r14, 7
	l.andi	r23, r24, 7
	l.andi	r3, r4, 7
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB3_48
	l.nop	0                       # in delay slot
# BB#47:                                # %do.body175
	l.ori	r14, r16, 0
	l.ori	r24, r26, 0
	l.ori	r4, r6, 0
.LBB3_48:                               # %do.body175
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
	l.bf	.LBB3_50
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
.LBB3_50:                               # %do.body175
	l.addi	r16, r0, 255
	l.addi	r26, r0, 255
	l.addi	r6, r0, 255
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtsi	r7, 254
	l.bf	.LBB3_64
	l.nop	0                       # in delay slot
# BB#51:                                # %do.body175
	l.ori	r16, r17, 0
	l.ori	r26, r27, 0
	l.ori	r6, r7, 0
	l.j	.LBB3_64
	l.nop	0                       # in delay slot
.LBB3_52:                               # %if.else205
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
	l.bf	.LBB3_64
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
	l.bf	.LBB3_55
	l.nop	0                       # in delay slot
# BB#54:                                # %if.then210
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB3_55:                               # %if.then210
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
	l.bf	.LBB3_57
	l.nop	0                       # in delay slot
# BB#56:                                # %if.then210
	l.addi	r15, r14, 4
	l.addi	r25, r24, 4
	l.addi	r5, r4, 4
.LBB3_57:                               # %if.then210
	l.andi	r13, r14, 7
	l.andi	r23, r24, 7
	l.andi	r3, r4, 7
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB3_59
	l.nop	0                       # in delay slot
# BB#58:                                # %if.then210
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
.LBB3_59:                               # %if.then210
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
	l.bf	.LBB3_61
	l.nop	0                       # in delay slot
# BB#60:                                # %if.then210
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
.LBB3_61:                               # %if.then210
	l.srli	r16, r13, 26
	l.srli	r26, r23, 26
	l.srli	r6, r3, 26
	l.j	.LBB3_64
	l.nop	0                       # in delay slot
.Lfunc_end3:
	.size	__divsf3, .Lfunc_end3-__divsf3
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI3_0:
	.long	.LBB3_18
	.long	.LBB3_63
	.long	.LBB3_62
	.long	.LBB3_41
	.long	.LBB3_62
	.long	.LBB3_40
	.long	.LBB3_62
	.long	.LBB3_41
	.long	.LBB3_63
	.long	.LBB3_63
	.long	.LBB3_40
	.long	.LBB3_41
	.long	.LBB3_42
	.long	.LBB3_42
	.long	.LBB3_42
	.long	.LBB3_33
.LJTI3_1:
	.long	.LBB3_32
	.long	.LBB3_62
	.long	.LBB3_63
	.long	.LBB3_40

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
	l.bf	.LBB4_2
	l.nop	0                       # in delay slot
.LBB4_1:                                # %if.then
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
.LBB4_2:                                # %if.else16
	l.srli	r14, r13, 31
	l.srli	r24, r23, 31
	l.srli	r4, r3, 31
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltui	r5, 158
	l.bf	.LBB4_4
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
	l.j	.LBB4_1
	l.nop	0                       # in delay slot
.LBB4_4:                                # %if.else31
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
	l.bf	.LBB4_6
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
.LBB4_6:                                # %if.else31
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB4_1
	l.nop	0                       # in delay slot
# BB#7:                                 # %if.else31
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sub	r8, r13, r8
	l.sub	r31, r23, r31
	l.sub	r11, r3, r11
	l.j	.LBB4_1
	l.nop	0                       # in delay slot
.Lfunc_end4:
	.size	__fixsfsi, .Lfunc_end4-__fixsfsi

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
	l.bf	.LBB5_23
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
	l.bf	.LBB5_5
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
	l.bf	.LBB5_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.then9
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB5_4:                                # %if.then9
	l.sll	r16, r16, r13
	l.sll	r26, r26, r23
	l.sll	r6, r6, r3
	l.j	.LBB5_23
	l.nop	0                       # in delay slot
.LBB5_5:                                # %if.else
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltui	r5, 154
	l.bf	.LBB5_9
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
	l.bf	.LBB5_8
	l.nop	0                       # in delay slot
# BB#7:                                 # %if.then21
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB5_8:                                # %if.then21
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
.LBB5_9:                                # %if.end31
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
	l.bf	.LBB5_11
	l.nop	0                       # in delay slot
# BB#10:                                # %if.end31
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB5_11:                               # %if.end31
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
	l.bf	.LBB5_13
	l.nop	0                       # in delay slot
# BB#12:                                # %if.end31
	l.addi	r17, r13, 4
	l.addi	r27, r23, 4
	l.addi	r7, r3, 4
.LBB5_13:                               # %if.end31
	l.andi	r16, r16, 7
	l.andi	r26, r26, 7
	l.andi	r6, r6, 7
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfeqi	r6, 0
	l.bf	.LBB5_15
	l.nop	0                       # in delay slot
# BB#14:                                # %if.end31
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
.LBB5_15:                               # %if.end31
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
	l.bf	.LBB5_19
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
	l.bf	.LBB5_18
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
.LBB5_18:                               # %if.then73
	l.ori	r13, r16, 0
	l.ori	r23, r26, 0
	l.ori	r3, r6, 0
.LBB5_19:                               # %if.end82
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
	l.bf	.LBB5_21
	l.nop	0                       # in delay slot
# BB#20:                                # %if.end82
	l.movhi	r13, 64
	l.movhi	r23, 64
	l.movhi	r3, 64
	l.or	r13, r16, r13
	l.or	r23, r26, r23
	l.or	r3, r6, r3
.LBB5_21:                               # %if.end82
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 255
	l.bf	.LBB5_23
	l.nop	0                       # in delay slot
# BB#22:                                # %if.end82
	l.ori	r16, r13, 0
	l.ori	r26, r23, 0
	l.ori	r6, r3, 0
.LBB5_23:                               # %do.body101
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
.Lfunc_end5:
	.size	__floatsisf, .Lfunc_end5-__floatsisf

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
.Lfunc_end6:
	.size	int_init, .Lfunc_end6-int_init

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
	l.bf	.LBB7_2
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
.LBB7_2:                                # %return
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
.Lfunc_end7:
	.size	int_add, .Lfunc_end7-int_add

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
	l.bf	.LBB8_2
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
.LBB8_2:                                # %return
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
.Lfunc_end8:
	.size	int_disable, .Lfunc_end8-int_disable

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
	l.bf	.LBB9_2
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
.LBB9_2:                                # %return
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
.Lfunc_end9:
	.size	int_enable, .Lfunc_end9-int_enable

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
.LBB10_1:                               # %while.body
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
	l.bf	.LBB10_4
	l.nop	0                       # in delay slot
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB10_1 Depth=1
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
	l.bf	.LBB10_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
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
.LBB10_4:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
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
	l.bf	.LBB10_1
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
.Lfunc_end10:
	.size	int_main, .Lfunc_end10-int_main

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
.Lfunc_end11:
	.size	int_clear_all_pending, .Lfunc_end11-int_clear_all_pending

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
	l.bf	.LBB12_3
	l.nop	0                       # in delay slot
# BB#1:                                 # %while.body.preheader
	l.ori	r16, r13, 0
	l.ori	r26, r23, 0
	l.ori	r6, r3, 0
.LBB12_2:                               # %while.body
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
	l.bf	.LBB12_2
	l.nop	0                       # in delay slot
.LBB12_3:                               # %while.end
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
.Lfunc_end12:
	.size	memcpy, .Lfunc_end12-memcpy

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
.LBB13_1:                               # %for.cond
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
	l.bf	.LBB13_1
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
.Lfunc_end13:
	.size	strlen, .Lfunc_end13-strlen

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
	l.bf	.LBB14_4
	l.nop	0                       # in delay slot
# BB#1:                                 # %while.body.lr.ph
	l.andi	r14, r14, 255
	l.andi	r24, r24, 255
	l.andi	r4, r4, 255
.LBB14_2:                               # %while.body
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
	l.bf	.LBB14_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB14_2 Depth=1
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
	l.bf	.LBB14_2
	l.nop	0                       # in delay slot
.LBB14_4:                               # %cleanup
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
.Lfunc_end14:
	.size	memchr, .Lfunc_end14-memchr

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
.Lfunc_end15:
	.size	rand, .Lfunc_end15-rand

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
.Lfunc_end16:
	.size	mtspr, .Lfunc_end16-mtspr

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
.Lfunc_end17:
	.size	mfspr, .Lfunc_end17-mfspr

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
.Lfunc_end18:
	.size	sim_putc, .Lfunc_end18-sim_putc

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
.Lfunc_end19:
	.size	report, .Lfunc_end19-report

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
.Lfunc_end20:
	.size	cpu_enable_user_interrupts, .Lfunc_end20-cpu_enable_user_interrupts

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
.Lfunc_end21:
	.size	cpu_enable_timer, .Lfunc_end21-cpu_enable_timer

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
.Lfunc_end22:
	.size	cpu_disable_timer, .Lfunc_end22-cpu_disable_timer

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
.Lfunc_end23:
	.size	cpu_timer_tick, .Lfunc_end23-cpu_timer_tick

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
.Lfunc_end24:
	.size	cpu_reset_timer_ticks, .Lfunc_end24-cpu_reset_timer_ticks

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
.Lfunc_end25:
	.size	cpu_get_timer_ticks, .Lfunc_end25-cpu_get_timer_ticks

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
.LBB26_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	l.j	.LBB26_1
	l.nop	0                       # in delay slot
.Lfunc_end26:
	.size	cpu_sleep_10ms, .Lfunc_end26-cpu_sleep_10ms

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
	l.bf	.LBB27_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %entry
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
.LBB27_2:                               # %entry
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
	l.bf	.LBB27_4
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
.LBB27_4:
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
.Lfunc_end27:
	.size	print_back_to_string, .Lfunc_end27-print_back_to_string

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
	l.movhi	r13, hi(.LJTI28_0)
	l.movhi	r23, hi(.LJTI28_0)
	l.movhi	r3, hi(.LJTI28_0)
	l.ori	r13, r13, lo(.LJTI28_0)
	l.ori	r23, r23, lo(.LJTI28_0)
	l.ori	r3, r3, lo(.LJTI28_0)
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
	l.j	.LBB28_1
	l.nop	0                       # in delay slot
.LBB28_229:                             # %do.end551
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_1:                               # %for.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_2 Depth 2
                                        #       Child Loop BB28_3 Depth 3
                                        #       Child Loop BB28_17 Depth 3
                                        #         Child Loop BB28_18 Depth 4
                                        #           Child Loop BB28_42 Depth 5
                                        #           Child Loop BB28_33 Depth 5
                                        #     Child Loop BB28_116 Depth 2
                                        #     Child Loop BB28_129 Depth 2
                                        #     Child Loop BB28_132 Depth 2
                                        #     Child Loop BB28_118 Depth 2
                                        #     Child Loop BB28_160 Depth 2
                                        #     Child Loop BB28_188 Depth 2
                                        #     Child Loop BB28_202 Depth 2
                                        #     Child Loop BB28_221 Depth 2
	l.ori	r16, r17, 0
	l.ori	r26, r27, 0
	l.ori	r6, r7, 0
	l.j	.LBB28_2
	l.nop	0                       # in delay slot
.LBB28_62:                              # %sw.bb125
                                        #   in Loop: Header=BB28_2 Depth=2
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
	l.bf	.LBB28_64
	l.nop	0                       # in delay slot
# BB#63:                                # %if.then128
                                        #   in Loop: Header=BB28_2 Depth=2
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
.LBB28_2:                               # %for.cond
                                        #   Parent Loop BB28_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB28_3 Depth 3
                                        #       Child Loop BB28_17 Depth 3
                                        #         Child Loop BB28_18 Depth 4
                                        #           Child Loop BB28_42 Depth 5
                                        #           Child Loop BB28_33 Depth 5
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
.LBB28_3:                               # %while.cond
                                        #   Parent Loop BB28_1 Depth=1
                                        #     Parent Loop BB28_2 Depth=2
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
	l.bf	.LBB28_5
	l.nop	0                       # in delay slot
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB28_3 Depth=3
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
	l.bf	.LBB28_3
	l.nop	0                       # in delay slot
.LBB28_5:                               # %while.end
                                        #   in Loop: Header=BB28_2 Depth=2
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
	l.bf	.LBB28_13
	l.nop	0                       # in delay slot
# BB#6:                                 # %if.then6
                                        #   in Loop: Header=BB28_2 Depth=2
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
	l.bf	.LBB28_8
	l.nop	0                       # in delay slot
# BB#7:                                 # %if.then6
                                        #   in Loop: Header=BB28_2 Depth=2
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB28_8:                               # %if.then6
                                        #   in Loop: Header=BB28_2 Depth=2
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
	l.bf	.LBB28_12
	l.nop	0                       # in delay slot
.LBB28_9:                               # %print_back_to_string.exit
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -76(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.j	.LBB28_10
	l.nop	0                       # in delay slot
.LBB28_12:                              # %if.end8
                                        #   in Loop: Header=BB28_2 Depth=2
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
.LBB28_13:                              # %if.end9
                                        #   in Loop: Header=BB28_2 Depth=2
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
	l.bf	.LBB28_15
	l.nop	0                       # in delay slot
# BB#14:                                # %if.end9
                                        #   in Loop: Header=BB28_2 Depth=2
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB28_15:                              # %if.end9
                                        #   in Loop: Header=BB28_2 Depth=2
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
	l.bf	.LBB28_11
	l.nop	0                       # in delay slot
# BB#16:                                # %if.end15
                                        #   in Loop: Header=BB28_2 Depth=2
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
	l.j	.LBB28_17
	l.nop	0                       # in delay slot
.LBB28_25:                              # %rflag
                                        #   in Loop: Header=BB28_17 Depth=3
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
.LBB28_17:                              # %rflag
                                        #   Parent Loop BB28_1 Depth=1
                                        #     Parent Loop BB28_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB28_18 Depth 4
                                        #           Child Loop BB28_42 Depth 5
                                        #           Child Loop BB28_33 Depth 5
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
	l.j	.LBB28_18
	l.nop	0                       # in delay slot
.LBB28_39:                              # %while.end50
                                        #   in Loop: Header=BB28_18 Depth=4
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
.LBB28_18:                              # %reswitch
                                        #   Parent Loop BB28_1 Depth=1
                                        #     Parent Loop BB28_2 Depth=2
                                        #       Parent Loop BB28_17 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB28_42 Depth 5
                                        #           Child Loop BB28_33 Depth 5
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
	l.bf	.LBB28_144
	l.nop	0                       # in delay slot
.LBB28_19:                              # %reswitch
                                        #   in Loop: Header=BB28_18 Depth=4
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
.LBB28_41:                              # %do.body.preheader
                                        #   in Loop: Header=BB28_18 Depth=4
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -60(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB28_42:                              # %do.body
                                        #   Parent Loop BB28_1 Depth=1
                                        #     Parent Loop BB28_2 Depth=2
                                        #       Parent Loop BB28_17 Depth=3
                                        #         Parent Loop BB28_18 Depth=4
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
	l.bf	.LBB28_42
	l.nop	0                       # in delay slot
	l.j	.LBB28_18
	l.nop	0                       # in delay slot
.LBB28_30:                              # %sw.bb31
                                        #   in Loop: Header=BB28_18 Depth=4
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
	l.bf	.LBB28_34
	l.nop	0                       # in delay slot
# BB#31:                                # %while.cond41.preheader
                                        #   in Loop: Header=BB28_18 Depth=4
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
	l.bf	.LBB28_37
	l.nop	0                       # in delay slot
# BB#32:                                # %while.body45.preheader
                                        #   in Loop: Header=BB28_18 Depth=4
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
.LBB28_33:                              # %while.body45
                                        #   Parent Loop BB28_1 Depth=1
                                        #     Parent Loop BB28_2 Depth=2
                                        #       Parent Loop BB28_17 Depth=3
                                        #         Parent Loop BB28_18 Depth=4
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
	l.bf	.LBB28_33
	l.nop	0                       # in delay slot
.LBB28_37:                              # %while.end50
                                        #   in Loop: Header=BB28_18 Depth=4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, -1
	l.bf	.LBB28_39
	l.nop	0                       # in delay slot
# BB#38:                                # %while.end50
                                        #   in Loop: Header=BB28_18 Depth=4
	l.addi	r16, r0, -1
	l.addi	r26, r0, -1
	l.addi	r6, r0, -1
	l.j	.LBB28_39
	l.nop	0                       # in delay slot
.LBB28_20:                              # %sw.bb
                                        #   in Loop: Header=BB28_17 Depth=3
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
	l.bf	.LBB28_17
	l.nop	0                       # in delay slot
# BB#21:                                # %if.then20
                                        #   in Loop: Header=BB28_17 Depth=3
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
	l.j	.LBB28_17
	l.nop	0                       # in delay slot
.LBB28_22:                              # %sw.bb22
                                        #   in Loop: Header=BB28_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 1
	l.ori	r23, r23, 1
	l.ori	r3, r3, 1
	l.j	.LBB28_23
	l.nop	0                       # in delay slot
.LBB28_26:                              # %sw.bb23
                                        #   in Loop: Header=BB28_17 Depth=3
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
	l.bf	.LBB28_17
	l.nop	0                       # in delay slot
# BB#27:                                # %if.end27
                                        #   in Loop: Header=BB28_17 Depth=3
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
.LBB28_28:                              # %sw.bb28
                                        #   in Loop: Header=BB28_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 4
	l.ori	r23, r23, 4
	l.ori	r3, r3, 4
	l.j	.LBB28_23
	l.nop	0                       # in delay slot
.LBB28_29:                              # %sw.bb30
                                        #   in Loop: Header=BB28_17 Depth=3
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
	l.j	.LBB28_24
	l.nop	0                       # in delay slot
.LBB28_40:                              # %sw.bb57
                                        #   in Loop: Header=BB28_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 128
	l.ori	r23, r23, 128
	l.ori	r3, r3, 128
	l.j	.LBB28_23
	l.nop	0                       # in delay slot
.LBB28_43:                              # %sw.bb68
                                        #   in Loop: Header=BB28_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 64
	l.ori	r23, r23, 64
	l.ori	r3, r3, 64
	l.j	.LBB28_23
	l.nop	0                       # in delay slot
.LBB28_44:                              # %sw.bb70
                                        #   in Loop: Header=BB28_17 Depth=3
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
	l.bf	.LBB28_46
	l.nop	0                       # in delay slot
# BB#45:                                # %if.then74
                                        #   in Loop: Header=BB28_17 Depth=3
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
	l.j	.LBB28_25
	l.nop	0                       # in delay slot
.LBB28_47:                              # %sw.bb79
                                        #   in Loop: Header=BB28_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 32
	l.ori	r23, r23, 32
	l.ori	r3, r3, 32
	l.j	.LBB28_23
	l.nop	0                       # in delay slot
.LBB28_143:                             # %sw.bb374
                                        #   in Loop: Header=BB28_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 512
	l.ori	r23, r23, 512
	l.ori	r3, r3, 512
.LBB28_23:                              # %rflag
                                        #   in Loop: Header=BB28_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-88(r2), r3
.LBB28_24:                              # %rflag
                                        #   in Loop: Header=BB28_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.j	.LBB28_25
	l.nop	0                       # in delay slot
.LBB28_46:                              # %if.else
                                        #   in Loop: Header=BB28_17 Depth=3
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
	l.j	.LBB28_25
	l.nop	0                       # in delay slot
.LBB28_34:                              # %if.then36
                                        #   in Loop: Header=BB28_17 Depth=3
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
	l.bf	.LBB28_36
	l.nop	0                       # in delay slot
# BB#35:                                # %if.then36
                                        #   in Loop: Header=BB28_17 Depth=3
	l.addi	r16, r0, -1
	l.addi	r26, r0, -1
	l.addi	r6, r0, -1
.LBB28_36:                              # %if.then36
                                        #   in Loop: Header=BB28_17 Depth=3
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -68(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.j	.LBB28_17
	l.nop	0                       # in delay slot
.LBB28_64:                              # %if.else131
                                        #   in Loop: Header=BB28_2 Depth=2
	l.andi	r13, r14, 16
	l.andi	r23, r24, 16
	l.andi	r3, r4, 16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB28_66
	l.nop	0                       # in delay slot
.LBB28_65:                              # %if.then134
                                        #   in Loop: Header=BB28_2 Depth=2
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
	l.j	.LBB28_2
	l.nop	0                       # in delay slot
.LBB28_66:                              # %if.else136
                                        #   in Loop: Header=BB28_2 Depth=2
	l.andi	r13, r14, 64
	l.andi	r23, r24, 64
	l.andi	r3, r4, 64
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB28_65
	l.nop	0                       # in delay slot
# BB#67:                                # %if.then139
                                        #   in Loop: Header=BB28_2 Depth=2
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
	l.j	.LBB28_2
	l.nop	0                       # in delay slot
.LBB28_61:                              # %sw.bb123
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.movhi	r13, hi(.L.str)
	l.movhi	r23, hi(.L.str)
	l.movhi	r3, hi(.L.str)
	l.ori	r13, r13, lo(.L.str)
	l.ori	r23, r23, lo(.L.str)
	l.ori	r3, r3, lo(.L.str)
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
	l.j	.LBB28_146
	l.nop	0                       # in delay slot
.LBB28_144:                             # %if.end380
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_145
	l.nop	0                       # in delay slot
.LBB28_49:                              # %sw.bb84
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_50:                              # %sw.bb86
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_52
	l.nop	0                       # in delay slot
# BB#51:                                # %cond.true88
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_57
	l.nop	0                       # in delay slot
.LBB28_52:                              # %cond.false90
                                        #   in Loop: Header=BB28_1 Depth=1
	l.andi	r13, r15, 16
	l.andi	r23, r25, 16
	l.andi	r3, r5, 16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB28_54
	l.nop	0                       # in delay slot
# BB#53:                                # %cond.true93
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_56
	l.nop	0                       # in delay slot
.LBB28_68:                              # %sw.bb153
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_69:                              # %sw.bb155
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_71
	l.nop	0                       # in delay slot
# BB#70:                                # %cond.true158
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_107
	l.nop	0                       # in delay slot
.LBB28_86:                              # %sw.bb217
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_87:                              # %sw.bb219
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_89
	l.nop	0                       # in delay slot
# BB#88:                                # %cond.true222
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_107
	l.nop	0                       # in delay slot
.LBB28_94:                              # %hex.loopexit
                                        #   in Loop: Header=BB28_1 Depth=1
	l.movhi	r13, hi(.L.str.3)
	l.movhi	r23, hi(.L.str.3)
	l.movhi	r3, hi(.L.str.3)
	l.ori	r14, r13, lo(.L.str.3)
	l.ori	r24, r23, lo(.L.str.3)
	l.ori	r4, r3, lo(.L.str.3)
.LBB28_95:                              # %hex
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_97
	l.nop	0                       # in delay slot
# BB#96:                                # %cond.true256
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_102
	l.nop	0                       # in delay slot
.LBB28_48:                              # %sw.bb81
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_145:                             # %if.else386
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_146:                             # %if.else386
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_147
	l.nop	0                       # in delay slot
.LBB28_76:                              # %sw.bb188
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_107
	l.nop	0                       # in delay slot
.LBB28_77:                              # %sw.bb192
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_79
	l.nop	0                       # in delay slot
# BB#78:                                # %sw.bb192
                                        #   in Loop: Header=BB28_1 Depth=1
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
.LBB28_79:                              # %sw.bb192
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_84
	l.nop	0                       # in delay slot
# BB#80:                                # %if.then200
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_85
	l.nop	0                       # in delay slot
# BB#81:                                # %if.then204
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_83
	l.nop	0                       # in delay slot
# BB#82:                                # %if.then204
                                        #   in Loop: Header=BB28_1 Depth=1
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
.LBB28_83:                              # %if.then204
                                        #   in Loop: Header=BB28_1 Depth=1
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.j	.LBB28_85
	l.nop	0                       # in delay slot
.LBB28_71:                              # %cond.false160
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_73
	l.nop	0                       # in delay slot
# BB#72:                                # %cond.true163
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_75
	l.nop	0                       # in delay slot
.LBB28_89:                              # %cond.false224
                                        #   in Loop: Header=BB28_1 Depth=1
	l.andi	r13, r16, 16
	l.andi	r23, r26, 16
	l.andi	r3, r6, 16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB28_91
	l.nop	0                       # in delay slot
# BB#90:                                # %cond.true227
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_93
	l.nop	0                       # in delay slot
.LBB28_97:                              # %cond.false258
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_99
	l.nop	0                       # in delay slot
# BB#98:                                # %cond.true261
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_101
	l.nop	0                       # in delay slot
.LBB28_54:                              # %cond.false95
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_56
	l.nop	0                       # in delay slot
# BB#55:                                # %cond.true98
                                        #   in Loop: Header=BB28_1 Depth=1
	l.slli	r13, r8, 16
	l.slli	r23, r31, 16
	l.slli	r3, r11, 16
	l.srai	r8, r13, 16
	l.srai	r31, r23, 16
	l.srai	r11, r3, 16
.LBB28_56:                              # %cond.end113
                                        #   in Loop: Header=BB28_1 Depth=1
	l.srai	r16, r8, 31
	l.srai	r26, r31, 31
	l.srai	r6, r11, 31
.LBB28_57:                              # %cond.end116
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_108
	l.nop	0                       # in delay slot
# BB#58:                                # %if.then120
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_60
	l.nop	0                       # in delay slot
# BB#59:                                # %if.then120
                                        #   in Loop: Header=BB28_1 Depth=1
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
.LBB28_60:                              # %if.then120
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_108
	l.nop	0                       # in delay slot
.LBB28_73:                              # %cond.false165
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_75
	l.nop	0                       # in delay slot
# BB#74:                                # %cond.false165
                                        #   in Loop: Header=BB28_1 Depth=1
	l.andi	r8, r8, 65535
	l.andi	r31, r31, 65535
	l.andi	r11, r11, 65535
.LBB28_75:                              # %cond.end183
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_107
	l.nop	0                       # in delay slot
.LBB28_91:                              # %cond.false229
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_93
	l.nop	0                       # in delay slot
# BB#92:                                # %cond.false229
                                        #   in Loop: Header=BB28_1 Depth=1
	l.andi	r8, r8, 65535
	l.andi	r31, r31, 65535
	l.andi	r11, r11, 65535
.LBB28_93:                              # %cond.false229
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_107
	l.nop	0                       # in delay slot
.LBB28_99:                              # %cond.false263
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_101
	l.nop	0                       # in delay slot
# BB#100:                               # %cond.false263
                                        #   in Loop: Header=BB28_1 Depth=1
	l.andi	r8, r8, 65535
	l.andi	r31, r31, 65535
	l.andi	r11, r11, 65535
.LBB28_101:                             # %cond.end281
                                        #   in Loop: Header=BB28_1 Depth=1
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
.LBB28_102:                             # %cond.end284
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_104
	l.nop	0                       # in delay slot
# BB#103:                               # %cond.end284
                                        #   in Loop: Header=BB28_1 Depth=1
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
.LBB28_104:                             # %cond.end284
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_106
	l.nop	0                       # in delay slot
# BB#105:                               # %cond.end284
                                        #   in Loop: Header=BB28_1 Depth=1
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
.LBB28_106:                             # %cond.end284
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_107:                             # %nosign
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_108:                             # %number
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_110
	l.nop	0                       # in delay slot
# BB#109:                               # %number
                                        #   in Loop: Header=BB28_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-88(r2), r5
.LBB28_110:                             # %number
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_112
	l.nop	0                       # in delay slot
# BB#111:                               # %number
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_141
	l.nop	0                       # in delay slot
.LBB28_112:                             # %if.then305
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_117
	l.nop	0                       # in delay slot
.LBB28_113:                             # %if.then305
                                        #   in Loop: Header=BB28_1 Depth=1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 1
	l.bf	.LBB28_122
	l.nop	0                       # in delay slot
.LBB28_114:                             # %if.then305
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_142
	l.nop	0                       # in delay slot
.LBB28_115:                             # %do.body360.preheader
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_116:                             # %do.body360
                                        #   Parent Loop BB28_1 Depth=1
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
	l.bf	.LBB28_116
	l.nop	0                       # in delay slot
	l.j	.LBB28_141
	l.nop	0                       # in delay slot
.LBB28_117:                             # %do.body307.preheader
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_118:                             # %do.body307
                                        #   Parent Loop BB28_1 Depth=1
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
	l.bf	.LBB28_118
	l.nop	0                       # in delay slot
# BB#119:                               # %do.end314
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_141
	l.nop	0                       # in delay slot
# BB#120:                               # %do.end314
                                        #   in Loop: Header=BB28_1 Depth=1
	l.xori	r14, r14, 48
	l.xori	r24, r24, 48
	l.xori	r4, r4, 48
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB28_141
	l.nop	0                       # in delay slot
# BB#121:                               # %if.then321
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_141
	l.nop	0                       # in delay slot
.LBB28_122:                             # %sw.bb324
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_130
	l.nop	0                       # in delay slot
# BB#123:                               # %while.cond343.preheader
                                        #   in Loop: Header=BB28_1 Depth=1
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfltui	r11, 10
	l.bf	.LBB28_125
	l.nop	0                       # in delay slot
# BB#124:                               # %while.cond343.preheader
                                        #   in Loop: Header=BB28_1 Depth=1
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB28_125:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_127
	l.nop	0                       # in delay slot
# BB#126:                               # %while.cond343.preheader
                                        #   in Loop: Header=BB28_1 Depth=1
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB28_127:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_140
	l.nop	0                       # in delay slot
# BB#128:                               # %while.body346.preheader
                                        #   in Loop: Header=BB28_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -144(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
.LBB28_129:                             # %while.body346
                                        #   Parent Loop BB28_1 Depth=1
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
	l.bf	.LBB28_135
	l.nop	0                       # in delay slot
# BB#134:                               # %while.body346
                                        #   in Loop: Header=BB28_129 Depth=2
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB28_135:                             # %while.body346
                                        #   in Loop: Header=BB28_129 Depth=2
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
	l.bf	.LBB28_137
	l.nop	0                       # in delay slot
# BB#136:                               # %while.body346
                                        #   in Loop: Header=BB28_129 Depth=2
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB28_137:                             # %while.body346
                                        #   in Loop: Header=BB28_129 Depth=2
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
	l.bf	.LBB28_139
	l.nop	0                       # in delay slot
# BB#138:                               # %while.body346
                                        #   in Loop: Header=BB28_129 Depth=2
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
.LBB28_139:                             # %while.body346
                                        #   in Loop: Header=BB28_129 Depth=2
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
	l.bf	.LBB28_129
	l.nop	0                       # in delay slot
.LBB28_140:                             # %while.end354
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_141
	l.nop	0                       # in delay slot
.LBB28_130:                             # %if.then327
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_133
	l.nop	0                       # in delay slot
# BB#131:                               # %while.body332.preheader
                                        #   in Loop: Header=BB28_1 Depth=1
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -144(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB28_132:                             # %while.body332
                                        #   Parent Loop BB28_1 Depth=1
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
	l.bf	.LBB28_132
	l.nop	0                       # in delay slot
.LBB28_133:                             # %while.end338
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_141:                             # %if.end368
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_142:                             # %sw.epilog383
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_147
	l.nop	0                       # in delay slot
# BB#230:                               # %if.then385
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_150
	l.nop	0                       # in delay slot
.LBB28_84:                              # %if.else214
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_85:                              # %if.end216
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_147:                             # %if.else386
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_149
	l.nop	0                       # in delay slot
# BB#148:                               # %if.else386
                                        #   in Loop: Header=BB28_1 Depth=1
	l.addi	r8, r13, 2
	l.addi	r31, r23, 2
	l.addi	r11, r3, 2
.LBB28_149:                             # %if.else386
                                        #   in Loop: Header=BB28_1 Depth=1
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -68(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
.LBB28_150:                             # %if.end392
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_152
	l.nop	0                       # in delay slot
# BB#151:                               # %if.end392
                                        #   in Loop: Header=BB28_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-116(r2), r11
.LBB28_152:                             # %if.end392
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_167
	l.nop	0                       # in delay slot
# BB#153:                               # %if.then402
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_167
	l.nop	0                       # in delay slot
# BB#154:                               # %while.cond412.preheader
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_156
	l.nop	0                       # in delay slot
# BB#155:                               # %while.cond412.preheader.while.end421_crit_edge
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_162
	l.nop	0                       # in delay slot
.LBB28_156:                             # %while.body415.lr.ph
                                        #   in Loop: Header=BB28_1 Depth=1
	l.addi	r15, r0, 16
	l.addi	r25, r0, 16
	l.addi	r5, r0, 16
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfgtui	r11, 16
	l.bf	.LBB28_158
	l.nop	0                       # in delay slot
# BB#157:                               # %while.body415.lr.ph
                                        #   in Loop: Header=BB28_1 Depth=1
	l.ori	r15, r8, 0
	l.ori	r25, r31, 0
	l.ori	r5, r11, 0
.LBB28_158:                             # %while.body415.lr.ph
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_231
	l.nop	0                       # in delay slot
# BB#159:                               # %while.body415.preheader
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_160:                             # %while.body415
                                        #   Parent Loop BB28_1 Depth=1
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
	l.bf	.LBB28_160
	l.nop	0                       # in delay slot
# BB#161:                               # %while.end421.loopexit
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_162:                             # %while.end421
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_164
	l.nop	0                       # in delay slot
# BB#163:                               # %while.end421
                                        #   in Loop: Header=BB28_1 Depth=1
	l.ori	r15, r8, 0
	l.ori	r25, r31, 0
	l.ori	r5, r11, 0
.LBB28_164:                             # %while.end421
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_166
	l.nop	0                       # in delay slot
# BB#165:                               # %print_back_to_string.exit819
	l.j	.LBB28_9
	l.nop	0                       # in delay slot
.LBB28_166:                             # %do.end428
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_167:                             # %if.end432
                                        #   in Loop: Header=BB28_1 Depth=1
	l.andi	r13, r14, 255
	l.andi	r23, r24, 255
	l.andi	r3, r4, 255
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB28_173
	l.nop	0                       # in delay slot
# BB#168:                               # %if.then434
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_170
	l.nop	0                       # in delay slot
# BB#169:                               # %if.then434
                                        #   in Loop: Header=BB28_1 Depth=1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB28_170:                             # %if.then434
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_172
	l.nop	0                       # in delay slot
# BB#171:                               # %print_back_to_string.exit810
	l.j	.LBB28_9
	l.nop	0                       # in delay slot
.LBB28_172:                             # %if.end438
                                        #   in Loop: Header=BB28_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.addi	r16, r16, 1
	l.addi	r26, r26, 1
	l.addi	r6, r6, 1
	l.j	.LBB28_179
	l.nop	0                       # in delay slot
.LBB28_173:                             # %if.else440
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_180
	l.nop	0                       # in delay slot
# BB#174:                               # %if.then443
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_176
	l.nop	0                       # in delay slot
# BB#175:                               # %if.then443
                                        #   in Loop: Header=BB28_1 Depth=1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB28_176:                             # %if.then443
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_178
	l.nop	0                       # in delay slot
# BB#177:                               # %print_back_to_string.exit801
	l.j	.LBB28_9
	l.nop	0                       # in delay slot
.LBB28_178:                             # %if.end451
                                        #   in Loop: Header=BB28_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.addi	r16, r16, 2
	l.addi	r26, r26, 2
	l.addi	r6, r6, 2
.LBB28_179:                             # %if.end454
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_180:                             # %if.end454
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_195
	l.nop	0                       # in delay slot
# BB#181:                               # %if.then458
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_195
	l.nop	0                       # in delay slot
# BB#182:                               # %while.cond468.preheader
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_184
	l.nop	0                       # in delay slot
# BB#183:                               # %while.cond468.preheader.while.end477_crit_edge
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_190
	l.nop	0                       # in delay slot
.LBB28_184:                             # %while.body471.lr.ph
                                        #   in Loop: Header=BB28_1 Depth=1
	l.addi	r13, r0, 16
	l.addi	r23, r0, 16
	l.addi	r3, r0, 16
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtui	r7, 16
	l.bf	.LBB28_186
	l.nop	0                       # in delay slot
# BB#185:                               # %while.body471.lr.ph
                                        #   in Loop: Header=BB28_1 Depth=1
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
.LBB28_186:                             # %while.body471.lr.ph
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_232
	l.nop	0                       # in delay slot
# BB#187:                               # %while.body471.preheader
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_188:                             # %while.body471
                                        #   Parent Loop BB28_1 Depth=1
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
	l.bf	.LBB28_188
	l.nop	0                       # in delay slot
# BB#189:                               # %while.end477.loopexit
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_190:                             # %while.end477
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_192
	l.nop	0                       # in delay slot
# BB#191:                               # %while.end477
                                        #   in Loop: Header=BB28_1 Depth=1
	l.ori	r14, r17, 0
	l.ori	r24, r27, 0
	l.ori	r4, r7, 0
.LBB28_192:                             # %while.end477
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_194
	l.nop	0                       # in delay slot
# BB#193:                               # %print_back_to_string.exit783
	l.j	.LBB28_9
	l.nop	0                       # in delay slot
.LBB28_194:                             # %do.end484
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_195:                             # %if.end488
                                        #   in Loop: Header=BB28_1 Depth=1
	l.sub	r15, r17, r8
	l.sub	r25, r27, r31
	l.sub	r5, r7, r11
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltsi	r5, 1
	l.bf	.LBB28_209
	l.nop	0                       # in delay slot
# BB#196:                               # %while.cond498.preheader
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_198
	l.nop	0                       # in delay slot
# BB#197:                               # %while.cond498.preheader.while.end507_crit_edge
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_204
	l.nop	0                       # in delay slot
.LBB28_198:                             # %while.body501.lr.ph
                                        #   in Loop: Header=BB28_1 Depth=1
	l.addi	r13, r0, 16
	l.addi	r23, r0, 16
	l.addi	r3, r0, 16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtui	r4, 16
	l.bf	.LBB28_200
	l.nop	0                       # in delay slot
# BB#199:                               # %while.body501.lr.ph
                                        #   in Loop: Header=BB28_1 Depth=1
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
.LBB28_200:                             # %while.body501.lr.ph
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_233
	l.nop	0                       # in delay slot
# BB#201:                               # %while.body501.preheader
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_202:                             # %while.body501
                                        #   Parent Loop BB28_1 Depth=1
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
	l.bf	.LBB28_202
	l.nop	0                       # in delay slot
# BB#203:                               # %while.end507.loopexit
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_204:                             # %while.end507
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_206
	l.nop	0                       # in delay slot
# BB#205:                               # %while.end507
                                        #   in Loop: Header=BB28_1 Depth=1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB28_206:                             # %while.end507
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_208
	l.nop	0                       # in delay slot
# BB#207:                               # %print_back_to_string.exit765
	l.j	.LBB28_9
	l.nop	0                       # in delay slot
.LBB28_208:                             # %do.end514
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_209:                             # %if.end517
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_211
	l.nop	0                       # in delay slot
# BB#210:                               # %if.end517
                                        #   in Loop: Header=BB28_1 Depth=1
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
.LBB28_211:                             # %if.end517
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_213
	l.nop	0                       # in delay slot
# BB#212:                               # %print_back_to_string.exit756
	l.j	.LBB28_9
	l.nop	0                       # in delay slot
.LBB28_213:                             # %if.end521
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_1
	l.nop	0                       # in delay slot
# BB#214:                               # %if.then525
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_1
	l.nop	0                       # in delay slot
# BB#215:                               # %while.cond535.preheader
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_217
	l.nop	0                       # in delay slot
# BB#216:                               # %while.cond535.preheader.while.end544_crit_edge
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.j	.LBB28_225
	l.nop	0                       # in delay slot
.LBB28_217:                             # %while.body538.lr.ph
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_219
	l.nop	0                       # in delay slot
# BB#218:                               # %while.body538.lr.ph
                                        #   in Loop: Header=BB28_1 Depth=1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB28_219:                             # %while.body538.lr.ph
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_222
	l.nop	0                       # in delay slot
# BB#220:                               # %while.body538.preheader
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_221:                             # %while.body538
                                        #   Parent Loop BB28_1 Depth=1
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
	l.bf	.LBB28_221
	l.nop	0                       # in delay slot
# BB#224:                               # %while.end544.loopexit
                                        #   in Loop: Header=BB28_1 Depth=1
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
.LBB28_225:                             # %while.end544
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_227
	l.nop	0                       # in delay slot
# BB#226:                               # %while.end544
                                        #   in Loop: Header=BB28_1 Depth=1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB28_227:                             # %while.end544
                                        #   in Loop: Header=BB28_1 Depth=1
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
	l.bf	.LBB28_229
	l.nop	0                       # in delay slot
# BB#228:                               # %print_back_to_string.exit738
	l.j	.LBB28_9
	l.nop	0                       # in delay slot
.LBB28_233:                             # %while.body501.us
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
	l.j	.LBB28_223
	l.nop	0                       # in delay slot
.LBB28_232:                             # %while.body471.us
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
	l.j	.LBB28_223
	l.nop	0                       # in delay slot
.LBB28_231:                             # %while.body415.us
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
	l.j	.LBB28_10
	l.nop	0                       # in delay slot
.LBB28_222:                             # %while.body538.us
	l.movhi	r13, hi(vfnprintf.blanks)
	l.movhi	r23, hi(vfnprintf.blanks)
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
.LBB28_223:                             # %error
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
.LBB28_10:                              # %error
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
.LBB28_11:                              # %error
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
.Lfunc_end28:
	.size	vfnprintf, .Lfunc_end28-vfnprintf
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI28_0:
	.long	.LBB28_11
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_20
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_22
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_26
	.long	.LBB28_29
	.long	.LBB28_144
	.long	.LBB28_28
	.long	.LBB28_30
	.long	.LBB28_144
	.long	.LBB28_40
	.long	.LBB28_41
	.long	.LBB28_41
	.long	.LBB28_41
	.long	.LBB28_41
	.long	.LBB28_41
	.long	.LBB28_41
	.long	.LBB28_41
	.long	.LBB28_41
	.long	.LBB28_41
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_49
	.long	.LBB28_61
	.long	.LBB28_144
	.long	.LBB28_61
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_68
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_86
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_94
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_48
	.long	.LBB28_50
	.long	.LBB28_61
	.long	.LBB28_61
	.long	.LBB28_61
	.long	.LBB28_43
	.long	.LBB28_50
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_44
	.long	.LBB28_144
	.long	.LBB28_62
	.long	.LBB28_69
	.long	.LBB28_76
	.long	.LBB28_47
	.long	.LBB28_144
	.long	.LBB28_77
	.long	.LBB28_144
	.long	.LBB28_87
	.long	.LBB28_144
	.long	.LBB28_144
	.long	.LBB28_95
	.long	.LBB28_144
	.long	.LBB28_143

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
.Lfunc_end29:
	.size	sprintf, .Lfunc_end29-sprintf

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
	l.addi	r14, r0, 2048
	l.addi	r24, r0, 2048
	l.addi	r4, r0, 2048
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
	l.bf	.LBB30_5
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
	l.bf	.LBB30_4
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
.LBB30_3:                               # %while.body
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
	l.bf	.LBB30_3
	l.nop	0                       # in delay slot
.LBB30_4:                               # %while.end
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -24(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
.LBB30_5:                               # %cleanup
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
.Lfunc_end30:
	.size	printf_to_sim, .Lfunc_end30-printf_to_sim

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
	l.movhi	r13, hi(.L.str.5)
	l.movhi	r23, hi(.L.str.5)
	l.movhi	r3, hi(.L.str.5)
	l.ori	r13, r13, lo(.L.str.5)
	l.ori	r23, r23, lo(.L.str.5)
	l.ori	r3, r3, lo(.L.str.5)
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
.Lfunc_end31:
	.size	puts_to_sim, .Lfunc_end31-puts_to_sim

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
	l.addi	r14, r0, 2048
	l.addi	r24, r0, 2048
	l.addi	r4, r0, 2048
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
	l.bf	.LBB32_5
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
	l.bf	.LBB32_4
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
.LBB32_3:                               # %while.body
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
	l.bf	.LBB32_3
	l.nop	0                       # in delay slot
.LBB32_4:                               # %while.end
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -24(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
.LBB32_5:                               # %cleanup
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
	.size	printf_to_uart, .Lfunc_end32-printf_to_uart

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
.Lfunc_end33:
	.size	putchar_to_uart, .Lfunc_end33-putchar_to_uart

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
	l.movhi	r13, hi(.L.str.5)
	l.movhi	r23, hi(.L.str.5)
	l.movhi	r3, hi(.L.str.5)
	l.ori	r13, r13, lo(.L.str.5)
	l.ori	r23, r23, lo(.L.str.5)
	l.ori	r3, r3, lo(.L.str.5)
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
.Lfunc_end34:
	.size	puts_to_uart, .Lfunc_end34-puts_to_uart

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
	l.bf	.LBB35_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %entry
	l.ori	r15, r8, 0
	l.ori	r25, r31, 0
	l.ori	r5, r11, 0
.LBB35_2:                               # %entry
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
.Lfunc_end35:
	.size	__muldi3, .Lfunc_end35-__muldi3

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
	l.bf	.LBB36_43
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
	l.bf	.LBB36_3
	l.nop	0                       # in delay slot
# BB#2:                                 # %if.then.i
	l.addi	r8, r0, 24
	l.addi	r31, r0, 24
	l.addi	r11, r0, 24
.LBB36_3:                               # %if.then.i
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltui	r6, 256
	l.bf	.LBB36_5
	l.nop	0                       # in delay slot
# BB#4:                                 # %if.then.i
	l.addi	r15, r0, 8
	l.addi	r25, r0, 8
	l.addi	r5, r0, 8
.LBB36_5:                               # %if.then.i
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
	l.bf	.LBB36_7
	l.nop	0                       # in delay slot
# BB#6:                                 # %if.then.i
	l.ori	r15, r8, 0
	l.ori	r25, r31, 0
	l.ori	r5, r11, 0
.LBB36_7:                               # %if.then.i
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
	l.bf	.LBB36_21
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
	l.bf	.LBB36_10
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
.LBB36_10:                              # %do.body21.i
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
	l.bf	.LBB36_14
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
	l.bf	.LBB36_14
	l.nop	0                       # in delay slot
# BB#12:                                # %if.then28.i
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgeu	r7, r3
	l.bf	.LBB36_14
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
.LBB36_14:                              # %if.end40.i
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
	l.bf	.LBB36_20
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
	l.bf	.LBB36_17
	l.nop	0                       # in delay slot
# BB#16:                                # %if.then50.i
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
.LBB36_17:                              # %if.then50.i
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgeu	r5, r6
	l.bf	.LBB36_19
	l.nop	0                       # in delay slot
# BB#18:                                # %if.then50.i
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
.LBB36_19:                              # %if.then50.i
	l.add	r17, r17, r14
	l.add	r27, r27, r24
	l.add	r7, r7, r4
.LBB36_20:                              # %if.end63.i
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
	l.j	.LBB36_72
	l.nop	0                       # in delay slot
.LBB36_43:                              # %if.else240.i
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
	l.bf	.LBB36_72
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
	l.bf	.LBB36_46
	l.nop	0                       # in delay slot
# BB#45:                                # %do.body254.i
	l.addi	r14, r0, 24
	l.addi	r24, r0, 24
	l.addi	r4, r0, 24
.LBB36_46:                              # %do.body254.i
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.movhi	r7, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltui	r5, 256
	l.bf	.LBB36_48
	l.nop	0                       # in delay slot
# BB#47:                                # %do.body254.i
	l.addi	r17, r0, 8
	l.addi	r27, r0, 8
	l.addi	r7, r0, 8
.LBB36_48:                              # %do.body254.i
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
	l.bf	.LBB36_50
	l.nop	0                       # in delay slot
# BB#49:                                # %do.body254.i
	l.ori	r17, r14, 0
	l.ori	r27, r24, 0
	l.ori	r7, r4, 0
.LBB36_50:                              # %do.body254.i
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
	l.bf	.LBB36_56
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
	l.bf	.LBB36_53
	l.nop	0                       # in delay slot
# BB#52:                                # %if.then278.i
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB36_53:                              # %if.then278.i
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
	l.bf	.LBB36_55
	l.nop	0                       # in delay slot
# BB#54:                                # %if.then278.i
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB36_55:                              # %if.then278.i
	l.and	r13, r14, r13
	l.and	r23, r24, r23
	l.and	r3, r4, r3
	l.xori	r13, r13, -1
	l.xori	r23, r23, -1
	l.xori	r3, r3, -1
	l.andi	r17, r13, 1
	l.andi	r27, r23, 1
	l.andi	r7, r3, 1
	l.j	.LBB36_72
	l.nop	0                       # in delay slot
.LBB36_56:                              # %if.else303.i
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
	l.bf	.LBB36_60
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
	l.bf	.LBB36_60
	l.nop	0                       # in delay slot
# BB#58:                                # %if.then332.i
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r3, r4
	l.bf	.LBB36_60
	l.nop	0                       # in delay slot
# BB#59:                                # %if.then340.i
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.addi	r15, r8, -2
	l.addi	r25, r31, -2
	l.addi	r5, r11, -2
.LBB36_60:                              # %if.end345.i
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
	l.bf	.LBB36_64
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
	l.bf	.LBB36_64
	l.nop	0                       # in delay slot
# BB#62:                                # %if.then355.i
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgeu	r3, r5
	l.bf	.LBB36_64
	l.nop	0                       # in delay slot
# BB#63:                                # %if.then363.i
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.addi	r17, r14, -2
	l.addi	r27, r24, -2
	l.addi	r7, r4, -2
.LBB36_64:                              # %if.end368.i
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
	l.bf	.LBB36_66
	l.nop	0                       # in delay slot
# BB#65:                                # %if.end368.i
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB36_66:                              # %if.end368.i
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
	l.bf	.LBB36_68
	l.nop	0                       # in delay slot
# BB#67:                                # %if.end368.i
	l.ori	r8, r13, 0
	l.ori	r31, r23, 0
	l.ori	r11, r3, 0
.LBB36_68:                              # %if.end368.i
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
	l.bf	.LBB36_71
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
	l.bf	.LBB36_72
	l.nop	0                       # in delay slot
# BB#70:                                # %lor.lhs.false401.i
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r6, r3
	l.bf	.LBB36_72
	l.nop	0                       # in delay slot
.LBB36_71:                              # %if.then406.i
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.addi	r17, r17, -1
	l.addi	r27, r27, -1
	l.addi	r7, r7, -1
	l.j	.LBB36_72
	l.nop	0                       # in delay slot
.LBB36_21:                              # %if.else.i
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB36_23
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
	l.j	.LBB36_32
	l.nop	0                       # in delay slot
.LBB36_23:                              # %if.else100.i
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
	l.bf	.LBB36_27
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
	l.bf	.LBB36_27
	l.nop	0                       # in delay slot
# BB#25:                                # %if.then126.i
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r3, r4
	l.bf	.LBB36_27
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
.LBB36_27:                              # %if.end139.i
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
	l.bf	.LBB36_31
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
	l.bf	.LBB36_31
	l.nop	0                       # in delay slot
# BB#29:                                # %if.then149.i
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r3, r4
	l.bf	.LBB36_31
	l.nop	0                       # in delay slot
# BB#30:                                # %if.then157.i
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.addi	r8, r15, -2
	l.addi	r31, r25, -2
	l.addi	r11, r5, -2
.LBB36_31:                              # %if.end162.i
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
.LBB36_32:                              # %do.body169.i
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
	l.bf	.LBB36_36
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
	l.bf	.LBB36_36
	l.nop	0                       # in delay slot
# BB#34:                                # %if.then187.i
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r7, r4
	l.bf	.LBB36_36
	l.nop	0                       # in delay slot
# BB#35:                                # %if.then195.i
	l.add	r17, r17, r16
	l.add	r27, r27, r26
	l.add	r7, r7, r6
	l.addi	r15, r13, -2
	l.addi	r25, r23, -2
	l.addi	r5, r3, -2
.LBB36_36:                              # %if.end200.i
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
	l.bf	.LBB36_42
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
	l.bf	.LBB36_39
	l.nop	0                       # in delay slot
# BB#38:                                # %if.then210.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB36_39:                              # %if.then210.i
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgeu	r5, r6
	l.bf	.LBB36_41
	l.nop	0                       # in delay slot
# BB#40:                                # %if.then210.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB36_41:                              # %if.then210.i
	l.add	r17, r17, r14
	l.add	r27, r27, r24
	l.add	r7, r7, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
.LBB36_42:                              # %if.end223.i
	l.slli	r13, r15, 16
	l.slli	r23, r25, 16
	l.slli	r3, r5, 16
	l.or	r17, r17, r13
	l.or	r27, r27, r23
	l.or	r7, r7, r3
.LBB36_72:                              # %__udivmoddi4.exit
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
.Lfunc_end36:
	.size	__udivdi3, .Lfunc_end36-__udivdi3

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
	l.bf	.LBB37_13
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
	l.bf	.LBB37_4
	l.nop	0                       # in delay slot
# BB#2:                                 # %while.body.preheader
	l.ori	r17, r13, 0
	l.ori	r27, r23, 0
	l.ori	r7, r3, 0
.LBB37_3:                               # %while.body
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
	l.bf	.LBB37_3
	l.nop	0                       # in delay slot
.LBB37_4:                               # %while.end
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
	l.bf	.LBB37_8
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
.LBB37_6:                               # %while.body10
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
	l.bf	.LBB37_6
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
.LBB37_8:                               # %while.end21
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
	l.bf	.LBB37_12
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
.LBB37_10:                              # %while.body27
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
	l.bf	.LBB37_10
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
.LBB37_12:                              # %while.end31
	l.andi	r15, r15, 3
	l.andi	r25, r25, 3
	l.andi	r5, r5, 3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB37_13:                              # %while.cond33.preheader
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB37_15
	l.nop	0                       # in delay slot
.LBB37_14:                              # %while.body36
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
	l.bf	.LBB37_14
	l.nop	0                       # in delay slot
.LBB37_15:                              # %while.end41
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
.Lfunc_end37:
	.size	memset, .Lfunc_end37-memset

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
	l.addi	r10, r10, -2524
	l.addi	r21, r21, -2524         # CFC
	l.addi	r1, r1, -2524
	l.movhi	r13, hi(abuf)
	l.movhi	r23, hi(abuf)
	l.movhi	r3, hi(abuf)
	l.ori	r13, r13, lo(abuf)
	l.ori	r23, r23, lo(abuf)
	l.ori	r3, r3, lo(abuf)
	l.movhi	r14, hi(sbuf)
	l.movhi	r24, hi(sbuf)
	l.movhi	r4, hi(sbuf)
	l.ori	r14, r14, lo(sbuf)
	l.ori	r24, r24, lo(sbuf)
	l.ori	r4, r4, lo(sbuf)
	l.movhi	r15, hi(state)
	l.movhi	r25, hi(state)
	l.movhi	r5, hi(state)
	l.ori	r16, r15, lo(state)
	l.ori	r26, r25, lo(state)
	l.ori	r6, r5, lo(state)
	l.addi	r15, r0, 1000
	l.addi	r25, r0, 1000
	l.addi	r5, r0, 1000
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-2520(r2), r4
	l.jal	adpcm_decoder
	l.nop	0                       # in delay slot
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.addi	r14, r12, -2508
	l.addi	r24, r22, -2508
	l.addi	r4, r2, -2508
	l.addi	r14, r14, 2
	l.addi	r24, r24, 2
	l.addi	r4, r4, 2
.LBB38_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -2520(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.add	r15, r13, r15
	l.add	r25, r23, r25
	l.add	r5, r3, r5
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.lhz	r6, 0(r5)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.andi	r15, r16, 15
	l.andi	r25, r26, 15
	l.andi	r5, r6, 15
	l.ori	r17, r15, 48
	l.ori	r27, r25, 48
	l.ori	r7, r5, 48
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltui	r5, 10
	l.bf	.LBB38_3
	l.nop	0                       # in delay slot
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB38_1 Depth=1
	l.addi	r17, r15, 55
	l.addi	r27, r25, 55
	l.addi	r7, r5, 55
.LBB38_3:                               # %for.body
                                        #   in Loop: Header=BB38_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-2512(r2), r7
	l.srli	r15, r16, 4
	l.srli	r25, r26, 4
	l.srli	r5, r6, 4
	l.andi	r15, r15, 15
	l.andi	r25, r25, 15
	l.andi	r5, r5, 15
	l.ori	r17, r15, 48
	l.ori	r27, r25, 48
	l.ori	r7, r5, 48
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltui	r5, 10
	l.bf	.LBB38_5
	l.nop	0                       # in delay slot
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB38_1 Depth=1
	l.addi	r17, r15, 55
	l.addi	r27, r25, 55
	l.addi	r7, r5, 55
.LBB38_5:                               # %for.body
                                        #   in Loop: Header=BB38_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-2516(r2), r7
	l.srli	r15, r16, 12
	l.srli	r25, r26, 12
	l.srli	r5, r6, 12
	l.ori	r8, r15, 48
	l.ori	r31, r25, 48
	l.ori	r11, r5, 48
	l.ori	r17, r0, 40960
	l.ori	r27, r0, 40960
	l.ori	r7, r0, 40960
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfltu	r6, r7
	l.bf	.LBB38_7
	l.nop	0                       # in delay slot
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB38_1 Depth=1
	l.addi	r8, r15, 55
	l.addi	r31, r25, 55
	l.addi	r11, r5, 55
.LBB38_7:                               # %for.body
                                        #   in Loop: Header=BB38_1 Depth=1
	l.srli	r15, r16, 8
	l.srli	r25, r26, 8
	l.srli	r5, r6, 8
	l.andi	r15, r15, 15
	l.andi	r25, r25, 15
	l.andi	r5, r5, 15
	l.ori	r16, r15, 48
	l.ori	r26, r25, 48
	l.ori	r6, r5, 48
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -2512(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltui	r5, 10
	l.bf	.LBB38_9
	l.nop	0                       # in delay slot
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB38_1 Depth=1
	l.addi	r16, r15, 55
	l.addi	r26, r25, 55
	l.addi	r6, r5, 55
.LBB38_9:                               # %for.body
                                        #   in Loop: Header=BB38_1 Depth=1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sb	-2(r4), r11
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sb	-1(r4), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -2516(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sb	0(r4), r5
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	1(r4), r7
	l.addi	r15, r0, 32
	l.addi	r25, r0, 32
	l.addi	r5, r0, 32
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sb	2(r4), r5
	l.addi	r14, r14, 5
	l.addi	r24, r24, 5
	l.addi	r4, r4, 5
	l.addi	r13, r13, 2
	l.addi	r23, r23, 2
	l.addi	r3, r3, 2
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 1000
	l.bf	.LBB38_10
	l.nop	0                       # in delay slot
	l.j	.LBB38_1
	l.nop	0                       # in delay slot
.LBB38_10:                              # %for.cond.cleanup
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	-1009(r2), r3
	l.addi	r13, r12, -2508
	l.addi	r23, r22, -2508
	l.addi	r3, r2, -2508
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	0(r1), r3
	l.movhi	r13, hi(.L.str.7)
	l.movhi	r23, hi(.L.str.7)
	l.movhi	r3, hi(.L.str.7)
	l.ori	r13, r13, lo(.L.str.7)
	l.ori	r23, r23, lo(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
    l.nop 200
	#l.jal	exit
    l.nop 1111
	l.nop	0                       # in delay slot
.Lfunc_end38:
	.size	main, .Lfunc_end38-main

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
.Lfunc_end39:
	.size	uart_init, .Lfunc_end39-uart_init

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
.LBB40_1:                               # %do.body
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
	l.bf	.LBB40_1
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
	l.bf	.LBB40_6
	l.nop	0                       # in delay slot
# BB#3:                                 # %do.body7.preheader
	l.movhi	r14, 36864
	l.movhi	r24, 36864
	l.movhi	r4, 36864
	l.ori	r14, r14, 5
	l.ori	r24, r24, 5
	l.ori	r4, r4, 5
.LBB40_4:                               # %do.body7
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
	l.bf	.LBB40_4
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
.LBB40_6:                               # %do.body18.preheader
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 5
	l.ori	r23, r23, 5
	l.ori	r3, r3, 5
.LBB40_7:                               # %do.body18
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
	l.bf	.LBB40_7
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
.Lfunc_end40:
	.size	uart_putc, .Lfunc_end40-uart_putc

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
.Lfunc_end41:
	.size	uart_putc_noblock, .Lfunc_end41-uart_putc_noblock

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
.LBB42_1:                               # %do.body
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
	l.bf	.LBB42_1
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
.Lfunc_end42:
	.size	uart_getc, .Lfunc_end42-uart_getc

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
.Lfunc_end43:
	.size	uart_check_for_char, .Lfunc_end43-uart_check_for_char

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
.Lfunc_end44:
	.size	uart_rxint_enable, .Lfunc_end44-uart_rxint_enable

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
.Lfunc_end45:
	.size	uart_rxint_disable, .Lfunc_end45-uart_rxint_disable

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
.Lfunc_end46:
	.size	uart_txint_enable, .Lfunc_end46-uart_txint_enable

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
.Lfunc_end47:
	.size	uart_txint_disable, .Lfunc_end47-uart_txint_disable

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
.Lfunc_end48:
	.size	uart_get_iir, .Lfunc_end48-uart_get_iir

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
.Lfunc_end49:
	.size	uart_get_lsr, .Lfunc_end49-uart_get_lsr

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
.Lfunc_end50:
	.size	uart_get_msr, .Lfunc_end50-uart_get_msr

	.type	stepsizeTable,@object   # @stepsizeTable
	.section	.rodata,"a",@progbits
	.p2align	2
stepsizeTable:
	.long	7                       # 0x7
	.long	8                       # 0x8
	.long	9                       # 0x9
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	12                      # 0xc
	.long	13                      # 0xd
	.long	14                      # 0xe
	.long	16                      # 0x10
	.long	17                      # 0x11
	.long	19                      # 0x13
	.long	21                      # 0x15
	.long	23                      # 0x17
	.long	25                      # 0x19
	.long	28                      # 0x1c
	.long	31                      # 0x1f
	.long	34                      # 0x22
	.long	37                      # 0x25
	.long	41                      # 0x29
	.long	45                      # 0x2d
	.long	50                      # 0x32
	.long	55                      # 0x37
	.long	60                      # 0x3c
	.long	66                      # 0x42
	.long	73                      # 0x49
	.long	80                      # 0x50
	.long	88                      # 0x58
	.long	97                      # 0x61
	.long	107                     # 0x6b
	.long	118                     # 0x76
	.long	130                     # 0x82
	.long	143                     # 0x8f
	.long	157                     # 0x9d
	.long	173                     # 0xad
	.long	190                     # 0xbe
	.long	209                     # 0xd1
	.long	230                     # 0xe6
	.long	253                     # 0xfd
	.long	279                     # 0x117
	.long	307                     # 0x133
	.long	337                     # 0x151
	.long	371                     # 0x173
	.long	408                     # 0x198
	.long	449                     # 0x1c1
	.long	494                     # 0x1ee
	.long	544                     # 0x220
	.long	598                     # 0x256
	.long	658                     # 0x292
	.long	724                     # 0x2d4
	.long	796                     # 0x31c
	.long	876                     # 0x36c
	.long	963                     # 0x3c3
	.long	1060                    # 0x424
	.long	1166                    # 0x48e
	.long	1282                    # 0x502
	.long	1411                    # 0x583
	.long	1552                    # 0x610
	.long	1707                    # 0x6ab
	.long	1878                    # 0x756
	.long	2066                    # 0x812
	.long	2272                    # 0x8e0
	.long	2499                    # 0x9c3
	.long	2749                    # 0xabd
	.long	3024                    # 0xbd0
	.long	3327                    # 0xcff
	.long	3660                    # 0xe4c
	.long	4026                    # 0xfba
	.long	4428                    # 0x114c
	.long	4871                    # 0x1307
	.long	5358                    # 0x14ee
	.long	5894                    # 0x1706
	.long	6484                    # 0x1954
	.long	7132                    # 0x1bdc
	.long	7845                    # 0x1ea5
	.long	8630                    # 0x21b6
	.long	9493                    # 0x2515
	.long	10442                   # 0x28ca
	.long	11487                   # 0x2cdf
	.long	12635                   # 0x315b
	.long	13899                   # 0x364b
	.long	15289                   # 0x3bb9
	.long	16818                   # 0x41b2
	.long	18500                   # 0x4844
	.long	20350                   # 0x4f7e
	.long	22385                   # 0x5771
	.long	24623                   # 0x602f
	.long	27086                   # 0x69ce
	.long	29794                   # 0x7462
	.long	32767                   # 0x7fff
	.size	stepsizeTable, 356

	.type	indexTable,@object      # @indexTable
	.p2align	2
indexTable:
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	6                       # 0x6
	.long	8                       # 0x8
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	6                       # 0x6
	.long	8                       # 0x8
	.size	indexTable, 64

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
	.comm	PRINTFBUFFER,2048,1
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

	.type	.L.str,@object          # @.str
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	vfnprintf.blanks,@object # @vfnprintf.blanks
	.data
vfnprintf.blanks:
	.zero	16,32
	.size	vfnprintf.blanks, 16

	.type	vfnprintf.zeroes,@object # @vfnprintf.zeroes
vfnprintf.zeroes:
	.zero	16,48
	.size	vfnprintf.zeroes, 16

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"%s\n"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%c"
	.size	.L.str.6, 3

	.hidden	abuf                    # @abuf
	.type	abuf,@object
	.data
	.globl	abuf
abuf:
	.ascii	"\000\362\0178\367\237y\2608\bH\274?0\200\213y\200\242\242\0130\200\205\2748\000\210\343\b\000\216y\202\250\000+\264\204\341*\212i\244\263\232KJ\002\250\b\b\r8\b\005\2778\222.\003\240+\b\fy\202\301*\245\232!\240\b\007\270*\002\260\200K\306\230 \260\204\213\bK\205\270\b_\003\240*.\022\240\202\253y\242\203\260\200\200\200\206\270K\004\300\200;H\2758\264\263\ri\211\020\b\267\230\rY\b\221\b\002\253i\200-\020\200+\013p\242\252 \204\363\232*\"\323\n \270\264\263\b[<\363\221\b\b;\004\300\200\200K\205\2730\323\b\b[\200\200\200\200\200\363\200\200\207\361,\020\245\221\251(\200\003\3000\320<\b\b\b\323\r0\200\323\bK\303\204\263\363\230\b\0133\300;\210\000\207\270K\b\ry\030\230\243\210\000L\003\370k\021\230\200\b\2128\264\213H\004\270K\306\230\b;\267\221\230\b?\001\031\2508\b\303\fi\200\245\270-2\301\033(*\204\260\200\204\361\b*\002\260K\210\r{\020\242\002\260\213y\245\230*\203\260?\020\202\321*\013k\205\261\b*\002\260<\b\f\204\bO\022\342\2121\211\244\221\2338\b\b[\204\260K\207\3309\211(*\203\270[\b\307\232I\204\260\034\022\240\263\f8\264\200\306\f\020\200\200\203\270\b_\022\303\230\b*\200\213y\242\b\b@\363\240\212i\202\250\005\27598\302\212Y\202\240\263\213C\3123\300\200O\020\244\230\b\b\b\267\232\"\321\b\000\2130\363\215H\b,\022\250\b\267\231\020+\003\3128\267\234\022\202\252 \306\262\200.\020\200\212h\264\211\202\240.\022\240 \270K\200\200\005\300\200\307\230\b\b?\021\262*\200\200\200\323\217P\263\211\202\301\b\b\246\232{\030\221\001\230\b\bK\267\n\b\242\013y\202\242\250?\020\245\240/"
	.size	abuf, 500

	.hidden	sbuf                    # @sbuf
	.type	sbuf,@object
	.comm	sbuf,2000,2
	.hidden	state                   # @state
	.type	state,@object
	.comm	state,4,2
	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"%s\n"
	.size	.L.str.7, 4

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
