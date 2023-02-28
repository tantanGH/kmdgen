* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"fft.c"				
						
						
						
						
						
	.text					
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$66,$66,$74
	.dc.b $3a,$20,$67,$6f,$74,$20,$77,$69
	.dc.b $6e,$73,$69,$7a,$65,$20,$25,$64
	.dc.b $2c,$20,$62,$75,$74,$20,$63,$61
	.dc.b $6e,$20,$6e,$6f,$74,$20,$62,$65
	.dc.b $20,$3c,$20,$32,$0a
	.dc.b $00				
_?LC1:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$66,$66,$74
	.dc.b $3a,$20,$63,$61,$6e,$20,$6f,$6e
	.dc.b $6c,$79,$20,$63,$72,$65,$61,$74
	.dc.b $65,$20,$77,$69,$74,$68,$20,$73
	.dc.b $69,$7a,$65,$73,$20,$70,$6f,$77
	.dc.b $65,$72,$20,$6f,$66,$20,$74,$77
	.dc.b $6f,$2c,$20,$72,$65,$71,$75,$65
	.dc.b $73,$74,$65,$64,$20,$25,$64,$2c
	.dc.b $20,$74,$72,$79,$20,$72,$65,$63
	.dc.b $6f,$6d,$70,$69,$6c,$69,$6e,$67
	.dc.b $20,$61,$75,$62,$69,$6f,$20,$77
	.dc.b $69,$74,$68,$20,$2d,$2d,$65,$6e
	.dc.b $61,$62,$6c,$65,$2d,$66,$66,$74
	.dc.b $77,$33,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_new_aubio_fft			
						
_new_aubio_fft:					
	movem.l d3/a3/a4,-(sp)			
	move.l 16(sp),d3			
						
	pea 28.w				
	lea _MALLOC,a4				
	jbsr (a4)				
	addq.l #4,sp				
	move.l d0,a3				
						
	moveq #1,d0				
	cmp.l d3,d0				
	jbge _?L8				
						
	move.l d3,-(sp)				
	jbsr _aubio_is_power_of_two		
	addq.l #4,sp				
						
	subq.l #1,d0				
	jbne _?L9				
						
	move.l d3,(a3)				
						
	move.l d3,d0				
	lsr.l #1,d0				
						
	addq.l #1,d0				
	move.l d0,4(a3)				
						
	move.l d3,-(sp)				
	jbsr _new_fvec				
						
	move.l d0,24(a3)			
						
	move.l (a3),d0				
	lsl.l #3,d0				
	move.l d0,(sp)				
	jbsr (a4)				
						
	move.l d0,8(a3)				
						
	move.l (a3),d0				
	lsl.l #3,d0				
	move.l d0,(sp)				
	jbsr (a4)				
						
	move.l d0,12(a3)			
						
	move.l 4(a3),d0				
	add.l d0,d0				
	add.l d0,d0				
	move.l d0,(sp)				
	jbsr (a4)				
						
	move.l d0,20(a3)			
						
	move.l 4(a3),d0				
	lsl.l #3,d0				
	move.l d0,(sp)				
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,16(a3)			
						
	move.l 20(a3),a0			
	clr.l (a0)				
						
	move.l a3,d0				
	movem.l (sp)+,d3/a3/a4			
	rts					
_?L9:						
						
	move.l d3,-(sp)				
	pea _?LC1				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
_?L3:						
						
	move.l a3,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	sub.l a3,a3				
_?L10:						
						
	move.l a3,d0				
	movem.l (sp)+,d3/a3/a4			
	rts					
_?L8:						
						
	move.l d3,-(sp)				
	pea _?LC0				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L10				
						
	.align	2				
	.globl	_del_aubio_fft			
						
