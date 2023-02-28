* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"musicutils.c"			
						
						
						
						
						
	.text					
	.globl	___ltdf2			
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$68
	.dc.b $7a,$74,$6f,$6d,$65,$6c,$3a,$20
	.dc.b $69,$6e,$70,$75,$74,$20,$66,$72
	.dc.b $65,$71,$75,$65,$6e,$63,$79,$20
	.dc.b $73,$68,$6f,$75,$6c,$64,$20,$62
	.dc.b $65,$20,$3e,$3d,$20,$30,$0a
	.dc.b $00				
	.globl	___muldf3			
	.globl	___divdf3			
	.globl	___adddf3			
	.text					
	.align	2				
	.globl	_aubio_hztomel			
						
_aubio_hztomel:					
	movem.l d4/d5/d6/d7/a3,-(sp)		
	move.l 24(sp),d4			
	move.l 28(sp),d5			
						
	clr.l d6				
	clr.l d7				
	lea ___ltdf2,a3				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L13				
						
	move.l #1083129856,d6			
	clr.l d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L10				
						
	move.l #-343597384,-(sp)		
	move.l #1066317905,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,a1				
	move.l d1,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/d6/d7/a3		
	rts					
_?L10:						
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _log				
						
	addq.l #4,sp				
	move.l #-2019019781,(sp)		
	move.l #1076696852,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1076756480,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,a1				
	move.l d1,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/d6/d7/a3		
	rts					
_?L13:						
						
	pea _?LC0				
	pea 4.w					
	jbsr _aubio_log				
	addq.l #8,sp				
						
	move.l d6,a1				
	move.l d7,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/d6/d7/a3		
	rts					
						
	.data					
_?LC1:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$6d
	.dc.b $65,$6c,$74,$6f,$68,$7a,$3a,$20
	.dc.b $69,$6e,$70,$75,$74,$20,$6d,$65
	.dc.b $6c,$20,$73,$68,$6f,$75,$6c,$64
	.dc.b $20,$62,$65,$20,$3e,$3d,$20,$30
	.dc.b $0a
	.dc.b $00				
	.globl	___subdf3			
	.text					
	.align	2				
	.globl	_aubio_meltohz			
						
_aubio_meltohz:					
	movem.l d4/d5/d6/d7/a3,-(sp)		
	move.l 24(sp),d4			
	move.l 28(sp),d5			
						
	clr.l d6				
	clr.l d7				
	lea ___ltdf2,a3				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L26				
						
	move.l #1076756479,d6			
	moveq #-1,d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L23				
						
	move.l #-1431655765,-(sp)		
	move.l #1079028394,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,a1				
	move.l d1,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/d6/d7/a3		
	rts					
_?L23:						
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___subdf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l #1955841344,-(sp)		
	move.l #1072767875,-(sp)		
	jbsr _pow				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1083129856,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,a1				
	move.l d1,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/d6/d7/a3		
	rts					
_?L26:						
						
	pea _?LC1				
	pea 4.w					
	jbsr _aubio_log				
	addq.l #8,sp				
						
	move.l d6,a1				
	move.l d7,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/d6/d7/a3		
	rts					
						
	.data					
_?LC2:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$68
	.dc.b $7a,$74,$6f,$6d,$65,$6c,$5f,$68
	.dc.b $74,$6b,$3a,$20,$69,$6e,$70,$75
	.dc.b $74,$20,$66,$72,$65,$71,$75,$65
	.dc.b $6e,$63,$79,$20,$73,$68,$6f,$75
	.dc.b $6c,$64,$20,$62,$65,$20,$3e,$3d
	.dc.b $20,$30,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_hztomel_htk		
						
_aubio_hztomel_htk:				
	movem.l d4/d5/d6/d7,-(sp)		
	move.l 20(sp),d4			
	move.l 24(sp),d5			
						
	clr.l d6				
	clr.l d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L35				
						
	clr.l -(sp)				
	move.l #1082515456,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _log				
						
	addq.l #4,sp				
	clr.l (sp)				
	move.l #1083284480,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,a1				
	move.l d1,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/d6/d7		
	rts					
_?L35:						
						
	pea _?LC2				
	pea 4.w					
	jbsr _aubio_log				
	addq.l #8,sp				
						
	move.l d6,a1				
	move.l d7,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/d6/d7		
	rts					
						
	.data					
_?LC3:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$6d
	.dc.b $65,$6c,$74,$6f,$68,$7a,$5f,$68
	.dc.b $74,$6b,$3a,$20,$69,$6e,$70,$75
	.dc.b $74,$20,$66,$72,$65,$71,$75,$65
	.dc.b $6e,$63,$79,$20,$73,$68,$6f,$75
	.dc.b $6c,$64,$20,$62,$65,$20,$3e,$3d
	.dc.b $20,$30,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_meltohz_htk		
						
_aubio_meltohz_htk:				
	movem.l d4/d5/d6/d7/a3,-(sp)		
	move.l 24(sp),d4			
	move.l 28(sp),d5			
						
	clr.l d6				
	clr.l d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L44				
						
	lea ___muldf3,a3			
	move.l #-766005702,-(sp)		
	move.l #1062015822,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _exp				
						
	addq.l #4,sp				
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___subdf3				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1082515456,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a1				
	move.l d1,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/d6/d7/a3		
	rts					
_?L44:						
						
	pea _?LC3				
	pea 4.w					
	jbsr _aubio_log				
	addq.l #8,sp				
						
	move.l d6,a1				
	move.l d7,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/d6/d7/a3		
	rts					
						
						
