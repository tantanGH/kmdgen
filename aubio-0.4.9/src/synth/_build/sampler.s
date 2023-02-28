* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"sampler.c"			
						
						
						
						
						
	.text					
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$61,$6d
	.dc.b $70,$6c,$65,$72,$3a,$20,$67,$6f
	.dc.b $74,$20,$62,$6c,$6f,$63,$6b,$73
	.dc.b $69,$7a,$65,$20,$25,$64,$2c,$20
	.dc.b $62,$75,$74,$20,$63,$61,$6e,$20
	.dc.b $6e,$6f,$74,$20,$62,$65,$20,$3c
	.dc.b $20,$31,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_new_aubio_sampler		
						
_new_aubio_sampler:				
	move.l a3,-(sp)				
	move.l d3,-(sp)				
	move.l 16(sp),d3			
						
	pea 28.w				
	jbsr _MALLOC				
	addq.l #4,sp				
	move.l d0,a3				
						
	tst.l d3				
	jble _?L6				
						
	move.l 12(sp),(a3)			
						
	move.l d3,4(a3)				
						
	move.l d3,-(sp)				
	jbsr _new_fvec				
						
	move.l d0,12(a3)			
						
	move.l d3,(sp)				
	pea 4.w					
	jbsr _new_fmat				
	addq.l #8,sp				
						
	move.l d0,16(a3)			
						
	clr.l 8(a3)				
						
	clr.l 24(a3)				
						
	move.l a3,d0				
	move.l (sp)+,d3				
	move.l (sp)+,a3				
	rts					