_del_aubio_fft:					
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 12(sp),a3			
						
	move.l 16(a3),-(sp)			
	lea _MFREE,a4				
	jbsr (a4)				
						
	move.l 20(a3),(sp)			
	jbsr (a4)				
						
	move.l 24(a3),(sp)			
	jbsr _del_fvec				
						
	move.l 8(a3),(sp)			
	jbsr (a4)				
						
	move.l 12(a3),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _MFREE				
						
	.align	2				
	.globl	_aubio_fft_do_complex		
						
_aubio_fft_do_complex:				
	movem.l d3/d4/a3/a4,-(sp)		
	move.l 20(sp),a3			
						
	move.l (a3),d1				
						
	move.l 8(a3),d2				
						
	tst.l d1				
	jbeq _?L19				
	move.l 24(sp),a0			
	move.l 4(a0),a0				
	move.l d2,a1				
	move.l d1,d0				
	lsl.l #3,d0				
	add.l a0,d0				
_?L15:						
						
	move.l (a0)+,d3				
	move.l (a0)+,d4				
	move.l d3,(a1)+				
	move.l d4,(a1)+				
						
	cmp.l a0,d0				
	jbne _?L15				
_?L14:						
						
	move.l 16(a3),-(sp)			
	move.l 20(a3),-(sp)			
	move.l d2,-(sp)				
	pea 1.w					
	move.l d1,-(sp)				
	jbsr _aubio_ooura_rdft			
	lea (20,sp),sp				
						
	move.l 8(a3),a2				
						
	move.l 28(sp),a0			
	move.l 4(a0),a1				
						
	move.l (a2),d0				
	move.l 4(a2),d1				
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l (a3),d0				
						
	move.l d0,d1				
	lsr.l #1,d1				
						
	lsl.l #3,d1				
	move.l 8(a2),d2				
	move.l 12(a2),d3			
	move.l d2,(a1,d1.l)			
	move.l d3,4(a1,d1.l)			
						
	move.l 4(a3),d1				
						
	move.l d1,a0				
	subq.l #1,a0				
						
	moveq #1,d3				
	cmp.l a0,d3				
	jbcc _?L13				
	lea (16,a2),a0				
	lea (8,a1),a3				
	subq.l #1,d0				
	lsl.l #3,d0				
	add.l d0,a1				
	lsl.l #4,d1				
	lea -16(a2,d1.l),a4			
_?L17:						
						
	move.l (a0),d0				
	move.l 4(a0),d1				
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	move.l 8(a0),a2				
	add.l #-2147483648,a2			
	move.l 12(a0),d2			
	move.l a2,d0				
	move.l d2,d1				
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	lea (16,a0),a0				
	subq.l #8,a1				
	cmp.l a0,a4				
	jbne _?L17				
_?L13:						
						
	movem.l (sp)+,d3/d4/a3/a4		
	rts					
_?L19:						
						
	moveq #0,d1				
	jbra _?L14				
						
	.globl	___floatunsidf			
	.globl	___divdf3			
	.globl	___muldf3			
	.align	2				
	.globl	_aubio_fft_rdo_complex		
						
_aubio_fft_rdo_complex:				
	subq.l #8,sp				
	movem.l d3/d4/d5/a3/a4/a5/a6,-(sp)	
	move.l 40(sp),a5			
						
	move.l (a5),d3				
						
	move.l d3,-(sp)				
	jbsr ___floatunsidf			
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1073741824,-(sp)		
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 44(sp),a0			
	move.l 4(a0),a3				
						
	move.l 12(a5),a6			
						
	move.l (a3),d0				
	move.l 4(a3),d1				
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	move.l d3,d0				
	lsr.l #1,d0				
						
	lsl.l #3,d0				
						
	move.l (a3,d0.l),d1			
	move.l 4(a3,d0.l),d2			
	move.l d1,8(a6)				
	move.l d2,12(a6)			
						
	move.l 4(a5),d0				
						
	move.l d0,d1				
	subq.l #1,d1				
						
	moveq #1,d2				
	cmp.l d1,d2				
	jbcc _?L25				
	lea (8,a3),a2				
	lea (16,a6),a1				
	move.l d3,d1				
	subq.l #1,d1				
	lsl.l #3,d1				
	lea (a3,d1.l),a0			
	lsl.l #3,d0				
	lea -8(a3,d0.l),a4			
