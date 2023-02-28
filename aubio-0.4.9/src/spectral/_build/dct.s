* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"dct.c"				
						
						
						
						
						
	.text					
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$64
	.dc.b $63,$74,$3a,$20,$6e,$6f,$20,$6f
	.dc.b $70,$74,$69,$6d,$69,$73,$65,$64
	.dc.b $20,$69,$6d,$70,$6c,$65,$6d,$65
	.dc.b $6e,$74,$61,$74,$69,$6f,$6e,$20
	.dc.b $63,$6f,$75,$6c,$64,$20,$62,$65
	.dc.b $20,$63,$72,$65,$61,$74,$65,$64
	.dc.b $20,$66,$6f,$72,$20,$73,$69,$7a
	.dc.b $65,$20,$25,$64,$0a
	.dc.b $00				
_?LC1:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$64,$63,$74
	.dc.b $3a,$20,$66,$61,$69,$6c,$65,$64
	.dc.b $20,$63,$72,$65,$61,$74,$69,$6e
	.dc.b $67,$20,$77,$69,$74,$68,$20,$73
	.dc.b $69,$7a,$65,$20,$25,$64,$2c,$20
	.dc.b $73,$68,$6f,$75,$6c,$64,$20,$62
	.dc.b $65,$20,$3e,$20,$30,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_new_aubio_dct			
						
_new_aubio_dct:					
	move.l a3,-(sp)				
	move.l d3,-(sp)				
	move.l 12(sp),d3			
						
	pea 16.w				
	jbsr _MALLOC				
	move.l d0,a3				
						
	move.l d3,(sp)				
	jbsr _aubio_is_power_of_two		
	addq.l #4,sp				
						
	moveq #1,d1				
	cmp.l d0,d1				
	jbne _?L2				
						
	cmp.l d3,d1				
	jbeq _?L2				
						
	move.l d3,-(sp)				
	jbsr _new_aubio_dct_ooura		
	addq.l #4,sp				
						
	move.l d0,(a3)				
						
	jbeq _?L19				
	lea _aubio_dct_ooura_do,a0		
	move.l #_aubio_dct_ooura_rdo,d1		
	move.l #_del_aubio_dct_ooura,d0		
						
	move.l a0,4(a3)				
						
	move.l d1,8(a3)				
						
	move.l d0,12(a3)			
_?L1:						
						
	move.l a3,d0				
	move.l (sp)+,d3				
	move.l (sp)+,a3				
	rts					
_?L19:						
						
	move.l d3,-(sp)				
	pea _?LC0				
	pea 4.w					
	jbsr _aubio_log				
	lea (12,sp),sp				
_?L2:						
						
	move.l d3,-(sp)				
	jbsr _new_aubio_dct_plain		
	addq.l #4,sp				
						
	move.l d0,(a3)				
						
	jbeq _?L4				
	lea _aubio_dct_plain_do,a0		
	move.l #_aubio_dct_plain_rdo,d1		
	move.l #_del_aubio_dct_plain,d0		
						
	move.l a0,4(a3)				
						
	move.l d1,8(a3)				
						
	move.l d0,12(a3)			
	jbra _?L1				
_?L4:						
						
	move.l d3,-(sp)				
	pea _?LC1				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l (a3),d0				
						
	jbeq _?L6				
						
	move.l 12(a3),a0			
						
	cmp.w #0,a0				
	jbeq _?L6				
						
	move.l d0,-(sp)				
	jbsr (a0)				
	addq.l #4,sp				
_?L6:						
						
	move.l a3,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	sub.l a3,a3				
						
	move.l a3,d0				
	move.l (sp)+,d3				
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_del_aubio_dct			
						
_del_aubio_dct:					
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l (a3),d0				
						
	jbeq _?L21				
						
	move.l 12(a3),a0			
						
	cmp.w #0,a0				
	jbeq _?L21				
						
	move.l d0,-(sp)				
	jbsr (a0)				
	addq.l #4,sp				
_?L21:						
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
						
	.align	2				
	.globl	_aubio_dct_do			
						
_aubio_dct_do:					
	move.l 4(sp),a0				
						
	move.l (a0),4(sp)			
	move.l 4(a0),a1				
						
						
	jmp (a1)				
						
	.align	2				
	.globl	_aubio_dct_rdo			
						
_aubio_dct_rdo:					
	move.l 4(sp),a0				
						
	move.l (a0),4(sp)			
	move.l 8(a0),a1				
						
						
	jmp (a1)				
						
						
