* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"onset.c"			
						
						
						
						
						
	.text					
	.globl	___gtdf2			
	.globl	___floatunsidf			
	.globl	___muldf3			
	.globl	___adddf3			
	.globl	___fixunsdfsi			
	.globl	___udivsi3			
	.align	2				
	.globl	_aubio_onset_do			
						
_aubio_onset_do:				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 40(sp),a3			
	move.l 44(sp),a6			
	move.l 48(sp),a5			
						
	move.l 12(a3),-(sp)			
	move.l a6,-(sp)				
	move.l (a3),-(sp)			
	jbsr _aubio_pvoc_do			
	lea (12,sp),sp				
						
	tst.l 64(a3)				
	jbne _?L24				
						
	tst.l 52(a3)				
	jbne _?L25				
_?L3:						
						
	move.l 16(a3),-(sp)			
	move.l 12(a3),-(sp)			
	move.l 4(a3),-(sp)			
	jbsr _aubio_specdesc_do			
						
	addq.l #8,sp				
	move.l a5,(sp)				
	move.l 16(a3),-(sp)			
	move.l 8(a3),-(sp)			
	jbsr _aubio_peakpicker_do		
	lea (12,sp),sp				
						
	move.l 4(a5),a4				
						
	move.l (a4),d4				
	move.l 4(a4),d5				
						
	clr.l d6				
	clr.l d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L26				
_?L19:						
						
	move.l 44(a3),d3			
						
	cmp.l 32(a3),d3				
	jbls _?L12				
						
	move.l 40(a3),a6			
_?L7:						
						
	move.l d4,(a4)				
	move.l d5,4(a4)				
						
	add.l a6,d3				
	move.l d3,44(a3)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L25:						
						
	move.l 60(a3),-(sp)			
	move.l 56(a3),-(sp)			
	move.l 12(a3),-(sp)			
	jbsr _cvec_logmag			
	lea (12,sp),sp				
						
	move.l 16(a3),-(sp)			
	move.l 12(a3),-(sp)			
	move.l 4(a3),-(sp)			
	jbsr _aubio_specdesc_do			
						
	addq.l #8,sp				
	move.l a5,(sp)				
	move.l 16(a3),-(sp)			
	move.l 8(a3),-(sp)			
	jbsr _aubio_peakpicker_do		
	lea (12,sp),sp				
						
	move.l 4(a5),a4				
						
	move.l (a4),d4				
	move.l 4(a4),d5				
						
	clr.l d6				
	clr.l d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L19				
_?L26:						
						
	move.l 24(a3),-(sp)			
	move.l 20(a3),-(sp)			
	move.l a6,-(sp)				
	jbsr _aubio_silence_detection		
	lea (12,sp),sp				
						
	subq.l #1,d0				
	jbeq _?L27				
						
	move.l 44(a3),d3			
						
	move.l 40(a3),a6			
	move.l a6,-(sp)				
	jbsr ___floatunsidf			
	move.l d5,(sp)				
	move.l d4,-(sp)				
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
	jbsr _floor				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
						
	add.l d3,d0				
						
	move.l 48(a3),d1			
						
	move.l d1,a0				
	add.l 28(a3),a0				
						
	cmp.l a0,d0				
	jbls _?L20				
						
	tst.l d1				
	jbne _?L9				
						
	move.l 32(a3),d1			
_?L10:						
						
	cmp.l d0,d1				
	jbls _?L11				
	move.l d1,d0				
_?L11:						
						
	move.l d0,48(a3)			
						
	move.l 4(a5),a4				
						
	move.l d4,(a4)				
	move.l d5,4(a4)				
						
	add.l a6,d3				
	move.l d3,44(a3)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L24:						
						
	move.l 12(a3),-(sp)			
	move.l 68(a3),-(sp)			
	jbsr _aubio_spectral_whitening_do	
	addq.l #8,sp				
						
	tst.l 52(a3)				
	jbeq _?L3				
	jbra _?L25				
_?L12:						
						
	move.l 24(a3),-(sp)			
	move.l 20(a3),-(sp)			
	move.l a6,-(sp)				
	jbsr _aubio_silence_detection		
	lea (12,sp),sp				
						
	tst.l d0				
	jbeq _?L13				
						
	move.l 4(a5),a4				
						
	move.l 44(a3),d3			
						
	move.l 40(a3),a6			
	jbra _?L7				
