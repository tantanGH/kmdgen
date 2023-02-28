* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"pitchyinfast.c"		
						
						
						
						
						
	.text					
	.align	2				
	.globl	_del_aubio_pitchyinfast		
						
_del_aubio_pitchyinfast:			
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l (a3),d0				
						
	jbeq _?L2				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L2:						
						
	move.l 16(a3),d0			
						
	jbeq _?L3				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L3:						
						
	move.l 20(a3),d0			
						
	jbeq _?L4				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L4:						
						
	move.l 24(a3),d0			
						
	jbeq _?L5				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L5:						
						
	move.l 28(a3),d0			
						
	jbeq _?L6				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L6:						
						
	move.l 32(a3),d0			
						
	jbeq _?L7				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L7:						
						
	move.l 36(a3),d0			
						
	jbeq _?L8				
						
	move.l d0,-(sp)				
	jbsr _del_aubio_fft			
	addq.l #4,sp				
_?L8:						
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
						
	.align	2				
	.globl	_new_aubio_pitchyinfast		
						
_new_aubio_pitchyinfast:			
	movem.l d3/d4/a3/a4,-(sp)		
	move.l 20(sp),d3			
						
	pea 40.w				
	jbsr _MALLOC				
	move.l d0,a3				
						
	move.l d3,d4				
	lsr.l #1,d4				
	move.l d4,(sp)				
	lea _new_fvec,a4			
	jbsr (a4)				
						
	move.l d0,(a3)				
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,16(a3)			
						
	move.l d4,(sp)				
	jbsr (a4)				
						
	move.l d0,20(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,24(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,28(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,32(a3)			
						
	move.l d3,(sp)				
	jbsr _new_aubio_fft			
	addq.l #4,sp				
						
	move.l d0,36(a3)			
						
	tst.l (a3)				
	jbeq _?L33				
						
	tst.l 16(a3)				
	jbeq _?L33				
						
	tst.l 20(a3)				
	jbeq _?L33				
						
	tst.l 24(a3)				
	jbeq _?L33				
						
	tst.l 28(a3)				
	jbeq _?L33				
						
	tst.l d0				
	jbeq _?L33				
						
	move.l #1069757235,4(a3)		
	move.l #858993459,8(a3)			
						
	clr.l 12(a3)				
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/a3/a4		
	rts					
_?L33:						
						
	move.l a3,-(sp)				
	jbsr _del_aubio_pitchyinfast		
	addq.l #4,sp				
						
	sub.l a3,a3				
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/a3/a4		
	rts					
						
	.globl	___subdf3			
	.globl	___adddf3			
	.globl	___muldf3			
	.globl	___nedf2			
	.globl	___floatunsidf			
	.globl	___divdf3			
	.globl	___ltdf2			
	.align	2				
	.globl	_aubio_pitchyinfast_do		
						
_aubio_pitchyinfast_do:				
	lea (-88,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 132(sp),d5			
						
	move.l 128(sp),a0			
	move.l 4(a0),68(sp)			
	move.l 8(a0),72(sp)			
						
	move.l (a0),80(sp)			
						
	move.l 80(sp),a1			
	move.l (a1),60(sp)			
						
	move.l 16(a0),a4			
						
	move.l (a4),d6				
						
	move.l a4,-(sp)				
	move.l d5,-(sp)				
	move.l d5,-(sp)				
	jbsr _fvec_weighted_copy		
	lea (12,sp),sp				
						
	move.l 4(a4),112(sp)			
						
	move.l 60(sp),108(sp)			
						
	move.l 128(sp),a1			
	move.l 20(a1),a0			
	move.l 4(a0),a3				
						
	moveq #108,d7				
	add.l sp,d7				
	move.l d7,-(sp)				
	jbsr _fvec_sum				
	addq.l #4,sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	moveq #1,d0				
	cmp.l 60(sp),d0				
	jbcc _?L39				
						
	move.l 128(sp),a0			
	move.l 20(a0),d4			
						
	move.l d4,a1				
	move.l 4(a1),52(sp)			
	move.l 52(sp),a5			
	move.l (a5)+,d0				
	move.l (a5)+,d1				
	move.l 4(a4),a6				
	move.l 60(sp),d2			
	lsl.l #3,d2				
	lea (a6,d2.l),a4			
	move.l 60(sp),d2			
	lsl.l #3,d2				
	move.l d2,76(sp)			
	move.l d2,d3				
	add.l 52(sp),d3				
	move.l #___subdf3,84(sp)		
	lea ___adddf3,a3			
	move.l d4,64(sp)			
	move.l #___subdf3,d4			
	move.l a3,a0				
	move.l a6,a3				
	move.l a5,a6				
	move.l a0,a5				
_?L40:						
						
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	subq.l #8,sp				
	move.l (a3)+,(sp)			
	move.l (a3)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d4,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a6)+				
	move.l a1,(a6)+				
						
	subq.l #8,sp				
	move.l (a4)+,(sp)			
	move.l (a4)+,4(sp)			
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,d0				
	move.l a1,d1				
	move.l d0,-8(a6)			
	move.l d1,-4(a6)			
						
	cmp.l a6,d3				
	jbne _?L40				
	move.l 64(sp),d4			
_?L41:						
						
	move.l 52(sp),a0			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	move.l d4,-(sp)				
	jbsr _fvec_add				
	lea (12,sp),sp				
						
	move.l 128(sp),a1			
	move.l 16(a1),96(sp)			
						
	move.l 28(a1),88(sp)			
						
	move.l 88(sp),-(sp)			
	move.l d5,-(sp)				
	move.l 36(a1),-(sp)			
	lea _aubio_fft_do_complex,a3		
	jbsr (a3)				
	lea (12,sp),sp				
						
	move.l d5,a0				
	move.l 4(a0),112(sp)			
						
	move.l 60(sp),108(sp)			
						
	move.l 128(sp),a1			
	move.l 24(a1),a0			
						
	move.l 4(a0),d0				
	addq.l #8,d0				
	move.l d0,120(sp)			
						
	move.l 60(sp),116(sp)			
						
	moveq #116,d3				
	add.l sp,d3				
	move.l d3,-(sp)				
	move.l d7,-(sp)				
	jbsr _fvec_copy				
						
	addq.l #4,sp				
	move.l d3,(sp)				
	jbsr _fvec_rev				
						
	move.l 132(sp),a0			
	move.l 32(a0),(sp)			
	move.l 24(a0),-(sp)			
	move.l 36(a0),-(sp)			
	jbsr (a3)				
	lea (12,sp),sp				
						
	move.l 128(sp),a1			
	move.l 32(a1),a0			
	move.l 4(a0),a4				
						
	move.l 28(a1),a0			
	move.l 4(a0),64(sp)			
						
	move.l 96(sp),a0			
	move.l 4(a0),a3				
						
	move.l 64(sp),a1			
	move.l 4(a1),-(sp)			
	move.l (a1),-(sp)			
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	moveq #1,d0				
	cmp.l 60(sp),d0				
	jbcc _?L42				
	subq.l #1,d6				
	lsl.l #3,d6				
	move.l d6,92(sp)			
	move.l d6,a6				
	add.l a4,a6				
	move.l 64(sp),a5			
	add.l d6,a5				
	move.l a5,d6				
	move.l a6,d3				
	moveq #8,d7				
	move.l #___subdf3,84(sp)		
	move.l a5,100(sp)			
	move.l a6,104(sp)			
	move.l a4,a6				
	move.l a3,a4				
	move.l d3,a5				
	move.l d6,a3				
	move.l #___subdf3,d6			
	move.l 76(sp),d3			
_?L43:						
						
	move.l 64(sp),a0			
	move.l 4(a0,d7.l),-(sp)			
	move.l (a0,d7.l),-(sp)			
	move.l 4(a6,d7.l),-(sp)			
	move.l (a6,d7.l),-(sp)			
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d4,(a4,d7.l)			
	move.l d5,4(a4,d7.l)			
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d6,a1				
	jbsr (a1)				
	lea (16,sp),sp				
	move.l d0,(a4,d7.l)			
	move.l d1,4(a4,d7.l)			
						
	subq.l #8,a5				
	subq.l #8,a3				
	addq.l #8,d7				
	cmp.l d3,d7				
	jbne _?L43				
						
	move.l a4,a3				
	move.l a6,a4				
	move.l 100(sp),a5			
	move.l 104(sp),a6			
	move.l 64(sp),a0			
	move.l 76(sp),a1			
	move.l 4(a0,a1.l),-(sp)			
	move.l (a0,a1.l),-(sp)			
	move.l 4(a4,a1.l),-(sp)			
	move.l (a4,a1.l),-(sp)			
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,44(sp)			
	move.l d1,48(sp)			
						
	move.l 76(sp),d2			
	move.l d0,(a3,d2.l)			
	move.l d1,4(a3,d2.l)			
	move.l 64(sp),d6			
	addq.l #8,d6				
	move.l 92(sp),d3			
	add.l a3,d3				
	addq.l #8,a4				
	move.l d2,d7				
	add.l 64(sp),d7				
	lea ___adddf3,a3			
	move.l a3,d0				
	move.l a6,a3				
	move.l a4,a6				
	move.l d3,a4				
	move.l d0,d3				
_?L44:						
						
	move.l d6,a0				
	move.l (a0)+,d0				
	move.l (a0)+,d1				
	move.l a0,d6				
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d4,(a4)				
	move.l d5,4(a4)				
						
	move.l (a6)+,d0				
	move.l (a6)+,d1				
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d3,a1				
	jbsr (a1)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	subq.l #8,a3				
	subq.l #8,a4				
	subq.l #8,a5				
	cmp.l d6,d7				
	jbne _?L44				
	move.l d3,a3				
						
	move.l 88(sp),-(sp)			
	move.l 100(sp),-(sp)			
	move.l 136(sp),a1			
	move.l 36(a1),-(sp)			
	jbsr _aubio_fft_rdo_complex		
	lea (12,sp),sp				
						
	move.l 128(sp),a1			
	move.l 20(a1),a0			
	move.l 4(a0),a4				
	move.l 88(sp),a0			
	move.l 4(a0),a1				
	add.l 76(sp),a1				
	move.l a1,a6				
	move.l 80(sp),a0			
	move.l 4(a0),a5				
	move.l 76(sp),d3			
	add.l a4,d3				
	move.l 84(sp),d6			
_?L46:						
						
	move.l (a4)+,d4				
	move.l (a4)+,d5				
						
	move.l (a6)+,d0				
	move.l (a6)+,d1				
						
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d6,a1				
	jbsr (a1)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l d0,(a5)+				
	move.l d1,(a5)+				
						
	cmp.l d3,a4				
	jbne _?L46				
						
	move.l 136(sp),-(sp)			
	jbsr _fvec_zeros			
	addq.l #4,sp				
						
	move.l 80(sp),a0			
	move.l 4(a0),a4				
						
	move.l #1072693248,(a4)			
	clr.l 4(a4)				
						
	moveq #1,d0				
	cmp.l 60(sp),d0				
	jbcc _?L48				
	addq.l #8,a4				
						
	clr.l d6				
	clr.l d7				
						
	moveq #1,d3				
	lea ___nedf2,a5				
						
	lea ___ltdf2,a6				
_?L56:						
						
	move.l (a4)+,d4				
	move.l (a4)+,d5				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L72				
						
	move.l d3,-(sp)				
	jbsr ___floatunsidf			
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
						
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
_?L50:						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,-8(a4)			
	move.l a1,-4(a4)			
						
	moveq #4,d2				
	cmp.l d3,d2				
	jbcc _?L52				
						
	move.l -32(a4),d4			
	move.l -28(a4),d5			
						
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L52				
						
	move.l -20(a4),-(sp)			
	move.l -24(a4),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L76				
_?L52:						
						
	addq.l #1,d3				
						
	cmp.l 60(sp),d3				
	jbne _?L56				
_?L48:						
						
	move.l 80(sp),-(sp)			
	jbsr _fvec_min_elem			
						
	move.l 132(sp),a0			
	move.l d0,12(a0)			
						
	move.l 140(sp),a1			
	move.l 4(a1),a3				
						
	move.l d0,(sp)				
	move.l 84(sp),-(sp)			
	jbsr _fvec_quadratic_peak_pos		
	addq.l #8,sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
_?L38:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (88,sp),sp				
	rts					
_?L72:						
	move.l #1072693248,d0			
	clr.l d1				
	jbra _?L50				
_?L76:						
						
	subq.l #3,d3				
						
	move.l 128(sp),a0			
	move.l d3,12(a0)			
						
	move.l 136(sp),a1			
	move.l 4(a1),a3				
						
	move.l d3,-(sp)				
	move.l 84(sp),-(sp)			
	jbsr _fvec_quadratic_peak_pos		
	addq.l #8,sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (88,sp),sp				
	rts					
_?L42:						
						
	move.l 64(sp),a0			
	move.l 76(sp),a1			
	move.l 4(a0,a1.l),-(sp)			
	move.l (a0,a1.l),-(sp)			
	move.l 4(a4,a1.l),-(sp)			
	move.l (a4,a1.l),-(sp)			
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
						
	move.l 76(sp),d2			
	move.l d0,(a3,d2.l)			
	move.l d1,4(a3,d2.l)			
						
	move.l 88(sp),-(sp)			
	move.l 100(sp),-(sp)			
	move.l 136(sp),a0			
	move.l 36(a0),-(sp)			
	jbsr _aubio_fft_rdo_complex		
	lea (12,sp),sp				
						
	tst.l 60(sp)				
	jbne _?L77				
						
	move.l 136(sp),-(sp)			
	jbsr _fvec_zeros			
	addq.l #4,sp				
						
	move.l 80(sp),a1			
	move.l 4(a1),a0				
	move.l #1072693248,(a0)			
	clr.l 4(a0)				
						
	move.l 80(sp),-(sp)			
	jbsr _fvec_min_elem			
						
	move.l 132(sp),a0			
	move.l d0,12(a0)			
						
	move.l 140(sp),a1			
	move.l 4(a1),a3				
						
	move.l d0,(sp)				
	move.l 84(sp),-(sp)			
	jbsr _fvec_quadratic_peak_pos		
	addq.l #8,sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
	jbra _?L38				
_?L39:						
						
	move.l 128(sp),a1			
	move.l 20(a1),d4			
						
	move.l d4,a0				
	move.l 4(a0),52(sp)			
	move.l 60(sp),d2			
	lsl.l #3,d2				
	move.l d2,76(sp)			
	jbra _?L41				
_?L77:						
	move.l #___subdf3,84(sp)		
	lea ___adddf3,a3			
						
	move.l 128(sp),a1			
	move.l 20(a1),a0			
	move.l 4(a0),a4				
	move.l 88(sp),a0			
	move.l 4(a0),a1				
	add.l 76(sp),a1				
	move.l a1,a6				
	move.l 80(sp),a0			
	move.l 4(a0),a5				
	move.l 76(sp),d3			
	add.l a4,d3				
	move.l 84(sp),d6			
	jbra _?L46				
						
	.align	2				
	.globl	_aubio_pitchyinfast_get_confidence
						
_aubio_pitchyinfast_get_confidence:		
	move.l 4(sp),a0				
						
	move.l (a0),a1				
						
	move.l 12(a0),d0			
	move.l 4(a1),a0				
	lsl.l #3,d0				
						
	move.l 4(a0,d0.l),-(sp)			
	move.l (a0,d0.l),-(sp)			
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr ___subdf3				
	lea (16,sp),sp				
						
	rts					
						
	.align	2				
	.globl	_aubio_pitchyinfast_set_tolerance
						
_aubio_pitchyinfast_set_tolerance:		
						
	move.l 4(sp),a0				
	move.l 8(sp),d0				
	move.l 12(sp),d1			
	move.l d0,4(a0)				
	move.l d1,8(a0)				
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_pitchyinfast_get_tolerance
						
_aubio_pitchyinfast_get_tolerance:		
						
	move.l 4(sp),a0				
	move.l 4(a0),d0				
	move.l 8(a0),d1				
	rts					
						
						
