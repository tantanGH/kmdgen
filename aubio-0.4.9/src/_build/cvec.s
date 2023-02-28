* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"cvec.c"			
						
						
						
						
						
	.text					
	.align	2				
	.globl	_new_cvec			
						
_new_cvec:					
	movem.l d3/a3/a4,-(sp)			
	move.l 16(sp),d3			
						
	jble _?L3				
						
	pea 12.w				
	lea _MALLOC,a4				
	jbsr (a4)				
	move.l d0,a3				
						
	lsr.l #1,d3				
						
	addq.l #1,d3				
						
	move.l d3,(a3)				
						
	lsl.l #3,d3				
	move.l d3,(sp)				
	jbsr (a4)				
						
	move.l d0,4(a3)				
						
	move.l (a3),d0				
	lsl.l #3,d0				
	move.l d0,(sp)				
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,8(a3)				
						
	move.l a3,d0				
	movem.l (sp)+,d3/a3/a4			
	rts					
_?L3:						
						
	sub.l a3,a3				
						
	move.l a3,d0				
	movem.l (sp)+,d3/a3/a4			
	rts					
						
	.align	2				
	.globl	_del_cvec			
						
_del_cvec:					
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 12(sp),a3			
						
	move.l 4(a3),-(sp)			
	lea _MFREE,a4				
	jbsr (a4)				
						
	move.l 8(a3),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _MFREE				
						
	.align	2				
	.globl	_cvec_norm_set_sample		
						
_cvec_norm_set_sample:				
						
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
	.globl	_cvec_phas_set_sample		
						
_cvec_phas_set_sample:				
						
	move.l 4(sp),a0				
	move.l 8(a0),a0				
	move.l 16(sp),d0			
	lsl.l #3,d0				
	move.l 8(sp),d1				
	move.l 12(sp),d2			
	move.l d1,(a0,d0.l)			
	move.l d2,4(a0,d0.l)			
						
	rts					
						
	.align	2				
	.globl	_cvec_norm_get_sample		
						
_cvec_norm_get_sample:				
						
	move.l 4(sp),a0				
	move.l 4(a0),a0				
	move.l 8(sp),d0				
	lsl.l #3,d0				
						
	move.l 4(a0,d0.l),d1			
	move.l (a0,d0.l),d0			
	rts					
						
	.align	2				
	.globl	_cvec_phas_get_sample		
						
_cvec_phas_get_sample:				
						
	move.l 4(sp),a0				
	move.l 8(a0),a0				
	move.l 8(sp),d0				
	lsl.l #3,d0				
						
	move.l 4(a0,d0.l),d1			
	move.l (a0,d0.l),d0			
	rts					
						
	.align	2				
	.globl	_cvec_norm_get_data		
						
_cvec_norm_get_data:				
						
	move.l 4(sp),a0				
	move.l 4(a0),d0				
	rts					
						
	.align	2				
	.globl	_cvec_phas_get_data		
						
_cvec_phas_get_data:				
						
	move.l 4(sp),a0				
	move.l 8(a0),d0				
	rts					
						
	.data					
_?LC0:						
	.dc.b $6e,$6f,$72,$6d,$3a,$20
	.dc.b $00				
_?LC1:						
	.dc.b $25,$6c,$66,$20
	.dc.b $00				
_?LC2:						
	.dc.b $0a
	.dc.b $00				
_?LC3:						
	.dc.b $70,$68,$61,$73,$3a,$20
	.dc.b $00				
	.text					
	.align	2				
	.globl	_cvec_print			
						
_cvec_print:					
	movem.l d3/d4/a3/a4,-(sp)		
	move.l 20(sp),a3			
						
	pea _?LC0				
	pea 2.w					
	lea _aubio_log,a4			
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l (a3)				
	jbeq _?L21				
	moveq #0,d4				
						
	moveq #0,d3				
_?L22:						
						
	move.l 4(a3),a0				
	move.l 4(a0,d4.l),-(sp)			
	move.l (a0,d4.l),-(sp)			
	pea _?LC1				
	pea 2.w					
	jbsr (a4)				
	lea (16,sp),sp				
						
	addq.l #1,d3				
						
	addq.l #8,d4				
	cmp.l (a3),d3				
	jbcs _?L22				
_?L21:						
						
	pea _?LC2				
	pea 2.w					
	jbsr (a4)				
						
	addq.l #4,sp				
	move.l #_?LC3,(sp)			
	pea 2.w					
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l (a3)				
	jbeq _?L23				
	moveq #0,d4				
						
	moveq #0,d3				
_?L24:						
						
	move.l 8(a3),a0				
	move.l 4(a0,d4.l),-(sp)			
	move.l (a0,d4.l),-(sp)			
	pea _?LC1				
	pea 2.w					
	jbsr (a4)				
	lea (16,sp),sp				
						
	addq.l #1,d3				
						
	addq.l #8,d4				
	cmp.l (a3),d3				
	jbcs _?L24				
_?L23:						
						
	pea _?LC2				
	pea 2.w					
	jbsr (a4)				
	addq.l #8,sp				
						
	movem.l (sp)+,d3/d4/a3/a4		
	rts					
						
	.data					
_?LC4:						
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
	.globl	_cvec_copy			
						
