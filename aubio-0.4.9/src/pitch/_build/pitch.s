* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"pitch.c"			
						
						
						
						
						
	.text					
	.align	2				
						
_freqconvpass:					
						
	move.l 4(sp),d0				
	move.l 8(sp),d1				
	rts					
						
	.globl	___floatunsidf			
	.align	2				
						
_aubio_pitch_do_mcomb:				
	movem.l a3/a4/a5,-(sp)			
	move.l 16(sp),a3			
	move.l 20(sp),a5			
	move.l 24(sp),a4			
						
	move.l 24(a3),-(sp)			
	move.l a5,-(sp)				
	move.l 20(a3),-(sp)			
	jbsr _aubio_filter_do_outplace		
						
	addq.l #8,sp				
	move.l 32(a3),(sp)			
	move.l a5,-(sp)				
	move.l 28(a3),-(sp)			
	jbsr _aubio_pvoc_do			
						
	addq.l #8,sp				
	move.l a4,(sp)				
	move.l 32(a3),-(sp)			
	move.l 16(a3),-(sp)			
	jbsr _aubio_pitchmcomb_do		
	lea (12,sp),sp				
						
	move.l 4(a4),a4				
						
	lea ___floatunsidf,a5			
	move.l 12(a3),-(sp)			
	jbsr (a5)				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 8(a3),-(sp)			
	jbsr (a5)				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	jbsr _aubio_bintofreq			
	lea (24,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	movem.l (sp)+,a3/a4/a5			
	rts					
						
	.align	2				
						
_freqconvbin:					
	move.l a3,-(sp)				
						
	lea ___floatunsidf,a3			
	move.l 20(sp),-(sp)			
	jbsr (a3)				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 24(sp),-(sp)			
	jbsr (a3)				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 28(sp),-(sp)			
	move.l 28(sp),-(sp)			
	jbsr _aubio_freqtobin			
	lea (24,sp),sp				
						
	move.l (sp)+,a3				
	rts					
						
	.align	2				
						
_freqconvmidi:					
						
						
	jbra _aubio_freqtomidi			
						
	.align	2				
	.globl	_del_aubio_pitch		
						
_del_aubio_pitch:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	moveq #6,d0				
	cmp.l (a3),d0				
	jbcs _?L10				
	move.l (a3),d0				
	add.l d0,d0				
	move.w _?L12(pc,d0.l),d0		
	jmp 2(pc,d0.w)				
	.align 2,0x284c				
						
_?L12:						
	.dc.w _?L18-_?L12			
	.dc.w _?L17-_?L12			
	.dc.w _?L16-_?L12			
	.dc.w _?L15-_?L12			
	.dc.w _?L14-_?L12			
	.dc.w _?L13-_?L12			
	.dc.w _?L11-_?L12			
_?L18:						
						
	move.l 36(a3),-(sp)			
	jbsr _del_fvec				
						
	move.l 16(a3),(sp)			
	jbsr _del_aubio_pitchyin		
	addq.l #4,sp				
_?L10:						
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
_?L13:						
						
	move.l 36(a3),-(sp)			
	jbsr _del_fvec				
						
	move.l 16(a3),(sp)			
	jbsr _del_aubio_pitchyinfast		
	addq.l #4,sp				
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
_?L11:						
						
	move.l 36(a3),-(sp)			
	jbsr _del_fvec				
						
	move.l 16(a3),(sp)			
	jbsr _del_aubio_pitchspecacf		
	addq.l #4,sp				
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
_?L17:						
						
	move.l 24(a3),-(sp)			
	jbsr _del_fvec				
						
	move.l 28(a3),(sp)			
	jbsr _del_aubio_pvoc			
						
	move.l 32(a3),(sp)			
	jbsr _del_cvec				
						
	move.l 20(a3),(sp)			
	jbsr _del_aubio_filter			
						
	move.l 16(a3),(sp)			
	jbsr _del_aubio_pitchmcomb		
	addq.l #4,sp				
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
_?L16:						
						
	move.l 36(a3),-(sp)			
	jbsr _del_fvec				
						
	move.l 16(a3),(sp)			
	jbsr _del_aubio_pitchschmitt		
	addq.l #4,sp				
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
_?L15:						
						
	move.l 36(a3),-(sp)			
	jbsr _del_fvec				
						
	move.l 16(a3),(sp)			
	jbsr _del_aubio_pitchfcomb		
	addq.l #4,sp				
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
_?L14:						
						
	move.l 36(a3),-(sp)			
	jbsr _del_fvec				
						
	move.l 16(a3),(sp)			
	jbsr _del_aubio_pitchyinfft		
	addq.l #4,sp				
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
						
	.align	2				
	.globl	_aubio_pitch_slideblock		
						
_aubio_pitch_slideblock:			
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 16(sp),a3			
						
	move.l 12(sp),a0			
	move.l 36(a0),a4			
						
	move.l (a3),d1				
						
	move.l (a4),d0				
	sub.l d1,d0				
						
	jbeq _?L22				
	move.l 4(a4),a0				
	move.l d0,d2				
	lsl.l #3,d2				
	lea (a0,d2.l),a1			
	move.l d1,d2				
	lsl.l #3,d2				
	move.l d2,a2				
_?L23:						
						
	move.l (a0,a2.l),(a0)+			
	move.l 4(a0,a2.l),(a0)+			
						
	cmp.l a0,a1				
	jbne _?L23				
_?L22:						
						
	tst.l d1				
	jbeq _?L21				
	move.l 4(a3),a0				
	lsl.l #3,d0				
	move.l 4(a4),a1				
	add.l d0,a1				
	move.l d1,d0				
	lsl.l #3,d0				
	add.l a0,d0				
_?L25:						
						
	move.l (a0)+,d1				
	move.l (a0)+,d2				
	move.l d1,(a1)+				
	move.l d2,(a1)+				
						
	cmp.l d0,a0				
	jbne _?L25				
_?L21:						
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
	rts					
						
	.globl	___gtdf2			
	.globl	___divdf3			
	.align	2				
						
_aubio_pitch_do_specacf:			
	movem.l d4/d5/d6/d7/a3/a4,-(sp)		
	move.l 28(sp),a3			
	move.l 36(sp),a4			
						
	move.l 32(sp),-(sp)			
	move.l a3,-(sp)				
	jbsr _aubio_pitch_slideblock		
						
	addq.l #4,sp				
	move.l a4,(sp)				
	move.l 36(a3),-(sp)			
	move.l 16(a3),-(sp)			
	jbsr _aubio_pitchspecacf_do		
	lea (12,sp),sp				
						
	move.l 4(a4),a4				
						
	move.l (a4),d4				
	move.l 4(a4),d5				
						
	clr.l d6				
	clr.l d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L41				
						
	move.l 8(a3),-(sp)			
	jbsr ___floatunsidf			
						
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a4)				
	move.l a1,4(a4)				
						
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
_?L41:						
						
	move.l d6,d0				
	move.l d7,d1				
						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a4)				
	move.l a1,4(a4)				
						
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
						
	.globl	___adddf3			
	.align	2				
						
