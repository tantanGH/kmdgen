* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"source_wavread.c"		
						
						
						
						
						
	.text					
	.globl	___floatunsidf			
	.globl	___divdf3			
	.globl	___floatsidf			
	.globl	___muldf3			
	.align	2				
	.globl	_aubio_source_wavread_readframe	
						
_aubio_source_wavread_readframe:		
	lea (-20,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
						
	move.l 60(sp),a0			
	move.l 56(a0),a4			
						
	move.l 24(a0),-(sp)			
	pea 1024.w				
	move.l 32(a0),-(sp)			
	move.l a4,-(sp)				
	jbsr _fread				
	lea (16,sp),sp				
	move.l d0,44(sp)			
						
	move.l 60(sp),a0			
	move.l 36(a0),a6			
						
	move.l a6,d1				
	subq.l #1,d1				
						
	moveq #1,d0				
	move.l d0,d5				
	lsl.l d1,d5				
						
	move.l a6,d1				
	lsl.l d1,d0				
	move.l d0,40(sp)			
						
	move.l d5,-(sp)				
	jbsr ___floatunsidf			
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	tst.l 44(sp)				
	jbeq _?L2				
						
	move.l 60(sp),a0			
	move.l 20(a0),48(sp)			
	move.l 48(sp),d0			
	add.l d0,d0				
	add.l d0,d0				
	move.l d0,52(sp)			
	moveq #0,d3				
						
	clr.l 36(sp)				
	move.l a4,a5				
_?L3:						
						
	tst.l 48(sp)				
	jbeq _?L7				
						
	move.l 60(sp),a0			
	move.l 60(a0),a1			
	move.l 8(a1),a4				
	move.l 52(sp),d4			
	add.l a4,d4				
_?L10:						
						
	sub.l a0,a0				
						
	moveq #0,d0				
						
	cmp.w #0,a6				
	jbeq _?L8				
_?L4:						
						
	moveq #0,d1				
	move.b (a5)+,d1				
						
	lsl.l d0,d1				
						
	add.l d1,a0				
						
	addq.l #8,d0				
						
	cmp.l a6,d0				
	jbcs _?L4				
						
	moveq #8,d0				
	cmp.l a6,d0				
	jbeq _?L20				
						
	move.l a0,d0				
_?L8:						
						
	cmp.l a0,d5				
	jbhi _?L6				
						
	move.l a0,d0				
	sub.l 40(sp),d0				
_?L6:						
						
	move.l (a4)+,a3				
						
	move.l d0,-(sp)				
	jbsr ___floatsidf			
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,(a3,d3.l)			
	move.l d1,4(a3,d3.l)			
						
	cmp.l d4,a4				
	jbne _?L10				
_?L7:						
						
	addq.l #1,36(sp)			
						
	addq.l #8,d3				
	move.l 44(sp),a0			
	cmp.l 36(sp),a0				
	jbne _?L3				
						
	move.l 64(sp),a0			
	move.l 44(sp),(a0)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (20,sp),sp				
	rts					
_?L20:						
						
	move.l a0,d0				
	sub.l d5,d0				
						
	move.l (a4)+,a3				
						
	move.l d0,-(sp)				
	jbsr ___floatsidf			
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,(a3,d3.l)			
	move.l d1,4(a3,d3.l)			
						
	cmp.l d4,a4				
	jbne _?L10				
	jbra _?L7				
_?L2:						
						
	move.l 64(sp),a0			
	clr.l (a0)				
						
	moveq #1,d0				
	move.l 60(sp),a0			
	move.l d0,44(a0)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (20,sp),sp				
	rts					
						
	.data					
_?LC0:						
	.dc.b $73,$6f,$75,$72,$63,$65,$5f,$77
	.dc.b $61,$76,$72,$65,$61,$64
	.dc.b $00				
_?LC1:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$63,$6f,$75
	.dc.b $6c,$64,$20,$6e,$6f,$74,$20,$72
	.dc.b $65,$61,$64,$20,$66,$72,$6f,$6d
	.dc.b $20,$25,$73,$20,$28,$66,$69,$6c
	.dc.b $65,$20,$6e,$6f,$74,$20,$6f,$70
	.dc.b $65,$6e,$65,$64,$29,$0a
	.dc.b $00				
	.globl	___adddf3			
	.text					
	.align	2				
	.globl	_aubio_source_wavread_do	
						
_aubio_source_wavread_do:			
	link.w a6,#-44				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)	
	move.l 8(a6),a4				
	move.l 12(a6),-12(a6)			
	move.l 16(a6),-8(a6)			
						
	move.l -12(a6),a0			
	move.l (a0),-(sp)			
	move.l (a4),-(sp)			
	move.l 12(a4),-(sp)			
	pea _?LC0				
	jbsr _aubio_source_validate_input_length
	lea (16,sp),sp				
	move.l d0,-16(a6)			
						
	tst.l 24(a4)				
	jbeq _?L22				
						
	clr.l -24(a6)				
						
	tst.l d0				
	jbeq _?L24				
	lea ___adddf3,a5			
_?L23:						
						
	move.l 40(a4),-20(a6)			
	move.l -16(a6),d0			
	sub.l -24(a6),d0			
						
	move.l 28(a4),d1			
	sub.l -20(a6),d1			
	move.l d1,-28(a6)			
	cmp.l d1,d0				
	jbcc _?L25				
	move.l d0,-28(a6)			
_?L25:						
						
	tst.l -28(a6)				
	jbeq _?L32				
						
	move.l 20(a4),d5			
						
	move.l d5,-(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,-36(a6)			
	move.l a1,-32(a6)			
	move.l -24(a6),d0			
	lsl.l #3,d0				
	move.l -12(a6),a0			
	move.l 4(a0),a3				
	add.l d0,a3				
	move.l -20(a6),d3			
	lsl.l #3,d3				
	move.l -20(a6),d6			
	add.l -28(a6),d6			
	lsl.l #3,d6				
	move.l d5,d7				
	add.l d5,d7				
	add.l d7,d7				
_?L31:						
						
	clr.l (a3)+				
	clr.l (a3)+				
						
	tst.l d5				
	jbeq _?L35				
						
	move.l 60(a4),a0			
	move.l 8(a0),-40(a6)			
	move.l d7,d4				
	add.l -40(a6),d4			
	sub.l a0,a0				
	sub.l a1,a1				
	move.l a4,-44(a6)			
_?L30:						
						
	move.l -40(a6),a4			
	addq.l #4,-40(a6)			
	move.l (a4)+,a2				
						
	move.l 4(a2,d3.l),-(sp)			
	move.l (a2,d3.l),-(sp)			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,-8(a3)			
	move.l a1,-4(a3)			
						
	cmp.l d4,a4				
	jbne _?L30				
	move.l -44(a6),a4			
						
	move.l -32(a6),-(sp)			
	move.l -36(a6),-(sp)			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,-8(a3)			
	move.l d1,-4(a3)			
						
	addq.l #8,d3				
	cmp.l d6,d3				
	jbne _?L31				
_?L32:						
						
	move.l -28(a6),d0			
	add.l d0,-24(a6)			
						
	move.l -16(a6),a0			
	cmp.l -24(a6),a0			
	jbhi _?L42				
						
	move.l -20(a6),d0			
	add.l -28(a6),d0			
	move.l d0,40(a4)			
_?L24:						
						
	move.l -24(a6),-(sp)			
	move.l -12(a6),-(sp)			
	jbsr _aubio_source_pad_output		
	addq.l #8,sp				
						
	move.l -8(a6),a0			
	move.l -24(a6),(a0)			
						
	movem.l -76(a6),d3/d4/d5/d6/d7/a3/a4/a5	
	unlk a6					
	rts					
_?L35:						
						
	sub.l a0,a0				
	sub.l a1,a1				
						
	move.l -32(a6),-(sp)			
	move.l -36(a6),-(sp)			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,-8(a3)			
	move.l d1,-4(a3)			
						
	addq.l #8,d3				
	cmp.l d6,d3				
	jbne _?L31				
	jbra _?L32				
_?L42:						
						
	clr.l -4(a6)				
						
	pea -4(a6)				
	move.l a4,-(sp)				
	jbsr _aubio_source_wavread_readframe	
	addq.l #8,sp				
						
	move.l -4(a6),28(a4)			
						
	clr.l 40(a4)				
						
	tst.l 44(a4)				
	jbeq _?L23				
						
	move.l -24(a6),-(sp)			
	move.l -12(a6),-(sp)			
	jbsr _aubio_source_pad_output		
	addq.l #8,sp				
						
	move.l -8(a6),a0			
	move.l -24(a6),(a0)			
						
	movem.l -76(a6),d3/d4/d5/d6/d7/a3/a4/a5	
	unlk a6					
	rts					
_?L22:						
						
	move.l 12(a4),16(a6)			
	move.l #_?LC1,12(a6)			
	clr.l 8(a6)				
						
	movem.l -76(a6),d3/d4/d5/d6/d7/a3/a4/a5	
	unlk a6					
						
	jbra _aubio_log				
						
	.align	2				
	.globl	_aubio_source_wavread_do_multi	
						
_aubio_source_wavread_do_multi:			
	lea (-20,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 60(sp),a5			
	move.l 64(sp),a4			
	move.l 68(sp),48(sp)			
						
	move.l (a4),-(sp)			
	move.l (a5),-(sp)			
	move.l 12(a5),-(sp)			
	pea _?LC0				
	jbsr _aubio_source_validate_input_length
	lea (16,sp),sp				
	move.l d0,44(sp)			
						
	move.l 4(a4),-(sp)			
	move.l 20(a5),-(sp)			
	move.l 12(a5),-(sp)			
	pea _?LC0				
	jbsr _aubio_source_validate_input_channels
	lea (16,sp),sp				
	move.l d0,d3				
						
	tst.l 24(a5)				
	jbeq _?L44				
						
	moveq #0,d6				
						
	tst.l 44(sp)				
	jbeq _?L46				
_?L45:						
						
	move.l 40(a5),d7			
	move.l 44(sp),d0			
	sub.l d6,d0				
						
	move.l 28(a5),d5			
	sub.l d7,d5				
	cmp.l d5,d0				
	jbcc _?L47				
	move.l d0,d5				
_?L47:						
						
	tst.l d3				
	jbeq _?L48				
	move.l d6,d4				
	lsl.l #3,d4				
	move.l d5,d2				
	lsl.l #3,d2				
	moveq #0,d0				
						
	moveq #0,d1				
						
	tst.l d5				
	jbeq _?L63				
	move.l 60(a5),a3			
	move.l 8(a4),a2				
_?L51:						
						
	move.l 8(a3),a0				
	move.l (a0,d0.l),a0			
	move.l (a2,d0.l),a1			
	add.l d4,a1				
	lea (a0,d2.l),a6			
	move.l d0,40(sp)			
	move.l d1,36(sp)			
_?L50:						
						
	move.l (a0)+,d0				
	move.l (a0)+,d1				
	move.l d0,(a1)+				
	move.l d1,(a1)+				
						
	cmp.l a6,a0				
	jbne _?L50				
						
	move.l 40(sp),d0			
	move.l 36(sp),d1			
	addq.l #1,d1				
						
	addq.l #4,d0				
	cmp.l d1,d3				
	jbne _?L51				
_?L48:						
						
	add.l d5,d6				
						
	cmp.l 44(sp),d6				
	jbcs _?L67				
						
	add.l d5,d7				
	move.l d7,40(a5)			
_?L46:						
						
	move.l d6,-(sp)				
	move.l 20(a5),-(sp)			
	move.l a4,-(sp)				
	jbsr _aubio_source_pad_multi_output	
	lea (12,sp),sp				
						
	move.l 48(sp),a0			
	move.l d6,(a0)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (20,sp),sp				
	rts					
_?L63:						
						
	addq.l #1,d1				
						
	cmp.l d3,d1				
	jbeq _?L48				
						
	addq.l #1,d1				
						
	cmp.l d3,d1				
	jbne _?L63				
	jbra _?L48				
_?L67:						
						
	clr.l 52(sp)				
						
	pea 52(sp)				
	move.l a5,-(sp)				
	jbsr _aubio_source_wavread_readframe	
	addq.l #8,sp				
						
	move.l 52(sp),28(a5)			
						
	clr.l 40(a5)				
						
	tst.l 44(a5)				
	jbeq _?L45				
						
	move.l d6,-(sp)				
	move.l 20(a5),-(sp)			
	move.l a4,-(sp)				
	jbsr _aubio_source_pad_multi_output	
	lea (12,sp),sp				
						
	move.l 48(sp),a0			
	move.l d6,(a0)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (20,sp),sp				
	rts					
_?L44:						
						
	move.l 12(a5),68(sp)			
	move.l #_?LC1,64(sp)			
	clr.l 60(sp)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (20,sp),sp				
						
	jbra _aubio_log				
						
	.align	2				
	.globl	_aubio_source_wavread_get_samplerate
						
_aubio_source_wavread_get_samplerate:		
						
	move.l 4(sp),a0				
	move.l 4(a0),d0				
	rts					
						
	.align	2				
	.globl	_aubio_source_wavread_get_channels
						
_aubio_source_wavread_get_channels:		
						
	move.l 4(sp),a0				
	move.l 20(a0),d0			
	rts					
						
	.data					
_?LC2:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$63,$6f,$75
	.dc.b $6c,$64,$20,$6e,$6f,$74,$20,$73
	.dc.b $65,$65,$6b,$20,$25,$73,$20,$28
	.dc.b $66,$69,$6c,$65,$20,$6e,$6f,$74
	.dc.b $20,$6f,$70,$65,$6e,$65,$64,$3f
	.dc.b $29,$0a
	.dc.b $00				
_?LC3:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$63,$6f,$75
	.dc.b $6c,$64,$20,$6e,$6f,$74,$20,$73
	.dc.b $65,$65,$6b,$20,$25,$73,$20,$61
	.dc.b $74,$20,$25,$64,$20,$28,$73,$65
	.dc.b $65,$6b,$69,$6e,$67,$20,$70,$6f
	.dc.b $73,$69,$74,$69,$6f,$6e,$20,$73
	.dc.b $68,$6f,$75,$6c,$64,$20,$62,$65
	.dc.b $20,$3e,$3d,$20,$30,$29,$0a
	.dc.b $00				
	.globl	___mulsi3			
_?LC4:						
	.dc.b $65,$72,$72,$6e,$6f,$3d,$25,$64
	.dc.b $00				
_?LC5:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$63,$6f,$75
	.dc.b $6c,$64,$20,$6e,$6f,$74,$20,$73
	.dc.b $65,$65,$6b,$20,$25,$73,$20,$61
	.dc.b $74,$20,$25,$64,$20,$28,$25,$73
	.dc.b $29,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_source_wavread_seek	
						
_aubio_source_wavread_seek:			
	lea (-256,sp),sp			
	movem.l d3/d4/a3,-(sp)			
	move.l 272(sp),a3			
	move.l 276(sp),d3			
						
	move.l 24(a3),d4			
						
	jbeq _?L80				
						
	tst.l d3				
	jblt _?L81				
						
	clr.l -(sp)				
						
	move.l 32(a3),-(sp)			
	move.l d3,-(sp)				
	jbsr ___mulsi3				
	addq.l #8,sp				
						
	add.l 52(a3),d0				
	move.l d0,-(sp)				
	move.l d4,-(sp)				
	jbsr _fseek				
	lea (12,sp),sp				
						
	tst.l d0				
	jbne _?L82				
						
	clr.l 44(a3)				
						
	clr.l 40(a3)				
						
	moveq #0,d0				
						
	movem.l (sp)+,d3/d4/a3			
	lea (256,sp),sp				
	rts					
_?L81:						
						
	move.l d3,-(sp)				
	move.l 12(a3),-(sp)			
	pea _?LC3				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	moveq #1,d0				
_?L83:						
						
	movem.l (sp)+,d3/d4/a3			
	lea (256,sp),sp				
	rts					
_?L82:						
						
	move.l _errno,d0			
	move.l d0,-(sp)				
	pea _?LC4				
	moveq #20,d4				
	add.l sp,d4				
	move.l d4,-(sp)				
	jbsr _sprintf				
	addq.l #8,sp				
	move.l d4,(sp)				
	move.l d3,-(sp)				
	move.l 12(a3),-(sp)			
	pea _?LC5				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (20,sp),sp				
						
	moveq #1,d0				
	jbra _?L83				
_?L80:						
						
	move.l d3,-(sp)				
	move.l 12(a3),-(sp)			
	pea _?LC2				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	moveq #1,d0				
	jbra _?L83				
						
	.align	2				
	.globl	_aubio_source_wavread_get_duration
						
_aubio_source_wavread_get_duration:		
	move.l 4(sp),a0				
						
	cmp.w #0,a0				
	jbeq _?L86				
						
	move.l 48(a0),d0			
						
	rts					
_?L86:						
						
	moveq #0,d0				
						
	rts					
						
	.data					
_?LC6:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$63,$6f,$75
	.dc.b $6c,$64,$20,$6e,$6f,$74,$20,$63
	.dc.b $6c,$6f,$73,$65,$20,$25,$73,$20
	.dc.b $28,$25,$73,$29,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_source_wavread_close	
						
_aubio_source_wavread_close:			
	lea (-256,sp),sp			
	move.l a3,-(sp)				
	move.l d3,-(sp)				
	move.l 268(sp),a3			
						
	move.l 24(a3),d0			
						
	jbeq _?L90				
						
	move.l d0,-(sp)				
	jbsr _fclose				
	addq.l #4,sp				
						
	tst.l d0				
	jbne _?L98				
						
	clr.l 24(a3)				
_?L90:						
						
	moveq #0,d0				
						
	move.l (sp)+,d3				
	move.l (sp)+,a3				
	lea (256,sp),sp				
	rts					
_?L98:						
						
	move.l _errno,d0			
	move.l d0,-(sp)				
	pea _?LC4				
	moveq #16,d3				
	add.l sp,d3				
	move.l d3,-(sp)				
	jbsr _sprintf				
	addq.l #8,sp				
	move.l d3,(sp)				
	move.l 12(a3),-(sp)			
	pea _?LC6				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
	moveq #1,d0				
						
	move.l (sp)+,d3				
	move.l (sp)+,a3				
	lea (256,sp),sp				
	rts					
						
	.align	2				
	.globl	_del_aubio_source_wavread	
						
_del_aubio_source_wavread:			
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l a3,-(sp)				
	jbsr _aubio_source_wavread_close	
	addq.l #4,sp				
						
	move.l 56(a3),d0			
						
	jbeq _?L100				
						
	move.l d0,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
_?L100:						
						
	move.l 60(a3),d0			
						
	jbeq _?L101				
						
	move.l d0,-(sp)				
	jbsr _del_fmat				
	addq.l #4,sp				
_?L101:						
						
	move.l 12(a3),d0			
						
	jbeq _?L102				
						
	move.l d0,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
_?L102:						
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
						
	.data					
_?LC7:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$41,$62,$6f
	.dc.b $72,$74,$65,$64,$20,$6f,$70,$65
	.dc.b $6e,$69,$6e,$67,$20,$6e,$75,$6c
	.dc.b $6c,$20,$70,$61,$74,$68,$0a
	.dc.b $00				
_?LC8:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$43,$61,$6e
	.dc.b $20,$6e,$6f,$74,$20,$6f,$70,$65
	.dc.b $6e,$20,$25,$73,$20,$77,$69,$74
	.dc.b $68,$20,$73,$61,$6d,$70,$6c,$65
	.dc.b $72,$61,$74,$65,$20,$25,$64,$0a
	.dc.b $00				
_?LC9:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$43,$61,$6e
	.dc.b $20,$6e,$6f,$74,$20,$6f,$70,$65
	.dc.b $6e,$20,$25,$73,$20,$77,$69,$74
	.dc.b $68,$20,$68,$6f,$70,$5f,$73,$69
	.dc.b $7a,$65,$20,$25,$64,$0a
	.dc.b $00				
_?LC10:						
	.dc.b $72,$62
	.dc.b $00				
_?LC11:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$46,$61,$69
	.dc.b $6c,$65,$64,$20,$6f,$70,$65,$6e
	.dc.b $69,$6e,$67,$20,$25,$73,$20,$28
	.dc.b $25,$73,$29,$0a
	.dc.b $00				
_?LC12:						
	.dc.b $52,$49,$46,$46
	.dc.b $00				
_?LC13:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$46,$61,$69
	.dc.b $6c,$65,$64,$20,$6f,$70,$65,$6e
	.dc.b $69,$6e,$67,$20,$25,$73,$20,$28
	.dc.b $63,$6f,$75,$6c,$64,$20,$6e,$6f
	.dc.b $74,$20,$66,$69,$6e,$64,$20,$52
	.dc.b $49,$46,$46,$20,$68,$65,$61,$64
	.dc.b $65,$72,$29,$0a
	.dc.b $00				
_?LC14:						
	.dc.b $57,$41,$56,$45
	.dc.b $00				
_?LC15:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$46,$61,$69
	.dc.b $6c,$65,$64,$20,$6f,$70,$65,$6e
	.dc.b $69,$6e,$67,$20,$25,$73,$20,$28
	.dc.b $77,$72,$6f,$6e,$67,$20,$66,$6f
	.dc.b $72,$6d,$61,$74,$20,$69,$6e,$20
	.dc.b $52,$49,$46,$46,$20,$68,$65,$61
	.dc.b $64,$65,$72,$29,$0a
	.dc.b $00				
_?LC16:						
	.dc.b $4a,$55,$4e,$4b
	.dc.b $00				
_?LC17:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$46,$61,$69
	.dc.b $6c,$65,$64,$20,$6f,$70,$65,$6e
	.dc.b $69,$6e,$67,$20,$25,$73,$20,$28
	.dc.b $63,$6f,$75,$6c,$64,$20,$6e,$6f
	.dc.b $74,$20,$73,$65,$65,$6b,$20,$70
	.dc.b $61,$73,$74,$20,$4a,$55,$4e,$4b
	.dc.b $20,$43,$68,$75,$6e,$6b,$3a,$20
	.dc.b $25,$73,$29,$0a
	.dc.b $00				
_?LC18:						
	.dc.b $66,$6d,$74,$20
	.dc.b $00				
_?LC19:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$46,$61,$69
	.dc.b $6c,$65,$64,$20,$6f,$70,$65,$6e
	.dc.b $69,$6e,$67,$20,$25,$73,$20,$28
	.dc.b $63,$6f,$75,$6c,$64,$20,$6e,$6f
	.dc.b $74,$20,$66,$69,$6e,$64,$20,$27
	.dc.b $66,$6d,$74,$20,$27,$20,$69,$6e
	.dc.b $20,$52,$49,$46,$46,$20,$68,$65
	.dc.b $61,$64,$65,$72,$29,$0a
	.dc.b $00				
_?LC20:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$46,$61,$69
	.dc.b $6c,$65,$64,$20,$6f,$70,$65,$6e
	.dc.b $69,$6e,$67,$20,$25,$73,$20,$28
	.dc.b $6e,$6f,$74,$20,$65,$6e,$63,$6f
	.dc.b $64,$65,$64,$20,$77,$69,$74,$68
	.dc.b $20,$50,$43,$4d,$29,$0a
	.dc.b $00				
_?LC21:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$46,$61,$69
	.dc.b $6c,$65,$64,$20,$6f,$70,$65,$6e
	.dc.b $69,$6e,$67,$20,$25,$73,$20,$28
	.dc.b $53,$75,$62,$63,$68,$75,$6e,$6b
	.dc.b $31,$53,$69,$7a,$65,$20,$73,$68
	.dc.b $6f,$75,$6c,$64,$20,$62,$65,$20
	.dc.b $30,$29,$0a
	.dc.b $00				
_?LC22:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$46,$61,$69
	.dc.b $6c,$65,$64,$20,$6f,$70,$65,$6e
	.dc.b $69,$6e,$67,$20,$25,$73,$20,$28
	.dc.b $41,$75,$64,$69,$6f,$46,$6f,$72
	.dc.b $6d,$61,$74,$20,$73,$68,$6f,$75
	.dc.b $6c,$64,$20,$62,$65,$20,$50,$43
	.dc.b $4d,$29,$0a
	.dc.b $00				
_?LC23:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$46,$61,$69
	.dc.b $6c,$65,$64,$20,$6f,$70,$65,$6e
	.dc.b $69,$6e,$67,$20,$25,$73,$20,$28
	.dc.b $6e,$75,$6d,$62,$65,$72,$20,$6f
	.dc.b $66,$20,$63,$68,$61,$6e,$6e,$65
	.dc.b $6c,$73,$20,$63,$61,$6e,$20,$6e
	.dc.b $6f,$74,$20,$62,$65,$20,$30,$29
	.dc.b $0a
	.dc.b $00				
_?LC24:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$46,$61,$69
	.dc.b $6c,$65,$64,$20,$6f,$70,$65,$6e
	.dc.b $69,$6e,$67,$20,$25,$73,$20,$28
	.dc.b $73,$61,$6d,$70,$6c,$65,$72,$61
	.dc.b $74,$65,$20,$63,$61,$6e,$20,$6e
	.dc.b $6f,$74,$20,$62,$65,$20,$3c,$3d
	.dc.b $20,$30,$29,$0a
	.dc.b $00				
_?LC25:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$46,$61,$69
	.dc.b $6c,$65,$64,$20,$6f,$70,$65,$6e
	.dc.b $69,$6e,$67,$20,$25,$73,$20,$28
	.dc.b $62,$79,$74,$65,$72,$61,$74,$65
	.dc.b $20,$63,$61,$6e,$20,$6e,$6f,$74
	.dc.b $20,$62,$65,$20,$30,$29,$0a
	.dc.b $00				
_?LC26:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$46,$61,$69
	.dc.b $6c,$65,$64,$20,$6f,$70,$65,$6e
	.dc.b $69,$6e,$67,$20,$25,$73,$20,$28
	.dc.b $62,$69,$74,$73,$70,$65,$72,$73
	.dc.b $61,$6d,$70,$6c,$65,$20,$63,$61
	.dc.b $6e,$20,$6e,$6f,$74,$20,$62,$65
	.dc.b $20,$30,$29,$0a
	.dc.b $00				
_?LC27:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$46,$61,$69
	.dc.b $6c,$65,$64,$20,$6f,$70,$65,$6e
	.dc.b $69,$6e,$67,$20,$25,$73,$20,$28
	.dc.b $77,$72,$6f,$6e,$67,$20,$62,$79
	.dc.b $74,$65,$72,$61,$74,$65,$29,$0a
	.dc.b $00				
_?LC28:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$46,$61,$69
	.dc.b $6c,$65,$64,$20,$6f,$70,$65,$6e
	.dc.b $69,$6e,$67,$20,$25,$73,$20,$28
	.dc.b $77,$72,$6f,$6e,$67,$20,$62,$6c
	.dc.b $6f,$63,$6b,$61,$6c,$69,$67,$6e
	.dc.b $29,$0a
	.dc.b $00				
_?LC29:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$63,$61,$6e
	.dc.b $20,$6e,$6f,$74,$20,$72,$65,$73
	.dc.b $61,$6d,$70,$6c,$65,$20,$25,$73
	.dc.b $20,$66,$72,$6f,$6d,$20,$25,$64
	.dc.b $20,$74,$6f,$20,$25,$64,$48,$7a
	.dc.b $0a
	.dc.b $00				
_?LC30:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$6e,$6f,$20
	.dc.b $64,$61,$74,$61,$20,$52,$49,$46
	.dc.b $46,$20,$68,$65,$61,$64,$65,$72
	.dc.b $20,$66,$6f,$75,$6e,$64,$20,$69
	.dc.b $6e,$20,$25,$73,$0a
	.dc.b $00				
_?LC31:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$63,$6f,$75
	.dc.b $6c,$64,$20,$6e,$6f,$74,$20,$73
	.dc.b $65,$65,$6b,$20,$70,$61,$73,$74
	.dc.b $20,$75,$6e,$6b,$6e,$6f,$77,$6e
	.dc.b $20,$63,$68,$75,$6e,$6b,$20,$69
	.dc.b $6e,$20,$25,$73,$20,$28,$25,$73
	.dc.b $29,$0a
	.dc.b $00				
_?LC32:						
	.dc.b $64,$61,$74,$61
	.dc.b $00				
_?LC33:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$77,$61,$76,$72
	.dc.b $65,$61,$64,$3a,$20,$73,$68,$6f
	.dc.b $72,$74,$20,$72,$65,$61,$64,$20
	.dc.b $28,$25,$7a,$64,$20,$69,$6e,$73
	.dc.b $74,$65,$61,$64,$20,$6f,$66,$20
	.dc.b $25,$7a,$64,$29,$20,$69,$6e,$20
	.dc.b $25,$73,$0a
	.dc.b $00				
	.globl	___udivsi3			
	.text					
	.align	2				
	.globl	_new_aubio_source_wavread	
						
_new_aubio_source_wavread:			
	lea (-316,sp),sp			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 356(sp),d4			
	move.l 360(sp),d7			
	move.l 364(sp),d6			
						
	pea 64.w				
	lea _MALLOC,a4				
	jbsr (a4)				
	addq.l #4,sp				
	move.l d0,a3				
						
	moveq #91,d3				
	add.l sp,d3				
	move.l d3,a0				
	clr.b (a0)+				
	clr.b (a0)+				
	clr.b (a0)+				
	clr.b (a0)+				
	clr.b (a0)				
						
	tst.l d4				
	jbeq _?L159				
						
	tst.l d7				
	jblt _?L160				
						
	tst.l d6				
	jble _?L161				
						
	move.l d4,-(sp)				
	lea _strlen,a5				
	jbsr (a5)				
	addq.l #4,sp				
	move.l d0,a0				
	pea 1(a0)				
	jbsr (a4)				
	move.l d0,d5				
						
	move.l d0,12(a3)			
						
	move.l d4,(sp)				
	jbsr (a5)				
	addq.l #4,sp				
						
	move.l d0,a0				
	pea 1(a0)				
	move.l d4,-(sp)				
	move.l d5,-(sp)				
	jbsr _strncpy				
	lea (12,sp),sp				
						
	move.l d7,4(a3)				
						
	move.l d6,(a3)				
						
	pea _?LC10				
	move.l d4,-(sp)				
	jbsr _fopen				
	addq.l #8,sp				
						
	move.l d0,24(a3)			
						
	jbeq _?L162				
						
	move.l d0,-(sp)				
	pea 4.w					
	pea 1.w					
	move.l d3,-(sp)				
	lea _fread,a4				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d5				
						
	clr.b 95(sp)				
						
	pea _?LC12				
	move.l d3,-(sp)				
	lea _strcmp,a5				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L163				
						
	move.l 24(a3),-(sp)			
	pea 4.w					
	pea 1.w					
	move.l d3,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
						
	move.l 24(a3),-(sp)			
	pea 4.w					
	pea 1.w					
	move.l d3,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	add.l d0,d4				
	add.l d5,d4				
						
	clr.b 95(sp)				
						
	pea _?LC14				
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L164				
						
	move.l 24(a3),-(sp)			
	pea 4.w					
	pea 1.w					
	move.l d3,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	add.l d0,d4				
						
	clr.b 95(sp)				
						
	pea _?LC16				
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L165				
						
	move.w #44,a6				
_?L122:						
						
	pea _?LC18				
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L166				
						
	move.l 24(a3),-(sp)			
	pea 4.w					
	pea 1.w					
	move.l d3,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,50(sp)			
	move.l d3,54(sp)			
	move.l d3,a1				
	moveq #0,d0				
						
	sub.l a0,a0				
_?L126:						
						
	moveq #0,d1				
	move.b (a1)+,d1				
						
	lsl.l d0,d1				
						
	add.l d1,a0				
						
	addq.l #8,d0				
	moveq #32,d1				
	cmp.l d0,d1				
	jbne _?L126				
						
	moveq #16,d2				
	cmp.l a0,d2				
	jbne _?L167				
						
	move.b 92(sp),d0			
	or.b 93(sp),d0				
	or.b 94(sp),d0				
	jbne _?L168				
						
	move.l 24(a3),-(sp)			
	pea 2.w					
	pea 1.w					
	move.l d3,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,62(sp)			
						
	cmp.b #1,91(sp)				
	jbne _?L129				
						
	tst.b 92(sp)				
	jbne _?L129				
						
	move.l 24(a3),-(sp)			
	pea 2.w					
	pea 1.w					
	move.l d3,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,70(sp)			
	moveq #0,d0				
	move.b 91(sp),d0			
	lsl.l #8,d0				
	or.b 92(sp),d0				
	ror.w #8,d0				
	move.w d0,46(sp)			
	moveq #0,d1				
	move.w d0,d1				
	move.l d1,58(sp)			
						
	move.l 24(a3),-(sp)			
	pea 4.w					
	pea 1.w					
	move.l d3,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,74(sp)			
	move.l d3,a1				
	moveq #0,d0				
						
	moveq #0,d5				
_?L131:						
						
	moveq #0,d1				
	move.b (a1)+,d1				
						
	lsl.l d0,d1				
						
	add.l d1,d5				
						
	addq.l #8,d0				
	moveq #32,d2				
	cmp.l d0,d2				
	jbne _?L131				
						
	move.l 24(a3),-(sp)			
	pea 4.w					
	pea 1.w					
	move.l d3,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,78(sp)			
	move.l d3,a1				
	moveq #0,d0				
						
	moveq #0,d2				
_?L132:						
						
	moveq #0,d1				
	move.b (a1)+,d1				
						
	lsl.l d0,d1				
						
	add.l d1,d2				
						
	addq.l #8,d0				
	moveq #32,d1				
	cmp.l d0,d1				
	jbne _?L132				
						
	move.l 24(a3),-(sp)			
	pea 2.w					
	pea 1.w					
	move.l d3,-(sp)				
	move.l d2,54(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,82(sp)			
	moveq #0,d6				
	move.b 91(sp),d6			
	lsl.l #8,d6				
	or.b 92(sp),d6				
						
	move.l 24(a3),-(sp)			
	pea 2.w					
	pea 1.w					
	move.l d3,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,86(sp)			
	moveq #0,d1				
	move.b 91(sp),d1			
	lsl.l #8,d1				
	or.b 92(sp),d1				
	ror.w #8,d1				
	moveq #0,d0				
	move.w d1,d0				
	move.l d0,66(sp)			
						
	move.l 38(sp),d2			
	tst.l 58(sp)				
	jbeq _?L169				
						
	tst.l d5				
	jble _?L170				
						
	tst.l d2				
	jbeq _?L171				
						
	tst.l 66(sp)				
	jbeq _?L172				
	mulu.w 46(sp),d1			
						
	lsl.l #3,d2				
						
	move.l d5,-(sp)				
	move.l d1,-(sp)				
	move.l d1,50(sp)			
	move.l d2,46(sp)			
	jbsr ___mulsi3				
	addq.l #8,sp				
						
	move.l 42(sp),d1			
	move.l 38(sp),d2			
	cmp.l d2,d0				
	jbne _?L173				
	ror.w #8,d6				
	and.l #65535,d6				
	move.l d6,46(sp)			
						
	move.l d6,d0				
	lsl.l #3,d0				
						
	cmp.l d1,d0				
	jbne _?L174				
						
	move.l d5,16(a3)			
						
	move.l 58(sp),20(a3)			
						
	tst.l d7				
	jbne _?L139				
						
	move.l d5,4(a3)				
_?L140:						
						
	move.l 24(a3),-(sp)			
	pea 4.w					
	pea 1.w					
	move.l d3,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	add.l 50(sp),d4				
						
	add.l 62(sp),d4				
						
	add.l 70(sp),d4				
						
	add.l 74(sp),d4				
						
	add.l 78(sp),d4				
						
	add.l 82(sp),d4				
						
	add.l 86(sp),d4				
						
	add.l d0,d4				
						
	move.l #_feof,d5			
						
	move.l #_ferror,d6			
_?L141:						
						
	clr.b 95(sp)				
						
	pea _?LC32				
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l 24(a3),d1			
						
	tst.l d0				
	jbeq _?L175				
						
	move.l d1,-(sp)				
	move.l d5,a0				
	jbsr (a0)				
	addq.l #4,sp				
						
	tst.l d0				
	jbne _?L143				
						
	move.l 24(a3),-(sp)			
	move.l d6,a0				
	jbsr (a0)				
	addq.l #4,sp				
						
	tst.l d0				
	jbne _?L143				
						
	move.l 24(a3),-(sp)			
	pea 4.w					
	pea 1.w					
	move.l d3,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	clr.b 95(sp)				
	move.l d3,a1				
	moveq #0,d1				
						
	sub.l a0,a0				
_?L144:						
						
	moveq #0,d2				
	move.b (a1)+,d2				
						
	lsl.l d1,d2				
						
	add.l d2,a0				
						
	addq.l #8,d1				
	moveq #32,d2				
	cmp.l d1,d2				
	jbne _?L144				
						
	move.l d0,d7				
	add.l a0,d7				
						
	add.l d7,d4				
						
	clr.l -(sp)				
	move.l d4,-(sp)				
	move.l 24(a3),-(sp)			
	jbsr _fseek				
	lea (12,sp),sp				
						
	tst.l d0				
	jbne _?L176				
						
	lea 4(a6,d7.l),a6			
						
	move.l 24(a3),-(sp)			
	pea 4.w					
	pea 1.w					
	move.l d3,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	add.l d0,d4				
	jbra _?L141				
_?L164:						
						
	move.l 12(a3),-(sp)			
	pea _?LC15				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
_?L116:						
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
_?L114:						
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (316,sp),sp				
	rts					
_?L129:						
						
	move.l 12(a3),-(sp)			
	pea _?LC22				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L165:						
						
	move.l 24(a3),-(sp)			
	pea 4.w					
	pea 1.w					
	move.l d3,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	clr.b 95(sp)				
	move.l d3,a1				
	moveq #0,d1				
						
	sub.l a0,a0				
_?L123:						
						
	moveq #0,d2				
	move.b (a1)+,d2				
						
	lsl.l d1,d2				
						
	add.l d2,a0				
						
	addq.l #8,d1				
	moveq #32,d2				
	cmp.l d1,d2				
	jbne _?L123				
						
	lea (a0,d0.l),a6			
						
	add.l a6,d4				
						
	clr.l -(sp)				
	move.l d4,-(sp)				
	move.l 24(a3),-(sp)			
	jbsr _fseek				
	lea (12,sp),sp				
						
	tst.l d0				
	jbne _?L177				
						
	lea (48,a6),a6				
						
	move.l 24(a3),-(sp)			
	pea 4.w					
	pea 1.w					
	move.l d3,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	add.l d0,d4				
						
	clr.b 95(sp)				
	jbra _?L122				
_?L163:						
						
	move.l 12(a3),-(sp)			
	pea _?LC13				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L168:						
						
	move.l 12(a3),-(sp)			
	pea _?LC21				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L161:						
						
	move.l d6,-(sp)				
	move.l d4,-(sp)				
	pea _?LC9				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L166:						
						
	move.l 12(a3),-(sp)			
	pea _?LC19				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L162:						
						
	move.l _errno,d0			
	move.l d0,-(sp)				
	pea _?LC4				
	moveq #104,d3				
	add.l sp,d3				
	move.l d3,-(sp)				
	jbsr _sprintf				
	addq.l #8,sp				
	move.l d3,(sp)				
	move.l 12(a3),-(sp)			
	pea _?LC11				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L160:						
						
	move.l d7,-(sp)				
	move.l d4,-(sp)				
	pea _?LC8				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L167:						
						
	move.l 12(a3),-(sp)			
	pea _?LC20				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L139:						
						
	cmp.l d7,d5				
	jbeq _?L140				
						
	move.l d7,-(sp)				
	move.l d5,-(sp)				
	move.l 12(a3),-(sp)			
	pea _?LC29				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (20,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L159:						
						
	pea _?LC7				
	clr.l -(sp)				
	jbsr _aubio_log				
	addq.l #8,sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L177:						
						
	move.l _errno,d0			
	move.l d0,-(sp)				
	pea _?LC4				
	moveq #104,d3				
	add.l sp,d3				
	move.l d3,-(sp)				
	jbsr _sprintf				
	addq.l #8,sp				
	move.l d3,(sp)				
	move.l 12(a3),-(sp)			
	pea _?LC17				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L143:						
						
	move.l 12(a3),-(sp)			
	pea _?LC30				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L175:						
						
	move.l d1,-(sp)				
	pea 4.w					
	pea 1.w					
	move.l d3,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	add.l d0,d4				
	moveq #0,d0				
						
	moveq #0,d3				
	move.l 54(sp),a0			
_?L147:						
						
	moveq #0,d1				
	move.b (a0)+,d1				
						
	lsl.l d0,d1				
						
	add.l d1,d3				
						
	addq.l #8,d0				
	moveq #32,d1				
	cmp.l d0,d1				
	jbne _?L147				
						
	cmp.l a6,d4				
	jbne _?L178				
						
	move.l a6,52(a3)			
						
	pea 1024.w				
	move.l 20(a3),-(sp)			
	jbsr _new_fmat				
	addq.l #8,sp				
						
	move.l d0,60(a3)			
						
	move.l 46(sp),32(a3)			
						
	move.l 66(sp),36(a3)			
						
	move.l 46(sp),-(sp)			
	move.l d3,-(sp)				
	jbsr ___udivsi3				
	addq.l #8,sp				
						
	move.l d0,48(a3)			
						
	pea 1024.w				
	move.l 50(sp),-(sp)			
	jbsr _calloc				
	addq.l #8,sp				
						
	move.l d0,56(a3)			
						
	clr.l 40(a3)				
						
	clr.l 28(a3)				
						
	clr.l 44(a3)				
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (316,sp),sp				
	rts					
_?L173:						
						
	move.l 12(a3),-(sp)			
	pea _?LC27				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L176:						
						
	move.l _errno,d0			
	move.l d0,-(sp)				
	pea _?LC4				
	moveq #104,d3				
	add.l sp,d3				
	move.l d3,-(sp)				
	jbsr _sprintf				
	addq.l #8,sp				
	move.l d3,(sp)				
	move.l 12(a3),-(sp)			
	pea _?LC31				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L174:						
						
	move.l 12(a3),-(sp)			
	pea _?LC28				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L169:						
						
	move.l 12(a3),-(sp)			
	pea _?LC23				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L171:						
						
	move.l 12(a3),-(sp)			
	pea _?LC25				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L172:						
						
	move.l 12(a3),-(sp)			
	pea _?LC26				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L170:						
						
	move.l 12(a3),-(sp)			
	pea _?LC24				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
_?L178:						
						
	move.l 12(a3),-(sp)			
	move.l a6,-(sp)				
	move.l d4,-(sp)				
	pea _?LC33				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (20,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_wavread		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L114				
						
						
