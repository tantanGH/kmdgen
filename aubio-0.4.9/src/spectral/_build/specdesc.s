* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"specdesc.c"			
						
						
						
						
						
	.text					
	.globl	___muldf3			
	.globl	___adddf3			
	.align	2				
	.globl	_aubio_specdesc_energy		
						
_aubio_specdesc_energy:				
	movem.l d3/d4/d5/a3/a4/a5/a6,-(sp)	
	move.l 36(sp),a0			
						
	move.l 40(sp),a1			
	move.l 4(a1),a4				
						
	clr.l (a4)				
	clr.l 4(a4)				
						
	move.l (a0),d3				
						
	jbeq _?L1				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
						
	clr.l d4				
	clr.l d5				
	lea ___muldf3,a6			
	lea ___adddf3,a5			
_?L3:						
						
	move.l (a3)+,d0				
	move.l (a3)+,d1				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,(a4)				
	move.l d5,4(a4)				
						
	cmp.l d3,a3				
	jbne _?L3				
_?L1:						
						
	movem.l (sp)+,d3/d4/d5/a3/a4/a5/a6	
	rts					
						
	.globl	___floatunsidf			
	.align	2				
	.globl	_aubio_specdesc_hfc		
						
_aubio_specdesc_hfc:				
	subq.l #4,sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 48(sp),a0			
						
	move.l 52(sp),a1			
	move.l 4(a1),a3				
						
	clr.l (a3)				
	clr.l 4(a3)				
						
	move.l (a0),36(sp)			
						
	jbeq _?L8				
	move.l 4(a0),a4				
						
	clr.l d4				
	clr.l d5				
						
	moveq #0,d3				
	lea ___floatunsidf,a6			
	lea ___muldf3,a5			
_?L10:						
						
	addq.l #1,d3				
						
	move.l (a4)+,d6				
	move.l (a4)+,d7				
						
	move.l d3,-(sp)				
	jbsr (a6)				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,(a3)				
	move.l d5,4(a3)				
						
	cmp.l 36(sp),d3				
	jbne _?L10				
_?L8:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #4,sp				
	rts					
						
	.globl	___gtdf2			
	.globl	___subdf3			
	.align	2				
	.globl	_aubio_specdesc_specflux	
						
_aubio_specdesc_specflux:			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 44(sp),a0			
						
	move.l 48(sp),a1			
	move.l 4(a1),a3				
						
	clr.l (a3)				
	clr.l 4(a3)				
						
	move.l (a0),d3				
						
	jbeq _?L15				
	move.l 4(a0),a5				
						
	move.l 40(sp),a1			
	move.l 16(a1),a1			
	move.l 4(a1),a6				
	lsl.l #3,d3				
	add.l a5,d3				
	lea ___gtdf2,a4				
_?L19:						
						
	move.l (a5)+,d4				
	move.l (a5)+,d5				
						
	move.l (a6)+,d6				
	move.l (a6)+,d7				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L17				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___subdf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	move.l -8(a5),d4			
	move.l -4(a5),d5			
_?L17:						
						
	move.l d4,-8(a6)			
	move.l d5,-4(a6)			
						
	cmp.l a5,d3				
	jbne _?L19				
_?L15:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.align	2				
	.globl	_aubio_specdesc_complex		
						