_aubio_pitch_do_yinfast:			
	movem.l d4/d5/d6/d7/a3/a4,-(sp)		
	move.l 28(sp),a3			
	move.l 36(sp),a4			
						
	move.l 32(sp),-(sp)			
	move.l a3,-(sp)				
	jbsr _aubio_pitch_slideblock		
						
	addq.l #4,sp				
	move.l a4,(sp)				
	move.l 36(a3),-(sp)			
	move.l 16(a3),-(sp)			
	jbsr _aubio_pitchyinfast_do		
	lea (12,sp),sp				
						
	move.l 4(a4),a4				
						
	move.l (a4),d4				
	move.l 4(a4),d5				
						
	clr.l d6				
	clr.l d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L49				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 8(a3),-(sp)			
	jbsr ___floatunsidf			
						
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a4)				
	move.l a1,4(a4)				
						
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
_?L49:						
						
	move.l d6,d0				
	move.l d7,d1				
						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a4)				
	move.l a1,4(a4)				
						
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
						
	.align	2				
						
_aubio_pitch_do_yinfft:				
	movem.l d4/d5/d6/d7/a3/a4,-(sp)		
	move.l 28(sp),a3			
	move.l 36(sp),a4			
						
	move.l 32(sp),-(sp)			
	move.l a3,-(sp)				
	jbsr _aubio_pitch_slideblock		
						
	addq.l #4,sp				
	move.l a4,(sp)				
	move.l 36(a3),-(sp)			
	move.l 16(a3),-(sp)			
	jbsr _aubio_pitchyinfft_do		
	lea (12,sp),sp				
						
	move.l 4(a4),a4				
						
	move.l (a4),d4				
	move.l 4(a4),d5				
						
	clr.l d6				
	clr.l d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L57				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 8(a3),-(sp)			
	jbsr ___floatunsidf			
						
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a4)				
	move.l a1,4(a4)				
						
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
_?L57:						
						
	move.l d6,d0				
	move.l d7,d1				
						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a4)				
	move.l a1,4(a4)				
						
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
						
	.align	2				
						
