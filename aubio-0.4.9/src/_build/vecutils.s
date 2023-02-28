* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"vecutils.c"			
						
						
						
						
						
	.text					
	.align	2				
	.globl	_fvec_exp			
						
_fvec_exp:					
	subq.l #8,sp				
	movem.l d3/a3/a4,-(sp)			
	move.l 24(sp),a0			
						
	move.l (a0),d3				
	jbeq _?L1				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea _exp,a4				
_?L3:						
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,12(sp)			
	move.l d1,16(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
	cmp.l a3,d3				
	jbne _?L3				
_?L1:						
						
	movem.l (sp)+,d3/a3/a4			
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_fvec_cos			
						
_fvec_cos:					
	subq.l #8,sp				
	movem.l d3/a3/a4,-(sp)			
	move.l 24(sp),a0			
						
	move.l (a0),d3				
	jbeq _?L8				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea _cos,a4				
_?L10:						
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,12(sp)			
	move.l d1,16(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
	cmp.l a3,d3				
	jbne _?L10				
_?L8:						
						
	movem.l (sp)+,d3/a3/a4			
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_fvec_sin			
						
_fvec_sin:					
	subq.l #8,sp				
	movem.l d3/a3/a4,-(sp)			
	move.l 24(sp),a0			
						
	move.l (a0),d3				
	jbeq _?L17				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea _sin,a4				
_?L19:						
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,12(sp)			
	move.l d1,16(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
	cmp.l a3,d3				
	jbne _?L19				
_?L17:						
						
	movem.l (sp)+,d3/a3/a4			
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_fvec_abs			
						
_fvec_abs:					
	move.l 4(sp),a0				
						
	move.l (a0),d0				
	jbeq _?L26				
	move.l 4(a0),a0				
	lsl.l #3,d0				
	lea (a0,d0.l),a1			
_?L28:						
						
	move.l (a0),d1				
	move.l 4(a0),d0				
	addq.l #8,a0				
	bclr #31,d1				
	move.l d1,-8(a0)			
	move.l d0,-4(a0)			
	cmp.l a0,a1				
	jbne _?L28				
_?L26:						
						
	rts					
						
	.align	2				
	.globl	_fvec_sqrt			
						
_fvec_sqrt:					
	subq.l #8,sp				
	movem.l d3/a3/a4,-(sp)			
	move.l 24(sp),a0			
						
	move.l (a0),d3				
	jbeq _?L35				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea _sqrt,a4				
_?L37:						
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,12(sp)			
	move.l d1,16(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
	cmp.l a3,d3				
	jbne _?L37				
_?L35:						
						
	movem.l (sp)+,d3/a3/a4			
	addq.l #8,sp				
	rts					
						
	.globl	___ltdf2			
	.align	2				
	.globl	_fvec_log10			
						
_fvec_log10:					
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)	
	move.l 36(sp),a0			
						
	move.l (a0),d3				
	jbeq _?L42				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___ltdf2,a5				
	lea _log10,a4				
	move.l #927354109,d6			
	move.l #-1557651911,d7			
_?L46:						
						
	move.l (a3)+,d4				
	move.l (a3)+,d5				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L44				
						
	move.l d6,d4				
	move.l d7,d5				
_?L44:						
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,-8(a3)			
	move.l d1,-4(a3)			
	cmp.l a3,d3				
	jbne _?L46				
_?L42:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5	
	rts					
						
	.align	2				
	.globl	_fvec_log			
						
_fvec_log:					
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)	
	move.l 36(sp),a0			
						
	move.l (a0),d3				
	jbeq _?L52				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___ltdf2,a5				
	lea _log,a4				
	move.l #927354109,d6			
	move.l #-1557651911,d7			
_?L56:						
						
	move.l (a3)+,d4				
	move.l (a3)+,d5				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L54				
						
	move.l d6,d4				
	move.l d7,d5				
_?L54:						
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,-8(a3)			
	move.l d1,-4(a3)			
	cmp.l a3,d3				
	jbne _?L56				
_?L52:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5	
	rts					
						
	.align	2				
	.globl	_fvec_floor			
						
_fvec_floor:					
	subq.l #8,sp				
	movem.l d3/a3/a4,-(sp)			
	move.l 24(sp),a0			
						
	move.l (a0),d3				
	jbeq _?L62				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea _floor,a4				
_?L64:						
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,12(sp)			
	move.l d1,16(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
	cmp.l a3,d3				
	jbne _?L64				
_?L62:						
						
	movem.l (sp)+,d3/a3/a4			
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_fvec_ceil			
						
_fvec_ceil:					
	subq.l #8,sp				
	movem.l d3/a3/a4,-(sp)			
	move.l 24(sp),a0			
						
	move.l (a0),d3				
	jbeq _?L71				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea _ceil,a4				
_?L73:						
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,12(sp)			
	move.l d1,16(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
	cmp.l a3,d3				
	jbne _?L73				
_?L71:						
						
	movem.l (sp)+,d3/a3/a4			
	addq.l #8,sp				
	rts					
						
	.globl	___adddf3			
	.align	2				
	.globl	_fvec_round			
						
_fvec_round:					
	subq.l #8,sp				
	movem.l d3/a3/a4/a5,-(sp)		
	move.l 28(sp),a0			
						
	move.l (a0),d3				
	jbeq _?L80				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___adddf3,a5			
	lea _floor,a4				
_?L82:						
						
	move.l (a3),d0				
	move.l 4(a3),d1				
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,16(sp)			
	move.l d1,20(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
	cmp.l a3,d3				
	jbne _?L82				
_?L80:						
						
	movem.l (sp)+,d3/a3/a4/a5		
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_fvec_pow			
						
_fvec_pow:					
	subq.l #8,sp				
	movem.l d3/d4/d5/a3/a4,-(sp)		
	move.l 32(sp),a0			
	move.l 36(sp),d4			
	move.l 40(sp),d5			
						
	move.l (a0),d3				
						
	jbeq _?L89				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea _pow,a4				
_?L91:						
						
	move.l (a3),d0				
	move.l 4(a3),d1				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,20(sp)			
	move.l d1,24(sp)			
						
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l a3,d3				
	jbne _?L91				
_?L89:						
						
	movem.l (sp)+,d3/d4/d5/a3/a4		
	addq.l #8,sp				
	rts					
						
						