_aubio_specdesc_complex:			
	lea (-56,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 96(sp),a0			
	move.l 100(sp),a3			
						
	move.l (a3),d0				
						
	move.l 104(sp),a1			
	move.l 4(a1),60(sp)			
						
	move.l 60(sp),a1			
	clr.l (a1)				
	clr.l 4(a1)				
						
	tst.l d0				
	jbeq _?L25				
						
	move.l 24(a0),a1			
	move.l 4(a1),a1				
						
	move.l 28(a0),a2			
	move.l 4(a2),64(sp)			
						
	move.l 20(a0),a2			
	move.l 4(a2),88(sp)			
						
	move.l 16(a0),a0			
	move.l 4(a0),68(sp)			
						
	move.l 4(a3),a5				
						
	move.l 8(a3),72(sp)			
	lsl.l #3,d0				
	move.l d0,84(sp)			
	moveq #0,d3				
	lea ___adddf3,a3			
	lea ___muldf3,a6			
	move.l a1,a4				
_?L27:						
						
	move.l (a4,d3.l),d0			
	move.l 4(a4,d3.l),d1			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 64(sp),a0			
	move.l 4(a0,d3.l),-(sp)			
	move.l (a0,d3.l),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 88(sp),a1			
	move.l d4,(a1,d3.l)			
	move.l d5,4(a1,d3.l)			
						
	move.l 68(sp),a0			
	move.l (a0,d3.l),d6			
	move.l 4(a0,d3.l),d7			
						
	move.l (a5,d3.l),44(sp)			
	move.l 4(a5,d3.l),48(sp)		
						
	move.l 72(sp),a1			
	move.l 4(a1,d3.l),-(sp)			
	move.l (a1,d3.l),-(sp)			
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr ___subdf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _cos				
	addq.l #8,sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,76(sp)			
	move.l d5,80(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr (a6)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
						
	bclr #31,d0				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr _sqrt				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 68(sp),a0			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l 60(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l (a4,d3.l),d0			
	move.l 4(a4,d3.l),d1			
	move.l 64(sp),a0			
	move.l d0,(a0,d3.l)			
	move.l d1,4(a0,d3.l)			
						
	move.l 72(sp),a0			
	move.l (a0,d3.l),d0			
	move.l 4(a0,d3.l),d1			
	move.l d0,(a4,d3.l)			
	move.l d1,4(a4,d3.l)			
						
	move.l (a5,d3.l),d0			
	move.l 4(a5,d3.l),d1			
	move.l 68(sp),a0			
	move.l d0,(a0,d3.l)			
	move.l d1,4(a0,d3.l)			
						
	addq.l #8,d3				
	cmp.l 84(sp),d3				
	jbne _?L27				
_?L25:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (56,sp),sp				
	rts					
						
	.globl	___ltdf2			
	.align	2				
	.globl	_aubio_specdesc_phase		
						
_aubio_specdesc_phase:				
	subq.l #4,sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 44(sp),a3			
	move.l 48(sp),a4			
						
	move.l (a4),d7				
						
	move.l 52(sp),a1			
	move.l 4(a1),a0				
	clr.l (a0)				
	clr.l 4(a0)				
						
	move.l 20(a3),a1			
						
	move.l 4(a1),a2				
						
	clr.l (a2)				
	clr.l 4(a2)				
						
	tst.l d7				
	jbeq _?L33				
						
	move.l 8(a4),d4				
						
	move.l 24(a3),a0			
	move.l 4(a0),a0				
						
	move.l 28(a3),a1			
	move.l 4(a1),a6				
						
	moveq #0,d5				
	lea ___adddf3,a5			
	move.l #___ltdf2,d6			
	move.l d7,36(sp)			
	move.l d4,d7				
	move.l a6,d4				
	move.l a2,a6				
	move.l d5,d3				
	lsl.l #3,d3				
						
	add.l d3,a6				
						
	move.l (a0,d3.l),d0			
	move.l 4(a0,d3.l),d1			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,a2				
	lea (a2,d3.l),a0			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr ___subdf3				
	lea (16,sp),sp				
						
	move.l d4,a1				
	lea (a1,d3.l),a2			
	move.l 4(a2),-(sp)			
	move.l (a2),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _aubio_unwrap2pi			
	addq.l #8,sp				
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	move.l 4(a4),a0				
						
	move.l 4(a0,d3.l),-(sp)			
	move.l (a0,d3.l),-(sp)			
	move.l 12(a3),-(sp)			
	move.l 8(a3),-(sp)			
	move.l d6,a0				
	jbsr (a0)				
	lea (16,sp),sp				
						
	move.l 20(a3),a1			
						
	move.l 4(a1),a0				
						
	tst.l d0				
	jbge _?L42				
_?L46:						
						
	add.l d3,a0				
						
	move.l (a0),d4				
	bclr #31,d4				
	move.l 4(a0),d2				
	move.l d4,d0				
	move.l d2,d1				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 24(a3),a0			
	move.l 4(a0),a0				
						
	lea (a0,d3.l),a6			
						
	move.l 28(a3),a2			
	move.l 4(a2),d4				
						
	move.l (a6),d0				
	move.l 4(a6),d1				
	move.l d4,a2				
	move.l d0,(a2,d3.l)			
	move.l d1,4(a2,d3.l)			
						
	move.l 8(a4),d7				
						
	move.l d7,a2				
	move.l (a2,d3.l),d0			
	move.l 4(a2,d3.l),d1			
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	addq.l #1,d5				
						
	cmp.l 36(sp),d5				
	jbeq _?L33				
_?L47:						
						
	move.l 4(a1),a6				
	move.l d5,d3				
	lsl.l #3,d3				
						
	add.l d3,a6				
						
	move.l (a0,d3.l),d0			
	move.l 4(a0,d3.l),d1			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,a2				
	lea (a2,d3.l),a0			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr ___subdf3				
	lea (16,sp),sp				
						
	move.l d4,a1				
	lea (a1,d3.l),a2			
	move.l 4(a2),-(sp)			
	move.l (a2),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _aubio_unwrap2pi			
	addq.l #8,sp				
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	move.l 4(a4),a0				
						
	move.l 4(a0,d3.l),-(sp)			
	move.l (a0,d3.l),-(sp)			
	move.l 12(a3),-(sp)			
	move.l 8(a3),-(sp)			
	move.l d6,a0				
	jbsr (a0)				
	lea (16,sp),sp				
						
	move.l 20(a3),a1			
						
	move.l 4(a1),a0				
						
	tst.l d0				
	jblt _?L46				
_?L42:						
						
	clr.l (a0,d3.l)				
	clr.l 4(a0,d3.l)			
						
	move.l 24(a3),a0			
	move.l 4(a0),a0				
						
	lea (a0,d3.l),a6			
						
	move.l 28(a3),a2			
	move.l 4(a2),d4				
						
	move.l (a6),d0				
	move.l 4(a6),d1				
	move.l d4,a2				
	move.l d0,(a2,d3.l)			
	move.l d1,4(a2,d3.l)			
						
	move.l 8(a4),d7				
						
	move.l d7,a2				
	move.l (a2,d3.l),d0			
	move.l 4(a2,d3.l),d1			
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	addq.l #1,d5				
						
	cmp.l 36(sp),d5				
	jbne _?L47				
_?L33:						
						
	move.l a1,-(sp)				
	move.l 32(a3),-(sp)			
	jbsr _aubio_hist_dyn_notnull		
						
	addq.l #4,sp				
	move.l 32(a3),(sp)			
	jbsr _aubio_hist_weight			
						
	move.l 56(sp),a0			
	move.l 4(a0),a4				
						
	move.l 32(a3),(sp)			
	jbsr _aubio_hist_mean			
	addq.l #4,sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #4,sp				
	rts					
						
	.align	2				
	.globl	_aubio_specdesc_wphase		
						
_aubio_specdesc_wphase:				
	subq.l #8,sp				
	movem.l d3/d4/d5/a3/a4/a5/a6,-(sp)	
	move.l 40(sp),a5			
	move.l 44(sp),a4			
	move.l 48(sp),d5			
						
	move.l d5,-(sp)				
	move.l a4,-(sp)				
	move.l a5,-(sp)				
	jbsr _aubio_specdesc_phase		
	lea (12,sp),sp				
						
	move.l (a4),d3				
						
	move.l 20(a5),d4			
						
	tst.l d3				
	jbeq _?L51				
	move.l d4,a0				
	move.l 4(a0),a3				
	move.l 4(a4),a4				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___muldf3,a6			
_?L50:						
						
	move.l (a3),d0				
	move.l 4(a3),d1				
						
	subq.l #8,sp				
	move.l (a4)+,(sp)			
	move.l (a4)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,28(sp)			
	move.l d1,32(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l a3,d3				
	jbne _?L50				
_?L51:						
						
	move.l d4,-(sp)				
	move.l 32(a5),-(sp)			
	jbsr _aubio_hist_dyn_notnull		
						
	addq.l #4,sp				
	move.l 32(a5),(sp)			
	jbsr _aubio_hist_weight			
						
	move.l d5,a0				
	move.l 4(a0),a3				
						
	move.l 32(a5),(sp)			
	jbsr _aubio_hist_mean			
	addq.l #4,sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	movem.l (sp)+,d3/d4/d5/a3/a4/a5/a6	
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_aubio_specdesc_specdiff	
						
_aubio_specdesc_specdiff:			
	lea (-24,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 64(sp),a5			
	move.l 68(sp),a0			
						
	move.l (a0),d0				
						
	move.l 72(sp),a2			
	move.l 4(a2),a1				
	clr.l (a1)				
	clr.l 4(a1)				
						
	move.l 20(a5),56(sp)			
						
	tst.l d0				
	jbeq _?L59				
	move.l 4(a0),a6				
						
	move.l 16(a5),a0			
	move.l 4(a0),d3				
	move.l 56(sp),a1			
	move.l 4(a1),a3				
	lsl.l #3,d0				
	add.l a6,d0				
	move.l d0,52(sp)			
	lea ___muldf3,a4			
	move.l a5,d0				
	move.l d3,a5				
	move.l d0,d3				
_?L58:						
						
	move.l (a6),d0				
	move.l 4(a6),d1				
						
	move.l (a5)+,a0				
	move.l (a5)+,a1				
						
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l a0,56(sp)			
	move.l a1,52(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 40(sp),a0			
	move.l 36(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a4)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
						
	move.l d0,d6				
	bclr #31,d6				
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr _sqrt				
	addq.l #8,sp				
	move.l d0,44(sp)			
	move.l d1,48(sp)			
						
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	move.l (a6)+,d4				
	move.l (a6)+,d5				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d3,a2				
	lea (8,a2),a0				
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L57				
						
	clr.l -8(a3)				
	clr.l -4(a3)				
						
	move.l -8(a6),d4			
	move.l -4(a6),d5			
_?L57:						
						
	move.l d4,-8(a5)			
	move.l d5,-4(a5)			
						
	cmp.l 52(sp),a6				
	jbne _?L58				
	move.l d3,a5				
_?L59:						
						
	move.l 56(sp),-(sp)			
	move.l 32(a5),-(sp)			
	jbsr _aubio_hist_dyn_notnull		
						
	addq.l #4,sp				
	move.l 32(a5),(sp)			
	jbsr _aubio_hist_weight			
						
	move.l 76(sp),a0			
	move.l 4(a0),a3				
						
	move.l 32(a5),(sp)			
	jbsr _aubio_hist_mean			
	addq.l #4,sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (24,sp),sp				
	rts					
						
	.globl	___divdf3			
	.globl	___unorddf2			
	.align	2				
	.globl	_aubio_specdesc_kl		
						
_aubio_specdesc_kl:				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 44(sp),a0			
						
	move.l 48(sp),a1			
	move.l 4(a1),a5				
						
	clr.l (a5)				
	clr.l 4(a5)				
						
	move.l (a0),d3				
						
	jbeq _?L64				
	move.l 4(a0),a3				
						
	move.l 40(sp),a0			
	move.l 16(a0),a0			
	move.l 4(a0),a6				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___adddf3,a4			
	move.l #___divdf3,d7			
	move.l #_log,d6				
_?L67:						
						
	move.l (a3),d4				
	move.l 4(a3),d5				
						
	move.l (a6),d0				
	move.l 4(a6),d1				
						
	move.l #-1717986918,-(sp)		
	move.l #1069128089,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,a0				
	jbsr (a0)				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d6,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
						
	move.l (a3)+,d0				
	move.l (a3)+,d1				
	move.l d0,(a6)+				
	move.l d1,(a6)+				
						
	cmp.l d3,a3				
	jbne _?L67				
						
	move.l (a5),d0				
	move.l 4(a5),d1				
						
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___unorddf2			
	lea (16,sp),sp				
	tst.l d0				
	jbne _?L74				
_?L64:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L74:						
						
	clr.l (a5)				
	clr.l 4(a5)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.align	2				
	.globl	_aubio_specdesc_mkl		
						
_aubio_specdesc_mkl:				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 44(sp),a0			
						
	move.l 48(sp),a1			
	move.l 4(a1),a6				
						
	clr.l (a6)				
	clr.l 4(a6)				
						
	move.l (a0),d3				
						
	jbeq _?L75				
	move.l 4(a0),a3				
						
	move.l 40(sp),a0			
	move.l 16(a0),a0			
	move.l 4(a0),a5				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___adddf3,a4			
	move.l #___divdf3,d7			
	move.l #_log,d6				
_?L78:						
						
	move.l (a3),d4				
	move.l 4(a3),d5				
						
	move.l (a5),d0				
	move.l 4(a5),d1				
						
	move.l #-1717986918,-(sp)		
	move.l #1069128089,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,a0				
	jbsr (a0)				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d6,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 4(a6),-(sp)			
	move.l (a6),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	move.l (a3)+,d0				
	move.l (a3)+,d1				
	move.l d0,(a5)+				
	move.l d1,(a5)+				
						
	cmp.l d3,a3				
	jbne _?L78				
						
	move.l (a6),d0				
	move.l 4(a6),d1				
						
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___unorddf2			
	lea (16,sp),sp				
	tst.l d0				
	jbne _?L85				
_?L75:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L85:						
						
	clr.l (a6)				
	clr.l 4(a6)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.align	2				
	.globl	_aubio_specdesc_do		
						
_aubio_specdesc_do:				
	move.l 4(sp),a0				
						
	move.l 4(a0),a1				
						
						
	jmp (a1)				
						
	.data					
_?LC0:						
	.dc.b $65,$6e,$65,$72,$67,$79
	.dc.b $00				
_?LC1:						
	.dc.b $73,$70,$65,$63,$64,$69,$66,$66
	.dc.b $00				
_?LC2:						
	.dc.b $68,$66,$63
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
	.dc.b $63,$65,$6e,$74,$72,$6f,$69,$64
	.dc.b $00				
_?LC10:						
	.dc.b $73,$70,$72,$65,$61,$64
	.dc.b $00				
_?LC11:						
	.dc.b $73,$6b,$65,$77,$6e,$65,$73,$73
	.dc.b $00				
_?LC12:						
	.dc.b $6b,$75,$72,$74,$6f,$73,$69,$73
	.dc.b $00				
_?LC13:						
	.dc.b $73,$6c,$6f,$70,$65
	.dc.b $00				
_?LC14:						
	.dc.b $64,$65,$63,$72,$65,$61,$73,$65
	.dc.b $00				
_?LC15:						
	.dc.b $72,$6f,$6c,$6c,$6f,$66,$66
	.dc.b $00				
_?LC16:						
	.dc.b $6f,$6c,$64,$5f,$64,$65,$66,$61
	.dc.b $75,$6c,$74
	.dc.b $00				
_?LC17:						
	.dc.b $64,$65,$66,$61,$75,$6c,$74
	.dc.b $00				
_?LC18:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$70,$65
	.dc.b $63,$64,$65,$73,$63,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$73
	.dc.b $70,$65,$63,$74,$72,$61,$6c,$20
	.dc.b $64,$65,$73,$63,$72,$69,$70,$74
	.dc.b $6f,$72,$20,$74,$79,$70,$65,$20
	.dc.b $27,$25,$73,$27,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_new_aubio_specdesc		
						
_new_aubio_specdesc:				
	movem.l d3/a3/a4/a5,-(sp)		
	move.l 20(sp),a4			
						
	pea 36.w				
	jbsr _MALLOC				
	move.l d0,a3				
						
	move.l #_?LC0,(sp)			
	move.l a4,-(sp)				
	lea _strcmp,a5				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L99				
						
	move.l 24(sp),d3			
	lsr.l #1,d3				
						
	addq.l #1,d3				
						
	pea _?LC1				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L90				
						
	pea _?LC2				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L109				
						
	pea _?LC3				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L91				
						
	pea _?LC4				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L91				
						
	pea _?LC5				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L92				
						
	pea _?LC6				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L93				
						
	pea _?LC7				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L94				
						
	cmp.b #107,(a4)				
	jbne _?L110				
	cmp.b #108,1(a4)			
	jbne _?L110				
						
	tst.b 2(a4)				
	jbne _?L110				
						
	move.l d3,-(sp)				
	jbsr _new_fvec				
	addq.l #4,sp				
						
	move.l d0,16(a3)			
						
	move.l #_aubio_specdesc_kl,d1		
	moveq #6,d0				
						
	move.l d1,4(a3)				
						
	move.l d0,(a3)				
_?L88:						
						
	move.l a3,d0				
	movem.l (sp)+,d3/a3/a4/a5		
	rts					
_?L99:						
	move.l #_aubio_specdesc_energy,d1	
	moveq #0,d0				
						
	move.l d1,4(a3)				
						
	move.l d0,(a3)				
	jbra _?L88				
_?L109:						
	move.l #_aubio_specdesc_hfc,d1		
	moveq #2,d0				
						
	move.l d1,4(a3)				
						
	move.l d0,(a3)				
	jbra _?L88				
_?L90:						
						
	move.l d3,-(sp)				
	lea _new_fvec,a4			
	jbsr (a4)				
						
	move.l d0,16(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,20(a3)			
						
	moveq #10,d2				
	move.l d2,(sp)				
	move.l #1413754136,-(sp)		
	move.l #1074340347,-(sp)		
	clr.l -(sp)				
	clr.l -(sp)				
	jbsr _new_aubio_hist			
	lea (20,sp),sp				
						
	move.l d0,32(a3)			
						
	move.l #1069128089,8(a3)		
	move.l #-1717986918,12(a3)		
						
	move.l #_aubio_specdesc_specdiff,d1	
	moveq #1,d0				
						
	move.l d1,4(a3)				
						
	move.l d0,(a3)				
	jbra _?L88				
_?L92:						
						
	move.l d3,-(sp)				
	lea _new_fvec,a4			
	jbsr (a4)				
						
	move.l d0,20(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,24(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,28(a3)			
						
	moveq #10,d1				
	move.l d1,(sp)				
	move.l #1413754136,-(sp)		
	move.l #1074340347,-(sp)		
	clr.l -(sp)				
	clr.l -(sp)				
	jbsr _new_aubio_hist			
	lea (20,sp),sp				
						
	move.l d0,32(a3)			
						
	move.l #1069128089,8(a3)		
	move.l #-1717986918,12(a3)		
						
	move.l #_aubio_specdesc_phase,d1	
	moveq #4,d0				
						
	move.l d1,4(a3)				
						
	move.l d0,(a3)				
	jbra _?L88				
_?L91:						
						
	move.l d3,-(sp)				
	lea _new_fvec,a4			
	jbsr (a4)				
						
	move.l d0,16(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,20(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,24(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,28(a3)			
						
	move.l #_aubio_specdesc_complex,d1	
	moveq #3,d0				
						
	move.l d1,4(a3)				
						
	move.l d0,(a3)				
	jbra _?L88				
_?L93:						
						
	move.l d3,-(sp)				
	lea _new_fvec,a4			
	jbsr (a4)				
						
	move.l d0,20(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,24(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,28(a3)			
						
	moveq #10,d0				
	move.l d0,(sp)				
	move.l #1413754136,-(sp)		
	move.l #1074340347,-(sp)		
	clr.l -(sp)				
	clr.l -(sp)				
	jbsr _new_aubio_hist			
	lea (20,sp),sp				
						
	move.l d0,32(a3)			
						
	move.l #1069128089,8(a3)		
	move.l #-1717986918,12(a3)		
						
	move.l #_aubio_specdesc_wphase,d1	
	moveq #5,d0				
						
	move.l d1,4(a3)				
						
	move.l d0,(a3)				
	jbra _?L88				
_?L94:						
						
	move.l d3,-(sp)				
	jbsr _new_fvec				
	addq.l #4,sp				
						
	move.l d0,16(a3)			
						
	move.l #_aubio_specdesc_mkl,d1		
	moveq #7,d0				
						
	move.l d1,4(a3)				
						
	move.l d0,(a3)				
	jbra _?L88				
_?L110:						
						
	pea _?LC8				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L97				
						
	pea _?LC9				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L101				
						
	pea _?LC10				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L102				
						
	pea _?LC11				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L103				
						
	pea _?LC12				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L104				
						
	pea _?LC13				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L105				
						
	pea _?LC14				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L106				
						
	pea _?LC15				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L107				
						
	pea _?LC16				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L109				
						
	pea _?LC17				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L109				
						
	move.l a4,-(sp)				
	pea _?LC18				
	clr.l -(sp)				
	jbsr _aubio_log				
						
	addq.l #8,sp				
	move.l a3,(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	sub.l a3,a3				
						
	move.l a3,d0				
	movem.l (sp)+,d3/a3/a4/a5		
	rts					
_?L97:						
						
	move.l d3,-(sp)				
	jbsr _new_fvec				
	addq.l #4,sp				
						
	move.l d0,16(a3)			
						
	move.l #_aubio_specdesc_specflux,d1	
	moveq #8,d0				
						
	move.l d1,4(a3)				
						
	move.l d0,(a3)				
	jbra _?L88				
_?L101:						
	move.l #_aubio_specdesc_centroid,d1	
	moveq #9,d0				
						
	move.l d1,4(a3)				
						
	move.l d0,(a3)				
	jbra _?L88				
_?L102:						
	move.l #_aubio_specdesc_spread,d1	
	moveq #10,d0				
						
	move.l d1,4(a3)				
						
	move.l d0,(a3)				
	jbra _?L88				
_?L103:						
	move.l #_aubio_specdesc_skewness,d1	
	moveq #11,d0				
						
	move.l d1,4(a3)				
						
	move.l d0,(a3)				
	jbra _?L88				
_?L104:						
	move.l #_aubio_specdesc_kurtosis,d1	
	moveq #12,d0				
						
	move.l d1,4(a3)				
						
	move.l d0,(a3)				
	jbra _?L88				
_?L105:						
	move.l #_aubio_specdesc_slope,d1	
	moveq #13,d0				
						
	move.l d1,4(a3)				
						
	move.l d0,(a3)				
	jbra _?L88				
_?L107:						
	move.l #_aubio_specdesc_rolloff,d1	
	moveq #15,d0				
						
	move.l d1,4(a3)				
						
	move.l d0,(a3)				
	jbra _?L88				
_?L106:						
	move.l #_aubio_specdesc_decrease,d1	
	moveq #14,d0				
						
	move.l d1,4(a3)				
						
	move.l d0,(a3)				
	jbra _?L88				
						
	.align	2				
	.globl	_del_aubio_specdesc		
						
_del_aubio_specdesc:				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 12(sp),a3			
						
	move.l (a3),d0				
						
	moveq #5,d1				
	cmp.l d0,d1				
	jbcs _?L120				
	moveq #3,d1				
	cmp.l d0,d1				
	jbcs _?L121				
	moveq #1,d1				
	cmp.l d0,d1				
	jbeq _?L122				
	subq.l #3,d0				
	jbne _?L124				
						
	move.l 16(a3),-(sp)			
	lea _del_fvec,a4			
	jbsr (a4)				
						
	move.l 20(a3),(sp)			
	jbsr (a4)				
						
	move.l 24(a3),(sp)			
	jbsr (a4)				
						
	move.l 28(a3),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
_?L124:						
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _MFREE				
_?L120:						
						
	subq.l #6,d0				
	moveq #2,d1				
	cmp.l d0,d1				
	jbcs _?L124				
						
	move.l 16(a3),-(sp)			
	jbsr _del_fvec				
	addq.l #4,sp				
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _MFREE				
_?L121:						
						
	move.l 20(a3),-(sp)			
	lea _del_fvec,a4			
	jbsr (a4)				
						
	move.l 24(a3),(sp)			
	jbsr (a4)				
						
	move.l 28(a3),(sp)			
	jbsr (a4)				
						
	move.l 32(a3),(sp)			
	jbsr _del_aubio_hist			
	addq.l #4,sp				
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _MFREE				
_?L122:						
						
	move.l 16(a3),-(sp)			
	lea _del_fvec,a4			
	jbsr (a4)				
						
	move.l 20(a3),(sp)			
	jbsr (a4)				
						
	move.l 32(a3),(sp)			
	jbsr _del_aubio_hist			
	addq.l #4,sp				
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _MFREE				
						
						