_aubio_pitch_do_schmitt:			
	movem.l d4/d5/d6/d7/a3/a4,-(sp)		
	move.l 28(sp),a3			
	move.l 36(sp),a4			
						
	move.l 32(sp),-(sp)			
	move.l a3,-(sp)				
	jbsr _aubio_pitch_slideblock		
						
	addq.l #4,sp				
	move.l a4,(sp)				
	move.l 36(a3),-(sp)			
	move.l 16(a3),-(sp)			
	jbsr _aubio_pitchschmitt_do		
	lea (12,sp),sp				
						
	move.l 4(a4),a4				
						
	move.l (a4),d4				
	move.l 4(a4),d5				
						
	clr.l d6				
	clr.l d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L65				
						
	move.l 8(a3),-(sp)			
	jbsr ___floatunsidf			
						
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a4)				
	move.l a1,4(a4)				
						
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
_?L65:						
						
	move.l d6,d0				
	move.l d7,d1				
						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a4)				
	move.l a1,4(a4)				
						
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
						
	.align	2				
						
_aubio_pitch_do_fcomb:				
	movem.l a3/a4/a5,-(sp)			
	move.l 16(sp),a3			
	move.l 24(sp),a4			
						
	move.l 20(sp),-(sp)			
	move.l a3,-(sp)				
	jbsr _aubio_pitch_slideblock		
						
	addq.l #4,sp				
	move.l a4,(sp)				
	move.l 36(a3),-(sp)			
	move.l 16(a3),-(sp)			
	jbsr _aubio_pitchfcomb_do		
	lea (12,sp),sp				
						
	move.l 4(a4),a4				
						
	lea ___floatunsidf,a5			
	move.l 12(a3),-(sp)			
	jbsr (a5)				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 8(a3),-(sp)			
	jbsr (a5)				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	jbsr _aubio_bintofreq			
	lea (24,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	movem.l (sp)+,a3/a4/a5			
	rts					
						
	.align	2				
						
_aubio_pitch_do_yin:				
	movem.l d4/d5/d6/d7/a3/a4,-(sp)		
	move.l 28(sp),a3			
	move.l 36(sp),a4			
						
	move.l 32(sp),-(sp)			
	move.l a3,-(sp)				
	jbsr _aubio_pitch_slideblock		
						
	addq.l #4,sp				
	move.l a4,(sp)				
	move.l 36(a3),-(sp)			
	move.l 16(a3),-(sp)			
	jbsr _aubio_pitchyin_do			
	lea (12,sp),sp				
						
	move.l 4(a4),a4				
						
	move.l (a4),d4				
	move.l 4(a4),d5				
						
	clr.l d6				
	clr.l d7				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___gtdf2				
	lea (16,sp),sp				
	tst.l d0				
	jble _?L75				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 8(a3),-(sp)			
	jbsr ___floatunsidf			
						
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a4)				
	move.l a1,4(a4)				
						
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
_?L75:						
						
	move.l d6,d0				
	move.l d7,d1				
						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a4)				
	move.l a1,4(a4)				
						
	movem.l (sp)+,d4/d5/d6/d7/a3/a4		
	rts					
						
	.data					
_?LC0:						
	.dc.b $66,$72,$65,$71
	.dc.b $00				
_?LC1:						
	.dc.b $68,$65,$72,$74,$7a
	.dc.b $00				
_?LC2:						
	.dc.b $48,$65,$72,$74,$7a
	.dc.b $00				
_?LC3:						
	.dc.b $6d,$69,$64,$69
	.dc.b $00				
_?LC4:						
	.dc.b $63,$65,$6e,$74
	.dc.b $00				
_?LC5:						
	.dc.b $62,$69,$6e
	.dc.b $00				
