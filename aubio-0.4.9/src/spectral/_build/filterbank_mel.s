* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"filterbank_mel.c"		
						
						
						
						
						
	.text					
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$6e
	.dc.b $6f,$74,$20,$65,$6e,$6f,$75,$67
	.dc.b $68,$20,$66,$69,$6c,$74,$65,$72
	.dc.b $73,$2c,$20,$25,$64,$20,$61,$6c
	.dc.b $6c,$6f,$63,$61,$74,$65,$64,$20
	.dc.b $62,$75,$74,$20,$25,$64,$20,$72
	.dc.b $65,$71,$75,$65,$73,$74,$65,$64
	.dc.b $0a
	.dc.b $00				
_?LC1:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$74
	.dc.b $6f,$6f,$20,$6d,$61,$6e,$79,$20
	.dc.b $66,$69,$6c,$74,$65,$72,$73,$2c
	.dc.b $20,$25,$64,$20,$61,$6c,$6c,$6f
	.dc.b $63,$61,$74,$65,$64,$20,$62,$75
	.dc.b $74,$20,$25,$64,$20,$72,$65,$71
	.dc.b $75,$65,$73,$74,$65,$64,$0a
	.dc.b $00				
	.globl	___ltdf2			
_?LC2:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$66,$69,$6c
	.dc.b $74,$65,$72,$62,$61,$6e,$6b,$5f
	.dc.b $6d,$65,$6c,$3a,$20,$66,$72,$65
	.dc.b $71,$73,$20,$6d,$75,$73,$74,$20
	.dc.b $63,$6f,$6e,$74,$61,$69,$6e,$20
	.dc.b $6f,$6e,$6c,$79,$20,$70,$6f,$73
	.dc.b $69,$74,$69,$76,$65,$20,$76,$61
	.dc.b $6c,$75,$65,$73,$2e,$0a
	.dc.b $00				
	.globl	___muldf3			
	.globl	___gtdf2			
_?LC3:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$66
	.dc.b $69,$6c,$74,$65,$72,$62,$61,$6e
	.dc.b $6b,$5f,$6d,$65,$6c,$3a,$20,$66
	.dc.b $72,$65,$71,$73,$20,$73,$68,$6f
	.dc.b $75,$6c,$64,$20,$63,$6f,$6e,$74
	.dc.b $61,$69,$6e,$20,$6f,$6e,$6c,$79
	.dc.b $20,$76,$61,$6c,$75,$65,$73,$20
	.dc.b $3c,$20,$73,$61,$6d,$70,$6c,$65
	.dc.b $72,$61,$74,$65,$20,$2f,$20,$32
	.dc.b $2e,$0a
	.dc.b $00				
_?LC4:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$66,$69,$6c
	.dc.b $74,$65,$72,$62,$61,$6e,$6b,$5f
	.dc.b $6d,$65,$6c,$3a,$20,$66,$72,$65
	.dc.b $71,$73,$20,$73,$68,$6f,$75,$6c
	.dc.b $64,$20,$62,$65,$20,$61,$20,$6c
	.dc.b $69,$73,$74,$20,$6f,$66,$20,$66
	.dc.b $72,$65,$71,$75,$65,$6e,$63,$69
	.dc.b $65,$73,$20,$73,$6f,$72,$74,$65
	.dc.b $64,$20,$66,$72,$6f,$6d,$20,$6c
	.dc.b $6f,$77,$20,$74,$6f,$20,$68,$69
	.dc.b $67,$68,$2c,$20,$62,$75,$74,$20
	.dc.b $66,$72,$65,$71,$5b,$25,$64,$5d
	.dc.b $20,$3c,$20,$66,$72,$65,$71,$5b
	.dc.b $25,$64,$2d,$31,$5d,$0a
	.dc.b $00				
	.globl	___eqdf2			
