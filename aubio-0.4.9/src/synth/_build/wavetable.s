* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"wavetable.c"			
						
						
						
						
						
	.text					
	.globl	___fixunsdfsi			
	.globl	___subdf3			
	.globl	___floatunsidf			
	.globl	___muldf3			
	.globl	___adddf3			
	.align	2				
						
_interp_2?isra?0:				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 40(sp),a6			
	move.l 44(sp),d4			
	move.l 48(sp),d5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr _floor				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
	move.l d0,d3				
						
	lsl.l #3,d0				
						
	move.l (a6,d0.l),a4			
	move.l 4(a6,d0.l),a5			
						
	lea ___subdf3,a3			
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 12(a6,d0.l),-(sp)		
	move.l 8(a6,d0.l),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d3,-(sp)				
	jbsr ___floatunsidf			
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l a5,(sp)				
	move.l a4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$43,$61,$6e
	.dc.b $20,$6e,$6f,$74,$20,$63,$72,$65
	.dc.b $61,$74,$65,$20,$77,$61,$76,$65
	.dc.b $74,$61,$62,$6c,$65,$20,$77,$69
	.dc.b $74,$68,$20,$73,$61,$6d,$70,$6c
	.dc.b $65,$72,$61,$74,$65,$20,$25,$64
	.dc.b $0a
	.dc.b $00				
	.globl	___divdf3			
	.text					
	.align	2				
	.globl	_new_aubio_wavetable		
						
