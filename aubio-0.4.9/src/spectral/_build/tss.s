* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"tss.c"				
						
						
						
						
						
	.text					
	.globl	___adddf3			
	.globl	___subdf3			
	.globl	___muldf3			
	.globl	___gtdf2			
	.globl	___floatunsidf			
	.globl	___ltdf2			
	.globl	___eqdf2			
	.align	2				
	.globl	_aubio_tss_do			
						
_aubio_tss_do:					
	lea (-104,sp),sp			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 144(sp),a0			
						
	move.l 148(sp),a1			
	move.l (a1),136(sp)			
						
	move.l 8(a0),112(sp)			
	move.l 12(a0),116(sp)			
						
	move.l 16(a0),120(sp)			
	move.l 20(a0),124(sp)			
						
	move.l 24(a0),128(sp)			
	move.l 28(a0),132(sp)			
						
	move.l 56(a0),a1			
	move.l 4(a1),d0				
						
	move.l 48(a0),a1			
	move.l 4(a1),d1				
						
	move.l 52(a0),a1			
	move.l 4(a1),d2				
						
	move.l 40(a0),a1			
	move.l 4(a1),a1				
						
	move.l 44(a0),a0			
	move.l 4(a0),a0				
						
	tst.l 136(sp)				
	jbeq _?L1				
						
	move.l 148(sp),a2			
	move.l 8(a2),76(sp)			
	move.l a1,84(sp)			
	move.l a0,92(sp)			
	move.l d0,a5				
	move.l d1,72(sp)			
	move.l d2,68(sp)			
						
	moveq #0,d7				
	lea ___muldf3,a3			
	lea ___gtdf2,a6				
	lea ___floatunsidf,a4			
						
	move.l d7,88(sp)			
