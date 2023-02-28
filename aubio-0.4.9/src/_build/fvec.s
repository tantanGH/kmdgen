* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"fvec.c"			
						
						
						
						
						
	.text					
	.align	2				
	.globl	_new_fvec			
						
_new_fvec:					
	movem.l d3/a3/a4,-(sp)			
	move.l 16(sp),d3			
						
	jble _?L3				
						
	pea 8.w					
	lea _MALLOC,a4				
	jbsr (a4)				
	move.l d0,a3				
						
	move.l d3,(a3)				
						
	lsl.l #3,d3				
	move.l d3,(sp)				
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,4(a3)				
						
	move.l a3,d0				
	movem.l (sp)+,d3/a3/a4			
	rts					
_?L3:						
						
	sub.l a3,a3				
						
	move.l a3,d0				
	movem.l (sp)+,d3/a3/a4			
	rts					
						
	.align	2				
	.globl	_del_fvec			
						
_del_fvec:					
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 4(a3),-(sp)			
	jbsr _MFREE				
	addq.l #4,sp				
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
						
	.align	2				
	.globl	_fvec_set_sample		
						
_fvec_set_sample:				
						
	move.l 4(sp),a0				
	move.l 4(a0),a0				
	move.l 16(sp),d0			
	lsl.l #3,d0				
	move.l 8(sp),d1				
	move.l 12(sp),d2			
	move.l d1,(a0,d0.l)			
	move.l d2,4(a0,d0.l)			
						
	rts					
						
	.align	2				
	.globl	_fvec_get_sample		
						
_fvec_get_sample:				
						
	move.l 4(sp),a0				
	move.l 4(a0),a0				
	move.l 8(sp),d0				
	lsl.l #3,d0				
						
	move.l 4(a0,d0.l),d1			
	move.l (a0,d0.l),d0			
	rts					
						
	.align	2				
	.globl	_fvec_get_data			
						
_fvec_get_data:					
						
	move.l 4(sp),a0				
	move.l 4(a0),d0				
	rts					
						
	.data					
_?LC0:						
	.dc.b $25,$6c,$66,$20
	.dc.b $00				
_?LC1:						
	.dc.b $0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_fvec_print			
						
_fvec_print:					
	movem.l d3/d4/a3/a4,-(sp)		
	move.l 20(sp),a3			
	lea _aubio_log,a4			
						
	tst.l (a3)				
	jbeq _?L15				
	moveq #0,d4				
						
	moveq #0,d3				
	lea _aubio_log,a4			
_?L16:						
						
	move.l 4(a3),a0				
	move.l 4(a0,d4.l),-(sp)			
	move.l (a0,d4.l),-(sp)			
	pea _?LC0				
	pea 2.w					
	jbsr (a4)				
	lea (16,sp),sp				
						
	addq.l #1,d3				
						
	addq.l #8,d4				
	cmp.l (a3),d3				
	jbcs _?L16				
_?L15:						
						
	pea _?LC1				
	pea 2.w					
	jbsr (a4)				
	addq.l #8,sp				
						
	movem.l (sp)+,d3/d4/a3/a4		
	rts					
						
	.align	2				
	.globl	_fvec_set_all			
						
_fvec_set_all:					
	move.l 4(sp),a0				
						
	move.l (a0),d0				
						
	jbeq _?L22				
	move.l 4(a0),a0				
	lsl.l #3,d0				
	add.l a0,d0				
_?L24:						
						
	move.l 8(sp),(a0)+			
	move.l 12(sp),(a0)+			
						
	cmp.l a0,d0				
	jbne _?L24				
_?L22:						
						
	rts					
						
	.align	2				
	.globl	_fvec_zeros			
						
_fvec_zeros:					
	move.l 4(sp),a0				
						
	move.l (a0),d0				
						
	jbeq _?L31				
						
	lsl.l #3,d0				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l 4(a0),-(sp)			
	jbsr _memset				
	lea (12,sp),sp				
_?L31:						
						
	rts					
						
	.align	2				
	.globl	_fvec_ones			
						
_fvec_ones:					
	move.l 4(sp),a0				
						
	move.l (a0),d0				
						
	jbeq _?L38				
	move.l 4(a0),a0				
	lsl.l #3,d0				
	add.l a0,d0				
_?L40:						
						
	move.l #1072693248,(a0)+		
	clr.l (a0)+				
						
	cmp.l a0,d0				
	jbne _?L40				
_?L38:						
						
	rts					
						
	.globl	___floatunsidf			
	.globl	___muldf3			
	.globl	___gtdf2			
	.globl	___ltdf2			
	.align	2				
	.globl	_fvec_rev			
						