_?L6:						
						
	move.l d3,-(sp)				
	pea _?LC0				
	clr.l -(sp)				
	jbsr _aubio_log				
						
	addq.l #8,sp				
	move.l a3,(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	sub.l a3,a3				
						
	move.l a3,d0				
	move.l (sp)+,d3				
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_strnlen			
						
_strnlen:					
	move.l 4(sp),a0				
	move.l 8(sp),d0				
						
	moveq #0,d1				
						
	tst.l d0				
	jbeq _?L9				
_?L8:						
						
	tst.b (a0,d1.l)				
	jbeq _?L15				
						
	addq.l #1,d1				
						
	cmp.l d0,d1				
	jbne _?L8				
_?L9:						
						
	rts					
_?L15:						
	move.l d1,d0				
	rts					
						
	.data					
_?LC1:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$61,$6d
	.dc.b $70,$6c,$65,$72,$3a,$20,$66,$61
	.dc.b $69,$6c,$65,$64,$20,$6c,$6f,$61
	.dc.b $64,$69,$6e,$67,$20,$25,$73
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_sampler_load		
						
_aubio_sampler_load:				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 12(sp),a4			
	move.l 16(sp),a3			
						
	move.l 8(a4),d0				
						
	jbeq _?L17				
						
	move.l d0,-(sp)				
	jbsr _del_aubio_source			
	addq.l #4,sp				
_?L17:						
						
	move.l 20(a4),d0			
						
	jbeq _?L18				
						
	move.l d0,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
_?L18:						
						
	moveq #0,d0				
_?L19:						
						
	tst.b (a3,d0.l)				
	jbeq _?L20				
						
	addq.l #1,d0				
						
	cmp.l #1024,d0				
	jbne _?L19				
_?L20:						
						
	move.l d0,-(sp)				
	jbsr _MALLOC				
	addq.l #4,sp				
						
	move.l d0,20(a4)			
						
	moveq #0,d1				
_?L22:						
						
	tst.b (a3,d1.l)				
	jbeq _?L23				
						
	addq.l #1,d1				
						
	cmp.l #1024,d1				
	jbne _?L22				
_?L23:						
						
	move.l d1,-(sp)				
	move.l a3,-(sp)				
	move.l d0,-(sp)				
	jbsr _strncpy				
						
	addq.l #8,sp				
	move.l 4(a4),(sp)			
	move.l (a4),-(sp)			
	move.l a3,-(sp)				
	jbsr _new_aubio_source			
	lea (12,sp),sp				
						
	move.l d0,8(a4)				
						
	jbeq _?L40				
						
	moveq #0,d0				
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
	rts					
_?L40:						
						
	move.l a3,-(sp)				
	pea _?LC1				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	moveq #1,d0				
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
	rts					
						
	.globl	___adddf3			
	.align	2				
	.globl	_aubio_sampler_do		
						
_aubio_sampler_do:				
	link.w a6,#-12				
	movem.l d3/d4/d5/a3/a4/a5,-(sp)		
	move.l 12(a6),d4			
	move.l 16(a6),d5			
						
	clr.l -4(a6)				
						
	move.l 8(a6),a0				
	tst.l 24(a0)				
	jbne _?L62				
_?L43:						
						
	tst.l d4				
	jbeq _?L41				
						
	cmp.l d5,d4				
	jbeq _?L41				
						
	move.l d5,a0				
	move.l (a0),d3				
						
	jbeq _?L41				
	move.l 4(a0),a3				
	move.l d4,a1				
	move.l 4(a1),a4				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___adddf3,a5			
_?L48:						
						
	move.l (a3),d0				
	move.l 4(a3),d1				
						
	subq.l #8,sp				
	move.l (a4)+,(sp)			
	move.l (a4)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,-12(a6)			
	move.l d1,-8(a6)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l d3,a3				
	jbne _?L48				
_?L41:						
						
	movem.l -36(a6),d3/d4/d5/a3/a4/a5	
	unlk a6					
	rts					
_?L62:						
						
	pea -4(a6)				
	move.l 12(a0),-(sp)			
	move.l 8(a0),-(sp)			
	jbsr _aubio_source_do			
	lea (12,sp),sp				
						
	move.l d5,a1				
	move.l (a1),d3				
						
	jbeq _?L44				
	move.l 4(a1),a3				
						
	move.l 8(a6),a1				
	move.l 12(a1),a0			
	move.l 4(a0),a4				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___adddf3,a5			
_?L45:						
						
	move.l (a3),d0				
	move.l 4(a3),d1				
						
	subq.l #8,sp				
	move.l (a4)+,(sp)			
	move.l (a4)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,-12(a6)			
	move.l d1,-8(a6)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l a3,d3				
	jbne _?L45				
_?L44:						
						
	move.l 8(a6),a0				
	move.l 4(a0),a0				
	cmp.l -4(a6),a0				
	jbls _?L43				
						
	move.l 8(a6),a1				
	clr.l 24(a1)				
	jbra _?L43				
						
	.align	2				
	.globl	_aubio_sampler_do_multi		
						
_aubio_sampler_do_multi:			
	link.w a6,#-20				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)	
						
	clr.l -4(a6)				
						
	move.l 8(a6),a0				
	tst.l 24(a0)				
	jbne _?L98				
_?L65:						
						
	tst.l 12(a6)				
	jbeq _?L63				
						
	move.l 16(a6),a0			
	cmp.l 12(a6),a0				
	jbeq _?L63				
						
	move.l 4(a0),d5				
						
	jbeq _?L63				
						
	move.l (a0),d0				
	move.l d0,d6				
	lsl.l #3,d6				
	moveq #0,d3				
						
	moveq #0,d4				
						
	tst.l d0				
	jbeq _?L93				
	move.l 16(a6),a0			
	move.l 8(a0),a4				
	lea ___adddf3,a3			
	move.l 12(a6),a0			
	move.l 8(a0),-12(a6)			
_?L75:						
	move.l (a4,d3.l),a5			
	move.l -12(a6),a0			
	move.l (a0,d3.l),-8(a6)			
	move.l d6,d7				
	add.l a5,d7				
_?L74:						
						
	move.l (a5),d0				
	move.l 4(a5),d1				
						
	move.l -8(a6),a0			
	addq.l #8,-8(a6)			
	subq.l #8,sp				
	move.l (a0)+,(sp)			
	move.l (a0)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,-20(a6)			
	move.l d1,-16(a6)			
	move.l d0,(a5)+				
	move.l d1,(a5)+				
						
	cmp.l d7,a5				
	jbne _?L74				
						
	addq.l #1,d4				
						
	addq.l #4,d3				
	cmp.l d4,d5				
	jbne _?L75				
_?L63:						
						
	movem.l -52(a6),d3/d4/d5/d6/d7/a3/a4/a5	
	unlk a6					
	rts					
_?L93:						
						
	addq.l #1,d4				
						
	cmp.l d4,d5				
	jbeq _?L63				
						
	addq.l #1,d4				
						
	cmp.l d4,d5				
	jbne _?L93				
	jbra _?L63				
_?L98:						
						
	pea -4(a6)				
	move.l 16(a0),-(sp)			
	move.l 8(a0),-(sp)			
	jbsr _aubio_source_do_multi		
	lea (12,sp),sp				
						
	move.l 16(a6),a0			
	move.l 4(a0),d6				
						
	jbeq _?L66				
						
	move.l (a0),d0				
	move.l d0,d7				
	lsl.l #3,d7				
	moveq #0,d4				
						
	moveq #0,d5				
						
	tst.l d0				
	jbeq _?L92				
	move.l 16(a6),a0			
	move.l 8(a0),a4				
	move.l 8(a6),a0				
	move.l 16(a0),-8(a6)			
	lea ___adddf3,a3			
_?L69:						
	move.l (a4,d4.l),a5			
						
	move.l -8(a6),a0			
	move.l 8(a0),a1				
	move.l (a1,d4.l),-12(a6)		
	move.l a5,d3				
	add.l d7,d3				
_?L68:						
						
	move.l (a5),d0				
	move.l 4(a5),d1				
						
	move.l -12(a6),a0			
	addq.l #8,-12(a6)			
	subq.l #8,sp				
	move.l (a0)+,(sp)			
	move.l (a0)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,-20(a6)			
	move.l d1,-16(a6)			
	move.l d0,(a5)+				
	move.l d1,(a5)+				
						
	cmp.l a5,d3				
	jbne _?L68				
						
	addq.l #1,d5				
						
	addq.l #4,d4				
	cmp.l d6,d5				
	jbne _?L69				
_?L66:						
						
	move.l 8(a6),a0				
	move.l 4(a0),a0				
	cmp.l -4(a6),a0				
	jbls _?L65				
						
	move.l 8(a6),a0				
	clr.l 24(a0)				
	jbra _?L65				
_?L92:						
						
	addq.l #1,d5				
						
	cmp.l d5,d6				
	jbeq _?L66				
						
	addq.l #1,d5				
						
	cmp.l d5,d6				
	jbne _?L92				
	jbra _?L66				
						
	.align	2				
	.globl	_aubio_sampler_get_playing	
						
_aubio_sampler_get_playing:			
						
	move.l 4(sp),a0				
	move.l 24(a0),d0			
	rts					
						
	.align	2				
	.globl	_aubio_sampler_set_playing	
						
_aubio_sampler_set_playing:			
						
	moveq #1,d1				
	cmp.l 8(sp),d1				
	seq d0					
	ext.w d0				
	ext.l d0				
						
	move.l 4(sp),a0				
	neg.l d0				
	move.l d0,24(a0)			
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_sampler_play		
						
_aubio_sampler_play:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	clr.l -(sp)				
	move.l 8(a3),-(sp)			
	jbsr _aubio_source_seek			
	addq.l #8,sp				
						
	moveq #1,d0				
	move.l d0,24(a3)			
						
	moveq #0,d0				
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_aubio_sampler_stop		
						
_aubio_sampler_stop:				
						
	move.l 4(sp),a0				
	clr.l 24(a0)				
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_del_aubio_sampler		
						
_del_aubio_sampler:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 8(a3),d0				
						
	jbeq _?L108				
						
	move.l d0,-(sp)				
	jbsr _del_aubio_source			
	addq.l #4,sp				
_?L108:						
						
	move.l 20(a3),d0			
						
	jbeq _?L109				
						
	move.l d0,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
_?L109:						
						
	move.l 12(a3),-(sp)			
	jbsr _del_fvec				
						
	move.l 16(a3),(sp)			
	jbsr _del_fmat				
	addq.l #4,sp				
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
						
						
