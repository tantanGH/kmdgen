* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"beattracking.c"		
						
						
						
						
						
	.text					
	.globl	___floatunsidf			
	.globl	___muldf3			
	.globl	___divdf3			
	.globl	___fixunsdfsi			
	.globl	___adddf3			
	.align	2				
	.globl	_new_aubio_beattracking		
						
_new_aubio_beattracking:			
	lea (-44,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 84(sp),d3			
	move.l 88(sp),d6			
	move.l 92(sp),d7			
						
	pea 116.w				
	jbsr _MALLOC				
	move.l d0,a3				
						
	lea ___floatunsidf,a6			
	move.l d7,(sp)				
	jbsr (a6)				
	lea ___muldf3,a5			
	clr.l (sp)				
	move.l #1078853632,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
						
	lea ___divdf3,a4			
	clr.l -(sp)				
	move.l #1079902208,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d6,-(sp)				
	jbsr (a6)				
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,72(sp)			
	move.l a1,76(sp)			
						
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l #-17155601,-(sp)			
	move.l #1072049730,-(sp)		
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,52(sp)			
	move.l a1,56(sp)			
						
	move.l d3,a0				
	pea 2(a0)				
	jbsr (a6)				
	addq.l #4,sp				
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _exp				
	addq.l #8,sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,60(sp)			
	move.l a1,64(sp)			
						
	move.l d3,d0				
	lsr.l #2,d0				
	move.l d0,68(sp)			
						
	move.l d6,(a3)				
						
	move.l d7,4(a3)				
						
	clr.l 52(a3)				
	clr.l 56(a3)				
						
	clr.l 60(a3)				
						
	clr.l 64(a3)				
						
	move.l #1074738495,68(a3)		
	move.l #2095944040,72(a3)		
						
	move.l #1072693248,92(a3)		
	clr.l 96(a3)				
						
	clr.l 76(a3)				
	clr.l 80(a3)				
						
	move.l 76(sp),-(sp)			
	move.l 76(sp),-(sp)			
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
	move.l d0,48(a3)			
						
	move.l 68(sp),44(a3)			
						
	move.l 68(sp),-(sp)			
	move.l #_new_fvec,d4			
	move.l d4,a0				
	jbsr (a0)				
	addq.l #4,sp				
						
	move.l d0,8(a3)				
						
	move.l 68(sp),-(sp)			
	move.l d4,a0				
	jbsr (a0)				
						
	move.l d0,16(a3)			
						
	move.l d3,(sp)				
	move.l d4,a0				
	jbsr (a0)				
						
	move.l d0,12(a3)			
						
	move.l d3,(sp)				
	move.l d4,a0				
	jbsr (a0)				
						
	move.l d0,24(a3)			
						
	move.l d3,(sp)				
	move.l d4,a0				
	jbsr (a0)				
	addq.l #4,sp				
						
	move.l d0,28(a3)			
						
	move.l 68(sp),-(sp)			
	move.l d4,a0				
	jbsr (a0)				
						
	move.l d0,32(a3)			
						
	move.l 72(sp),d0			
	add.l d0,d0				
	move.l d0,(sp)				
	move.l d4,a0				
	jbsr (a0)				
						
	move.l d0,20(a3)			
						
	move.l d3,(sp)				
	move.l d4,a0				
	jbsr (a0)				
	addq.l #4,sp				
						
	move.l d0,36(a3)			
						
	clr.l 40(a3)				
						
	tst.l d3				
	jbeq _?L1				
	moveq #0,d6				
						
	move.l d6,d4				
	move.l a3,d7				
_?L3:						
						
	addq.l #1,d6				
						
	move.l d6,-(sp)				
	jbsr (a6)				
	addq.l #4,sp				
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _exp				
	addq.l #8,sp				
						
	move.l d7,a3				
	move.l 12(a3),a1			
						
	move.l 4(a1),a3				
						
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,(a3,d4.l)			
	move.l d1,4(a3,d4.l)			
						
	addq.l #8,d4				
	cmp.l d6,d3				
	jbne _?L3				
						
	move.l d7,a3				
	tst.l 68(sp)				
	jbeq _?L1				
						
	move.l 76(sp),-(sp)			
	move.l 76(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l 84(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,52(sp)			
	move.l a1,56(sp)			
						
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,60(sp)			
	move.l a1,64(sp)			
	moveq #0,d6				
						
	moveq #0,d7				
	move.l d6,d3				
	move.l a3,d6				
_?L4:						
						
	move.l d7,-(sp)				
	jbsr (a6)				
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,a0				
						
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l a0,56(sp)			
	move.l d1,52(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
						
	add.l #-2147483648,d0			
	move.l d0,44(sp)			
	move.l d1,48(sp)			
						
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr (a4)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _exp				
	addq.l #8,sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d6,a3				
	move.l 8(a3),a2				
						
	move.l 4(a2),a3				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 48(sp),a0			
	move.l 44(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a4)				
						
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,(a3,d3.l)			
	move.l d1,4(a3,d3.l)			
						
	addq.l #1,d7				
						
	addq.l #8,d3				
	cmp.l 68(sp),d7				
	jbne _?L4				
	move.l d6,a3				
_?L1:						
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (44,sp),sp				
	rts					
						
	.align	2				
	.globl	_del_aubio_beattracking		
						
_del_aubio_beattracking:			
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 12(sp),a3			
						
	move.l 8(a3),-(sp)			
	lea _del_fvec,a4			
	jbsr (a4)				
						
	move.l 16(a3),(sp)			
	jbsr (a4)				
						
	move.l 12(a3),(sp)			
	jbsr (a4)				
						
	move.l 24(a3),(sp)			
	jbsr (a4)				
						
	move.l 28(a3),(sp)			
	jbsr (a4)				
						
	move.l 32(a3),(sp)			
	jbsr (a4)				
						
	move.l 20(a3),(sp)			
	jbsr (a4)				
						
	move.l 36(a3),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _MFREE				
						
	.globl	___gtdf2			
	.align	2				
	.globl	_fvec_gettimesig		
						
_fvec_gettimesig:				
	lea (-12,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 60(sp),d3			
						
	moveq #1,d0				
	cmp.l d3,d0				
	jbcc _?L29				
						
	move.l 52(sp),a0			
	move.l 4(a0),a0				
						
	move.l d3,d0				
	add.l d3,d0				
	move.l d0,d6				
	add.l d3,d6				
	move.l d6,d1				
	add.l d6,d1				
						
	addq.l #2,d1				
						
	cmp.l 56(sp),d1				
	jbcc _?L19				
	lsl.l #4,d0				
	lea -16(a0,d0.l),a4			
	lsl.l #5,d3				
	lea 16(a0,d3.l),a6			
	lsl.l #3,d6				
	move.l d6,a5				
						
	sub.l a0,a0				
	sub.l a1,a1				
						
	move.l a0,d4				
	move.l a1,d5				
	lea ___adddf3,a3			
_?L20:						
						
	move.l a4,a2				
	sub.l d3,a2				
						
	move.l 4(a2,a5.l),-(sp)			
	move.l (a2,a5.l),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a0,56(sp)			
	move.l a1,52(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	subq.l #8,sp				
	move.l (a4)+,(sp)			
	move.l (a4)+,4(sp)			
	move.l 48(sp),a0			
	move.l 44(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	cmp.l a6,a4				
	jbne _?L20				
_?L21:						
						
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L29				
	moveq #3,d0				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (12,sp),sp				
	rts					
_?L29:						
						
	moveq #4,d0				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (12,sp),sp				
	rts					
_?L19:						
	subq.l #2,d0				
	lsl.l #3,d0				
	lea (a0,d0.l),a6			
	move.l d3,d7				
	lsl.l #4,d7				
	lea 16(a0,d7.l),a0			
	move.l a0,44(sp)			
	move.l d6,d0				
	lsl.l #3,d0				
	move.l d0,a4				
	lsl.l #4,d6				
	lsl.l #5,d3				
						
	sub.l a0,a0				
	sub.l a1,a1				
						
	move.l a0,d4				
	move.l a1,d5				
	lea ___adddf3,a3			
_?L22:						
	move.l a6,a5				
	sub.l d7,a5				
						
	move.l 4(a5,d6.l),-(sp)			
	move.l (a5,d6.l),-(sp)			
	move.l 4(a5,a4.l),-(sp)			
	move.l (a5,a4.l),-(sp)			
	move.l a0,56(sp)			
	move.l a1,52(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l (a6)+,d0				
	move.l (a6)+,d1				
						
	move.l 4(a5,d3.l),-(sp)			
	move.l (a5,d3.l),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 48(sp),a0			
	move.l 44(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	cmp.l 44(sp),a6				
	jbeq _?L21				
	move.l a6,a5				
	sub.l d7,a5				
						
	move.l 4(a5,d6.l),-(sp)			
	move.l (a5,d6.l),-(sp)			
	move.l 4(a5,a4.l),-(sp)			
	move.l (a5,a4.l),-(sp)			
	move.l a0,56(sp)			
	move.l a1,52(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l (a6)+,d0				
	move.l (a6)+,d1				
						
	move.l 4(a5,d3.l),-(sp)			
	move.l (a5,d3.l),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 48(sp),a0			
	move.l 44(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	cmp.l 44(sp),a6				
	jbne _?L22				
	jbra _?L21				
						
	.globl	___nedf2			
	.globl	___subdf3			
	.globl	___ltdf2			
	.align	2				
	.globl	_aubio_beattracking_checkstate	
						
_aubio_beattracking_checkstate:			
	lea (-84,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
						
	move.l 124(sp),a0			
	move.l 60(a0),68(sp)			
						
	move.l 64(a0),92(sp)			
						
	move.l a0,a1				
	move.l 92(a0),72(sp)			
	move.l 96(a0),76(sp)			
						
	move.l 100(a0),96(sp)			
	move.l 104(a0),100(sp)			
						
	move.l 108(a0),108(sp)			
	move.l 112(a0),112(sp)			
						
	move.l 8(a0),a0				
	move.l (a0),88(sp)			
						
	move.l 28(a1),44(sp)			
						
	move.l 44(sp),a0			
	move.l (a0),116(sp)			
						
	move.l 44(a1),104(sp)			
						
	clr.l d4				
	clr.l d5				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 80(a1),-(sp)			
	move.l 76(a1),-(sp)			
	jbsr ___nedf2				
	lea (16,sp),sp				
	tst.l d0				
	jbne _?L85				
						
	move.l d4,80(sp)			
	move.l d5,84(sp)			
_?L34:						
						
	tst.l 68(sp)				
	jbne _?L43				
						
	move.l 76(sp),-(sp)			
	move.l 76(sp),-(sp)			
	move.l 92(sp),-(sp)			
	move.l 92(sp),-(sp)			
	jbsr ___subdf3				
	lea (16,sp),sp				
						
	move.l d0,d4				
	bclr #31,d4				
	move.l d1,d5				
						
	move.l 124(sp),a0			
	move.l 68(a0),d0			
	move.l 72(a0),d1			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
						
	lea ___gtdf2,a3				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L86				
	moveq #2,d0				
	move.l d0,68(sp)			
						
	moveq #1,d1				
	move.l d1,92(sp)			
_?L45:						
						
	move.l 124(sp),a0			
	tst.l 40(a0)				
	jbeq _?L52				
_?L88:						
						
	move.l #___floatunsidf,d3		
	move.l 104(sp),-(sp)			
	move.l d3,a1				
	jbsr (a1)				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,48(sp)			
	move.l a1,52(sp)			
						
	move.l 128(sp),a0			
	move.l 52(a0),d4			
	move.l 56(a0),d5			
						
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L80				
						
	move.l 88(sp),d7			
	add.l d7,d7				
						
	jbeq _?L82				
						
	lea ___muldf3,a4			
	clr.l -(sp)				
	move.l #1069547520,-(sp)		
	move.l 92(sp),-(sp)			
	move.l 92(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,60(sp)			
	move.l a1,64(sp)			
						
	move.l 124(sp),a1			
	move.l 20(a1),a0			
	move.l 4(a0),a6				
						
	moveq #0,d6				
	lea ___adddf3,a5			
	move.l #___subdf3,36(sp)		
	move.l #___divdf3,56(sp)		
	move.l #_exp,52(sp)			
	move.l a3,88(sp)			
	move.l d3,a3				
	move.l d6,d3				
	move.l #___subdf3,d6			
						
	move.l d3,-(sp)				
	jbsr (a3)				
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d6,a0				
	jbsr (a0)				
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a4)				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #-1075838976,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 72(sp),a1			
	jbsr (a1)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 60(sp),a0			
	jbsr (a0)				
	addq.l #8,sp				
						
	move.l d0,(a6)+				
	move.l d1,(a6)+				
						
	addq.l #1,d3				
						
	cmp.l d3,d7				
	jbeq _?L87				
_?L56:						
						
	move.l 124(sp),a1			
	move.l 52(a1),d4			
	move.l 56(a1),d5			
	move.l d3,-(sp)				
	jbsr (a3)				
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d6,a0				
	jbsr (a0)				
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a4)				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #-1075838976,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 72(sp),a1			
	jbsr (a1)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 60(sp),a0			
	jbsr (a0)				
	addq.l #8,sp				
						
	move.l d0,(a6)+				
	move.l d1,(a6)+				
						
	addq.l #1,d3				
						
	cmp.l d3,d7				
	jbne _?L56				
_?L87:						
	move.l 88(sp),a3			
_?L82:						
						
	move.l 80(sp),d4			
	move.l 84(sp),d5			
_?L51:						
						
	clr.l d6				
	clr.l d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	lea ___ltdf2,a4				
	tst.l d0				
	jble _?L59				
						
	lea ___adddf3,a5			
_?L58:						
						
	clr.l -(sp)				
	move.l #1077477376,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L59				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L58				
_?L59:						
						
	move.l 124(sp),a0			
	move.l 68(sp),60(a0)			
						
	move.l 92(sp),64(a0)			
						
	move.l 80(sp),76(a0)			
	move.l 84(sp),80(a0)			
						
	move.l d4,84(a0)			
	move.l d5,88(a0)			
						
	move.l 72(sp),100(a0)			
	move.l 76(sp),104(a0)			
						
	move.l 96(sp),108(a0)			
	move.l 100(sp),112(a0)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (84,sp),sp				
	rts					
_?L86:						
						
	clr.l 92(sp)				
						
	move.l 124(sp),a0			
	tst.l 40(a0)				
	jbne _?L88				
_?L52:						
						
	move.l 124(sp),a1			
	move.l 20(a1),-(sp)			
	jbsr _fvec_ones				
	addq.l #4,sp				
						
	move.l 72(sp),d4			
	move.l 76(sp),d5			
	jbra _?L51				
_?L43:						
						
	moveq #1,d0				
	cmp.l 68(sp),d0				
	jbne _?L46				
						
	cmp.l 92(sp),d0				
	jbeq _?L89				
	clr.l 68(sp)				
	lea ___gtdf2,a3				
	jbra _?L45				
_?L85:						
						
	move.l 124(sp),a0			
	move.l 32(a0),52(sp)			
						
	move.l 52(sp),-(sp)			
	jbsr _fvec_zeros			
	addq.l #4,sp				
						
	move.l 88(sp),d0			
	subq.l #1,d0				
	move.l d0,60(sp)			
						
	moveq #1,d1				
	cmp.l d0,d1				
	jbcc _?L36				
						
	move.l 124(sp),a0			
	move.l 40(a0),36(sp)			
	moveq #24,d7				
	moveq #8,d6				
						
	moveq #1,d0				
	move.l d0,56(sp)			
	lea ___adddf3,a5			
_?L37:						
						
	tst.l 36(sp)				
	jbeq _?L39				
	move.l d7,d5				
	move.l d6,d4				
						
	moveq #1,d3				
_?L42:						
						
	move.l d3,d0				
	add.l d3,d0				
	moveq #1,d1				
	cmp.l d0,d1				
	jbcc _?L41				
						
	move.l 52(sp),a0			
	move.l 4(a0),a3				
	add.l d6,a3				
						
	move.l 44(sp),a1			
	move.l 4(a1),a4				
						
	move.l (a3),a0				
	move.l 4(a3),a1				
	lea (a4,d4.l),a6			
	lea -8(a4,d5.l),a4			
_?L38:						
						
	subq.l #8,sp				
	move.l (a6)+,(sp)			
	move.l (a6)+,4(sp)			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a3)				
	move.l a1,4(a3)				
						
	cmp.l a4,a6				
	jbne _?L38				
_?L41:						
						
	addq.l #1,d3				
						
	add.l d6,d4				
	add.l d7,d5				
	cmp.l 36(sp),d3				
	jbls _?L42				
_?L39:						
						
	addq.l #1,56(sp)			
						
	addq.l #8,d6				
	addq.l #8,d7				
	move.l 56(sp),a0			
	cmp.l 60(sp),a0				
	jbne _?L37				
_?L36:						
						
	move.l 124(sp),a1			
	move.l 16(a1),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr _fvec_weight			
	addq.l #8,sp				
						
	move.l 52(sp),-(sp)			
	jbsr _fvec_max_elem			
	move.l d0,(sp)				
	move.l 56(sp),-(sp)			
	jbsr _fvec_quadratic_peak_pos		
	addq.l #8,sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,80(sp)			
	move.l a1,84(sp)			
	jbra _?L34				
_?L46:						
						
	tst.l 68(sp)				
	jbgt _?L79				
	lea ___gtdf2,a3				
	jbra _?L45				
_?L80:						
						
	move.l 124(sp),a0			
	move.l 20(a0),-(sp)			
	jbsr _fvec_ones				
	addq.l #4,sp				
						
	move.l 80(sp),d4			
	move.l 84(sp),d5			
	jbra _?L51				
_?L79:						
						
	subq.l #1,68(sp)			
	lea ___gtdf2,a3				
	jbra _?L45				
_?L89:						
						
	move.l 124(sp),a0			
	move.l 68(a0),d6			
	move.l 72(a0),d7			
						
	lea ___adddf3,a5			
	move.l 76(sp),-(sp)			
	move.l 76(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l 84(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
						
	move.l #___subdf3,36(sp)		
	move.l 100(sp),-(sp)			
	move.l 100(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 52(sp),a1			
	jbsr (a1)				
	lea (16,sp),sp				
						
	move.l 112(sp),-(sp)			
	move.l 112(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 52(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
						
	move.l d0,d4				
	bclr #31,d4				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L78				
						
	move.l 76(sp),-(sp)			
	move.l 76(sp),-(sp)			
	jbsr ___fixunsdfsi			
	addq.l #4,sp				
	move.l d0,(sp)				
	move.l 120(sp),-(sp)			
	move.l 52(sp),-(sp)			
	jbsr _fvec_gettimesig			
	lea (12,sp),sp				
						
	move.l 124(sp),a1			
	move.l d0,40(a1)			
						
	tst.l 88(sp)				
	jbeq _?L49				
						
	move.l 124(sp),a1			
	move.l 16(a1),a0			
	move.l 4(a0),a3				
						
	sub.l a6,a6				
	move.l #___floatunsidf,d3		
	lea ___muldf3,a4			
	move.l #___divdf3,56(sp)		
	move.l #_exp,52(sp)			
_?L50:						
						
	move.l a6,-(sp)				
	move.l d3,a0				
	jbsr (a0)				
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l 76(sp),-(sp)			
	move.l 76(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 52(sp),a1			
	jbsr (a1)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a4)				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #-1075838976,-(sp)		
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
	move.l 72(sp),a0			
	jbsr (a0)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 60(sp),a1			
	jbsr (a1)				
	addq.l #8,sp				
						
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	addq.l #1,a6				
						
	cmp.l 88(sp),a6				
	jbeq _?L49				
						
	move.l 124(sp),a0			
	move.l 68(a0),d6			
	move.l 72(a0),d7			
	jbra _?L50				
_?L78:						
						
	moveq #2,d0				
	move.l d0,68(sp)			
	lea ___gtdf2,a3				
	jbra _?L45				
_?L49:						
						
	move.l 124(sp),a1			
	move.l 20(a1),-(sp)			
	jbsr _fvec_ones				
	addq.l #4,sp				
						
	move.l 72(sp),d4			
	move.l 76(sp),d5			
						
	move.l d4,80(sp)			
	move.l d5,84(sp)			
						
	clr.l 68(sp)				
	lea ___gtdf2,a3				
	jbra _?L51				
						
	.globl	___eqdf2			
	.globl	___gedf2			
	.align	2				
	.globl	_aubio_beattracking_do		
						
_aubio_beattracking_do:				
	lea (-64,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 104(sp),68(sp)			
	move.l 108(sp),d3			
	move.l 112(sp),88(sp)			
						
	move.l 68(sp),a0			
	move.l 44(a0),92(sp)			
						
	move.l a0,a1				
	move.l 8(a0),a0				
	move.l (a0),d4				
						
	move.l 12(a1),a0			
	move.l (a0),96(sp)			
						
	move.l 24(a1),-(sp)			
	move.l d3,-(sp)				
	jbsr _fvec_copy				
	addq.l #8,sp				
						
	move.l 68(sp),a2			
	move.l 12(a2),-(sp)			
	move.l 24(a2),-(sp)			
	jbsr _fvec_weight			
	addq.l #8,sp				
						
	move.l 68(sp),a0			
	move.l 24(a0),-(sp)			
	jbsr _fvec_rev				
						
	move.l 72(sp),a1			
	move.l 28(a1),(sp)			
	move.l d3,-(sp)				
	jbsr _aubio_autocorr			
	addq.l #8,sp				
						
	move.l 68(sp),a2			
	move.l 40(a2),72(sp)			
						
	jbne _?L91				
						
	moveq #4,d0				
	move.l d0,72(sp)			
_?L91:						
						
	move.l 68(sp),a0			
	move.l 32(a0),-(sp)			
	jbsr _fvec_zeros			
	addq.l #4,sp				
						
	subq.l #1,d4				
	move.l d4,84(sp)			
						
	moveq #1,d0				
	cmp.l d4,d0				
	jbcc _?L92				
						
	move.l 68(sp),a0			
	move.l 32(a0),76(sp)			
	moveq #24,d0				
	move.l d0,64(sp)			
	moveq #8,d1				
	move.l d1,56(sp)			
						
	moveq #1,d0				
	move.l d0,80(sp)			
						
	lea ___adddf3,a6			
_?L93:						
						
	move.l 64(sp),44(sp)			
	move.l 56(sp),52(sp)			
						
	moveq #1,d3				
_?L99:						
						
	move.l d3,d0				
	add.l d3,d0				
	moveq #1,d1				
	cmp.l d0,d1				
	jbcc _?L97				
						
	move.l 56(sp),a3			
	move.l 76(sp),a0			
	add.l 4(a0),a3				
						
	move.l 68(sp),a1			
	move.l 28(a1),a0			
	move.l 4(a0),a4				
						
	move.l d3,-(sp)				
	jbsr ___floatunsidf			
	move.l d0,a0				
	move.l d1,(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a6)				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l (a3),d4				
	move.l 4(a3),d5				
	move.l 52(sp),a5			
	add.l a4,a5				
	move.l 44(sp),a2			
	lea -8(a4,a2.l),a4			
_?L94:						
						
	move.l (a5)+,d0				
	move.l (a5)+,d1				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,(a3)				
	move.l d5,4(a3)				
						
	cmp.l a4,a5				
	jbne _?L94				
_?L97:						
						
	addq.l #1,d3				
						
	move.l 56(sp),d0			
	add.l d0,52(sp)				
	move.l 64(sp),d1			
	add.l d1,44(sp)				
	cmp.l 72(sp),d3				
	jbls _?L99				
						
	addq.l #1,80(sp)			
						
	addq.l #8,56(sp)			
	addq.l #8,64(sp)			
	move.l 80(sp),a0			
	cmp.l 84(sp),a0				
	jbne _?L93				
_?L98:						
						
	move.l 68(sp),a2			
	move.l 8(a2),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr _fvec_weight			
	addq.l #8,sp				
						
	move.l 68(sp),a0			
	move.l 32(a0),-(sp)			
	jbsr _fvec_max_elem			
	addq.l #4,sp				
						
	tst.l d0				
	jbeq _?L100				
						
	move.l 68(sp),a1			
	move.l 32(a1),a0			
						
	move.l (a0),d1				
	subq.l #1,d1				
						
	cmp.l d1,d0				
	jbcs _?L142				
_?L100:						
						
	move.l 68(sp),a2			
	move.l 48(a2),-(sp)			
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,d2				
	move.l d1,d0				
_?L101:						
						
	move.l d2,a0				
	move.l d0,a1				
	move.l 68(sp),a2			
	move.l a0,92(a2)			
	move.l a1,96(a2)			
						
	move.l a2,-(sp)				
	jbsr _aubio_beattracking_checkstate	
						
	move.l 72(sp),a0			
	move.l 84(a0),48(sp)			
	move.l 88(a0),52(sp)			
						
	clr.l d4				
	clr.l d5				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr ___eqdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L143				
						
	lea ___floatunsidf,a5			
	move.l 96(sp),-(sp)			
	jbsr (a5)				
	addq.l #4,sp				
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _floor				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
	move.l d0,d7				
						
	move.l 68(sp),a1			
	move.l 36(a1),-(sp)			
	jbsr _fvec_zeros			
						
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L137				
						
	move.l 68(sp),a2			
	move.l 36(a2),72(sp)			
	clr.l 56(sp)				
						
	moveq #0,d6				
	lea ___adddf3,a3			
	move.l #___muldf3,52(sp)		
	move.l #___ltdf2,64(sp)			
_?L106:						
						
	tst.l d7				
	jbeq _?L111				
						
	move.l 56(sp),a4			
	move.l 72(sp),a0			
	add.l 4(a0),a4				
						
	move.l 68(sp),a1			
	move.l 24(a1),a0			
	move.l 4(a0),a6				
						
	move.l (a4),d4				
	move.l 4(a4),d5				
						
	moveq #0,d3				
_?L107:						
						
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #4,sp				
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 68(sp),a2			
	jbsr (a2)				
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _floor				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
						
	add.l d6,d0				
	lsl.l #3,d0				
						
	move.l 4(a6,d0.l),-(sp)			
	move.l (a6,d0.l),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,(a4)				
	move.l d5,4(a4)				
						
	addq.l #1,d3				
						
	cmp.l d7,d3				
	jbne _?L107				
_?L111:						
						
	addq.l #1,d6				
						
	addq.l #8,56(sp)			
	move.l d6,-(sp)				
	jbsr (a5)				
	addq.l #4,sp				
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 80(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L106				
						
	move.l 68(sp),a2			
	move.l 20(a2),-(sp)			
	move.l 76(sp),-(sp)			
	jbsr _fvec_weight			
	addq.l #8,sp				
						
	move.l 68(sp),a0			
	move.l 36(a0),-(sp)			
	jbsr _fvec_max_elem			
	addq.l #4,sp				
						
	move.l 96(sp),d1			
	subq.l #1,d1				
						
	cmp.l d1,d0				
	jbcs _?L112				
_?L144:						
						
	move.l 92(sp),-(sp)			
	jbsr (a5)				
						
	lea ___subdf3,a4			
	move.l 72(sp),a1			
	move.l 56(a1),(sp)			
	move.l 52(a1),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
_?L113:						
						
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 88(sp),-(sp)			
	jbsr _fvec_zeros			
						
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 92(sp),-(sp)			
	jbsr (a5)				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,60(sp)			
	move.l a1,64(sp)			
	move.l 72(sp),a0			
	move.l 56(a0),(sp)			
	move.l 52(a0),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	jbsr (a4)				
						
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l #-1717986918,-(sp)		
	move.l #-1076258407,-(sp)		
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 68(sp),a1			
	jbsr (a1)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 80(sp),a2			
	jbsr (a2)				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L114				
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
_?L114:						
						
	move.l a5,d3				
	move.l 44(sp),a4			
	move.l 48(sp),a5			
	move.l 64(sp),a6			
_?L116:						
	move.l d6,d4				
	move.l d7,d5				
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l d5,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L116				
						
	move.l d3,a5				
	move.l 88(sp),a0			
	move.l 4(a0),52(sp)			
						
	lea ___gedf2,a4				
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L138				
						
	move.l 52(sp),a1			
	move.l d4,8(a1)				
	move.l d5,12(a1)			
						
	moveq #2,d3				
_?L117:						
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L119				
	move.l d3,d0				
	lsl.l #3,d0				
	move.l 52(sp),a6			
	add.l d0,a6				
_?L121:						
						
	move.l d6,(a6)+				
	move.l d7,(a6)+				
						
	addq.l #1,d3				
	move.l d6,d4				
	move.l d7,d5				
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L121				
_?L119:						
						
	move.l 68(sp),a2			
	move.l d4,52(a2)			
	move.l d5,56(a2)			
						
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #4,sp				
	move.l 52(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (64,sp),sp				
	rts					
_?L112:						
						
	move.l d0,-(sp)				
	move.l 72(sp),a2			
	move.l 36(a2),-(sp)			
	jbsr _fvec_quadratic_peak_pos		
	addq.l #8,sp				
	move.l d0,a0				
	move.l d1,a1				
	lea ___subdf3,a4			
	jbra _?L113				
_?L143:						
						
	move.l 88(sp),104(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (64,sp),sp				
						
	jbra _fvec_zeros			
_?L138:						
						
	moveq #1,d3				
	jbra _?L117				
_?L142:						
						
	move.l d0,-(sp)				
	move.l a0,-(sp)				
	jbsr _fvec_quadratic_peak_pos		
	addq.l #8,sp				
	move.l d0,d2				
	move.l d1,d0				
						
	jbra _?L101				
_?L92:						
						
	move.l 68(sp),a1			
	move.l 32(a1),76(sp)			
	jbra _?L98				
_?L137:						
						
	move.l 68(sp),a1			
	move.l 36(a1),72(sp)			
	lea ___adddf3,a3			
	move.l #___muldf3,52(sp)		
	move.l #___ltdf2,64(sp)			
	move.l 68(sp),a2			
	move.l 20(a2),-(sp)			
	move.l 76(sp),-(sp)			
	jbsr _fvec_weight			
	addq.l #8,sp				
						
	move.l 68(sp),a0			
	move.l 36(a0),-(sp)			
	jbsr _fvec_max_elem			
	addq.l #4,sp				
						
	move.l 96(sp),d1			
	subq.l #1,d1				
						
	cmp.l d1,d0				
	jbcc _?L144				
	jbra _?L112				
						
	.align	2				
	.globl	_aubio_beattracking_get_period	
						
_aubio_beattracking_get_period:			
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l (a3),-(sp)			
	jbsr ___floatunsidf			
	move.l 88(a3),(sp)			
	move.l 84(a3),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
						
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_aubio_beattracking_get_period_s
						
_aubio_beattracking_get_period_s:		
	movem.l d4/d5/a3/a4,-(sp)		
	move.l 20(sp),a3			
						
	lea ___floatunsidf,a4			
	move.l (a3),-(sp)			
	jbsr (a4)				
	move.l 88(a3),(sp)			
	move.l 84(a3),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 4(a3),-(sp)			
	jbsr (a4)				
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d4/d5/a3/a4		
	rts					
						
	.align	2				
	.globl	_aubio_beattracking_get_bpm	
						
_aubio_beattracking_get_bpm:			
	movem.l d4/d5/d6/d7/a3/a4,-(sp)		
	move.l 28(sp),a3			
						
	move.l 84(a3),d6			
	move.l 88(a3),d7			
						
	clr.l d4				
	clr.l d5				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___nedf2				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L154				
						
	lea ___floatunsidf,a4			
	move.l (a3),-(sp)			
	jbsr (a4)				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 4(a3),-(sp)			
	jbsr (a4)				
						
	lea ___divdf3,a3			
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1078853632,-(sp)		
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a1				
	move.l d1,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
_?L154:						
						
	move.l d4,a1				
	move.l d5,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
						
	.align	2				
	.globl	_aubio_beattracking_get_confidence
						
_aubio_beattracking_get_confidence:		
	movem.l d4/d5/d6/d7/a3/a4,-(sp)		
	move.l 28(sp),a3			
						
	clr.l d4				
	clr.l d5				
	lea ___nedf2,a4				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 80(a3),-(sp)			
	move.l 76(a3),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jbne _?L158				
_?L160:						
						
	sub.l a1,a1				
	sub.l a0,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
_?L158:						
						
	move.l 32(a3),-(sp)			
	jbsr _fvec_sum				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L160				
						
	move.l 80(a3),-(sp)			
	move.l 76(a3),-(sp)			
	move.l 32(a3),-(sp)			
	jbsr _fvec_quadratic_peak_mag		
						
	addq.l #8,sp				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,a1				
	move.l d1,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
						
						