_?L9:						
						
	move.l 32(a3),d1			
						
	cmp.l d1,d0				
	jbcc _?L10				
_?L20:						
						
	move.l 4(a5),a4				
						
	move.l d6,d4				
	move.l d7,d5				
						
	move.l d4,(a4)				
	move.l d5,4(a4)				
						
	add.l a6,d3				
	move.l d3,44(a3)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L27:						
						
	move.l 4(a5),a4				
						
	move.l 44(a3),d3			
						
	move.l 40(a3),a6			
						
	move.l d6,d4				
	move.l d7,d5				
						
	move.l d4,(a4)				
	move.l d5,4(a4)				
						
	add.l a6,d3				
	move.l d3,44(a3)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L13:						
						
	move.l 44(a3),d3			
						
	move.l 40(a3),a6			
						
	move.l 4(a5),a4				
						
	jbne _?L28				
						
	move.l 32(a3),d6			
						
	move.l a6,-(sp)				
	move.l d6,-(sp)				
	jbsr ___udivsi3				
						
	addq.l #4,sp				
	move.l d0,(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,d4				
	move.l d1,d5				
						
	add.l d3,d6				
	move.l d6,48(a3)			
_?L29:						
						
	move.l d4,(a4)				
	move.l d5,4(a4)				
						
	add.l a6,d3				
	move.l d3,44(a3)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L28:						
						
	move.l 48(a3),d0			
	add.l 28(a3),d0				
						
	cmp.l d0,d3				
	jbls _?L7				
						
	move.l 32(a3),d6			
						
	move.l a6,-(sp)				
	move.l d6,-(sp)				
	jbsr ___udivsi3				
						
	addq.l #4,sp				
	move.l d0,(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,d4				
	move.l d1,d5				
						
	add.l d3,d6				
	move.l d6,48(a3)			
	jbra _?L29				
						
	.align	2				
	.globl	_aubio_onset_get_last		
						
_aubio_onset_get_last:				
	move.l 4(sp),a0				
						
	move.l 48(a0),d0			
	sub.l 32(a0),d0				
	rts					
						
	.globl	___divdf3			
	.align	2				
	.globl	_aubio_onset_get_last_s		
						
_aubio_onset_get_last_s:			
	movem.l d4/d5/a3/a4,-(sp)		
	move.l 20(sp),a3			
						
	lea ___floatunsidf,a4			
	move.l 48(a3),d0			
	sub.l 32(a3),d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 36(a3),(sp)			
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
	.globl	_aubio_onset_get_last_ms	
						
_aubio_onset_get_last_ms:			
	movem.l d4/d5/a3/a4,-(sp)		
	move.l 20(sp),a3			
						
	lea ___floatunsidf,a4			
	move.l 48(a3),d0			
	sub.l 32(a3),d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 36(a3),(sp)			
	jbsr (a4)				
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1083129856,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d4/d5/a3/a4		
	rts					
						
	.align	2				
	.globl	_aubio_onset_set_awhitening	
						
_aubio_onset_set_awhitening:			
						
	moveq #1,d1				
	cmp.l 8(sp),d1				
	seq d0					
	ext.w d0				
	ext.l d0				
						
	move.l 4(sp),a0				
	neg.l d0				
	move.l d0,64(a0)			
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_onset_get_awhitening	
						
_aubio_onset_get_awhitening:			
						
	move.l 4(sp),a0				
	move.l 64(a0),-(sp)			
	jbsr ___floatunsidf			
	addq.l #4,sp				
						
	rts					
						
	.globl	___ltdf2			
	.align	2				
	.globl	_aubio_onset_set_compression	
						
_aubio_onset_set_compression:			
	movem.l d3/d4/d5/a3,-(sp)		
	move.l 20(sp),a3			
						
	clr.l d4				
	clr.l d5				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 36(sp),-(sp)			
	move.l 36(sp),-(sp)			
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L43				
						
	move.l 24(sp),56(a3)			
	move.l 28(sp),60(a3)			
						
	moveq #1,d3				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 36(sp),-(sp)			
	move.l 36(sp),-(sp)			
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L46				
						
	move.l d3,52(a3)			
						
	moveq #0,d0				
_?L40:						
						
	movem.l (sp)+,d3/d4/d5/a3		
	rts					
_?L46:						
						
	moveq #0,d3				
						
	move.l d3,52(a3)			
						
	moveq #0,d0				
	jbra _?L40				
_?L43:						
						
	moveq #1,d0				
						
	movem.l (sp)+,d3/d4/d5/a3		
	rts					
						
	.align	2				
	.globl	_aubio_onset_get_compression	
						
_aubio_onset_get_compression:			
	move.l 4(sp),a0				
						
	tst.l 52(a0)				
	jbeq _?L49				
						
	move.l 56(a0),d0			
	move.l 60(a0),d1			
						
	rts					
_?L49:						
						
	clr.l d0				
	clr.l d1				
						
	rts					
						
	.align	2				
	.globl	_aubio_onset_set_silence	
						
_aubio_onset_set_silence:			
						
	move.l 4(sp),a0				
	move.l 8(sp),d0				
	move.l 12(sp),d1			
	move.l d0,20(a0)			
	move.l d1,24(a0)			
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_onset_get_silence	
						
_aubio_onset_get_silence:			
						
	move.l 4(sp),a0				
	move.l 20(a0),d0			
	move.l 24(a0),d1			
	rts					
						
	.align	2				
	.globl	_aubio_onset_set_threshold	
						
_aubio_onset_set_threshold:			
						
	move.l 12(sp),-(sp)			
	move.l 12(sp),-(sp)			
	move.l 12(sp),a0			
	move.l 8(a0),-(sp)			
	jbsr _aubio_peakpicker_set_threshold	
	lea (12,sp),sp				
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_onset_get_threshold	
						
_aubio_onset_get_threshold:			
						
	move.l 4(sp),a0				
	move.l 8(a0),4(sp)			
						
						
	jbra _aubio_peakpicker_get_threshold	
						
	.align	2				
	.globl	_aubio_onset_set_minioi		
						
_aubio_onset_set_minioi:			
						
	move.l 4(sp),a0				
	move.l 8(sp),28(a0)			
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_onset_get_minioi		
						
_aubio_onset_get_minioi:			
						
	move.l 4(sp),a0				
	move.l 28(a0),d0			
	rts					
						
	.align	2				
	.globl	_aubio_onset_set_minioi_s	
						
_aubio_onset_set_minioi_s:			
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 36(a3),-(sp)			
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l 16(sp),-(sp)			
	move.l 16(sp),-(sp)			
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
	jbsr _floor				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
	move.l d0,28(a3)			
						
	moveq #0,d0				
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_aubio_onset_get_minioi_s	
						
_aubio_onset_get_minioi_s:			
	movem.l d4/d5/a3/a4,-(sp)		
	move.l 20(sp),a4			
						
	lea ___floatunsidf,a3			
	move.l 28(a4),-(sp)			
	jbsr (a3)				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 36(a4),(sp)			
	jbsr (a3)				
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d4/d5/a3/a4		
	rts					
						
	.align	2				
	.globl	_aubio_onset_set_minioi_ms	
						
_aubio_onset_set_minioi_ms:			
	movem.l d4/d5/a3,-(sp)			
	move.l 16(sp),a3			
						
	move.l 36(a3),-(sp)			
	jbsr ___floatunsidf			
	move.l d0,d4				
	move.l d1,d5				
						
	clr.l (sp)				
	move.l #1083129856,-(sp)		
	move.l 32(sp),-(sp)			
	move.l 32(sp),-(sp)			
	jbsr ___divdf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
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
	jbsr _floor				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
	move.l d0,28(a3)			
						
	moveq #0,d0				
	movem.l (sp)+,d4/d5/a3			
	rts					
						
	.align	2				
	.globl	_aubio_onset_get_minioi_ms	
						
_aubio_onset_get_minioi_ms:			
	movem.l d4/d5/a3/a4,-(sp)		
	move.l 20(sp),a4			
						
	lea ___floatunsidf,a3			
	move.l 28(a4),-(sp)			
	jbsr (a3)				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 36(a4),(sp)			
	jbsr (a3)				
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1083129856,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d4/d5/a3/a4		
	rts					
						
	.align	2				
	.globl	_aubio_onset_set_delay		
						
_aubio_onset_set_delay:				
						
	move.l 4(sp),a0				
	move.l 8(sp),32(a0)			
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_onset_get_delay		
						
_aubio_onset_get_delay:				
						
	move.l 4(sp),a0				
	move.l 32(a0),d0			
	rts					
						
	.align	2				
	.globl	_aubio_onset_set_delay_s	
						
_aubio_onset_set_delay_s:			
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 36(a3),-(sp)			
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l 16(sp),-(sp)			
	move.l 16(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
	move.l d0,32(a3)			
						
	moveq #0,d0				
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_aubio_onset_get_delay_s	
						
_aubio_onset_get_delay_s:			
	movem.l d4/d5/a3/a4,-(sp)		
	move.l 20(sp),a4			
						
	lea ___floatunsidf,a3			
	move.l 32(a4),-(sp)			
	jbsr (a3)				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 36(a4),(sp)			
	jbsr (a3)				
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d4/d5/a3/a4		
	rts					
						
	.align	2				
	.globl	_aubio_onset_set_delay_ms	
						
_aubio_onset_set_delay_ms:			
	movem.l d4/d5/a3,-(sp)			
	move.l 16(sp),a3			
						
	move.l 36(a3),-(sp)			
	jbsr ___floatunsidf			
	move.l d0,d4				
	move.l d1,d5				
						
	clr.l (sp)				
	move.l #1083129856,-(sp)		
	move.l 32(sp),-(sp)			
	move.l 32(sp),-(sp)			
	jbsr ___divdf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
	move.l d0,32(a3)			
						
	moveq #0,d0				
	movem.l (sp)+,d4/d5/a3			
	rts					
						
	.align	2				
	.globl	_aubio_onset_get_delay_ms	
						
_aubio_onset_get_delay_ms:			
	movem.l d4/d5/a3/a4,-(sp)		
	move.l 20(sp),a4			
						
	lea ___floatunsidf,a3			
	move.l 32(a4),-(sp)			
	jbsr (a3)				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 36(a4),(sp)			
	jbsr (a3)				
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1083129856,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d4/d5/a3/a4		
	rts					
						
	.align	2				
	.globl	_aubio_onset_get_descriptor	
						
_aubio_onset_get_descriptor:			
						
	move.l 4(sp),a0				
	move.l 16(a0),a0			
						
	move.l 4(a0),a0				
						
	move.l (a0),d0				
	move.l 4(a0),d1				
	rts					
						
	.align	2				
	.globl	_aubio_onset_get_thresholded_descriptor
						
_aubio_onset_get_thresholded_descriptor:	
						
	move.l 4(sp),a0				
	move.l 8(a0),-(sp)			
	jbsr _aubio_peakpicker_get_thresholded_input
	addq.l #4,sp				
						
	move.l d0,a1				
	move.l 4(a1),a0				
						
	move.l (a0),d0				
	move.l 4(a0),d1				
	rts					
						
	.align	2				
	.globl	_aubio_onset_reset		
						
_aubio_onset_reset:				
	move.l 4(sp),a0				
						
	clr.l 48(a0)				
						
	clr.l 44(a0)				
						
	rts					
						
	.data					
_?LC0:						
	.dc.b $65,$6e,$65,$72,$67,$79
	.dc.b $00				
_?LC1:						
	.dc.b $68,$66,$63
	.dc.b $00				
_?LC2:						
	.dc.b $64,$65,$66,$61,$75,$6c,$74
	.dc.b $00				
_?LC3:						
	.dc.b $63,$6f,$6d,$70,$6c,$65,$78,$64
	.dc.b $6f,$6d,$61,$69,$6e
	.dc.b $00				
_?LC4:						
	.dc.b $63,$6f,$6d,$70,$6c,$65,$78
	.dc.b $00				
_?LC5:						
	.dc.b $70,$68,$61,$73,$65
	.dc.b $00				
_?LC6:						
	.dc.b $77,$70,$68,$61,$73,$65
	.dc.b $00				
_?LC7:						
	.dc.b $6d,$6b,$6c
	.dc.b $00				
_?LC8:						
	.dc.b $73,$70,$65,$63,$66,$6c,$75,$78
	.dc.b $00				
_?LC9:						
	.dc.b $73,$70,$65,$63,$64,$69,$66,$66
	.dc.b $00				
_?LC10:						
	.dc.b $6f,$6c,$64,$5f,$64,$65,$66,$61
	.dc.b $75,$6c,$74
	.dc.b $00				
_?LC11:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$6f
	.dc.b $6e,$73,$65,$74,$3a,$20,$75,$6e
	.dc.b $6b,$6e,$6f,$77,$6e,$20,$73,$70
	.dc.b $65,$63,$74,$72,$61,$6c,$20,$64
	.dc.b $65,$73,$63,$72,$69,$70,$74,$6f
	.dc.b $72,$20,$74,$79,$70,$65,$20,$25
	.dc.b $73,$2c,$20,$75,$73,$69,$6e,$67
	.dc.b $20,$64,$65,$66,$61,$75,$6c,$74
	.dc.b $20,$70,$61,$72,$61,$6d,$65,$74
	.dc.b $65,$72,$73,$2e,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_onset_set_default_parameters
						
_aubio_onset_set_default_parameters:		
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 40(sp),a3			
						
	move.l #858993459,-(sp)			
	move.l #1070805811,-(sp)		
	move.l 8(a3),-(sp)			
	move.l #_aubio_peakpicker_set_threshold,d6
	move.l d6,a0				
	jbsr (a0)				
	lea (12,sp),sp				
						
	move.l #___floatunsidf,d3		
	move.l 40(a3),-(sp)			
	move.l d3,a0				
	jbsr (a0)				
	move.l d0,d4				
	move.l d1,d5				
	lea ___muldf3,a6			
	move.l #858993459,(sp)			
	move.l #1074869043,-(sp)		
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	lea ___fixunsdfsi,a5			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
	move.l d0,32(a3)			
						
	move.l 36(a3),-(sp)			
	move.l d3,a0				
	jbsr (a0)				
	move.l #-1717986918,(sp)		
	move.l #1068079513,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l #___adddf3,d7			
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d7,a0				
	jbsr (a0)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _floor				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
	move.l d0,28(a3)			
						
	move.l #-1068400640,20(a3)		
	clr.l 24(a3)				
						
	clr.l 64(a3)				
						
	clr.l 56(a3)				
	clr.l 60(a3)				
						
	clr.l 52(a3)				
						
	pea _?LC0				
	move.l 48(sp),-(sp)			
	lea _strcmp,a4				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L123				
_?L91:						
						
	moveq #0,d0				
_?L90:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L123:						
						
	pea _?LC1				
	move.l 48(sp),-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L92				
						
	pea _?LC2				
	move.l 48(sp),-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L92				
						
	pea _?LC3				
	move.l 48(sp),-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L95				
						
	pea _?LC4				
	move.l 48(sp),-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L95				
						
	pea _?LC5				
	move.l 48(sp),-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L91				
						
	pea _?LC6				
	move.l 48(sp),-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L91				
						
	pea _?LC7				
	move.l 48(sp),-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L124				
						
	move.l 44(sp),a0			
	cmp.b #107,(a0)				
	jbne _?L99				
	cmp.b #108,1(a0)			
	jbne _?L99				
						
	tst.b 2(a0)				
	jbne _?L99				
						
	move.l #1717986918,-(sp)		
	move.l #1071015526,-(sp)		
	move.l 8(a3),-(sp)			
	move.l d6,a0				
	jbsr (a0)				
	lea (12,sp),sp				
						
	moveq #1,d0				
	move.l d0,64(a3)			
						
	move.l #1066695393,56(a3)		
	move.l #1202590843,60(a3)		
						
	move.l d0,52(a3)			
_?L126:						
						
	moveq #0,d0				
	jbra _?L90				
_?L92:						
						
	move.l #240518169,-(sp)			
	move.l #1068347949,-(sp)		
	move.l 8(a3),-(sp)			
	move.l d6,a0				
	jbsr (a0)				
	lea (12,sp),sp				
						
	move.l #1072693248,56(a3)		
	clr.l 60(a3)				
						
	moveq #1,d0				
	move.l d0,52(a3)			
						
	moveq #0,d0				
	jbra _?L90				
_?L95:						
						
	move.l #1717986918,-(sp)		
	move.l #1074947686,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
	move.l d0,32(a3)			
						
	move.l #858993459,-(sp)			
	move.l #1069757235,-(sp)		
	move.l 8(a3),-(sp)			
	move.l d6,a0				
	jbsr (a0)				
	lea (12,sp),sp				
						
	moveq #1,d0				
	move.l d0,64(a3)			
						
	move.l #1072693248,56(a3)		
	clr.l 60(a3)				
						
	move.l d0,52(a3)			
						
	moveq #0,d0				
	jbra _?L90				
_?L99:						
						
	pea _?LC8				
	move.l 48(sp),-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L125				
						
	pea _?LC9				
	move.l 48(sp),-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L91				
						
	pea _?LC10				
	move.l 48(sp),-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L101				
						
	move.l #858993459,-(sp)			
	move.l #1070805811,-(sp)		
	move.l 8(a3),-(sp)			
	move.l d6,a0				
	jbsr (a0)				
						
	addq.l #8,sp				
	move.l 36(a3),(sp)			
	move.l d3,a0				
	jbsr (a0)				
	move.l #1202590843,(sp)			
	move.l #1066695393,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d7,a0				
	jbsr (a0)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _floor				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
	move.l d0,28(a3)			
						
	clr.l 56(a3)				
	clr.l 60(a3)				
						
	clr.l 52(a3)				
						
	moveq #0,d0				
	jbra _?L90				
_?L124:						
						
	move.l #-1717986918,-(sp)		
	move.l #1068079513,-(sp)		
	move.l 8(a3),-(sp)			
	move.l d6,a0				
	jbsr (a0)				
	lea (12,sp),sp				
						
	moveq #1,d0				
	move.l d0,64(a3)			
						
	move.l #1066695393,56(a3)		
	move.l #1202590843,60(a3)		
						
	move.l d0,52(a3)			
	jbra _?L126				
_?L125:						
						
	move.l #1889785610,-(sp)		
	move.l #1070008893,-(sp)		
	move.l 8(a3),-(sp)			
	move.l d6,a0				
	jbsr (a0)				
	lea (12,sp),sp				
						
	moveq #1,d0				
	move.l d0,64(a3)			
						
	clr.l -(sp)				
	move.l #1079574528,-(sp)		
	move.l 68(a3),-(sp)			
	jbsr _aubio_spectral_whitening_set_relax_time
						
	addq.l #8,sp				
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l 68(a3),-(sp)			
	jbsr _aubio_spectral_whitening_set_floor
	lea (12,sp),sp				
						
	move.l #1076101120,56(a3)		
	clr.l 60(a3)				
						
	moveq #1,d0				
	move.l d0,52(a3)			
						
	moveq #0,d0				
	jbra _?L90				
_?L101:						
						
	move.l 44(sp),-(sp)			
	pea _?LC11				
	pea 4.w					
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	moveq #1,d0				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.align	2				
	.globl	_del_aubio_onset		
						
_del_aubio_onset:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 68(a3),d0			
						
	jbeq _?L128				
						
	move.l d0,-(sp)				
	jbsr _del_aubio_spectral_whitening	
	addq.l #4,sp				
_?L128:						
						
	move.l 4(a3),d0				
						
	jbeq _?L129				
						
	move.l d0,-(sp)				
	jbsr _del_aubio_specdesc		
	addq.l #4,sp				
_?L129:						
						
	move.l 8(a3),d0				
						
	jbeq _?L130				
						
	move.l d0,-(sp)				
	jbsr _del_aubio_peakpicker		
	addq.l #4,sp				
_?L130:						
						
	move.l (a3),d0				
						
	jbeq _?L131				
						
	move.l d0,-(sp)				
	jbsr _del_aubio_pvoc			
	addq.l #4,sp				
_?L131:						
						
	move.l 16(a3),d0			
						
	jbeq _?L132				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L132:						
						
	move.l 12(a3),d0			
						
	jbeq _?L133				
						
	move.l d0,-(sp)				
	jbsr _del_cvec				
	addq.l #4,sp				
_?L133:						
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _free				
						
	.data					
_?LC12:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$6f,$6e,$73
	.dc.b $65,$74,$3a,$20,$67,$6f,$74,$20
	.dc.b $68,$6f,$70,$5f,$73,$69,$7a,$65
	.dc.b $20,$25,$64,$2c,$20,$62,$75,$74
	.dc.b $20,$63,$61,$6e,$20,$6e,$6f,$74
	.dc.b $20,$62,$65,$20,$3c,$20,$31,$0a
	.dc.b $00				
_?LC13:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$6f,$6e,$73
	.dc.b $65,$74,$3a,$20,$67,$6f,$74,$20
	.dc.b $62,$75,$66,$66,$65,$72,$5f,$73
	.dc.b $69,$7a,$65,$20,$25,$64,$2c,$20
	.dc.b $62,$75,$74,$20,$63,$61,$6e,$20
	.dc.b $6e,$6f,$74,$20,$62,$65,$20,$3c
	.dc.b $20,$32,$0a
	.dc.b $00				
_?LC14:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$6f,$6e,$73
	.dc.b $65,$74,$3a,$20,$68,$6f,$70,$20
	.dc.b $73,$69,$7a,$65,$20,$28,$25,$64
	.dc.b $29,$20,$69,$73,$20,$6c,$61,$72
	.dc.b $67,$65,$72,$20,$74,$68,$61,$6e
	.dc.b $20,$77,$69,$6e,$20,$73,$69,$7a
	.dc.b $65,$20,$28,$25,$64,$29,$0a
	.dc.b $00				
_?LC15:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$6f,$6e,$73
	.dc.b $65,$74,$3a,$20,$73,$61,$6d,$70
	.dc.b $6c,$65,$72,$61,$74,$65,$20,$28
	.dc.b $25,$64,$29,$20,$63,$61,$6e,$20
	.dc.b $6e,$6f,$74,$20,$62,$65,$20,$3c
	.dc.b $20,$31,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_new_aubio_onset		
						
_new_aubio_onset:				
	movem.l d3/d4/d5/a3,-(sp)		
	move.l 24(sp),d3			
	move.l 28(sp),d4			
	move.l 32(sp),d5			
						
	pea 1.w					
	pea 72.w				
	jbsr _calloc				
	addq.l #8,sp				
	move.l d0,a3				
						
	tst.l d4				
	jble _?L166				
						
	moveq #1,d0				
	cmp.l d3,d0				
	jbge _?L167				
						
	cmp.l d4,d3				
	jbcs _?L168				
						
	tst.l d5				
	jble _?L169				
						
	move.l d5,36(a3)			
						
	move.l d4,40(a3)			
						
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	jbsr _new_aubio_pvoc			
	addq.l #8,sp				
						
	move.l d0,(a3)				
						
	jbsr _new_aubio_peakpicker		
						
	move.l d0,8(a3)				
						
	move.l d3,-(sp)				
	move.l 24(sp),-(sp)			
	jbsr _new_aubio_specdesc		
	addq.l #8,sp				
						
	move.l d0,4(a3)				
						
	move.l d3,-(sp)				
	jbsr _new_cvec				
						
	move.l d0,12(a3)			
						
	moveq #1,d0				
	move.l d0,(sp)				
	jbsr _new_fvec				
						
	move.l d0,16(a3)			
						
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	jbsr _new_aubio_spectral_whitening	
	lea (12,sp),sp				
						
	move.l d0,68(a3)			
						
	tst.l (a3)				
	jbeq _?L156				
						
	tst.l 8(a3)				
	jbeq _?L156				
						
	tst.l 4(a3)				
	jbeq _?L156				
						
	tst.l 12(a3)				
	jbeq _?L156				
						
	tst.l 16(a3)				
	jbeq _?L156				
						
	tst.l d0				
	jbeq _?L156				
						
	move.l 20(sp),-(sp)			
	move.l a3,-(sp)				
	jbsr _aubio_onset_set_default_parameters
	addq.l #8,sp				
						
	clr.l 48(a3)				
						
	clr.l 44(a3)				
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/a3		
	rts					
_?L169:						
						
	move.l d5,-(sp)				
	pea _?LC15				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
_?L156:						
						
	move.l a3,-(sp)				
	jbsr _del_aubio_onset			
	addq.l #4,sp				
						
	sub.l a3,a3				
_?L170:						
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/a3		
	rts					
_?L168:						
						
	move.l d3,-(sp)				
	move.l d4,-(sp)				
	pea _?LC14				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_onset			
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L170				
_?L166:						
						
	move.l d4,-(sp)				
	pea _?LC12				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_onset			
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L170				
_?L167:						
						
	move.l d3,-(sp)				
	pea _?LC13				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_onset			
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L170				
						
						
