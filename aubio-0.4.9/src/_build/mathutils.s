* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"mathutils.c"			
						
						
						
						
						
	.text					
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$77,$69,$6e
	.dc.b $64,$6f,$77,$20,$74,$79,$70,$65
	.dc.b $20,$63,$61,$6e,$20,$6e,$6f,$74
	.dc.b $20,$62,$65,$20,$6e,$75,$6c,$6c
	.dc.b $2e,$0a
	.dc.b $00				
_?LC1:						
	.dc.b $6f,$6e,$65,$73
	.dc.b $00				
_?LC2:						
	.dc.b $72,$65,$63,$74,$61,$6e,$67,$6c
	.dc.b $65
	.dc.b $00				
_?LC3:						
	.dc.b $68,$61,$6d,$6d,$69,$6e,$67
	.dc.b $00				
_?LC4:						
	.dc.b $68,$61,$6e,$6e,$69,$6e,$67
	.dc.b $00				
_?LC5:						
	.dc.b $68,$61,$6e,$6e,$69,$6e,$67,$7a
	.dc.b $00				
_?LC6:						
	.dc.b $62,$6c,$61,$63,$6b,$6d,$61,$6e
	.dc.b $00				
_?LC7:						
	.dc.b $62,$6c,$61,$63,$6b,$6d,$61,$6e
	.dc.b $5f,$68,$61,$72,$72,$69,$73
	.dc.b $00				
_?LC8:						
	.dc.b $67,$61,$75,$73,$73,$69,$61,$6e
	.dc.b $00				
_?LC9:						
	.dc.b $77,$65,$6c,$63,$68
	.dc.b $00				
_?LC10:						
	.dc.b $70,$61,$72,$7a,$65,$6e
	.dc.b $00				
_?LC11:						
	.dc.b $64,$65,$66,$61,$75,$6c,$74
	.dc.b $00				
_?LC12:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$75,$6e,$6b
	.dc.b $6e,$6f,$77,$6e,$20,$77,$69,$6e
	.dc.b $64,$6f,$77,$20,$74,$79,$70,$65
	.dc.b $20,$60,$25,$73,$60,$2e,$0a
	.dc.b $00				
	.globl	___floatunsidf			
	.globl	___muldf3			
	.globl	___divdf3			
	.globl	___subdf3			
	.globl	___adddf3			
	.globl	___floatunsixf			
	.globl	___mulxf3			
	.globl	___subxf3			
	.globl	___divxf3			
	.globl	___truncxfdf2			
	.globl	___floatunsisf			
	.globl	___addsf3			
	.globl	___subsf3			
	.globl	___divsf3			
	.globl	___extendsfdf2			
	.data					
	.align	2				
_?LC13:						
	.dc.l	1073610752			
	.dc.l	-2147483648			
	.dc.l	0				
	.align	2				
_?LC14:						
	.dc.l	1073545216			
	.dc.l	-2147483648			
	.dc.l	0				
	.align	2				
_?LC15:						
	.dc.l	-1073872896			
	.dc.l	-2147483648			
	.dc.l	0				
	.text					
	.align	2				
	.globl	_fvec_set_window		
						
