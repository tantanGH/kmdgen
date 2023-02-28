* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"pitchfcomb.c"			
						
						
						
						
						
	.text					
	.data					
_?LC0:						
	.dc.b $68,$61,$6e,$6e,$69,$6e,$67
	.dc.b $00				
	.text					
	.align	2				
	.globl	_new_aubio_pitchfcomb		
						
_new_aubio_pitchfcomb:				
	movem.l d3/a3/a4,-(sp)			
	move.l 16(sp),d3			
						
	pea 32.w				
	jbsr _MALLOC				
	move.l d0,a3				
						
	move.l d3,(a3)				
						
	move.l 24(sp),4(a3)			
						
	move.l d3,(sp)				
	jbsr _new_aubio_fft			
	addq.l #4,sp				
						
	move.l d0,28(a3)			
						
	jbeq _?L6				
						
	move.l d3,-(sp)				
	lea _new_fvec,a4			
	jbsr (a4)				
						
	move.l d0,12(a3)			
						
	move.l d3,(sp)				
	jbsr _new_cvec				
						
	move.l d0,20(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,24(a3)			
						
	move.l d3,(sp)				
	pea _?LC0				
	jbsr _new_aubio_window			
	addq.l #8,sp				
						
	move.l d0,16(a3)			
						
	move.l a3,d0				
	movem.l (sp)+,d3/a3/a4			
	rts					
_?L6:						
						
	move.l a3,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	sub.l a3,a3				
						
	move.l a3,d0				
	movem.l (sp)+,d3/a3/a4			
	rts					
						
	.globl	___floatunsidf			
	.globl	___muldf3			
	.globl	___divdf3			
	.globl	___adddf3			
	.globl	___subdf3			
	.globl	___gtdf2			
	.globl	___ltdf2			
	.globl	___floatsidf			
	.align	2				
	.globl	_aubio_pitchfcomb_do		
						
_aubio_pitchfcomb_do:				
	lea (-160,sp),sp			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 200(sp),a3			
	move.l 204(sp),a4			
						
	lea ___floatunsidf,a6			
	move.l 4(a3),-(sp)			
	jbsr (a6)				
						
	move.l #1413754136,(sp)			
	move.l #1075388923,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l (a3),-(sp)			
	jbsr (a6)				
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,60(sp)			
	move.l a1,64(sp)			
	lea (68,sp),a0				
	move.l sp,d0				
	add.l #196,d0				
_?L8:						
						
	move.l #-1066860544,8(a0)		
	clr.l 12(a0)				
						
	clr.l (a0)				
	clr.l 4(a0)				
						
	lea (16,a0),a0				
	cmp.l a0,d0				
	jbne _?L8				
						
	move.l (a4),d3				
						
	move.l 12(a3),d4			
						
	tst.l d3				
	jbeq _?L12				
						
	move.l 16(a3),a0			
	move.l 4(a0),a5				
	move.l 4(a4),d5				
	move.l d4,a0				
	move.l 4(a0),a4				
	lsl.l #3,d3				
	add.l a5,d3				
	move.l a3,d0				
	move.l a4,a3				
	move.l d5,a4				
	move.l d0,d5				
_?L11:						
						
	move.l (a5)+,d0				
	move.l (a5)+,d1				
						
	subq.l #8,sp				
	move.l (a4)+,(sp)			
	move.l (a4)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,44(sp)			
	move.l d1,48(sp)			
						
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l a5,d3				
	jbne _?L11				
	move.l d5,a3				
_?L12:						
						
	move.l 20(a3),-(sp)			
	move.l d4,-(sp)				
	move.l 28(a3),-(sp)			
	jbsr _aubio_fft_do			
	lea (12,sp),sp				
						
	move.l (a3),d3				
	moveq #0,d6				
						
	moveq #0,d7				
_?L10:						
						
	move.l 20(a3),a4			
						
	move.l 4(a4),a0				
						
	move.l (a0,d6.l),d0			
	move.l 4(a0,d6.l),d1			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d3,-(sp)				
	jbsr (a6)				
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _log10				
	addq.l #8,sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,52(sp)			
	move.l a1,56(sp)			
						
	move.l 8(a4),a0				
	move.l (a0,d6.l),44(sp)			
	move.l 4(a0,d6.l),48(sp)		
						
	move.l 24(a3),a0			
						
	move.l 4(a0),a4				
	add.l d6,a4				
						
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 44(sp),(a4)			
	move.l 48(sp),4(a4)			
						
	move.l d7,-(sp)				
	jbsr (a6)				
	addq.l #4,sp				
	move.l d0,a0				
						
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l a0,56(sp)			
	move.l d1,52(sp)			
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___subdf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _aubio_unwrap2pi			
	addq.l #8,sp				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l (a3),d3				
						
	move.l d3,-(sp)				
	jbsr (a6)				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 4(a3),(sp)			
	jbsr (a6)				
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
						
	lea (12,sp),sp				
	move.l a5,(sp)				
	move.l a4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l #1413754136,(sp)			
	move.l #1075388923,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	move.l 40(sp),a0			
	move.l 36(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,a4				
	move.l d1,a5				
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d1,-(sp)				
	move.l a4,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L13				
						
	clr.l -(sp)				
	move.l #1077149696,-(sp)		
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L40				
_?L13:						
						
	addq.l #1,d7				
						
	addq.l #8,d6				
						
	move.l d3,d0				
	lsr.l #1,d0				
						
	cmp.l d0,d7				
	jbls _?L10				
_?L41:						
						
	move.l 68(sp),60(sp)			
	move.l 72(sp),64(sp)			
	lea (84,sp),a4				
						
	clr.l 52(sp)				
						
	moveq #1,d0				
	move.l d0,44(sp)			
						
	sub.l a6,a6				
	lea ___ltdf2,a3				
	lea ___floatsidf,a5			
_?L16:						
						
	move.l (a4),d4				
	move.l 4(a4),d5				
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L22				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	moveq #5,d3				
_?L21:						
						
	move.l d3,-(sp)				
	jbsr (a5)				
	move.l d0,d6				
	move.l d1,d7				
	move.l #1202590843,(sp)			
	move.l #1066695393,-(sp)		
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr ___adddf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L17				
						
	move.l #1202590843,-(sp)		
	move.l #1066695393,-(sp)		
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___subdf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L17				
						
	cmp.l 52(sp),d3				
	jble _?L17				
						
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l 12(a4),-(sp)			
	move.l 8(a4),-(sp)			
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L17				
	move.l d3,52(sp)			
						
	move.l 44(sp),a6			
_?L17:						
						
	subq.l #1,d3				
						
	moveq #1,d0				
	cmp.l d3,d0				
	jbne _?L21				
						
	addq.l #1,44(sp)			
						
	lea (16,a4),a4				
	moveq #8,d0				
	cmp.l 44(sp),d0				
	jbne _?L16				
_?L22:						
						
	move.l 208(sp),a0			
	move.l 4(a0),a3				
						
	move.l a6,d0				
	lsl.l #4,d0				
	move.l 68(sp,d0.l),d4			
	move.l 72(sp,d0.l),d5			
						
	clr.l -(sp)				
	move.l #1085507584,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L24				
	clr.l d4				
	clr.l d5				
_?L24:						
						
	move.l d4,(a3)				
	move.l d5,4(a3)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (160,sp),sp				
	rts					
_?L40:						
						
	pea 112.w				
	pea 72(sp)				
	pea 92(sp)				
	jbsr _memmove				
	lea (12,sp),sp				
						
	move.l a4,68(sp)			
	move.l a5,72(sp)			
						
	move.l d4,76(sp)			
	move.l d5,80(sp)			
						
	addq.l #1,d7				
						
	addq.l #8,d6				
						
	move.l d3,d0				
	lsr.l #1,d0				
						
	cmp.l d0,d7				
	jbls _?L10				
	jbra _?L41				
						
	.align	2				
	.globl	_del_aubio_pitchfcomb		
						
_del_aubio_pitchfcomb:				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 12(sp),a3			
						
	move.l 20(a3),-(sp)			
	jbsr _del_cvec				
						
	move.l 24(a3),(sp)			
	lea _del_fvec,a4			
	jbsr (a4)				
						
	move.l 16(a3),(sp)			
	jbsr (a4)				
						
	move.l 12(a3),(sp)			
	jbsr (a4)				
						
	move.l 28(a3),(sp)			
	jbsr _del_aubio_fft			
	addq.l #4,sp				
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _MFREE				
						
						