_new_aubio_wavetable:				
	lea (-12,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 52(sp),d3			
						
	pea 36.w				
	jbsr _MALLOC				
	addq.l #4,sp				
	move.l d0,a3				
						
	tst.l d3				
	jble _?L12				
						
	move.l d3,(a3)				
						
	move.l 56(sp),4(a3)			
						
	move.l #4096,8(a3)			
						
	pea 4099.w				
	jbsr _new_fvec				
	addq.l #4,sp				
						
	move.l d0,12(a3)			
						
	move.l 8(a3),d3				
						
	jbeq _?L6				
						
	move.l d0,a0				
	move.l 4(a0),44(sp)			
						
	lea ___floatunsidf,a4			
	move.l d3,-(sp)				
	jbsr (a4)				
	addq.l #4,sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l 44(sp),a6			
						
	moveq #0,d7				
	lea ___muldf3,a5			
	move.l #___divdf3,d6			
_?L7:						
						
	move.l d7,-(sp)				
	jbsr (a4)				
	move.l #1413754136,(sp)			
	move.l #1075388923,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
						
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d6,a1				
	jbsr (a1)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _sin				
	addq.l #8,sp				
						
	move.l d0,(a6)+				
	move.l d1,(a6)+				
						
	addq.l #1,d7				
						
	cmp.l d7,d3				
	jbne _?L7				
						
	move.l d7,d2				
	lsl.l #3,d2				
	move.l 44(sp),a1			
	add.l d2,a1				
						
	move.l d2,d0				
	addq.l #8,d0				
						
	move.w #16,a0				
	add.l d2,a0				
						
	move.l 44(sp),a2			
	move.l (a2),d1				
	move.l 4(a2),d2				
	move.l d1,(a1)				
	move.l d2,4(a1)				
						
	move.l 8(a2),d1				
	move.l 12(a2),d2			
	move.l d1,(a2,d0.l)			
	move.l d2,4(a2,d0.l)			
						
	move.l 16(a2),d0			
	move.l 20(a2),d1			
	move.l d0,(a2,a0.l)			
	move.l d1,4(a2,a0.l)			
						
	clr.l 16(a3)				
						
	clr.l 20(a3)				
	clr.l 24(a3)				
						
	pea 10.w				
	move.l (a3),-(sp)			
	jbsr (a4)				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	clr.l -(sp)				
	lea _new_aubio_parameter,a4		
	jbsr (a4)				
	lea (20,sp),sp				
						
	move.l d0,28(a3)			
						
	pea 100.w				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	clr.l -(sp)				
	clr.l -(sp)				
	jbsr (a4)				
	lea (20,sp),sp				
						
	move.l d0,32(a3)			
_?L3:						
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (12,sp),sp				
	rts					
_?L12:						
						
	move.l d3,-(sp)				
	pea _?LC0				
	clr.l -(sp)				
	jbsr _aubio_log				
						
	addq.l #8,sp				
	move.l a3,(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	sub.l a3,a3				
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (12,sp),sp				
	rts					
_?L6:						
						
	move.l d0,a2				
	move.l 4(a2),44(sp)			
	move.l 44(sp),a1			
	move.w #16,a0				
	moveq #8,d0				
	lea ___floatunsidf,a4			
	lea ___muldf3,a5			
						
	move.l 44(sp),a2			
	move.l (a2),d1				
	move.l 4(a2),d2				
	move.l d1,(a1)				
	move.l d2,4(a1)				
						
	move.l 8(a2),d1				
	move.l 12(a2),d2			
	move.l d1,(a2,d0.l)			
	move.l d2,4(a2,d0.l)			
						
	move.l 16(a2),d0			
	move.l 20(a2),d1			
	move.l d0,(a2,a0.l)			
	move.l d1,4(a2,a0.l)			
						
	clr.l 16(a3)				
						
	clr.l 20(a3)				
	clr.l 24(a3)				
						
	pea 10.w				
	move.l (a3),-(sp)			
	jbsr (a4)				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	clr.l -(sp)				
	lea _new_aubio_parameter,a4		
	jbsr (a4)				
	lea (20,sp),sp				
						
	move.l d0,28(a3)			
						
	pea 100.w				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	clr.l -(sp)				
	clr.l -(sp)				
	jbsr (a4)				
	lea (20,sp),sp				
						
	move.l d0,32(a3)			
	jbra _?L3				
						
	.globl	___ltdf2			
	.align	2				
	.globl	_aubio_wavetable_do		
						
_aubio_wavetable_do:				
	lea (-32,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 72(sp),d3			
	move.l 76(sp),64(sp)			
	move.l 80(sp),56(sp)			
						
	move.l d3,a0				
	move.l 16(a0),d4			
						
	move.l 56(sp),a0			
	move.l (a0),d0				
						
	tst.l d4				
	jbne _?L14				
	move.l #_aubio_parameter_get_next_value,52(sp)
						
	tst.l d0				
	jbeq _?L22				
	move.l d3,a3				
	move.l 56(sp),a5			
	move.l 52(sp),a4			
_?L15:						
						
	move.l 28(a3),-(sp)			
	jbsr (a4)				
						
	move.l 32(a3),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	addq.l #1,d4				
						
	cmp.l (a5),d4				
	jbcs _?L15				
_?L22:						
						
	move.l 56(sp),-(sp)			
	jbsr _fvec_zeros			
	addq.l #4,sp				
_?L16:						
						
	tst.l 64(sp)				
	jbeq _?L13				
						
	move.l 56(sp),a0			
	cmp.l 64(sp),a0				
	jbeq _?L13				
						
	move.l (a0),d3				
						
	jbeq _?L26				
	move.l 56(sp),a0			
	move.l 4(a0),a3				
	move.l 64(sp),a0			
	move.l 4(a0),a4				
	lsl.l #3,d3				
	add.l a3,d3				
	move.l #___adddf3,60(sp)		
	lea ___adddf3,a5			
_?L25:						
						
	move.l (a3),d0				
	move.l 4(a3),d1				
						
	subq.l #8,sp				
	move.l (a4)+,(sp)			
	move.l (a4)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l a3,d3				
	jbne _?L25				
_?L26:						
						
	move.l #1072693248,76(sp)		
	clr.l 80(sp)				
	move.l 56(sp),72(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (32,sp),sp				
						
	jbra _fvec_clamp			
_?L13:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (32,sp),sp				
	rts					
_?L14:						
						
	move.l d3,a0				
	move.l 20(a0),d4			
	move.l 24(a0),d5			
						
	tst.l d0				
	jbeq _?L17				
	sub.l a0,a0				
						
	clr.l 44(sp)				
	move.l #_aubio_parameter_get_next_value,52(sp)
	move.l #___adddf3,60(sp)		
	lea ___ltdf2,a3				
	lea ___subdf3,a6			
	move.l d3,a4				
	move.l a0,d3				
	move.l 56(sp),a5			
_?L21:						
						
	move.l 28(a4),-(sp)			
	move.l 56(sp),a0			
	jbsr (a0)				
	move.l d0,a0				
						
	move.l 8(a4),(sp)			
	move.l a0,44(sp)			
	move.l d1,40(sp)			
	jbsr ___floatunsidf			
	move.l d0,d6				
	move.l d1,d7				
						
	move.l (a4),(sp)			
	jbsr ___floatunsidf			
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	move.l 40(sp),a0			
	move.l 36(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 76(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L18				
_?L20:						
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L20				
_?L18:						
						
	move.l 4(a5),d6				
	add.l d3,d6				
						
	move.l 32(a4),-(sp)			
	move.l 56(sp),a0			
	jbsr (a0)				
	move.l d6,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l 12(a4),a0			
	move.l 4(a0),-(sp)			
	jbsr (_interp_2?isra?0)			
	lea (12,sp),sp				
						
	move.l 4(a5),d6				
	add.l d3,d6				
						
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d6,a0				
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d6,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	addq.l #1,44(sp)			
						
	addq.l #8,d3				
	move.l 44(sp),a0			
	cmp.l (a5),a0				
	jbcs _?L21				
	move.l a4,d3				
_?L17:						
						
	move.l d3,a0				
	move.l d4,20(a0)			
	move.l d5,24(a0)			
	jbra _?L16				
						
	.align	2				
	.globl	_aubio_wavetable_do_multi	
						
_aubio_wavetable_do_multi:			
	lea (-28,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
						
	move.l 68(sp),a0			
	move.l 16(a0),d3			
						
	move.l 76(sp),a1			
	move.l (a1),d0				
						
	tst.l d3				
	jbne _?L44				
	move.l #_aubio_parameter_get_next_value,56(sp)
						
	tst.l d0				
	jbeq _?L55				
	move.l 68(sp),a3			
	move.l 76(sp),a5			
	move.l 56(sp),a4			
_?L45:						
						
	move.l 28(a3),-(sp)			
	jbsr (a4)				
						
	move.l 32(a3),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	addq.l #1,d3				
						
	cmp.l (a5),d3				
	jbcs _?L45				
_?L55:						
						
	move.l 76(sp),-(sp)			
	jbsr _fmat_zeros			
	addq.l #4,sp				
_?L46:						
						
	tst.l 72(sp)				
	jbeq _?L43				
						
	move.l 76(sp),a0			
	cmp.l 72(sp),a0				
	jbeq _?L43				
						
	move.l 4(a0),d6				
						
	jbeq _?L43				
						
	move.l (a0),d0				
	move.l d0,d7				
	lsl.l #3,d7				
	moveq #0,d4				
						
	moveq #0,d5				
						
	tst.l d0				
	jbeq _?L80				
	move.l #___adddf3,60(sp)		
	move.l 76(sp),a0			
	move.l 8(a0),a4				
	move.l 72(sp),a1			
	move.l 8(a1),a5				
	move.l a4,44(sp)			
	lea ___adddf3,a6			
_?L59:						
	move.l 44(sp),a1			
	move.l (a1,d4.l),a3			
	move.l (a5,d4.l),a4			
	move.l d7,d3				
	add.l a3,d3				
_?L58:						
						
	move.l (a3),d0				
	move.l 4(a3),d1				
						
	subq.l #8,sp				
	move.l (a4)+,(sp)			
	move.l (a4)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l d3,a3				
	jbne _?L58				
						
	addq.l #1,d5				
						
	addq.l #4,d4				
	cmp.l d6,d5				
	jbne _?L59				
_?L43:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (28,sp),sp				
	rts					
_?L44:						
						
	move.l 68(sp),a0			
	move.l 20(a0),d6			
	move.l 24(a0),d7			
						
	tst.l d0				
	jbeq _?L47				
	moveq #0,d3				
						
	clr.l 52(sp)				
	move.l #_aubio_parameter_get_next_value,56(sp)
	lea ___muldf3,a6			
	move.l #___adddf3,60(sp)		
	lea ___ltdf2,a3				
_?L52:						
						
	move.l 68(sp),a1			
	move.l 28(a1),-(sp)			
	move.l 60(sp),a0			
	jbsr (a0)				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l 72(sp),a1			
	move.l 32(a1),(sp)			
	move.l 60(sp),a0			
	jbsr (a0)				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,48(sp)			
	move.l a1,52(sp)			
						
	move.l 72(sp),a1			
	move.l 8(a1),(sp)			
	jbsr ___floatunsidf			
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 72(sp),a0			
	move.l (a0),(sp)			
	jbsr ___floatunsidf			
						
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
	jbsr (a6)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 76(sp),a1			
	jbsr (a1)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L48				
_?L50:						
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L50				
_?L48:						
						
	move.l 76(sp),a0			
	move.l 4(a0),d0				
						
	jbeq _?L54				
	move.l 68(sp),a1			
	move.l 12(a1),a0			
	move.l 4(a0),d5				
	move.l 76(sp),a0			
	move.l 8(a0),a4				
	add.l d0,d0				
	add.l d0,d0				
	move.l a4,d4				
	add.l d0,d4				
_?L53:						
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	jbsr (_interp_2?isra?0)			
	lea (12,sp),sp				
						
	move.l (a4)+,a5				
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,(a5,d3.l)			
	move.l d1,4(a5,d3.l)			
						
	cmp.l d4,a4				
	jbne _?L53				
_?L54:						
						
	addq.l #1,52(sp)			
						
	addq.l #8,d3				
	move.l 52(sp),a0			
	move.l 76(sp),a1			
	cmp.l (a1),a0				
	jbcs _?L52				
_?L47:						
						
	move.l 68(sp),a1			
	move.l d6,20(a1)			
	move.l d7,24(a1)			
	jbra _?L46				
_?L80:						
						
	addq.l #1,d5				
						
	cmp.l d5,d6				
	jbeq _?L43				
						
	addq.l #1,d5				
						
	cmp.l d5,d6				
	jbne _?L80				
	jbra _?L43				
						
	.align	2				
	.globl	_aubio_wavetable_get_playing	
						
_aubio_wavetable_get_playing:			
						
	move.l 4(sp),a0				
	move.l 16(a0),d0			
	rts					
						
	.align	2				
	.globl	_aubio_wavetable_set_playing	
						
_aubio_wavetable_set_playing:			
						
	moveq #1,d1				
	cmp.l 8(sp),d1				
	seq d0					
	ext.w d0				
	ext.l d0				
						
	move.l 4(sp),a0				
	neg.l d0				
	move.l d0,16(a0)			
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_wavetable_play		
						
_aubio_wavetable_play:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l #1717986918,-(sp)		
	move.l #1072064102,-(sp)		
	move.l 32(a3),-(sp)			
	jbsr _aubio_parameter_set_target_value	
	lea (12,sp),sp				
						
	moveq #1,d0				
	move.l d0,16(a3)			
						
	moveq #0,d0				
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_aubio_wavetable_stop		
						
_aubio_wavetable_stop:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l 32(a3),-(sp)			
	jbsr _aubio_parameter_set_target_value	
	lea (12,sp),sp				
						
	clr.l 16(a3)				
						
	moveq #0,d0				
	move.l (sp)+,a3				
	rts					
						
	.data					
_?LC1:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$77,$61,$76
	.dc.b $65,$74,$61,$62,$6c,$65,$3a,$20
	.dc.b $6c,$6f,$61,$64,$20,$6d,$65,$74
	.dc.b $68,$6f,$64,$20,$6e,$6f,$74,$20
	.dc.b $69,$6d,$70,$6c,$65,$6d,$65,$6e
	.dc.b $74,$65,$64,$20,$79,$65,$74,$2c
	.dc.b $20,$73,$65,$65,$20,$73,$61,$6d
	.dc.b $70,$6c,$65,$72,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_wavetable_load		
						
_aubio_wavetable_load:				
						
	pea _?LC1				
	clr.l -(sp)				
	jbsr _aubio_log				
	addq.l #8,sp				
						
	moveq #1,d0				
	rts					
						
	.align	2				
	.globl	_aubio_wavetable_set_freq	
						
_aubio_wavetable_set_freq:			
						
	move.l 4(sp),a0				
	move.l 28(a0),4(sp)			
						
						
	jbra _aubio_parameter_set_target_value	
						
	.align	2				
	.globl	_aubio_wavetable_get_freq	
						
_aubio_wavetable_get_freq:			
						
	move.l 4(sp),a0				
	move.l 28(a0),4(sp)			
						
						
	jbra _aubio_parameter_get_current_value	
						
	.align	2				
	.globl	_aubio_wavetable_set_amp	
						
_aubio_wavetable_set_amp:			
						
	move.l 4(sp),a0				
	move.l 32(a0),4(sp)			
						
						
	jbra _aubio_parameter_set_target_value	
						
	.align	2				
	.globl	_aubio_wavetable_get_amp	
						
_aubio_wavetable_get_amp:			
						
	move.l 4(sp),a0				
	move.l 32(a0),4(sp)			
						
						
	jbra _aubio_parameter_get_current_value	
						
	.align	2				
	.globl	_del_aubio_wavetable		
						
_del_aubio_wavetable:				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 12(sp),a3			
						
	move.l 28(a3),-(sp)			
	lea _del_aubio_parameter,a4		
	jbsr (a4)				
						
	move.l 32(a3),(sp)			
	jbsr (a4)				
						
	move.l 12(a3),(sp)			
	jbsr _del_fvec				
	addq.l #4,sp				
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _MFREE				
						
						
