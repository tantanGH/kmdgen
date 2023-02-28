* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"dct_plain.c"			
						
						
						
						
						
	.text					
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$64
	.dc.b $63,$74,$5f,$70,$6c,$61,$69,$6e
	.dc.b $3a,$20,$75,$73,$69,$6e,$67,$20
	.dc.b $70,$6c,$61,$69,$6e,$20,$64,$63
	.dc.b $74,$20,$62,$75,$74,$20,$73,$69
	.dc.b $7a,$65,$20,$25,$64,$20,$69,$73
	.dc.b $20,$61,$20,$70,$6f,$77,$65,$72
	.dc.b $20,$6f,$66,$20,$74,$77,$6f,$0a
	.dc.b $00				
_?LC1:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$64,$63,$74
	.dc.b $5f,$70,$6c,$61,$69,$6e,$3a,$20
	.dc.b $63,$61,$6e,$20,$6f,$6e,$6c,$79
	.dc.b $20,$63,$72,$65,$61,$74,$65,$20
	.dc.b $77,$69,$74,$68,$20,$73,$69,$7a
	.dc.b $65,$20,$3e,$20,$30,$2c,$20,$72
	.dc.b $65,$71,$75,$65,$73,$74,$65,$64
	.dc.b $20,$25,$64,$0a
	.dc.b $00				
	.globl	___floatunsidf			
	.globl	___divdf3			
	.globl	___adddf3			
	.globl	___muldf3			
	.text					
	.align	2				
	.globl	_new_aubio_dct_plain		
						
