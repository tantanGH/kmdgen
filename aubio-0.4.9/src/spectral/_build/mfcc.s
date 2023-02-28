* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"mfcc.c"			
						
						
						
						
						
	.text					
	.align	2				
	.globl	_del_aubio_mfcc			
						
_del_aubio_mfcc:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 16(a3),d0			
						
	jbeq _?L2				
						
	move.l d0,-(sp)				
	jbsr _del_aubio_filterbank		
	addq.l #4,sp				
_?L2:						
						
	move.l 20(a3),d0			
						
	jbeq _?L3				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L3:						
						
	move.l 24(a3),d0			
						
	jbeq _?L4				
						
	move.l d0,-(sp)				
	jbsr _del_aubio_dct			
	addq.l #4,sp				
_?L4:						
						
	move.l 28(a3),d0			
						
	jbeq _?L5				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L5:						
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
						
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$6d,$66,$63
	.dc.b $63,$3a,$20,$6e,$5f,$63,$6f,$65
	.dc.b $66,$73,$20,$73,$68,$6f,$75,$6c
	.dc.b $64,$20,$62,$65,$20,$3e,$20,$30
	.dc.b $2c,$20,$67,$6f,$74,$20,$25,$64
	.dc.b $0a
	.dc.b $00				
_?LC1:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$6d,$66,$63
	.dc.b $63,$3a,$20,$73,$61,$6d,$70,$6c
	.dc.b $65,$72,$61,$74,$65,$20,$73,$68
	.dc.b $6f,$75,$6c,$64,$20,$62,$65,$20
	.dc.b $3e,$20,$30,$2c,$20,$67,$6f,$74
	.dc.b $20,$25,$64,$0a
	.dc.b $00				
	.globl	___floatunsidf			
	.globl	___muldf3			
	.text					
	.align	2				
	.globl	_new_aubio_mfcc			
						
