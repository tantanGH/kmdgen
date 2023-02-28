* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"phasevoc.c"			
						
						
						
						
						
	.text					
	.align	2				
	.globl	_aubio_pvoc_do			
						
_aubio_pvoc_do:					
	movem.l d3/d4/d5/d6/a3/a4/a5/a6,-(sp)	
	move.l 36(sp),a3			
	move.l 44(sp),d3			
	move.l 40(sp),a0			
	move.l 4(a0),d1				
						
	move.l 12(a3),a4			
						
	move.l 4(a4),d5				
						
	move.l 16(a3),a0			
	move.l 4(a0),a1				
						
	move.l 36(a3),d6			
						
	move.l 4(a3),d0				
						
	tst.l d6				
	jbeq _?L2				
	move.l a1,a0				
	move.l d5,a2				
	move.l d6,d2				
	lsl.l #3,d2				
	move.l a1,d4				
	add.l d2,d4				
_?L3:						
						
	move.l (a0)+,a5				
	move.l (a0)+,a6				
	move.l a5,(a2)+				
	move.l a6,(a2)+				
						
	cmp.l a0,d4				
	jbne _?L3				
						
	tst.l d0				
	jbeq _?L6				
	move.l d1,a0				
	move.l d5,a2				
	add.l d2,a2				
						
	moveq #0,d1				
_?L7:						
						
	move.l (a0)+,a5				
	move.l (a0)+,a6				
	move.l a5,(a2)+				
	move.l a6,(a2)+				
						
	addq.l #1,d1				
						
	cmp.l d1,d0				
	jbhi _?L7				
						
	tst.l d6				
	jbeq _?L8				
_?L6:						
	lsl.l #3,d0				
	move.l d5,a0				
	add.l d0,a0				
	move.l a1,d0				
	add.l d2,d0				
_?L9:						
						
	move.l (a0)+,d1				
	move.l (a0)+,d2				
	move.l d1,(a1)+				
	move.l d2,(a1)+				
						
	cmp.l d0,a1				
	jbne _?L9				