_fvec_rev:					
	subq.l #8,sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)	
	move.l 44(sp),a4			
						
	move.l (a4),d5				
						
	lea ___floatunsidf,a3			
	move.l d5,-(sp)				
	jbsr (a3)				
						
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _floor				
	addq.l #8,sp				
	move.l d0,d6				
	move.l d1,d7				
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L47				
						
	move.l 4(a4),d4				
	lsl.l #3,d5				
	sub.l a5,a5				
						
	moveq #0,d3				
	subq.l #8,d5				
	lea ___ltdf2,a4				
_?L50:						
						
	lea (a5,d4.l),a1			
	move.l (a1),32(sp)			
	move.l 4(a1),36(sp)			
	move.l d5,a0				
	sub.l a5,a0				
	add.l d4,a0				
	move.l (a0),d0				
	move.l 4(a0),d1				
	move.l d0,(a1)				
	move.l d1,4(a1)				
	move.l 32(sp),(a0)			
	move.l 36(sp),4(a0)			
						
	addq.l #1,d3				
						
	addq.l #8,a5				
	move.l d3,-(sp)				
	jbsr (a3)				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L50				
_?L47:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5	
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_fvec_weight			
						
_fvec_weight:					
	subq.l #8,sp				
	movem.l d3/a3/a4/a5,-(sp)		
	move.l 28(sp),a1			
	move.l 32(sp),a0			
						
	move.l (a1),d0				
	move.l (a0),d3				
	cmp.l d3,d0				
	jbcc _?L56				
	move.l d0,d3				
_?L56:						
						
	tst.l d3				
	jbeq _?L55				
	move.l 4(a1),a3				
	move.l 4(a0),a4				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___muldf3,a5			
_?L58:						
						
	move.l (a3),d0				
	move.l 4(a3),d1				
						
	subq.l #8,sp				
	move.l (a4)+,(sp)			
	move.l (a4)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,16(sp)			
	move.l d1,20(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l a3,d3				
	jbne _?L58				
_?L55:						
						
	movem.l (sp)+,d3/a3/a4/a5		
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_fvec_weighted_copy		
						
_fvec_weighted_copy:				
	subq.l #8,sp				
	movem.l d3/a3/a4/a5/a6,-(sp)		
	move.l 32(sp),a2			
	move.l 36(sp),a1			
	move.l 40(sp),a0			
						
	move.l (a2),d0				
	move.l (a0),d3				
	cmp.l d3,d0				
	jbcc _?L66				
	move.l d0,d3				
_?L66:						
	move.l (a1),d0				
	cmp.l d3,d0				
	jbcc _?L67				
	move.l d0,d3				
_?L67:						
						
	tst.l d3				
	jbeq _?L65				
	move.l 4(a2),a3				
	move.l 4(a1),a5				
	move.l 4(a0),a4				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___muldf3,a6			
_?L69:						
						
	move.l (a3)+,d0				
	move.l (a3)+,d1				
						
	subq.l #8,sp				
	move.l (a5)+,(sp)			
	move.l (a5)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,20(sp)			
	move.l d1,24(sp)			
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	cmp.l a3,d3				
	jbne _?L69				
_?L65:						
						
	movem.l (sp)+,d3/a3/a4/a5/a6		
	addq.l #8,sp				
	rts					
						
	.data					
_?LC2:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$74,$72,$79
	.dc.b $69,$6e,$67,$20,$74,$6f,$20,$63
	.dc.b $6f,$70,$79,$20,$25,$64,$20,$65
	.dc.b $6c,$65,$6d,$65,$6e,$74,$73,$20
	.dc.b $74,$6f,$20,$25,$64,$20,$65,$6c
	.dc.b $65,$6d,$65,$6e,$74,$73,$20,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_fvec_copy			
						
_fvec_copy:					
	move.l 4(sp),a0				
	move.l 8(sp),a1				
						
	move.l (a0),d0				
						
	move.l (a1),d1				
						
	cmp.l d0,d1				
	jbne _?L77				
						
	tst.l d0				
	jbeq _?L76				
	move.l 4(a0),a0				
	move.l 4(a1),a1				
	lsl.l #3,d0				
	add.l a0,d0				
_?L81:						
						
	move.l (a0)+,d1				
	move.l (a0)+,d2				
	move.l d1,(a1)+				
	move.l d2,(a1)+				
						
	cmp.l a0,d0				
	jbne _?L81				
_?L76:						
						
	rts					
_?L77:						
						
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	pea _?LC2				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	rts					
						
						
