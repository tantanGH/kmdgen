* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"hist.c"			
						
						
						
						
						
	.text					
	.globl	___floatunsidf			
	.globl	___subdf3			
	.globl	___divdf3			
	.globl	___muldf3			
	.globl	___adddf3			
	.align	2				
	.globl	_new_aubio_hist			
						
_new_aubio_hist:				
	lea (-16,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 64(sp),a4			
	move.l 68(sp),a5			
	move.l 72(sp),d3			
						
	pea 1.w					
	pea 16.w				
	jbsr _calloc				
	addq.l #8,sp				
	move.l d0,a3				
						
	move.l d3,-(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr ___subdf3				
						
	lea (12,sp),sp				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,44(sp)			
	move.l d5,48(sp)			
						
	tst.l d3				
	jble _?L10				
						
	move.l d3,4(a3)				
						
	move.l d3,-(sp)				
	lea _new_fvec,a6			
	jbsr (a6)				
						
	move.l d0,(a3)				
						
	move.l d3,(sp)				
	jbsr (a6)				
						
	move.l d0,8(a3)				
						
	move.l d7,(sp)				
	move.l d6,-(sp)				
	clr.l -(sp)				
	clr.l -(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 84(sp),-(sp)			
	move.l 84(sp),-(sp)			
	jbsr _new_aubio_scale			
	lea (32,sp),sp				
						
	move.l d0,12(a3)			
						
	move.l 8(a3),a0				
	move.l 4(a0),a5				
						
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr ___muldf3				
	lea (16,sp),sp				
						
	lea ___adddf3,a6			
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	move.l a0,(a5)				
	move.l a1,4(a5)				
						
	move.l 4(a3),d6				
						
	moveq #1,d0				
	cmp.l d6,d0				
	jbcc _?L1				
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,8(a5)				
	move.l d1,12(a5)			
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	moveq #2,d0				
	cmp.l d6,d0				
	jbeq _?L1				
	lea (16,a5),a4				
	lsl.l #3,d6				
	add.l a5,d6				
_?L6:						
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	cmp.l a4,d6				
	jbne _?L6				
_?L1:						
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
_?L10:						
						
	move.l a3,-(sp)				
	jbsr _free				
	addq.l #4,sp				
						
	sub.l a3,a3				
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
						
	.align	2				
	.globl	_del_aubio_hist			
						
_del_aubio_hist:				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 12(sp),a3			
						
	move.l (a3),-(sp)			
	lea _del_fvec,a4			
	jbsr (a4)				
						
	move.l 8(a3),(sp)			
	jbsr (a4)				
						
	move.l 12(a3),(sp)			
	jbsr _del_aubio_scale			
	addq.l #4,sp				
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _free				
						
	.globl	___fixdfsi			
	.align	2				
	.globl	_aubio_hist_do			
						
_aubio_hist_do:					
	movem.l d3/d4/d5/a3/a4/a5/a6,-(sp)	
	move.l 32(sp),a4			
	move.l 36(sp),a3			
						
	move.l a3,-(sp)				
	move.l 12(a4),-(sp)			
	jbsr _aubio_scale_do			
						
	addq.l #4,sp				
	move.l (a4),(sp)			
	jbsr _fvec_zeros			
	addq.l #4,sp				
						
	move.l (a3),d3				
						
	jbeq _?L13				
	move.l 4(a3),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea _floor,a6				
	lea ___fixdfsi,a5			
						
	move.l #___adddf3,d4			
_?L16:						
						
	subq.l #8,sp				
	move.l (a3)+,(sp)			
	move.l (a3)+,4(sp)			
	jbsr (a6)				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jblt _?L15				
						
	cmp.l 4(a4),d0				
	jbge _?L15				
						
	move.l (a4),a0				
						
	lsl.l #3,d0				
	move.l 4(a0),d5				
	add.l d0,d5				
						
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	move.l d5,a0				
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	move.l d4,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d5,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
_?L15:						
						
	cmp.l a3,d3				
	jbne _?L16				
_?L13:						
						
	movem.l (sp)+,d3/d4/d5/a3/a4/a5/a6	
	rts					
						
	.globl	___nedf2			
	.align	2				
	.globl	_aubio_hist_do_notnull		
						
_aubio_hist_do_notnull:				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 40(sp),a5			
	move.l 44(sp),a3			
						
	move.l a3,-(sp)				
	move.l 12(a5),-(sp)			
	jbsr _aubio_scale_do			
						
	addq.l #4,sp				
	move.l (a5),(sp)			
	jbsr _fvec_zeros			
	addq.l #4,sp				
						
	move.l (a3),d3				
						
	jbeq _?L23				
	move.l 4(a3),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___nedf2,a4				
						
	clr.l d6				
	clr.l d7				
						
	lea _floor,a6				
_?L27:						
						
	move.l (a3)+,d4				
	move.l (a3)+,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L25				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixdfsi				
	addq.l #8,sp				
						
	tst.l d0				
	jblt _?L25				
						
	cmp.l 4(a5),d0				
	jbge _?L25				
						
	move.l (a5),a0				
						
	lsl.l #3,d0				
	move.l 4(a0),d4				
	add.l d0,d4				
						
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	move.l d4,a0				
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d4,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
_?L25:						
						
	cmp.l d3,a3				
	jbne _?L27				
_?L23:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.align	2				
	.globl	_aubio_hist_dyn_notnull		
						
_aubio_hist_dyn_notnull:			
	subq.l #8,sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 48(sp),a5			
						
	move.l 52(sp),-(sp)			
	jbsr _fvec_min				
	addq.l #4,sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 52(sp),-(sp)			
	jbsr _fvec_max				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,40(sp)			
	move.l a1,44(sp)			
						
	move.l 4(a5),(sp)			
	jbsr ___floatunsidf			
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,a3				
	move.l a1,a4				
						
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	jbsr ___subdf3				
						
	lea (12,sp),sp				
	move.l a4,(sp)				
	move.l a3,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	clr.l -(sp)				
	clr.l -(sp)				
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 12(a5),-(sp)			
	jbsr _aubio_scale_set_limits		
	lea (36,sp),sp				
						
	move.l 8(a5),a0				
	move.l 4(a0),a3				
						
	move.l #___muldf3,d3			
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d3,a0				
	jbsr (a0)				
	lea (16,sp),sp				
						
	lea ___adddf3,a4			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	move.l a0,(a3)				
	move.l a1,4(a3)				
						
	move.l 4(a5),d6				
						
	moveq #1,d0				
	cmp.l d6,d0				
	jbcc _?L36				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,8(a3)				
	move.l d1,12(a3)			
						
	moveq #2,d1				
	cmp.l d6,d1				
	jbeq _?L36				
	lea (16,a3),a6				
						
	moveq #2,d7				
_?L38:						
						
	move.l d7,-(sp)				
	jbsr ___floatunsidf			
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d3,a0				
	jbsr (a0)				
						
	lea (12,sp),sp				
	move.l 4(a3),(sp)			
	move.l (a3),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l d0,(a6)+				
	move.l d1,(a6)+				
						
	addq.l #1,d7				
						
	cmp.l d7,d6				
	jbne _?L38				
_?L36:						
						
	move.l 52(sp),-(sp)			
	move.l 12(a5),-(sp)			
	jbsr _aubio_scale_do			
						
	addq.l #4,sp				
	move.l (a5),(sp)			
	jbsr _fvec_zeros			
	addq.l #4,sp				
						
	move.l 52(sp),a0			
	move.l (a0),d3				
						
	jbeq _?L35				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___nedf2,a6				
						
	clr.l d6				
	clr.l d7				
_?L43:						
						
	move.l (a3)+,d4				
	move.l (a3)+,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L41				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr _floor				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixdfsi				
	addq.l #8,sp				
						
	tst.l d0				
	jblt _?L41				
						
	cmp.l 4(a5),d0				
	jbge _?L41				
						
	move.l (a5),a0				
						
	lsl.l #3,d0				
	move.l 4(a0),d4				
	add.l d0,d4				
						
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	move.l d4,a0				
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d4,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
_?L41:						
						
	cmp.l d3,a3				
	jbne _?L43				
_?L35:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_aubio_hist_weight		
						
_aubio_hist_weight:				
	subq.l #8,sp				
	movem.l d3/a3/a4/a5,-(sp)		
	move.l 28(sp),a0			
						
	move.l 4(a0),d3				
						
	jbeq _?L50				
						
	move.l (a0),a1				
	move.l 4(a1),a3				
						
	move.l 8(a0),a0				
	move.l 4(a0),a4				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___muldf3,a5			
_?L52:						
						
	move.l (a3),d0				
	move.l 4(a3),d1				
						
	subq.l #8,sp				
	move.l (a4)+,(sp)			
	move.l (a4)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,16(sp)			
	move.l d1,20(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l a3,d3				
	jbne _?L52				
_?L50:						
						
	movem.l (sp)+,d3/a3/a4/a5		
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_aubio_hist_mean		
						
_aubio_hist_mean:				
	subq.l #8,sp				
	movem.l d3/d4/a3/a4,-(sp)		
	move.l 28(sp),a0			
						
	move.l 4(a0),d4				
						
	jbeq _?L62				
						
	move.l (a0),a0				
	move.l 4(a0),a3				
	move.l d4,d3				
	lsl.l #3,d3				
	add.l a3,d3				
						
	sub.l a0,a0				
	sub.l a1,a1				
	lea ___adddf3,a4			
_?L61:						
						
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
	jbne _?L61				
						
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
_?L62:						
						
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
						
						