_?LC6:						
	.dc.b $64,$65,$66,$61,$75,$6c,$74
	.dc.b $00				
_?LC7:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$70
	.dc.b $69,$74,$63,$68,$3a,$20,$75,$6e
	.dc.b $6b,$6e,$6f,$77,$6e,$20,$70,$69
	.dc.b $74,$63,$68,$20,$64,$65,$74,$65
	.dc.b $63,$74,$69,$6f,$6e,$20,$75,$6e
	.dc.b $69,$74,$20,$81,$65,$25,$73,$81
	.dc.b $66,$2c,$20,$75,$73,$69,$6e,$67
	.dc.b $20,$64,$65,$66,$61,$75,$6c,$74
	.dc.b $0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_pitch_set_unit		
						
_aubio_pitch_set_unit:				
	movem.l a3/a4/a5,-(sp)			
	move.l 16(sp),a5			
	move.l 20(sp),a3			
						
	pea _?LC0				
	move.l a3,-(sp)				
	lea _strcmp,a4				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L92				
						
	pea _?LC1				
	move.l a3,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L101				
_?L92:						
						
	moveq #0,d0				
						
	clr.l 4(a5)				
						
	move.l #_freqconvpass,d1		
_?L83:						
						
	move.l d1,44(a5)			
						
	movem.l (sp)+,a3/a4/a5			
	rts					
_?L101:						
						
	pea _?LC2				
	move.l a3,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L92				
						
	moveq #0,d1				
	move.b (a3),d1				
	moveq #72,d0				
	cmp.l d1,d0				
	jbne _?L93				
	cmp.b #122,1(a3)			
	jbeq _?L102				
_?L93:						
						
	moveq #102,d0				
	cmp.l d1,d0				
	jbeq _?L103				
_?L94:						
						
	pea _?LC3				
	move.l a3,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L82				
	moveq #1,d0				
						
	move.l d0,4(a5)				
	move.l #_freqconvmidi,d1		
						
	moveq #0,d0				
_?L105:						
						
	move.l d1,44(a5)			
						
	movem.l (sp)+,a3/a4/a5			
	rts					
_?L103:						
						
	cmp.b #48,1(a3)				
	jbne _?L94				
						
	moveq #0,d0				
						
	tst.b 2(a3)				
	jbne _?L94				
						
	clr.l 4(a5)				
						
	move.l #_freqconvpass,d1		
	jbra _?L83				
_?L102:						
						
	moveq #0,d0				
						
	tst.b 2(a3)				
	jbne _?L93				
						
	clr.l 4(a5)				
						
	move.l #_freqconvpass,d1		
	jbra _?L83				
_?L82:						
						
	pea _?LC4				
	move.l a3,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L91				
						
	pea _?LC5				
	move.l a3,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L104				
						
	pea _?LC6				
	move.l a3,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L92				
						
	move.l a3,-(sp)				
	pea _?LC7				
	pea 4.w					
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	moveq #1,d0				
						
	clr.l 4(a5)				
						
	move.l #_freqconvpass,d1		
	jbra _?L83				
_?L104:						
						
	moveq #3,d0				
	move.l d0,4(a5)				
						
	move.l #_freqconvbin,d1			
						
	moveq #0,d0				
						
	move.l d1,44(a5)			
						
	movem.l (sp)+,a3/a4/a5			
	rts					
_?L91:						
	moveq #2,d0				
						
	move.l d0,4(a5)				
	move.l #_freqconvmidi,d1		
						
	moveq #0,d0				
	jbra _?L105				
						
	.data					
_?LC8:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$70,$69,$74
	.dc.b $63,$68,$3a,$20,$63,$61,$6e,$20
	.dc.b $6e,$6f,$74,$20,$75,$73,$65,$20
	.dc.b $81,$65,$4e,$55,$4c,$4c,$81,$65
	.dc.b $20,$66,$6f,$72,$20,$70,$69,$74
	.dc.b $63,$68,$20,$64,$65,$74,$65,$63
	.dc.b $74,$69,$6f,$6e,$20,$6d,$65,$74
	.dc.b $68,$6f,$64,$0a
	.dc.b $00				
_?LC9:						
	.dc.b $6d,$63,$6f,$6d,$62
	.dc.b $00				
_?LC10:						
	.dc.b $79,$69,$6e,$66,$61,$73,$74
	.dc.b $00				
