* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"statistics.c"			
						
						
						
						
						
	.text					
	.globl	___adddf3			
	.align	2				
	.globl	_cvec_sum			
						
_cvec_sum:					
	movem.l d3/a3/a4,-(sp)			
	move.l 16(sp),a0			
						
	move.l (a0),d3				
						
	jbeq _?L4				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
						
	sub.l a0,a0				
	sub.l a1,a1				
	lea ___adddf3,a4			
_?L3:						
						
	subq.l #8,sp				
	move.l (a3)+,(sp)			
	move.l (a3)+,4(sp)			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	cmp.l a3,d3				
	jbne _?L3				
						
	move.l a0,d0				
	move.l a1,d1				
	movem.l (sp)+,d3/a3/a4			
	rts					
_?L4:						
						
	sub.l a0,a0				
	sub.l a1,a1				
						
	move.l a0,d0				
	move.l a1,d1				
	movem.l (sp)+,d3/a3/a4			
	rts					
						
	.globl	___floatunsidf			
	.globl	___divdf3			
	.align	2				
	.globl	_cvec_mean			
						
_cvec_mean:					
	subq.l #8,sp				
	movem.l d3/d4/a3/a4,-(sp)		
	move.l 28(sp),a0			
						
	move.l (a0),d4				
						
	jbeq _?L11				
	move.l 4(a0),a3				
	move.l d4,d3				
	lsl.l #3,d3				
	add.l a3,d3				
						
	sub.l a0,a0				
	sub.l a1,a1				
	lea ___adddf3,a4			
_?L10:						
						
	subq.l #8,sp				
	move.l (a3)+,(sp)			
	move.l (a3)+,4(sp)			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	cmp.l d3,a3				
	jbne _?L10				
						
	move.l d4,-(sp)				
	move.l a0,24(sp)			
	move.l d1,20(sp)			
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l 20(sp),a0			
	move.l 16(sp),a1			
						
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d3/d4/a3/a4		
	addq.l #8,sp				
	rts					
_?L11:						
						
	clr.l d2				
	clr.l d3				
						
	move.l d2,a0				
	move.l d3,a1				
						
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d3/d4/a3/a4		
	addq.l #8,sp				
	rts					
						
	.globl	___eqdf2			
	.globl	___muldf3			
	.align	2				
	.globl	_cvec_centroid			
						
_cvec_centroid:					
	subq.l #8,sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 48(sp),a0			
						
	move.l (a0),d3				
						
	jbeq _?L19				
	move.l 4(a0),a4				
	move.l d3,d4				
	lsl.l #3,d4				
	add.l a4,d4				
						
	move.l a4,a5				
						
	sub.l a0,a0				
	sub.l a1,a1				
	lea ___adddf3,a3			
_?L17:						
						
	subq.l #8,sp				
	move.l (a5)+,(sp)			
	move.l (a5)+,4(sp)			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	cmp.l a5,d4				
	jbne _?L17				
						
	clr.l d4				
	clr.l d5				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l a0,56(sp)			
	move.l d1,52(sp)			
	jbsr ___eqdf2				
	lea (16,sp),sp				
	move.l 40(sp),a0			
	move.l 36(sp),a1			
	tst.l d0				
	jbne _?L25				
						
	move.l d4,a1				
	move.l d5,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
_?L25:						
						
	sub.l a5,a5				
	lea ___floatunsidf,a6			
_?L18:						
						
	move.l (a4)+,d6				
	move.l (a4)+,d7				
						
	move.l a5,-(sp)				
	move.l a0,44(sp)			
	move.l a1,40(sp)			
	jbsr (a6)				
						
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	addq.l #1,a5				
						
	move.l 40(sp),a0			
	move.l 36(sp),a1			
	cmp.l a5,d3				
	jbne _?L18				
						
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,a1				
	move.l d1,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
_?L19:						
						
	sub.l a1,a1				
	sub.l a0,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
						
	.globl	___subdf3			
	.align	2				
	.globl	_cvec_moment			
						
