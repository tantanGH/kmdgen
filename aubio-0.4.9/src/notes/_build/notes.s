* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"notes.c"			
						
						
						
						
						
	.text					
	.align	2				
	.globl	_aubio_notes_set_silence	
						
_aubio_notes_set_silence:			
	move.l a3,-(sp)				
	move.l d3,-(sp)				
	move.l 12(sp),a3			
						
	move.l 20(sp),-(sp)			
	move.l 20(sp),-(sp)			
	move.l 28(a3),-(sp)			
	jbsr _aubio_pitch_set_silence		
	lea (12,sp),sp				
	move.l d0,d3				
						
	move.l 20(sp),-(sp)			
	move.l 20(sp),-(sp)			
	move.l 44(a3),-(sp)			
	jbsr _aubio_onset_set_silence		
	lea (12,sp),sp				
						
	move.l 16(sp),76(a3)			
	move.l 20(sp),80(a3)			
						
	or.l d3,d0				
	sne d0					
	ext.w d0				
	ext.l d0				
						
	neg.l d0				
	move.l (sp)+,d3				
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_aubio_notes_get_silence	
						
_aubio_notes_get_silence:			
						
	move.l 4(sp),a0				
	move.l 28(a0),4(sp)			
						
						
	jbra _aubio_pitch_get_silence		
						
	.align	2				
	.globl	_aubio_notes_set_minioi_ms	
						
_aubio_notes_set_minioi_ms:			
						
	move.l 4(sp),a0				
	move.l 44(a0),d0			
						
	jbeq _?L7				
						
	move.l 12(sp),-(sp)			
	move.l 12(sp),-(sp)			
	move.l d0,-(sp)				
	jbsr _aubio_onset_set_minioi_ms		
	lea (12,sp),sp				
						
	tst.l d0				
	sne d0					
	ext.w d0				
	ext.l d0				
	neg.l d0				
						
	rts					
_?L7:						
						
	moveq #1,d0				
						
	rts					
						
	.align	2				
	.globl	_aubio_notes_get_minioi_ms	
						
_aubio_notes_get_minioi_ms:			
						
	move.l 4(sp),a0				
	move.l 44(a0),4(sp)			
						
						
	jbra _aubio_onset_get_minioi_ms		
						
	.globl	___ledf2			
	.data					
_?LC0:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$6e,$6f,$74
	.dc.b $65,$73,$3a,$20,$72,$65,$6c,$65
	.dc.b $61,$73,$65,$5f,$64,$72,$6f,$70
	.dc.b $20,$73,$68,$6f,$75,$6c,$64,$20
	.dc.b $62,$65,$20,$3e,$3d,$20,$30,$2c
	.dc.b $20,$67,$6f,$74,$20,$25,$66,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_notes_set_release_drop	
						
_aubio_notes_set_release_drop:			
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l 20(sp),-(sp)			
	move.l 20(sp),-(sp)			
	jbsr ___ledf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L20				
						
	move.l 4(sp),a0				
	move.l 8(sp),96(a0)			
	move.l 12(sp),100(a0)			
						
	moveq #0,d0				
						
	rts					
_?L20:						
						
	move.l 12(sp),-(sp)			
	move.l 12(sp),-(sp)			
	pea _?LC0				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	moveq #1,d0				
						
	rts					
						
	.align	2				
	.globl	_aubio_notes_get_release_drop	
						
_aubio_notes_get_release_drop:			
						
	move.l 4(sp),a0				
	move.l 96(a0),d0			
	move.l 100(a0),d1			
	rts					
						
	.globl	___adddf3			
	.globl	___nedf2			
	.globl	___eqdf2			
	.globl	___fixdfsi			
	.globl	___floatsidf			
	.globl	___subdf3			
	.globl	___gtdf2			
	.align	2				
	.globl	_aubio_notes_do			
						