_?LC11:						
	.dc.b $79,$69,$6e,$66,$66,$74
	.dc.b $00				
_?LC12:						
	.dc.b $79,$69,$6e
	.dc.b $00				
_?LC13:						
	.dc.b $73,$63,$68,$6d,$69,$74,$74
	.dc.b $00				
_?LC14:						
	.dc.b $66,$63,$6f,$6d,$62
	.dc.b $00				
_?LC15:						
	.dc.b $73,$70,$65,$63,$61,$63,$66
	.dc.b $00				
_?LC16:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$70,$69,$74
	.dc.b $63,$68,$3a,$20,$75,$6e,$6b,$6e
	.dc.b $6f,$77,$6e,$20,$70,$69,$74,$63
	.dc.b $68,$20,$64,$65,$74,$65,$63,$74
	.dc.b $69,$6f,$6e,$20,$6d,$65,$74,$68
	.dc.b $6f,$64,$20,$81,$65,$25,$73,$81
	.dc.b $66,$0a
	.dc.b $00				
_?LC17:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$70,$69,$74
	.dc.b $63,$68,$3a,$20,$67,$6f,$74,$20
	.dc.b $68,$6f,$70,$73,$69,$7a,$65,$20
	.dc.b $25,$64,$2c,$20,$62,$75,$74,$20
	.dc.b $63,$61,$6e,$20,$6e,$6f,$74,$20
	.dc.b $62,$65,$20,$3c,$20,$31,$0a
	.dc.b $00				
_?LC18:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$70,$69,$74
	.dc.b $63,$68,$3a,$20,$67,$6f,$74,$20
	.dc.b $62,$75,$66,$66,$65,$72,$5f,$73
	.dc.b $69,$7a,$65,$20,$25,$64,$2c,$20
	.dc.b $62,$75,$74,$20,$63,$61,$6e,$20
	.dc.b $6e,$6f,$74,$20,$62,$65,$20,$3c
	.dc.b $20,$31,$0a
	.dc.b $00				
_?LC19:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$70,$69,$74
	.dc.b $63,$68,$3a,$20,$68,$6f,$70,$20
	.dc.b $73,$69,$7a,$65,$20,$28,$25,$64
	.dc.b $29,$20,$69,$73,$20,$6c,$61,$72
	.dc.b $67,$65,$72,$20,$74,$68,$61,$6e
	.dc.b $20,$77,$69,$6e,$20,$73,$69,$7a
	.dc.b $65,$20,$28,$25,$64,$29,$0a
	.dc.b $00				
_?LC20:						
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$70,$69,$74
	.dc.b $63,$68,$3a,$20,$73,$61,$6d,$70
	.dc.b $6c,$65,$72,$61,$74,$65,$20,$28
	.dc.b $25,$64,$29,$20,$63,$61,$6e,$20
	.dc.b $6e,$6f,$74,$20,$62,$65,$20,$3c
	.dc.b $20,$31,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_new_aubio_pitch		
						
_new_aubio_pitch:				
	movem.l d3/d4/d5/d6/d7/a3/a4,-(sp)	
	move.l 32(sp),d4			
	move.l 36(sp),d3			
	move.l 40(sp),d5			
	move.l 44(sp),d6			
						
	pea 60.w				
	jbsr _MALLOC				
	addq.l #4,sp				
	move.l d0,a3				
						
	move.l d0,d7				
						
	tst.l d4				
	jbeq _?L162				
						
	pea _?LC9				
	move.l d4,-(sp)				
	lea _strcmp,a4				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L127				
						
	pea _?LC10				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L128				
						
	pea _?LC11				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L129				
						
	pea _?LC12				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L130				
						
	pea _?LC13				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L131				
						
	pea _?LC14				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L132				
						
	pea _?LC15				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L133				
						
	pea _?LC6				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	moveq #4,d1				
						
	tst.l d0				
	jbeq _?L109				
						
	move.l d4,-(sp)				
	pea _?LC16				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
_?L108:						
						
	move.l 24(a3),d0			
						
	jbeq _?L125				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L125:						
						
	move.l 36(a3),d0			
						
	jbeq _?L126				
						
	move.l d0,-(sp)				
	jbsr _del_fvec				
	addq.l #4,sp				
_?L126:						
						
	move.l a3,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	moveq #0,d7				