_new_aubio_dct_plain:				
	lea (-64,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 104(sp),d6			
						
	pea 12.w				
	jbsr _MALLOC				
	move.l d0,80(sp)			
						
	move.l d0,100(sp)			
						
	move.l d6,(sp)				
	jbsr _aubio_is_power_of_two		
	addq.l #4,sp				
						
	subq.l #1,d0				
	jbeq _?L26				
_?L2:						
						
	tst.l d6				
	jble _?L27				
						
	move.l 76(sp),a0			
	move.l d6,(a0)				
						
	move.l d6,-(sp)				
	move.l d6,-(sp)				
	lea _new_fmat,a3			
	jbsr (a3)				
	addq.l #8,sp				
						
	move.l 76(sp),a1			
	move.l d0,4(a1)				
						
	move.l d6,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	addq.l #8,sp				
	move.l d0,84(sp)			
						
	move.l 76(sp),a0			
	move.l d0,8(a0)				
						
	lea ___floatunsidf,a5			
	move.l d6,-(sp)				
	jbsr (a5)				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,56(sp)			
	move.l a1,60(sp)			
	lea ___divdf3,a4			
	move.l d1,(sp)				
	move.l a0,-(sp)				
	clr.l -(sp)				
	move.l #1073741824,-(sp)		
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,88(sp)			
	move.l a1,92(sp)			
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr _sqrt				
	addq.l #8,sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,68(sp)			
	move.l a1,72(sp)			
	moveq #0,d7				
						
	clr.l 80(sp)				
	lea ___muldf3,a3			
_?L7:						
						
	moveq #1,d0				
	cmp.l d6,d0				
	jbeq _?L11				
						
	move.l 80(sp),-(sp)			
	jbsr (a5)				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,60(sp)			
	move.l d5,64(sp)			
						
	move.l 76(sp),a1			
	move.l 4(a1),a0				
	move.l 8(a0),a6				
	addq.l #4,a6				
						
	moveq #1,d4				
_?L8:						
						
	move.l d4,-(sp)				
	jbsr (a5)				
	addq.l #4,sp				
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l #1413754136,(sp)			
	move.l #1074340347,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _cos				
	addq.l #8,sp				
						
	move.l (a6)+,d3				
						
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l d3,a0				
	move.l d0,(a0,d7.l)			
	move.l d1,4(a0,d7.l)			
						
	addq.l #1,d4				
						
	cmp.l d6,d4				
	jbne _?L8				
_?L11:						
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr _sqrt				
	addq.l #8,sp				
						
	move.l 76(sp),a1			
	move.l 4(a1),a0				
						
	move.l 8(a0),a0				
						
	move.l (a0),a6				
						
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,(a6,d7.l)			
	move.l d1,4(a6,d7.l)			
						
	move.l 80(sp),d0			
	addq.l #1,d0				
						
	addq.l #8,d7				
	cmp.l d6,d0				
	jbeq _?L9				
						
	move.l d0,80(sp)			
	jbra _?L7				
_?L9:						
						
	move.l d0,76(sp)			
	move.l 92(sp),-(sp)			
	move.l 92(sp),-(sp)			
	jbsr _sqrt				
	addq.l #8,sp				
	move.l d0,d6				
	move.l d1,d7				
	moveq #0,d5				
						
	clr.l 68(sp)				
	lea ___muldf3,a3			
	move.l 80(sp),d4			
_?L12:						
						
	moveq #1,d0				
	cmp.l 76(sp),d0				
	jbeq _?L15				
						
	move.l 68(sp),-(sp)			
	jbsr (a5)				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,60(sp)			
	move.l a1,64(sp)			
						
	move.l 84(sp),a1			
	move.l 8(a1),a0				
	move.l (a0,d5.l),a6			
	addq.l #8,a6				
						
	moveq #1,d3				
_?L13:						
						
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #4,sp				
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l #1413754136,(sp)			
	move.l #1074340347,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _cos				
						
	addq.l #4,sp				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l d0,(a6)+				
	move.l d1,(a6)+				
	move.l d3,d0				
						
	addq.l #1,d3				
						
	cmp.l d4,d0				
	jbne _?L13				
_?L15:						
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr _sqrt				
	addq.l #8,sp				
						
	move.l 84(sp),a1			
	move.l 8(a1),a0				
						
	move.l (a0,d5.l),a6			
						
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	move.l 68(sp),d0			
	addq.l #1,d0				
						
	addq.l #4,d5				
	cmp.l 68(sp),d4				
	jbeq _?L1				
						
	move.l d0,68(sp)			
	jbra _?L12				
_?L27:						
						
	move.l d6,-(sp)				
	pea _?LC1				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l 76(sp),a0			
	move.l 4(a0),d0				
						
	jbeq _?L4				
						
	move.l d0,-(sp)				
	jbsr _del_fmat				
	addq.l #4,sp				
_?L4:						
						
	move.l 76(sp),a1			
	move.l 8(a1),d0				
						
	jbeq _?L5				
						
	move.l d0,-(sp)				
	jbsr _del_fmat				
	addq.l #4,sp				
_?L5:						
						
	move.l 76(sp),-(sp)			
	jbsr _MFREE				
	addq.l #4,sp				
						
	clr.l 96(sp)				
_?L1:						
						
	move.l 96(sp),d0			
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (64,sp),sp				
	rts					
_?L26:						
						
	moveq #16,d0				
	cmp.l d6,d0				
	jbcc _?L2				
						
	move.l d6,-(sp)				
	pea _?LC0				
	pea 4.w					
	jbsr _aubio_log				
	lea (12,sp),sp				
	jbra _?L2				
						
	.align	2				
	.globl	_del_aubio_dct_plain		
						
_del_aubio_dct_plain:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 4(a3),d0				
						
	jbeq _?L29				
						
	move.l d0,-(sp)				
	jbsr _del_fmat				
	addq.l #4,sp				
_?L29:						
						
	move.l 8(a3),d0				
						
	jbeq _?L30				
						
	move.l d0,-(sp)				
	jbsr _del_fmat				
	addq.l #4,sp				
_?L30:						
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
						
	.data					
_?LC2:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$64
	.dc.b $63,$74,$5f,$70,$6c,$61,$69,$6e
	.dc.b $3a,$20,$75,$73,$69,$6e,$67,$20
	.dc.b $69,$6e,$70,$75,$74,$20,$6c,$65
	.dc.b $6e,$67,$74,$68,$20,$25,$64,$2c
	.dc.b $20,$62,$75,$74,$20,$6f,$75,$74
	.dc.b $70,$75,$74,$20,$6c,$65,$6e,$67
	.dc.b $74,$68,$20,$3d,$20,$25,$64,$20
	.dc.b $61,$6e,$64,$20,$73,$69,$7a,$65
	.dc.b $20,$3d,$20,$25,$64,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_dct_plain_do		
						
_aubio_dct_plain_do:				
	movem.l a3/a4/a5,-(sp)			
	move.l 16(sp),a3			
	move.l 20(sp),a4			
	move.l 24(sp),a5			
						
	move.l (a4),d0				
						
	move.l (a5),d1				
						
	move.l (a3),a0				
						
	cmp.l d0,d1				
	jbne _?L40				
						
	cmp.l d0,a0				
	jbeq _?L41				
_?L40:						
						
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	pea _?LC2				
	pea 4.w					
	jbsr _aubio_log				
	lea (20,sp),sp				
_?L41:						
						
	move.l a5,24(sp)			
	move.l a4,20(sp)			
	move.l 4(a3),16(sp)			
						
	movem.l (sp)+,a3/a4/a5			
						
	jbra _fmat_vecmul			
						
	.align	2				
	.globl	_aubio_dct_plain_rdo		
						
_aubio_dct_plain_rdo:				
	movem.l a3/a4/a5,-(sp)			
	move.l 16(sp),a3			
	move.l 20(sp),a4			
	move.l 24(sp),a5			
						
	move.l (a4),d0				
						
	move.l (a5),d1				
						
	move.l (a3),a0				
						
	cmp.l d0,d1				
	jbne _?L45				
						
	cmp.l d0,a0				
	jbeq _?L46				
_?L45:						
						
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	pea _?LC2				
	pea 4.w					
	jbsr _aubio_log				
	lea (20,sp),sp				
_?L46:						
						
	move.l a5,24(sp)			
	move.l a4,20(sp)			
	move.l 8(a3),16(sp)			
						
	movem.l (sp)+,a3/a4/a5			
						
	jbra _fmat_vecmul			
						
						
