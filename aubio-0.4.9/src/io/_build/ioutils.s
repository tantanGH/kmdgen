* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"ioutils.c"			
						
						
						
						
						
	.text					
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$25,$73,$3a
	.dc.b $20,$66,$61,$69,$6c,$65,$64,$20
	.dc.b $63,$72,$65,$61,$74,$69,$6e,$67
	.dc.b $20,$25,$73,$2c,$20,$73,$61,$6d
	.dc.b $70,$6c,$65,$72,$61,$74,$65,$20
	.dc.b $73,$68,$6f,$75,$6c,$64,$20,$62
	.dc.b $65,$20,$70,$6f,$73,$69,$74,$69
	.dc.b $76,$65,$2c,$20,$6e,$6f,$74,$20
	.dc.b $25,$64,$0a
	.dc.b $00				
_?LC1:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$25,$73,$3a
	.dc.b $20,$66,$61,$69,$6c,$65,$64,$20
	.dc.b $63,$72,$65,$61,$74,$69,$6e,$67
	.dc.b $20,$25,$73,$2c,$20,$73,$61,$6d
	.dc.b $70,$6c,$65,$72,$61,$74,$65,$20
	.dc.b $25,$64,$48,$7a,$20,$69,$73,$20
	.dc.b $74,$6f,$6f,$20,$6c,$61,$72,$67
	.dc.b $65,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_io_validate_samplerate	
						
_aubio_io_validate_samplerate:			
	move.l 12(sp),d0			
						
	jble _?L8				
						
	cmp.l #1536000,d0			
	jbgt _?L9				
						
	moveq #0,d0				
						
	rts					
_?L9:						
						
	move.l d0,-(sp)				
	move.l 12(sp),-(sp)			
	move.l 12(sp),-(sp)			
	pea _?LC1				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (20,sp),sp				
						
	moveq #1,d0				
_?L10:						
						
	rts					
_?L8:						
						
	move.l d0,-(sp)				
	move.l 12(sp),-(sp)			
	move.l 12(sp),-(sp)			
	pea _?LC0				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (20,sp),sp				
						
	moveq #1,d0				
	jbra _?L10				
						
	.data					
_?LC2:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$69,$6e
	.dc.b $6b,$5f,$25,$73,$3a,$20,$66,$61
	.dc.b $69,$6c,$65,$64,$20,$63,$72,$65
	.dc.b $61,$74,$69,$6e,$67,$20,$25,$73
	.dc.b $2c,$20,$63,$68,$61,$6e,$6e,$65
	.dc.b $6c,$73,$20,$73,$68,$6f,$75,$6c
	.dc.b $64,$20,$62,$65,$20,$70,$6f,$73
	.dc.b $69,$74,$69,$76,$65,$2c,$20,$6e
	.dc.b $6f,$74,$20,$25,$64,$0a
	.dc.b $00				
_?LC3:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$69,$6e
	.dc.b $6b,$5f,$25,$73,$3a,$20,$66,$61
	.dc.b $69,$6c,$65,$64,$20,$63,$72,$65
	.dc.b $61,$74,$69,$6e,$67,$20,$25,$73
	.dc.b $2c,$20,$74,$6f,$6f,$20,$6d,$61
	.dc.b $6e,$79,$20,$63,$68,$61,$6e,$6e
	.dc.b $65,$6c,$73,$20,$28,$25,$64,$20
	.dc.b $62,$75,$74,$20,$25,$64,$20,$61
	.dc.b $76,$61,$69,$6c,$61,$62,$6c,$65
	.dc.b $29,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_io_validate_channels	
						
_aubio_io_validate_channels:			
	move.l 12(sp),d0			
						
	jble _?L18				
						
	cmp.l #1024,d0				
	jbhi _?L19				
						
	moveq #0,d0				
						
	rts					
_?L19:						
						
	pea 1024.w				
	move.l d0,-(sp)				
	move.l 16(sp),-(sp)			
	move.l 16(sp),-(sp)			
	pea _?LC3				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (24,sp),sp				
						
	moveq #1,d0				
