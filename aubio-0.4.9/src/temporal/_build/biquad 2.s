* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"biquad.c"			
						
						
						
						
						
	.text					
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$6f,$72,$64
	.dc.b $65,$72,$20,$6f,$66,$20,$62,$69
	.dc.b $71,$75,$61,$64,$20,$66,$69,$6c
	.dc.b $74,$65,$72,$20,$6d,$75,$73,$74
	.dc.b $20,$62,$65,$20,$33,$2c,$20,$6e
	.dc.b $6f,$74,$20,$25,$64,$0a
	.dc.b $00				
	.data					
	.align	2				
_?LC1:						
	.dc.l	1073676288			
	.dc.l	-2147483648			
	.dc.l	0				
	.text					
	.align	2				
	.globl	_aubio_filter_set_biquad	
						
_aubio_filter_set_biquad:			
	movem.l d3/d4/a3,-(sp)			
	move.l 16(sp),d4			
						
	move.l d4,-(sp)				
	jbsr _aubio_filter_get_order		
	move.l d0,d3				
						
	move.l d4,(sp)				
	jbsr _aubio_filter_get_feedforward	
	move.l d0,a3				
						
	move.l d4,(sp)				
	jbsr _aubio_filter_get_feedback		
	addq.l #4,sp				
						
	moveq #3,d1				
	cmp.l d3,d1				
	jbne _?L6				
						
	move.l 4(a3),a0				
						
	move.l 20(sp),d1			
	move.l 24(sp),d2			
	move.l 28(sp),d3			
	move.l d1,(a0)				
	move.l d2,4(a0)				
	move.l d3,8(a0)				
						
	move.l 32(sp),d1			
	move.l 36(sp),d2			
	move.l 40(sp),d3			
	move.l d1,12(a0)			
	move.l d2,16(a0)			
	move.l d3,20(a0)			
						
	move.l 44(sp),d1			
	move.l 48(sp),d2			
	move.l 52(sp),d3			
	move.l d1,24(a0)			
	move.l d2,28(a0)			
	move.l d3,32(a0)			
						
	move.l d0,a1				
	move.l 4(a1),a0				
						
	move.l _?LC1,d0				
	move.l _?LC1+4,d1			
	move.l _?LC1+8,d2			
	move.l d0,(a0)				
	move.l d1,4(a0)				
	move.l d2,8(a0)				
						
	move.l 56(sp),d1			
	move.l 60(sp),d2			
	move.l 64(sp),d3			
	move.l d1,12(a0)			
	move.l d2,16(a0)			
	move.l d3,20(a0)			
						
	move.l 68(sp),d0			
	move.l 72(sp),d1			
	move.l 76(sp),d2			
	move.l d0,24(a0)			
	move.l d1,28(a0)			
	move.l d2,32(a0)			
						
	moveq #0,d0				
						
	movem.l (sp)+,d3/d4/a3			
	rts					
_?L6:						
						
	move.l d3,-(sp)				
	pea _?LC0				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	moveq #1,d0				
						
	movem.l (sp)+,d3/d4/a3			
	rts					
						
	.align	2				
	.globl	_new_aubio_filter_biquad	
						
_new_aubio_filter_biquad:			
	move.l d3,-(sp)				
						
	pea 3.w					
	jbsr _new_aubio_filter			
	addq.l #4,sp				
	move.l d0,d3				
						
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l d0,-(sp)				
	jbsr _aubio_filter_set_biquad		
	lea (64,sp),sp				
						
	move.l d3,d0				
	move.l (sp)+,d3				
	rts					
						
						
