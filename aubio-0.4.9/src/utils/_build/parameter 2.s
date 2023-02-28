* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"parameter.c"			
						
						
						
						
						
	.text					
	.align	2				
	.globl	_new_aubio_parameter		
						
_new_aubio_parameter:				
						
	pea 1.w					
	pea 44.w				
	jbsr _calloc				
	addq.l #8,sp				
	move.l d0,a0				
						
	move.l 4(sp),32(a0)			
	move.l 8(sp),36(a0)			
						
	move.l 12(sp),d1			
	move.l 16(sp),d2			
	move.l d1,24(a0)			
	move.l d2,28(a0)			
						
	move.l 20(sp),40(a0)			
						
	move.l 4(sp),(a0)			
	move.l 8(sp),4(a0)			
						
	move.l 4(sp),8(a0)			
	move.l 8(sp),12(a0)			
						
	clr.l 16(a0)				
	clr.l 20(a0)				
						
	rts					
						
	.globl	___gtdf2			
	.globl	___ltdf2			
	.globl	___subdf3			
	.globl	___floatunsidf			
	.globl	___divdf3			
	.align	2				
	.globl	_aubio_parameter_set_target_value
						
_aubio_parameter_set_target_value:		
	subq.l #8,sp				
	movem.l d3/d4/d5/d6/d7/a3,-(sp)		
	move.l 36(sp),a3			
	move.l 40(sp),d4			
	move.l 44(sp),d5			
						
	move.l 32(a3),d6			
	move.l 36(a3),d7			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L6				
						
	move.l 24(a3),d6			
	move.l 28(a3),d7			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L9				
_?L6:						
						
	moveq #1,d3				
						
	move.l d6,8(a3)				
	move.l d7,12(a3)			
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 40(a3),-(sp)			
	jbsr ___floatunsidf			
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,24(sp)			
	move.l d1,28(sp)			
						
	move.l d0,16(a3)			
	move.l d1,20(a3)			
						
	move.l d3,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3		
	addq.l #8,sp				
	rts					
_?L9:						
						
	move.l d4,d6				
	move.l d5,d7				
						
	moveq #0,d3				
						
	move.l d6,8(a3)				
	move.l d7,12(a3)			
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 40(a3),-(sp)			
	jbsr ___floatunsidf			
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,24(sp)			
	move.l d1,28(sp)			
						
	move.l d0,16(a3)			
	move.l d1,20(a3)			
						
	move.l d3,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3		
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_aubio_parameter_set_current_value
						
_aubio_parameter_set_current_value:		
	movem.l d4/d5/d6/d7/a3,-(sp)		
	move.l 24(sp),a3			
	move.l 28(sp),d6			
	move.l 32(sp),d7			
						
	move.l 32(a3),d4			
	move.l 36(a3),d5			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L13				
						
	move.l 24(a3),d4			
	move.l 28(a3),d5			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L16				
_?L13:						
						
	moveq #1,d0				
						
	move.l d4,(a3)				
	move.l d5,4(a3)				
						
	move.l d4,8(a3)				
	move.l d5,12(a3)			
						
	clr.l 16(a3)				
	clr.l 20(a3)				
						
	movem.l (sp)+,d4/d5/d6/d7/a3		
	rts					
_?L16:						
						
	move.l d6,d4				
	move.l d7,d5				
						
	moveq #0,d0				
						
	move.l d4,(a3)				
	move.l d5,4(a3)				
						
	move.l d4,8(a3)				
	move.l d5,12(a3)			
						
	clr.l 16(a3)				
	clr.l 20(a3)				
						
	movem.l (sp)+,d4/d5/d6/d7/a3		
	rts					
						
	.align	2				
	.globl	_aubio_parameter_get_current_value
						
_aubio_parameter_get_current_value:		
						
	move.l 4(sp),a0				
	move.l (a0),d0				
	move.l 4(a0),d1				
	rts					
						
	.globl	___adddf3			
	.align	2				
	.globl	_aubio_parameter_get_next_value	
						
_aubio_parameter_get_next_value:		
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)	
	move.l 36(sp),a3			
						
	move.l (a3),a4				
	move.l 4(a3),a5				
						
	move.l 8(a3),d4				
	move.l 12(a3),d5			
						
	move.l 16(a3),d6			
	move.l 20(a3),d7			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
						
	move.l d0,d2				
	bclr #31,d2				
						
	move.l d6,d0				
	bclr #31,d0				
						
	move.l d7,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d2,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L20				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
_?L20:						
	move.l d4,(a3)				
	move.l d5,4(a3)				
						
	move.l d4,d0				
	move.l d5,d1				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5	
	rts					
						
	.align	2				
	.globl	_aubio_parameter_set_steps	
						
_aubio_parameter_set_steps:			
	subq.l #8,sp				
	movem.l d3/d4/d5/a3,-(sp)		
	move.l 28(sp),a3			
	move.l 32(sp),d3			
						
	move.l d3,d0				
	subq.l #1,d0				
						
	cmp.l #1999,d0				
	jbhi _?L27				
						
	move.l d3,40(a3)			
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	move.l 12(a3),-(sp)			
	move.l 8(a3),-(sp)			
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d3,-(sp)				
	jbsr ___floatunsidf			
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,16(sp)			
	move.l d1,20(sp)			
						
	move.l d0,16(a3)			
	move.l d1,20(a3)			
						
	moveq #0,d0				
						
	movem.l (sp)+,d3/d4/d5/a3		
	addq.l #8,sp				
	rts					
_?L27:						
						
	moveq #1,d0				
						
	movem.l (sp)+,d3/d4/d5/a3		
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_aubio_parameter_get_steps	
						
_aubio_parameter_get_steps:			
						
	move.l 4(sp),a0				
	move.l 40(a0),d0			
	rts					
						
	.align	2				
	.globl	_aubio_parameter_set_min_value	
						
_aubio_parameter_set_min_value:			
						
	move.l 4(sp),a0				
	move.l 8(sp),d0				
	move.l 12(sp),d1			
	move.l d0,32(a0)			
	move.l d1,36(a0)			
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_parameter_get_min_value	
						
_aubio_parameter_get_min_value:			
						
	move.l 4(sp),a0				
	move.l 32(a0),d0			
	move.l 36(a0),d1			
	rts					
						
	.align	2				
	.globl	_aubio_parameter_set_max_value	
						
_aubio_parameter_set_max_value:			
						
	move.l 4(sp),a0				
	move.l 8(sp),d0				
	move.l 12(sp),d1			
	move.l d0,24(a0)			
	move.l d1,28(a0)			
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_parameter_get_max_value	
						
_aubio_parameter_get_max_value:			
						
	move.l 4(sp),a0				
	move.l 24(a0),d0			
	move.l 28(a0),d1			
	rts					
						
	.align	2				
	.globl	_del_aubio_parameter		
						
_del_aubio_parameter:				
						
						
	jbra _free				
						
						
