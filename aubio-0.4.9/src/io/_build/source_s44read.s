* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"source_s44read.c"		
						
						
						
						
						
	.text					
	.globl	___floatunsidf			
	.globl	___divdf3			
	.globl	___floatsidf			
	.globl	___muldf3			
	.align	2				
	.globl	_aubio_source_s44read_readframe	
						
_aubio_source_s44read_readframe:		
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
						
	moveq #0,d0				
						
	moveq #0,d1				
						
	cmp.w #0,a6				
	jbeq _?L8				
_?L4:						
						
	lsl.l #8,d0				
						
	moveq #0,d2				
	move.b (a5)+,d2				
						
	add.l d2,d0				
						
	addq.l #8,d1				
						
	cmp.l a6,d1				
	jbcs _?L4				
						
	moveq #8,d1				
	cmp.l a6,d1				
	jbeq _?L20				
						
	move.l d0,d1				
_?L8:						
						
	cmp.l d0,d5				
	jbhi _?L6				
						
	move.l d0,d1				
	sub.l 40(sp),d1				
_?L6:						
						
	move.l (a4)+,a3				
						
	move.l d1,-(sp)				
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
						
	move.l d0,d1				
	sub.l d5,d1				
						
	move.l (a4)+,a3				
						
	move.l d1,-(sp)				
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
	.dc.b $73,$6f,$75,$72,$63,$65,$5f,$73
	.dc.b $34,$34,$72,$65,$61,$64
	.dc.b $00				
_?LC1:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$73,$34,$34,$72
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
	.globl	_aubio_source_s44read_do	
						
_aubio_source_s44read_do:			
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
	jbsr _aubio_source_s44read_readframe	
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
	.globl	_aubio_source_s44read_do_multi	
						
_aubio_source_s44read_do_multi:			
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
	jbsr _aubio_source_s44read_readframe	
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
	.globl	_aubio_source_s44read_get_samplerate
						
_aubio_source_s44read_get_samplerate:		
						
	move.l 4(sp),a0				
	move.l 4(a0),d0				
	rts					
						
	.align	2				
	.globl	_aubio_source_s44read_get_channels
						
_aubio_source_s44read_get_channels:		
						
	move.l 4(sp),a0				
	move.l 20(a0),d0			
	rts					
						
	.data					
_?LC2:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$73,$34,$34,$72
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
	.dc.b $72,$63,$65,$5f,$73,$34,$34,$72
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
	.dc.b $72,$63,$65,$5f,$73,$34,$34,$72
	.dc.b $65,$61,$64,$3a,$20,$63,$6f,$75
	.dc.b $6c,$64,$20,$6e,$6f,$74,$20,$73
	.dc.b $65,$65,$6b,$20,$25,$73,$20,$61
	.dc.b $74,$20,$25,$64,$20,$28,$25,$73
	.dc.b $29,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_source_s44read_seek	
						
_aubio_source_s44read_seek:			
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
	.globl	_aubio_source_s44read_get_duration
						
_aubio_source_s44read_get_duration:		
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
	.dc.b $72,$63,$65,$5f,$73,$34,$34,$72
	.dc.b $65,$61,$64,$3a,$20,$63,$6f,$75
	.dc.b $6c,$64,$20,$6e,$6f,$74,$20,$63
	.dc.b $6c,$6f,$73,$65,$20,$25,$73,$20
	.dc.b $28,$25,$73,$29,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_source_s44read_close	
						
_aubio_source_s44read_close:			
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
	.globl	_del_aubio_source_s44read	
						
_del_aubio_source_s44read:			
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l a3,-(sp)				
	jbsr _aubio_source_s44read_close	
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
	.dc.b $72,$63,$65,$5f,$73,$34,$34,$72
	.dc.b $65,$61,$64,$3a,$20,$41,$62,$6f
	.dc.b $72,$74,$65,$64,$20,$6f,$70,$65
	.dc.b $6e,$69,$6e,$67,$20,$6e,$75,$6c
	.dc.b $6c,$20,$70,$61,$74,$68,$0a
	.dc.b $00				
_?LC8:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$73,$34,$34,$72
	.dc.b $65,$61,$64,$3a,$20,$43,$61,$6e
	.dc.b $20,$6e,$6f,$74,$20,$6f,$70,$65
	.dc.b $6e,$20,$25,$73,$20,$77,$69,$74
	.dc.b $68,$20,$73,$61,$6d,$70,$6c,$65
	.dc.b $72,$61,$74,$65,$20,$25,$64,$0a
	.dc.b $00				
