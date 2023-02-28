* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"sink.c"			
						
						
						
						
						
	.text					
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$69,$6e
	.dc.b $6b,$3a,$20,$66,$61,$69,$6c,$65
	.dc.b $64,$20,$63,$72,$65,$61,$74,$69
	.dc.b $6e,$67,$20,$27,$25,$73,$27,$20
	.dc.b $61,$74,$20,$25,$64,$48,$7a,$20
	.dc.b $28,$6e,$6f,$20,$73,$69,$6e,$6b
	.dc.b $20,$62,$75,$69,$6c,$74,$2d,$69
	.dc.b $6e,$29,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_new_aubio_sink			
						
_new_aubio_sink:				
	move.l a3,-(sp)				
						
	pea 36.w				
	jbsr _MALLOC				
	addq.l #4,sp				
	move.l d0,a3				
						
	move.l 12(sp),-(sp)			
	move.l 12(sp),-(sp)			
	pea _?LC0				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	cmp.w #0,a3				
	jbeq _?L2				
						
	move.l 32(a3),a0			
						
	cmp.w #0,a0				
	jbeq _?L2				
						
	move.l (a3),d0				
						
	jbeq _?L2				
						
	move.l d0,-(sp)				
	jbsr (a0)				
	addq.l #4,sp				
_?L2:						
						
	move.l a3,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	moveq #0,d0				
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_aubio_sink_do			
						
_aubio_sink_do:					
	move.l 4(sp),a0				
						
	move.l (a0),4(sp)			
	move.l 4(a0),a1				
						
						
	jmp (a1)				
						
	.align	2				
	.globl	_aubio_sink_do_multi		
						
_aubio_sink_do_multi:				
	move.l 4(sp),a0				
						
	move.l (a0),4(sp)			
	move.l 8(a0),a1				
						
						
	jmp (a1)				
						
	.align	2				
	.globl	_aubio_sink_preset_samplerate	
						
_aubio_sink_preset_samplerate:			
	move.l 4(sp),a0				
						
	move.l (a0),4(sp)			
	move.l 12(a0),a1			
						
						
	jmp (a1)				
						
	.align	2				
	.globl	_aubio_sink_preset_channels	
						
_aubio_sink_preset_channels:			
	move.l 4(sp),a0				
						
	move.l (a0),4(sp)			
	move.l 16(a0),a1			
						
						
	jmp (a1)				
						
	.align	2				
	.globl	_aubio_sink_get_samplerate	
						
_aubio_sink_get_samplerate:			
	move.l 4(sp),a0				
						
	move.l (a0),4(sp)			
	move.l 20(a0),a1			
						
						
	jmp (a1)				
						
	.align	2				
	.globl	_aubio_sink_get_channels	
						
_aubio_sink_get_channels:			
	move.l 4(sp),a0				
						
	move.l (a0),4(sp)			
	move.l 24(a0),a1			
						
						
	jmp (a1)				
						
	.align	2				
	.globl	_aubio_sink_close		
						
_aubio_sink_close:				
	move.l 4(sp),a0				
						
	move.l (a0),4(sp)			
	move.l 28(a0),a1			
						
						
	jmp (a1)				
						
	.align	2				
	.globl	_del_aubio_sink			
						
_del_aubio_sink:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	cmp.w #0,a3				
	jbeq _?L29				
						
	move.l 32(a3),a0			
						
	cmp.w #0,a0				
	jbeq _?L29				
						
	move.l (a3),d0				
						
	jbeq _?L29				
						
	move.l d0,-(sp)				
	jbsr (a0)				
	addq.l #4,sp				
_?L29:						
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
						
						
