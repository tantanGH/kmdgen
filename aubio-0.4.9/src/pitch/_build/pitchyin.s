* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"pitchyin.c"			
						
						
						
						
						
	.text					
	.align	2				
	.globl	_new_aubio_pitchyin		
						
_new_aubio_pitchyin:				
	move.l a3,-(sp)				
						
	pea 16.w				
	jbsr _MALLOC				
	move.l d0,a3				
						
	move.l 12(sp),d0			
	lsr.l #1,d0				
	move.l d0,(sp)				
	jbsr _new_fvec				
	addq.l #4,sp				
						
	move.l d0,(a3)				
						
	move.l #1069757235,4(a3)		
	move.l #858993459,8(a3)			
						
	clr.l 12(a3)				
						
	move.l a3,d0				
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_del_aubio_pitchyin		
						
_del_aubio_pitchyin:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l (a3),-(sp)			
	jbsr _del_fvec				
	addq.l #4,sp				
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
						
	.globl	___subdf3			
	.globl	___muldf3			
	.globl	___adddf3			
	.globl	___nedf2			
	.globl	___floatunsidf			
	.globl	___divdf3			
	.globl	___ltdf2			
	.align	2				
	.globl	_aubio_pitchyin_do		
						
_aubio_pitchyin_do:				
	lea (-28,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
						
	move.l 68(sp),a0			
	move.l 4(a0),52(sp)			
	move.l 8(a0),56(sp)			
						
	move.l (a0),60(sp)			
						
	move.l 72(sp),a0			
	move.l 4(a0),44(sp)			
						
	move.l 60(sp),a0			
	move.l (a0),48(sp)			
						
	move.l 4(a0),a3				
						
	move.l #1072693248,(a3)			
	clr.l 4(a3)				
						
	moveq #1,d0				
	cmp.l 48(sp),d0				
	jbcc _?L15				
	addq.l #8,a3				
	move.l 44(sp),d7			
	addq.l #8,d7				
	move.l 48(sp),d3			
	lsl.l #3,d3				
	add.l 44(sp),d3				
						
	clr.l 36(sp)				
	clr.l 40(sp)				
						
	moveq #1,d6				
	lea ___adddf3,a4			
_?L14:						
						
	clr.l (a3)+				
	clr.l (a3)+				
	move.l d7,a6				
	move.l 44(sp),a5			
	clr.l d4				
	clr.l d5				
_?L8:						
						
	move.l (a5)+,d0				
	move.l (a5)+,d1				
						
	subq.l #8,sp				
	move.l (a6)+,(sp)			
	move.l (a6)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,a0				
						
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,-8(a3)			
	move.l d5,-4(a3)			
						
	cmp.l d3,a5				
	jbne _?L8				
						
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,36(sp)			
	move.l a1,40(sp)			
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr ___nedf2				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L22				
						
	move.l d6,-(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l 40(sp),-(sp)			
	move.l 40(sp),-(sp)			
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
_?L9:						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,-8(a3)			
	move.l a1,-4(a3)			
						
	moveq #4,d0				
	cmp.l d6,d0				
	jbcc _?L11				
						
	move.l -32(a3),d4			
	move.l -28(a3),d5			
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L11				
						
	move.l -20(a3),-(sp)			
	move.l -24(a3),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L25				
_?L11:						
						
	addq.l #1,d6				
						
	addq.l #8,d7				
	cmp.l 48(sp),d6				
	jbne _?L14				
_?L15:						
						
	move.l 60(sp),-(sp)			
	jbsr _fvec_min_elem			
						
	move.l 72(sp),a0			
	move.l d0,12(a0)			
						
	move.l 80(sp),a0			
	move.l 4(a0),a3				
						
	move.l d0,(sp)				
	move.l 64(sp),-(sp)			
	jbsr _fvec_quadratic_peak_pos		
	addq.l #8,sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (28,sp),sp				
	rts					
_?L22:						
	move.l #1072693248,d0			
	clr.l d1				
	jbra _?L9				
_?L25:						
						
	subq.l #3,d6				
						
	move.l 68(sp),a0			
	move.l d6,12(a0)			
						
	move.l 76(sp),a0			
	move.l 4(a0),a3				
						
	move.l d6,-(sp)				
	move.l 64(sp),-(sp)			
	jbsr _fvec_quadratic_peak_pos		
	addq.l #8,sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (28,sp),sp				
	rts					
						
	.align	2				
	.globl	_aubio_pitchyin_get_confidence	
						
_aubio_pitchyin_get_confidence:			
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
	.globl	_aubio_pitchyin_set_tolerance	
						
_aubio_pitchyin_set_tolerance:			
						
	move.l 4(sp),a0				
	move.l 8(sp),d0				
	move.l 12(sp),d1			
	move.l d0,4(a0)				
	move.l d1,8(a0)				
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_pitchyin_get_tolerance	
						
_aubio_pitchyin_get_tolerance:			
						
	move.l 4(sp),a0				
	move.l 4(a0),d0				
	move.l 8(a0),d1				
	rts					
						
						