_fvec_set_window:				
	lea (-60,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 100(sp),a3			
	move.l 104(sp),d4			
						
	move.l 4(a3),d3				
						
	move.l (a3),40(sp)			
						
	tst.l d4				
	jbeq _?L54				
						
	pea _?LC1				
	move.l d4,-(sp)				
	lea _strcmp,a4				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L4				
						
	pea _?LC2				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L5				
						
	pea _?LC3				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L6				
						
	tst.l 40(sp)				
	jbeq _?L8				
						
	move.l #___floatunsidf,48(sp)		
	move.l 40(sp),-(sp)			
	lea ___floatunsidf,a0			
	jbsr (a0)				
	addq.l #4,sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d3,a4				
						
	moveq #0,d6				
	lea ___muldf3,a3			
	move.l #___divdf3,d3			
	move.l #_cos,d7				
	lea ___subdf3,a6			
	move.l d3,a5				
	move.l 40(sp),d3			
_?L26:						
						
	move.l d6,-(sp)				
	move.l 52(sp),a0			
	jbsr (a0)				
	move.l #1413754136,(sp)			
	move.l #1075388923,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	move.l #-687194767,(sp)			
	move.l #1071476899,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l #343597384,-(sp)			
	move.l #1071728558,-(sp)		
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,40(sp)			
	move.l d1,44(sp)			
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	addq.l #1,d6				
						
	cmp.l d3,d6				
	jbne _?L26				
_?L8:						
						
	moveq #0,d0				
_?L1:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (60,sp),sp				
	rts					
_?L4:						
						
	move.l a3,-(sp)				
	jbsr _fvec_ones				
	addq.l #4,sp				
						
	moveq #0,d0				
	jbra _?L1				
_?L6:						
						
	pea _?LC4				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L9				
						
	tst.l 40(sp)				
	jbeq _?L8				
						
	move.l #___floatunsidf,48(sp)		
	move.l 40(sp),-(sp)			
	lea ___floatunsidf,a0			
	jbsr (a0)				
	addq.l #4,sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d3,a4				
						
	moveq #0,d6				
	lea ___muldf3,a3			
	move.l #___divdf3,d3			
	move.l #_cos,d7				
	lea ___subdf3,a6			
	move.l d3,a5				
	move.l 40(sp),d3			
_?L27:						
						
	move.l d6,-(sp)				
	move.l 52(sp),a0			
	jbsr (a0)				
	move.l #1413754136,(sp)			
	move.l #1075388923,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,40(sp)			
	move.l d1,44(sp)			
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	addq.l #1,d6				
						
	cmp.l d3,d6				
	jbeq _?L8				
						
	move.l d6,-(sp)				
	move.l 52(sp),a0			
	jbsr (a0)				
	move.l #1413754136,(sp)			
	move.l #1075388923,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,40(sp)			
	move.l d1,44(sp)			
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	addq.l #1,d6				
						
	cmp.l d3,d6				
	jbne _?L27				
	jbra _?L8				
_?L5:						
						
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l a3,-(sp)				
	jbsr _fvec_set_all			
	lea (12,sp),sp				
						
	moveq #0,d0				
	jbra _?L1				
_?L9:						
						
	pea _?LC5				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L12				
						
	pea _?LC6				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L55				
						
	pea _?LC7				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L15				
						
	tst.l 40(sp)				
	jbeq _?L8				
						
	move.l #___floatunsidf,48(sp)		
	move.l 40(sp),-(sp)			
	lea ___floatunsidf,a0			
	jbsr (a0)				
						
	lea ___subdf3,a6			
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,56(sp)			
	move.l a1,60(sp)			
	move.l d3,a1				
						
	sub.l a0,a0				
	lea ___muldf3,a3			
	move.l #___divdf3,d3			
	move.l #_cos,d7				
	move.l #___adddf3,76(sp)		
	move.l d7,a4				
	move.l d3,a5				
	move.l a0,d3				
_?L30:						
						
	move.l d3,-(sp)				
	move.l a1,40(sp)			
	move.l 52(sp),a0			
	jbsr (a0)				
	move.l d0,d4				
	move.l d1,d5				
	move.l #1413754136,(sp)			
	move.l #1075388923,-(sp)		
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d6				
	move.l d1,d7				
	move.l d6,68(sp)			
	move.l d7,72(sp)			
						
	move.l #1413754136,-(sp)		
	move.l #1076437499,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l #2134057426,-(sp)		
	move.l #1077074300,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,88(sp)			
	move.l d5,92(sp)			
						
	move.l #-1287802994,-(sp)		
	move.l #1071595556,-(sp)		
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l #-1889785610,-(sp)		
	move.l #1071052226,-(sp)		
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l #-1983244099,-(sp)		
	move.l #1069684086,-(sp)		
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 92(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l #270754738,-(sp)			
	move.l #1065872303,-(sp)		
	move.l 100(sp),-(sp)			
	move.l 100(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,68(sp)			
	move.l d1,72(sp)			
						
	move.l 36(sp),a1			
	move.l d0,(a1)+				
	move.l d1,(a1)+				
						
	addq.l #1,d3				
						
	cmp.l 40(sp),d3				
	jbeq _?L8				
						
	move.l d3,-(sp)				
	move.l a1,40(sp)			
	move.l 52(sp),a0			
	jbsr (a0)				
	move.l d0,d4				
	move.l d1,d5				
	move.l #1413754136,(sp)			
	move.l #1075388923,-(sp)		
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d6				
	move.l d1,d7				
	move.l d6,68(sp)			
	move.l d7,72(sp)			
						
	move.l #1413754136,-(sp)		
	move.l #1076437499,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l #2134057426,-(sp)		
	move.l #1077074300,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,88(sp)			
	move.l d5,92(sp)			
						
	move.l #-1287802994,-(sp)		
	move.l #1071595556,-(sp)		
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l #-1889785610,-(sp)		
	move.l #1071052226,-(sp)		
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l #-1983244099,-(sp)		
	move.l #1069684086,-(sp)		
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 92(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l #270754738,-(sp)			
	move.l #1065872303,-(sp)		
	move.l 100(sp),-(sp)			
	move.l 100(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,68(sp)			
	move.l d1,72(sp)			
						
	move.l 36(sp),a1			
	move.l d0,(a1)+				
	move.l d1,(a1)+				
						
	addq.l #1,d3				
						
	cmp.l 40(sp),d3				
	jbne _?L30				
	jbra _?L8				
_?L54:						
						
	pea _?LC0				
	clr.l -(sp)				
	jbsr _aubio_log				
	addq.l #8,sp				
						
	moveq #1,d0				
_?L56:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (60,sp),sp				
	rts					
_?L12:						
						
	tst.l 40(sp)				
	jbeq _?L8				
						
	move.l #___floatunsidf,48(sp)		
	move.l 40(sp),-(sp)			
	lea ___floatunsidf,a0			
	jbsr (a0)				
	addq.l #4,sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d3,a4				
	moveq #0,d6				
	lea ___muldf3,a3			
	move.l #___divdf3,d3			
	move.l #_cos,d7				
	lea ___subdf3,a6			
	move.l d3,a5				
	move.l 40(sp),d3			
_?L28:						
						
	move.l d6,-(sp)				
	move.l 52(sp),a0			
	jbsr (a0)				
	move.l #1413754136,(sp)			
	move.l #1075388923,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr (a6)				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,40(sp)			
	move.l d1,44(sp)			
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	addq.l #1,d6				
						
	cmp.l d3,d6				
	jbeq _?L8				
						
	move.l d6,-(sp)				
	move.l 52(sp),a0			
	jbsr (a0)				
	move.l #1413754136,(sp)			
	move.l #1075388923,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr (a6)				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,40(sp)			
	move.l d1,44(sp)			
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	addq.l #1,d6				
						
	cmp.l d3,d6				
	jbne _?L28				
	jbra _?L8				
_?L55:						
						
	tst.l 40(sp)				
	jbeq _?L8				
						
	move.l #___floatunsidf,48(sp)		
	move.l 40(sp),-(sp)			
	lea ___floatunsidf,a0			
	jbsr (a0)				
						
	lea ___subdf3,a6			
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,56(sp)			
	move.l a1,60(sp)			
	move.l d3,a4				
						
	sub.l a5,a5				
	lea ___muldf3,a3			
	move.l #___divdf3,d3			
	move.l #_cos,d7				
	move.l #___adddf3,76(sp)		
	move.l d3,d0				
	move.l a5,d3				
	move.l a4,a5				
	move.l a6,88(sp)			
	move.l d7,a6				
	move.l d0,a4				
_?L29:						
						
	move.l d3,-(sp)				
	move.l 52(sp),a0			
	jbsr (a0)				
	move.l d0,d6				
	move.l d1,d7				
	move.l #1413754136,(sp)			
	move.l #1075388923,-(sp)		
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	addq.l #8,sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l #1413754136,-(sp)		
	move.l #1076437499,-(sp)		
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	addq.l #8,sp				
	move.l d0,d6				
	move.l d1,d7				
						
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l #-1374389535,-(sp)		
	move.l #1071309127,-(sp)		
	move.l 104(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l #1202590843,-(sp)		
	move.l #1068792545,-(sp)		
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 92(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,68(sp)			
	move.l d1,72(sp)			
						
	move.l d0,(a5)+				
	move.l d1,(a5)+				
						
	addq.l #1,d3				
						
	cmp.l 40(sp),d3				
	jbeq _?L8				
						
	move.l d3,-(sp)				
	move.l 52(sp),a0			
	jbsr (a0)				
	move.l d0,d6				
	move.l d1,d7				
	move.l #1413754136,(sp)			
	move.l #1075388923,-(sp)		
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	addq.l #8,sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l #1413754136,-(sp)		
	move.l #1076437499,-(sp)		
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	addq.l #8,sp				
	move.l d0,d6				
	move.l d1,d7				
						
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l #-1374389535,-(sp)		
	move.l #1071309127,-(sp)		
	move.l 104(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l #1202590843,-(sp)		
	move.l #1068792545,-(sp)		
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 92(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,68(sp)			
	move.l d1,72(sp)			
						
	move.l d0,(a5)+				
	move.l d1,(a5)+				
						
	addq.l #1,d3				
						
	cmp.l 40(sp),d3				
	jbne _?L29				
	jbra _?L8				
_?L15:						
						
	pea _?LC8				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L17				
						
	tst.l 40(sp)				
	jbeq _?L8				
						
	lea ___floatunsixf,a4			
	move.l 40(sp),a0			
	pea -1(a0)				
	jbsr (a4)				
	addq.l #4,sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d2,d6				
	lea ___mulxf3,a3			
	move.l _?LC13+8,-(sp)			
	move.l _?LC13+4,-(sp)			
	move.l _?LC13,-(sp)			
	move.l d2,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (24,sp),sp				
	move.l d0,76(sp)			
	move.l d1,80(sp)			
	move.l d2,84(sp)			
						
	move.l _?LC14+8,-(sp)			
	move.l _?LC14+4,-(sp)			
	move.l _?LC14,-(sp)			
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (24,sp),sp				
	move.l d0,56(sp)			
	move.l d1,60(sp)			
	move.l d2,64(sp)			
	move.l d3,d7				
						
	moveq #0,d4				
	move.l #___subxf3,d6			
	move.l #___divxf3,d5			
	lea ___truncxfdf2,a6			
	lea _exp,a5				
	move.l 40(sp),d3			
_?L31:						
						
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #4,sp				
	move.l 84(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l d2,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d6,a0				
	jbsr (a0)				
	lea (24,sp),sp				
						
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l d2,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d5,a0				
	jbsr (a0)				
	lea (24,sp),sp				
						
	move.l d2,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d2,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (24,sp),sp				
						
	move.l _?LC15+8,-(sp)			
	move.l _?LC15+4,-(sp)			
	move.l _?LC15,-(sp)			
	move.l d2,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (24,sp),sp				
						
	move.l d2,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	addq.l #8,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
	move.l d0,48(sp)			
	move.l d1,52(sp)			
						
	move.l d7,a0				
	move.l d0,(a0)+				
	move.l d1,(a0)+				
	move.l a0,d7				
						
	addq.l #1,d4				
						
	cmp.l d3,d4				
	jbeq _?L8				
						
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #4,sp				
	move.l 84(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l d2,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d6,a0				
	jbsr (a0)				
	lea (24,sp),sp				
						
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l d2,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d5,a0				
	jbsr (a0)				
	lea (24,sp),sp				
						
	move.l d2,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d2,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (24,sp),sp				
						
	move.l _?LC15+8,-(sp)			
	move.l _?LC15+4,-(sp)			
	move.l _?LC15,-(sp)			
	move.l d2,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (24,sp),sp				
						
	move.l d2,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	addq.l #8,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
	move.l d0,48(sp)			
	move.l d1,52(sp)			
						
	move.l d7,a0				
	move.l d0,(a0)+				
	move.l d1,(a0)+				
	move.l a0,d7				
						
	addq.l #1,d4				
						
	cmp.l d3,d4				
	jbne _?L31				
	jbra _?L8				
_?L17:						
						
	pea _?LC9				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L19				
						
	tst.l 40(sp)				
	jbeq _?L8				
						
	move.l #___floatunsidf,48(sp)		
	move.l 40(sp),-(sp)			
	lea ___floatunsidf,a0			
	jbsr (a0)				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l #___adddf3,80(sp)		
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	move.l 92(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
	move.l d3,a4				
						
	sub.l a5,a5				
	lea ___muldf3,a3			
	move.l #___divdf3,d3			
	lea ___subdf3,a6			
	move.l d3,56(sp)			
	move.l 40(sp),d3			
_?L32:						
						
	move.l a5,-(sp)				
	move.l 52(sp),a0			
	jbsr (a0)				
	move.l d0,a0				
	move.l d1,(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l 92(sp),a0			
	jbsr (a0)				
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (12,sp),sp				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 72(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,40(sp)			
	move.l d1,44(sp)			
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	addq.l #1,a5				
						
	cmp.l d3,a5				
	jbeq _?L8				
						
	move.l a5,-(sp)				
	move.l 52(sp),a0			
	jbsr (a0)				
	move.l d0,a0				
	move.l d1,(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l 92(sp),a0			
	jbsr (a0)				
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (12,sp),sp				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 72(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,40(sp)			
	move.l d1,44(sp)			
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	addq.l #1,a5				
						
	cmp.l d3,a5				
	jbne _?L32				
	jbra _?L8				
_?L19:						
						
	pea _?LC10				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L21				
						
	tst.l 40(sp)				
	jbeq _?L8				
						
	lea ___floatunsisf,a4			
	move.l 40(sp),-(sp)			
	jbsr (a4)				
	move.l d0,d4				
						
	lea ___addsf3,a3			
	move.l #0x3f800000,(sp)			
	move.l d0,-(sp)				
	jbsr (a3)				
	addq.l #8,sp				
	move.l d0,d5				
						
	moveq #0,d6				
	lea ___subdf3,a6			
	move.l #___subsf3,d7			
	lea ___extendsfdf2,a5			
	move.l a6,76(sp)			
	move.l d3,a6				
	move.l 40(sp),d3			
_?L33:						
						
	move.l d6,-(sp)				
	jbsr (a4)				
	move.l d0,(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	addq.l #4,sp				
	move.l d4,(sp)				
	move.l d0,-(sp)				
	move.l d7,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	move.l d5,(sp)				
	move.l d0,-(sp)				
	jbsr ___divsf3				
	addq.l #8,sp				
						
	bclr #31,d0				
	move.l d0,-(sp)				
	jbsr (a5)				
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	move.l 92(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,48(sp)			
	move.l d1,52(sp)			
						
	move.l d0,(a6)+				
	move.l d1,(a6)+				
						
	addq.l #1,d6				
						
	cmp.l d3,d6				
	jbeq _?L8				
						
	move.l d6,-(sp)				
	jbsr (a4)				
	move.l d0,(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	addq.l #4,sp				
	move.l d4,(sp)				
	move.l d0,-(sp)				
	move.l d7,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	move.l d5,(sp)				
	move.l d0,-(sp)				
	jbsr ___divsf3				
	addq.l #8,sp				
						
	bclr #31,d0				
	move.l d0,-(sp)				
	jbsr (a5)				
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	move.l 92(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,48(sp)			
	move.l d1,52(sp)			
						
	move.l d0,(a6)+				
	move.l d1,(a6)+				
						
	addq.l #1,d6				
						
	cmp.l d3,d6				
	jbne _?L33				
	jbra _?L8				
_?L21:						
						
	pea _?LC11				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L12				
						
	move.l d4,-(sp)				
	pea _?LC12				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	moveq #1,d0				
	jbra _?L56				
						
	.align	2				
	.globl	_new_aubio_window		
						
_new_aubio_window:				
	move.l d3,-(sp)				
						
	move.l 12(sp),-(sp)			
	jbsr _new_fvec				
	addq.l #4,sp				
	move.l d0,d3				
						
	jbeq _?L58				
						
	move.l 8(sp),-(sp)			
	move.l d0,-(sp)				
	jbsr _fvec_set_window			
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L68				
						
	move.l d3,d0				
	move.l (sp)+,d3				
	rts					
_?L68:						
						
	move.l d3,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L58:						
						
	moveq #0,d3				
						
	move.l d3,d0				
	move.l (sp)+,d3				
	rts					
						
	.align	2				
	.globl	_aubio_unwrap2pi		
						
_aubio_unwrap2pi:				
	movem.l d4/d5/a3,-(sp)			
	move.l 16(sp),d4			
	move.l 20(sp),d5			
						
	lea ___adddf3,a3			
	move.l #1413754136,-(sp)		
	move.l #1074340347,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l d0,a0				
	add.l #-2147483648,a0			
						
	move.l #1413754136,-(sp)		
	move.l #1075388923,-(sp)		
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr ___divdf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _floor				
						
	addq.l #4,sp				
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l #1413754136,(sp)			
	move.l #1075388923,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	movem.l (sp)+,d4/d5/a3			
	rts					
						
	.align	2				
	.globl	_fvec_mean			
						
_fvec_mean:					
	subq.l #8,sp				
	movem.l d3/d4/a3/a4,-(sp)		
	move.l 28(sp),a0			
						
	move.l (a0),d4				
						
	jbeq _?L74				
	move.l 4(a0),a3				
	move.l d4,d3				
	lsl.l #3,d3				
	add.l a3,d3				
						
	sub.l a0,a0				
	sub.l a1,a1				
	lea ___adddf3,a4			
_?L73:						
						
	subq.l #8,sp				
	move.l (a3)+,(sp)			
	move.l (a3)+,4(sp)			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	cmp.l d3,a3				
	jbne _?L73				
						
	move.l d4,-(sp)				
	move.l a0,24(sp)			
	move.l d1,20(sp)			
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l 20(sp),a0			
	move.l 16(sp),a1			
						
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d3/d4/a3/a4		
	addq.l #8,sp				
	rts					
_?L74:						
						
	clr.l d2				
	clr.l d3				
						
	move.l d2,a0				
	move.l d3,a1				
						
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d3/d4/a3/a4		
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_fvec_sum			
						
_fvec_sum:					
	movem.l d3/a3/a4,-(sp)			
	move.l 16(sp),a0			
						
	move.l (a0),d3				
						
	jbeq _?L81				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
						
	sub.l a0,a0				
	sub.l a1,a1				
	lea ___adddf3,a4			
_?L80:						
						
	subq.l #8,sp				
	move.l (a3)+,(sp)			
	move.l (a3)+,4(sp)			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	cmp.l a3,d3				
	jbne _?L80				
						
	move.l a0,d0				
	move.l a1,d1				
	movem.l (sp)+,d3/a3/a4			
	rts					
_?L81:						
						
	sub.l a0,a0				
	sub.l a1,a1				
						
	move.l a0,d0				
	move.l a1,d1				
	movem.l (sp)+,d3/a3/a4			
	rts					
						
	.globl	___gtdf2			
	.align	2				
	.globl	_fvec_max			
						
_fvec_max:					
	movem.l d3/d4/d5/d6/d7/a3/a4,-(sp)	
	move.l 32(sp),a1			
						
	move.l 4(a1),a0				
						
	move.l (a0),d6				
	move.l 4(a0),d7				
						
	move.l (a1),d0				
						
	moveq #1,d1				
	cmp.l d0,d1				
	jbcc _?L85				
	lea (8,a0),a3				
	lsl.l #3,d0				
	move.l a0,d3				
	add.l d0,d3				
	lea ___gtdf2,a4				
_?L88:						
						
	move.l (a3)+,d4				
	move.l (a3)+,d5				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L87				
						
	move.l d4,d6				
	move.l d5,d7				
_?L87:						
						
	cmp.l d3,a3				
	jbne _?L88				
_?L85:						
						
	move.l d6,d0				
	move.l d7,d1				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4	
	rts					
						
	.globl	___ltdf2			
	.align	2				
	.globl	_fvec_min			
						
_fvec_min:					
	movem.l d3/d4/d5/d6/d7/a3/a4,-(sp)	
	move.l 32(sp),a1			
						
	move.l 4(a1),a0				
						
	move.l (a0),d6				
	move.l 4(a0),d7				
						
	move.l (a1),d0				
						
	moveq #1,d1				
	cmp.l d0,d1				
	jbcc _?L92				
	lea (8,a0),a3				
	lsl.l #3,d0				
	move.l a0,d3				
	add.l d0,d3				
	lea ___ltdf2,a4				
_?L95:						
						
	move.l (a3)+,d4				
	move.l (a3)+,d5				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L94				
						
	move.l d4,d6				
	move.l d5,d7				
_?L94:						
						
	cmp.l d3,a3				
	jbne _?L95				
_?L92:						
						
	move.l d6,d0				
	move.l d7,d1				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4	
	rts					
						
	.align	2				
	.globl	_fvec_min_elem			
						
_fvec_min_elem:					
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 40(sp),a0			
						
	move.l 4(a0),a3				
						
	move.l (a3),d6				
	move.l 4(a3),d7				
						
	move.l (a0),a4				
						
	sub.l a6,a6				
						
	cmp.w #0,a4				
	jbeq _?L99				
						
	moveq #0,d3				
	lea ___ltdf2,a5				
_?L102:						
						
	move.l (a3)+,d4				
	move.l (a3)+,d5				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L101				
	move.l d3,a6				
						
	move.l d4,d6				
	move.l d5,d7				
_?L101:						
						
	addq.l #1,d3				
						
	cmp.l a4,d3				
	jbne _?L102				
_?L99:						
						
	move.l a6,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.align	2				
	.globl	_fvec_max_elem			
						
_fvec_max_elem:					
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 40(sp),a0			
						
	move.l (a0),a4				
						
	cmp.w #0,a4				
	jbeq _?L111				
	move.l 4(a0),a3				
						
	clr.l d6				
	clr.l d7				
						
	sub.l a6,a6				
						
	moveq #0,d3				
	lea ___gtdf2,a5				
_?L110:						
						
	move.l (a3)+,d4				
	move.l (a3)+,d5				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L109				
	move.l d3,a6				
						
	move.l d4,d6				
	move.l d5,d7				
_?L109:						
						
	addq.l #1,d3				
						
	cmp.l a4,d3				
	jbne _?L110				
						
	move.l a6,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L111:						
						
	sub.l a6,a6				
						
	move.l a6,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.align	2				
	.globl	_fvec_shift			
						
_fvec_shift:					
	subq.l #8,sp				
	movem.l d3/d4/d5/a3,-(sp)		
	move.l 28(sp),a0			
						
	move.l (a0),d0				
						
	move.l d0,d1				
	lsr.l #1,d1				
						
	moveq #-2,d2				
	and.l d0,d2				
						
	cmp.l d0,d2				
	jbcc _?L116				
						
	move.l d1,d2				
	addq.l #1,d2				
						
	tst.l d1				
	jbeq _?L115				
						
	move.l 4(a0),a2				
	move.l d2,d3				
	lsl.l #3,d3				
	lea (a2,d3.l),a3			
	move.l a3,a1				
	move.l a2,a0				
						
	moveq #0,d0				
_?L119:						
						
	move.l (a0),16(sp)			
	move.l 4(a0),20(sp)			
	move.l (a1),d4				
	move.l 4(a1),d5				
	move.l d4,(a0)+				
	move.l d5,(a0)+				
	move.l 16(sp),(a1)+			
	move.l 20(sp),(a1)+			
						
	addq.l #1,d0				
						
	cmp.l d1,d0				
	jbcs _?L119				
						
	cmp.l d1,d2				
	jbeq _?L115				
						
	tst.l d1				
	jbeq _?L115				
	move.l -8(a3),16(sp)			
	move.l -4(a3),20(sp)			
	lea -8(a2,d3.l),a0			
	add.l d2,d1				
	lsl.l #3,d1				
	lea -8(a2,d1.l),a1			
_?L120:						
						
	move.l 8(a0),(a0)			
	move.l 12(a0),4(a0)			
	addq.l #8,a0				
	move.l 16(sp),(a0)			
	move.l 20(sp),4(a0)			
						
	cmp.l a1,a0				
	jbne _?L120				
_?L115:						
						
	movem.l (sp)+,d3/d4/d5/a3		
	addq.l #8,sp				
	rts					
_?L116:						
						
	tst.l d1				
	jbeq _?L115				
						
	move.l d1,d2				
						
	move.l 4(a0),a2				
	move.l d2,d3				
	lsl.l #3,d3				
	lea (a2,d3.l),a3			
	move.l a3,a1				
	move.l a2,a0				
						
	moveq #0,d0				
	jbra _?L119				
						
	.align	2				
	.globl	_fvec_ishift			
						
_fvec_ishift:					
	subq.l #8,sp				
	movem.l d3/d4/d5,-(sp)			
	move.l 24(sp),a0			
						
	move.l (a0),d1				
						
	move.l d1,d0				
	lsr.l #1,d0				
						
	moveq #-2,d2				
	and.l d1,d2				
						
	cmp.l d1,d2				
	jbcc _?L132				
						
	move.l d0,d3				
	addq.l #1,d3				
						
	tst.l d0				
	jbeq _?L131				
						
	move.l 4(a0),d2				
	move.l d2,a2				
	move.l d3,d1				
	lsl.l #3,d1				
	lea (a2,d1.l),a0			
	move.l d2,a1				
						
	moveq #0,d1				
_?L135:						
						
	move.l (a1),12(sp)			
	move.l 4(a1),16(sp)			
	move.l (a0),d4				
	move.l 4(a0),d5				
	move.l d4,(a1)+				
	move.l d5,(a1)+				
	move.l 12(sp),(a0)+			
	move.l 16(sp),(a0)+			
						
	addq.l #1,d1				
						
	cmp.l d0,d1				
	jbcs _?L135				
						
	cmp.l d0,d3				
	jbeq _?L131				
						
	tst.l d0				
	jbeq _?L131				
						
	lsl.l #3,d0				
	move.l d2,a0				
	add.l d0,a0				
_?L136:						
						
	move.l (a0),d0				
	move.l 4(a0),d1				
	move.l (a2),d2				
	move.l 4(a2),d3				
	move.l d2,(a0)				
	move.l d3,4(a0)				
	move.l d0,(a2)+				
	move.l d1,(a2)+				
						
	cmp.l a0,a2				
	jbne _?L136				
_?L131:						
						
	movem.l (sp)+,d3/d4/d5			
	addq.l #8,sp				
	rts					
_?L132:						
						
	tst.l d0				
	jbeq _?L131				
						
	move.l d0,d3				
						
	move.l 4(a0),d2				
	move.l d2,a2				
	move.l d3,d1				
	lsl.l #3,d1				
	lea (a2,d1.l),a0			
	move.l d2,a1				
						
	moveq #0,d1				
	jbra _?L135				
						
	.align	2				
	.globl	_fvec_push			
						
_fvec_push:					
	move.l a3,-(sp)				
	move.l d3,-(sp)				
	move.l 12(sp),a0			
						
	move.l (a0),d3				
						
	move.l 4(a0),a3				
						
	moveq #1,d0				
	cmp.l d3,d0				
	jbeq _?L148				
						
	move.l d3,d0				
	lsl.l #3,d0				
	move.l d0,a0				
	pea -8(a0)				
	pea 8(a3)				
	move.l a3,-(sp)				
	jbsr _memmove				
	lea (12,sp),sp				
						
	add.l #536870911,d3			
	lsl.l #3,d3				
	add.l d3,a3				
_?L148:						
						
	move.l 16(sp),d0			
	move.l 20(sp),d1			
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	move.l (sp)+,d3				
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_fvec_clamp			
						
_fvec_clamp:					
	lea (-16,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 56(sp),a0			
	move.l 60(sp),d7			
	move.l 64(sp),d6			
						
	move.l (a0),d3				
						
	jbeq _?L154				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___gtdf2,a4				
						
	lea ___ltdf2,a5				
						
	move.l d7,d0				
	bclr #31,d0				
	move.l d0,a6				
_?L162:						
						
	move.l (a3)+,d4				
	move.l (a3)+,d5				
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L156				
						
	move.l d7,d0				
	bclr #31,d0				
	move.l d0,36(sp)			
	move.l d6,40(sp)			
						
	move.l 40(sp),-(sp)			
	move.l 40(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L156				
						
	move.l d7,d0				
	move.l d6,d1				
	move.l d0,-8(a3)			
	move.l d1,-4(a3)			
_?L159:						
						
	cmp.l d3,a3				
	jbne _?L162				
_?L154:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
_?L156:						
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L159				
						
	move.l #-2147483648,a0			
	add.l a6,a0				
	move.l a0,44(sp)			
	move.l d6,48(sp)			
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L159				
						
	move.l d7,d0				
	add.l #-2147483648,d0			
	move.l d0,-8(a3)			
	move.l d6,-4(a3)			
						
	cmp.l d3,a3				
	jbne _?L162				
	jbra _?L154				
						
	.align	2				
	.globl	_aubio_level_lin		
						
_aubio_level_lin:				
	movem.l d3/d4/d5/d6/a3/a4/a5,-(sp)	
	move.l 32(sp),a0			
						
	move.l (a0),d6				
						
	jbeq _?L176				
	move.l 4(a0),a3				
	move.l d6,d3				
	lsl.l #3,d3				
	add.l a3,d3				
						
	clr.l d4				
	clr.l d5				
	lea ___muldf3,a5			
	lea ___adddf3,a4			
_?L175:						
						
	move.l (a3)+,d0				
	move.l (a3)+,d1				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	cmp.l d3,a3				
	jbne _?L175				
						
	move.l d6,-(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d3/d4/d5/d6/a3/a4/a5	
	rts					
_?L176:						
						
	sub.l a0,a0				
	sub.l a1,a1				
						
	move.l a0,d4				
	move.l a1,d5				
						
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d3/d4/d5/d6/a3/a4/a5	
	rts					
						
	.align	2				
	.globl	_fvec_local_hfc			
						
_fvec_local_hfc:				
	subq.l #4,sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 44(sp),a0			
						
	move.l (a0),36(sp)			
						
	jbeq _?L183				
	move.l 4(a0),a3				
						
	moveq #0,d3				
						
	clr.l d4				
	clr.l d5				
	lea ___floatunsidf,a6			
	lea ___muldf3,a5			
	lea ___adddf3,a4			
_?L182:						
						
	addq.l #1,d3				
						
	move.l (a3)+,d6				
	move.l (a3)+,d7				
						
	move.l d3,-(sp)				
	jbsr (a6)				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	cmp.l 36(sp),d3				
	jbne _?L182				
						
	move.l d4,d0				
	move.l d5,d1				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #4,sp				
	rts					
_?L183:						
						
	clr.l d4				
	clr.l d5				
						
	move.l d4,d0				
	move.l d5,d1				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #4,sp				
	rts					
						
	.align	2				
	.globl	_fvec_min_removal		
						
_fvec_min_removal:				
	subq.l #8,sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 48(sp),a0			
						
	move.l 4(a0),a3				
						
	move.l (a3),d4				
	move.l 4(a3),d5				
						
	move.l (a0),d3				
						
	moveq #1,d0				
	cmp.l d3,d0				
	jbcc _?L188				
	lea (8,a3),a4				
	lsl.l #3,d3				
	lea (a3,d3.l),a6			
	lea ___gtdf2,a5				
_?L191:						
						
	move.l (a4)+,d6				
	move.l (a4)+,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L189				
						
	move.l d6,d4				
	move.l d7,d5				
_?L189:						
						
	cmp.l a4,a6				
	jbne _?L191				
	add.l a3,d3				
	lea ___subdf3,a4			
_?L194:						
						
	move.l (a3),d0				
	move.l 4(a3),d1				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l a3,d3				
	jbne _?L194				
_?L187:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
_?L188:						
						
	tst.l d3				
	jbeq _?L187				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___subdf3,a4			
	jbra _?L194				
						
	.align	2				
	.globl	_fvec_alpha_norm		
						
_fvec_alpha_norm:				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 40(sp),a2			
						
	move.l (a2),a5				
						
	cmp.w #0,a5				
	jbeq _?L206				
	move.l 4(a2),a6				
	move.l a5,d3				
	lsl.l #3,d3				
	add.l a6,d3				
						
	clr.l d4				
	clr.l d5				
	lea _pow,a3				
	lea ___adddf3,a4			
_?L205:						
						
	move.l (a6),d1				
	move.l 4(a6),d0				
	addq.l #8,a6				
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d1,d6				
	bclr #31,d6				
	move.l d0,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	cmp.l a6,d3				
	jbne _?L205				
						
	move.l a5,-(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,a4				
	move.l d1,a5				
	lea ___divdf3,a6			
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr (a6)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L206:						
						
	sub.l a4,a4				
	sub.l a5,a5				
						
	move.l a4,d4				
	move.l a5,d5				
	lea _pow,a3				
						
	lea ___divdf3,a6			
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr (a6)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.align	2				
	.globl	_fvec_alpha_normalise		
						
_fvec_alpha_normalise:				
	subq.l #8,sp				
	movem.l d3/d4/d5/a3/a4,-(sp)		
	move.l 32(sp),a3			
						
	move.l 40(sp),-(sp)			
	move.l 40(sp),-(sp)			
	move.l a3,-(sp)				
	jbsr _fvec_alpha_norm			
	lea (12,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l (a3),d3				
						
	jbeq _?L210				
	move.l 4(a3),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___divdf3,a4			
_?L212:						
						
	move.l (a3),d0				
	move.l 4(a3),d1				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,20(sp)			
	move.l d1,24(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l a3,d3				
	jbne _?L212				
_?L210:						
						
	movem.l (sp)+,d3/d4/d5/a3/a4		
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_fvec_add			
						
_fvec_add:					
	subq.l #8,sp				
	movem.l d3/d4/d5/a3/a4,-(sp)		
	move.l 32(sp),a0			
	move.l 36(sp),d4			
	move.l 40(sp),d5			
						
	move.l (a0),d3				
						
	jbeq _?L219				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___adddf3,a4			
_?L221:						
						
	move.l (a3),d0				
	move.l 4(a3),d1				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,20(sp)			
	move.l d1,24(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l a3,d3				
	jbne _?L221				
_?L219:						
						
	movem.l (sp)+,d3/d4/d5/a3/a4		
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_fvec_mul			
						
_fvec_mul:					
	subq.l #8,sp				
	movem.l d3/d4/d5/a3/a4,-(sp)		
	move.l 32(sp),a0			
	move.l 36(sp),d4			
	move.l 40(sp),d5			
						
	move.l (a0),d3				
						
	jbeq _?L228				
	move.l 4(a0),a3				
	lsl.l #3,d3				
	add.l a3,d3				
	lea ___muldf3,a4			
_?L230:						
						
	move.l (a3),d0				
	move.l 4(a3),d1				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,20(sp)			
	move.l d1,24(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l a3,d3				
	jbne _?L230				
_?L228:						
						
	movem.l (sp)+,d3/d4/d5/a3/a4		
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_fvec_median			
						
_fvec_median:					
	lea (-40,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 80(sp),a0			
						
	move.l 4(a0),56(sp)			
						
	move.l (a0),d1				
	subq.l #1,d1				
	move.l d1,64(sp)			
						
	lsr.l #1,d1				
	move.l d1,72(sp)			
						
	tst.l 64(sp)				
	jbeq _?L243				
						
	moveq #1,d0				
	cmp.l 64(sp),d0				
	jbeq _?L257				
						
	clr.l 68(sp)				
						
	moveq #1,d1				
	move.l d1,40(sp)			
	lea ___gtdf2,a6				
_?L241:						
						
	move.l 64(sp),d0			
	add.l 68(sp),d0				
						
	lsr.l #1,d0				
						
	lsl.l #3,d0				
	move.l 56(sp),a3			
	add.l d0,a3				
	move.l (a3),d4				
	move.l 4(a3),d5				
						
	move.l 64(sp),d0			
	lsl.l #3,d0				
	move.l 56(sp),a4			
	add.l d0,a4				
	move.l (a4),d6				
	move.l 4(a4),d7				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L245				
						
	move.l d6,(a3)				
	move.l d7,4(a3)				
	move.l d4,(a4)				
	move.l d5,4(a4)				
	move.l d4,d6				
	move.l d5,d7				
_?L245:						
						
	move.l 68(sp),d0			
	lsl.l #3,d0				
	add.l 56(sp),d0				
	move.l d0,60(sp)			
	move.l d0,a2				
	move.l (a2),d4				
	move.l 4(a2),d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L247				
						
	move.l 60(sp),a0			
	move.l d6,(a0)				
	move.l d7,4(a0)				
	move.l d4,(a4)				
	move.l d5,4(a4)				
						
	move.l (a0),d4				
	move.l 4(a0),d5				
_?L247:						
						
	move.l (a3),d6				
	move.l 4(a3),d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L249				
						
	move.l d4,(a3)				
	move.l d5,4(a3)				
	move.l 60(sp),a2			
	move.l d6,(a2)				
	move.l d7,4(a2)				
						
	move.l (a3),d6				
	move.l 4(a3),d7				
_?L249:						
						
	move.l 40(sp),d0			
	lsl.l #3,d0				
	move.l 56(sp),a0			
	add.l d0,a0				
	move.l (a0),d1				
	move.l 4(a0),d2				
	move.l d1,(a3)				
	move.l d2,4(a3)				
	move.l d6,(a0)				
	move.l d7,4(a0)				
						
	move.l 60(sp),a2			
	move.l (a2),a0				
	move.l 4(a2),a1				
	move.l 56(sp),a2			
	lea 8(a2,d0.l),a2			
	move.l 64(sp),a3			
	move.l a2,44(sp)			
	move.l a0,d6				
	move.l a1,d7				
_?L251:						
						
	addq.l #1,40(sp)			
						
	move.l 44(sp),a0			
	addq.l #8,44(sp)			
	move.l (a0)+,48(sp)			
	move.l (a0)+,52(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L251				
	move.l a3,d3				
	subq.l #1,d3				
	move.l d3,d0				
	lsl.l #3,d0				
	move.l 56(sp),a5			
	add.l d0,a5				
	move.l a3,36(sp)			
						
	move.l d3,a3				
	move.l a5,a4				
						
	subq.l #8,a5				
						
	move.l 8(a5),d4				
	move.l 12(a5),d5			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L265				
_?L268:						
	subq.l #1,d3				
	move.l a3,36(sp)			
						
	move.l d3,a3				
	move.l a5,a4				
						
	subq.l #8,a5				
						
	move.l 8(a5),d4				
	move.l 12(a5),d5			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L268				
_?L265:						
						
	cmp.l 40(sp),d3				
	jbcs _?L254				
						
	move.l 44(sp),a2			
	move.l d4,-8(a2)			
	move.l d5,-4(a2)			
	move.l 48(sp),(a4)			
	move.l 52(sp),4(a4)			
						
	move.l 60(sp),a0			
	move.l (a0),d6				
	move.l 4(a0),d7				
						
	jbra _?L251				
_?L254:						
						
	move.l 60(sp),a2			
	move.l d4,(a2)				
	move.l d5,4(a2)				
	move.l d6,(a4)				
	move.l d7,4(a4)				
						
	cmp.l 72(sp),d3				
	jbhi _?L255				
						
	jbeq _?L269				
						
	move.l 40(sp),68(sp)			
_?L256:						
						
	move.l 64(sp),d2			
	cmp.l 68(sp),d2				
	jbls _?L243				
						
	move.l 68(sp),d1			
	addq.l #1,d1				
	move.l d1,40(sp)			
						
	cmp.l d1,d2				
	jbne _?L241				
						
	move.l 68(sp),d0			
	lsl.l #3,d0				
	move.l 56(sp),a4			
	add.l d0,a4				
						
	move.l d2,d0				
	lsl.l #3,d0				
_?L240:						
						
	move.l (a4),d6				
	move.l 4(a4),d7				
						
	move.l 56(sp),a3			
	add.l d0,a3				
	move.l (a3),d4				
	move.l 4(a3),d5				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L243				
						
	move.l d4,(a4)				
	move.l d5,4(a4)				
	move.l d6,(a3)				
	move.l d7,4(a3)				
_?L243:						
						
	move.l 72(sp),d0			
	lsl.l #3,d0				
	move.l 56(sp),a0			
	move.l 4(a0,d0.l),d1			
	move.l (a0,d0.l),d0			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (40,sp),sp				
	rts					
_?L269:						
						
	move.l 40(sp),68(sp)			
_?L255:						
						
	move.l 36(sp),d1			
	subq.l #2,d1				
	move.l d1,64(sp)			
	jbra _?L256				
_?L257:						
						
	move.l 56(sp),a4			
	moveq #8,d0				
	lea ___gtdf2,a6				
	jbra _?L240				
						
	.align	2				
	.globl	_fvec_moving_thres		
						
_fvec_moving_thres:				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)	
	move.l 36(sp),a5			
	move.l 40(sp),a3			
	move.l 44(sp),d7			
	move.l 48(sp),d1			
	move.l 52(sp),d3			
						
	move.l 4(a3),a4				
	move.l d1,d6				
	addq.l #1,d6				
						
	move.l d7,d5				
	add.l d6,d5				
						
	move.l (a5),d0				
						
	move.l d7,a0				
	addq.l #1,a0				
						
	cmp.l a0,d3				
	jbcc _?L271				
						
	moveq #1,d4				
	sub.l d3,d4				
	add.l d7,d4				
						
	jbeq _?L272				
						
	move.l d4,d0				
	lsl.l #3,d0				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l a4,-(sp)				
	jbsr _memset				
	lea (12,sp),sp				
_?L272:						
						
	cmp.l d5,d4				
	jbcc _?L275				
						
	move.l 4(a5),d1				
	move.l d3,d0				
	sub.l d7,d0				
	add.l d4,d0				
	lsl.l #3,d0				
	move.l d0,a0				
	add.l d1,a0				
	lsl.l #3,d4				
	add.l d4,a4				
	move.l d3,d0				
	add.l d6,d0				
	lsl.l #3,d0				
	add.l d1,d0				
_?L274:						
						
	move.l (a0)+,d1				
	move.l (a0)+,d2				
	move.l d1,(a4)+				
	move.l d2,(a4)+				
						
	cmp.l d0,a0				
	jbne _?L274				
_?L275:						
						
	move.l a3,36(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5	
						
	jbra _fvec_median			
_?L271:						
						
	add.l d3,d1				
						
	cmp.l d1,d0				
	jbls _?L293				
						
	tst.l d5				
	jbeq _?L275				
	sub.l d7,d3				
	lsl.l #3,d3				
	move.l 4(a5),a1				
	add.l d3,a1				
	lsl.l #3,d5				
	add.l a4,d5				
_?L279:						
						
	move.l (a1)+,d2				
	move.l (a1)+,d3				
	move.l d2,(a4)+				
	move.l d3,(a4)+				
						
	cmp.l a4,d5				
	jbeq _?L275				
						
	move.l (a1)+,d2				
	move.l (a1)+,d3				
	move.l d2,(a4)+				
	move.l d3,(a4)+				
						
	cmp.l a4,d5				
	jbne _?L279				
	jbra _?L275				
_?L293:						
						
	sub.l d3,d0				
						
	add.l d7,d0				
						
	jbeq _?L278				
	sub.l d7,d3				
	lsl.l #3,d3				
	move.l 4(a5),a0				
	add.l d3,a0				
	move.l a4,a1				
	move.l d0,d1				
	lsl.l #3,d1				
	add.l a4,d1				
_?L280:						
						
	move.l (a0)+,d2				
	move.l (a0)+,d3				
	move.l d2,(a1)+				
	move.l d3,(a1)+				
						
	cmp.l a1,d1				
	jbne _?L280				
_?L278:						
						
	cmp.l d5,d0				
	jbcc _?L275				
						
	sub.l d0,d5				
	lsl.l #3,d5				
	lsl.l #3,d0				
	move.l d5,-(sp)				
	clr.l -(sp)				
	pea (a4,d0.l)				
	jbsr _memset				
	lea (12,sp),sp				
						
	move.l a3,36(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5	
						
	jbra _fvec_median			
						
	.align	2				
	.globl	_fvec_adapt_thres		
						
_fvec_adapt_thres:				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 40(sp),a4			
	move.l 44(sp),d5			
	move.l 48(sp),d6			
	move.l 52(sp),d7			
						
	move.l (a4),d4				
						
	jbeq _?L294				
						
	moveq #0,d3				
	lea _fvec_moving_thres,a6		
	lea ___subdf3,a5			
_?L296:						
						
	move.l d3,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a6)				
	lea (20,sp),sp				
						
	move.l d3,d2				
	lsl.l #3,d2				
	move.l 4(a4),a3				
	add.l d2,a3				
						
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	addq.l #1,d3				
						
	cmp.l d4,d3				
	jbne _?L296				
_?L294:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.globl	___gedf2			
	.align	2				
	.globl	_fvec_quadratic_peak_pos	
						
_fvec_quadratic_peak_pos:			
	subq.l #8,sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 48(sp),a0			
	move.l 52(sp),d3			
						
	jbeq _?L304				
						
	move.l (a0),d1				
						
	move.l d1,d0				
	subq.l #1,d0				
						
	cmp.l d0,d3				
	jbeq _?L304				
						
	move.l d3,d4				
	subq.l #1,d4				
						
	move.l d3,d0				
	addq.l #1,d0				
						
	move.l 4(a0),a0				
						
	move.l d3,d2				
	lsl.l #3,d2				
	move.l (a0,d2.l),a4			
	move.l 4(a0,d2.l),a5			
						
	move.l d4,d2				
	lsl.l #3,d2				
	move.l (a0,d2.l),d6			
	move.l 4(a0,d2.l),d7			
						
	cmp.l d1,d0				
	jbcc _?L315				
						
	lsl.l #3,d0				
	move.l 4(a0,d0.l),a1			
	move.l (a0,d0.l),a0			
						
	lea ___subdf3,a6			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l a0,56(sp)			
	move.l a1,52(sp)			
	jbsr (a6)				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	lea ___adddf3,a3			
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 40(sp),a0			
	move.l 36(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d3,-(sp)				
	jbsr ___floatunsidf			
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a1				
	move.l d1,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
_?L315:						
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___gedf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L316				
_?L304:						
						
	move.l d3,-(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,a1				
	move.l d1,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
_?L316:						
						
	move.l d4,-(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,a1				
	move.l d1,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
						
	.globl	___ledf2			
	.globl	___fixunsdfsi			
	.globl	___eqdf2			
	.align	2				
	.globl	_fvec_quadratic_peak_mag	
						
_fvec_quadratic_peak_mag:			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 40(sp),a3			
						
	lea ___floatunsidf,a4			
	move.l (a3),-(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___ledf2				
	lea (16,sp),sp				
						
	clr.l d4				
	clr.l d5				
						
	tst.l d0				
	jble _?L317				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L317				
						
	lea ___subdf3,a6			
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr (a6)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
						
	move.l d0,d3				
	addq.l #1,d3				
						
	move.l d3,-(sp)				
	jbsr (a4)				
	addq.l #4,sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 4(a3),a3				
						
	lsl.l #3,d3				
	move.l (a3,d3.l),d4			
	move.l 4(a3,d3.l),d5			
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr ___eqdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L317				
						
	move.l 12(a3,d3.l),-(sp)		
	move.l 8(a3,d3.l),-(sp)			
	move.l -4(a3,d3.l),-(sp)		
	move.l -8(a3,d3.l),-(sp)		
	jbsr (a6)				
	lea (16,sp),sp				
						
	lea ___muldf3,a3			
	clr.l -(sp)				
	move.l #1070596096,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr (a6)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
_?L317:						
						
	move.l d4,d0				
	move.l d5,d1				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.align	2				
	.globl	_fvec_peakpick			
						
_fvec_peakpick:					
	movem.l d3/d4/d5/a3/a4,-(sp)		
						
	move.l 24(sp),a0			
	move.l 4(a0),a3				
						
	move.l 28(sp),d3			
	lsl.l #3,d3				
	move.l (a3,d3.l),d4			
	move.l 4(a3,d3.l),d5			
						
	lea ___gtdf2,a4				
	move.l -4(a3,d3.l),-(sp)		
	move.l -8(a3,d3.l),-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L336				
						
	move.l 12(a3,d3.l),-(sp)		
	move.l 8(a3,d3.l),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L336				
						
	moveq #1,d3				
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L339				
						
	move.l d3,d0				
_?L326:						
						
	movem.l (sp)+,d3/d4/d5/a3/a4		
	rts					
_?L336:						
	moveq #0,d0				
	movem.l (sp)+,d3/d4/d5/a3/a4		
	rts					
_?L339:						
						
	moveq #0,d3				
						
	move.l d3,d0				
	jbra _?L326				
						
	.align	2				
	.globl	_aubio_quadfrac			
						
_aubio_quadfrac:				
	movem.l d4/d5/d6/d7/a3/a4/a5,-(sp)	
	move.l 40(sp),d6			
	move.l 44(sp),d7			
						
	lea ___adddf3,a4			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	lea ___subdf3,a5			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 44(sp),-(sp)			
	move.l 44(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
						
	move.l 52(sp),-(sp)			
	move.l 52(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	lea ___muldf3,a3			
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	clr.l -(sp)				
	move.l #1074266112,-(sp)		
	move.l 44(sp),-(sp)			
	move.l 44(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	clr.l -(sp)				
	move.l #1074790400,-(sp)		
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 52(sp),-(sp)			
	move.l 52(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 36(sp),-(sp)			
	move.l 36(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	movem.l (sp)+,d4/d5/d6/d7/a3/a4/a5	
	rts					
						
	.align	2				
	.globl	_aubio_freqtomidi		
						
_aubio_freqtomidi:				
	movem.l d4/d5/a3,-(sp)			
	move.l 16(sp),d4			
	move.l 20(sp),d5			
						
	clr.l -(sp)				
	move.l #1073741824,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L345				
						
	clr.l -(sp)				
	move.l #1090021888,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L348				
_?L345:						
						
	sub.l a1,a1				
	sub.l a0,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/a3			
	rts					
_?L348:						
						
	lea ___divdf3,a3			
	clr.l -(sp)				
	move.l #1075544064,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _log				
						
	addq.l #4,sp				
	move.l #-17155601,(sp)			
	move.l #1072049730,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1076363264,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1074266112,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,a1				
	move.l d1,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/a3			
	rts					
						
	.align	2				
	.globl	_aubio_miditofreq		
						
_aubio_miditofreq:				
	movem.l d4/d5/a3,-(sp)			
	move.l 16(sp),d4			
	move.l 20(sp),d5			
						
	clr.l -(sp)				
	move.l #1080131584,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L354				
						
	sub.l a1,a1				
	sub.l a0,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/a3			
	rts					
_?L354:						
						
	clr.l -(sp)				
	move.l #1074266112,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___adddf3				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1076363264,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	lea ___muldf3,a3			
	move.l #-17155601,-(sp)			
	move.l #1072049730,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _exp				
						
	addq.l #4,sp				
	clr.l (sp)				
	move.l #1075544064,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a1				
	move.l d1,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/a3			
	rts					
						
	.align	2				
	.globl	_aubio_bintofreq		
						
_aubio_bintofreq:				
	movem.l d4/d5/d6/d7/a4/a5,-(sp)		
	move.l 28(sp),d6			
	move.l 32(sp),d7			
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	sub.l a4,a4				
	sub.l a5,a5				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L361				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d4/d5/d6/d7/a4/a5		
	rts					
_?L361:						
						
	move.l a4,d6				
	move.l a5,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d4/d5/d6/d7/a4/a5		
	rts					
						
	.align	2				
	.globl	_aubio_bintomidi		
						
_aubio_bintomidi:				
	movem.l d4/d5/d6/d7/a3/a4/a5/a6,-(sp)	
	move.l 36(sp),d6			
	move.l 40(sp),d7			
						
	lea ___divdf3,a6			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	sub.l a4,a4				
	sub.l a5,a5				
	lea ___gtdf2,a3				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L371				
_?L363:						
						
	lea ___muldf3,a4			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	clr.l -(sp)				
	move.l #1073741824,-(sp)		
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L368				
						
	clr.l -(sp)				
	move.l #1090021888,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L372				
_?L368:						
						
	sub.l a1,a1				
	sub.l a0,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/d6/d7/a3/a4/a5/a6	
	rts					
_?L371:						
						
	move.l a4,d6				
	move.l a5,d7				
	jbra _?L363				
_?L372:						
						
	clr.l -(sp)				
	move.l #1075544064,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _log				
						
	addq.l #4,sp				
	move.l #-17155601,(sp)			
	move.l #1072049730,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1076363264,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1074266112,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,a1				
	move.l d1,a0				
						
	move.l a1,d0				
	move.l a0,d1				
	movem.l (sp)+,d4/d5/d6/d7/a3/a4/a5/a6	
	rts					
						
	.align	2				
	.globl	_aubio_freqtobin		
						
_aubio_freqtobin:				
	movem.l d4/d5/d6/d7/a4/a5,-(sp)		
	move.l 28(sp),d6			
	move.l 32(sp),d7			
						
	move.l 40(sp),-(sp)			
	move.l 40(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	sub.l a4,a4				
	sub.l a5,a5				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L379				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d4/d5/d6/d7/a4/a5		
	rts					
_?L379:						
						
	move.l a4,d6				
	move.l a5,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d4/d5/d6/d7/a4/a5		
	rts					
						
	.align	2				
	.globl	_aubio_miditobin		
						
_aubio_miditobin:				
	movem.l d4/d5/d6/d7/a3/a4/a5/a6,-(sp)	
	move.l 36(sp),d4			
	move.l 40(sp),d5			
						
	lea ___gtdf2,a3				
	clr.l -(sp)				
	move.l #1080131584,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L388				
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	clr.l d6				
	clr.l d7				
	lea ___muldf3,a6			
_?L382:						
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	movem.l (sp)+,d4/d5/d6/d7/a3/a4/a5/a6	
	rts					
_?L388:						
						
	clr.l -(sp)				
	move.l #1074266112,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
						
	lea ___divdf3,a4			
	clr.l -(sp)				
	move.l #1076363264,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	lea ___muldf3,a6			
	move.l #-17155601,-(sp)			
	move.l #1072049730,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _exp				
						
	addq.l #4,sp				
	clr.l (sp)				
	move.l #1075544064,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	sub.l a4,a4				
	sub.l a5,a5				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L382				
	move.l a4,d6				
	move.l a5,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	movem.l (sp)+,d4/d5/d6/d7/a3/a4/a5/a6	
	rts					
						
	.align	2				
	.globl	_aubio_is_power_of_two		
						
_aubio_is_power_of_two:				
						
	move.l 4(sp),d0				
	subq.l #1,d0				
						
	and.l 4(sp),d0				
						
	seq d0					
	ext.w d0				
	ext.l d0				
						
	neg.l d0				
	rts					
						
	.align	2				
	.globl	_aubio_next_power_of_two	
						
_aubio_next_power_of_two:			
	move.l 4(sp),d1				
						
	moveq #1,d0				
	cmp.l d1,d0				
	jbcc _?L394				
_?L393:						
						
	add.l d0,d0				
						
	cmp.l d1,d0				
	jbcs _?L393				
						
	rts					
_?L394:						
						
	moveq #1,d0				
						
	rts					
						
	.align	2				
	.globl	_aubio_power_of_two_order	
						
_aubio_power_of_two_order:			
	move.l 4(sp),d1				
						
	moveq #1,d0				
	cmp.l d1,d0				
	jbcc _?L402				
_?L400:						
						
	add.l d0,d0				
						
	cmp.l d1,d0				
	jbcs _?L400				
						
	asr.l #1,d0				
						
	moveq #0,d1				
_?L401:						
						
	addq.l #1,d1				
						
	asr.l #1,d0				
						
	jbne _?L401				
						
	move.l d1,d0				
						
	rts					
_?L402:						
						
	moveq #0,d0				
						
	rts					
						
	.align	2				
	.globl	_aubio_db_spl			
						
_aubio_db_spl:					
	movem.l d3/d4/d5/d6/a3/a4/a5,-(sp)	
	move.l 32(sp),a0			
						
	move.l (a0),d6				
						
	jbeq _?L410				
	move.l 4(a0),a3				
	move.l d6,d3				
	lsl.l #3,d3				
	add.l a3,d3				
						
	clr.l d4				
	clr.l d5				
	lea ___muldf3,a4			
	lea ___adddf3,a5			
_?L409:						
						
	move.l (a3)+,d0				
	move.l (a3)+,d1				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	cmp.l d3,a3				
	jbne _?L409				
						
	move.l d6,-(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _log10				
						
	addq.l #4,sp				
	clr.l (sp)				
	move.l #1076101120,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	movem.l (sp)+,d3/d4/d5/d6/a3/a4/a5	
	rts					
_?L410:						
						
	sub.l a0,a0				
	sub.l a1,a1				
						
	move.l a0,d4				
	move.l a1,d5				
	lea ___muldf3,a4			
						
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _log10				
						
	addq.l #4,sp				
	clr.l (sp)				
	move.l #1076101120,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	movem.l (sp)+,d3/d4/d5/d6/a3/a4/a5	
	rts					
						
	.align	2				
	.globl	_aubio_silence_detection	
						
_aubio_silence_detection:			
	movem.l d3/d4/d5/d6/a3/a4/a5,-(sp)	
	move.l 32(sp),a0			
						
	move.l (a0),d6				
						
	jbeq _?L418				
	move.l 4(a0),a3				
	move.l d6,d3				
	lsl.l #3,d3				
	add.l a3,d3				
						
	clr.l d4				
	clr.l d5				
	lea ___muldf3,a4			
	lea ___adddf3,a5			
_?L416:						
						
	move.l (a3)+,d0				
	move.l (a3)+,d1				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	cmp.l d3,a3				
	jbne _?L416				
						
	move.l d6,-(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _log10				
						
	addq.l #4,sp				
	clr.l (sp)				
	move.l #1076101120,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	moveq #1,d3				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L422				
_?L417:						
						
	move.l d3,d0				
	movem.l (sp)+,d3/d4/d5/d6/a3/a4/a5	
	rts					
_?L422:						
						
	moveq #0,d3				
						
	move.l d3,d0				
	movem.l (sp)+,d3/d4/d5/d6/a3/a4/a5	
	rts					
_?L418:						
						
	sub.l a0,a0				
	sub.l a1,a1				
						
	move.l a0,d4				
	move.l a1,d5				
	lea ___muldf3,a4			
						
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _log10				
						
	addq.l #4,sp				
	clr.l (sp)				
	move.l #1076101120,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	moveq #1,d3				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L417				
	jbra _?L422				
						
	.align	2				
	.globl	_aubio_level_detection		
						
_aubio_level_detection:				
	movem.l d3/d4/d5/d6/a3/a4/a5,-(sp)	
	move.l 32(sp),a0			
						
	move.l (a0),d6				
						
	jbeq _?L428				
	move.l 4(a0),a3				
	move.l d6,d3				
	lsl.l #3,d3				
	add.l a3,d3				
						
	clr.l d4				
	clr.l d5				
	lea ___muldf3,a4			
	lea ___adddf3,a5			
_?L425:						
						
	move.l (a3)+,d0				
	move.l (a3)+,d1				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	cmp.l d3,a3				
	jbne _?L425				
						
	move.l d6,-(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,a0				
	move.l d1,a1				
_?L424:						
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _log10				
						
	addq.l #4,sp				
	clr.l (sp)				
	move.l #1076101120,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L423				
						
	move.l #1072693248,d4			
	clr.l d5				
_?L423:						
						
	move.l d4,d0				
	move.l d5,d1				
	movem.l (sp)+,d3/d4/d5/d6/a3/a4/a5	
	rts					
_?L428:						
						
	sub.l a0,a0				
	sub.l a1,a1				
						
	move.l a0,d4				
	move.l a1,d5				
	lea ___muldf3,a4			
	jbra _?L424				
						
	.align	2				
	.globl	_aubio_zero_crossing_rate	
						
_aubio_zero_crossing_rate:			
	subq.l #4,sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 44(sp),a0			
						
	move.l (a0),36(sp)			
						
	moveq #1,d0				
	cmp.l 36(sp),d0				
	jbcc _?L441				
						
	move.l 4(a0),d0				
	move.l d0,a3				
	move.l (a3)+,d4				
	move.l (a3)+,d5				
	move.l 36(sp),d3			
	lsl.l #3,d3				
	add.l d0,d3				
						
	sub.l a5,a5				
	lea ___ltdf2,a4				
						
	clr.l d6				
	clr.l d7				
						
	lea ___gedf2,a6				
_?L440:						
	move.l d4,d0				
	move.l d5,d1				
						
	move.l (a3)+,d4				
	move.l (a3)+,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L450				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L447				
_?L437:						
						
	cmp.l a3,d3				
	jbne _?L440				
_?L451:						
						
	lea ___floatunsidf,a3			
	move.l a5,-(sp)				
	jbsr (a3)				
	addq.l #4,sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 36(sp),-(sp)			
	jbsr (a3)				
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #4,sp				
	rts					
_?L450:						
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L437				
_?L447:						
						
	addq.l #1,a5				
						
	cmp.l a3,d3				
	jbne _?L440				
	jbra _?L451				
_?L441:						
	clr.l d4				
	clr.l d5				
	lea ___floatunsidf,a3			
						
	move.l 36(sp),-(sp)			
	jbsr (a3)				
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #4,sp				
	rts					
						
	.align	2				
	.globl	_aubio_autocorr			
						
_aubio_autocorr:				
	lea (-20,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 60(sp),a0			
						
	move.l (a0),d7				
						
	move.l 4(a0),52(sp)			
						
	move.l 64(sp),a0			
	move.l 4(a0),a6				
						
	tst.l d7				
	jbeq _?L452				
	move.l a6,40(sp)			
	move.l d7,d3				
	lsl.l #3,d3				
	add.l 52(sp),d3				
	move.l 52(sp),36(sp)			
						
	moveq #0,d6				
	lea ___muldf3,a4			
	lea ___adddf3,a3			
_?L454:						
						
	cmp.l d7,d6				
	jbcc _?L464				
	move.l 36(sp),a6			
	move.l 52(sp),a5			
						
	clr.l d4				
	clr.l d5				
_?L455:						
						
	move.l (a5)+,d0				
	move.l (a5)+,d1				
						
	subq.l #8,sp				
	move.l (a6)+,(sp)			
	move.l (a6)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	cmp.l d3,a6				
	jbne _?L455				
						
	move.l d7,d0				
	sub.l d6,d0				
	move.l d0,-(sp)				
	jbsr ___floatunsidf			
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,44(sp)			
	move.l d1,48(sp)			
						
	move.l 40(sp),a0			
	addq.l #8,40(sp)			
	move.l d0,(a0)+				
	move.l d1,(a0)+				
						
	addq.l #1,d6				
						
	addq.l #8,36(sp)			
	cmp.l d7,d6				
	jbne _?L454				
_?L452:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (20,sp),sp				
	rts					
_?L464:						
						
	clr.l d4				
	clr.l d5				
						
	move.l d7,d0				
	sub.l d6,d0				
	move.l d0,-(sp)				
	jbsr ___floatunsidf			
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,44(sp)			
	move.l d1,48(sp)			
						
	move.l 40(sp),a0			
	addq.l #8,40(sp)			
	move.l d0,(a0)+				
	move.l d1,(a0)+				
						
	addq.l #1,d6				
						
	addq.l #8,36(sp)			
	cmp.l d7,d6				
	jbne _?L454				
	jbra _?L452				
						
	.align	2				
	.globl	_aubio_cleanup			
						
_aubio_cleanup:					
						
	rts					
						
						