_?L8:						
						
	move.l 28(a3),-(sp)			
	move.l a4,-(sp)				
	jbsr _fvec_weight			
						
	addq.l #4,sp				
	move.l 12(a3),(sp)			
	jbsr _fvec_shift			
	addq.l #4,sp				
						
	move.l d3,44(sp)			
	move.l 12(a3),40(sp)			
	move.l 8(a3),36(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/a3/a4/a5/a6	
						
	jbra _aubio_fft_do			
_?L2:						
	moveq #0,d2				
						
	tst.l d0				
	jbeq _?L8				
	move.l d1,a0				
	move.l d5,a2				
	add.l d2,a2				
						
	moveq #0,d1				
	jbra _?L7				
						
	.globl	___muldf3			
	.globl	___adddf3			
	.align	2				
	.globl	_aubio_pvoc_rdo			
						
_aubio_pvoc_rdo:				
	lea (-20,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 60(sp),a4			
						
	move.l 20(a4),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 8(a4),-(sp)			
	jbsr _aubio_fft_rdo			
						
	addq.l #8,sp				
	move.l 20(a4),(sp)			
	jbsr _fvec_ishift			
	addq.l #4,sp				
						
	move.l 4(a4),d3				
						
	move.l d3,d0				
	add.l d3,d0				
						
	cmp.l (a4),d0				
	jbcs _?L57				
	move.l 68(sp),a0			
	move.l 4(a0),44(sp)			
						
	move.l 20(a4),a0			
	move.l 4(a0),48(sp)			
						
	move.l 24(a4),a0			
	move.l 4(a0),52(sp)			
						
	move.l 36(a4),d4			
						
	tst.l d3				
	jbeq _?L26				
_?L59:						
	move.l 48(sp),d7			
	move.l 44(sp),a5			
	move.l d3,d6				
	lsl.l #3,d6				
	move.l d7,d5				
	add.l d6,d5				
	move.l a5,a3				
	lea ___muldf3,a6			
_?L27:						
						
	move.l d7,a0				
	subq.l #8,sp				
	move.l (a0)+,(sp)			
	move.l (a0)+,4(sp)			
	move.l a0,d7				
	move.l 44(a4),-(sp)			
	move.l 40(a4),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
						
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l d7,d5				
	jbne _?L27				
						
	tst.l d4				
	jbeq _?L24				
	move.l 52(sp),a6			
	move.l 44(sp),d7			
	add.l d6,d7				
	move.l #___adddf3,d5			
_?L31:						
						
	move.l (a5),d0				
	move.l 4(a5),d1				
						
	subq.l #8,sp				
	move.l (a6)+,(sp)			
	move.l (a6)+,4(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d5,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
	move.l d0,(a5)+				
	move.l d1,(a5)+				
						
	cmp.l d7,a5				
	jbne _?L31				
						
	move.l 32(a4),d1			
						
	jbeq _?L32				
	move.l 52(sp),a0			
						
	moveq #0,d0				
_?L33:						
						
	move.l (a0,d6.l),(a0)+			
	move.l 4(a0,d6.l),(a0)+			
						
	addq.l #1,d0				
						
	cmp.l d0,d1				
	jbhi _?L33				
						
	cmp.l d1,d4				
	jbls _?L34				
_?L32:						
						
	move.l d1,d0				
	addq.l #1,d0				
	cmp.l d0,d4				
	jbcc _?L58				
	moveq #8,d0				
	lsl.l #3,d1				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l 60(sp),a0			
	pea (a0,d1.l)				
	jbsr _memset				
	lea (12,sp),sp				
_?L34:						
						
	tst.l d4				
	jbeq _?L24				
	move.l 52(sp),a3			
	lsl.l #3,d3				
	move.l 48(sp),a5			
	add.l d3,a5				
	lsl.l #3,d4				
	add.l a3,d4				
	lea ___muldf3,a6			
	move.l #___adddf3,d5			
_?L37:						
						
	move.l (a3),d6				
	move.l 4(a3),d7				
						
	move.l (a5)+,d0				
	move.l (a5)+,d1				
						
	move.l 44(a4),-(sp)			
	move.l 40(a4),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
						
	lea (12,sp),sp				
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d5,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	cmp.l d4,a3				
	jbne _?L37				
_?L24:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (20,sp),sp				
	rts					
_?L57:						
						
	move.l 28(a4),-(sp)			
	move.l 20(a4),-(sp)			
	jbsr _fvec_weight			
	addq.l #8,sp				
						
	move.l 4(a4),d3				
	move.l 68(sp),a0			
	move.l 4(a0),44(sp)			
						
	move.l 20(a4),a0			
	move.l 4(a0),48(sp)			
						
	move.l 24(a4),a0			
	move.l 4(a0),52(sp)			
						
	move.l 36(a4),d4			
						
	tst.l d3				
	jbne _?L59				
_?L26:						
						
	tst.l d4				
	jbeq _?L24				
						
	move.l 32(a4),d1			
	moveq #0,d6				
						
	tst.l d1				
	jbeq _?L32				
	move.l 52(sp),a0			
						
	moveq #0,d0				
	jbra _?L33				
_?L58:						
						
	move.l d4,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
	lsl.l #3,d1				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l 60(sp),a0			
	pea (a0,d1.l)				
	jbsr _memset				
	lea (12,sp),sp				
	jbra _?L34				
						
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$70,$76,$6f
	.dc.b $63,$3a,$20,$67,$6f,$74,$20,$68
	.dc.b $6f,$70,$5f,$73,$69,$7a,$65,$20
	.dc.b $25,$64,$2c,$20,$62,$75,$74,$20
	.dc.b $63,$61,$6e,$20,$6e,$6f,$74,$20
	.dc.b $62,$65,$20,$3c,$20,$31,$0a
	.dc.b $00				
_?LC1:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$70,$76,$6f
	.dc.b $63,$3a,$20,$67,$6f,$74,$20,$62
	.dc.b $75,$66,$66,$65,$72,$5f,$73,$69
	.dc.b $7a,$65,$20,$25,$64,$2c,$20,$62
	.dc.b $75,$74,$20,$63,$61,$6e,$20,$6e
	.dc.b $6f,$74,$20,$62,$65,$20,$3c,$20
	.dc.b $32,$0a
	.dc.b $00				
_?LC2:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$70,$76,$6f
	.dc.b $63,$3a,$20,$68,$6f,$70,$20,$73
	.dc.b $69,$7a,$65,$20,$28,$25,$64,$29
	.dc.b $20,$69,$73,$20,$6c,$61,$72,$67
	.dc.b $65,$72,$20,$74,$68,$61,$6e,$20
	.dc.b $77,$69,$6e,$20,$73,$69,$7a,$65
	.dc.b $20,$28,$25,$64,$29,$0a
	.dc.b $00				
_?LC3:						
	.dc.b $68,$61,$6e,$6e,$69,$6e,$67,$7a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_new_aubio_pvoc			
						
_new_aubio_pvoc:				
	movem.l d3/d4/d5/d6/a3/a4,-(sp)		
	move.l 28(sp),d3			
	move.l 32(sp),d4			
						
	pea 56.w				
	jbsr _MALLOC				
	addq.l #4,sp				
	move.l d0,a3				
						
	tst.l d4				
	jble _?L82				
						
	moveq #1,d0				
	cmp.l d3,d0				
	jbge _?L83				
						
	cmp.l d4,d3				
	jbcs _?L84				
						
	move.l a3,d6				
						
	move.l d3,-(sp)				
	jbsr _new_aubio_fft			
	addq.l #4,sp				
						
	move.l d0,8(a3)				
						
	jbeq _?L62				
						
	move.l d3,-(sp)				
	lea _new_fvec,a4			
	jbsr (a4)				
						
	move.l d0,12(a3)			
						
	move.l d3,(sp)				
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,20(a3)			
						
	cmp.l d4,d3				
	jbls _?L65				
						
	move.l d3,d5				
	sub.l d4,d5				
	move.l d5,-(sp)				
	jbsr (a4)				
						
	move.l d0,16(a3)			
						
	move.l d5,(sp)				
	jbsr (a4)				
						
	move.l d0,24(a3)			
						
	move.l d3,(sp)				
	pea _?LC3				
	jbsr _new_aubio_window			
	addq.l #8,sp				
						
	move.l d4,d1				
	add.l d4,d1				
						
	cmp.l d3,d1				
	jbls _?L67				
						
	move.l d0,28(a3)			
						
	move.l d4,4(a3)				
						
	move.l d3,(a3)				
						
	clr.l 32(a3)				
						
	move.l d5,d2				
	lsl.l #3,d2				
_?L69:						
						
	lsl.l #3,d4				
						
	move.l d1,d0				
	add.l d1,d0				
						
	cmp.l d0,d3				
	jbeq _?L85				
_?L70:						
						
	cmp.l d4,d3				
	jbeq _?L75				
						
	cmp.l d3,d1				
	jbeq _?L86				
	move.l #1071644672,d0			
	clr.l d1				
						
	move.l d5,36(a3)			
						
	move.l d2,48(a3)			
						
	move.l d4,52(a3)			
						
	move.l d0,40(a3)			
	move.l d1,44(a3)			
_?L60:						
						
	move.l d6,d0				
	movem.l (sp)+,d3/d4/d5/d6/a3/a4		
	rts					
_?L65:						
						
	pea 1.w					
	jbsr (a4)				
						
	move.l d0,16(a3)			
						
	moveq #1,d0				
	move.l d0,(sp)				
	jbsr (a4)				
						
	move.l d0,24(a3)			
						
	move.l d3,(sp)				
	pea _?LC3				
	jbsr _new_aubio_window			
	addq.l #8,sp				
						
	move.l d4,d1				
	add.l d4,d1				
						
	cmp.l d3,d1				
	jbls _?L67				
						
	move.l d0,28(a3)			
						
	move.l d4,4(a3)				
						
	move.l d3,(a3)				
						
	clr.l 32(a3)				
	moveq #0,d5				
	moveq #0,d2				
						
	lsl.l #3,d4				
						
	move.l d1,d0				
	add.l d1,d0				
						
	cmp.l d0,d3				
	jbne _?L70				
_?L85:						
	move.l #1071994197,d0			
	move.l #1431655765,d1			
						
	move.l d5,36(a3)			
						
	move.l d2,48(a3)			
						
	move.l d4,52(a3)			
						
	move.l d0,40(a3)			
	move.l d1,44(a3)			
	jbra _?L60				
_?L67:						
						
	move.l d0,28(a3)			
						
	move.l d4,4(a3)				
						
	move.l d3,(a3)				
						
	move.l d3,d0				
	sub.l d1,d0				
	move.l d0,32(a3)			
						
	cmp.l d4,d3				
	jbls _?L74				
	move.l d3,d5				
	sub.l d4,d5				
						
	move.l d5,d2				
	lsl.l #3,d2				
	jbra _?L69				
_?L84:						
						
	move.l d3,-(sp)				
	move.l d4,-(sp)				
	pea _?LC2				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
_?L62:						
						
	move.l a3,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	moveq #0,d6				
_?L87:						
						
	move.l d6,d0				
	movem.l (sp)+,d3/d4/d5/d6/a3/a4		
	rts					
_?L74:						
	moveq #0,d5				
	moveq #0,d2				
	jbra _?L69				
_?L75:						
	move.l #1070945621,d0			
	move.l #1431655765,d1			
						
	move.l d5,36(a3)			
						
	move.l d2,48(a3)			
						
	move.l d4,52(a3)			
						
	move.l d0,40(a3)			
	move.l d1,44(a3)			
	jbra _?L60				
_?L86:						
						
	move.l #1072693248,d0			
	clr.l d1				
						
	move.l d5,36(a3)			
						
	move.l d2,48(a3)			
						
	move.l d4,52(a3)			
						
	move.l d0,40(a3)			
	move.l d1,44(a3)			
	jbra _?L60				
_?L82:						
						
	move.l d4,-(sp)				
	pea _?LC0				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	moveq #0,d6				
	jbra _?L87				
_?L83:						
						
	move.l d3,-(sp)				
	pea _?LC1				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	move.l a3,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	moveq #0,d6				
	jbra _?L87				
						
	.align	2				
	.globl	_aubio_pvoc_set_window		
						
_aubio_pvoc_set_window:				
						
	move.l 4(sp),a0				
	move.l 28(a0),4(sp)			
						
						
	jbra _fvec_set_window			
						
	.align	2				
	.globl	_del_aubio_pvoc			
						
_del_aubio_pvoc:				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 12(sp),a3			
						
	move.l 12(a3),-(sp)			
	lea _del_fvec,a4			
	jbsr (a4)				
						
	move.l 20(a3),(sp)			
	jbsr (a4)				
						
	move.l 16(a3),(sp)			
	jbsr (a4)				
						
	move.l 24(a3),(sp)			
	jbsr (a4)				
						
	move.l 28(a3),(sp)			
	jbsr (a4)				
						
	move.l 8(a3),(sp)			
	jbsr _del_aubio_fft			
	addq.l #4,sp				
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _MFREE				
						
	.align	2				
	.globl	_aubio_pvoc_get_win		
						
_aubio_pvoc_get_win:				
						
	move.l 4(sp),a0				
	move.l (a0),d0				
	rts					
						
	.align	2				
	.globl	_aubio_pvoc_get_hop		
						
_aubio_pvoc_get_hop:				
						
	move.l 4(sp),a0				
	move.l 4(a0),d0				
	rts					
						
						