_?L26:						
						
	move.l (a2)+,d0				
	move.l (a2)+,d1				
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l (a0),a3				
	add.l #-2147483648,a3			
	move.l 4(a0),d2				
	move.l a3,d0				
	move.l d2,d1				
	move.l d0,8(a1)				
	move.l d1,12(a1)			
						
	lea (16,a1),a1				
	subq.l #8,a0				
	cmp.l a2,a4				
	jbne _?L26				
_?L25:						
						
	move.l 16(a5),-(sp)			
	move.l 20(a5),-(sp)			
	move.l a6,-(sp)				
	pea -1.w				
	move.l d3,-(sp)				
	jbsr _aubio_ooura_rdft			
	lea (20,sp),sp				
						
	move.l (a5),d3				
						
	jbeq _?L24				
	move.l 12(a5),a3			
	move.l 48(sp),a0			
	move.l 4(a0),a4				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___muldf3,a5			
_?L28:						
						
	move.l (a3)+,d0				
	move.l (a3)+,d1				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	cmp.l d3,a3				
	jbne _?L28				
_?L24:						
						
	movem.l (sp)+,d3/d4/d5/a3/a4/a5/a6	
	addq.l #8,sp				
	rts					
						
	.globl	___ltdf2			
	.align	2				
	.globl	_aubio_fft_get_phas		
						