_cvec_moment:					
	lea (-16,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 56(sp),a5			
						
	move.l (a5),d3				
						
	jbeq _?L30				
	move.l 4(a5),a4				
	move.l d3,d6				
	lsl.l #3,d6				
	add.l a4,d6				
						
	move.l a4,a6				
						
	clr.l d4				
	clr.l d5				
	lea ___adddf3,a3			
_?L28:						
						
	subq.l #8,sp				
	move.l (a6)+,(sp)			
	move.l (a6)+,4(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	cmp.l a6,d6				
	jbne _?L28				
						
	clr.l d6				
	clr.l d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr ___eqdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbne _?L36				
						
	move.l d6,a1				
	move.l d7,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
_?L36:						
						
	move.l a5,-(sp)				
	jbsr _cvec_centroid			
	addq.l #4,sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,36(sp)			
	move.l a1,40(sp)			
						
	lea ___floatunsidf,a5			
	move.l 60(sp),-(sp)			
	jbsr (a5)				
	addq.l #4,sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,44(sp)			
	move.l a1,48(sp)			
						
	sub.l a6,a6				
_?L29:						
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l a6,-(sp)				
	jbsr (a5)				
	addq.l #4,sp				
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___subdf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _pow				
	lea (16,sp),sp				
						
	subq.l #8,sp				
	move.l (a4)+,(sp)			
	move.l (a4)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	addq.l #1,a6				
						
	cmp.l a6,d3				
	jbne _?L29				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,a1				
	move.l d1,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
_?L30:						
						
	sub.l a1,a1				
	sub.l a0,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
						
	.align	2				
	.globl	_aubio_specdesc_centroid	
						
_aubio_specdesc_centroid:			
	move.l a3,-(sp)				
						
	move.l 16(sp),a0			
	move.l 4(a0),a3				
						
	move.l 12(sp),-(sp)			
	jbsr _cvec_centroid			
	addq.l #4,sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_aubio_specdesc_spread		
						
_aubio_specdesc_spread:				
	move.l a3,-(sp)				
						
	move.l 16(sp),a0			
	move.l 4(a0),a3				
						
	pea 2.w					
	move.l 16(sp),-(sp)			
	jbsr _cvec_moment			
	addq.l #8,sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_aubio_specdesc_skewness	
						
_aubio_specdesc_skewness:			
	movem.l d4/d5/d6/d7/a3/a4,-(sp)		
						
	pea 2.w					
	move.l 36(sp),-(sp)			
	lea _cvec_moment,a3			
	jbsr (a3)				
	addq.l #8,sp				
	move.l d0,d4				
	move.l d1,d5				
						
	clr.l d6				
	clr.l d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr ___eqdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbne _?L46				
						
	move.l 36(sp),a1			
	move.l 4(a1),a0				
	move.l d6,(a0)				
	move.l d7,4(a0)				
						
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
_?L46:						
						
	move.l 36(sp),a0			
	move.l 4(a0),a4				
						
	pea 3.w					
	move.l 36(sp),-(sp)			
	jbsr (a3)				
	addq.l #8,sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr _sqrt				
	addq.l #4,sp				
	clr.l (sp)				
	move.l #1074266112,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr _pow				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
						
	.align	2				
	.globl	_aubio_specdesc_kurtosis	
						
_aubio_specdesc_kurtosis:			
	movem.l d4/d5/d6/d7/a3/a4,-(sp)		
						
	pea 2.w					
	move.l 36(sp),-(sp)			
	lea _cvec_moment,a3			
	jbsr (a3)				
	addq.l #8,sp				
	move.l d0,d4				
	move.l d1,d5				
						
	clr.l d6				
	clr.l d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr ___eqdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbne _?L54				
						
	move.l 36(sp),a1			
	move.l 4(a1),a0				
	move.l d6,(a0)				
	move.l d7,4(a0)				
						
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
_?L54:						
						
	move.l 36(sp),a0			
	move.l 4(a0),a4				
						
	pea 4.w					
	move.l 36(sp),-(sp)			
	jbsr (a3)				
	addq.l #8,sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
						
	.globl	___mulsi3			
	.align	2				
	.globl	_aubio_specdesc_slope		
						
_aubio_specdesc_slope:				
	lea (-48,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 92(sp),a4			
						
	move.l (a4),d3				
						
	jbeq _?L58				
						
	clr.l d4				
	clr.l d5				
						
	moveq #0,d6				
	lea ___mulsi3,a6			
	lea ___floatunsidf,a5			
	lea ___adddf3,a3			
_?L59:						
						
	move.l d6,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
						
	addq.l #4,sp				
	move.l d0,(sp)				
	jbsr (a5)				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	addq.l #1,d6				
						
	cmp.l d6,d3				
	jbne _?L59				
	move.l 4(a4),a4				
	move.l d3,d6				
	lsl.l #3,d6				
	add.l a4,d6				
						
	move.l a4,a6				
						
	sub.l a0,a0				
	sub.l a1,a1				
_?L60:						
						
	subq.l #8,sp				
	move.l (a6)+,(sp)			
	move.l (a6)+,4(sp)			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	cmp.l d6,a6				
	jbne _?L60				
						
	move.l 96(sp),a2			
	move.l 4(a2),72(sp)			
						
	move.l 72(sp),a2			
	clr.l (a2)				
	clr.l 4(a2)				
						
	clr.l d6				
	clr.l d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l a0,56(sp)			
	move.l d1,52(sp)			
	jbsr ___eqdf2				
	lea (16,sp),sp				
	move.l 40(sp),a0			
	move.l 36(sp),a1			
	tst.l d0				
	jbeq _?L57				
	move.l d6,56(sp)			
	move.l d7,60(sp)			
						
	sub.l a6,a6				
	move.l 72(sp),d7			
	move.l d4,64(sp)			
	move.l d5,68(sp)			
	move.l a0,76(sp)			
	move.l a1,80(sp)			
	move.l d3,d6				
_?L63:						
						
	move.l (a4)+,d3				
	move.l (a4)+,d4				
						
	move.l a6,-(sp)				
	jbsr (a5)				
	move.l d4,(sp)				
	move.l d3,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l d2,56(sp)			
	move.l d3,60(sp)			
	move.l d7,a0				
	move.l d2,(a0)				
	move.l d3,4(a0)				
						
	addq.l #1,a6				
						
	cmp.l a6,d6				
	jbne _?L63				
						
	move.l 64(sp),d4			
	move.l 68(sp),d5			
	move.l 76(sp),a0			
	move.l 80(sp),a1			
	move.l a6,-(sp)				
	move.l a0,44(sp)			
	move.l a1,40(sp)			
	jbsr (a5)				
	move.l d0,d6				
	move.l d1,d7				
						
	lea ___subdf3,a3			
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (12,sp),sp				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l d2,64(sp)			
	move.l d3,68(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l d2,76(sp)			
	move.l d3,80(sp)			
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d2				
	move.l d1,d3				
						
	pea -1(a6)				
	move.l d2,48(sp)			
	jbsr (a5)				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 44(sp),a0			
	move.l 40(sp),a1			
	move.l a1,(sp)				
	move.l a0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l a0,56(sp)			
	move.l a1,52(sp)			
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 52(sp),d2			
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 76(sp),-(sp)			
	move.l 76(sp),-(sp)			
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	lea ___divdf3,a3			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 40(sp),a0			
	move.l 36(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,48(sp)			
	move.l d1,52(sp)			
	move.l 72(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
_?L57:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (48,sp),sp				
	rts					
_?L58:						
						
	move.l 96(sp),a1			
	move.l 4(a1),a0				
	clr.l (a0)				
	clr.l 4(a0)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (48,sp),sp				
	rts					
						
	.align	2				
	.globl	_aubio_specdesc_decrease	
						
_aubio_specdesc_decrease:			
	lea (-24,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 68(sp),a0			
						
	move.l (a0),d3				
						
	move.l 72(sp),a1			
	move.l 4(a1),a5				
						
	jbeq _?L74				
						
	move.l 4(a0),a4				
	move.l a4,a6				
	move.l d3,d4				
	lsl.l #3,d4				
	add.l a4,d4				
						
	sub.l a0,a0				
	sub.l a1,a1				
	lea ___adddf3,a3			
_?L75:						
						
	subq.l #8,sp				
	move.l (a6)+,(sp)			
	move.l (a6)+,4(sp)			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	cmp.l d4,a6				
	jbne _?L75				
						
	clr.l (a5)				
	clr.l 4(a5)				
						
	clr.l d4				
	clr.l d5				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l a0,56(sp)			
	move.l d1,52(sp)			
	jbsr ___eqdf2				
	lea (16,sp),sp				
	move.l 40(sp),a0			
	move.l 36(sp),a1			
	tst.l d0				
	jbeq _?L73				
						
	move.l (a4),d6				
	move.l 4(a4),d7				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,52(sp)			
	move.l a1,56(sp)			
						
	moveq #1,d0				
	cmp.l d3,d0				
	jbeq _?L81				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 12(a4),-(sp)			
	move.l 8(a4),-(sp)			
	jbsr ___subdf3				
						
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,44(sp)			
	move.l a1,48(sp)			
	move.l a0,(a5)				
	move.l a1,4(a5)				
						
	moveq #2,d0				
	cmp.l d3,d0				
	jbeq _?L87				
	lea (16,a4),a6				
						
	moveq #2,d6				
	move.l #___divdf3,d7			
	move.l d7,d0				
	move.l a6,d7				
	move.l d0,a6				
_?L79:						
						
	move.l d7,a0				
	move.l (a0)+,d0				
	move.l (a0)+,d1				
	move.l a0,d7				
						
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d6,-(sp)				
	jbsr ___floatunsidf			
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,44(sp)			
	move.l a1,48(sp)			
	move.l a0,(a5)				
	move.l a1,4(a5)				
						
	addq.l #1,d6				
						
	cmp.l d6,d3				
	jbne _?L79				
	move.l a6,d7				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l d7,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
_?L73:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (24,sp),sp				
	rts					
_?L81:						
						
	move.l d4,44(sp)			
	move.l d5,48(sp)			
_?L87:						
	move.l #___divdf3,d7			
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l d7,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
	jbra _?L73				
_?L74:						
						
	clr.l (a5)				
	clr.l 4(a5)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (24,sp),sp				
	rts					
						
	.globl	___gtdf2			
	.align	2				
	.globl	_aubio_specdesc_rolloff		
						
_aubio_specdesc_rolloff:			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 44(sp),a0			
						
	move.l (a0),d3				
						
	jbeq _?L91				
	move.l 4(a0),a5				
	lsl.l #3,d3				
	add.l a5,d3				
						
	move.l a5,a6				
						
	clr.l d4				
	clr.l d5				
	lea ___muldf3,a3			
	lea ___adddf3,a4			
_?L92:						
						
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
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	cmp.l d3,a6				
	jbne _?L92				
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr ___eqdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L91				
						
	move.l #1717986918,-(sp)		
	move.l #1072588390,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	lea ___gtdf2,a6				
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L110				
						
	clr.l d4				
	clr.l d5				
						
	moveq #0,d3				
_?L98:						
						
	move.l (a5)+,d0				
	move.l (a5)+,d1				
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
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	addq.l #1,d3				
						
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L98				
						
	move.l d3,-(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l 48(sp),a0			
	move.l 4(a0),a2				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a2)				
	move.l a1,4(a2)				
_?L90:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L91:						
						
	move.l 48(sp),a1			
	move.l 4(a1),a0				
	clr.l (a0)				
	clr.l 4(a0)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L110:						
						
	clr.l d0				
	clr.l d1				
						
	move.l 48(sp),a0			
	move.l 4(a0),a2				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a2)				
	move.l a1,4(a2)				
	jbra _?L90				
						
						
