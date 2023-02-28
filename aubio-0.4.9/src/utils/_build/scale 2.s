* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"scale.c"			
						
						
						
						
						
	.text					
	.globl	___subdf3			
	.globl	___eqdf2			
	.globl	___divdf3			
	.align	2				
	.globl	_new_aubio_scale		
						
_new_aubio_scale:				
	movem.l d4/d5/d6/d7/a3/a4,-(sp)		
						
	pea 1.w					
	pea 48.w				
	jbsr _calloc				
	addq.l #8,sp				
	move.l d0,a3				
						
	lea ___subdf3,a4			
	move.l 32(sp),-(sp)			
	move.l 32(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
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
	jbeq _?L3				
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a4)				
						
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	move.l 28(sp),(a3)			
	move.l 32(sp),4(a3)			
						
	move.l 36(sp),8(a3)			
	move.l 40(sp),12(a3)			
						
	move.l 44(sp),16(a3)			
	move.l 48(sp),20(a3)			
						
	move.l 52(sp),24(a3)			
	move.l 56(sp),28(a3)			
						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,32(a3)			
	move.l a1,36(a3)			
						
	move.l a3,d0				
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
_?L3:						
	move.l d6,d0				
	move.l d7,d1				
						
	move.l 28(sp),(a3)			
	move.l 32(sp),4(a3)			
						
	move.l 36(sp),8(a3)			
	move.l 40(sp),12(a3)			
						
	move.l 44(sp),16(a3)			
	move.l 48(sp),20(a3)			
						
	move.l 52(sp),24(a3)			
	move.l 56(sp),28(a3)			
						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,32(a3)			
	move.l a1,36(a3)			
						
	move.l a3,d0				
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
						
	.align	2				
	.globl	_del_aubio_scale		
						
_del_aubio_scale:				
						
						
	jbra _free				
						
	.align	2				
	.globl	_aubio_scale_set_limits		
						
_aubio_scale_set_limits:			
	movem.l d4/d5/d6/d7/a3/a4,-(sp)		
	move.l 28(sp),a3			
						
	lea ___subdf3,a4			
	move.l 36(sp),-(sp)			
	move.l 36(sp),-(sp)			
	move.l 52(sp),-(sp)			
	move.l 52(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
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
	jbeq _?L10				
						
	move.l 52(sp),-(sp)			
	move.l 52(sp),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	jbsr (a4)				
						
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	move.l 32(sp),(a3)			
	move.l 36(sp),4(a3)			
						
	move.l 40(sp),8(a3)			
	move.l 44(sp),12(a3)			
						
	move.l 48(sp),16(a3)			
	move.l 52(sp),20(a3)			
						
	move.l 56(sp),24(a3)			
	move.l 60(sp),28(a3)			
						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,32(a3)			
	move.l a1,36(a3)			
						
	moveq #0,d0				
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
_?L10:						
	move.l d6,d0				
	move.l d7,d1				
						
	move.l 32(sp),(a3)			
	move.l 36(sp),4(a3)			
						
	move.l 40(sp),8(a3)			
	move.l 44(sp),12(a3)			
						
	move.l 48(sp),16(a3)			
	move.l 52(sp),20(a3)			
						
	move.l 56(sp),24(a3)			
	move.l 60(sp),28(a3)			
						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,32(a3)			
	move.l a1,36(a3)			
						
	moveq #0,d0				
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
						
	.globl	___muldf3			
	.globl	___adddf3			
	.align	2				
	.globl	_aubio_scale_do			
						
_aubio_scale_do:				
	movem.l d3/d4/a3/a4/a5/a6,-(sp)		
	move.l 28(sp),a4			
	move.l 32(sp),a0			
						
	move.l (a0),d3				
						
	jbeq _?L13				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	move.l #___subdf3,d4			
	lea ___muldf3,a6			
	lea ___adddf3,a5			
_?L15:						
						
	move.l (a3),d0				
	move.l 4(a3),d1				
						
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d4,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a3)+				
	move.l a1,(a3)+				
						
	move.l 36(a4),-(sp)			
	move.l 32(a4),-(sp)			
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,-8(a3)			
	move.l a1,-4(a3)			
						
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l 20(a4),-(sp)			
	move.l 16(a4),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,-8(a3)			
	move.l d1,-4(a3)			
						
	cmp.l a3,d3				
	jbne _?L15				
_?L13:						
						
	movem.l (sp)+,d3/d4/a3/a4/a5/a6		
	rts					
						
						
