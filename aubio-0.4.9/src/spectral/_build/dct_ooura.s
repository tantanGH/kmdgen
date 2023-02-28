* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"dct_ooura.c"			
						
						
						
						
						
	.text					
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$64,$63,$74
	.dc.b $5f,$6f,$6f,$75,$72,$61,$3a,$20
	.dc.b $63,$61,$6e,$20,$6f,$6e,$6c,$79
	.dc.b $20,$63,$72,$65,$61,$74,$65,$20
	.dc.b $77,$69,$74,$68,$20,$73,$69,$7a
	.dc.b $65,$73,$20,$70,$6f,$77,$65,$72
	.dc.b $20,$6f,$66,$20,$74,$77,$6f,$2c
	.dc.b $20,$72,$65,$71,$75,$65,$73,$74
	.dc.b $65,$64,$20,$25,$64,$0a
	.dc.b $00				
	.globl	___floatunsidf			
	.globl	___divdf3			
	.globl	___fixdfsi			
	.globl	___muldf3			
	.globl	___adddf3			
	.text					
	.align	2				
	.globl	_new_aubio_dct_ooura		
						
_new_aubio_dct_ooura:				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 40(sp),d4			
						
	pea 56.w				
	lea _MALLOC,a5				
	jbsr (a5)				
	move.l d0,a3				
						
	move.l d4,(sp)				
	jbsr _aubio_is_power_of_two		
	addq.l #4,sp				
	move.l d0,d3				
						
	moveq #1,d0				
	cmp.l d3,d0				
	jbne _?L2				
						
	tst.l d4				
	jble _?L2				
						
	move.l d4,(a3)				
						
	move.l d4,-(sp)				
	jbsr _new_fvec				
						
	move.l d0,4(a3)				
						
	move.l (a3),d1				
	move.l d1,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d1,d0				
	add.l d0,d0				
	moveq #-8,d1				
	and.l d0,d1				
	move.l d1,(sp)				
	jbsr (a5)				
						
	move.l d0,8(a3)				
						
	move.l (a3),d0				
	lsr.l #1,d0				
	lea ___floatunsidf,a6			
	move.l d0,(sp)				
	jbsr (a6)				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _log				
	addq.l #8,sp				
	lea ___divdf3,a4			
	move.l #-17155601,-(sp)			
	move.l #1072049730,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _floor				
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixdfsi				
	addq.l #8,sp				
	lsl.l d0,d3				
	move.l d3,d3				
	jbpl _?L7				
	addq.l #1,d3				
