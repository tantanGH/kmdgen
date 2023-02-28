* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"awhitening.c"			
						
						
						
						
						
	.text					
	.globl	___muldf3			
	.globl	___gtdf2			
	.globl	___ltdf2			
	.globl	___divdf3			
	.align	2				
	.globl	_aubio_spectral_whitening_do	
						
_aubio_spectral_whitening_do:			
	subq.l #8,sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 48(sp),a5			
	move.l 52(sp),a0			
						
	move.l 36(a5),a1			
						
	move.l (a0),d1				
	move.l (a1),d0				
	cmp.l d0,d1				
	jbcc _?L2				
	move.l d1,d0				
_?L2:						
						
	tst.l d0				
	jbeq _?L1				
	move.l 4(a1),a3				
	move.l 4(a0),a4				
	lsl.l #3,d0				
	move.l d0,d3				
	add.l a3,d3				
_?L7:						
						
	move.l (a3)+,d0				
	move.l (a3)+,d1				
	move.l 24(a5),-(sp)			
	move.l 20(a5),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
	move.l 28(a5),d4			
	move.l 32(a5),d5			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L4				
	move.l d6,d4				
	move.l d7,d5				
_?L4:						
	move.l a4,a6				
						
	move.l (a4),d6				
	move.l 4(a4),d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L6				
	move.l d4,d6				
	move.l d5,d7				
_?L6:						
						
	move.l d6,-8(a3)			
	move.l d7,-4(a3)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 4(a6),-(sp)			
	move.l (a6),-(sp)			
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	cmp.l d3,a3				
	jbne _?L7				
_?L1:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
						
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$70,$65
	.dc.b $63,$74,$72,$61,$6c,$5f,$77,$68
	.dc.b $69,$74,$65,$6e,$69,$6e,$67,$3a
	.dc.b $20,$67,$6f,$74,$20,$62,$75,$66
	.dc.b $66,$65,$72,$5f,$73,$69,$7a,$65
	.dc.b $20,$25,$64,$2c,$20,$62,$75,$74
	.dc.b $20,$63,$61,$6e,$20,$6e,$6f,$74
	.dc.b $20,$62,$65,$20,$3c,$20,$31,$0a
	.dc.b $00				
_?LC1:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$70,$65
	.dc.b $63,$74,$72,$61,$6c,$5f,$77,$68
	.dc.b $69,$74,$65,$6e,$69,$6e,$67,$3a
	.dc.b $20,$67,$6f,$74,$20,$68,$6f,$70
	.dc.b $5f,$73,$69,$7a,$65,$20,$25,$64
	.dc.b $2c,$20,$62,$75,$74,$20,$63,$61
	.dc.b $6e,$20,$6e,$6f,$74,$20,$62,$65
	.dc.b $20,$3c,$20,$31,$0a
	.dc.b $00				
_?LC2:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$70,$65
	.dc.b $63,$74,$72,$61,$6c,$5f,$77,$68
	.dc.b $69,$74,$65,$6e,$69,$6e,$67,$3a
	.dc.b $20,$67,$6f,$74,$20,$73,$61,$6d
	.dc.b $70,$6c,$65,$72,$61,$74,$65,$20
	.dc.b $25,$64,$2c,$20,$62,$75,$74,$20
	.dc.b $63,$61,$6e,$20,$6e,$6f,$74,$20
	.dc.b $62,$65,$20,$3c,$20,$31,$0a
	.dc.b $00				
	.globl	___floatunsisf			
	.globl	___divsf3			
	.globl	___extendsfdf2			
	.text					
	.align	2				
	.globl	_new_aubio_spectral_whitening	
						