_?L15:						
	move.l 88(sp),d3			
	lsl.l #3,d3				
						
	move.l 84(sp),a0			
	move.l (a0),d0				
	move.l 4(a0),d1				
						
	move.l 92(sp),a1			
	move.l (a1),d4				
	move.l 4(a1),d5				
						
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 84(sp),a2			
	move.l 4(a2,d3.l),-(sp)			
	move.l (a2,d3.l),-(sp)			
	jbsr ___subdf3				
						
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _aubio_unwrap2pi			
	addq.l #8,sp				
						
	move.l d0,(a5)+				
	move.l d1,(a5)+				
						
	move.l 84(sp),a0			
	addq.l #8,84(sp)			
	move.l (a0),d0				
	move.l 4(a0),d1				
	move.l 92(sp),a0			
	addq.l #8,92(sp)			
	move.l d0,(a0)+				
	move.l d1,(a0)+				
						
	move.l 148(sp),a1			
	move.l 8(a1),76(sp)			
						
	move.l 76(sp),d6			
	add.l d3,d6				
						
	move.l d6,a0				
	move.l (a0),d0				
	move.l 4(a0),d1				
	move.l 84(sp),a0			
	move.l d0,-8(a0)			
	move.l d1,-4(a0)			
						
	move.l 72(sp),a1			
	addq.l #8,72(sp)			
	move.l (a1)+,d0				
	move.l (a1)+,d1				
						
	move.l 148(sp),a2			
	move.l 4(a2),d7				
	add.l d3,d7				
						
	move.l -8(a5),d2			
	bclr #31,d2				
	move.l d2,96(sp)			
	move.l -4(a5),100(sp)			
						
	move.l 132(sp),-(sp)			
	move.l 132(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	moveq #1,d4				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 108(sp),-(sp)			
	move.l 108(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L32				
_?L3:						
						
	moveq #1,d0				
	and.l d4,d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	move.l d0,a0				
						
	move.l 156(sp),a2			
	move.l 4(a2),d5				
	add.l d3,d5				
						
	move.l d1,(sp)				
	move.l a0,-(sp)				
	move.l d7,a2				
	move.l 4(a2),-(sp)			
	move.l (a2),-(sp)			
	move.l a0,56(sp)			
	move.l d1,52(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d5,a2				
	move.l d0,(a2)				
	move.l d1,4(a2)				
						
	move.l 152(sp),a2			
	move.l 8(a2),d4				
						
	move.l 40(sp),a0			
	move.l 36(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d6,a0				
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l d4,a1				
	move.l d0,(a1,d3.l)			
	move.l d1,4(a1,d3.l)			
						
	move.l 68(sp),a2			
	addq.l #8,68(sp)			
	move.l (a2)+,d0				
	move.l (a2)+,d1				
						
	move.l -8(a5),d2			
	bclr #31,d2				
	move.l d2,104(sp)			
	move.l -4(a5),108(sp)			
						
	move.l 132(sp),-(sp)			
	move.l 132(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	moveq #1,d4				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 116(sp),-(sp)			
	move.l 116(sp),-(sp)			
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L4				
	clr.b d4				
_?L4:						
						
	moveq #1,d0				
	and.l d4,d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	move.l d0,a0				
						
	move.l 160(sp),a2			
	move.l 4(a2),d4				
	add.l d3,d4				
						
	move.l d1,(sp)				
	move.l a0,-(sp)				
	move.l d7,a2				
	move.l 4(a2),-(sp)			
	move.l (a2),-(sp)			
	move.l a0,56(sp)			
	move.l d1,52(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d4,a2				
	move.l d0,(a2)				
	move.l d1,4(a2)				
						
	move.l 156(sp),a2			
	move.l 8(a2),d7				
						
	move.l 40(sp),a0			
	move.l 36(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d6,a0				
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l d7,a1				
	move.l d0,(a1,d3.l)			
	move.l d1,4(a1,d3.l)			
						
	moveq #1,d3				
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d5,a2				
	move.l 4(a2),-(sp)			
	move.l (a2),-(sp)			
	jbsr ___eqdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L5				
	clr.b d3				
_?L5:						
						
	moveq #1,d0				
	and.l d3,d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	move.l d0,d6				
	move.l d1,d7				
	move.l 76(sp),a0			
	move.l d6,-8(a0)			
	move.l d7,-4(a0)			
						
	moveq #1,d3				
	clr.l (sp)				
	clr.l -(sp)				
	move.l d5,a1				
	move.l 4(a1),-(sp)			
	move.l (a1),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L33				
						
	moveq #1,d0				
	and.l d3,d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #4,sp				
	move.l 116(sp),-(sp)			
	move.l 116(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
	move.l 72(sp),a0			
	move.l d6,-8(a0)			
	move.l d7,-4(a0)			
						
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L28				
_?L37:						
						
	moveq #1,d3				
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d5,a1				
	move.l 4(a1),-(sp)			
	move.l (a1),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L34				
						
	moveq #1,d0				
	and.l d3,d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #4,sp				
	move.l d0,a0				
	move.l d1,a1				
_?L7:						
						
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l 132(sp),-(sp)			
	move.l 132(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l 72(sp),a0			
	move.l d0,-8(a0)			
	move.l d1,-4(a0)			
						
	moveq #1,d3				
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d4,a1				
	move.l 4(a1),-(sp)			
	move.l (a1),-(sp)			
	jbsr ___eqdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L10				
	clr.b d3				
_?L10:						
						
	moveq #1,d0				
	and.l d3,d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	move.l d0,d6				
	move.l d1,d7				
	move.l 72(sp),a0			
	move.l d6,-8(a0)			
	move.l d7,-4(a0)			
						
	moveq #1,d3				
	clr.l (sp)				
	clr.l -(sp)				
	move.l d4,a1				
	move.l 4(a1),-(sp)			
	move.l (a1),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L35				
						
	moveq #1,d0				
	and.l d3,d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #4,sp				
	move.l 116(sp),-(sp)			
	move.l 116(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
	move.l 68(sp),a0			
	move.l d6,-8(a0)			
	move.l d7,-4(a0)			
						
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L29				
_?L38:						
						
	moveq #1,d3				
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d4,a1				
	move.l 4(a1),-(sp)			
	move.l (a1),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L36				
						
	moveq #1,d0				
	and.l d3,d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #4,sp				
	move.l d0,a0				
	move.l d1,a1				
_?L12:						
						
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l 132(sp),-(sp)			
	move.l 132(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l 68(sp),a0			
	move.l d0,-8(a0)			
	move.l d1,-4(a0)			
						
	addq.l #1,88(sp)			
						
	move.l 136(sp),a1			
	cmp.l 88(sp),a1				
	jbne _?L15				
_?L1:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (104,sp),sp				
	rts					
_?L33:						
						
	clr.b d3				
						
	moveq #1,d0				
	and.l d3,d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #4,sp				
	move.l 116(sp),-(sp)			
	move.l 116(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
	move.l 72(sp),a0			
	move.l d6,-8(a0)			
	move.l d7,-4(a0)			
						
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L37				
_?L28:						
	sub.l a0,a0				
	sub.l a1,a1				
	jbra _?L7				
_?L32:						
						
	clr.b d4				
	jbra _?L3				
_?L35:						
						
	clr.b d3				
						
	moveq #1,d0				
	and.l d3,d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #4,sp				
	move.l 116(sp),-(sp)			
	move.l 116(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
	move.l 68(sp),a0			
	move.l d6,-8(a0)			
	move.l d7,-4(a0)			
						
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L38				
_?L29:						
	sub.l a0,a0				
	sub.l a1,a1				
						
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l 132(sp),-(sp)			
	move.l 132(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l 68(sp),a0			
	move.l d0,-8(a0)			
	move.l d1,-4(a0)			
						
	addq.l #1,88(sp)			
						
	move.l 136(sp),a1			
	cmp.l 88(sp),a1				
	jbne _?L15				
	jbra _?L1				
_?L34:						
						
	clr.b d3				
						
	moveq #1,d0				
	and.l d3,d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #4,sp				
	move.l d0,a0				
	move.l d1,a1				
	jbra _?L7				
_?L36:						
						
	clr.b d3				
						
	moveq #1,d0				
	and.l d3,d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #4,sp				
	move.l d0,a0				
	move.l d1,a1				
	jbra _?L12				
						
	.align	2				
	.globl	_aubio_tss_set_threshold	
						
_aubio_tss_set_threshold:			
	subq.l #8,sp				
	move.l a3,-(sp)				
	move.l 16(sp),a3			
						
	move.l 20(sp),(a3)			
	move.l 24(sp),4(a3)			
						
	move.l 24(sp),-(sp)			
	move.l 24(sp),-(sp)			
	move.l 36(a3),-(sp)			
	move.l 32(a3),-(sp)			
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,4(sp)				
	move.l d1,8(sp)				
						
	move.l d0,24(a3)			
	move.l d1,28(a3)			
						
	moveq #0,d0				
	move.l (sp)+,a3				
	addq.l #8,sp				
	rts					
						
	.globl	___divdf3			
	.align	2				
	.globl	_new_aubio_tss			
						
_new_aubio_tss:					
	movem.l d3/d4/a3/a4/a5/a6,-(sp)		
						
	pea 60.w				
	jbsr _MALLOC				
	addq.l #4,sp				
	move.l d0,a3				
						
	move.l 28(sp),d3			
	lsr.l #1,d3				
						
	addq.l #1,d3				
						
	move.l #1070596096,(a3)			
	clr.l 4(a3)				
						
	move.l #___floatunsidf,d4		
	move.l 32(sp),-(sp)			
	move.l d4,a0				
	jbsr (a0)				
	lea ___muldf3,a6			
	move.l #1413754136,(sp)			
	move.l #1075388923,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l d3,-(sp)				
	move.l d4,a0				
	jbsr (a0)				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	move.l a0,32(a3)			
	move.l a1,36(a3)			
						
	move.l #1074266112,8(a3)		
	clr.l 12(a3)				
						
	move.l #1074790400,16(a3)		
	clr.l 20(a3)				
						
	clr.l -(sp)				
	move.l #1070596096,-(sp)		
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,24(a3)			
	move.l d1,28(a3)			
						
	move.l d3,-(sp)				
	lea _new_fvec,a4			
	jbsr (a4)				
						
	move.l d0,40(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,44(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,48(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,52(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,56(a3)			
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/a3/a4/a5/a6		
	rts					
						
	.align	2				
	.globl	_del_aubio_tss			
						
_del_aubio_tss:					
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 12(sp),a3			
						
	move.l 40(a3),-(sp)			
	lea _del_fvec,a4			
	jbsr (a4)				
						
	move.l 44(a3),(sp)			
	jbsr (a4)				
						
	move.l 48(a3),(sp)			
	jbsr (a4)				
						
	move.l 52(a3),(sp)			
	jbsr (a4)				
						
	move.l 56(a3),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _MFREE				
						
	.align	2				
	.globl	_aubio_tss_set_alpha		
						
_aubio_tss_set_alpha:				
						
	move.l 4(sp),a0				
	move.l 8(sp),d0				
	move.l 12(sp),d1			
	move.l d0,8(a0)				
	move.l d1,12(a0)			
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_tss_set_beta		
						
_aubio_tss_set_beta:				
						
	move.l 4(sp),a0				
	move.l 8(sp),d0				
	move.l 12(sp),d1			
	move.l d0,16(a0)			
	move.l d1,20(a0)			
						
	moveq #0,d0				
	rts					
						
						