_aubio_notes_do:				
	lea (-16,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 56(sp),a5			
	move.l 60(sp),d3			
	move.l 64(sp),a3			
						
	move.l a3,-(sp)				
	jbsr _fvec_zeros			
						
	move.l 48(a5),(sp)			
	move.l d3,-(sp)				
	move.l 44(a5),-(sp)			
	jbsr _aubio_onset_do			
						
	addq.l #8,sp				
	move.l 32(a5),(sp)			
	move.l d3,-(sp)				
	move.l 28(a5),-(sp)			
	jbsr _aubio_pitch_do			
	lea (12,sp),sp				
						
	move.l 32(a5),a1			
						
	move.l 4(a1),a1				
	move.l (a1),36(sp)			
	move.l 4(a1),40(sp)			
						
	tst.l 16(a5)				
	jbne _?L58				
_?L24:						
						
	move.l 80(a5),-(sp)			
	move.l 76(a5),-(sp)			
	move.l d3,-(sp)				
	jbsr _aubio_level_detection		
	lea (12,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 48(a5),a1			
						
	move.l 4(a1),a1				
						
	clr.l d6				
	clr.l d7				
	lea ___nedf2,a6				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 4(a1),-(sp)			
	move.l (a1),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L53				
						
	move.l 16(a5),d3			
						
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___eqdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbne _?L54				
						
	tst.l d3				
	jbeq _?L31				
						
	clr.l 84(a5)				
_?L31:						
						
	move.l 4(a3),a1				
	move.l 60(a5),d0			
	move.l 64(a5),d1			
	move.l d0,16(a1)			
	move.l d1,20(a1)			
_?L23:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
_?L53:						
						
	move.l 100(a5),-(sp)			
	move.l 96(a5),-(sp)			
	move.l 92(a5),-(sp)			
	move.l 88(a5),-(sp)			
	jbsr ___subdf3				
	lea (16,sp),sp				
						
	lea ___gtdf2,a4				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L55				
						
	move.l 4(a3),a1				
						
	move.l d6,(a1)				
	move.l d7,4(a1)				
						
	move.l d6,8(a1)				
	move.l d7,12(a1)			
						
	move.l 60(a5),d0			
	move.l 64(a5),d1			
	move.l d0,16(a1)			
	move.l d1,20(a1)			
						
	move.l 76(a5),88(a5)			
	move.l 80(a5),92(a5)			
						
	move.l d6,60(a5)			
	move.l d7,64(a5)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
_?L58:						
						
	move.l 20(a5),a1			
	move.l (a1),d4				
	move.l 4(a1),a6				
						
	moveq #1,d0				
	cmp.l d4,d0				
	jbeq _?L26				
						
	move.l d4,d0				
	lsl.l #3,d0				
	move.l d0,a0				
	pea -8(a0)				
	pea 8(a6)				
	move.l a6,-(sp)				
	jbsr _memmove				
	lea (12,sp),sp				
_?L26:						
						
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	jbsr ___adddf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _floor				
	addq.l #8,sp				
						
	lsl.l #3,d4				
	move.l d0,-8(a6,d4.l)			
	move.l d1,-4(a6,d4.l)			
						
	jbra _?L24				
_?L55:						
						
	move.l 16(a5),d0			
						
	jbeq _?L23				
						
	move.l 84(a5),d1			
						
	jbeq _?L23				
						
	addq.l #1,d1				
	move.l d1,84(a5)			
						
	cmp.l d0,d1				
	jbne _?L23				
						
	move.l 60(a5),36(sp)			
	move.l 64(a5),40(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 48(sp),-(sp)			
	move.l 48(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L39				
						
	move.l 4(a3),a1				
	move.l 36(sp),16(a1)			
	move.l 40(sp),20(a1)			
_?L39:						
						
	move.l 24(a5),-(sp)			
	move.l 20(a5),-(sp)			
	jbsr _fvec_copy				
						
	addq.l #4,sp				
	move.l 24(a5),(sp)			
	jbsr _fvec_median			
	move.l d0,d6				
	move.l d1,d7				
	move.l d6,40(sp)			
	move.l d7,44(sp)			
						
	move.l d6,68(a5)			
	move.l d7,72(a5)			
						
	move.l d6,60(a5)			
	move.l d7,64(a5)			
						
	clr.l (sp)				
	move.l #1078362112,-(sp)		
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L23				
						
	move.l 4(a3),a3				
						
	move.l 36(sp),(a3)			
	move.l 40(sp),4(a3)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr _floor				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixdfsi				
	addq.l #8,sp				
						
	move.l d0,a0				
	pea 127(a0)				
	jbsr ___floatsidf			
	addq.l #4,sp				
	move.l d0,8(a3)				
	move.l d1,12(a3)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
_?L54:						
						
	tst.l d3				
	jbeq _?L33				
						
	moveq #1,d1				
	move.l d1,84(a5)			
						
	move.l d4,88(a5)			
	move.l d5,92(a5)			
_?L59:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
_?L33:						
						
	move.l 4(a3),a3				
						
	move.l 60(a5),d0			
	move.l 64(a5),d1			
	move.l d0,16(a3)			
	move.l d1,20(a3)			
						
	move.l 36(sp),(a3)			
	move.l 40(sp),4(a3)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr _floor				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixdfsi				
	addq.l #8,sp				
						
	move.l d0,a0				
	pea 127(a0)				
	jbsr ___floatsidf			
	addq.l #4,sp				
	move.l d0,8(a3)				
	move.l d1,12(a3)			
						
	move.l 36(sp),60(a5)			
	move.l 40(sp),64(a5)			
						
	move.l d4,88(a5)			
	move.l d5,92(a5)			
	jbra _?L59				
						
	.align	2				
	.globl	_del_aubio_notes		
						
_del_aubio_notes:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 20(a3),d0			
						
	jbeq _?L61				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L61:						
						
	move.l 24(a3),d0			
						
	jbeq _?L62				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L62:						
						
	move.l 32(a3),d0			
						
	jbeq _?L63				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L63:						
						
	move.l 28(a3),d0			
						
	jbeq _?L64				
						
	move.l d0,-(sp)				
	jbsr _del_aubio_pitch			
	addq.l #4,sp				
_?L64:						
						
	move.l 48(a3),d0			
						
	jbeq _?L65				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L65:						
						
	move.l 44(a3),d0			
						
	jbeq _?L66				
						
	move.l d0,-(sp)				
	jbsr _del_aubio_onset			
	addq.l #4,sp				
_?L66:						
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
						
	.data					
_?LC1:						
	.dc.b $64,$65,$66,$61,$75,$6c,$74
	.dc.b $00				
_?LC2:						
	.dc.b $6d,$69,$64,$69
	.dc.b $00				
_?LC3:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$6e,$6f,$74
	.dc.b $65,$73,$3a,$20,$75,$6e,$6b,$6e
	.dc.b $6f,$77,$6e,$20,$6e,$6f,$74,$65
	.dc.b $73,$20,$64,$65,$74,$65,$63,$74
	.dc.b $69,$6f,$6e,$20,$6d,$65,$74,$68
	.dc.b $6f,$64,$20,$22,$25,$73,$22,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_new_aubio_notes		
						
_new_aubio_notes:				
	movem.l d3/d4/d5/a3/a4/a5,-(sp)		
	move.l 32(sp),d3			
	move.l 36(sp),a4			
	move.l 40(sp),d4			
						
	pea 104.w				
	jbsr _MALLOC				
	move.l d0,a3				
						
	move.l d3,(a3)				
						
	move.l d3,d0				
	add.l d3,d0				
	add.l d0,d0				
						
	move.l d0,4(a3)				
						
	move.l a4,8(a3)				
						
	clr.l 52(a3)				
	clr.l 56(a3)				
						
	clr.l 36(a3)				
	clr.l 40(a3)				
						
	move.l d4,12(a3)			
						
	moveq #6,d0				
	move.l d0,16(a3)			
						
	clr.l 84(a3)				
						
	move.l d4,(sp)				
	move.l a4,-(sp)				
	move.l d3,-(sp)				
	pea _?LC1				
	jbsr _new_aubio_onset			
	lea (16,sp),sp				
	move.l d0,d3				
						
	move.l d0,44(a3)			
						
	jbeq _?L94				
						
	move.l 52(a3),d4			
	move.l 56(a3),d5			
						
	lea ___nedf2,a5				
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	tst.l d0				
	jbne _?L113				
_?L89:						
						
	pea 1.w					
	lea _new_fvec,a4			
	jbsr (a4)				
						
	move.l d0,48(a3)			
						
	move.l 12(a3),(sp)			
	move.l 8(a3),-(sp)			
	move.l 4(a3),-(sp)			
	pea _?LC1				
	jbsr _new_aubio_pitch			
	lea (16,sp),sp				
	move.l d0,d3				
						
	move.l d0,28(a3)			
						
	jbeq _?L94				
						
	move.l 36(a3),d4			
	move.l 40(a3),d5			
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	tst.l d0				
	jbne _?L114				
_?L91:						
						
	pea _?LC2				
	move.l d3,-(sp)				
	jbsr _aubio_pitch_set_unit		
	addq.l #8,sp				
						
	pea 1.w					
	jbsr (a4)				
						
	move.l d0,32(a3)			
						
	move.l #_?LC1,(sp)			
	move.l 32(sp),-(sp)			
	jbsr _strcmp				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L115				
						
	move.l 16(a3),-(sp)			
	jbsr (a4)				
						
	move.l d0,20(a3)			
						
	move.l 16(a3),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,24(a3)			
						
	tst.l 48(a3)				
	jbeq _?L94				
						
	tst.l 32(a3)				
	jbeq _?L94				
						
	tst.l 20(a3)				
	jbeq _?L94				
						
	tst.l d0				
	jbeq _?L94				
						
	move.l #-1074790400,60(a3)		
	clr.l 64(a3)				
						
	clr.l 68(a3)				
	clr.l 72(a3)				
						
	clr.l -(sp)				
	move.l #-1068400640,-(sp)		
	move.l 28(a3),-(sp)			
	jbsr _aubio_pitch_set_silence		
						
	addq.l #8,sp				
	clr.l (sp)				
	move.l #-1068400640,-(sp)		
	move.l 44(a3),-(sp)			
	jbsr _aubio_onset_set_silence		
	lea (12,sp),sp				
						
	move.l #-1068400640,76(a3)		
	clr.l 80(a3)				
						
	move.l 44(a3),d0			
						
	jbeq _?L95				
						
	clr.l -(sp)				
	move.l #1077805056,-(sp)		
	move.l d0,-(sp)				
	jbsr _aubio_onset_set_minioi_ms		
	lea (12,sp),sp				
_?L95:						
						
	move.l #-1068400640,88(a3)		
	clr.l 92(a3)				
						
	move.l #1076101120,96(a3)		
	clr.l 100(a3)				
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/a3/a4/a5		
	rts					
_?L115:						
						
	move.l 28(sp),-(sp)			
	pea _?LC3				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
_?L94:						
						
	move.l a3,-(sp)				
	jbsr _del_aubio_notes			
	addq.l #4,sp				
						
	sub.l a3,a3				
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/a3/a4/a5		
	rts					
_?L113:						
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	jbsr _aubio_onset_set_threshold		
	lea (12,sp),sp				
	jbra _?L89				
_?L114:						
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	jbsr _aubio_pitch_set_tolerance		
	lea (12,sp),sp				
						
	move.l 28(a3),d3			
	jbra _?L91				
						
						