_?L106:						
						
	move.l d7,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4	
	rts					
_?L127:						
						
	moveq #1,d1				
_?L109:						
						
	tst.l d5				
	jble _?L163				
						
	tst.l d3				
	jble _?L164				
						
	cmp.l d5,d3				
	jbcs _?L165				
						
	tst.l d6				
	jble _?L166				
						
	move.l d6,8(a3)				
						
	move.l d1,(a3)				
						
	pea _?LC6				
	move.l a3,-(sp)				
	jbsr _aubio_pitch_set_unit		
	addq.l #8,sp				
						
	move.l d3,12(a3)			
						
	move.l #-1068957696,52(a3)		
	clr.l 56(a3)				
						
	clr.l 48(a3)				
						
	moveq #6,d0				
	cmp.l (a3),d0				
	jbcs _?L106				
	move.l (a3),d0				
	add.l d0,d0				
	move.w _?L116(pc,d0.l),d0		
	jmp 2(pc,d0.w)				
	.align 2,0x284c				
						
_?L116:						
	.dc.w _?L122-_?L116			
	.dc.w _?L121-_?L116			
	.dc.w _?L120-_?L116			
	.dc.w _?L119-_?L116			
	.dc.w _?L118-_?L116			
	.dc.w _?L117-_?L116			
	.dc.w _?L115-_?L116			
_?L128:						
						
	moveq #5,d1				
	jbra _?L109				
_?L129:						
						
	moveq #4,d1				
	jbra _?L109				
_?L117:						
						
	move.l d3,-(sp)				
	jbsr _new_fvec				
						
	move.l d0,36(a3)			
						
	move.l d3,(sp)				
	jbsr _new_aubio_pitchyinfast		
	addq.l #4,sp				
						
	move.l d0,16(a3)			
						
	jbeq _?L108				
						
	move.l #_aubio_pitch_do_yinfast,40(a3)	
						
	move.l #_aubio_pitchyinfast_get_confidence,48(a3)
						
	move.l #858993459,-(sp)			
	move.l #1069757235,-(sp)		
	move.l d0,-(sp)				
	jbsr _aubio_pitchyinfast_set_tolerance	
	lea (12,sp),sp				
						
	move.l d7,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4	
	rts					
_?L118:						
						
	move.l d3,-(sp)				
	jbsr _new_fvec				
						
	move.l d0,36(a3)			
						
	move.l d3,(sp)				
	move.l d6,-(sp)				
	jbsr _new_aubio_pitchyinfft		
	addq.l #8,sp				
						
	move.l d0,16(a3)			
						
	jbeq _?L108				
						
	move.l #_aubio_pitch_do_yinfft,40(a3)	
						
	move.l #_aubio_pitchyinfft_get_confidence,48(a3)
						
	move.l #858993459,-(sp)			
	move.l #1072378675,-(sp)		
	move.l d0,-(sp)				
	jbsr _aubio_pitchyinfft_set_tolerance	
	lea (12,sp),sp				
						
	move.l d7,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4	
	rts					
_?L119:						
						
	move.l d3,-(sp)				
	jbsr _new_fvec				
						
	move.l d0,36(a3)			
						
	move.l d5,(sp)				
	move.l d3,-(sp)				
	jbsr _new_aubio_pitchfcomb		
	addq.l #8,sp				
						
	move.l d0,16(a3)			
						
	jbeq _?L108				
						
	move.l #_aubio_pitch_do_fcomb,40(a3)	
						
	move.l d7,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4	
	rts					
_?L120:						
						
	move.l d3,-(sp)				
	jbsr _new_fvec				
						
	move.l d0,36(a3)			
						
	move.l d3,(sp)				
	jbsr _new_aubio_pitchschmitt		
	addq.l #4,sp				
						
	move.l d0,16(a3)			
						
	move.l #_aubio_pitch_do_schmitt,40(a3)	
						
	move.l d7,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4	
	rts					