_?LC9:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$73,$34,$34,$72
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
	.dc.b $72,$63,$65,$5f,$73,$34,$34,$72
	.dc.b $65,$61,$64,$3a,$20,$46,$61,$69
	.dc.b $6c,$65,$64,$20,$6f,$70,$65,$6e
	.dc.b $69,$6e,$67,$20,$25,$73,$20,$28
	.dc.b $25,$73,$29,$0a
	.dc.b $00				
_?LC12:						
	.dc.b $33,$32
	.dc.b $00				
_?LC13:						
	.dc.b $34,$34
	.dc.b $00				
_?LC14:						
	.dc.b $34,$38
	.dc.b $00				
_?LC15:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$73,$34,$34,$72
	.dc.b $65,$61,$64,$3a,$20,$46,$61,$69
	.dc.b $6c,$65,$64,$20,$6f,$70,$65,$6e
	.dc.b $69,$6e,$67,$20,$25,$73,$20,$28
	.dc.b $73,$61,$6d,$70,$6c,$65,$72,$61
	.dc.b $74,$65,$20,$63,$61,$6e,$20,$6e
	.dc.b $6f,$74,$20,$62,$65,$20,$3c,$3d
	.dc.b $20,$30,$29,$0a
	.dc.b $00				
_?LC16:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$73,$34,$34,$72
	.dc.b $65,$61,$64,$3a,$20,$46,$61,$69
	.dc.b $6c,$65,$64,$20,$6f,$70,$65,$6e
	.dc.b $69,$6e,$67,$20,$25,$73,$20,$28
	.dc.b $6e,$75,$6d,$62,$65,$72,$20,$6f
	.dc.b $66,$20,$63,$68,$61,$6e,$6e,$65
	.dc.b $6c,$73,$20,$63,$61,$6e,$20,$6e
	.dc.b $6f,$74,$20,$62,$65,$20,$30,$29
	.dc.b $0a
	.dc.b $00				
_?LC17:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$6f,$75
	.dc.b $72,$63,$65,$5f,$73,$34,$34,$72
	.dc.b $65,$61,$64,$3a,$20,$63,$61,$6e
	.dc.b $20,$6e,$6f,$74,$20,$72,$65,$73
	.dc.b $61,$6d,$70,$6c,$65,$20,$25,$73
	.dc.b $20,$66,$72,$6f,$6d,$20,$25,$64
	.dc.b $20,$74,$6f,$20,$25,$64,$48,$7a
	.dc.b $0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_new_aubio_source_s44read	
						
_new_aubio_source_s44read:			
	lea (-256,sp),sp			
	movem.l d3/d4/d5/a3/a4/a5/a6,-(sp)	
	move.l 288(sp),a4			
	move.l 292(sp),d4			
	move.l 296(sp),d5			
						
	pea 64.w				
	lea _MALLOC,a5				
	jbsr (a5)				
	addq.l #4,sp				
	move.l d0,a3				
						
	cmp.w #0,a4				
	jbeq _?L151				
						
	tst.l d4				
	jblt _?L152				
						
	tst.l d5				
	jble _?L153				
						
	move.l a4,-(sp)				
	lea _strlen,a6				
	jbsr (a6)				
	addq.l #4,sp				
	move.l d0,a0				
	pea 1(a0)				
	jbsr (a5)				
	move.l d0,d3				
						
	move.l d0,12(a3)			
						
	move.l a4,(sp)				
	jbsr (a6)				
	addq.l #4,sp				
						
	move.l d0,a0				
	pea 1(a0)				
	move.l a4,-(sp)				
	move.l d3,-(sp)				
	jbsr _strncpy				
	lea (12,sp),sp				
						
	move.l d4,4(a3)				
						
	move.l d5,(a3)				
						
	pea _?LC10				
	move.l a4,-(sp)				
	jbsr _fopen				
	addq.l #8,sp				
						
	move.l d0,24(a3)			
						
	jbeq _?L154				
						
	move.l a4,-(sp)				
	jbsr (a6)				
	addq.l #4,sp				
						
	move.b -3(a4,d0.l),d3			
	and.b #-33,d3				
						
	lea -2(a4,d0.l),a0			
						
	cmp.b #51,(a0)				
	jbeq _?L155				