_?LC5:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$66
	.dc.b $69,$6c,$74,$65,$72,$62,$61,$6e
	.dc.b $6b,$5f,$6d,$65,$6c,$3a,$20,$73
	.dc.b $65,$74,$5f,$74,$72,$69,$61,$6e
	.dc.b $67,$6c,$65,$5f,$62,$61,$6e,$64
	.dc.b $73,$20,$72,$65,$63,$65,$69,$76
	.dc.b $65,$64,$20,$61,$20,$6c,$69,$73
	.dc.b $74,$20,$77,$69,$74,$68,$20,$74
	.dc.b $77,$69,$63,$65,$20,$74,$68,$65
	.dc.b $20,$66,$72,$65,$71,$75,$65,$6e
	.dc.b $63,$79,$20,$25,$66,$0a
	.dc.b $00				
	.globl	___nedf2			
	.globl	___subdf3			
	.globl	___divdf3			
	.globl	___floatunsidf			
	.globl	___ledf2			
	.globl	___gedf2			
	.globl	___adddf3			
	.text					
	.align	2				
	.globl	_aubio_filterbank_set_triangle_bands
						
_aubio_filterbank_set_triangle_bands:		
	lea (-92,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 136(sp),a4			
						
	move.l 132(sp),-(sp)			
	jbsr _aubio_filterbank_get_coeffs	
	addq.l #4,sp				
	move.l d0,72(sp)			
						
	move.l d0,a0				
	move.l 4(a0),44(sp)			
						
	move.l (a0),104(sp)			
						
	move.l (a4),d0				
						
	move.l d0,d1				
	subq.l #2,d1				
						
	cmp.l 44(sp),d1				
	jbhi _?L82				
						
	jbcs _?L83				
_?L3:						
						
	tst.l d0				
	jbeq _?L17				
						
	moveq #0,d6				
	moveq #0,d3				
	lea ___ltdf2,a5				
						
	lea ___muldf3,a6			
						
	move.l #___gtdf2,d7			
_?L4:						
						
	move.l 4(a4),a3				
						
	move.l (a3,d6.l),d4			
	move.l 4(a3,d6.l),d5			
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L84				
						
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l 152(sp),-(sp)			
	move.l 152(sp),-(sp)			
	jbsr (a6)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,a1				
	jbsr (a1)				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L85				
						
	tst.l d3				
	jbeq _?L12				
						
	move.l -8(a3,d6.l),a0			
	move.l -4(a3,d6.l),a1			
						
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a0,56(sp)			
	move.l a1,52(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l 40(sp),a0			
	move.l 36(sp),a1			
	tst.l d0				
	jblt _?L86				
						
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___eqdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L87				
_?L12:						
						
	addq.l #1,d3				
						
	addq.l #8,d6				
	cmp.l (a4),d3				
	jbcs _?L4				
_?L17:						
						
	move.l 44(sp),-(sp)			
	lea _new_fvec,a3			
	jbsr (a3)				
	addq.l #4,sp				
	move.l d0,112(sp)			
						
	move.l 44(sp),-(sp)			
	jbsr (a3)				
	addq.l #4,sp				
	move.l d0,116(sp)			
						
	move.l 44(sp),-(sp)			
	jbsr (a3)				
	addq.l #4,sp				
	move.l d0,124(sp)			
						
	move.l 44(sp),-(sp)			
	jbsr (a3)				
	addq.l #4,sp				
	move.l d0,120(sp)			
						
	move.l 104(sp),-(sp)			
	jbsr (a3)				
	addq.l #4,sp				
	move.l d0,60(sp)			
						
	tst.l 44(sp)				
	jbeq _?L88				
	move.l 4(a4),a0				
	move.l 112(sp),a4			
	move.l 4(a4),a3				
	move.l 124(sp),a1			
	move.l 4(a1),a2				
	move.l 116(sp),a4			
	move.l 4(a4),a1				
	move.l 44(sp),d2			
	lsl.l #3,d2				
	move.l d2,108(sp)			
	move.l d2,d0				
	add.l a0,d0				
_?L18:						
						
	move.l (a0)+,d1				
	move.l (a0)+,d2				
	move.l d1,(a3)+				
	move.l d2,(a3)+				
						
	move.l (a0),d1				
	move.l 4(a0),d2				
	move.l d1,(a2)+				
	move.l d2,(a2)+				
						
	move.l 8(a0),d1				
	move.l 12(a0),d2			
	move.l d1,(a1)+				
	move.l d2,(a1)+				
						
	cmp.l a0,d0				
	jbne _?L18				
						
	move.l 132(sp),-(sp)			
	jbsr _aubio_filterbank_get_norm		
						
	clr.l (sp)				
	clr.l -(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___nedf2				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L73				
	move.l 116(sp),a0			
	move.l 4(a0),a3				
	move.l 112(sp),a1			
	move.l 4(a1),a5				
	move.l 120(sp),a0			
	move.l 4(a0),a4				
	move.l 108(sp),d3			
	add.l a3,d3				
	move.l #___subdf3,56(sp)		
	move.l #___divdf3,88(sp)		
	lea ___subdf3,a6			
	move.l #___divdf3,d4			
_?L24:						
						
	move.l (a3)+,d0				
	move.l (a3)+,d1				
						
	subq.l #8,sp				
	move.l (a5)+,(sp)			
	move.l (a5)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1073741824,-(sp)		
	move.l d4,a1				
	jbsr (a1)				
	lea (16,sp),sp				
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	cmp.l d3,a3				
	jbne _?L24				
						
	tst.l 104(sp)				
	jbeq _?L89				
_?L26:						
						
	move.l 104(sp),d2			
	subq.l #1,d2				
	move.l d2,92(sp)			
						
	move.l d2,d0				
	add.l d2,d0				
						
	lea ___floatunsidf,a3			
	move.l d0,-(sp)				
	jbsr (a3)				
	addq.l #4,sp				
	move.l d0,d4				
	move.l d1,d5				
	moveq #0,d3				
	moveq #0,d6				
	lea _aubio_bintofreq,a4			
	move.l 104(sp),d7			
	move.l 60(sp),a5			
_?L29:						
						
	move.l 4(a5),a6				
	add.l d3,a6				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 152(sp),-(sp)			
	move.l 152(sp),-(sp)			
	move.l d6,-(sp)				
	jbsr (a3)				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (24,sp),sp				
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	addq.l #1,d6				
						
	addq.l #8,d3				
	cmp.l d7,d6				
	jbcs _?L29				
						
	move.l 72(sp),-(sp)			
	jbsr _fmat_zeros			
	addq.l #4,sp				
						
	tst.l 44(sp)				
	jbeq _?L45				
	move.l 44(sp),d2			
	lsl.l #3,d2				
	move.l d2,108(sp)			
	move.l #___subdf3,56(sp)		
	move.l #___divdf3,88(sp)		
						
	move.l 120(sp),a0			
	move.l 4(a0),96(sp)			
						
	move.l 124(sp),a1			
	move.l 4(a1),80(sp)			
						
	move.l 112(sp),a4			
	move.l 4(a4),84(sp)			
						
	move.l 116(sp),a0			
	move.l 4(a0),a5				
						
	sub.l a4,a4				
	clr.l 64(sp)				
	move.l 72(sp),a6			
_?L31:						
						
	move.l 84(sp),a0			
	move.l (a0,a4.l),d6			
	move.l 4(a0,a4.l),d7			
						
	moveq #1,d0				
	cmp.l 104(sp),d0			
	jbeq _?L90				
	move.l 60(sp),a1			
	move.l 4(a1),d4				
						
	moveq #0,d3				
	move.l #___ledf2,d5			
	move.l d4,a3				
	move.l 92(sp),d4			
_?L35:						
						
	move.l (a3)+,d0				
	move.l (a3)+,d1				
						
	addq.l #1,d3				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d5,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L32				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L49				
_?L32:						
						
	cmp.l d4,d3				
	jbne _?L35				
_?L49:						
	move.l 92(sp),52(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 88(sp),a1			
	move.l 4(a1,a4.l),-(sp)			
	move.l (a1,a4.l),-(sp)			
	move.l 72(sp),a0			
	jbsr (a0)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 104(sp),a1			
	move.l 4(a1,a4.l),-(sp)			
	move.l (a1,a4.l),-(sp)			
	move.l 104(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,72(sp)			
	move.l a1,76(sp)			
	move.l d3,d6				
	lsl.l #3,d6				
	move.l a5,100(sp)			
	move.l 64(sp),d7			
_?L36:						
						
	cmp.l 52(sp),d3				
	jbcc _?L91				
						
	move.l 60(sp),a1			
	move.l 4(a1),a5				
						
	move.l 8(a6),a0				
						
	move.l (a0,d7.l),a3			
						
	move.l 84(sp),a0			
	move.l 4(a0,a4.l),-(sp)			
	move.l (a0,a4.l),-(sp)			
	move.l 4(a5,d6.l),-(sp)			
	move.l (a5,d6.l),-(sp)			
	move.l 72(sp),a1			
	jbsr (a1)				
	lea (16,sp),sp				
						
	move.l 76(sp),-(sp)			
	move.l 76(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,(a3,d6.l)			
	move.l d1,4(a3,d6.l)			
						
	addq.l #1,d3				
	addq.l #8,d6				
						
	move.l 80(sp),a0			
	move.l (a0,a4.l),d4			
	move.l 4(a0,a4.l),d5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 4(a5,d6.l),-(sp)			
	move.l (a5,d6.l),-(sp)			
	jbsr ___gedf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L36				
	move.l 100(sp),a5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 4(a5,a4.l),-(sp)			
	move.l (a5,a4.l),-(sp)			
	move.l 72(sp),a0			
	jbsr (a0)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 104(sp),a1			
	move.l 4(a1,a4.l),-(sp)			
	move.l (a1,a4.l),-(sp)			
	move.l 104(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,44(sp)			
	move.l a1,48(sp)			
	move.l d3,d7				
	lsl.l #3,d7				
	move.l d7,d6				
_?L39:						
						
	cmp.l 52(sp),d3				
	jbcc _?L43				
						
	move.l 8(a6),a0				
						
	move.l 64(sp),a1			
	move.l (a0,a1.l),a3			
	add.l d6,a3				
						
	move.l 60(sp),a0			
	move.l 4(a0),d7				
						
	move.l d7,a1				
	lea (a1,d6.l),a0			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	move.l 4(a5,a4.l),-(sp)			
	move.l (a5,a4.l),-(sp)			
	move.l 72(sp),a1			
	jbsr (a1)				
	lea (16,sp),sp				
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l 4(a3),(sp)			
	move.l (a3),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L92				
						
	move.l d4,(a3)				
	move.l d5,4(a3)				
						
	addq.l #1,d3				
	addq.l #8,d6				
						
	move.l 4(a5,a4.l),-(sp)			
	move.l (a5,a4.l),-(sp)			
	move.l d7,a0				
	lea (a0,d6.l),a1			
	move.l 4(a1),-(sp)			
	move.l (a1),-(sp)			
	jbsr ___gedf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L39				
_?L43:						
						
	addq.l #4,64(sp)			
	addq.l #8,a4				
	cmp.l 108(sp),a4			
	jbne _?L31				
_?L45:						
						
	move.l 112(sp),-(sp)			
	lea _del_fvec,a3			
	jbsr (a3)				
	addq.l #4,sp				
						
	move.l 116(sp),-(sp)			
	jbsr (a3)				
	addq.l #4,sp				
						
	move.l 124(sp),-(sp)			
	jbsr (a3)				
	addq.l #4,sp				
						
	move.l 120(sp),-(sp)			
	jbsr (a3)				
	addq.l #4,sp				
						
	move.l 60(sp),-(sp)			
	jbsr (a3)				
	addq.l #4,sp				
						
	moveq #0,d0				
_?L1:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (92,sp),sp				
	rts					
_?L87:						
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	pea _?LC5				
	pea 4.w					
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	addq.l #1,d3				
						
	addq.l #8,d6				
	cmp.l (a4),d3				
	jbcs _?L4				
	jbra _?L17				
_?L85:						
						
	pea _?LC3				
	pea 4.w					
	jbsr _aubio_log				
	addq.l #8,sp				
						
	addq.l #1,d3				
						
	addq.l #8,d6				
	cmp.l (a4),d3				
	jbcs _?L4				
	jbra _?L17				
_?L83:						
						
	move.l d1,-(sp)				
	move.l 48(sp),-(sp)			
	pea _?LC1				
	pea 4.w					
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	move.l (a4),d0				
	jbra _?L3				
_?L82:						
						
	move.l d1,-(sp)				
	move.l 48(sp),-(sp)			
	pea _?LC0				
	pea 4.w					
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	move.l (a4),d0				
						
	move.l d0,d1				
	subq.l #2,d1				
						
	cmp.l 44(sp),d1				
	jbcc _?L3				
	jbra _?L83				
_?L92:						
	clr.l d4				
	clr.l d5				
						
	move.l d4,(a3)				
	move.l d5,4(a3)				
						
	addq.l #1,d3				
	addq.l #8,d6				
						
	move.l 4(a5,a4.l),-(sp)			
	move.l (a5,a4.l),-(sp)			
	move.l d7,a0				
	lea (a0,d6.l),a1			
	move.l 4(a1),-(sp)			
	move.l (a1),-(sp)			
	jbsr ___gedf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L39				
	jbra _?L43				
_?L91:						
						
	move.l 100(sp),a5			
	move.l 80(sp),a1			
	move.l (a1,a4.l),d4			
	move.l 4(a1,a4.l),d5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 4(a5,a4.l),-(sp)			
	move.l (a5,a4.l),-(sp)			
	move.l 72(sp),a0			
	jbsr (a0)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 104(sp),a1			
	move.l 4(a1,a4.l),-(sp)			
	move.l (a1,a4.l),-(sp)			
	move.l 104(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,44(sp)			
	move.l a1,48(sp)			
	move.l d3,d7				
	lsl.l #3,d7				
	move.l d7,d6				
	jbra _?L39				
_?L84:						
						
	pea _?LC2				
	clr.l -(sp)				
	jbsr _aubio_log				
	addq.l #8,sp				
						
	moveq #1,d0				
_?L93:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (92,sp),sp				
	rts					
_?L90:						
						
	clr.l 52(sp)				
						
	moveq #0,d3				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 88(sp),a1			
	move.l 4(a1,a4.l),-(sp)			
	move.l (a1,a4.l),-(sp)			
	move.l 72(sp),a0			
	jbsr (a0)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 104(sp),a1			
	move.l 4(a1,a4.l),-(sp)			
	move.l (a1,a4.l),-(sp)			
	move.l 104(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,72(sp)			
	move.l a1,76(sp)			
	move.l d3,d6				
	lsl.l #3,d6				
	move.l a5,100(sp)			
	move.l 64(sp),d7			
	jbra _?L36				
_?L86:						
						
	move.l d3,-(sp)				
	move.l d3,-(sp)				
	pea _?LC4				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	moveq #1,d0				
	jbra _?L93				
_?L73:						
						
	move.l 120(sp),-(sp)			
	jbsr _fvec_ones				
	addq.l #4,sp				
						
	tst.l 104(sp)				
	jbne _?L26				
						
	move.l 72(sp),-(sp)			
	jbsr _fmat_zeros			
	addq.l #4,sp				
	move.l #___subdf3,56(sp)		
	move.l #___divdf3,88(sp)		
	moveq #-1,d2				
	move.l d2,92(sp)			
						
	move.l 120(sp),a0			
	move.l 4(a0),96(sp)			
						
	move.l 124(sp),a1			
	move.l 4(a1),80(sp)			
						
	move.l 112(sp),a4			
	move.l 4(a4),84(sp)			
						
	move.l 116(sp),a0			
	move.l 4(a0),a5				
						
	sub.l a4,a4				
	clr.l 64(sp)				
	move.l 72(sp),a6			
	jbra _?L31				
_?L89:						
						
	move.l 72(sp),-(sp)			
	jbsr _fmat_zeros			
	addq.l #4,sp				
	moveq #-1,d2				
	move.l d2,92(sp)			
						
	move.l 120(sp),a0			
	move.l 4(a0),96(sp)			
						
	move.l 124(sp),a1			
	move.l 4(a1),80(sp)			
						
	move.l 112(sp),a4			
	move.l 4(a4),84(sp)			
						
	move.l 116(sp),a0			
	move.l 4(a0),a5				
						
	sub.l a4,a4				
	clr.l 64(sp)				
	move.l 72(sp),a6			
	jbra _?L31				
_?L88:						
						
	move.l 132(sp),-(sp)			
	jbsr _aubio_filterbank_get_norm		
						
	clr.l (sp)				
	clr.l -(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___nedf2				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L94				
						
	tst.l 104(sp)				
	jbne _?L26				
_?L76:						
						
	move.l 72(sp),-(sp)			
	jbsr _fmat_zeros			
	addq.l #4,sp				
						
	move.l 112(sp),-(sp)			
	lea _del_fvec,a3			
	jbsr (a3)				
	addq.l #4,sp				
						
	move.l 116(sp),-(sp)			
	jbsr (a3)				
	addq.l #4,sp				
						
	move.l 124(sp),-(sp)			
	jbsr (a3)				
	addq.l #4,sp				
						
	move.l 120(sp),-(sp)			
	jbsr (a3)				
	addq.l #4,sp				
						
	move.l 60(sp),-(sp)			
	jbsr (a3)				
	addq.l #4,sp				
						
	moveq #0,d0				
	jbra _?L1				
_?L94:						
						
	move.l 120(sp),-(sp)			
	jbsr _fvec_ones				
	addq.l #4,sp				
						
	tst.l 104(sp)				
	jbeq _?L76				
						
	move.l 104(sp),d2			
	subq.l #1,d2				
	move.l d2,92(sp)			
						
	move.l d2,d0				
	add.l d2,d0				
						
	lea ___floatunsidf,a3			
	move.l d0,-(sp)				
	jbsr (a3)				
	addq.l #4,sp				
	move.l d0,d4				
	move.l d1,d5				
	moveq #0,d3				
	moveq #0,d6				
	lea _aubio_bintofreq,a4			
	move.l 104(sp),d7			
	move.l 60(sp),a5			
	jbra _?L29				
						
	.data					
_?LC6:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$66,$69,$6c
	.dc.b $74,$65,$72,$62,$61,$6e,$6b,$3a
	.dc.b $20,$73,$65,$74,$5f,$6d,$65,$6c
	.dc.b $5f,$63,$6f,$65,$66,$66,$73,$5f
	.dc.b $73,$6c,$61,$6e,$65,$79,$20,$73
	.dc.b $61,$6d,$70,$6c,$65,$72,$61,$74
	.dc.b $65,$20,$73,$68,$6f,$75,$6c,$64
	.dc.b $20,$62,$65,$20,$3e,$20,$30,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_filterbank_set_mel_coeffs_slaney
						
_aubio_filterbank_set_mel_coeffs_slaney:	
	lea (-16,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 60(sp),d4			
	move.l 64(sp),d5			
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___ledf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L107				
						
	pea 42.w				
	jbsr _new_fvec				
	addq.l #4,sp				
	move.l d0,48(sp)			
						
	move.l d0,a0				
	move.l 4(a0),44(sp)			
	move.l 44(sp),a6			
						
	moveq #0,d3				
	lea ___floatunsidf,a4			
	lea ___muldf3,a3			
	lea ___adddf3,a5			
_?L99:						
						
	move.l d3,-(sp)				
	jbsr (a4)				
	move.l #-1432124890,(sp)		
	move.l #1079028394,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l #1690499128,(sp)			
	move.l #1080076970,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
						
	move.l d0,(a6)+				
	move.l d1,(a6)+				
						
	addq.l #1,d3				
						
	moveq #13,d0				
	cmp.l d3,d0				
	jbne _?L99				
						
	move.l 44(sp),a0			
	move.l 96(a0),d6			
	move.l 100(a0),d7			
	lea (104,a0),a6				
						
	moveq #0,d3				
	lea _pow,a5				
_?L100:						
						
	addq.l #1,d3				
						
	move.l d3,-(sp)				
	jbsr (a4)				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l #2012161254,-(sp)		
	move.l #1072767875,-(sp)		
	jbsr (a5)				
						
	lea (12,sp),sp				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
						
	move.l d0,(a6)+				
	move.l d1,(a6)+				
						
	moveq #29,d0				
	cmp.l d3,d0				
	jbne _?L100				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 56(sp),-(sp)			
	move.l 68(sp),-(sp)			
	jbsr _aubio_filterbank_set_triangle_bands
	lea (16,sp),sp				
	move.l d0,d3				
						
	move.l 48(sp),-(sp)			
	jbsr _del_fvec				
	addq.l #4,sp				
						
	move.l d3,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
_?L107:						
						
	pea _?LC6				
	clr.l -(sp)				
	jbsr _aubio_log				
	addq.l #8,sp				
						
	moveq #1,d3				
						
	move.l d3,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
						
	.data					
_?LC7:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$66,$69,$6c
	.dc.b $74,$65,$72,$62,$61,$6e,$6b,$3a
	.dc.b $20,$73,$65,$74,$5f,$6d,$65,$6c
	.dc.b $5f,$63,$6f,$65,$66,$66,$73,$20
	.dc.b $73,$61,$6d,$70,$6c,$65,$72,$61
	.dc.b $74,$65,$20,$73,$68,$6f,$75,$6c
	.dc.b $64,$20,$62,$65,$20,$3e,$20,$30
	.dc.b $0a
	.dc.b $00				
_?LC8:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$66,$69,$6c
	.dc.b $74,$65,$72,$62,$61,$6e,$6b,$3a
	.dc.b $20,$73,$65,$74,$5f,$6d,$65,$6c
	.dc.b $5f,$63,$6f,$65,$66,$66,$73,$20
	.dc.b $66,$72,$65,$71,$5f,$6d,$61,$78
	.dc.b $20,$73,$68,$6f,$75,$6c,$64,$20
	.dc.b $62,$65,$20,$3e,$20,$30,$0a
	.dc.b $00				
_?LC9:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$66,$69,$6c
	.dc.b $74,$65,$72,$62,$61,$6e,$6b,$3a
	.dc.b $20,$73,$65,$74,$5f,$6d,$65,$6c
	.dc.b $5f,$63,$6f,$65,$66,$66,$73,$20
	.dc.b $66,$72,$65,$71,$5f,$6d,$69,$6e
	.dc.b $20,$73,$68,$6f,$75,$6c,$64,$20
	.dc.b $62,$65,$20,$3e,$20,$30,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_filterbank_set_mel_coeffs
						
_aubio_filterbank_set_mel_coeffs:		
	lea (-24,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 76(sp),a4			
	move.l 80(sp),a5			
	move.l 84(sp),d4			
	move.l 88(sp),d5			
						
	move.l 64(sp),-(sp)			
	jbsr _aubio_filterbank_get_coeffs	
						
	move.l d0,a0				
	move.l 4(a0),a3				
						
	clr.l d6				
	clr.l d7				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr ___ledf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L137				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L138				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___eqdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L139				
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L140				
_?L134:						
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	lea _aubio_hztomel,a4			
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,44(sp)			
	move.l a1,48(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d4				
	move.l d1,d5				
						
	lea (2,a3),a0				
	move.l a0,40(sp)			
	move.l a0,-(sp)				
	jbsr _new_fvec				
	addq.l #4,sp				
	move.l d0,a6				
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	pea 1(a3)				
	jbsr ___floatunsidf			
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,52(sp)			
	move.l a1,56(sp)			
						
	tst.l 40(sp)				
	jbeq _?L119				
	sub.l a3,a3				
						
	moveq #0,d3				
_?L122:						
						
	move.l d3,-(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr _aubio_meltohz			
	addq.l #8,sp				
	move.l d0,a4				
	move.l d1,a5				
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L141				
						
	move.l 4(a6),a0				
	move.l d4,(a0,a3.l)			
	move.l d5,4(a0,a3.l)			
						
	addq.l #1,d3				
						
	addq.l #8,a3				
	cmp.l 40(sp),d3				
	jbne _?L122				
_?L119:						
						
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l a6,-(sp)				
	move.l 76(sp),-(sp)			
	jbsr _aubio_filterbank_set_triangle_bands
						
	lea (12,sp),sp				
	move.l a6,(sp)				
	move.l d0,40(sp)			
	jbsr _del_fvec				
	addq.l #4,sp				
	move.l 36(sp),d0			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (24,sp),sp				
	rts					
_?L141:						
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr _aubio_meltohz			
	addq.l #8,sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 4(a6),a0				
	move.l d4,(a0,a3.l)			
	move.l d5,4(a0,a3.l)			
						
	addq.l #1,d3				
						
	addq.l #8,a3				
	cmp.l 40(sp),d3				
	jbne _?L122				
	jbra _?L119				
_?L139:						
						
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L134				
_?L140:						
						
	pea _?LC9				
	clr.l -(sp)				
	jbsr _aubio_log				
	addq.l #8,sp				
						
	moveq #1,d0				
_?L142:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (24,sp),sp				
	rts					
_?L137:						
						
	pea _?LC7				
	clr.l -(sp)				
	jbsr _aubio_log				
	addq.l #8,sp				
						
	moveq #1,d0				
	jbra _?L142				
_?L138:						
						
	pea _?LC8				
	clr.l -(sp)				
	jbsr _aubio_log				
	addq.l #8,sp				
						
	moveq #1,d0				
	jbra _?L142				
						
	.align	2				
	.globl	_aubio_filterbank_set_mel_coeffs_htk
						
_aubio_filterbank_set_mel_coeffs_htk:		
	lea (-24,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 76(sp),a4			
	move.l 80(sp),a5			
	move.l 84(sp),d4			
	move.l 88(sp),d5			
						
	move.l 64(sp),-(sp)			
	jbsr _aubio_filterbank_get_coeffs	
						
	move.l d0,a0				
	move.l 4(a0),a3				
						
	clr.l d6				
	clr.l d7				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr ___ledf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L172				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L173				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___eqdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L174				
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L175				
_?L169:						
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	lea _aubio_hztomel_htk,a4		
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,44(sp)			
	move.l a1,48(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d4				
	move.l d1,d5				
						
	lea (2,a3),a0				
	move.l a0,40(sp)			
	move.l a0,-(sp)				
	jbsr _new_fvec				
	addq.l #4,sp				
	move.l d0,a6				
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	pea 1(a3)				
	jbsr ___floatunsidf			
						
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,52(sp)			
	move.l a1,56(sp)			
						
	tst.l 40(sp)				
	jbeq _?L154				
	sub.l a3,a3				
						
	moveq #0,d3				
_?L157:						
						
	move.l d3,-(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr _aubio_meltohz_htk			
	addq.l #8,sp				
	move.l d0,a4				
	move.l d1,a5				
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L176				
						
	move.l 4(a6),a0				
	move.l d4,(a0,a3.l)			
	move.l d5,4(a0,a3.l)			
						
	addq.l #1,d3				
						
	addq.l #8,a3				
	cmp.l 40(sp),d3				
	jbne _?L157				
_?L154:						
						
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l a6,-(sp)				
	move.l 76(sp),-(sp)			
	jbsr _aubio_filterbank_set_triangle_bands
						
	lea (12,sp),sp				
	move.l a6,(sp)				
	move.l d0,40(sp)			
	jbsr _del_fvec				
	addq.l #4,sp				
	move.l 36(sp),d0			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (24,sp),sp				
	rts					
_?L176:						
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr _aubio_meltohz_htk			
	addq.l #8,sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 4(a6),a0				
	move.l d4,(a0,a3.l)			
	move.l d5,4(a0,a3.l)			
						
	addq.l #1,d3				
						
	addq.l #8,a3				
	cmp.l 40(sp),d3				
	jbne _?L157				
	jbra _?L154				
_?L174:						
						
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L169				
_?L175:						
						
	pea _?LC9				
	clr.l -(sp)				
	jbsr _aubio_log				
	addq.l #8,sp				
						
	moveq #1,d0				
_?L177:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (24,sp),sp				
	rts					
_?L172:						
						
	pea _?LC7				
	clr.l -(sp)				
	jbsr _aubio_log				
	addq.l #8,sp				
						
	moveq #1,d0				
	jbra _?L177				
_?L173:						
						
	pea _?LC8				
	clr.l -(sp)				
	jbsr _aubio_log				
	addq.l #8,sp				
						
	moveq #1,d0				
	jbra _?L177				
						
						