_?L121:						
						
	move.l d5,-(sp)				
	jbsr _new_fvec				
						
	move.l d0,24(a3)			
						
	move.l d5,(sp)				
	move.l d3,-(sp)				
	jbsr _new_aubio_pvoc			
	addq.l #8,sp				
						
	move.l d0,28(a3)			
						
	jbeq _?L108				
						
	move.l d3,-(sp)				
	jbsr _new_cvec				
						
	move.l d0,32(a3)			
						
	move.l d5,(sp)				
	move.l d3,-(sp)				
	jbsr _new_aubio_pitchmcomb		
	addq.l #8,sp				
						
	move.l d0,16(a3)			
						
	move.l d6,-(sp)				
	jbsr _new_aubio_filter_c_weighting	
	addq.l #4,sp				
						
	move.l d0,20(a3)			
						
	move.l #_aubio_pitch_do_mcomb,40(a3)	
						
	move.l d7,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4	
	rts					
_?L122:						
						
	move.l d3,-(sp)				
	jbsr _new_fvec				
						
	move.l d0,36(a3)			
						
	move.l d3,(sp)				
	jbsr _new_aubio_pitchyin		
	addq.l #4,sp				
						
	move.l d0,16(a3)			
						
	jbeq _?L108				
						
	move.l #_aubio_pitch_do_yin,40(a3)	
						
	move.l #_aubio_pitchyin_get_confidence,48(a3)
						
	move.l #858993459,-(sp)			
	move.l #1069757235,-(sp)		
	move.l d0,-(sp)				
	jbsr _aubio_pitchyin_set_tolerance	
	lea (12,sp),sp				
						
	move.l d7,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4	
	rts					
_?L115:						
						
	move.l d3,-(sp)				
	jbsr _new_fvec				
						
	move.l d0,36(a3)			
						
	move.l d3,(sp)				
	jbsr _new_aubio_pitchspecacf		
	addq.l #4,sp				
						
	move.l d0,16(a3)			
						
	jbeq _?L108				
						
	move.l #_aubio_pitch_do_specacf,40(a3)	
						
	move.l #_aubio_pitchspecacf_get_tolerance,48(a3)
						
	move.l #858993459,-(sp)			
	move.l #1072378675,-(sp)		
	move.l d0,-(sp)				
	jbsr _aubio_pitchspecacf_set_tolerance	
	lea (12,sp),sp				
						
	move.l d7,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4	
	rts					
_?L166:						
						
	move.l d6,-(sp)				
	pea _?LC20				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	jbra _?L108				
_?L165:						
						
	move.l d3,-(sp)				
	move.l d5,-(sp)				
	pea _?LC19				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	jbra _?L108				
_?L163:						
						
	move.l d5,-(sp)				
	pea _?LC17				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	jbra _?L108				
_?L164:						
						
	move.l d3,-(sp)				
	pea _?LC18				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	jbra _?L108				
_?L130:						
						
	moveq #0,d1				
	jbra _?L109				
_?L131:						
						
	moveq #2,d1				
	jbra _?L109				
_?L162:						
						
	pea _?LC8				
	clr.l -(sp)				
	jbsr _aubio_log				
	addq.l #8,sp				
						
	jbra _?L108				
_?L132:						
						
	moveq #3,d1				
	jbra _?L109				
_?L133:						
						
	moveq #6,d1				
	jbra _?L109				
						
	.align	2				
	.globl	_aubio_pitch_set_tolerance	
						
_aubio_pitch_set_tolerance:			
	move.l 4(sp),a0				
						
	move.l (a0),d0				
						
	moveq #4,d1				
	cmp.l d0,d1				
	jbeq _?L168				
	moveq #5,d1				
	cmp.l d0,d1				
	jbeq _?L169				
	tst.l d0				
	jbeq _?L173				
						
	moveq #0,d0				
	rts					
_?L173:						
						
	move.l 12(sp),-(sp)			
	move.l 12(sp),-(sp)			
	move.l 16(a0),-(sp)			
	jbsr _aubio_pitchyin_set_tolerance	
	lea (12,sp),sp				
						
	moveq #0,d0				
	rts					
_?L169:						
						
	move.l 12(sp),-(sp)			
	move.l 12(sp),-(sp)			
	move.l 16(a0),-(sp)			
	jbsr _aubio_pitchyinfast_set_tolerance	
	lea (12,sp),sp				
						
	moveq #0,d0				
	rts					
_?L168:						
						
	move.l 12(sp),-(sp)			
	move.l 12(sp),-(sp)			
	move.l 16(a0),-(sp)			
	jbsr _aubio_pitchyinfft_set_tolerance	
	lea (12,sp),sp				
						
	moveq #0,d0				
	rts					
						
	.align	2				
	.globl	_aubio_pitch_get_tolerance	
						
