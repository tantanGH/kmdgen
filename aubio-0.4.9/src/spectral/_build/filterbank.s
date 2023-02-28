* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"filterbank.c"			
						
						
						
						
						
	.text					
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$66,$69,$6c
	.dc.b $74,$65,$72,$62,$61,$6e,$6b,$3a
	.dc.b $20,$6e,$5f,$66,$69,$6c,$74,$65
	.dc.b $72,$73,$20,$73,$68,$6f,$75,$6c
	.dc.b $64,$20,$62,$65,$20,$3e,$20,$30
	.dc.b $2c,$20,$67,$6f,$74,$20,$25,$64
	.dc.b $0a
	.dc.b $00				
_?LC1:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$66,$69,$6c
	.dc.b $74,$65,$72,$62,$61,$6e,$6b,$3a
	.dc.b $20,$77,$69,$6e,$5f,$73,$20,$73
	.dc.b $68,$6f,$75,$6c,$64,$20,$62,$65
	.dc.b $20,$3e,$20,$30,$2c,$20,$67,$6f
	.dc.b $74,$20,$25,$64,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_new_aubio_filterbank		
						
_new_aubio_filterbank:				
	movem.l d3/d4/d5/a3,-(sp)		
	move.l 20(sp),d5			
	move.l 24(sp),d3			
						
	pea 28.w				
	jbsr _MALLOC				
	addq.l #4,sp				
	move.l d0,d4				
						
	move.l d0,a3				
						
	tst.l d5				
	jble _?L8				
						
	tst.l d3				
	jble _?L9				
						
	move.l d3,(a3)				
						
	move.l d5,4(a3)				
						
	lsr.l #1,d3				
						
	move.l d3,a0				
	pea 1(a0)				
	move.l d5,-(sp)				
	jbsr _new_fmat				
	addq.l #8,sp				
						
	move.l d0,8(a3)				
						
	move.l #1072693248,12(a3)		
	clr.l 16(a3)				
						
	move.l #1072693248,20(a3)		
	clr.l 24(a3)				
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/a3		
	rts					
_?L9:						
						
	move.l d3,-(sp)				
	pea _?LC1				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
_?L3:						
						
	move.l d4,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	sub.l a3,a3				
_?L10:						
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/a3		
	rts					
_?L8:						
						
	move.l d5,-(sp)				
	pea _?LC0				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l d4,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L10				
						
	.align	2				
	.globl	_del_aubio_filterbank		
						
_del_aubio_filterbank:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 8(a3),-(sp)			
	jbsr _del_fmat				
	addq.l #4,sp				
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
						
	.globl	___nedf2			
	.align	2				
	.globl	_aubio_filterbank_do		
						
_aubio_filterbank_do:				
	subq.l #8,sp				
	movem.l d3/d4/d5/a3,-(sp)		
	move.l 28(sp),a3			
	move.l 32(sp),a0			
						
	move.l (a0),16(sp)			
						
	move.l 4(a0),20(sp)			
						
	move.l 20(a3),d4			
	move.l 24(a3),d5			
						
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___nedf2				
	lea (16,sp),sp				
	tst.l d0				
	jbne _?L16				
	moveq #16,d3				
	add.l sp,d3				
						
	move.l 36(sp),-(sp)			
	move.l d3,-(sp)				
	move.l 8(a3),-(sp)			
	jbsr _fmat_vecmul			
	lea (12,sp),sp				
						
	movem.l (sp)+,d3/d4/d5/a3		
	addq.l #8,sp				
	rts					
_?L16:						
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	moveq #24,d3				
	add.l sp,d3				
	move.l d3,-(sp)				
	jbsr _fvec_pow				
	lea (12,sp),sp				
						
	move.l 36(sp),-(sp)			
	move.l d3,-(sp)				
	move.l 8(a3),-(sp)			
	jbsr _fmat_vecmul			
	lea (12,sp),sp				
						
	movem.l (sp)+,d3/d4/d5/a3		
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_aubio_filterbank_get_coeffs	
						
_aubio_filterbank_get_coeffs:			
						
	move.l 4(sp),a0				
	move.l 8(a0),d0				
	rts					
						
	.align	2				
	.globl	_aubio_filterbank_set_coeffs	
						
_aubio_filterbank_set_coeffs:			
						
	move.l 4(sp),a0				
	move.l 8(a0),-(sp)			
	move.l 12(sp),-(sp)			
	jbsr _fmat_copy				
	addq.l #8,sp				
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_filterbank_set_norm	
						
_aubio_filterbank_set_norm:			
	move.l a3,-(sp)				
						
	lea ___nedf2,a3				
	clr.l -(sp)				
	clr.l -(sp)				
	move.l 24(sp),-(sp)			
	move.l 24(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L24				
						
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	move.l 24(sp),-(sp)			
	move.l 24(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jbne _?L27				
_?L24:						
						
	move.l 8(sp),a0				
	move.l 12(sp),12(a0)			
	move.l 16(sp),16(a0)			
						
	moveq #0,d0				
						
	move.l (sp)+,a3				
	rts					
_?L27:						
						
	moveq #1,d0				
						
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_aubio_filterbank_get_norm	
						
_aubio_filterbank_get_norm:			
						
	move.l 4(sp),a0				
	move.l 12(a0),d0			
	move.l 16(a0),d1			
	rts					
						
	.align	2				
	.globl	_aubio_filterbank_set_power	
						
_aubio_filterbank_set_power:			
						
	move.l 4(sp),a0				
	move.l 8(sp),d0				
	move.l 12(sp),d1			
	move.l d0,20(a0)			
	move.l d1,24(a0)			
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_filterbank_get_power	
						
_aubio_filterbank_get_power:			
						
	move.l 4(sp),a0				
	move.l 20(a0),d0			
	move.l 24(a0),d1			
	rts					
						
						