_new_aubio_spectral_whitening:			
	movem.l d3/d4/d5/d6/a3/a4,-(sp)		
	move.l 28(sp),d4			
	move.l 32(sp),d5			
	move.l 36(sp),d6			
						
	pea 40.w				
	jbsr _MALLOC				
	addq.l #4,sp				
	move.l d0,d3				
						
	move.l d0,a3				
						
	tst.l d4				
	jble _?L23				
						
	tst.l d5				
	jble _?L24				
						
	tst.l d6				
	jble _?L25				
						
	move.l d4,d0				
	lsr.l #1,d0				
						
	move.l d0,a0				
	pea 1(a0)				
	jbsr _new_fvec				
	move.l d0,d3				
						
	move.l d0,36(a3)			
						
	move.l d4,(a3)				
						
	move.l d5,4(a3)				
						
	move.l d6,8(a3)				
						
	move.l #1058682594,28(a3)		
	move.l #-350469331,32(a3)		
						
	move.l #1081032704,12(a3)		
	clr.l 16(a3)				
						
	lea ___floatunsisf,a4			
	move.l d5,(sp)				
	jbsr (a4)				
	move.l d0,d4				
						
	move.l d6,(sp)				
	jbsr (a4)				
						
	move.l d0,(sp)				
	move.l d4,-(sp)				
	jbsr ___divsf3				
	addq.l #4,sp				
	move.l d0,(sp)				
	jbsr ___extendsfdf2			
						
	clr.l (sp)				
	move.l #1081032704,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l #-755914244,-(sp)		
	move.l #1062232653,-(sp)		
	jbsr _pow				
	lea (16,sp),sp				
	move.l d0,20(a3)			
	move.l d1,24(a3)			
						
	move.l #-350469331,-(sp)		
	move.l #1058682594,-(sp)		
	move.l d3,-(sp)				
	jbsr _fvec_set_all			
	lea (12,sp),sp				
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/d6/a3/a4		
	rts					
_?L25:						
						
	move.l d6,-(sp)				
	pea _?LC2				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
_?L17:						
						
	move.l d3,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	sub.l a3,a3				
_?L26:						
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/d6/a3/a4		
	rts					
_?L23:						
						
	move.l d4,-(sp)				
	pea _?LC0				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l d3,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L26				
_?L24:						
						
	move.l d5,-(sp)				
	pea _?LC1				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l d3,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L26				
						
	.align	2				
	.globl	_aubio_spectral_whitening_set_relax_time
						
_aubio_spectral_whitening_set_relax_time:	
	subq.l #8,sp				
	movem.l d3/a3/a4,-(sp)			
	move.l 24(sp),a3			
						
	move.l 28(sp),12(a3)			
	move.l 32(sp),16(a3)			
						
	lea ___floatunsisf,a4			
	move.l 4(a3),-(sp)			
	jbsr (a4)				
	move.l d0,d3				
						
	move.l 8(a3),(sp)			
	jbsr (a4)				
						
	move.l d0,(sp)				
	move.l d3,-(sp)				
	jbsr ___divsf3				
	addq.l #4,sp				
	move.l d0,(sp)				
	jbsr ___extendsfdf2			
	addq.l #4,sp				
						
	move.l 32(sp),-(sp)			
	move.l 32(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l #-755914244,-(sp)		
	move.l #1062232653,-(sp)		
	jbsr _pow				
	lea (16,sp),sp				
	move.l d0,12(sp)			
	move.l d1,16(sp)			
						
	move.l d0,20(a3)			
	move.l d1,24(a3)			
						
	moveq #0,d0				
	movem.l (sp)+,d3/a3/a4			
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_aubio_spectral_whitening_get_relax_time
						
_aubio_spectral_whitening_get_relax_time:	
						
	move.l 4(sp),a0				
	move.l 12(a0),d0			
	move.l 16(a0),d1			
	rts					
						
	.align	2				
	.globl	_aubio_spectral_whitening_set_floor
						
_aubio_spectral_whitening_set_floor:		
						
	move.l 4(sp),a0				
	move.l 8(sp),d0				
	move.l 12(sp),d1			
	move.l d0,28(a0)			
	move.l d1,32(a0)			
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_spectral_whitening_get_floor
						
_aubio_spectral_whitening_get_floor:		
						
	move.l 4(sp),a0				
	move.l 28(a0),d0			
	move.l 32(a0),d1			
	rts					
						
	.align	2				
	.globl	_aubio_spectral_whitening_reset	
						
_aubio_spectral_whitening_reset:		
	move.l 4(sp),a0				
						
	move.l 32(a0),-(sp)			
	move.l 28(a0),-(sp)			
	move.l 36(a0),-(sp)			
	jbsr _fvec_set_all			
	lea (12,sp),sp				
						
	rts					
						
	.align	2				
	.globl	_del_aubio_spectral_whitening	
						
_del_aubio_spectral_whitening:			
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 36(a3),-(sp)			
	jbsr _del_fvec				
	addq.l #4,sp				
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
						
						