_?L7:						
	moveq #-2,d0				
	and.l d0,d3				
	add.l d3,d3				
	move.l d3,a0				
	pea 12(a0)				
	jbsr (a5)				
	move.l d0,a0				
						
	move.l d0,12(a3)			
						
	clr.l (a0)				
						
	move.l (a3),(sp)			
	jbsr (a6)				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,a5				
	move.l a1,a6				
	clr.l (sp)				
	move.l #1074790400,-(sp)		
	move.l a6,-(sp)				
	move.l a5,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr (a4)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l #_sqrt,d4			
	move.l d4,a0				
	jbsr (a0)				
	addq.l #8,sp				
	move.l d0,a0				
						
	move.l #___adddf3,d3			
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d3,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d6,16(a3)			
	move.l d7,20(a3)			
						
	move.l a6,-(sp)				
	move.l a5,-(sp)				
	move.l a6,-(sp)				
	move.l a5,-(sp)				
	move.l d3,a0				
	jbsr (a0)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr (a4)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d4,a0				
	jbsr (a0)				
	addq.l #8,sp				
	move.l d0,a0				
						
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d3,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d4,24(a3)			
	move.l d5,28(a3)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,32(a3)			
	move.l d1,36(a3)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,40(a3)			
	move.l d1,44(a3)			
						
	move.l a6,-(sp)				
	move.l a5,-(sp)				
	clr.l -(sp)				
	move.l #1073741824,-(sp)		
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,48(a3)			
	move.l d1,52(a3)			
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L2:						
						
	move.l d4,-(sp)				
	pea _?LC0				
	clr.l -(sp)				
	jbsr _aubio_log				
						
	addq.l #8,sp				
	move.l a3,(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	sub.l a3,a3				
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.align	2				
	.globl	_del_aubio_dct_ooura		
						
_del_aubio_dct_ooura:				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 12(sp),a3			
						
	move.l 4(a3),-(sp)			
	jbsr _del_fvec				
						
	move.l 12(a3),(sp)			
	lea _MFREE,a4				
	jbsr (a4)				
						
	move.l 8(a3),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _MFREE				
						
	.align	2				
	.globl	_aubio_dct_ooura_do		
						
_aubio_dct_ooura_do:				
	subq.l #8,sp				
	movem.l d4/d5/a3/a4/a5/a6,-(sp)		
	move.l 36(sp),a4			
	move.l 44(sp),d5			
						
	move.l 4(a4),-(sp)			
	move.l 44(sp),-(sp)			
	jbsr _fvec_copy				
						
	addq.l #4,sp				
	move.l 8(a4),(sp)			
	move.l 12(a4),-(sp)			
	move.l 4(a4),a0				
	move.l 4(a0),-(sp)			
	pea -1.w				
	move.l (a4),-(sp)			
	jbsr _aubio_ooura_ddct			
	lea (20,sp),sp				
						
	move.l 4(a4),d4				
						
	move.l d4,a0				
	move.l 4(a0),a5				
						
	lea ___muldf3,a6			
	move.l 20(a4),-(sp)			
	move.l 16(a4),-(sp)			
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
						
	move.l d4,a0				
	move.l (a0),d0				
						
	moveq #1,d1				
	cmp.l d0,d1				
	jbcc _?L11				
	lea (8,a5),a3				
	lsl.l #3,d0				
	add.l d0,a5				
_?L12:						
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	move.l 28(a4),-(sp)			
	move.l 24(a4),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,24(sp)			
	move.l d1,28(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l a3,a5				
	jbne _?L12				
_?L11:						
						
	move.l d5,40(sp)			
	move.l d4,36(sp)			
						
	movem.l (sp)+,d4/d5/a3/a4/a5/a6		
	addq.l #8,sp				
						
	jbra _fvec_copy				
						
	.align	2				
	.globl	_aubio_dct_ooura_rdo		
						
_aubio_dct_ooura_rdo:				
	subq.l #8,sp				
	movem.l d3/d4/a3/a4/a5/a6,-(sp)		
	move.l 36(sp),a4			
	move.l 44(sp),d4			
						
	move.l 4(a4),-(sp)			
	move.l 44(sp),-(sp)			
	jbsr _fvec_copy				
	addq.l #8,sp				
						
	move.l 4(a4),a3				
						
	move.l 4(a3),a6				
						
	lea ___muldf3,a5			
	move.l 36(a4),-(sp)			
	move.l 32(a4),-(sp)			
	move.l 4(a6),-(sp)			
	move.l (a6),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a6)				
	move.l a1,4(a6)				
						
	move.l (a3),d3				
						
	moveq #1,d0				
	cmp.l d3,d0				
	jbcc _?L17				
	lea (8,a6),a3				
	lsl.l #3,d3				
	add.l a6,d3				
_?L18:						
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	move.l 44(a4),-(sp)			
	move.l 40(a4),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,24(sp)			
	move.l d1,28(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l d3,a3				
	jbne _?L18				
						
	move.l (a6),a0				
	move.l 4(a6),a1				
_?L17:						
						
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	move.l 8(a4),-(sp)			
	move.l 12(a4),-(sp)			
	move.l a6,-(sp)				
	pea 1.w					
	move.l (a4),-(sp)			
	jbsr _aubio_ooura_ddct			
	lea (20,sp),sp				
						
	move.l 4(a4),a6				
						
	move.l (a6),d3				
						
	jbeq _?L21				
	move.l 4(a6),a3				
	lsl.l #3,d3				
	add.l a3,d3				
_?L20:						
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	move.l 52(a4),-(sp)			
	move.l 48(a4),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,24(sp)			
	move.l d1,28(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l d3,a3				
	jbne _?L20				
_?L21:						
						
	move.l d4,40(sp)			
	move.l a6,36(sp)			
						
	movem.l (sp)+,d3/d4/a3/a4/a5/a6		
	addq.l #8,sp				
						
	jbra _fvec_copy				
						
						