_aubio_fft_get_phas:				
	lea (-12,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 52(sp),a3			
	move.l 56(sp),a4			
						
	move.l 4(a3),a5				
						
	move.l 8(a4),44(sp)			
						
	clr.l d6				
	clr.l d7				
	move.l #___ltdf2,d5			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l d5,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L43				
	move.l d6,a1				
	move.l d7,a0				
_?L37:						
						
	move.l a1,d0				
	move.l a0,d1				
	move.l 44(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l (a4),d3				
						
	move.l (a3),d4				
						
	move.l d3,d0				
	subq.l #1,d0				
						
	moveq #1,d1				
	cmp.l d0,d1				
	jbcc _?L42				
	lea (8,a5),a4				
	move.l d4,d0				
	subq.l #1,d0				
	lsl.l #3,d0				
	lea (a5,d0.l),a3			
	move.l 44(sp),a6			
	addq.l #8,a6				
	move.l d3,d0				
	lsl.l #3,d0				
	lea -8(a5,d0.l),a0			
	move.l a0,d7				
	move.l #_atan2,d6			
_?L41:						
						
	subq.l #8,sp				
	move.l (a4)+,(sp)			
	move.l (a4)+,4(sp)			
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	move.l d6,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
						
	move.l d0,(a6)+				
	move.l d1,(a6)+				
						
	subq.l #8,a3				
	cmp.l a4,d7				
	jbne _?L41				
_?L42:						
						
	add.l #536870911,d3			
	lsl.l #3,d3				
	move.l 44(sp),a6			
	add.l d3,a6				
						
	lsr.l #1,d4				
						
	lsl.l #3,d4				
						
	clr.l d6				
	clr.l d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 4(a5,d4.l),-(sp)			
	move.l (a5,d4.l),-(sp)			
	move.l d5,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L49				
	move.l d6,a1				
	move.l d7,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (12,sp),sp				
	rts					
_?L43:						
	move.l #1074340347,a1			
	move.l #1413754136,a0			
	jbra _?L37				
_?L49:						
	move.l #1074340347,a1			
	move.l #1413754136,a0			
						
	move.l a1,d0				
	move.l a0,d1				
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (12,sp),sp				
	rts					
						
	.globl	___adddf3			
	.align	2				
	.globl	_aubio_fft_get_norm		
						
_aubio_fft_get_norm:				
	lea (-28,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 68(sp),a0			
	move.l 72(sp),a1			
						
	move.l 4(a0),48(sp)			
						
	move.l 4(a1),52(sp)			
						
	move.l 48(sp),a2			
	move.l (a2),d3				
	bclr #31,d3				
	move.l 4(a2),d2				
	move.l d3,d0				
	move.l d2,d1				
	move.l 52(sp),a2			
	move.l d0,(a2)				
	move.l d1,4(a2)				
						
	move.l (a1),56(sp)			
						
	move.l (a0),60(sp)			
						
	move.l 56(sp),d0			
	subq.l #1,d0				
						
	moveq #1,d1				
	cmp.l d0,d1				
	jbcc _?L53				
	move.l 48(sp),a6			
	addq.l #8,a6				
	move.l 60(sp),d0			
	subq.l #1,d0				
	lsl.l #3,d0				
	move.l d0,a3				
	add.l 48(sp),a3				
	move.l 52(sp),d3			
	addq.l #8,d3				
	move.l 56(sp),d0			
	lsl.l #3,d0				
	move.l 48(sp),a0			
	lea -8(a0,d0.l),a0			
	move.l a0,44(sp)			
	lea ___muldf3,a4			
	lea ___adddf3,a5			
_?L52:						
						
	move.l (a6)+,d0				
	move.l (a6)+,d1				
						
	move.l (a3),d6				
	move.l 4(a3),d7				
						
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _sqrt				
	addq.l #8,sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
						
	move.l d3,a1				
	move.l d0,(a1)+				
	move.l d1,(a1)+				
	move.l a1,d3				
						
	subq.l #8,a3				
	cmp.l 44(sp),a6				
	jbne _?L52				
_?L53:						
						
	move.l 56(sp),d3			
	lsl.l #3,d3				
						
	move.l 60(sp),d0			
	lsr.l #1,d0				
						
	lsl.l #3,d0				
						
	move.l 48(sp),a0			
	move.l (a0,d0.l),d2			
	bclr #31,d2				
	move.l 4(a0,d0.l),a0			
	move.l d2,d0				
	move.l a0,d1				
	move.l 52(sp),a2			
	move.l d0,-8(a2,d3.l)			
	move.l d1,-4(a2,d3.l)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (28,sp),sp				
	rts					
						
	.align	2				
	.globl	_aubio_fft_get_spectrum		
						
_aubio_fft_get_spectrum:			
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	move.l 12(sp),d3			
	move.l 16(sp),d4			
						
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	jbsr _aubio_fft_get_phas		
	addq.l #8,sp				
						
	move.l d4,16(sp)			
	move.l d3,12(sp)			
						
	move.l (sp)+,d3				
	move.l (sp)+,d4				
						
	jbra _aubio_fft_get_norm		
						
	.align	2				
	.globl	_aubio_fft_do			
						
_aubio_fft_do:					
	move.l a3,-(sp)				
	move.l d3,-(sp)				
	move.l 12(sp),a3			
	move.l 20(sp),d3			
						
	move.l 24(a3),-(sp)			
	move.l 20(sp),-(sp)			
	move.l a3,-(sp)				
	jbsr _aubio_fft_do_complex		
	lea (12,sp),sp				
						
	move.l 24(a3),a3			
						
	move.l d3,-(sp)				
	move.l a3,-(sp)				
	jbsr _aubio_fft_get_phas		
	addq.l #8,sp				
						
	move.l d3,16(sp)			
	move.l a3,12(sp)			
						
	move.l (sp)+,d3				
	move.l (sp)+,a3				
						
	jbra _aubio_fft_get_norm		
						
	.align	2				
	.globl	_aubio_fft_get_imag		
						
_aubio_fft_get_imag:				
	subq.l #8,sp				
	movem.l d3/d4/d5/d6/a3/a4/a5/a6,-(sp)	
	move.l 44(sp),a1			
	move.l 48(sp),a0			
						
	move.l (a0),d0				
						
	move.l d0,d1				
	addq.l #1,d1				
						
	move.l d1,d3				
	lsr.l #1,d3				
						
	moveq #3,d2				
	cmp.l d1,d2				
	jbcc _?L62				
						
	move.l 4(a1),d1				
	move.l d1,a3				
	addq.l #8,a3				
	move.l 8(a1),d6				
	addq.l #8,d6				
	lsl.l #3,d0				
	move.l 4(a0),a4				
	add.l d0,a4				
	lsl.l #3,d3				
	add.l d1,d3				
	lea _sin,a6				
	lea ___muldf3,a5			
_?L64:						
						
	move.l (a3)+,d4				
	move.l (a3)+,d5				
						
	move.l d6,a0				
	subq.l #8,sp				
	move.l (a0)+,(sp)			
	move.l (a0)+,4(sp)			
	move.l a0,d6				
	jbsr (a6)				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,32(sp)			
	move.l d1,36(sp)			
						
	move.l d1,-(a4)				
	move.l d0,-(a4)				
						
	cmp.l a3,d3				
	jbne _?L64				
_?L62:						
						
	movem.l (sp)+,d3/d4/d5/d6/a3/a4/a5/a6	
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_aubio_fft_get_real		
						
_aubio_fft_get_real:				
	subq.l #8,sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 48(sp),a1			
	move.l 52(sp),a0			
	move.l 4(a1),a3				
	move.l 8(a1),a5				
	move.l 4(a0),a4				
						
	move.l (a0),d6				
	lsr.l #1,d6				
	lsl.l #3,d6				
	move.l a3,d3				
	addq.l #8,d3				
	add.l d3,d6				
	move.l #_cos,d7				
	lea ___muldf3,a6			
						
	move.l (a3),d4				
	move.l 4(a3),d5				
	move.l d3,a3				
						
	subq.l #8,sp				
	move.l (a5)+,(sp)			
	move.l (a5)+,4(sp)			
	move.l d7,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	cmp.l d3,d6				
	jbeq _?L71				
_?L74:						
	addq.l #8,d3				
						
	move.l (a3),d4				
	move.l 4(a3),d5				
	move.l d3,a3				
						
	subq.l #8,sp				
	move.l (a5)+,(sp)			
	move.l (a5)+,4(sp)			
	move.l d7,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	cmp.l d3,d6				
	jbne _?L74				
_?L71:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_aubio_fft_get_realimag		
						
_aubio_fft_get_realimag:			
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	move.l 12(sp),d3			
	move.l 16(sp),d4			
						
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	jbsr _aubio_fft_get_imag		
	addq.l #8,sp				
						
	move.l d4,16(sp)			
	move.l d3,12(sp)			
						
	move.l (sp)+,d3				
	move.l (sp)+,d4				
						
	jbra _aubio_fft_get_real		
						
	.align	2				
	.globl	_aubio_fft_rdo			
						
_aubio_fft_rdo:					
	movem.l d3/d4/d5/a3,-(sp)		
	move.l 20(sp),a3			
	move.l 24(sp),d4			
	move.l 28(sp),d5			
						
	move.l 24(a3),d3			
						
	move.l d3,-(sp)				
	move.l d4,-(sp)				
	jbsr _aubio_fft_get_imag		
						
	addq.l #4,sp				
	move.l d3,(sp)				
	move.l d4,-(sp)				
	jbsr _aubio_fft_get_real		
	addq.l #8,sp				
						
	move.l d5,28(sp)			
	move.l d3,24(sp)			
	move.l a3,20(sp)			
						
	movem.l (sp)+,d3/d4/d5/a3		
						
	jbra _aubio_fft_rdo_complex		
						
						