_aubio_pitch_get_tolerance:			
	move.l 4(sp),a0				
						
	move.l (a0),d0				
						
	moveq #4,d1				
	cmp.l d0,d1				
	jbeq _?L175				
	moveq #5,d1				
	cmp.l d0,d1				
	jbeq _?L176				
	tst.l d0				
	jbeq _?L180				
						
	move.l #1072693248,d0			
	clr.l d1				
	rts					
_?L175:						
						
	move.l 16(a0),4(sp)			
						
						
	jbra _aubio_pitchyinfft_get_tolerance	
_?L180:						
						
	move.l 16(a0),4(sp)			
						
						
	jbra _aubio_pitchyin_get_tolerance	
_?L176:						
						
	move.l 16(a0),4(sp)			
						
						
	jbra _aubio_pitchyinfast_get_tolerance	
						
	.globl	___ledf2			
	.globl	___gedf2			
	.data					
_?LC21:						
	.dc.b $41,$55,$42,$49,$4f,$20,$57,$41
	.dc.b $52,$4e,$49,$4e,$47,$3a,$20,$70
	.dc.b $69,$74,$63,$68,$3a,$20,$63,$6f
	.dc.b $75,$6c,$64,$20,$6e,$6f,$74,$20
	.dc.b $73,$65,$74,$20,$73,$69,$6c,$65
	.dc.b $6e,$63,$65,$20,$74,$6f,$20,$25
	.dc.b $2e,$32,$66,$0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_pitch_set_silence	
						
_aubio_pitch_set_silence:			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 16(sp),d4			
	move.l 20(sp),d5			
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___ledf2				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L182				
						
	clr.l -(sp)				
	move.l #-1066860544,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___gedf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L182				
						
	move.l 12(sp),a0			
	move.l d4,52(a0)			
	move.l d5,56(a0)			
						
	moveq #0,d0				
						
	move.l (sp)+,d4				
	move.l (sp)+,d5				
	rts					
_?L182:						
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	pea _?LC21				
	pea 4.w					
	jbsr _aubio_log				
	lea (16,sp),sp				
						
	moveq #1,d0				
						
	move.l (sp)+,d4				
	move.l (sp)+,d5				
	rts					
						
	.align	2				
	.globl	_aubio_pitch_get_silence	
						
_aubio_pitch_get_silence:			
						
	move.l 4(sp),a0				
	move.l 52(a0),d0			
	move.l 56(a0),d1			
	rts					
						
	.align	2				
	.globl	_aubio_pitch_do			
						
_aubio_pitch_do:				
	movem.l d3/a3/a4,-(sp)			
	move.l 16(sp),a3			
	move.l 20(sp),d3			
	move.l 24(sp),a4			
						
	move.l a4,-(sp)				
	move.l d3,-(sp)				
	move.l a3,-(sp)				
	move.l 40(a3),a0			
	jbsr (a0)				
						
	addq.l #8,sp				
	move.l 56(a3),(sp)			
	move.l 52(a3),-(sp)			
	move.l d3,-(sp)				
	jbsr _aubio_silence_detection		
	lea (12,sp),sp				
						
	moveq #1,d1				
						
	move.l 4(a4),a4				
						
	cmp.l d0,d1				
	jbeq _?L193				
						
	move.l (a4),d0				
	move.l 4(a4),d1				
	move.l 12(a3),-(sp)			
	move.l 8(a3),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 44(a3),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	movem.l (sp)+,d3/a3/a4			
	rts					
_?L193:						
						
	clr.l (a4)				
	clr.l 4(a4)				
	clr.l d0				
	clr.l d1				
						
	move.l 12(a3),-(sp)			
	move.l 8(a3),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 44(a3),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	movem.l (sp)+,d3/a3/a4			
	rts					
						
	.align	2				
	.globl	_aubio_pitch_get_confidence	
						
_aubio_pitch_get_confidence:			
	move.l 4(sp),a0				
						
	move.l 48(a0),a1			
						
	cmp.w #0,a1				
	jbeq _?L198				
						
	move.l 16(a0),4(sp)			
						
						
	jmp (a1)				
_?L198:						
						
	clr.l d0				
	clr.l d1				
	rts					
						
						
