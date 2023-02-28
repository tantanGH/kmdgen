* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"pitchspecacf.c"		
						
						
						
						
						
	.text					
	.data					
_?LC0:						
	.dc.b $68,$61,$6e,$6e,$69,$6e,$67,$7a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_new_aubio_pitchspecacf		
						
_new_aubio_pitchspecacf:			
	movem.l d3/a3/a4,-(sp)			
	move.l 16(sp),d3			
						
	pea 40.w				
	jbsr _MALLOC				
	move.l d0,a3				
						
	move.l d3,(sp)				
	jbsr _new_aubio_fft			
	addq.l #4,sp				
						
	move.l d0,8(a3)				
						
	jbeq _?L6				
						
	move.l d3,-(sp)				
	pea _?LC0				
	jbsr _new_aubio_window			
	addq.l #8,sp				
						
	move.l d0,(a3)				
						
	move.l d3,-(sp)				
	lea _new_fvec,a4			
	jbsr (a4)				
						
	move.l d0,4(a3)				
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,12(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,16(a3)			
						
	lsr.l #1,d3				
						
	move.l d3,a0				
	pea 1(a0)				
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,20(a3)			
						
	move.l #1072693248,24(a3)		
	clr.l 28(a3)				
						
	clr.l 32(a3)				
	clr.l 36(a3)				
						
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
						
	.globl	___muldf3			
	.globl	___adddf3			
	.align	2				
	.globl	_aubio_pitchspecacf_do		
						
_aubio_pitchspecacf_do:				
	lea (-12,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 56(sp),d3			
						
	move.l 52(sp),a0			
	move.l 12(a0),44(sp)			
						
	move.l d3,a1				
	move.l (a1),d6				
						
	move.l 4(a0),d7				
						
	tst.l d6				
	jbeq _?L19				
						
	move.l 52(sp),a2			
	move.l (a2),a0				
	move.l 4(a0),a3				
	move.l 4(a1),a4				
	move.l d7,a1				
	move.l 4(a1),a6				
	lsl.l #3,d6				
	add.l a3,d6				
	lea ___muldf3,a5			
_?L10:						
						
	move.l (a3)+,d0				
	move.l (a3)+,d1				
						
	subq.l #8,sp				
	move.l (a4)+,(sp)			
	move.l (a4)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
						
	move.l d0,(a6)+				
	move.l d1,(a6)+				
						
	cmp.l a3,d6				
	jbne _?L10				
						
	move.l 44(sp),-(sp)			
	move.l d7,-(sp)				
	move.l 60(sp),a2			
	move.l 8(a2),-(sp)			
	move.l #_aubio_fft_do_complex,d4	
	move.l d4,a0				
	jbsr (a0)				
	lea (12,sp),sp				
						
	move.l 52(sp),a1			
	move.l 16(a1),d5			
	move.l 44(sp),a2			
	move.l 4(a2),a3				
	move.l d5,a0				
	move.l 4(a0),a4				
						
	move.l d3,a1				
	move.l (a1),d3				
	lsr.l #1,d3				
	addq.l #1,d3				
	lsl.l #3,d3				
	add.l a3,d3				
_?L9:						
						
	move.l (a3)+,d0				
	move.l (a3)+,d1				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	cmp.l a3,d3				
	jbne _?L9				
						
	move.l 44(sp),-(sp)			
	move.l d5,-(sp)				
	move.l 60(sp),a2			
	move.l 8(a2),-(sp)			
	move.l d4,a0				
	jbsr (a0)				
	lea (12,sp),sp				
						
	move.l 52(sp),a1			
	move.l 20(a1),a5			
	move.l 44(sp),a2			
	move.l 4(a2),a0				
	move.l 4(a5),a1				
						
	move.l (a2),d1				
	lsr.l #1,d1				
	lsl.l #3,d1				
	move.l a0,d0				
	addq.l #8,d0				
	add.l d0,d1				
						
	move.l (a0),a2				
	move.l 4(a0),a3				
	move.l d0,a0				
						
	move.l a2,(a1)+				
	move.l a3,(a1)+				
						
	cmp.l d1,d0				
	jbeq _?L16				
_?L20:						
	addq.l #8,d0				
						
	move.l (a0),a2				
	move.l 4(a0),a3				
	move.l d0,a0				
						
	move.l a2,(a1)+				
	move.l a3,(a1)+				
						
	cmp.l d1,d0				
	jbne _?L20				
_?L16:						
						
	move.l a5,-(sp)				
	jbsr _fvec_min_elem			
						
	move.l d0,(sp)				
	move.l 56(sp),a0			
	move.l 20(a0),-(sp)			
	jbsr _fvec_quadratic_peak_pos		
	addq.l #8,sp				
	move.l d0,a0				
						
	move.l 60(sp),a2			
	move.l 4(a2),a3				
						
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (12,sp),sp				
	rts					
_?L19:						
	lea ___muldf3,a5			
						
	move.l 44(sp),-(sp)			
	move.l d7,-(sp)				
	move.l 60(sp),a2			
	move.l 8(a2),-(sp)			
	move.l #_aubio_fft_do_complex,d4	
	move.l d4,a0				
	jbsr (a0)				
	lea (12,sp),sp				
						
	move.l 52(sp),a1			
	move.l 16(a1),d5			
	move.l 44(sp),a2			
	move.l 4(a2),a3				
	move.l d5,a0				
	move.l 4(a0),a4				
						
	move.l d3,a1				
	move.l (a1),d3				
	lsr.l #1,d3				
	addq.l #1,d3				
	lsl.l #3,d3				
	add.l a3,d3				
	jbra _?L9				
						
	.align	2				
	.globl	_del_aubio_pitchspecacf		
						
_del_aubio_pitchspecacf:			
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 12(sp),a3			
						
	move.l (a3),-(sp)			
	lea _del_fvec,a4			
	jbsr (a4)				
						
	move.l 4(a3),(sp)			
	jbsr (a4)				
						
	move.l 8(a3),(sp)			
	jbsr _del_aubio_fft			
						
	move.l 16(a3),(sp)			
	jbsr (a4)				
						
	move.l 12(a3),(sp)			
	jbsr (a4)				
						
	move.l 20(a3),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _MFREE				
						
	.align	2				
	.globl	_aubio_pitchspecacf_get_confidence
						
_aubio_pitchspecacf_get_confidence:		
						
	move.l 4(sp),a0				
	move.l 32(a0),d0			
	move.l 36(a0),d1			
	rts					
						
	.align	2				
	.globl	_aubio_pitchspecacf_set_tolerance
						
_aubio_pitchspecacf_set_tolerance:		
						
	move.l 4(sp),a0				
	move.l 8(sp),d0				
	move.l 12(sp),d1			
	move.l d0,24(a0)			
	move.l d1,28(a0)			
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_pitchspecacf_get_tolerance
						
_aubio_pitchspecacf_get_tolerance:		
						
	move.l 4(sp),a0				
	move.l 24(a0),d0			
	move.l 28(a0),d1			
	rts					
						
						
