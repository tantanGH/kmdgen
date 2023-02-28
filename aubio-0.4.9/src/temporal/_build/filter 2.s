* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"filter.c"			
						
						
						
						
						
	.text					
	.globl	___ltdf2			
	.globl	___extenddfxf2			
	.globl	___mulxf3			
	.globl	___addxf3			
	.globl	___subxf3			
	.globl	___truncxfdf2			
	.data					
	.align	2				
_?LC0:						
	.dc.l	0				
	.dc.l	0				
	.dc.l	0				
	.text					
	.align	2				
	.globl	_aubio_filter_do		
						
_aubio_filter_do:				
	lea (-48,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 88(sp),a0			
	move.l 92(sp),a1			
						
	move.l (a0),68(sp)			
						
	move.l 20(a0),a2			
	move.l 4(a2),a5				
						
	move.l 16(a0),a2			
	move.l 4(a2),a4				
						
	move.l 8(a0),a2				
	move.l 4(a2),52(sp)			
						
	move.l 12(a0),a0			
	move.l 4(a0),d6				
						
	move.l (a1),d0				
						
	jbeq _?L1				
	move.l 4(a1),56(sp)			
	lsl.l #3,d0				
	add.l 56(sp),d0				
	move.l d0,72(sp)			
	move.l 68(sp),d0			
	add.l d0,d0				
	add.l 68(sp),d0				
	add.l d0,d0				
	move.l d0,d7				
	add.l d0,d7				
	move.w #-12,a0				
	add.l d7,a0				
	lea (a5,a0.l),a1			
	move.l a1,80(sp)			
	add.l a4,a0				
	move.l a0,76(sp)			
	lea ___mulxf3,a6			
_?L8:						
						
	move.l 56(sp),a0			
	addq.l #8,56(sp)			
	move.l (a0)+,d4				
	move.l (a0)+,d5				
	move.l d4,d0				
	bclr #31,d0				
	move.l d0,60(sp)			
	move.l d5,64(sp)			
	move.l #-1557651911,-(sp)		
	move.l #927354109,-(sp)			
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L12				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___extenddfxf2			
	addq.l #8,sp				
	move.l d0,a1				
	move.l d1,a2				
	move.l d2,a3				
						
	move.l a1,(a5)				
	move.l a2,4(a5)				
	move.l a3,8(a5)				
						
	move.l d6,a0				
	move.l 8(a0),-(sp)			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	move.l a3,-(sp)				
	move.l a2,-(sp)				
	move.l a1,-(sp)				
	jbsr (a6)				
	lea (24,sp),sp				
	move.l d0,d3				
	move.l d1,d4				
	move.l d2,d5				
						
	move.l d0,(a4)				
	move.l d1,4(a4)				
	move.l d2,8(a4)				
						
	moveq #1,d0				
	cmp.l 68(sp),d0				
	jbcc _?L4				
_?L19:						
						
	move.w #12,a3				
_?L5:						
						
	move.l 8(a5,a3.l),-(sp)			
	move.l 4(a5,a3.l),-(sp)			
	move.l (a5,a3.l),-(sp)			
	move.l 8(a3,d6.l),-(sp)			
	move.l 4(a3,d6.l),-(sp)			
	move.l (a3,d6.l),-(sp)			
	jbsr (a6)				
	lea (24,sp),sp				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___addxf3				
	lea (24,sp),sp				
	move.l d0,d3				
	move.l d1,d4				
	move.l d2,d5				
	move.l d0,(a4)				
	move.l d1,4(a4)				
	move.l d2,8(a4)				
						
	move.l 8(a4,a3.l),-(sp)			
	move.l 4(a4,a3.l),-(sp)			
	move.l (a4,a3.l),-(sp)			
	move.l 64(sp),a0			
	move.l 8(a0,a3.l),-(sp)			
	move.l 4(a0,a3.l),-(sp)			
	move.l (a0,a3.l),-(sp)			
	jbsr (a6)				
	lea (24,sp),sp				
						
	move.l d2,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	jbsr ___subxf3				
	lea (24,sp),sp				
	move.l d0,d3				
	move.l d1,d4				
	move.l d2,d5				
	move.l d0,(a4)				
	move.l d1,4(a4)				
	move.l d2,8(a4)				
						
	lea (12,a3),a3				
	cmp.l d7,a3				
	jbne _?L5				
						
	move.l d2,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___truncxfdf2			
	lea (12,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
	move.l 56(sp),a1			
	move.l d0,-8(a1)			
	move.l d1,-4(a1)			
_?L7:						
						
	move.l 76(sp),a1			
	move.l 80(sp),a0			
_?L10:						
						
	move.l -12(a0),(a0)			
	move.l -8(a0),4(a0)			
	move.l -4(a0),8(a0)			
						
	move.l -12(a1),(a1)			
	move.l -8(a1),4(a1)			
	move.l -4(a1),8(a1)			
						
	lea (-12,a0),a0				
	lea (-12,a1),a1				
	cmp.l a5,a0				
	jbne _?L10				
						
	move.l 56(sp),a0			
	cmp.l 72(sp),a0				
	jbne _?L8				
_?L1:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (48,sp),sp				
	rts					
_?L12:						
						
	move.l _?LC0,a1				
	move.l _?LC0+4,a2			
	move.l _?LC0+8,a3			
						
	move.l a1,(a5)				
	move.l a2,4(a5)				
	move.l a3,8(a5)				
						
	move.l d6,a0				
	move.l 8(a0),-(sp)			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	move.l a3,-(sp)				
	move.l a2,-(sp)				
	move.l a1,-(sp)				
	jbsr (a6)				
	lea (24,sp),sp				
	move.l d0,d3				
	move.l d1,d4				
	move.l d2,d5				
						
	move.l d0,(a4)				
	move.l d1,4(a4)				
	move.l d2,8(a4)				
						
	moveq #1,d0				
	cmp.l 68(sp),d0				
	jbcs _?L19				
_?L4:						
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	jbsr ___truncxfdf2			
	lea (12,sp),sp				
	move.l d0,44(sp)			
	move.l d1,48(sp)			
	move.l 56(sp),a1			
	move.l d0,-8(a1)			
	move.l d1,-4(a1)			
						
	moveq #1,d0				
	cmp.l 68(sp),d0				
	jbne _?L7				
						
	move.l 56(sp),a0			
	cmp.l 72(sp),a0				
	jbne _?L8				
	jbra _?L1				
						
	.align	2				
	.globl	_aubio_filter_do_outplace	
						
_aubio_filter_do_outplace:			
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	move.l 12(sp),d4			
	move.l 20(sp),d3			
						
	move.l d3,-(sp)				
	move.l 20(sp),-(sp)			
	jbsr _fvec_copy				
	addq.l #8,sp				
						
	move.l d3,16(sp)			
	move.l d4,12(sp)			
						
	move.l (sp)+,d3				
	move.l (sp)+,d4				
						
	jbra _aubio_filter_do			
						
	.align	2				
	.globl	_aubio_filter_do_filtfilt	
						
_aubio_filter_do_filtfilt:			
	movem.l d3/d4/a3/a4/a5/a6,-(sp)		
	move.l 28(sp),a3			
	move.l 32(sp),a5			
	move.l 36(sp),a6			
						
	move.l (a5),d3				
						
	move.l a5,-(sp)				
	move.l a3,-(sp)				
	move.l #_aubio_filter_do,d4		
	move.l d4,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	move.l 20(a3),(sp)			
	lea _lvec_zeros,a4			
	jbsr (a4)				
						
	move.l 16(a3),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	tst.l d3				
	jbeq _?L23				
						
	move.l 4(a6),d0				
	move.l 4(a5),a1				
	lsl.l #3,d3				
	move.l d0,a0				
	add.l d3,a0				
_?L24:						
						
	move.l (a1)+,d1				
	move.l (a1)+,d2				
	move.l d2,-(a0)				
	move.l d1,-(a0)				
						
	cmp.l d0,a0				
	jbne _?L24				
						
	move.l a6,-(sp)				
	move.l a3,-(sp)				
	move.l d4,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	move.l 20(a3),(sp)			
	jbsr (a4)				
						
	move.l 16(a3),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l 4(a6),d0				
	move.l d0,a0				
	add.l d3,a0				
	move.l 4(a5),a1				
_?L25:						
						
	move.l -(a0),d2				
	move.l -(a0),d1				
	move.l d1,(a1)+				
	move.l d2,(a1)+				
						
	cmp.l d0,a0				
	jbne _?L25				
						
	movem.l (sp)+,d3/d4/a3/a4/a5/a6		
	rts					
_?L23:						
						
	move.l a6,-(sp)				
	move.l a3,-(sp)				
	move.l d4,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	move.l 20(a3),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l 16(a3),28(sp)			
						
	movem.l (sp)+,d3/d4/a3/a4/a5/a6		
						
	jbra _lvec_zeros			
						
	.align	2				
	.globl	_aubio_filter_get_feedback	
						
_aubio_filter_get_feedback:			
						
	move.l 4(sp),a0				
	move.l 8(a0),d0				
	rts					
						
	.align	2				
	.globl	_aubio_filter_get_feedforward	
						
_aubio_filter_get_feedforward:			
						
	move.l 4(sp),a0				
	move.l 12(a0),d0			
	rts					
						
	.align	2				
	.globl	_aubio_filter_get_order		
						
_aubio_filter_get_order:			
						
	move.l 4(sp),a0				
	move.l (a0),d0				
	rts					
						
	.align	2				
	.globl	_aubio_filter_get_samplerate	
						
_aubio_filter_get_samplerate:			
						
	move.l 4(sp),a0				
	move.l 4(a0),d0				
	rts					
						
	.align	2				
	.globl	_aubio_filter_set_samplerate	
						
_aubio_filter_set_samplerate:			
						
	move.l 4(sp),a0				
	move.l 8(sp),4(a0)			
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_filter_do_reset		
						
_aubio_filter_do_reset:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 20(a3),-(sp)			
	jbsr _lvec_zeros			
	addq.l #4,sp				
						
	move.l 16(a3),8(sp)			
						
	move.l (sp)+,a3				
						
	jbra _lvec_zeros			
						
	.data					
	.align	2				
_?LC1:						
	.dc.l	1073676288			
	.dc.l	-2147483648			
	.dc.l	0				
	.text					
	.align	2				
	.globl	_new_aubio_filter		
						
_new_aubio_filter:				
	movem.l d3/a3/a4,-(sp)			
	move.l 16(sp),d3			
						
	pea 1.w					
	pea 24.w				
	jbsr _calloc				
	addq.l #8,sp				
	move.l d0,a3				
						
	tst.l d3				
	jble _?L48				
						
	move.l d3,-(sp)				
	lea _new_lvec,a4			
	jbsr (a4)				
						
	move.l d0,20(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,16(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,8(a3)				
						
	move.l d3,(sp)				
	jbsr (a4)				
	addq.l #4,sp				
	move.l d0,a0				
						
	move.l d0,12(a3)			
						
	clr.l 4(a3)				
						
	move.l d3,(a3)				
						
	move.l 8(a3),a1				
						
	move.l 4(a1),a1				
	move.l _?LC1,d0				
	move.l _?LC1+4,d1			
	move.l _?LC1+8,d2			
	move.l d0,(a1)				
	move.l d1,4(a1)				
	move.l d2,8(a1)				
						
	move.l 4(a0),a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
	move.l d2,8(a0)				
						
	move.l a3,d0				
	movem.l (sp)+,d3/a3/a4			
	rts					
_?L48:						
						
	move.l d0,-(sp)				
	jbsr _free				
	addq.l #4,sp				
						
	sub.l a3,a3				
						
	move.l a3,d0				
	movem.l (sp)+,d3/a3/a4			
	rts					
						
	.align	2				
	.globl	_del_aubio_filter		
						
_del_aubio_filter:				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 12(sp),a3			
						
	move.l 8(a3),-(sp)			
	lea _del_lvec,a4			
	jbsr (a4)				
						
	move.l 12(a3),(sp)			
	jbsr (a4)				
						
	move.l 20(a3),(sp)			
	jbsr (a4)				
						
	move.l 16(a3),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _free				
						
						
