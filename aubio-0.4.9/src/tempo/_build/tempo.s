* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"tempo.c"			
						
						
						
						
						
	.text					
	.globl	___gtdf2			
	.globl	___floatsidf			
	.globl	___eqdf2			
	.globl	___subdf3			
	.globl	___floatunsidf			
	.globl	___muldf3			
	.globl	___adddf3			
	.globl	___fixunsdfsi			
	.globl	___ltdf2			
	.align	2				
	.globl	_aubio_tempo_do			
						
_aubio_tempo_do:				
	lea (-12,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 52(sp),a3			
						
	move.l 56(a3),d4			
						
	move.l 60(a3),d3			
						
	move.l 16(a3),-(sp)			
	move.l 60(sp),-(sp)			
	move.l 4(a3),-(sp)			
	jbsr _aubio_pvoc_do			
						
	addq.l #8,sp				
	move.l 20(a3),(sp)			
	move.l 16(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr _aubio_specdesc_do			
	lea (12,sp),sp				
						
	move.l 52(a3),d0			
						
	move.l d3,d1				
	subq.l #1,d1				
						
	cmp.l d0,d1				
	jbeq _?L2				
						
	addq.l #1,d0				
_?L3:						
	move.l d0,52(a3)			
						
	move.l 32(a3),-(sp)			
	move.l 20(a3),-(sp)			
	move.l 8(a3),-(sp)			
	jbsr _aubio_peakpicker_do		
						
	addq.l #8,sp				
	move.l 8(a3),(sp)			
	jbsr _aubio_peakpicker_get_thresholded_input
						
	move.l 52(a3),a4			
						
	move.l d0,a0				
	move.l 4(a0),a1				
						
	move.l 24(a3),a0			
						
	move.l a4,d0				
	sub.l d3,d0				
						
	add.l d4,d0				
						
	move.l 4(a0),a0				
	lsl.l #3,d0				
	move.l (a1),d1				
	move.l 4(a1),d2				
	move.l d1,(a0,d0.l)			
	move.l d2,4(a0,d0.l)			
						
	move.l 64(sp),a0			
	move.l 4(a0),48(sp)			
	move.l 48(sp),a0			
	clr.l (a0)				
	clr.l 4(a0)				
						
	move.l 28(a3),a5			
	move.l 4(a5),d4				
						
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d4,a0				
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L8				
						
	moveq #1,d3				
	lea _floor,a6				
						
	move.l d3,d0				
	lsl.l #3,d0				
	move.l d0,a0				
	move.l (a0,d4.l),d6			
	move.l 4(a0,d4.l),d7			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	addq.l #8,sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l a4,-(sp)				
	jbsr ___floatsidf			
						
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___eqdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L26				
_?L10:						
						
	addq.l #1,d3				
						
	move.l 4(a5),d4				
						
	move.l d3,-(sp)				
	jbsr ___floatunsidf			
	move.l d4,a0				
	move.l 4(a0),(sp)			
	move.l (a0),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L8				
_?L27:						
						
	move.l 52(a3),a4			
						
	move.l d3,d0				
	lsl.l #3,d0				
	move.l d0,a0				
	move.l (a0,d4.l),d6			
	move.l 4(a0,d4.l),d7			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	addq.l #8,sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l a4,-(sp)				
	jbsr ___floatsidf			
						
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___eqdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbne _?L10				
_?L26:						
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
						
	move.l 44(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 40(a3),-(sp)			
	move.l 36(a3),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr _aubio_silence_detection		
	lea (12,sp),sp				
						
	moveq #1,d1				
						
	move.l 60(sp),a0			
	move.l 4(a0),44(sp)			
	move.l 44(sp),a0			
						
	cmp.l d0,d1				
	jbeq _?L12				
						
	move.l (a0),d4				
	move.l 4(a0),d5				
	move.l 68(a3),-(sp)			
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
	jbsr (a6)				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
						
	add.l 72(a3),d0				
						
	move.l d0,76(a3)			
						
	move.l d0,84(a3)			
	move.l 28(a3),a5			
_?L28:						
						
	addq.l #1,d3				
						
	move.l 4(a5),d4				
						
	move.l d3,-(sp)				
	jbsr ___floatunsidf			
	move.l d4,a0				
	move.l 4(a0),(sp)			
	move.l (a0),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L27				
_?L8:						
						
	move.l 68(a3),d0			
	add.l d0,72(a3)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (12,sp),sp				
	rts					
_?L12:						
						
	clr.l (a0)				
	clr.l 4(a0)				
	clr.l d4				
	clr.l d5				
						
	move.l 68(a3),-(sp)			
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
	jbsr (a6)				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
						
	add.l 72(a3),d0				
						
	move.l d0,76(a3)			
						
	move.l d0,84(a3)			
	move.l 28(a3),a5			
	jbra _?L28				
_?L2:						
						
	move.l 28(a3),-(sp)			
	move.l 24(a3),-(sp)			
	move.l 12(a3),-(sp)			
	jbsr _aubio_beattracking_do		
	lea (12,sp),sp				
						
	move.l d4,d1				
	sub.l d3,d1				
						
	cmp.l d4,d3				
	jbeq _?L4				
						
	move.l 24(a3),a0			
	move.l 4(a0),a0				
	move.l d1,d0				
	lsl.l #3,d0				
	add.l a0,d0				
	move.l d3,d2				
	lsl.l #3,d2				
	move.l d2,a1				
_?L5:						
						
	move.l (a0,a1.l),(a0)+			
	move.l 4(a0,a1.l),(a0)+			
						
	cmp.l a0,d0				
	jbne _?L5				
_?L4:						
						
	cmp.l d4,d1				
	jbcc _?L7				
						
	move.l d4,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
						
	move.l 24(a3),a0			
						
	lsl.l #3,d1				
	add.l 4(a0),d1				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l d1,-(sp)				
	jbsr _memset				
	lea (12,sp),sp				
_?L7:						
						
	moveq #0,d0				
	jbra _?L3				
						
	.align	2				
	.globl	_aubio_tempo_get_last		
						
_aubio_tempo_get_last:				
	move.l 4(sp),a0				
						
	move.l 76(a0),d0			
	add.l 80(a0),d0				
	rts					
						
	.globl	___divdf3			
	.align	2				
	.globl	_aubio_tempo_get_last_s		
						
_aubio_tempo_get_last_s:			
	movem.l d4/d5/a3/a4,-(sp)		
	move.l 20(sp),a3			
						
	lea ___floatunsidf,a4			
	move.l 76(a3),d0			
	add.l 80(a3),d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 64(a3),(sp)			
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
	.globl	_aubio_tempo_get_last_ms	
						
_aubio_tempo_get_last_ms:			
	movem.l d4/d5/a3/a4,-(sp)		
	move.l 20(sp),a3			
						
	lea ___floatunsidf,a4			
	move.l 76(a3),d0			
	add.l 80(a3),d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 64(a3),(sp)			
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
	.globl	_aubio_tempo_set_delay		
						
_aubio_tempo_set_delay:				
						
	move.l 4(sp),a0				
	move.l 8(sp),80(a0)			
						
	moveq #0,d0				
	rts					
						
	.globl	___fixdfsi			
	.align	2				
	.globl	_aubio_tempo_set_delay_s	
						
_aubio_tempo_set_delay_s:			
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 64(a3),-(sp)			
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
	jbsr ___fixdfsi				
	addq.l #8,sp				
	move.l d0,80(a3)			
						
	moveq #0,d0				
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_aubio_tempo_set_delay_ms	
						
_aubio_tempo_set_delay_ms:			
	movem.l d4/d5/a3,-(sp)			
	move.l 16(sp),a3			
						
	move.l 64(a3),-(sp)			
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
	jbsr ___fixdfsi				
	addq.l #8,sp				
	move.l d0,80(a3)			
						
	moveq #0,d0				
	movem.l (sp)+,d4/d5/a3			
	rts					
						
	.align	2				
	.globl	_aubio_tempo_get_delay		
						
_aubio_tempo_get_delay:				
						
	move.l 4(sp),a0				
	move.l 80(a0),d0			
	rts					
						
	.align	2				
	.globl	_aubio_tempo_get_delay_s	
						
_aubio_tempo_get_delay_s:			
	movem.l d4/d5/a3,-(sp)			
	move.l 16(sp),a3			
						
	move.l 80(a3),-(sp)			
	jbsr ___floatsidf			
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 64(a3),(sp)			
	jbsr ___floatunsidf			
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d4/d5/a3			
	rts					
						
	.align	2				
	.globl	_aubio_tempo_get_delay_ms	
						
_aubio_tempo_get_delay_ms:			
	movem.l d4/d5/a3,-(sp)			
	move.l 16(sp),a3			
						
	move.l 80(a3),-(sp)			
	jbsr ___floatsidf			
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 64(a3),(sp)			
	jbsr ___floatunsidf			
						
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
						
	movem.l (sp)+,d4/d5/a3			
	rts					
						
	.align	2				
	.globl	_aubio_tempo_set_silence	
						
_aubio_tempo_set_silence:			
						
	move.l 4(sp),a0				
	move.l 8(sp),d0				
	move.l 12(sp),d1			
	move.l d0,36(a0)			
	move.l d1,40(a0)			
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_tempo_get_silence	
						
_aubio_tempo_get_silence:			
						
	move.l 4(sp),a0				
	move.l 36(a0),d0			
	move.l 40(a0),d1			
	rts					
						
	.align	2				
	.globl	_aubio_tempo_set_threshold	
						
_aubio_tempo_set_threshold:			
	move.l 4(sp),a0				
						
	move.l 8(sp),44(a0)			
	move.l 12(sp),48(a0)			
						
	move.l 12(sp),-(sp)			
	move.l 12(sp),-(sp)			
	move.l 8(a0),-(sp)			
	jbsr _aubio_peakpicker_set_threshold	
	lea (12,sp),sp				
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_tempo_get_threshold	
						
_aubio_tempo_get_threshold:			
						
	move.l 4(sp),a0				
	move.l 44(a0),d0			
	move.l 48(a0),d1			
	rts					
						
	.align	2				
	.globl	_aubio_tempo_get_bpm		
						
_aubio_tempo_get_bpm:				
						
	move.l 4(sp),a0				
	move.l 12(a0),4(sp)			
						
						
	jbra _aubio_beattracking_get_bpm	
						
	.align	2				
	.globl	_aubio_tempo_get_period		
						
_aubio_tempo_get_period:			
						
	move.l 4(sp),a0				
	move.l 12(a0),4(sp)			
						
						
	jbra _aubio_beattracking_get_period	
						
	.align	2				
	.globl	_aubio_tempo_get_period_s	
						
_aubio_tempo_get_period_s:			
						
	move.l 4(sp),a0				
	move.l 12(a0),4(sp)			
						
						
	jbra _aubio_beattracking_get_period_s	
						
	.align	2				
	.globl	_aubio_tempo_get_confidence	
						
_aubio_tempo_get_confidence:			
						
	move.l 4(sp),a0				
	move.l 12(a0),4(sp)			
						
						
	jbra _aubio_beattracking_get_confidence	
						
	.align	2				
	.globl	_aubio_tempo_was_tatum		
						
_aubio_tempo_was_tatum:				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 40(sp),a3			
						
	move.l 72(a3),a4			
	sub.l 84(a3),a4				
						
	move.l 12(a3),-(sp)			
	jbsr _aubio_beattracking_get_period	
	move.l d0,d4				
	move.l d1,d5				
						
	lea ___floatunsidf,a5			
	move.l 88(a3),(sp)			
	jbsr (a5)				
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 68(a3),a6			
						
	cmp.l a6,a4				
	jbcs _?L73				
						
	move.l a4,-(sp)				
	jbsr (a5)				
						
	move.l #___gtdf2,d3			
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d3,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L68				
						
	pea (a6,a4.l)				
	jbsr (a5)				
						
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d3,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L74				
_?L68:						
						
	moveq #0,d0				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L73:						
						
	move.l 76(a3),84(a3)			
						
	moveq #2,d0				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L74:						
						
	move.l 72(a3),84(a3)			
						
	moveq #1,d0				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.align	2				
	.globl	_aubio_tempo_get_last_tatum	
						
_aubio_tempo_get_last_tatum:			
	movem.l d4/d5/a3,-(sp)			
	move.l 16(sp),a3			
						
	move.l 84(a3),-(sp)			
	jbsr ___floatunsidf			
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 80(a3),(sp)			
	jbsr ___floatsidf			
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d4/d5/a3			
	rts					
						
	.align	2				
	.globl	_aubio_tempo_set_tatum_signature
						
_aubio_tempo_set_tatum_signature:		
						
	move.l 8(sp),d0				
	subq.l #1,d0				
						
	moveq #63,d1				
	cmp.l d0,d1				
	jbcs _?L79				
						
	move.l 4(sp),a0				
	move.l 8(sp),88(a0)			
						
	moveq #0,d0				
						
	rts					
_?L79:						
						
	moveq #1,d0				
						
	rts					
						
	.align	2				
	.globl	_del_aubio_tempo		
						
_del_aubio_tempo:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l (a3),d0				
						
	jbeq _?L83				
						
	move.l d0,-(sp)				
	jbsr _del_aubio_specdesc		
	addq.l #4,sp				
_?L83:						
						
	move.l 12(a3),d0			
						
	jbeq _?L84				
						
	move.l d0,-(sp)				
	jbsr _del_aubio_beattracking		
	addq.l #4,sp				
_?L84:						
						
	move.l 8(a3),d0				
						
	jbeq _?L85				
						
	move.l d0,-(sp)				
	jbsr _del_aubio_peakpicker		
	addq.l #4,sp				
_?L85:						
						
	move.l 4(a3),d0				
						
	jbeq _?L86				
						
	move.l d0,-(sp)				
	jbsr _del_aubio_pvoc			
	addq.l #4,sp				
_?L86:						
						
	move.l 28(a3),d0			
						
	jbeq _?L87				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L87:						
						
	move.l 20(a3),d0			
						
	jbeq _?L88				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L88:						
						
	move.l 16(a3),d0			
						
	jbeq _?L89				
						
	move.l d0,-(sp)				
	jbsr _del_cvec				
	addq.l #4,sp				
_?L89:						
						
	move.l 24(a3),d0			
						
	jbeq _?L90				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L90:						
						
	move.l 32(a3),d0			
						
	jbeq _?L91				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L91:						
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
						
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$74,$65,$6d
	.dc.b $70,$6f,$3a,$20,$67,$6f,$74,$20
	.dc.b $68,$6f,$70,$20,$73,$69,$7a,$65
	.dc.b $20,$25,$64,$2c,$20,$62,$75,$74
	.dc.b $20,$63,$61,$6e,$20,$6e,$6f,$74
	.dc.b $20,$62,$65,$20,$3c,$20,$31,$0a
	.dc.b $00				
_?LC1:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$74,$65,$6d
	.dc.b $70,$6f,$3a,$20,$67,$6f,$74,$20
	.dc.b $77,$69,$6e,$64,$6f,$77,$20,$73
	.dc.b $69,$7a,$65,$20,$25,$64,$2c,$20
	.dc.b $62,$75,$74,$20,$63,$61,$6e,$20
	.dc.b $6e,$6f,$74,$20,$62,$65,$20,$3c
	.dc.b $20,$32,$0a
	.dc.b $00				
_?LC2:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$74,$65,$6d
	.dc.b $70,$6f,$3a,$20,$68,$6f,$70,$20
	.dc.b $73,$69,$7a,$65,$20,$28,$25,$64
	.dc.b $29,$20,$69,$73,$20,$6c,$61,$72
	.dc.b $67,$65,$72,$20,$74,$68,$61,$6e
	.dc.b $20,$77,$69,$6e,$64,$6f,$77,$20
	.dc.b $73,$69,$7a,$65,$20,$28,$25,$64
	.dc.b $29,$0a
	.dc.b $00				
_?LC3:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$74,$65,$6d
	.dc.b $70,$6f,$3a,$20,$73,$61,$6d,$70
	.dc.b $6c,$65,$72,$61,$74,$65,$20,$28
	.dc.b $25,$64,$29,$20,$63,$61,$6e,$20
	.dc.b $6e,$6f,$74,$20,$62,$65,$20,$3c
	.dc.b $20,$31,$0a
	.dc.b $00				
_?LC4:						
	.dc.b $64,$65,$66,$61,$75,$6c,$74
	.dc.b $00				
_?LC5:						
	.dc.b $73,$70,$65,$63,$66,$6c,$75,$78
	.dc.b $00				
_?LC6:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$74,$65,$6d
	.dc.b $70,$6f,$3a,$20,$66,$61,$69,$6c
	.dc.b $65,$64,$20,$63,$72,$65,$61,$74
	.dc.b $69,$6e,$67,$20,$74,$65,$6d,$70
	.dc.b $6f,$20,$6f,$62,$6a,$65,$63,$74
	.dc.b $0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_new_aubio_tempo		
						
_new_aubio_tempo:				
	lea (-1024,sp),sp			
	movem.l d3/d4/d5/a3/a4/a5/a6,-(sp)	
	move.l 1060(sp),d4			
	move.l 1064(sp),d3			
	move.l 1068(sp),d5			
						
	pea 92.w				
	jbsr _MALLOC				
	addq.l #4,sp				
	move.l d0,a3				
						
	move.l d5,64(a3)			
						
	tst.l d3				
	jble _?L136				
						
	moveq #1,d0				
	cmp.l d4,d0				
	jbge _?L137				
						
	cmp.l d3,d4				
	jbcs _?L138				
						
	tst.l d5				
	jble _?L139				
						
	lea ___floatunsidf,a6			
	move.l d5,-(sp)				
	jbsr (a6)				
	move.l #858993459,(sp)			
	move.l #1075262259,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l d3,-(sp)				
	jbsr (a6)				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr ___divdf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #4,sp				
	move.l d0,(sp)				
	jbsr _aubio_next_power_of_two		
	addq.l #4,sp				
						
	moveq #3,d1				
	cmp.l d0,d1				
	jbcs _?L140				
	move.w #4,a0				
	moveq #1,d1				
	moveq #4,d0				
						
	move.l a0,56(a3)			
						
	move.l d1,60(a3)			
						
	clr.l 52(a3)				
						
	move.l #1070805811,44(a3)		
	move.l #858993459,48(a3)		
						
	move.l #-1068072960,36(a3)		
	clr.l 40(a3)				
						
	clr.l 72(a3)				
						
	clr.l 76(a3)				
						
	clr.l 80(a3)				
						
	move.l d3,68(a3)			
						
	move.l d0,-(sp)				
	lea _new_fvec,a4			
	jbsr (a4)				
						
	move.l d0,24(a3)			
						
	move.l d4,(sp)				
	jbsr _new_cvec				
						
	move.l d0,16(a3)			
						
	move.l 60(a3),(sp)			
	jbsr (a4)				
						
	move.l d0,28(a3)			
						
	move.l d3,(sp)				
	move.l d4,-(sp)				
	jbsr _new_aubio_pvoc			
	addq.l #8,sp				
						
	move.l d0,4(a3)				
						
	jbsr _new_aubio_peakpicker		
						
	move.l d0,8(a3)				
						
	move.l 48(a3),-(sp)			
	move.l 44(a3),-(sp)			
	move.l d0,-(sp)				
	jbsr _aubio_peakpicker_set_threshold	
						
	addq.l #8,sp				
	move.l #_?LC4,(sp)			
	move.l 1060(sp),-(sp)			
	jbsr _strcmp				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L128				
_?L141:						
						
	pea 1023.w				
	pea _?LC5				
	moveq #36,d3				
	add.l sp,d3				
	move.l d3,-(sp)				
	jbsr _strncpy				
	lea (12,sp),sp				
_?L129:						
						
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	jbsr _new_aubio_specdesc		
	addq.l #8,sp				
						
	move.l d0,(a3)				
						
	pea 1.w					
	jbsr (a4)				
						
	move.l d0,20(a3)			
						
	move.l 64(a3),(sp)			
	move.l 68(a3),-(sp)			
	move.l 56(a3),-(sp)			
	jbsr _new_aubio_beattracking		
	lea (12,sp),sp				
						
	move.l d0,12(a3)			
						
	pea 1.w					
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,32(a3)			
						
	tst.l 24(a3)				
	jbeq _?L130				
						
	tst.l 16(a3)				
	jbeq _?L130				
						
	tst.l 28(a3)				
	jbeq _?L130				
						
	tst.l 4(a3)				
	jbeq _?L130				
						
	tst.l 8(a3)				
	jbeq _?L130				
						
	tst.l (a3)				
	jbeq _?L130				
						
	tst.l 20(a3)				
	jbeq _?L130				
						
	tst.l 12(a3)				
	jbeq _?L130				
						
	tst.l d0				
	jbeq _?L130				
						
	clr.l 84(a3)				
						
	moveq #4,d0				
	move.l d0,88(a3)			
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/a3/a4/a5/a6	
	lea (1024,sp),sp			
	rts					
_?L140:						
						
	move.l d0,d1				
	lsr.l #2,d1				
	move.l d0,a0				
						
	move.l a0,56(a3)			
						
	move.l d1,60(a3)			
						
	clr.l 52(a3)				
						
	move.l #1070805811,44(a3)		
	move.l #858993459,48(a3)		
						
	move.l #-1068072960,36(a3)		
	clr.l 40(a3)				
						
	clr.l 72(a3)				
						
	clr.l 76(a3)				
						
	clr.l 80(a3)				
						
	move.l d3,68(a3)			
						
	move.l d0,-(sp)				
	lea _new_fvec,a4			
	jbsr (a4)				
						
	move.l d0,24(a3)			
						
	move.l d4,(sp)				
	jbsr _new_cvec				
						
	move.l d0,16(a3)			
						
	move.l 60(a3),(sp)			
	jbsr (a4)				
						
	move.l d0,28(a3)			
						
	move.l d3,(sp)				
	move.l d4,-(sp)				
	jbsr _new_aubio_pvoc			
	addq.l #8,sp				
						
	move.l d0,4(a3)				
						
	jbsr _new_aubio_peakpicker		
						
	move.l d0,8(a3)				
						
	move.l 48(a3),-(sp)			
	move.l 44(a3),-(sp)			
	move.l d0,-(sp)				
	jbsr _aubio_peakpicker_set_threshold	
						
	addq.l #8,sp				
	move.l #_?LC4,(sp)			
	move.l 1060(sp),-(sp)			
	jbsr _strcmp				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L141				
_?L128:						
						
	pea 1023.w				
	move.l 1060(sp),-(sp)			
	moveq #36,d3				
	add.l sp,d3				
	move.l d3,-(sp)				
	jbsr _strncpy				
	lea (12,sp),sp				
						
	clr.b 1051(sp)				
	jbra _?L129				
_?L130:						
						
	pea _?LC6				
	clr.l -(sp)				
	jbsr _aubio_log				
	addq.l #8,sp				
_?L123:						
						
	move.l a3,-(sp)				
	jbsr _del_aubio_tempo			
	addq.l #4,sp				
						
	sub.l a3,a3				
_?L142:						
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/a3/a4/a5/a6	
	lea (1024,sp),sp			
	rts					
_?L139:						
						
	move.l d5,-(sp)				
	pea _?LC3				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_tempo			
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L142				
_?L138:						
						
	move.l d3,-(sp)				
	move.l d4,-(sp)				
	pea _?LC2				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_tempo			
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L142				
_?L136:						
						
	move.l d3,-(sp)				
	pea _?LC0				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_tempo			
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L142				
_?L137:						
						
	move.l d4,-(sp)				
	pea _?LC1				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_tempo			
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L142				
						
						