_?L20:						
						
	rts					
_?L18:						
						
	move.l d0,-(sp)				
	move.l 12(sp),-(sp)			
	move.l 12(sp),-(sp)			
	pea _?LC2				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (20,sp),sp				
						
	moveq #1,d0				
	jbra _?L20				
						
	.data					
_?LC4:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$25
	.dc.b $73,$3a,$20,$70,$61,$72,$74,$69
	.dc.b $61,$6c,$20,$72,$65,$61,$64,$20
	.dc.b $66,$72,$6f,$6d,$20,$25,$73,$2c
	.dc.b $20,$74,$72,$79,$69,$6e,$67,$20
	.dc.b $74,$6f,$20,$72,$65,$61,$64,$20
	.dc.b $25,$64,$20,$66,$72,$61,$6d,$65
	.dc.b $73,$2c,$20,$62,$75,$74,$20,$68
	.dc.b $6f,$70,$5f,$73,$69,$7a,$65,$20
	.dc.b $69,$73,$20,$25,$64,$0a
	.dc.b $00				
_?LC5:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$25
	.dc.b $73,$3a,$20,$70,$61,$72,$74,$69
	.dc.b $61,$6c,$20,$72,$65,$61,$64,$20
	.dc.b $66,$72,$6f,$6d,$20,$25,$73,$2c
	.dc.b $20,$74,$72,$79,$69,$6e,$67,$20
	.dc.b $74,$6f,$20,$72,$65,$61,$64,$20
	.dc.b $25,$64,$20,$66,$72,$61,$6d,$65
	.dc.b $73,$20,$69,$6e,$74,$6f,$20,$61
	.dc.b $20,$62,$75,$66,$66,$65,$72,$20
	.dc.b $6f,$66,$20,$6c,$65,$6e,$67,$74
	.dc.b $68,$20,$25,$64,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_source_validate_input_length
						
_aubio_source_validate_input_length:		
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	move.l 20(sp),d3			
	move.l 24(sp),d4			
						
	cmp.l d3,d4				
	jbhi _?L28				
						
	jbcs _?L24				
						
	move.l d3,d0				
_?L21:						
						
	move.l (sp)+,d3				
	move.l (sp)+,d4				
	rts					
_?L24:						
						
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	move.l 24(sp),-(sp)			
	move.l 24(sp),-(sp)			
	pea _?LC5				
	pea 4.w					
	jbsr _aubio_log				
	lea (24,sp),sp				
	move.l d4,d0				
						
	move.l (sp)+,d3				
	move.l (sp)+,d4				
	rts					
_?L28:						
						
	move.l d3,-(sp)				
	move.l d4,-(sp)				
	move.l 24(sp),-(sp)			
	move.l 24(sp),-(sp)			
	pea _?LC4				
	pea 4.w					
	jbsr _aubio_log				
	lea (24,sp),sp				
						
	move.l d3,d0				
	jbra _?L21				
						
	.data					
_?LC6:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$25
	.dc.b $73,$3a,$20,$70,$61,$72,$74,$69
	.dc.b $61,$6c,$20,$72,$65,$61,$64,$20
	.dc.b $66,$72,$6f,$6d,$20,$25,$73,$2c
	.dc.b $20,$74,$72,$79,$69,$6e,$67,$20
	.dc.b $74,$6f,$20,$72,$65,$61,$64,$20
	.dc.b $25,$64,$20,$63,$68,$61,$6e,$6e
	.dc.b $65,$6c,$73,$2c,$20,$62,$75,$74
	.dc.b $20,$66,$6f,$75,$6e,$64,$20,$6f
	.dc.b $75,$74,$70,$75,$74,$20,$6f,$66
	.dc.b $20,$68,$65,$69,$67,$68,$74,$20
	.dc.b $25,$64,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_source_validate_input_channels
						
