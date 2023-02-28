* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"fmat.c"			
						
						
						
						
						
	.text					
	.align	2				
	.globl	_new_fmat			
						
_new_fmat:					
	movem.l d3/d4/d5/a3/a4/a5,-(sp)		
	move.l 28(sp),d3			
	move.l 32(sp),d4			
						
	jble _?L8				
						
	tst.l d3				
	jble _?L8				
						
	pea 12.w				
	lea _MALLOC,a4				
	jbsr (a4)				
	move.l d0,a3				
						
	move.l d3,4(a3)				
						
	move.l d4,(a3)				
						
	add.l d3,d3				
	add.l d3,d3				
	move.l d3,(sp)				
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,8(a3)				
						
	tst.l 4(a3)				
	jbeq _?L1				
						
	move.l (a3),d3				
	moveq #0,d5				
						
	moveq #0,d4				
						
	lea _memset,a5				
_?L5:						
						
	lsl.l #3,d3				
	move.l d3,-(sp)				
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l 8(a3),a0				
	move.l d0,(a0,d5.l)			
						
	move.l (a3),d3				
						
	jbeq _?L6				
						
	move.l d3,d1				
	lsl.l #3,d1				
	move.l d1,-(sp)				
	clr.l -(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
_?L6:						
						
	addq.l #1,d4				
						
	addq.l #4,d5				
	cmp.l 4(a3),d4				
	jbcs _?L5				
_?L1:						
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/a3/a4/a5		
	rts					
_?L8:						
						
	sub.l a3,a3				
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/a3/a4/a5		
	rts					
						
	.align	2				
	.globl	_del_fmat			
						
_del_fmat:					
	movem.l d3/d4/a3/a4,-(sp)		
	move.l 20(sp),a3			
	lea _MFREE,a4				
						
	tst.l 4(a3)				
	jbeq _?L13				
	moveq #0,d4				
						
	moveq #0,d3				
	lea _MFREE,a4				
_?L14:						
						
	move.l 8(a3),a0				
	move.l (a0,d4.l),-(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	addq.l #1,d3				
						
	addq.l #4,d4				
	cmp.l 4(a3),d3				
	jbcs _?L14				
_?L13:						
						
	move.l 8(a3),-(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l a3,20(sp)			
						
	movem.l (sp)+,d3/d4/a3/a4		
						
	jbra _MFREE				
						
	.align	2				
	.globl	_fmat_set_sample		
						
_fmat_set_sample:				
						
	move.l 4(sp),a0				
	move.l 8(a0),a0				
	move.l 16(sp),d0			
	add.l d0,d0				
	add.l d0,d0				
						
	move.l (a0,d0.l),a0			
	move.l 20(sp),d0			
	lsl.l #3,d0				
	move.l 8(sp),d1				
	move.l 12(sp),d2			
	move.l d1,(a0,d0.l)			
	move.l d2,4(a0,d0.l)			
						
	rts					
						
	.align	2				
	.globl	_fmat_get_sample		
						
_fmat_get_sample:				
						
	move.l 4(sp),a0				
	move.l 8(a0),a0				
	move.l 8(sp),d0				
	add.l d0,d0				
	add.l d0,d0				
						
	move.l (a0,d0.l),a0			
	move.l 12(sp),d0			
	lsl.l #3,d0				
						
	move.l 4(a0,d0.l),d1			
	move.l (a0,d0.l),d0			
	rts					
						
	.align	2				
	.globl	_fmat_get_channel		
						
_fmat_get_channel:				
	move.l 4(sp),a1				
	move.l 12(sp),a0			
						
	move.l 8(a1),a2				
	move.l 8(sp),d0				
	add.l d0,d0				
	add.l d0,d0				
						
	move.l (a2,d0.l),4(a0)			
						
	move.l (a1),(a0)			
						
	rts					
						
	.align	2				
	.globl	_fmat_get_channel_data		
						
_fmat_get_channel_data:				
						
	move.l 4(sp),a0				
	move.l 8(a0),a0				
	move.l 8(sp),d0				
	add.l d0,d0				
	add.l d0,d0				
						
	move.l (a0,d0.l),d0			
	rts					
						
	.align	2				
	.globl	_fmat_get_data			
						
_fmat_get_data:					
						
	move.l 4(sp),a0				
	move.l 8(a0),d0				
	rts					
						
	.data					
_?LC0:						
	.dc.b $25,$6c,$66,$20
	.dc.b $00				
_?LC1:						
	.dc.b $0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_fmat_print			
						
_fmat_print:					
	movem.l d3/d4/d5/d6/a3/a4,-(sp)		
	move.l 28(sp),a3			
						
	tst.l 4(a3)				
	jbeq _?L30				
	moveq #0,d5				
						
	moveq #0,d6				
	lea _aubio_log,a4			
_?L31:						
						
	tst.l (a3)				
	jbeq _?L34				
	moveq #0,d4				
						
	moveq #0,d3				
_?L33:						
						
	move.l 8(a3),a0				
	move.l (a0,d5.l),a0			
	move.l 4(a0,d4.l),-(sp)			
	move.l (a0,d4.l),-(sp)			
	pea _?LC0				
	pea 2.w					
	jbsr (a4)				
	lea (16,sp),sp				
						
	addq.l #1,d3				
						
	addq.l #8,d4				
	cmp.l (a3),d3				
	jbcs _?L33				
_?L34:						
						
	pea _?LC1				
	pea 2.w					
	jbsr (a4)				
	addq.l #8,sp				
						
	addq.l #1,d6				
						
	addq.l #4,d5				
	cmp.l 4(a3),d6				
	jbcs _?L31				
_?L30:						
						
	movem.l (sp)+,d3/d4/d5/d6/a3/a4		
	rts					
						
	.align	2				
	.globl	_fmat_set			
						
_fmat_set:					
	move.l d3,-(sp)				
	move.l 8(sp),a0				
						
	move.l 4(a0),d2				
						
	jbeq _?L40				
						
	move.l (a0),d0				
	move.l d0,d3				
	lsl.l #3,d3				
	sub.l a1,a1				
						
	moveq #0,d1				
						
	tst.l d0				
	jbeq _?L52				
	move.l 8(a0),a2				
_?L44:						
	move.l (a2,a1.l),a0			
	move.l a0,d0				
	add.l d3,d0				
_?L43:						
						
	move.l 12(sp),(a0)+			
	move.l 16(sp),(a0)+			
						
	cmp.l d0,a0				
	jbne _?L43				
						
	addq.l #1,d1				
						
	addq.l #4,a1				
	cmp.l d1,d2				
	jbne _?L44				
_?L40:						
						
	move.l (sp)+,d3				
	rts					
_?L52:						
						
	addq.l #1,d1				
						
	cmp.l d1,d2				
	jbeq _?L40				
						
	addq.l #1,d1				
						
	cmp.l d1,d2				
	jbne _?L52				
	jbra _?L40				
						
	.align	2				
	.globl	_fmat_zeros			
						
_fmat_zeros:					
	movem.l d3/d4/d5/d6/d7/a3/a4,-(sp)	
	move.l 32(sp),a3			
						
	move.l 4(a3),d5				
						
	jbeq _?L56				
						
	move.l (a3),d6				
						
	move.l d6,d7				
	lsl.l #3,d7				
	moveq #0,d4				
						
	moveq #0,d3				
						
	lea _memset,a4				
_?L58:						
						
	tst.l d6				
	jbeq _?L60				
						
	move.l 8(a3),a0				
						
	move.l (a0,d4.l),d0			
	move.l d7,-(sp)				
	clr.l -(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
_?L60:						
						
	addq.l #1,d3				
						
	addq.l #4,d4				
	cmp.l d3,d5				
	jbne _?L58				
_?L56:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4	
	rts					
						
	.align	2				
	.globl	_fmat_ones			
						
_fmat_ones:					
	move.l d3,-(sp)				
	move.l 8(sp),a0				
						
	move.l 4(a0),d2				
						
	jbeq _?L66				
						
	move.l (a0),d0				
	move.l d0,d3				
	lsl.l #3,d3				
	sub.l a1,a1				
						
	moveq #0,d1				
						
	tst.l d0				
	jbeq _?L78				
	move.l 8(a0),a2				
_?L70:						
	move.l (a2,a1.l),a0			
	move.l d3,d0				
	add.l a0,d0				
_?L69:						
						
	move.l #1072693248,(a0)+		
	clr.l (a0)+				
						
	cmp.l d0,a0				
	jbne _?L69				
						
	addq.l #1,d1				
						
	addq.l #4,a1				
	cmp.l d1,d2				
	jbne _?L70				
_?L66:						
						
	move.l (sp)+,d3				
	rts					
_?L78:						
						
	addq.l #1,d1				
						
	cmp.l d1,d2				
	jbeq _?L66				
						
	addq.l #1,d1				
						
	cmp.l d1,d2				
	jbne _?L78				
	jbra _?L66				
						
	.globl	___floatunsidf			
	.globl	___muldf3			
	.globl	___ltdf2			
	.globl	___gtdf2			
	.align	2				
	.globl	_fmat_rev			
						
_fmat_rev:					
	lea (-16,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
						
	move.l 56(sp),a0			
	move.l 4(a0),48(sp)			
						
	jbeq _?L82				
						
	move.l (a0),d5				
						
	lea ___floatunsidf,a3			
	move.l d5,-(sp)				
	jbsr (a3)				
						
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _floor				
	addq.l #8,sp				
	move.l d0,d6				
	move.l d1,d7				
	lsl.l #3,d5				
	sub.l a5,a5				
						
	clr.l 44(sp)				
	subq.l #8,d5				
	lea ___ltdf2,a4				
_?L84:						
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L87				
						
	move.l 56(sp),a1			
	move.l 8(a1),a0				
	move.l (a0,a5.l),d4			
	sub.l a6,a6				
						
	moveq #0,d3				
_?L85:						
						
	lea (a6,d4.l),a1			
	move.l (a1),36(sp)			
	move.l 4(a1),40(sp)			
	move.l d5,a0				
	sub.l a6,a0				
	add.l d4,a0				
	move.l (a0),d0				
	move.l 4(a0),d1				
	move.l d0,(a1)				
	move.l d1,4(a1)				
	move.l 36(sp),(a0)			
	move.l 40(sp),4(a0)			
						
	addq.l #1,d3				
						
	addq.l #8,a6				
	move.l d3,-(sp)				
	jbsr (a3)				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L85				
_?L87:						
						
	addq.l #1,44(sp)			
						
	addq.l #4,a5				
	move.l 44(sp),a0			
	cmp.l 48(sp),a0				
	jbne _?L84				
_?L82:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
						
	.align	2				
	.globl	_fmat_weight			
						
_fmat_weight:					
	lea (-12,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 52(sp),a0			
	move.l 56(sp),a1			
						
	move.l (a0),d1				
	move.l (a1),d0				
	cmp.l d0,d1				
	jbcc _?L95				
	move.l d1,d0				
_?L95:						
						
	move.l 4(a0),d6				
						
	jbeq _?L94				
	move.l d0,d7				
	lsl.l #3,d7				
	moveq #0,d5				
						
	moveq #0,d4				
						
	tst.l d0				
	jbeq _?L107				
	move.l 8(a0),a6				
	move.l 8(a1),44(sp)			
	lea ___muldf3,a4			
_?L99:						
	move.l (a6,d5.l),a3			
	move.l 44(sp),a0			
	move.l (a0),a5				
	move.l a3,d3				
	add.l d7,d3				
_?L98:						
						
	move.l (a3),d0				
	move.l 4(a3),d1				
						
	subq.l #8,sp				
	move.l (a5)+,(sp)			
	move.l (a5)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l a3,d3				
	jbne _?L98				
						
	addq.l #1,d4				
						
	addq.l #4,d5				
	cmp.l d6,d4				
	jbne _?L99				
_?L94:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (12,sp),sp				
	rts					
_?L107:						
						
	addq.l #1,d4				
						
	cmp.l d4,d6				
	jbeq _?L94				
						
	addq.l #1,d4				
						
	cmp.l d4,d6				
	jbne _?L107				
	jbra _?L94				
						
	.data					
_?LC2:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$74,$72,$79
	.dc.b $69,$6e,$67,$20,$74,$6f,$20,$63
	.dc.b $6f,$70,$79,$20,$25,$64,$20,$72
	.dc.b $6f,$77,$73,$20,$74,$6f,$20,$25
	.dc.b $64,$20,$72,$6f,$77,$73,$20,$0a
	.dc.b $00				
_?LC3:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$74,$72,$79
	.dc.b $69,$6e,$67,$20,$74,$6f,$20,$63
	.dc.b $6f,$70,$79,$20,$25,$64,$20,$63
	.dc.b $6f,$6c,$75,$6d,$6e,$73,$20,$74
	.dc.b $6f,$20,$25,$64,$20,$63,$6f,$6c
	.dc.b $75,$6d,$6e,$73,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_fmat_copy			
						
_fmat_copy:					
	movem.l d3/d4/d5/a3/a4,-(sp)		
	move.l 24(sp),a1			
	move.l 28(sp),a0			
						
	move.l 4(a1),d0				
						
	move.l 4(a0),a2				
						
	cmp.l d0,a2				
	jbne _?L130				
						
	move.l (a1),d0				
						
	move.l (a0),d1				
						
	cmp.l d0,d1				
	jbne _?L114				
						
	cmp.w #0,a2				
	jbeq _?L111				
	move.l d0,d3				
	lsl.l #3,d3				
	moveq #0,d1				
						
	moveq #0,d2				
						
	tst.l d0				
	jbeq _?L126				
	move.l 8(a1),a4				
	move.l 8(a0),a3				
_?L118:						
	move.l (a4,d1.l),a0			
	move.l (a3,d1.l),a1			
	move.l a0,d0				
	add.l d3,d0				
_?L117:						
						
	move.l (a0)+,d4				
	move.l (a0)+,d5				
	move.l d4,(a1)+				
	move.l d5,(a1)+				
						
	cmp.l a0,d0				
	jbne _?L117				
						
	addq.l #1,d2				
						
	addq.l #4,d1				
	cmp.l a2,d2				
	jbne _?L118				
_?L111:						
						
	movem.l (sp)+,d3/d4/d5/a3/a4		
	rts					
_?L126:						
						
	addq.l #1,d2				
						
	cmp.l a2,d2				
	jbeq _?L111				
						
	addq.l #1,d2				
						
	cmp.l a2,d2				
	jbne _?L126				
	jbra _?L111				
_?L114:						
						
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	pea _?LC3				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	movem.l (sp)+,d3/d4/d5/a3/a4		
	rts					
_?L130:						
						
	move.l a2,-(sp)				
	move.l d0,-(sp)				
	pea _?LC2				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	movem.l (sp)+,d3/d4/d5/a3/a4		
	rts					
						
	.globl	___adddf3			
	.align	2				
	.globl	_fmat_vecmul			
						
_fmat_vecmul:					
	lea (-20,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 60(sp),a3			
	move.l 68(sp),a4			
						
	move.l a4,-(sp)				
	jbsr _fvec_zeros			
	addq.l #4,sp				
						
	move.l (a3),44(sp)			
						
	jbeq _?L131				
						
	move.l 4(a3),d0				
	move.l d0,d6				
	lsl.l #3,d6				
	moveq #0,d3				
						
	moveq #0,d7				
						
	tst.l d0				
	jbeq _?L147				
	move.l 4(a4),48(sp)			
	move.l 8(a3),52(sp)			
	lea ___muldf3,a5			
	add.l 48(sp),d6				
_?L135:						
						
	move.l 64(sp),a0			
	move.l 4(a0),a3				
	add.l d3,a3				
	move.l 48(sp),a4			
	move.l 52(sp),a6			
_?L134:						
						
	move.l (a4),d4				
	move.l 4(a4),d5				
						
	move.l (a6)+,a0				
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	move.l 4(a0,d3.l),-(sp)			
	move.l (a0,d3.l),-(sp)			
	jbsr (a5)				
						
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	cmp.l d6,a4				
	jbne _?L134				
						
	addq.l #1,d7				
						
	addq.l #8,d3				
	cmp.l 44(sp),d7				
	jbne _?L135				
_?L131:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (20,sp),sp				
	rts					
_?L147:						
	move.l 44(sp),d0			
_?L143:						
						
	addq.l #1,d7				
						
	cmp.l d7,d0				
	jbeq _?L131				
						
	addq.l #1,d7				
						
	cmp.l d7,d0				
	jbne _?L143				
	jbra _?L131				
						
						