_cvec_copy:					
	move.l a3,-(sp)				
	move.l d3,-(sp)				
	move.l 12(sp),a1			
	move.l 16(sp),a0			
						
	move.l (a1),d1				
						
	move.l (a0),d0				
						
	cmp.l d1,d0				
	jbne _?L30				
						
	tst.l d1				
	jbeq _?L29				
						
	move.l 4(a1),a3				
						
	move.l 4(a0),a2				
						
	move.l 8(a1),a1				
						
	move.l 8(a0),a0				
	lsl.l #3,d1				
	moveq #0,d0				
_?L34:						
						
	move.l (a3,d0.l),d2			
	move.l 4(a3,d0.l),d3			
	move.l d2,(a2,d0.l)			
	move.l d3,4(a2,d0.l)			
						
	move.l (a1,d0.l),d2			
	move.l 4(a1,d0.l),d3			
	move.l d2,(a0,d0.l)			
	move.l d3,4(a0,d0.l)			
						
	addq.l #8,d0				
	cmp.l d0,d1				
	jbne _?L34				
_?L29:						
						
	move.l (sp)+,d3				
	move.l (sp)+,a3				
	rts					
_?L30:						
						
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	pea _?LC4				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	move.l (sp)+,d3				
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_cvec_norm_set_all		
						
_cvec_norm_set_all:				
	move.l 4(sp),a0				
						
	move.l (a0),d0				
						
	jbeq _?L38				
	move.l 4(a0),a0				
	lsl.l #3,d0				
	add.l a0,d0				
_?L40:						
						
	move.l 8(sp),(a0)+			
	move.l 12(sp),(a0)+			
						
	cmp.l a0,d0				
	jbne _?L40				
_?L38:						
						
	rts					
						
	.align	2				
	.globl	_cvec_norm_zeros		
						
_cvec_norm_zeros:				
	move.l 4(sp),a0				
						
	move.l (a0),d0				
						
	jbeq _?L47				
						
	lsl.l #3,d0				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l 4(a0),-(sp)			
	jbsr _memset				
	lea (12,sp),sp				
_?L47:						
						
	rts					
						
	.align	2				
	.globl	_cvec_norm_ones			
						
_cvec_norm_ones:				
	move.l 4(sp),a0				
						
	move.l (a0),d0				
						
	jbeq _?L54				
	move.l 4(a0),a0				
	lsl.l #3,d0				
	add.l a0,d0				
_?L56:						
						
	move.l #1072693248,(a0)+		
	clr.l (a0)+				
						
	cmp.l a0,d0				
	jbne _?L56				
_?L54:						
						
	rts					
						
	.align	2				
	.globl	_cvec_phas_set_all		
						
_cvec_phas_set_all:				
	move.l 4(sp),a0				
						
	move.l (a0),d0				
						
	jbeq _?L63				
	move.l 8(a0),a0				
	lsl.l #3,d0				
	add.l a0,d0				
_?L65:						
						
	move.l 8(sp),(a0)+			
	move.l 12(sp),(a0)+			
						
	cmp.l a0,d0				
	jbne _?L65				
_?L63:						
						
	rts					
						
	.align	2				
	.globl	_cvec_phas_zeros		
						
_cvec_phas_zeros:				
	move.l 4(sp),a0				
						
	move.l (a0),d0				
						
	jbeq _?L72				
						
	lsl.l #3,d0				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l 8(a0),-(sp)			
	jbsr _memset				
	lea (12,sp),sp				
_?L72:						
						
	rts					
						
	.align	2				
	.globl	_cvec_phas_ones			
						
_cvec_phas_ones:				
	move.l 4(sp),a0				
						
	move.l (a0),d0				
						
	jbeq _?L79				
	move.l 8(a0),a0				
	lsl.l #3,d0				
	add.l a0,d0				
_?L81:						
						
	move.l #1072693248,(a0)+		
	clr.l (a0)+				
						
	cmp.l a0,d0				
	jbne _?L81				
_?L79:						
						
	rts					
						
	.align	2				
	.globl	_cvec_zeros			
						
_cvec_zeros:					
	movem.l d3/a3/a4,-(sp)			
	move.l 16(sp),a3			
						
	move.l (a3),d3				
						
	jbeq _?L88				
						
	lsl.l #3,d3				
	move.l d3,-(sp)				
	clr.l -(sp)				
	move.l 4(a3),-(sp)			
	lea _memset,a4				
	jbsr (a4)				
						
	addq.l #8,sp				
	move.l d3,(sp)				
	clr.l -(sp)				
	move.l 8(a3),-(sp)			
	jbsr (a4)				
	lea (12,sp),sp				
_?L88:						
						
	movem.l (sp)+,d3/a3/a4			
	rts					
						
	.globl	___muldf3			
	.globl	___adddf3			
	.align	2				
	.globl	_cvec_logmag			
						
_cvec_logmag:					
	subq.l #8,sp				
	movem.l d3/d4/d5/a3/a4/a5/a6,-(sp)	
	move.l 40(sp),a0			
	move.l 44(sp),d4			
	move.l 48(sp),d5			
						
	move.l (a0),d3				
						
	jbeq _?L95				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___muldf3,a6			
	lea ___adddf3,a5			
	lea _log,a4				
_?L97:						
						
	move.l (a3),d0				
	move.l 4(a3),d1				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,28(sp)			
	move.l d1,32(sp)			
						
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l d3,a3				
	jbne _?L97				
_?L95:						
						
	movem.l (sp)+,d3/d4/d5/a3/a4/a5/a6	
	addq.l #8,sp				
	rts					
						
						