_aubio_source_validate_input_channels:		
	move.l d3,-(sp)				
	move.l 16(sp),d0			
	move.l 20(sp),d3			
						
	cmp.l d0,d3				
	jbcs _?L33				
						
	move.l (sp)+,d3				
	rts					
_?L33:						
						
	move.l d3,-(sp)				
	move.l d0,-(sp)				
	move.l 20(sp),-(sp)			
	move.l 20(sp),-(sp)			
	pea _?LC6				
	pea 4.w					
	jbsr _aubio_log				
	lea (24,sp),sp				
	move.l d3,d0				
						
	move.l (sp)+,d3				
	rts					
						
	.align	2				
	.globl	_aubio_source_pad_output	
						
_aubio_source_pad_output:			
	move.l 4(sp),a0				
	move.l 8(sp),d1				
						
	move.l (a0),d0				
						
	cmp.l d0,d1				
	jbcs _?L38				
						
	rts					
_?L38:						
						
	sub.l d1,d0				
	lsl.l #3,d0				
	lsl.l #3,d1				
	move.l d0,-(sp)				
	clr.l -(sp)				
	add.l 4(a0),d1				
	move.l d1,-(sp)				
	jbsr _memset				
	lea (12,sp),sp				
						
	rts					
						
	.globl	___umodsi3			
	.align	2				
	.globl	_aubio_source_pad_multi_output	
						
_aubio_source_pad_multi_output:			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 40(sp),a3			
	move.l 44(sp),d3			
	move.l 48(sp),d4			
						
	move.l (a3),d0				
						
	move.l 4(a3),d1				
						
	cmp.l d0,d4				
	jbcc _?L40				
						
	tst.l d1				
	jbeq _?L39				
						
	move.l d4,d5				
	lsl.l #3,d5				
						
	moveq #0,d6				
	lea _memset,a4				
						
	sub.l d4,d0				
	lsl.l #3,d0				
	move.l 8(a3),a0				
	move.l d6,d1				
	add.l d6,d1				
	add.l d1,d1				
	move.l (a0,d1.l),d1			
	add.l d5,d1				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l d1,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
						
	addq.l #1,d6				
						
	move.l 4(a3),d1				
						
	cmp.l d1,d6				
	jbcc _?L40				
_?L48:						
						
	move.l (a3),d0				
	sub.l d4,d0				
	lsl.l #3,d0				
	move.l 8(a3),a0				
	move.l d6,d1				
	add.l d6,d1				
	add.l d1,d1				
	move.l (a0,d1.l),d1			
	add.l d5,d1				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l d1,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
						
	addq.l #1,d6				
						
	move.l 4(a3),d1				
						
	cmp.l d1,d6				
	jbcs _?L48				
_?L40:						
						
	cmp.l d3,d1				
	jbls _?L39				
	move.l d3,d7				
	add.l d3,d7				
	add.l d7,d7				
	move.l d3,d4				
	lea ___umodsi3,a5			
	lea _memcpy,a4				
_?L44:						
						
	move.l 8(a3),a6				
	move.l (a6,d7.l),d6			
	move.l (a3),d5				
	lsl.l #3,d5				
	move.l d3,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
	lsl.l #2,d0				
	move.l (a6,d0.l),d0			
	move.l d5,-(sp)				
	move.l d0,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
						
	addq.l #1,d4				
						
	addq.l #4,d7				
	cmp.l 4(a3),d4				
	jbcs _?L44				
_?L39:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.data					
_?LC7:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$25
	.dc.b $73,$3a,$20,$70,$61,$72,$74,$69
	.dc.b $61,$6c,$20,$77,$72,$69,$74,$65
	.dc.b $20,$74,$6f,$20,$25,$73,$2c,$20
	.dc.b $74,$72,$79,$69,$6e,$67,$20,$74
	.dc.b $6f,$20,$77,$72,$69,$74,$65,$20
	.dc.b $25,$64,$20,$66,$72,$61,$6d,$65
	.dc.b $73,$2c,$20,$61,$74,$20,$6d,$6f
	.dc.b $73,$74,$20,$25,$64,$20,$63,$61
	.dc.b $6e,$20,$62,$65,$20,$77,$72,$69
	.dc.b $74,$74,$65,$6e,$20,$61,$74,$20
	.dc.b $6f,$6e,$63,$65,$0a
	.dc.b $00				
