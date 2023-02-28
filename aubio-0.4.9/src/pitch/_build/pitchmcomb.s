* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"pitchmcomb.c"			
						
						
						
						
						
	.text					
	.globl	___gedf2			
	.globl	___floatunsidf			
	.globl	___adddf3			
	.globl	___divdf3			
	.globl	___muldf3			
	.globl	___nedf2			
	.globl	___fixunsdfsi			
	.globl	___subdf3			
	.globl	___ledf2			
	.globl	___ltdf2			
	.align	2				
	.globl	_aubio_pitchmcomb_combdet	
						
_aubio_pitchmcomb_combdet:			
	lea (-88,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
						
	move.l 128(sp),a0			
	move.l 60(a0),76(sp)			
						
	move.l 64(a0),a4			
						
	move.l 44(a0),108(sp)			
						
	move.l 40(a0),112(sp)			
						
	move.l 132(sp),a1			
	move.l (a1),92(sp)			
						
	move.l 48(a0),d3			
						
	jbeq _?L30				
	move.l 76(sp),a0			
	lea (12,a0),a6				
						
	clr.l 52(sp)				
						
	sub.l a0,a0				
	sub.l a1,a1				
						
	sub.l a5,a5				
	lea ___gedf2,a3				
	move.l a4,60(sp)			
	move.l d6,64(sp)			
	move.l d7,68(sp)			
	move.l a5,d6				
	move.l a0,a4				
	move.l a1,a5				
_?L4:						
						
	move.l (a6),d4				
	move.l 4(a6),d5				
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L3				
						
	move.l d4,a4				
	move.l d5,a5				
						
	move.l d6,52(sp)			
_?L3:						
						
	addq.l #1,d6				
						
	lea (20,a6),a6				
	cmp.l d3,d6				
	jbne _?L4				
	move.l 60(sp),a4			
						
	tst.l 112(sp)				
	jbeq _?L32				
_?L54:						
						
	move.l 52(sp),d0			
	add.l d0,d0				
	add.l d0,d0				
	add.l 52(sp),d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l 76(sp),d0				
	move.l d0,116(sp)			
	move.l a4,96(sp)			
						
	clr.l 100(sp)				
	clr.l 104(sp)				
						
	clr.l 120(sp)				
						
	clr.l 60(sp)				
						
	clr.l 80(sp)				
						
	clr.l 88(sp)				
						
	move.l d3,a5				
_?L27:						
						
	move.l 96(sp),a1			
	addq.l #4,96(sp)			
	move.l (a1)+,72(sp)			
						
	move.l 72(sp),a0			
	clr.l 12(a0)				
	clr.l 16(a0)				
						
	clr.l 20(a0)				
	clr.l 24(a0)				
						
	move.l 88(sp),-(sp)			
	jbsr ___floatunsidf			
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr ___divdf3				
	lea (16,sp),sp				
						
	move.l 116(sp),a0			
	move.l 8(a0),-(sp)			
	move.l 4(a0),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 72(sp),a1			
	move.l d4,(a1)				
	move.l d5,4(a1)				
						
	clr.l -(sp)				
	clr.l -(sp)				
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr ___nedf2				
	lea (16,sp),sp				
	tst.l d0				
	jbeq _?L6				
						
	move.l 92(sp),-(sp)			
	jbsr ___floatunsidf			
	move.l d5,(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divdf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _floor				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
	move.l d0,80(sp)			
_?L6:						
						
	move.l 80(sp),d0			
	cmp.l 108(sp),d0			
	jbls _?L8				
	move.l 108(sp),80(sp)			
_?L8:						
						
	tst.l 80(sp)				
	jbeq _?L9				
						
	move.l 72(sp),a0			
	move.l 8(a0),a3				
						
	move.l d4,(a3)				
	move.l d5,4(a3)				
						
	moveq #1,d0				
	cmp.l 80(sp),d0				
	jbeq _?L49				
	lea (8,a3),a4				
						
	moveq #1,d4				
	move.l 72(sp),a6			
	move.l 80(sp),d3			
_?L13:						
						
	move.l d4,-(sp)				
	jbsr ___floatunsidf			
	clr.l (sp)				
	move.l #1072693248,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
						
	lea (12,sp),sp				
	move.l 4(a6),(sp)			
	move.l (a6),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	addq.l #1,d4				
						
	cmp.l d3,d4				
	jbne _?L13				
						
	move.l 92(sp),d0			
	cmp.l 80(sp),d0				
	jbls _?L50				
_?L11:						
						
	move.l 80(sp),d0			
	addq.l #1,d0				
	cmp.l 92(sp),d0				
	jbhi _?L28				
	move.l 92(sp),d0			
	sub.l 80(sp),d0				
	lsl.l #3,d0				
	move.l 80(sp),d4			
	lsl.l #3,d4				
	move.l d0,-(sp)				
	clr.l -(sp)				
	pea (a3,d4.l)				
	jbsr _memset				
	lea (12,sp),sp				
	move.l 72(sp),a0			
	move.l 8(a0),a3				
_?L12:						
	move.l a3,64(sp)			
	add.l a3,d4				
	move.l d4,84(sp)			
	lea ___subdf3,a6			
	lea ___ledf2,a3				
_?L18:						
						
	move.l 64(sp),a1			
	addq.l #8,64(sp)			
	move.l (a1)+,52(sp)			
	move.l (a1)+,56(sp)			
						
	cmp.w #0,a5				
	jbeq _?L51				
	move.l 76(sp),a4			
	addq.l #4,a4				
						
	move.l #1090021888,d4			
	clr.l d5				
						
	moveq #0,d3				
	move.l a4,d0				
	move.l a5,a4				
	move.l d0,a5				
_?L20:						
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l d0,d6				
	bclr #31,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L19				
	move.l d3,60(sp)			
						
	move.l d6,d4				
	move.l d7,d5				
_?L19:						
						
	addq.l #1,d3				
						
	lea (20,a5),a5				
	cmp.l d3,a4				
	jbne _?L20				
						
	move.l a4,a5				
	clr.l -(sp)				
	move.l #1076953088,-(sp)		
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
_?L25:						
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jblt _?L52				
						
	move.l 64(sp),a0			
	clr.l -8(a0)				
	clr.l -4(a0)				
						
	move.l 64(sp),a1			
	cmp.l 84(sp),a1				
	jbne _?L18				
_?L53:						
						
	move.l 72(sp),a0			
	move.l 12(a0),d4			
	move.l 16(a0),d5			
_?L15:						
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 112(sp),-(sp)			
	move.l 112(sp),-(sp)			
	jbsr ___ltdf2				
	lea (16,sp),sp				
	tst.l d0				
	jbge _?L26				
						
	move.l d4,100(sp)			
	move.l d5,104(sp)			
	move.l 88(sp),120(sp)			
_?L26:						
						
	addq.l #1,88(sp)			
						
	move.l 112(sp),a0			
	cmp.l 88(sp),a0				
	jbne _?L27				
						
	move.l 128(sp),a1			
	move.l 120(sp),52(a1)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (88,sp),sp				
	rts					
_?L50:						
	move.l 80(sp),d4			
	lsl.l #3,d4				
	move.l a3,64(sp)			
	add.l a3,d4				
	move.l d4,84(sp)			
	lea ___subdf3,a6			
	lea ___ledf2,a3				
	jbra _?L18				
_?L52:						
						
	move.l 60(sp),d0			
	add.l d0,d0				
	add.l d0,d0				
	add.l 60(sp),d0				
	add.l d0,d0				
	add.l d0,d0				
	move.l 76(sp),a0			
	move.l 8(a0,d0.l),d1			
	move.l 4(a0,d0.l),d0			
						
	move.l 64(sp),a1			
	move.l d0,-8(a1)			
	move.l d1,-4(a1)			
						
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___adddf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _floor				
						
	addq.l #4,sp				
	clr.l (sp)				
	move.l #1070596096,-(sp)		
						
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
						
	move.l 140(sp),a1			
	move.l 4(a1),a0				
	lsl.l #3,d0				
	move.l 4(a0,d0.l),-(sp)			
	move.l (a0,d0.l),-(sp)			
	jbsr _pow				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 80(sp),a0			
	move.l 16(a0),-(sp)			
	move.l 12(a0),-(sp)			
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,44(sp)			
	move.l d1,48(sp)			
	move.l 72(sp),a1			
	move.l d0,12(a1)			
	move.l d1,16(a1)			
						
	move.l 80(sp),-(sp)			
	jbsr ___floatunsidf			
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr ___divdf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 80(sp),a0			
	move.l 24(a0),-(sp)			
	move.l 20(a0),-(sp)			
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,36(sp)			
	move.l d1,40(sp)			
	move.l 72(sp),a1			
	move.l d0,20(a1)			
	move.l d1,24(a1)			
						
	move.l 64(sp),a1			
	cmp.l 84(sp),a1				
	jbne _?L18				
	jbra _?L53				
_?L51:						
						
	move.l #1094316192,a0			
	sub.l a1,a1				
	jbra _?L25				
_?L28:						
						
	moveq #8,d0				
	move.l 80(sp),d4			
	lsl.l #3,d4				
	move.l d0,-(sp)				
	clr.l -(sp)				
	pea (a3,d4.l)				
	jbsr _memset				
	lea (12,sp),sp				
	move.l 72(sp),a0			
	move.l 8(a0),a3				
	jbra _?L12				
_?L9:						
						
	tst.l 92(sp)				
	jbeq _?L33				
						
	move.l 72(sp),a0			
	move.l 8(a0),d1				
	move.l 92(sp),d0			
	lsl.l #3,d0				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l d1,-(sp)				
	jbsr _memset				
	lea (12,sp),sp				
						
	move.l 72(sp),a1			
	move.l 12(a1),d4			
	move.l 16(a1),d5			
	jbra _?L15				
_?L49:						
	moveq #8,d4				
						
	cmp.l 92(sp),d0				
	jbcs _?L11				
	move.l a3,64(sp)			
	add.l a3,d4				
	move.l d4,84(sp)			
	lea ___subdf3,a6			
	lea ___ledf2,a3				
	jbra _?L18				
_?L30:						
						
	clr.l 52(sp)				
						
	tst.l 112(sp)				
	jbne _?L54				
_?L32:						
						
	clr.l 120(sp)				
						
	move.l 128(sp),a1			
	move.l 120(sp),52(a1)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (88,sp),sp				
	rts					
_?L33:						
						
	clr.l d4				
	clr.l d5				
	jbra _?L15				
						
	.align	2				
	.globl	_aubio_pitchmcomb_quadpick	
						
_aubio_pitchmcomb_quadpick:			
	movem.l d3/d4/d5/a3/a4/a5/a6,-(sp)	
	move.l 32(sp),d5			
	move.l 36(sp),a3			
						
	move.l (a3),d0				
	subq.l #1,d0				
						
	moveq #1,d1				
						
	moveq #0,d4				
						
	cmp.l d0,d1				
	jbcc _?L55				
						
	moveq #1,d3				
	lea _fvec_peakpick,a4			
						
	lea _fvec_quadratic_peak_pos,a6		
_?L58:						
						
	move.l d3,-(sp)				
	move.l a3,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L66				
						
	addq.l #1,d3				
						
	move.l (a3),d0				
	subq.l #1,d0				
						
	cmp.l d0,d3				
	jbcs _?L58				
_?L55:						
						
	move.l d4,d0				
	movem.l (sp)+,d3/d4/d5/a3/a4/a5/a6	
	rts					
_?L66:						
						
	add.l d0,d4				
						
	move.l d4,d0				
	add.l d4,d0				
	add.l d0,d0				
	add.l d4,d0				
	add.l d0,d0				
	add.l d0,d0				
	move.l d5,a0				
	lea -20(a0,d0.l),a5			
						
	move.l d3,(a5)				
						
	move.l d3,-(sp)				
	move.l a3,-(sp)				
	jbsr (a6)				
	addq.l #8,sp				
	move.l d0,4(a5)				
	move.l d1,8(a5)				
						
	addq.l #1,d3				
						
	move.l (a3),d0				
	subq.l #1,d0				
						
	cmp.l d0,d3				
	jbcs _?L58				
	jbra _?L55				
						
	.align	2				
	.globl	_aubio_pitchmcomb_spectral_pp	
						
_aubio_pitchmcomb_spectral_pp:			
	movem.l d3/d4/d5/a3/a4/a5/a6,-(sp)	
	move.l 32(sp),a4			
	move.l 36(sp),a3			
						
	move.l 72(a4),a6			
						
	move.l 76(a4),a5			
						
	move.l (a6),d3				
						
	jbeq _?L68				
	move.l 4(a3),a0				
	move.l 4(a6),a1				
	move.l d3,d0				
	lsl.l #3,d0				
	add.l a0,d0				
_?L69:						
						
	move.l (a0)+,d1				
	move.l (a0)+,d2				
	move.l d1,(a1)+				
	move.l d2,(a1)+				
						
	cmp.l a0,d0				
	jbne _?L69				
_?L68:						
						
	move.l a6,-(sp)				
	jbsr _fvec_min_removal			
						
	move.l 12(a4),(sp)			
	move.l 8(a4),-(sp)			
	move.l a6,-(sp)				
	jbsr _fvec_alpha_normalise		
						
	addq.l #8,sp				
	move.l 36(a4),(sp)			
	move.l 32(a4),-(sp)			
	move.l a5,-(sp)				
	move.l a6,-(sp)				
	jbsr _fvec_adapt_thres			
	lea (16,sp),sp				
						
	move.l (a4),d0				
	add.l #-2147483648,d0			
	move.l 4(a4),d1				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l a6,-(sp)				
	jbsr _fvec_add				
	lea (12,sp),sp				
						
	move.l 60(a4),a5			
						
	move.l a6,-(sp)				
	move.l a5,-(sp)				
	jbsr _aubio_pitchmcomb_quadpick		
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L70				
						
	move.l 4(a3),a2				
	move.l a5,a0				
	move.l d0,d1				
	add.l d0,d1				
	add.l d1,d1				
	add.l d0,d1				
	add.l d1,d1				
	add.l d1,d1				
	lea (a5,d1.l),a1			
_?L71:						
						
	move.l (a0),d1				
	lsl.l #3,d1				
						
	move.l (a2,d1.l),d4			
	move.l 4(a2,d1.l),d5			
	move.l d4,12(a0)			
	move.l d5,16(a0)			
						
	lea (20,a0),a0				
	cmp.l a0,a1				
	jbne _?L71				
_?L70:						
						
	cmp.l d3,d0				
	jbcc _?L72				
	move.l d0,d1				
	add.l d0,d1				
	add.l d1,d1				
	add.l d0,d1				
	add.l d1,d1				
	add.l d1,d1				
	lea 12(a5,d1.l),a0			
	move.l d3,d1				
	add.l d3,d1				
	add.l d1,d1				
	add.l d1,d3				
	add.l d3,d3				
	add.l d3,d3				
	lea 12(a5,d3.l),a1			
_?L73:						
						
	clr.l (a0)				
	clr.l 4(a0)				
						
	lea (20,a0),a0				
	cmp.l a1,a0				
	jbne _?L73				
_?L72:						
						
	move.l a5,60(a4)			
						
	move.l d0,48(a4)			
						
	movem.l (sp)+,d3/d4/d5/a3/a4/a5/a6	
	rts					
						
	.align	2				
	.globl	_aubio_pitchmcomb_do		
						
_aubio_pitchmcomb_do:				
	movem.l d3/d4/d5/d6/a3/a4/a5/a6,-(sp)	
	move.l 36(sp),a6			
	move.l 40(sp),a4			
						
	move.l 68(a6),a3			
						
	move.l (a3),d0				
						
	jbeq _?L86				
	move.l 4(a4),a0				
	move.l 4(a3),a1				
	lsl.l #3,d0				
	add.l a0,d0				
_?L87:						
						
	move.l (a0)+,d1				
	move.l (a0)+,d2				
	move.l d1,(a1)+				
	move.l d2,(a1)+				
						
	cmp.l a0,d0				
	jbne _?L87				
_?L86:						
						
	move.l a3,-(sp)				
	move.l a6,-(sp)				
	jbsr _aubio_pitchmcomb_spectral_pp	
						
	addq.l #4,sp				
	move.l a3,(sp)				
	move.l a6,-(sp)				
	jbsr _aubio_pitchmcomb_combdet		
	addq.l #8,sp				
						
	move.l 64(a6),a0			
	move.l 52(a6),d0			
	add.l d0,d0				
	add.l d0,d0				
						
	move.l (a0,d0.l),a0			
						
	lea ___adddf3,a3			
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr (a3)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	lea _floor,a5				
	jbsr (a5)				
						
	addq.l #4,sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr ___fixunsdfsi			
	addq.l #8,sp				
	move.l d0,d3				
						
	lsl.l #3,d0				
	move.l 8(a4),a0				
						
	move.l 80(a6),a1			
						
	move.l 4(a1),a1				
						
	move.l #___subdf3,d6			
	move.l 4(a1,d0.l),-(sp)			
	move.l (a1,d0.l),-(sp)			
	move.l 4(a0,d0.l),-(sp)			
	move.l (a0,d0.l),-(sp)			
	move.l d6,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d3,-(sp)				
	jbsr ___floatunsidf			
	move.l #___muldf3,d3			
	move.l 88(a6),(sp)			
	move.l 84(a6),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d3,a0				
	jbsr (a0)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d6,a0				
	jbsr (a0)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _aubio_unwrap2pi			
						
	addq.l #4,sp				
	move.l 96(a6),(sp)			
	move.l 92(a6),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l d3,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 80(a6),a1			
						
	move.l (a1),d0				
						
	jbeq _?L88				
	move.l 8(a4),a0				
	move.l 4(a1),a1				
	lsl.l #3,d0				
	add.l a0,d0				
_?L89:						
						
	move.l (a0)+,d1				
	move.l (a0)+,d2				
	move.l d1,(a1)+				
	move.l d2,(a1)+				
						
	cmp.l d0,a0				
	jbne _?L89				
_?L88:						
						
	move.l 52(a6),d0			
	move.l 64(a6),a0			
	add.l d0,d0				
	add.l d0,d0				
						
	move.l (a0,d0.l),a0			
						
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr (a3)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l 44(sp),a0			
	move.l 4(a0),a4				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	movem.l (sp)+,d3/d4/d5/d6/a3/a4/a5/a6	
	rts					
						
	.align	2				
	.globl	_aubio_pitchmcomb_get_root_peak	
						
_aubio_pitchmcomb_get_root_peak:		
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 44(sp),a4			
						
	cmp.w #0,a4				
	jbeq _?L105				
	move.w #12,a3				
	add.l 40(sp),a3				
						
	clr.l d4				
	clr.l d5				
						
	sub.l a6,a6				
						
	moveq #0,d3				
	lea ___ledf2,a5				
_?L104:						
						
	move.l (a3),d6				
	move.l 4(a3),d7				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	tst.l d0				
	jbgt _?L102				
						
	move.l d6,d4				
	move.l d7,d5				
						
	move.l d3,a6				
_?L102:						
						
	addq.l #1,d3				
						
	lea (20,a3),a3				
	cmp.l a4,d3				
	jbne _?L104				
						
	move.l a6,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L105:						
						
	sub.l a6,a6				
						
	move.l a6,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.globl	___udivsi3			
	.align	2				
	.globl	_new_aubio_pitchmcomb		
						
_new_aubio_pitchmcomb:				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 40(sp),d4			
	move.l 44(sp),d3			
						
	pea 100.w				
	lea _MALLOC,a5				
	jbsr (a5)				
	move.l d0,a3				
						
	moveq #2,d0				
	move.l d0,56(a3)			
						
	moveq #5,d0				
	move.l d0,40(a3)			
						
	move.l d0,44(a3)			
						
	move.l #1072693248,16(a3)		
	clr.l 20(a3)				
						
	move.l #1065646817,(a3)			
	move.l #1202590843,4(a3)		
						
	moveq #8,d0				
	move.l d0,32(a3)			
						
	moveq #7,d0				
	move.l d0,36(a3)			
						
	move.l #1075970048,8(a3)		
	clr.l 12(a3)				
						
	clr.l 52(a3)				
						
	move.l d3,(sp)				
	move.l d4,-(sp)				
	jbsr ___udivsi3				
	addq.l #8,sp				
						
	lea ___floatunsidf,a4			
	move.l d0,-(sp)				
	jbsr (a4)				
	lea ___divdf3,a6			
	move.l #1413754136,(sp)			
	move.l #1075388923,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,92(a3)			
	move.l d1,96(a3)			
						
	move.l d3,-(sp)				
	jbsr (a4)				
	move.l #1413754136,(sp)			
	move.l #1075388923,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d4,-(sp)				
	jbsr (a4)				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,84(a3)			
	move.l d1,88(a3)			
						
	lsr.l #1,d4				
						
	addq.l #1,d4				
						
	move.l d4,-(sp)				
	lea _new_fvec,a4			
	jbsr (a4)				
						
	move.l d0,68(a3)			
						
	move.l d4,(sp)				
	jbsr (a4)				
						
	move.l d0,72(a3)			
						
	move.l d4,(sp)				
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,80(a3)			
						
	move.l 32(a3),a0			
	add.l 36(a3),a0				
						
	pea 1(a0)				
	jbsr (a4)				
						
	move.l d0,76(a3)			
						
	move.l d4,d0				
	add.l d4,d0				
	add.l d0,d0				
	move.l d0,d3				
	add.l d4,d3				
	add.l d3,d3				
	add.l d3,d3				
	move.l d3,(sp)				
	jbsr (a5)				
	addq.l #4,sp				
	move.l d0,a0				
						
	move.l d0,60(a3)			
	move.l d3,d0				
	add.l a0,d0				
_?L111:						
						
	clr.l (a0)				
						
	clr.l 4(a0)				
	clr.l 8(a0)				
						
	clr.l 12(a0)				
	clr.l 16(a0)				
						
	lea (20,a0),a0				
	cmp.l a0,d0				
	jbne _?L111				
						
	move.l 40(a3),d0			
	add.l d0,d0				
	add.l d0,d0				
	move.l d0,-(sp)				
	jbsr (a5)				
	addq.l #4,sp				
						
	move.l d0,64(a3)			
						
	tst.l 40(a3)				
	jbeq _?L110				
						
	lsl.l #3,d4				
	moveq #0,d3				
						
	moveq #0,d5				
	lea _memset,a6				
_?L113:						
						
	pea 28.w				
	jbsr (a5)				
						
	move.l 64(a3),a0			
	move.l d0,(a0,d3.l)			
						
	move.l d4,(sp)				
	jbsr (a5)				
						
	move.l 64(a3),a0			
	move.l (a0,d3.l),a4			
						
	move.l d0,8(a4)				
						
	move.l d4,(sp)				
	clr.l -(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (12,sp),sp				
						
	clr.l 12(a4)				
	clr.l 16(a4)				
						
	clr.l (a4)				
	clr.l 4(a4)				
						
	clr.l 20(a4)				
	clr.l 24(a4)				
						
	addq.l #1,d5				
						
	addq.l #4,d3				
	cmp.l 40(a3),d5				
	jbcs _?L113				
_?L110:						
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.align	2				
	.globl	_del_aubio_pitchmcomb		
						
_del_aubio_pitchmcomb:				
	movem.l d3/d4/a3/a4,-(sp)		
	move.l 20(sp),a3			
						
	move.l 68(a3),-(sp)			
	lea _del_fvec,a4			
	jbsr (a4)				
						
	move.l 72(a3),(sp)			
	jbsr (a4)				
						
	move.l 80(a3),(sp)			
	jbsr (a4)				
						
	move.l 76(a3),(sp)			
	jbsr (a4)				
						
	move.l 60(a3),(sp)			
	lea _MFREE,a4				
	jbsr (a4)				
	addq.l #4,sp				
						
	tst.l 40(a3)				
	jbeq _?L119				
	moveq #0,d3				
						
	moveq #0,d4				
_?L120:						
						
	move.l 64(a3),a0			
	move.l (a0,d3.l),a0			
	move.l 8(a0),-(sp)			
	jbsr (a4)				
						
	move.l 64(a3),a0			
	move.l (a0,d3.l),(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	addq.l #1,d4				
						
	addq.l #4,d3				
	cmp.l 40(a3),d4				
	jbcs _?L120				
_?L119:						
						
	move.l 64(a3),-(sp)			
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l a3,20(sp)			
						
	movem.l (sp)+,d3/d4/a3/a4		
						
	jbra _MFREE				
						
						
