* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"peakpicker.c"			
						
						
						
						
						
	.text					
	.globl	___subdf3			
	.globl	___muldf3			
	.globl	___floatunsidf			
	.align	2				
	.globl	_aubio_peakpicker_do		
						
_aubio_peakpicker_do:				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 40(sp),a3			
						
	move.l 28(a3),d5			
						
	move.l 32(a3),a4			
						
	move.l 36(a3),a5			
						
	move.l 40(a3),d3			
						
	move.l 44(a3),d4			
						
	move.l 44(sp),a0			
	move.l 4(a0),a0				
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	move.l d5,-(sp)				
	jbsr _fvec_push				
						
	addq.l #8,sp				
	move.l a4,(sp)				
	move.l d5,-(sp)				
	lea _fvec_copy,a6			
	jbsr (a6)				
						
	addq.l #4,sp				
	move.l d4,(sp)				
	move.l a4,-(sp)				
	move.l 24(a3),-(sp)			
	jbsr _aubio_filter_do_filtfilt		
						
	addq.l #8,sp				
	move.l a4,(sp)				
	jbsr _fvec_mean				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d4,(sp)				
	move.l a4,-(sp)				
	jbsr (a6)				
						
	addq.l #4,sp				
	move.l d4,(sp)				
	move.l 16(a3),a0			
	jbsr (a0)				
	move.l d0,a0				
	move.l d1,a1				
						
	move.l 4(a5),a6				
						
	move.l 8(a6),(a6)			
	move.l 12(a6),4(a6)			
	move.l 16(a6),8(a6)			
	move.l 20(a6),12(a6)			
						
	move.l 8(a3),d1				
	move.l 4(a4),a2				
	lsl.l #3,d1				
						
	lea ___subdf3,a4			
	move.l a1,(sp)				
	move.l a0,-(sp)				
	move.l 4(a2,d1.l),-(sp)			
	move.l (a2,d1.l),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l d3,a0				
	move.l 4(a0),a4				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a4)				
	move.l a1,4(a4)				
						
	move.l a0,16(a6)			
	move.l a1,20(a6)			
						
	pea 1.w					
	move.l a5,-(sp)				
	move.l 20(a3),a0			
	jbsr (a0)				
	addq.l #8,sp				
	move.l d0,d4				
						
	move.l 48(sp),a0			
	move.l 4(a0),a3				
						
	move.l d0,-(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	tst.l d4				
	jbne _?L8				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L8:						
						
	pea 1.w					
	move.l a5,-(sp)				
	jbsr _fvec_quadratic_peak_pos		
	addq.l #8,sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.align	2				
	.globl	_aubio_peakpicker_get_thresholded_input
						
_aubio_peakpicker_get_thresholded_input:	
						
	move.l 4(sp),a0				
	move.l 40(a0),d0			
	rts					
						
	.align	2				
	.globl	_aubio_peakpicker_set_threshold	
						
_aubio_peakpicker_set_threshold:		
						
	move.l 4(sp),a0				
	move.l 8(sp),d0				
	move.l 12(sp),d1			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_peakpicker_get_threshold	
						
_aubio_peakpicker_get_threshold:		
						
	move.l 4(sp),a0				
	move.l (a0),d0				
	move.l 4(a0),d1				
	rts					
						
	.align	2				
	.globl	_aubio_peakpicker_set_thresholdfn
						
_aubio_peakpicker_set_thresholdfn:		
						
	move.l 4(sp),a0				
	move.l 8(sp),16(a0)			
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_peakpicker_get_thresholdfn
						
_aubio_peakpicker_get_thresholdfn:		
						
	move.l 4(sp),a0				
	move.l 16(a0),d0			
	rts					
						
	.data					
	.align	2				
_?LC0:						
	.dc.l	0				
	.dc.l	0				
	.dc.l	0				
	.align	2				
_?LC1:						
	.dc.l	1073479680			
	.dc.l	-260438571			
	.dc.l	-2114119680			
	.align	2				
_?LC2:						
	.dc.l	1073479680			
	.dc.l	-1546396275			
	.dc.l	962852864			
	.align	2				
_?LC3:						
	.dc.l	1073545216			
	.dc.l	-1546396361			
	.dc.l	1395159040			
	.text					
	.align	2				
	.globl	_new_aubio_peakpicker		
						
_new_aubio_peakpicker:				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
						
	pea 48.w				
	jbsr _MALLOC				
	move.l d0,a3				
						
	move.l #1069128089,(a3)			
	move.l #-1717986918,4(a3)		
						
	moveq #5,d0				
	move.l d0,8(a3)				
						
	moveq #1,d0				
	move.l d0,12(a3)			
						
	move.l #_fvec_median,16(a3)		
						
	move.l #_fvec_peakpick,20(a3)		
						
	moveq #7,d0				
	move.l d0,(sp)				
	lea _new_fvec,a4			
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,44(a3)			
						
	move.l 8(a3),a0				
	add.l 12(a3),a0				
						
	pea 1(a0)				
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,28(a3)			
						
	move.l 8(a3),a0				
	add.l 12(a3),a0				
						
	pea 1(a0)				
	jbsr (a4)				
						
	move.l d0,32(a3)			
						
	moveq #3,d1				
	move.l d1,(sp)				
	jbsr (a4)				
						
	move.l d0,36(a3)			
						
	moveq #1,d2				
	move.l d2,(sp)				
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,40(a3)			
						
	move.l _?LC0+8,-(sp)			
	move.l _?LC0+4,-(sp)			
	move.l _?LC0,-(sp)			
	move.l _?LC1+8,-(sp)			
	move.l _?LC1+4,-(sp)			
	move.l _?LC1,-(sp)			
	move.l _?LC2+8,-(sp)			
	move.l _?LC2+4,-(sp)			
	move.l _?LC2,-(sp)			
	move.l _?LC3+8,-(sp)			
	move.l _?LC3+4,-(sp)			
	move.l _?LC3,-(sp)			
	move.l _?LC2+8,-(sp)			
	move.l _?LC2+4,-(sp)			
	move.l _?LC2,-(sp)			
	jbsr _new_aubio_filter_biquad		
	lea (60,sp),sp				
						
	move.l d0,24(a3)			
						
	move.l a3,d0				
	move.l (sp)+,a3				
	move.l (sp)+,a4				
	rts					
						
	.align	2				
	.globl	_del_aubio_peakpicker		
						
_del_aubio_peakpicker:				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 12(sp),a3			
						
	move.l 24(a3),-(sp)			
	jbsr _del_aubio_filter			
						
	move.l 28(a3),(sp)			
	lea _del_fvec,a4			
	jbsr (a4)				
						
	move.l 32(a3),(sp)			
	jbsr (a4)				
						
	move.l 36(a3),(sp)			
	jbsr (a4)				
						
	move.l 40(a3),(sp)			
	jbsr (a4)				
						
	move.l 44(a3),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _MFREE				
						
						
