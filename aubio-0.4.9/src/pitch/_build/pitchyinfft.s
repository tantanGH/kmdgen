* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"pitchyinfft.c"			
						
						
						
						
						
	.text					
	.data					
_?LC0:						
	.dc.b $68,$61,$6e,$6e,$69,$6e,$67,$7a
	.dc.b $00				
	.globl	___floatunsidf			
	.globl	___divdf3			
	.globl	___muldf3			
	.globl	___gtdf2			
	.globl	___ltdf2			
	.globl	___eqdf2			
	.globl	___subdf3			
	.globl	___adddf3			
	.globl	___fixunsdfsi			
	.text					
	.align	2				
	.globl	_new_aubio_pitchyinfft		
						
_new_aubio_pitchyinfft:				
	lea (-76,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 120(sp),d3			
						
	pea 44.w				
	jbsr _MALLOC				
	move.l d0,84(sp)			
						
	move.l d0,112(sp)			
						
	move.l d3,(sp)				
	lea _new_fvec,a3			
	jbsr (a3)				
						
	move.l 84(sp),a0			
	move.l d0,4(a0)				
						
	move.l d3,(sp)				
	jbsr _new_aubio_fft			
	addq.l #4,sp				
						
	move.l 80(sp),a2			
	move.l d0,20(a2)			
						
	jbeq _?L37				
						
	move.l d3,-(sp)				
	jbsr (a3)				
						
	move.l 84(sp),a0			
	move.l d0,16(a0)			
						
	move.l d3,(sp)				
	jbsr (a3)				
						
	move.l 84(sp),a2			
	move.l d0,8(a2)				
						
	move.l d3,d4				
	lsr.l #1,d4				
						
	addq.l #1,d4				
	move.l d4,(sp)				
	jbsr (a3)				
						
	move.l 84(sp),a0			
	move.l d0,24(a0)			
						
	move.l #1072378675,28(a0)		
	move.l #858993459,32(a0)		
						
	clr.l 36(a0)				
						
	move.l d3,(sp)				
	pea _?LC0				
	jbsr _new_aubio_window			
	addq.l #8,sp				
						
	move.l 80(sp),a0			
	move.l d0,(a0)				
						
	move.l d4,-(sp)				
	jbsr (a3)				
	addq.l #4,sp				
	move.l d0,a3				
						
	move.l 80(sp),a2			
	move.l d0,12(a2)			
						
	move.l (a3),84(sp)			
						
	jbeq _?L5				
						
	move.l d3,-(sp)				
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,96(sp)			
	move.l a1,100(sp)			
						
	move.l 116(sp),-(sp)			
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,88(sp)			
	move.l a1,92(sp)			
	move.l 4(a3),d7				
						
	move.l #1077149696,d4			
	clr.l d5				
						
	moveq #1,d6				
						
	clr.l 52(sp)				
	move.l #___divdf3,72(sp)		
	lea ___gtdf2,a6				
	move.l #___adddf3,104(sp)		
						
	lea ___ltdf2,a3				
						
	move.l d7,76(sp)			
						
	move.l 52(sp),-(sp)			
	jbsr ___floatunsidf			
	addq.l #4,sp				
						
	move.l 100(sp),-(sp)			
	move.l 100(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 88(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
						
	move.l 92(sp),-(sp)			
	move.l 92(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l a4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L31				
_?L39:						
	move.l d6,d7				
	lsl.l #3,d7				
	add.l #_freqs+8,d7			
	move.l a4,44(sp)			
	move.l a5,48(sp)			
	move.l d7,a4				
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L38				
_?L11:						
						
	move.l d6,d3				
	addq.l #1,d3				
						
	move.l (a4)+,d4				
	move.l (a4)+,d5				
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L32				
						
	move.l d3,d6				
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L11				
_?L38:						
						
	move.l 44(sp),a4			
	move.l 48(sp),a5			
	move.l d6,d0				
	lsl.l #3,d0				
	lea _freqs,a2				
	move.l (a2,d0.l),44(sp)			
	move.l 4(a2,d0.l),48(sp)		
	move.l d6,d3				
	subq.l #1,d6				
_?L9:						
						
	lsl.l #3,d6				
	lea _weight,a0				
	move.l (a0,d6.l),56(sp)			
	move.l 4(a0,d6.l),60(sp)		
						
	lea _freqs,a2				
	move.l 4(a2,d6.l),d7			
	move.l (a2,d6.l),d6			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___eqdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L12				
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l d3,d0				
	lsl.l #3,d0				
	lea _weight,a0				
	move.l 4(a0,d0.l),-(sp)			
	move.l (a0,d0.l),-(sp)			
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,64(sp)			
	move.l a1,68(sp)			
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___eqdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbne _?L33				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 76(sp),-(sp)			
	move.l 76(sp),-(sp)			
	move.l 88(sp),a2			
	jbsr (a2)				
						
	lea (12,sp),sp				
	move.l a5,(sp)				
	move.l a4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 120(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,56(sp)			
	move.l a1,60(sp)			
_?L12:						
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L34				
_?L40:						
	move.l d3,d4				
	lsl.l #3,d4				
	add.l #_freqs+8,d4			
	move.l d3,d6				
	move.l a4,44(sp)			
	move.l a5,48(sp)			
	move.l d4,a4				
_?L17:						
						
	addq.l #1,d6				
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	subq.l #8,sp				
	move.l (a4)+,(sp)			
	move.l (a4)+,4(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L17				
						
	move.l #-1610612736,-(sp)		
	move.l #1068079513,-(sp)		
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	jbsr ___muldf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1076101120,-(sp)		
	jbsr _pow				
	lea (16,sp),sp				
	move.l d0,44(sp)			
	move.l d1,48(sp)			
						
	move.l 76(sp),a2			
	addq.l #8,76(sp)			
	move.l d0,(a2)+				
	move.l d1,(a2)+				
						
	addq.l #1,52(sp)			
						
	move.l 52(sp),a0			
	cmp.l 84(sp),a0				
	jbeq _?L18				
_?L41:						
						
	move.l d6,d0				
	lsl.l #3,d0				
	lea _freqs,a2				
	move.l (a2,d0.l),d4			
	move.l 4(a2,d0.l),d5			
						
	move.l 52(sp),-(sp)			
	jbsr ___floatunsidf			
	addq.l #4,sp				
						
	move.l 100(sp),-(sp)			
	move.l 100(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 88(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
						
	move.l 92(sp),-(sp)			
	move.l 92(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l a4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L39				
_?L31:						
						
	move.l d4,44(sp)			
	move.l d5,48(sp)			
	move.l d6,d3				
	subq.l #1,d6				
	jbra _?L9				
_?L32:						
	move.l 44(sp),a4			
	move.l 48(sp),a5			
	move.l d4,44(sp)			
	move.l d5,48(sp)			
	jbra _?L9				
_?L33:						
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 88(sp),a2			
	jbsr (a2)				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___subdf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 76(sp),-(sp)			
	move.l 76(sp),-(sp)			
	move.l 88(sp),a0			
	jbsr (a0)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,a0				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a0,56(sp)			
	move.l d1,52(sp)			
	jbsr ___subdf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 76(sp),-(sp)			
	move.l 76(sp),-(sp)			
	move.l 88(sp),a2			
	jbsr (a2)				
						
	lea (12,sp),sp				
	move.l a5,(sp)				
	move.l a4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 48(sp),a0			
	move.l 44(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l 120(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,56(sp)			
	move.l a1,60(sp)			
						
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L40				
_?L34:						
	move.l d3,d6				
						
	move.l #-1610612736,-(sp)		
	move.l #1068079513,-(sp)		
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	jbsr ___muldf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1076101120,-(sp)		
	jbsr _pow				
	lea (16,sp),sp				
	move.l d0,44(sp)			
	move.l d1,48(sp)			
						
	move.l 76(sp),a2			
	addq.l #8,76(sp)			
	move.l d0,(a2)+				
	move.l d1,(a2)+				
						
	addq.l #1,52(sp)			
						
	move.l 52(sp),a0			
	cmp.l 84(sp),a0				
	jbne _?L41				
_?L18:						
						
	clr.l -(sp)				
	move.l #1083461632,-(sp)		
	move.l 100(sp),-(sp)			
	move.l 100(sp),-(sp)			
	move.l 88(sp),a0			
	jbsr (a0)				
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 120(sp),a2			
	jbsr (a2)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _floor				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
	move.l 80(sp),a0			
	move.l d0,40(a0)			
_?L1:						
						
	move.l 108(sp),d0			
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (76,sp),sp				
	rts					
_?L37:						
						
	move.l 4(a2),d0				
						
	jbeq _?L4				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L4:						
						
	move.l 80(sp),-(sp)			
	jbsr _MFREE				
	addq.l #4,sp				
						
	clr.l 108(sp)				
						
	move.l 108(sp),d0			
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (76,sp),sp				
	rts					
_?L5:						
						
	move.l 116(sp),-(sp)			
	jbsr ___floatunsidf			
	addq.l #4,sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,88(sp)			
	move.l a1,92(sp)			
	move.l #___divdf3,72(sp)		
	move.l #___adddf3,104(sp)		
	clr.l -(sp)				
	move.l #1083461632,-(sp)		
	move.l 100(sp),-(sp)			
	move.l 100(sp),-(sp)			
	move.l 88(sp),a0			
	jbsr (a0)				
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 120(sp),a2			
	jbsr (a2)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _floor				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
	move.l 80(sp),a0			
	move.l d0,40(a0)			
	jbra _?L1				
						
	.globl	___nedf2			
	.align	2				
	.globl	_aubio_pitchyinfft_do		
						
_aubio_pitchyinfft_do:				
	lea (-32,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
						
	move.l 72(sp),a0			
	move.l 16(a0),56(sp)			
						
	move.l 56(sp),a1			
	move.l (a1),d3				
						
	move.l 24(a0),60(sp)			
						
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	move.l 84(sp),-(sp)			
	jbsr _fvec_weighted_copy		
	lea (12,sp),sp				
						
	move.l 56(sp),-(sp)			
	move.l 76(sp),a2			
	move.l 4(a2),-(sp)			
	move.l 20(a2),-(sp)			
	jbsr _aubio_fft_do_complex		
	lea (12,sp),sp				
						
	move.l 56(sp),a4			
	move.l 4(a4),40(sp)			
	move.l 40(sp),a0			
	move.l (a0),d0				
	move.l 4(a0),d1				
						
	move.l 72(sp),a1			
	move.l 8(a1),64(sp)			
						
	move.l 64(sp),a2			
	move.l 4(a2),a3				
						
	lea ___muldf3,a5			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	move.l a0,(a3)				
	move.l a1,4(a3)				
						
	move.l 72(sp),a4			
	move.l 12(a4),a2			
	move.l 4(a2),52(sp)			
						
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l 60(sp),a0			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	move.l d3,d0				
	lsr.l #1,d0				
						
	moveq #3,d1				
	cmp.l d3,d1				
	jbcc _?L66				
	subq.l #1,d3				
	lsl.l #3,d3				
	move.l 40(sp),a6			
	add.l d3,a6				
	lea (a3,d3.l),a4			
	lsl.l #3,d0				
	move.l d0,36(sp)			
	moveq #8,d3				
	move.l #___adddf3,48(sp)		
_?L45:						
						
	move.l 40(sp),a1			
	move.l (a1,d3.l),d0			
	move.l 4(a1,d3.l),d1			
						
	move.l (a6),d6				
	move.l 4(a6),d7				
						
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a5)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 64(sp),a2			
	jbsr (a2)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	move.l a0,(a3,d3.l)			
	move.l a1,4(a3,d3.l)			
						
	move.l 52(sp),a2			
	move.l 4(a2,d3.l),-(sp)			
	move.l (a2,d3.l),-(sp)			
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a3,d3.l)			
	move.l a1,4(a3,d3.l)			
						
	move.l a0,(a4)				
	move.l a1,4(a4)				
						
	subq.l #8,a6				
	subq.l #8,a4				
	addq.l #8,d3				
	cmp.l 36(sp),d3				
	jbne _?L45				
						
	move.l 40(sp),a0			
	move.l 36(sp),a1			
	move.l (a0,a1.l),d0			
	move.l 4(a0,a1.l),d1			
						
	lea (a3,a1.l),a4			
						
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	move.l a0,(a4)				
	move.l a1,4(a4)				
						
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l 60(sp),a2			
	move.l 44(sp),d0			
	move.l 4(a2,d0.l),-(sp)			
	move.l (a2,d0.l),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
	move.l 36(sp),a0			
	lea 8(a3,a0.l),a4			
						
	sub.l a0,a0				
	sub.l a1,a1				
	move.l 48(sp),a6			
_?L44:						
						
	subq.l #8,sp				
	move.l (a3)+,(sp)			
	move.l (a3)+,4(sp)			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	cmp.l a4,a3				
	jbne _?L44				
						
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l 64(sp),a4			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,40(sp)			
	move.l a1,44(sp)			
						
	move.l 56(sp),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 80(sp),a0			
	move.l 20(a0),-(sp)			
	jbsr _aubio_fft_do_complex		
	lea (12,sp),sp				
						
	move.l 60(sp),a1			
	move.l 4(a1),a3				
						
	move.l #1072693248,(a3)			
	clr.l 4(a3)				
						
	move.l (a1),36(sp)			
						
	moveq #1,d0				
	cmp.l 36(sp),d0				
	jbcc _?L53				
	move.l 56(sp),a2			
	move.l 4(a2),a4				
	addq.l #8,a4				
	addq.l #8,a3				
						
	clr.l d6				
	clr.l d7				
						
	moveq #1,d3				
	lea ___nedf2,a6				
_?L52:						
						
	subq.l #8,sp				
	move.l (a4)+,(sp)			
	move.l (a4)+,4(sp)			
	move.l 52(sp),-(sp)			
	move.l 52(sp),-(sp)			
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 64(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L63				
						
	move.l d3,-(sp)				
	jbsr ___floatunsidf			
	move.l d7,(sp)				
	move.l d6,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
						
	lea (12,sp),sp				
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,d0				
	move.l a1,d1				
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	addq.l #1,d3				
						
	cmp.l 36(sp),d3				
	jbne _?L52				
_?L53:						
						
	move.l 60(sp),-(sp)			
	jbsr _fvec_min_elem			
	move.l d0,d3				
						
	move.l 64(sp),a0			
	move.l 4(a0),a3				
						
	move.l 76(sp),a1			
	move.l 28(a1),d4			
	move.l 32(a1),d5			
						
	lsl.l #3,d0				
						
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l 4(a3,d0.l),-(sp)			
	move.l (a3,d0.l),-(sp)			
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L67				
						
	move.l 80(sp),a1			
	move.l 4(a1),a4				
						
	move.l 72(sp),a2			
	cmp.l 40(a2),d3				
	jbhi _?L68				
						
	move.l d3,d0				
	lsr.l #1,d0				
						
	move.l d0,-(sp)				
	jbsr ___floatunsidf			
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 64(sp),a0			
	jbsr (a0)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _floor				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
	move.l d0,d6				
						
	lsl.l #3,d0				
						
	move.l 4(a3,d0.l),-(sp)			
	move.l (a3,d0.l),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L69				
						
	move.l 72(sp),a1			
	move.l d6,36(a1)			
						
	move.l d6,-(sp)				
	move.l 64(sp),-(sp)			
	jbsr _fvec_quadratic_peak_pos		
	addq.l #8,sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
_?L42:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (32,sp),sp				
	rts					
_?L63:						
	move.l #1072693248,d0			
	clr.l d1				
						
	move.l d0,(a3)+				
	move.l d1,(a3)+				
						
	addq.l #1,d3				
						
	cmp.l 36(sp),d3				
	jbne _?L52				
	jbra _?L53				
_?L67:						
						
	move.l 72(sp),a2			
	clr.l 36(a2)				
						
	move.l 80(sp),a4			
	move.l 4(a4),a0				
	clr.l (a0)				
	clr.l 4(a0)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (32,sp),sp				
	rts					
_?L69:						
						
	move.l d3,d6				
						
	move.l 72(sp),a1			
	move.l d6,36(a1)			
						
	move.l d6,-(sp)				
	move.l 64(sp),-(sp)			
	jbsr _fvec_quadratic_peak_pos		
	addq.l #8,sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
	jbra _?L42				
_?L68:						
						
	move.l d3,-(sp)				
	move.l 64(sp),-(sp)			
	jbsr _fvec_quadratic_peak_pos		
	addq.l #8,sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (32,sp),sp				
	rts					
_?L66:						
	lsl.l #3,d0				
	move.l d0,36(sp)			
	move.l #___adddf3,48(sp)		
						
	move.l 40(sp),a0			
	move.l 36(sp),a1			
	move.l (a0,a1.l),d0			
	move.l 4(a0,a1.l),d1			
						
	lea (a3,a1.l),a4			
						
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	move.l a0,(a4)				
	move.l a1,4(a4)				
						
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l 60(sp),a2			
	move.l 44(sp),d0			
	move.l 4(a2,d0.l),-(sp)			
	move.l (a2,d0.l),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
	move.l 36(sp),a0			
	lea 8(a3,a0.l),a4			
						
	sub.l a0,a0				
	sub.l a1,a1				
	move.l 48(sp),a6			
	jbra _?L44				
						
	.align	2				
	.globl	_del_aubio_pitchyinfft		
						
_del_aubio_pitchyinfft:				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 12(sp),a3			
						
	move.l (a3),-(sp)			
	lea _del_fvec,a4			
	jbsr (a4)				
						
	move.l 20(a3),(sp)			
	jbsr _del_aubio_fft			
						
	move.l 24(a3),(sp)			
	jbsr (a4)				
						
	move.l 8(a3),(sp)			
	jbsr (a4)				
						
	move.l 16(a3),(sp)			
	jbsr (a4)				
						
	move.l 4(a3),(sp)			
	jbsr (a4)				
						
	move.l 12(a3),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l a3,12(sp)			
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
						
	jbra _MFREE				
						
	.align	2				
	.globl	_aubio_pitchyinfft_get_confidence
						
_aubio_pitchyinfft_get_confidence:		
	move.l 4(sp),a0				
						
	move.l 24(a0),a1			
						
	move.l 36(a0),d0			
	move.l 4(a1),a0				
	lsl.l #3,d0				
						
	move.l 4(a0,d0.l),-(sp)			
	move.l (a0,d0.l),-(sp)			
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr ___subdf3				
	lea (16,sp),sp				
						
	rts					
						
	.align	2				
	.globl	_aubio_pitchyinfft_set_tolerance
						
_aubio_pitchyinfft_set_tolerance:		
						
	move.l 4(sp),a0				
	move.l 8(sp),d0				
	move.l 12(sp),d1			
	move.l d0,28(a0)			
	move.l d1,32(a0)			
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_pitchyinfft_get_tolerance
						
_aubio_pitchyinfft_get_tolerance:		
						
	move.l 4(sp),a0				
	move.l 28(a0),d0			
	move.l 32(a0),d1			
	rts					
						
	.data					
	.align	2				
						
						
_weight:					
	.dc.l	-1068305613			
	.dc.l	858993459			
	.dc.l	-1068399002			
	.dc.l	1717986918			
	.dc.l	-1068603802			
	.dc.l	1717986918			
	.dc.l	-1068888884			
	.dc.l	-858993459			
	.dc.l	-1069147751			
	.dc.l	-1717986918			
	.dc.l	-1069367296			
	.dc.l	0				
	.dc.l	-1069593396			
	.dc.l	-858993459			
	.dc.l	-1069966951			
	.dc.l	-1717986918			
	.dc.l	-1070274970			
	.dc.l	1717986918			
	.dc.l	-1070563328			
	.dc.l	0				
	.dc.l	-1071041741			
	.dc.l	858993459			
	.dc.l	-1071434957			
	.dc.l	858993459			
	.dc.l	-1071906816			
	.dc.l	0				
	.dc.l	-1072509748			
	.dc.l	-858993459			
	.dc.l	-1073217536			
	.dc.l	0				
	.dc.l	-1073951540			
	.dc.l	-858993459			
	.dc.l	-1075209831			
	.dc.l	-1717986918			
	.dc.l	-1077306983			
	.dc.l	-1717986918			
	.dc.l	-2147483648			
	.dc.l	0				
	.dc.l	1071644672			
	.dc.l	0				
	.dc.l	1073322393			
	.dc.l	-1717986918			
	.dc.l	1074370969			
	.dc.l	-1717986918			
	.dc.l	1075157401			
	.dc.l	-1717986918			
	.dc.l	1075786547			
	.dc.l	858993459			
	.dc.l	1075852083			
	.dc.l	858993459			
	.dc.l	1075131187			
	.dc.l	858993459			
	.dc.l	-1073532109			
	.dc.l	858993459			
	.dc.l	-1071238349			
	.dc.l	858993459			
	.dc.l	-1071015527			
	.dc.l	-1717986918			
	.dc.l	-1071094170			
	.dc.l	1717986918			
	.dc.l	-1071801959			
	.dc.l	-1717986918			
	.dc.l	-1070478132			
	.dc.l	-858993459			
	.dc.l	-1070478132			
	.dc.l	-858993459			
	.dc.l	-1070478132			
	.dc.l	-858993459			
	.align	2				
						
						
_freqs:						
	.dc.l	0				
	.dc.l	0				
	.dc.l	1077149696			
	.dc.l	0				
	.dc.l	1077477376			
	.dc.l	0				
	.dc.l	1077903360			
	.dc.l	0				
	.dc.l	1078198272			
	.dc.l	0				
	.dc.l	1078525952			
	.dc.l	0				
	.dc.l	1078951936			
	.dc.l	0				
	.dc.l	1079246848			
	.dc.l	0				
	.dc.l	1079574528			
	.dc.l	0				
	.dc.l	1079984128			
	.dc.l	0				
	.dc.l	1080295424			
	.dc.l	0				
	.dc.l	1080623104			
	.dc.l	0				
	.dc.l	1081032704			
	.dc.l	0				
	.dc.l	1081323520			
	.dc.l	0				
	.dc.l	1081671680			
	.dc.l	0				
	.dc.l	1082081280			
	.dc.l	0				
	.dc.l	1082372096			
	.dc.l	0				
	.dc.l	1082720256			
	.dc.l	0				
	.dc.l	1083129856			
	.dc.l	0				
	.dc.l	1083410432			
	.dc.l	0				
	.dc.l	1083768832			
	.dc.l	0				
	.dc.l	1084178432			
	.dc.l	0				
	.dc.l	1084459008			
	.dc.l	0				
	.dc.l	1084791808			
	.dc.l	0				
	.dc.l	1085227008			
	.dc.l	0				
	.dc.l	1085507584			
	.dc.l	0				
	.dc.l	1085840384			
	.dc.l	0				
	.dc.l	1086275584			
	.dc.l	0				
	.dc.l	1086428160			
	.dc.l	0				
	.dc.l	1086556160			
	.dc.l	0				
	.dc.l	1086876160			
	.dc.l	0				
	.dc.l	1087196160			
	.dc.l	0				
	.dc.l	1087604736			
	.dc.l	0				
	.dc.l	1087931136			
	.dc.l	0				
	.dc.l	-1074790400			
	.dc.l	0				
						