_?LC8:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$25
	.dc.b $73,$3a,$20,$70,$61,$72,$74,$69
	.dc.b $61,$6c,$20,$77,$72,$69,$74,$65
	.dc.b $20,$74,$6f,$20,$25,$73,$2c,$20
	.dc.b $74,$72,$79,$69,$6e,$67,$20,$74
	.dc.b $6f,$20,$77,$72,$69,$74,$65,$20
	.dc.b $25,$64,$20,$66,$72,$61,$6d,$65
	.dc.b $73,$2c,$20,$62,$75,$74,$20,$66
	.dc.b $6f,$75,$6e,$64,$20,$69,$6e,$70
	.dc.b $75,$74,$20,$6f,$66,$20,$6c,$65
	.dc.b $6e,$67,$74,$68,$20,$25,$64,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_sink_validate_input_length
						
_aubio_sink_validate_input_length:		
	movem.l d3/d4/d5,-(sp)			
	move.l 24(sp),d3			
	move.l 28(sp),d5			
	move.l 32(sp),d4			
						
	cmp.l d4,d3				
	jbcs _?L55				
	move.l d4,d0				
						
	cmp.l d0,d5				
	jbcs _?L56				
_?L49:						
						
	movem.l (sp)+,d3/d4/d5			
	rts					
_?L56:						
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 28(sp),-(sp)			
	move.l 28(sp),-(sp)			
	pea _?LC8				
	pea 4.w					
	jbsr _aubio_log				
	lea (24,sp),sp				
	move.l d5,d0				
						
	movem.l (sp)+,d3/d4/d5			
	rts					
_?L55:						
						
	move.l d3,-(sp)				
	move.l d4,-(sp)				
	move.l 28(sp),-(sp)			
	move.l 28(sp),-(sp)			
	pea _?LC7				
	pea 4.w					
	jbsr _aubio_log				
	lea (24,sp),sp				
	move.l d3,d0				
						
	cmp.l d0,d5				
	jbcc _?L49				
	jbra _?L56				
						
	.data					
_?LC9:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$25
	.dc.b $73,$3a,$20,$70,$61,$72,$74,$69
	.dc.b $61,$6c,$20,$77,$72,$69,$74,$65
	.dc.b $20,$74,$6f,$20,$25,$73,$2c,$20
	.dc.b $74,$72,$79,$69,$6e,$67,$20,$74
	.dc.b $6f,$20,$77,$72,$69,$74,$65,$20
	.dc.b $25,$64,$20,$63,$68,$61,$6e,$6e
	.dc.b $65,$6c,$73,$2c,$20,$62,$75,$74
	.dc.b $20,$66,$6f,$75,$6e,$64,$20,$69
	.dc.b $6e,$70,$75,$74,$20,$6f,$66,$20
	.dc.b $68,$65,$69,$67,$68,$74,$20,$25
	.dc.b $64,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_sink_validate_input_channels
						
_aubio_sink_validate_input_channels:		
	move.l d3,-(sp)				
	move.l 16(sp),d0			
	move.l 20(sp),d3			
						
	cmp.l d0,d3				
	jbcs _?L61				
						
	move.l (sp)+,d3				
	rts					
_?L61:						
						
	move.l d3,-(sp)				
	move.l d0,-(sp)				
	move.l 20(sp),-(sp)			
	move.l 20(sp),-(sp)			
	pea _?LC9				
	pea 4.w					
	jbsr _aubio_log				
	lea (24,sp),sp				
	move.l d3,d0				
						
	move.l (sp)+,d3				
	rts					
						
						