_new_aubio_mfcc:				
	movem.l d3/d4/d5/d6/a3/a4,-(sp)		
	move.l 28(sp),d6			
	move.l 32(sp),d3			
	move.l 36(sp),d5			
	move.l 40(sp),d4			
						
	pea 40.w				
	jbsr _MALLOC				
	addq.l #4,sp				
	move.l d0,a3				
						
	tst.l d5				
	jble _?L36				
						
	tst.l d4				
	jble _?L37				
						
	move.l d6,(a3)				
						
	move.l d4,4(a3)				
						
	move.l d3,8(a3)				
						
	move.l d5,12(a3)			
						
	move.l d6,-(sp)				
	move.l d3,-(sp)				
	jbsr _new_aubio_filterbank		
	addq.l #8,sp				
	move.l d0,d6				
						
	move.l d0,16(a3)			
						
	jbeq _?L22				
						
	move.l d4,-(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,d4				
	move.l d1,d5				
						
	moveq #40,d0				
	cmp.l d3,d0				
	jbeq _?L38				
						
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr ___muldf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d6,-(sp)				
	jbsr _aubio_filterbank_set_mel_coeffs	
	lea (28,sp),sp				
_?L26:						
						
	move.l d3,-(sp)				
	lea _new_fvec,a4			
	jbsr (a4)				
						
	move.l d0,20(a3)			
						
	move.l d3,(sp)				
	jbsr _new_aubio_dct			
						
	move.l d0,24(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,28(a3)			
						
	tst.l 20(a3)				
	jbeq _?L22				
						
	tst.l 24(a3)				
	jbeq _?L22				
						
	tst.l d0				
	jbeq _?L22				
						
	move.l #1072693248,32(a3)		
	clr.l 36(a3)				
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/d6/a3/a4		
	rts					
_?L38:						
						
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	move.l d6,-(sp)				
	jbsr _aubio_filterbank_set_mel_coeffs_slaney
	lea (12,sp),sp				
	jbra _?L26				
_?L37:						
						
	move.l d4,-(sp)				
	pea _?LC1				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
_?L22:						
						
	move.l a3,-(sp)				
	jbsr _del_aubio_mfcc			
	addq.l #4,sp				
						
	sub.l a3,a3				
_?L39:						
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/d6/a3/a4		
	rts					
_?L36:						
						
	move.l d5,-(sp)				
	pea _?LC0				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _del_aubio_mfcc			
	addq.l #4,sp				
						
	sub.l a3,a3				
	jbra _?L39				
						
	.globl	___nedf2			
	.align	2				
	.globl	_aubio_mfcc_do			
						
_aubio_mfcc_do:					
	link.w a6,#-8				
	movem.l d4/d5/a3/a4,-(sp)		
	move.l 8(a6),a3				
	move.l 16(a6),a4			
						
	move.l 20(a3),-(sp)			
	move.l 12(a6),-(sp)			
	move.l 16(a3),-(sp)			
	jbsr _aubio_filterbank_do		
						
	addq.l #8,sp				
	move.l 20(a3),(sp)			
	jbsr _fvec_log10			
						
	move.l 32(a3),d4			
	move.l 36(a3),d5			
						
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___nedf2				
	lea (16,sp),sp				
	tst.l d0				
	jbne _?L46				
						
	move.l 28(a3),-(sp)			
	move.l 20(a3),-(sp)			
	move.l 24(a3),-(sp)			
	jbsr _aubio_dct_do			
	lea (12,sp),sp				
						
	move.l 28(a3),a0			
						
	move.l 4(a0),-4(a6)			
						
	move.l (a4),-8(a6)			
						
	move.l a4,-(sp)				
	pea -8(a6)				
	jbsr _fvec_copy				
	addq.l #8,sp				
						
	movem.l -24(a6),d4/d5/a3/a4		
	unlk a6					
	rts					
_?L46:						
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 20(a3),-(sp)			
	jbsr _fvec_mul				
	lea (12,sp),sp				
						
	move.l 28(a3),-(sp)			
	move.l 20(a3),-(sp)			
	move.l 24(a3),-(sp)			
	jbsr _aubio_dct_do			
	lea (12,sp),sp				
						
	move.l 28(a3),a0			
						
	move.l 4(a0),-4(a6)			
						
	move.l (a4),-8(a6)			
						
	move.l a4,-(sp)				
	pea -8(a6)				
	jbsr _fvec_copy				
	addq.l #8,sp				
						
	movem.l -24(a6),d4/d5/a3/a4		
	unlk a6					
	rts					
						
	.align	2				
	.globl	_aubio_mfcc_set_power		
						
_aubio_mfcc_set_power:				
						
	move.l 4(sp),a0				
	move.l 16(a0),4(sp)			
						
						
	jbra _aubio_filterbank_set_power	
						
	.align	2				
	.globl	_aubio_mfcc_get_power		
						
_aubio_mfcc_get_power:				
						
	move.l 4(sp),a0				
	move.l 16(a0),4(sp)			
						
						
	jbra _aubio_filterbank_get_power	
						
	.align	2				
	.globl	_aubio_mfcc_set_scale		
						
_aubio_mfcc_set_scale:				
						
	move.l 4(sp),a0				
	move.l 8(sp),d0				
	move.l 12(sp),d1			
	move.l d0,32(a0)			
	move.l d1,36(a0)			
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_mfcc_get_scale		
						
_aubio_mfcc_get_scale:				
						
	move.l 4(sp),a0				
	move.l 32(a0),d0			
	move.l 36(a0),d1			
	rts					
						
	.align	2				
	.globl	_aubio_mfcc_set_mel_coeffs	
						
_aubio_mfcc_set_mel_coeffs:			
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 24(sp),-(sp)			
	move.l 24(sp),-(sp)			
	move.l 24(sp),-(sp)			
	move.l 24(sp),-(sp)			
	move.l 4(a3),-(sp)			
	jbsr ___floatunsidf			
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 16(a3),-(sp)			
	jbsr _aubio_filterbank_set_mel_coeffs	
	lea (28,sp),sp				
						
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_aubio_mfcc_set_mel_coeffs_htk	
						
_aubio_mfcc_set_mel_coeffs_htk:			
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 24(sp),-(sp)			
	move.l 24(sp),-(sp)			
	move.l 24(sp),-(sp)			
	move.l 24(sp),-(sp)			
	move.l 4(a3),-(sp)			
	jbsr ___floatunsidf			
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 16(a3),-(sp)			
	jbsr _aubio_filterbank_set_mel_coeffs_htk
	lea (28,sp),sp				
						
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_aubio_mfcc_set_mel_coeffs_slaney
						
_aubio_mfcc_set_mel_coeffs_slaney:		
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 4(a3),-(sp)			
	jbsr ___floatunsidf			
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 16(a3),-(sp)			
	jbsr _aubio_filterbank_set_mel_coeffs_slaney
	lea (12,sp),sp				
						
	move.l (sp)+,a3				
	rts					
						
						