_?L120:						
	moveq #1,d0				
						
	cmp.b #83,d3				
	jbeq _?L122				
_?L159:						
						
	tst.l d0				
	jbne _?L156				
						
	cmp.b #77,d3				
	jbne _?L127				
						
	moveq #1,d3				
						
	moveq #2,d5				
						
	move.l #32000,d0			
_?L135:						
						
	move.l d0,16(a3)			
						
	move.l d3,20(a3)			
						
	tst.l d4				
	jbne _?L132				
_?L160:						
						
	move.l d0,4(a3)				
_?L133:						
						
	clr.l 52(a3)				
						
	pea 1024.w				
	move.l d3,-(sp)				
	jbsr _new_fmat				
	addq.l #8,sp				
						
	move.l d0,60(a3)			
						
	move.l d5,32(a3)			
						
	moveq #16,d0				
	move.l d0,36(a3)			
						
	clr.l 48(a3)				
						
	moveq #11,d0				
	lsl.l d0,d3				
						
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #4,sp				
						
	move.l d0,56(a3)			
						
	clr.l 40(a3)				
						
	clr.l 28(a3)				
						
	clr.l 44(a3)				
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/a3/a4/a5/a6	
	lea (256,sp),sp				
	rts					
_?L122:						
						
	moveq #2,d3				
	tst.l d0				
	jbeq _?L140				
						
	cmp.b #52,(a0)				
	jbeq _?L157				
_?L138:						
						
	cmp.b #52,(a0)				
	jbeq _?L158				
_?L131:						
						
	move.l 12(a3),d0			
						
	tst.l d3				
	jbeq _?L127				
						
	move.l d0,-(sp)				
	pea _?LC15				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
_?L116:						
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_s44read		
	addq.l #4,sp				
						
	sub.l a3,a3				
_?L161:						
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/a3/a4/a5/a6	
	lea (256,sp),sp				
	rts					
_?L155:						
						
	cmp.b #50,1(a0)				
	jbne _?L120				
	moveq #0,d0				
						
	cmp.b #83,d3				
	jbne _?L159				
	jbra _?L122				
_?L140:						
						
	moveq #4,d5				
						
	move.l #32000,d0			
						
	move.l d0,16(a3)			
						
	move.l d3,20(a3)			
						
	tst.l d4				
	jbeq _?L160				
_?L132:						
						
	cmp.l d4,d0				
	jbeq _?L133				
						
	move.l d4,-(sp)				
	move.l d0,-(sp)				
	move.l 12(a3),-(sp)			
	pea _?LC17				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (20,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_s44read		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L161				
_?L156:						
						
	cmp.b #52,(a0)				
	jbeq _?L162				
_?L126:						
						
	cmp.b #77,d3				
	seq d3					
	ext.w d3				
	ext.l d3				
	neg.l d3				
						
	cmp.b #52,(a0)				
	jbne _?L131				
	jbra _?L158				
_?L157:						
						
	cmp.b #52,1(a0)				
	jbne _?L138				
						
	moveq #4,d5				
						
	move.l #44100,d0			
	jbra _?L135				
_?L158:						
						
	cmp.b #56,1(a0)				
	jbne _?L131				
						
	move.l d3,d5				
	add.l d3,d5				
						
	tst.l d3				
	jbeq _?L127				
						
	move.l #48000,d0			
	jbra _?L135				
_?L162:						
						
	cmp.b #52,1(a0)				
	jbne _?L126				
						
	cmp.b #77,d3				
	jbne _?L127				
						
	moveq #1,d3				
						
	moveq #2,d5				
						
	move.l #44100,d0			
	jbra _?L135				
_?L153:						
						
	move.l d5,-(sp)				
	move.l a4,-(sp)				
	pea _?LC9				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_s44read		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L161				
_?L127:						
						
	move.l 12(a3),-(sp)			
	pea _?LC16				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_s44read		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L161				
_?L152:						
						
	move.l d4,-(sp)				
	move.l a4,-(sp)				
	pea _?LC8				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_s44read		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L161				
_?L151:						
						
	pea _?LC7				
	clr.l -(sp)				
	jbsr _aubio_log				
	addq.l #8,sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_source_s44read		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L161				
_?L154:						
						
	move.l _errno,d0			
	move.l d0,-(sp)				
	pea _?LC4				
	moveq #36,d3				
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
	jbsr _del_aubio_source_s44read		
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L161				
						
						
