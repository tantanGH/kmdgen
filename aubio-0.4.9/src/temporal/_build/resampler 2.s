* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"resampler.c"			
						
						
						
						
						
	.text					
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$61,$75,$62
	.dc.b $69,$6f,$20,$77,$61,$73,$20,$6e
	.dc.b $6f,$74,$20,$63,$6f,$6d,$70,$69
	.dc.b $6c,$65,$64,$20,$77,$69,$74,$68
	.dc.b $20,$6c,$69,$62,$73,$61,$6d,$70
	.dc.b $6c,$65,$72,$61,$74,$65,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_new_aubio_resampler		
						
_new_aubio_resampler:				
						
	pea _?LC0				
	clr.l -(sp)				
	jbsr _aubio_log				
	addq.l #8,sp				
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_del_aubio_resampler		
						
_del_aubio_resampler:				
						
	rts					
						
	.align	2				
	.globl	_aubio_resampler_do		
						
_aubio_resampler_do:				
						
	rts					
						
						
