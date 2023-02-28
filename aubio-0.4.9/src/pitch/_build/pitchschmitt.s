* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"pitchschmitt.c"		
						
						
						
						
						
	.text					
	.align	2				
	.globl	_new_aubio_pitchschmitt		
						
_new_aubio_pitchschmitt:			
	movem.l d3/a3/a4,-(sp)			
	move.l 16(sp),d3			
						
	pea 20.w				
	lea _MALLOC,a4				
	jbsr (a4)				
	move.l d0,a3				
						
	move.l d3,(a3)				
						
	add.l d3,d3				
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,8(a3)				
						
	move.l (a3),d0				
	add.l d0,d0				
	move.l d0,(sp)				
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,16(a3)			
						
	move.l 8(a3),12(a3)			
						
	move.l a3,d0				
	movem.l (sp)+,d3/a3/a4			
	rts					
						
	.globl	___floatsidf			
	.globl	___muldf3			
	.globl	___adddf3			
	.globl	___fixdfsi			
	.globl	___divdf3			
	.align	2				
	.globl	_aubio_schmittS16LE		
						
_aubio_schmittS16LE:				
	lea (-16,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 60(sp),d0			
						
	move.l 56(sp),a0			
	move.l (a0),d3				
						
	move.l 8(a0),d5				
						
	move.l 12(a0),a0			
						
	tst.l d0				
	jbeq _?L21				
	move.l 64(sp),a3			
	add.l d0,d0				
	lea (a3,d0.l),a6			
	move.l d3,a4				
	add.l d3,a4				
	add.l d5,a4				
						
	clr.l 44(sp)				
	clr.l 48(sp)				
						
	move.l d3,d4				
	subq.l #1,d4				
_?L20:						
						
	move.w (a3)+,(a0)+			
						
	move.l a0,d0				
	sub.l d5,d0				
	asr.l #1,d0				
						
	cmp.l d0,d3				
	jble _?L41				
_?L5:						
						
	cmp.l a6,a3				
	jbne _?L20				
_?L4:						
						
	move.l 56(sp),a1			
	move.l d5,8(a1)				
						
	move.l a0,12(a1)			
						
	move.l 44(sp),d0			
	move.l 48(sp),d1			
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
_?L41:						
						
	tst.l d3				
	jbeq _?L23				
	move.l d5,a1				
						
	moveq #0,d7				
						
	moveq #0,d1				
_?L11:						
						
	move.w (a1)+,d0				
						
	jble _?L7				
						
	move.w d0,a0				
	cmp.l d1,a0				
	jble _?L9				
	move.l a0,d1				
_?L9:						
						
	cmp.l a1,a4				
	jbne _?L11				
_?L45:						
						
	move.l d1,-(sp)				
	jbsr ___floatsidf			
	move.l #858993459,(sp)			
	move.l #1071854387,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixdfsi				
	addq.l #8,sp				
	move.l d0,d6				
						
	move.l d7,-(sp)				
	jbsr ___floatsidf			
	move.l #858993459,(sp)			
	move.l #1071854387,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixdfsi				
	addq.l #8,sp				
						
	neg.l d0				
						
	moveq #1,d1				
	move.l d5,a0				
	cmp.l d3,d1				
	jbeq _?L5				
	addq.l #2,a0				
_?L12:						
						
	move.w (a0)+,a1				
						
	cmp.l a1,d6				
	jblt _?L42				
						
	addq.l #1,d1				
						
	cmp.l d3,d1				
	jbne _?L12				
_?L13:						
						
	move.l d1,40(sp)			
						
	move.l d1,a0				
	addq.l #1,a0				
	move.l a0,d7				
						
	cmp.l d3,d1				
	jbcc _?L28				
_?L47:						
	move.l d1,a1				
	add.l d1,a1				
	add.l d5,a1				
						
	moveq #0,d2				
						
	sub.l a5,a5				
						
	move.w (a1),a2				
						
	tst.l d2				
	jbne _?L17				
_?L43:						
						
	cmp.l a2,d6				
	sle d2					
	ext.w d2				
	ext.l d2				
	neg.l d2				
_?L18:						
						
	move.l a0,d1				
						
	addq.l #2,a1				
	cmp.l d3,a0				
	jbeq _?L35				
_?L44:						
	addq.l #1,a0				
						
	move.w (a1),a2				
						
	tst.l d2				
	jbeq _?L43				
_?L17:						
						
	cmp.l a2,d0				
	jbgt _?L18				
						
	move.w 2(a1),a2				
						
	cmp.l a2,d0				
	jble _?L18				
						
	move.l d1,d7				
						
	addq.l #1,a5				
						
	moveq #0,d2				
						
	move.l a0,d1				
						
	addq.l #2,a1				
	cmp.l d3,a0				
	jbne _?L44				
_?L35:						
						
	cmp.l 40(sp),d7				
	jble _?L28				
						
	cmp.w #0,a5				
	jbeq _?L28				
						
	lea ___floatsidf,a0			
	sub.l 40(sp),d7				
	move.l d7,-(sp)				
	move.l a0,40(sp)			
	jbsr (a0)				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l a5,(sp)				
	move.l 40(sp),a0			
	jbsr (a0)				
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,44(sp)			
	move.l d1,48(sp)			
						
	move.l d5,a0				
						
	cmp.l a6,a3				
	jbne _?L20				
	jbra _?L4				
_?L7:						
						
	tst.w d0				
	jbeq _?L9				
						
	ext.l d0				
						
	neg.l d0				
	cmp.l d7,d0				
	jble _?L9				
	move.l d0,d7				
						
	cmp.l a1,a4				
	jbne _?L11				
	jbra _?L45				
_?L42:						
						
	cmp.l d1,d4				
	jbls _?L13				
	move.l d1,a0				
	add.l d1,a0				
	add.l d5,a0				
_?L15:						
	move.l d1,d2				
						
	addq.l #1,d1				
						
	move.w (a0)+,a1				
						
	cmp.l a1,d0				
	jbgt _?L16				
						
	move.w (a0),a1				
						
	cmp.l a1,d0				
	jbgt _?L46				
_?L16:						
						
	cmp.l d4,d1				
	jbcs _?L15				
						
	move.l d1,40(sp)			
						
	move.l d1,a0				
	addq.l #1,a0				
	move.l a0,d7				
						
	cmp.l d3,d1				
	jbcs _?L47				
_?L28:						
						
	move.l d5,a0				
						
	cmp.l a6,a3				
	jbne _?L20				
	jbra _?L4				
_?L46:						
	move.l d2,d1				
	jbra _?L13				
_?L23:						
						
	moveq #0,d0				
						
	moveq #0,d6				
						
	moveq #1,d1				
	move.l d1,a0				
	add.l d1,a0				
	add.l d5,a0				
	jbra _?L15				
_?L21:						
						
	clr.l 44(sp)				
	clr.l 48(sp)				
						
	move.l 56(sp),a1			
	move.l d5,8(a1)				
						
	move.l a0,12(a1)			
						
	move.l 44(sp),d0			
	move.l 48(sp),d1			
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
						
	.align	2				
	.globl	_aubio_pitchschmitt_do		
						
_aubio_pitchschmitt_do:				
	movem.l d3/d4/d5/d6/a3/a4/a5/a6,-(sp)	
	move.l 36(sp),d5			
	move.l 40(sp),a0			
						
	move.l (a0),d4				
						
	move.l d5,a1				
	move.l 16(a1),d6			
						
	tst.l d4				
	jbeq _?L49				
	move.l 4(a0),a3				
	move.l d6,a4				
	move.l d4,d3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___muldf3,a6			
	lea ___fixdfsi,a5			
_?L50:						
						
	move.l (a3)+,d0				
	move.l (a3)+,d1				
						
	clr.l -(sp)				
	move.l #1088421888,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
	move.w d0,(a4)+				
						
	cmp.l d3,a3				
	jbne _?L50				
_?L49:						
						
	move.l 44(sp),a0			
	move.l 4(a0),a3				
						
	move.l d6,-(sp)				
	move.l d4,-(sp)				
	move.l d5,-(sp)				
	jbsr _aubio_schmittS16LE		
	lea (12,sp),sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	movem.l (sp)+,d3/d4/d5/d6/a3/a4/a5/a6	
	rts					
						
	.align	2				
	.globl	_del_aubio_pitchschmitt		
						
_del_aubio_pitchschmitt:			
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 12(sp),a3			
						
	move.l 8(a3),-(sp)			
	lea _MFREE,a4				
	jbsr (a4)				
						
	move.l 16(a3),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _MFREE				
						
						
