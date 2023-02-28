* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"ooura_fft8g.c"			
						
						
						
						
						
	.text					
	.align	2				
						
_bitrv2:					
	lea (-52,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 92(sp),d0			
	move.l 100(sp),a0			
						
	move.l 96(sp),a1			
	clr.l (a1)				
						
	moveq #8,d1				
	cmp.l d0,d1				
	jbge _?L2				
						
	moveq #1,d2				
	move.l a1,d4				
						
	asr.l #1,d0				
						
	tst.l d2				
	jble _?L25				
_?L3:						
	move.l d4,a1				
	move.l d2,d3				
	add.l d2,d3				
	move.l d3,d1				
	add.l d3,d1				
	lea (a1,d1.l),a2			
	move.l a2,d1				
_?L6:						
						
	move.l (a1)+,d5				
	add.l d0,d5				
	move.l d5,(a2)+				
						
	cmp.l d1,a1				
	jbne _?L6				
						
	move.l d3,d1				
						
	lsl.l #4,d2				
						
	cmp.l d2,d0				
	jble _?L26				
_?L15:						
						
	move.l d3,d2				
						
	asr.l #1,d0				
						
	tst.l d2				
	jbgt _?L3				
_?L25:						
	move.l d2,d3				
	add.l d2,d3				
						
	move.l d3,d1				
						
	lsl.l #4,d2				
						
	cmp.l d2,d0				
	jbgt _?L15				
_?L26:						
	move.l d3,84(sp)			
						
	add.l d3,d1				
						
	cmp.l d2,d0				
	jbeq _?L10				
						
	moveq #1,d2				
	cmp.l d3,d2				
	jbge _?L1				
	move.l 96(sp),d5			
	addq.l #4,d5				
	moveq #2,d4				
	move.l 96(sp),d6			
_?L11:						
						
	move.l d5,a1				
	move.l (a1),d0				
	move.l d6,a4				
	move.l d0,d2				
	lsl.l #3,d2				
	lea (a0,d2.l),a3			
	add.l d1,d0				
	lsl.l #3,d0				
	lea (a0,d0.l),a1			
	lea 8(a0,d2.l),a2			
_?L14:						
						
	move.l d4,d0				
	add.l (a4)+,d0				
						
	move.l (a3),48(sp)			
	move.l 4(a3),52(sp)			
						
	move.l (a2),56(sp)			
	move.l 4(a2),60(sp)			
						
	move.l d0,d2				
	lsl.l #3,d2				
	lea (a0,d2.l),a6			
						
	lea 8(a0,d2.l),a5			
						
	move.l (a5),64(sp)			
	move.l 4(a5),68(sp)			
						
	move.l (a6),d2				
	move.l 4(a6),d3				
	move.l d2,(a3)				
	move.l d3,4(a3)				
						
	move.l 64(sp),(a2)			
	move.l 68(sp),4(a2)			
						
	move.l 48(sp),(a6)			
	move.l 52(sp),4(a6)			
						
	move.l 56(sp),(a5)			
	move.l 60(sp),4(a5)			
						
	move.l (a1),48(sp)			
	move.l 4(a1),52(sp)			
						
	move.l 8(a1),56(sp)			
	move.l 12(a1),60(sp)			
						
	add.l d1,d0				
						
	lsl.l #3,d0				
	lea (a0,d0.l),a6			
						
	lea 8(a0,d0.l),a5			
						
	move.l (a5),64(sp)			
	move.l 4(a5),68(sp)			
						
	move.l (a6),d2				
	move.l 4(a6),d3				
	move.l d2,(a1)				
	move.l d3,4(a1)				
						
	move.l 64(sp),8(a1)			
	move.l 68(sp),12(a1)			
						
	move.l 48(sp),(a6)			
	move.l 52(sp),4(a6)			
						
	move.l 56(sp),(a5)			
	move.l 60(sp),4(a5)			
						
	lea (16,a3),a3				
	lea (16,a1),a1				
	lea (16,a2),a2				
	cmp.l d5,a4				
	jbne _?L14				
						
	addq.l #4,d5				
	addq.l #2,d4				
	cmp.l d1,d4				
	jbne _?L11				
_?L1:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (52,sp),sp				
	rts					
_?L10:						
						
	tst.l 84(sp)				
	jble _?L1				
						
	move.l d1,d2				
	add.l d1,d2				
	move.l d1,80(sp)			
						
	move.l 96(sp),72(sp)			
						
	clr.l 76(sp)				
	move.l d1,d5				
_?L12:						
						
	move.l 72(sp),a5			
	move.l (a5),d0				
	move.l a5,d3				
	addq.l #4,72(sp)			
						
	add.l 80(sp),d0				
						
	move.l d0,d1				
	lsl.l #3,d1				
	lea (a0,d1.l),a4			
						
	move.l (a4),d6				
	move.l 4(a4),d7				
						
	lea 8(a0,d1.l),a3			
						
	move.l (a3),48(sp)			
	move.l 4(a3),52(sp)			
						
	add.l d5,d0				
						
	lsl.l #3,d0				
	lea (a0,d0.l),a2			
						
	lea 8(a0,d0.l),a1			
						
	move.l (a1),d0				
	move.l 4(a1),d1				
						
	move.l (a2),a5				
	move.l 4(a2),a6				
	move.l a5,(a4)				
	move.l a6,4(a4)				
						
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	move.l d6,(a2)				
	move.l d7,4(a2)				
						
	move.l 48(sp),(a1)			
	move.l 52(sp),4(a1)			
						
	addq.l #1,76(sp)			
						
	addq.l #2,80(sp)			
	move.l 84(sp),d0			
	cmp.l 76(sp),d0				
	jble _?L1				
						
	move.l 76(sp),d4			
	add.l d4,d4				
						
	move.l 72(sp),a1			
	move.l (a1),d1				
	move.l d1,d0				
	lsl.l #3,d0				
	lea (a0,d0.l),a6			
	add.l d5,d1				
	move.l d1,d6				
	lsl.l #3,d6				
	lea (a0,d6.l),a3			
	add.l d5,d1				
	move.l d1,d6				
	lsl.l #3,d6				
	lea (a0,d6.l),a2			
	add.l d5,d1				
	lsl.l #3,d1				
	lea (a0,d1.l),a1			
	lea 8(a0,d0.l),a5			
	move.l 96(sp),a4			
	move.l d4,44(sp)			
	move.l d3,40(sp)			
	move.l a4,36(sp)			
_?L13:						
						
	move.l 36(sp),a4			
	move.l (a4),d0				
	move.l a4,d7				
	addq.l #4,36(sp)			
						
	add.l 44(sp),d0				
						
	move.l (a6),48(sp)			
	move.l 4(a6),52(sp)			
						
	move.l (a5),56(sp)			
	move.l 4(a5),60(sp)			
						
	move.l d0,d1				
	lsl.l #3,d1				
	move.l a0,d6				
	add.l d1,d6				
						
	lea 8(a0,d1.l),a4			
	move.l a4,d1				
						
	move.l (a4),64(sp)			
	move.l 4(a4),68(sp)			
						
	move.l d6,a4				
	move.l (a4),d3				
	move.l 4(a4),d4				
	move.l d3,(a6)				
	move.l d4,4(a6)				
						
	move.l 64(sp),(a5)			
	move.l 68(sp),4(a5)			
						
	move.l 48(sp),(a4)			
	move.l 52(sp),4(a4)			
						
	move.l d1,a4				
	move.l 56(sp),(a4)			
	move.l 60(sp),4(a4)			
						
	add.l d2,d0				
						
	move.l (a3),48(sp)			
	move.l 4(a3),52(sp)			
						
	move.l 8(a3),56(sp)			
	move.l 12(a3),60(sp)			
						
	move.l d0,d1				
	lsl.l #3,d1				
	move.l a0,d6				
	add.l d1,d6				
						
	lea 8(a0,d1.l),a4			
	move.l a4,d1				
						
	move.l (a4),64(sp)			
	move.l 4(a4),68(sp)			
						
	move.l d6,a4				
	move.l (a4),d3				
	move.l 4(a4),d4				
	move.l d3,(a3)				
	move.l d4,4(a3)				
						
	move.l 64(sp),8(a3)			
	move.l 68(sp),12(a3)			
						
	move.l 48(sp),(a4)			
	move.l 52(sp),4(a4)			
						
	move.l d1,a4				
	move.l 56(sp),(a4)			
	move.l 60(sp),4(a4)			
						
	sub.l d5,d0				
						
	move.l (a2),48(sp)			
	move.l 4(a2),52(sp)			
						
	move.l 8(a2),56(sp)			
	move.l 12(a2),60(sp)			
						
	move.l d0,d1				
	lsl.l #3,d1				
	move.l a0,d6				
	add.l d1,d6				
						
	lea 8(a0,d1.l),a4			
	move.l a4,d1				
						
	move.l (a4),64(sp)			
	move.l 4(a4),68(sp)			
						
	move.l d6,a4				
	move.l (a4),d3				
	move.l 4(a4),d4				
	move.l d3,(a2)				
	move.l d4,4(a2)				
						
	move.l 64(sp),8(a2)			
	move.l 68(sp),12(a2)			
						
	move.l 48(sp),(a4)			
	move.l 52(sp),4(a4)			
						
	move.l d1,a4				
	move.l 56(sp),(a4)			
	move.l 60(sp),4(a4)			
						
	move.l (a1),48(sp)			
	move.l 4(a1),52(sp)			
						
	move.l 8(a1),56(sp)			
	move.l 12(a1),60(sp)			
						
	add.l d2,d0				
						
	lsl.l #3,d0				
	move.l a0,d1				
	add.l d0,d1				
						
	lea 8(a0,d0.l),a4			
	move.l a4,d0				
						
	move.l (a4),64(sp)			
	move.l 4(a4),68(sp)			
						
	move.l d1,a4				
	move.l (a4),d3				
	move.l 4(a4),d4				
	move.l d3,(a1)				
	move.l d4,4(a1)				
						
	move.l 64(sp),8(a1)			
	move.l 68(sp),12(a1)			
						
	move.l 48(sp),(a4)			
	move.l 52(sp),4(a4)			
						
	move.l d0,a4				
	move.l 56(sp),(a4)			
	move.l 60(sp),4(a4)			
						
	lea (16,a6),a6				
	lea (16,a3),a3				
	lea (16,a2),a2				
	lea (16,a1),a1				
	lea (16,a5),a5				
	cmp.l 40(sp),d7				
	jbeq _?L12				
						
	move.l 36(sp),a4			
	move.l (a4),d0				
	move.l a4,d7				
	addq.l #4,36(sp)			
						
	add.l 44(sp),d0				
						
	move.l (a6),48(sp)			
	move.l 4(a6),52(sp)			
						
	move.l (a5),56(sp)			
	move.l 4(a5),60(sp)			
						
	move.l d0,d1				
	lsl.l #3,d1				
	move.l a0,d6				
	add.l d1,d6				
						
	lea 8(a0,d1.l),a4			
	move.l a4,d1				
						
	move.l (a4),64(sp)			
	move.l 4(a4),68(sp)			
						
	move.l d6,a4				
	move.l (a4),d3				
	move.l 4(a4),d4				
	move.l d3,(a6)				
	move.l d4,4(a6)				
						
	move.l 64(sp),(a5)			
	move.l 68(sp),4(a5)			
						
	move.l 48(sp),(a4)			
	move.l 52(sp),4(a4)			
						
	move.l d1,a4				
	move.l 56(sp),(a4)			
	move.l 60(sp),4(a4)			
						
	add.l d2,d0				
						
	move.l (a3),48(sp)			
	move.l 4(a3),52(sp)			
						
	move.l 8(a3),56(sp)			
	move.l 12(a3),60(sp)			
						
	move.l d0,d1				
	lsl.l #3,d1				
	move.l a0,d6				
	add.l d1,d6				
						
	lea 8(a0,d1.l),a4			
	move.l a4,d1				
						
	move.l (a4),64(sp)			
	move.l 4(a4),68(sp)			
						
	move.l d6,a4				
	move.l (a4),d3				
	move.l 4(a4),d4				
	move.l d3,(a3)				
	move.l d4,4(a3)				
						
	move.l 64(sp),8(a3)			
	move.l 68(sp),12(a3)			
						
	move.l 48(sp),(a4)			
	move.l 52(sp),4(a4)			
						
	move.l d1,a4				
	move.l 56(sp),(a4)			
	move.l 60(sp),4(a4)			
						
	sub.l d5,d0				
						
	move.l (a2),48(sp)			
	move.l 4(a2),52(sp)			
						
	move.l 8(a2),56(sp)			
	move.l 12(a2),60(sp)			
						
	move.l d0,d1				
	lsl.l #3,d1				
	move.l a0,d6				
	add.l d1,d6				
						
	lea 8(a0,d1.l),a4			
	move.l a4,d1				
						
	move.l (a4),64(sp)			
	move.l 4(a4),68(sp)			
						
	move.l d6,a4				
	move.l (a4),d3				
	move.l 4(a4),d4				
	move.l d3,(a2)				
	move.l d4,4(a2)				
						
	move.l 64(sp),8(a2)			
	move.l 68(sp),12(a2)			
						
	move.l 48(sp),(a4)			
	move.l 52(sp),4(a4)			
						
	move.l d1,a4				
	move.l 56(sp),(a4)			
	move.l 60(sp),4(a4)			
						
	move.l (a1),48(sp)			
	move.l 4(a1),52(sp)			
						
	move.l 8(a1),56(sp)			
	move.l 12(a1),60(sp)			
						
	add.l d2,d0				
						
	lsl.l #3,d0				
	move.l a0,d1				
	add.l d0,d1				
						
	lea 8(a0,d0.l),a4			
	move.l a4,d0				
						
	move.l (a4),64(sp)			
	move.l 4(a4),68(sp)			
						
	move.l d1,a4				
	move.l (a4),d3				
	move.l 4(a4),d4				
	move.l d3,(a1)				
	move.l d4,4(a1)				
						
	move.l 64(sp),8(a1)			
	move.l 68(sp),12(a1)			
						
	move.l 48(sp),(a4)			
	move.l 52(sp),4(a4)			
						
	move.l d0,a4				
	move.l 56(sp),(a4)			
	move.l 60(sp),4(a4)			
						
	lea (16,a6),a6				
	lea (16,a3),a3				
	lea (16,a2),a2				
	lea (16,a1),a1				
	lea (16,a5),a5				
	cmp.l 40(sp),d7				
	jbne _?L13				
	jbra _?L12				
_?L2:						
						
	subq.l #8,d0				
	jbne _?L1				
	moveq #4,d2				
						
	moveq #1,d3				
	move.l d3,84(sp)			
						
	moveq #2,d1				
	move.l d1,80(sp)			
						
	move.l 96(sp),72(sp)			
						
	clr.l 76(sp)				
	move.l d1,d5				
	jbra _?L12				
						
	.globl	___adddf3			
	.globl	___subdf3			
	.globl	___muldf3			
	.align	2				
						
_cft1st:					
	lea (-276,sp),sp			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
						
	move.l 324(sp),a0			
	move.l 16(a0),204(sp)			
	move.l 20(a0),208(sp)			
						
	move.l 320(sp),a2			
	move.l (a2),d4				
	move.l 4(a2),d5				
						
	move.l 16(a2),d6			
	move.l 20(a2),d7			
						
	lea ___adddf3,a5			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,52(sp)			
	move.l a1,56(sp)			
						
	move.l 320(sp),a4			
	move.l 8(a4),a0				
	move.l 12(a4),a1			
						
	move.l 24(a4),a2			
	move.l 28(a4),a3			
						
	move.l a3,-(sp)				
	move.l a2,-(sp)				
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l a0,60(sp)			
	move.l a1,56(sp)			
	move.l a2,52(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l d2,76(sp)			
	move.l d3,80(sp)			
						
	lea ___subdf3,a4			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l d2,84(sp)			
	move.l d3,88(sp)			
						
	move.l 36(sp),a2			
	move.l a3,-(sp)				
	move.l a2,-(sp)				
	move.l 52(sp),a0			
	move.l 48(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,116(sp)			
	move.l a1,120(sp)			
						
	move.l 320(sp),a6			
	move.l 32(a6),a0			
	move.l 36(a6),a1			
						
	move.l 48(a6),d6			
	move.l 52(a6),d7			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l a0,60(sp)			
	move.l a1,56(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l d2,132(sp)			
	move.l d3,136(sp)			
						
	move.l 40(a6),a2			
	move.l 44(a6),a3			
						
	move.l 56(a6),d4			
	move.l 60(a6),d5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a3,-(sp)				
	move.l a2,-(sp)				
	move.l a2,52(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l d2,140(sp)			
	move.l d3,144(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 52(sp),a0			
	move.l 48(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 44(sp),a2			
	move.l a3,-(sp)				
	move.l a2,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 136(sp),-(sp)			
	move.l 136(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,68(sp)			
	move.l a1,72(sp)			
						
	move.l 144(sp),-(sp)			
	move.l 144(sp),-(sp)			
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,108(sp)			
	move.l a1,112(sp)			
						
	move.l 136(sp),-(sp)			
	move.l 136(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,132(sp)			
	move.l a1,136(sp)			
						
	move.l 144(sp),-(sp)			
	move.l 144(sp),-(sp)			
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,76(sp)			
	move.l a1,80(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,140(sp)			
	move.l a1,144(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 128(sp),-(sp)			
	move.l 128(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,260(sp)			
	move.l a1,264(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,84(sp)			
	move.l a1,88(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 128(sp),-(sp)			
	move.l 128(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,116(sp)			
	move.l a1,120(sp)			
						
	move.l 64(a6),a0			
	move.l 68(a6),a1			
						
	move.l 80(a6),d6			
	move.l 84(a6),d7			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l a0,60(sp)			
	move.l a1,56(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l d2,212(sp)			
	move.l d3,216(sp)			
						
	move.l 72(a6),a2			
	move.l 76(a6),a3			
						
	move.l 88(a6),d4			
	move.l 92(a6),d5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a3,-(sp)				
	move.l a2,-(sp)				
	move.l a2,52(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l d2,236(sp)			
	move.l d3,240(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 52(sp),a0			
	move.l 48(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,244(sp)			
	move.l a1,248(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 44(sp),a2			
	move.l a3,-(sp)				
	move.l a2,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,220(sp)			
	move.l a1,224(sp)			
						
	move.l 96(a6),a0			
	move.l 100(a6),a1			
						
	move.l 320(sp),a2			
	move.l 112(a2),52(sp)			
	move.l 116(a2),56(sp)			
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l a0,60(sp)			
	move.l a1,56(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 320(sp),a6			
	move.l 104(a6),d2			
	move.l 108(a6),d3			
						
	move.l 120(a6),a2			
	move.l 124(a6),a3			
						
	move.l a3,-(sp)				
	move.l a2,-(sp)				
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	move.l d2,64(sp)			
	move.l a2,52(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 52(sp),a0			
	move.l 48(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,52(sp)			
	move.l a1,56(sp)			
						
	move.l 36(sp),a2			
	move.l a3,-(sp)				
	move.l a2,-(sp)				
	move.l 56(sp),d2			
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,228(sp)			
	move.l a1,232(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 224(sp),-(sp)			
	move.l 224(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,252(sp)			
	move.l a1,256(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 248(sp),-(sp)			
	move.l 248(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,124(sp)			
	move.l a1,128(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 224(sp),-(sp)			
	move.l 224(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,212(sp)			
	move.l a1,216(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 248(sp),-(sp)			
	move.l 248(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,236(sp)			
	move.l a1,240(sp)			
						
	move.l 232(sp),-(sp)			
	move.l 232(sp),-(sp)			
	move.l 256(sp),-(sp)			
	move.l 256(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 232(sp),-(sp)			
	move.l 232(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 232(sp),-(sp)			
	move.l 232(sp),-(sp)			
	move.l 256(sp),-(sp)			
	move.l 256(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,244(sp)			
	move.l a1,248(sp)			
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 232(sp),-(sp)			
	move.l 232(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,52(sp)			
	move.l a1,56(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	lea ___muldf3,a3			
	move.l 208(sp),-(sp)			
	move.l 208(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,220(sp)			
	move.l a1,224(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
						
	move.l 208(sp),-(sp)			
	move.l 208(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 256(sp),-(sp)			
	move.l 256(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 208(sp),-(sp)			
	move.l 208(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,228(sp)			
	move.l a1,232(sp)			
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 256(sp),-(sp)			
	move.l 256(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
						
	move.l 208(sp),-(sp)			
	move.l 208(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 224(sp),-(sp)			
	move.l 224(sp),-(sp)			
	move.l 152(sp),-(sp)			
	move.l 152(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a0			
	move.l d0,16(a0)			
	move.l d1,20(a0)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 272(sp),-(sp)			
	move.l 272(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a2			
	move.l d0,24(a2)			
	move.l d1,28(a2)			
						
	move.l 224(sp),-(sp)			
	move.l 224(sp),-(sp)			
	move.l 152(sp),-(sp)			
	move.l 152(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a6			
	move.l d0,80(a6)			
	move.l d1,84(a6)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 272(sp),-(sp)			
	move.l 272(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a0			
	move.l d0,88(a0)			
	move.l d1,92(a0)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a2			
	move.l d0,48(a2)			
	move.l d1,52(a2)			
						
	move.l 232(sp),-(sp)			
	move.l 232(sp),-(sp)			
	move.l 128(sp),-(sp)			
	move.l 128(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a6			
	move.l d0,56(a6)			
	move.l d1,60(a6)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a0			
	move.l d0,112(a0)			
	move.l d1,116(a0)			
						
	move.l 232(sp),-(sp)			
	move.l 232(sp),-(sp)			
	move.l 128(sp),-(sp)			
	move.l 128(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a2			
	move.l d0,120(a2)			
	move.l d1,124(a2)			
						
	move.l 256(sp),-(sp)			
	move.l 256(sp),-(sp)			
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a6			
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	move.l 128(sp),-(sp)			
	move.l 128(sp),-(sp)			
	move.l 120(sp),-(sp)			
	move.l 120(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a0			
	move.l d0,8(a0)				
	move.l d1,12(a0)			
						
	move.l 256(sp),-(sp)			
	move.l 256(sp),-(sp)			
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a2			
	move.l d0,64(a2)			
	move.l d1,68(a2)			
						
	move.l 128(sp),-(sp)			
	move.l 128(sp),-(sp)			
	move.l 120(sp),-(sp)			
	move.l 120(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a6			
	move.l d0,72(a6)			
	move.l d1,76(a6)			
						
	move.l 240(sp),-(sp)			
	move.l 240(sp),-(sp)			
	move.l 144(sp),-(sp)			
	move.l 144(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a0			
	move.l d0,32(a0)			
	move.l d1,36(a0)			
						
	move.l 216(sp),-(sp)			
	move.l 216(sp),-(sp)			
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a2			
	move.l d0,40(a2)			
	move.l d1,44(a2)			
						
	move.l 240(sp),-(sp)			
	move.l 240(sp),-(sp)			
	move.l 144(sp),-(sp)			
	move.l 144(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a6			
	move.l d0,96(a6)			
	move.l d1,100(a6)			
						
	move.l 216(sp),-(sp)			
	move.l 216(sp),-(sp)			
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a0			
	move.l d0,104(a0)			
	move.l d1,108(a0)			
						
	moveq #16,d0				
	cmp.l 316(sp),d0			
	jbge _?L27				
						
	move.l 324(sp),a0			
	move.l 32(a0),52(sp)			
	move.l 36(a0),56(sp)			
						
	move.l 40(a0),76(sp)			
	move.l 44(a0),80(sp)			
						
	move.l 320(sp),a6			
	move.l 128(a6),d6			
	move.l 132(a6),d7			
						
	move.l 144(a6),d4			
	move.l 148(a6),d5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,132(sp)			
	move.l a1,136(sp)			
						
	move.l 136(a6),d2			
	move.l 140(a6),d3			
						
	move.l 320(sp),a0			
	move.l 152(a0),84(sp)			
	move.l 156(a0),88(sp)			
						
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	move.l d2,64(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,140(sp)			
	move.l a1,144(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,68(sp)			
	move.l a1,72(sp)			
						
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	move.l 56(sp),d2			
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 320(sp),a2			
	move.l 160(a2),d2			
	move.l 164(a2),d3			
						
	move.l 176(a2),d4			
	move.l 180(a2),d5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	move.l d2,64(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,108(sp)			
	move.l a1,112(sp)			
						
	move.l 320(sp),a6			
	move.l 168(a6),84(sp)			
	move.l 172(a6),88(sp)			
						
	move.l 184(a6),116(sp)			
	move.l 188(a6),120(sp)			
						
	move.l 120(sp),-(sp)			
	move.l 120(sp),-(sp)			
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,260(sp)			
	move.l a1,264(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 56(sp),d2			
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,212(sp)			
	move.l a1,216(sp)			
						
	move.l 120(sp),-(sp)			
	move.l 120(sp),-(sp)			
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 112(sp),-(sp)			
	move.l 112(sp),-(sp)			
	move.l 144(sp),-(sp)			
	move.l 144(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,236(sp)			
	move.l a1,240(sp)			
						
	move.l 264(sp),-(sp)			
	move.l 264(sp),-(sp)			
	move.l 152(sp),-(sp)			
	move.l 152(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,244(sp)			
	move.l a1,248(sp)			
						
	move.l 112(sp),-(sp)			
	move.l 112(sp),-(sp)			
	move.l 144(sp),-(sp)			
	move.l 144(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,132(sp)			
	move.l a1,136(sp)			
						
	move.l 264(sp),-(sp)			
	move.l 264(sp),-(sp)			
	move.l 152(sp),-(sp)			
	move.l 152(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,140(sp)			
	move.l a1,144(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,108(sp)			
	move.l a1,112(sp)			
						
	move.l 216(sp),-(sp)			
	move.l 216(sp),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,260(sp)			
	move.l a1,264(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,68(sp)			
	move.l a1,72(sp)			
						
	move.l 216(sp),-(sp)			
	move.l 216(sp),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,212(sp)			
	move.l a1,216(sp)			
						
	move.l 320(sp),a2			
	move.l 192(a2),d2			
	move.l 196(a2),d3			
						
	move.l 208(a2),d4			
	move.l 212(a2),d5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	move.l d2,64(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,220(sp)			
	move.l a1,224(sp)			
						
	move.l 320(sp),a6			
	move.l 200(a6),84(sp)			
	move.l 204(a6),88(sp)			
						
	move.l 216(a6),d6			
	move.l 220(a6),d7			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,228(sp)			
	move.l a1,232(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 56(sp),d2			
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,252(sp)			
	move.l a1,256(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,124(sp)			
	move.l a1,128(sp)			
						
	move.l 224(a6),d2			
	move.l 228(a6),d3			
						
	move.l 240(a6),d4			
	move.l 244(a6),d5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	move.l d2,64(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,148(sp)			
	move.l a1,152(sp)			
						
	move.l 320(sp),a0			
	move.l 232(a0),84(sp)			
	move.l 236(a0),88(sp)			
						
	move.l 248(a0),116(sp)			
	move.l 252(a0),120(sp)			
						
	move.l 120(sp),-(sp)			
	move.l 120(sp),-(sp)			
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 56(sp),d2			
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,156(sp)			
	move.l a1,160(sp)			
						
	move.l 120(sp),-(sp)			
	move.l 120(sp),-(sp)			
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 152(sp),-(sp)			
	move.l 152(sp),-(sp)			
	move.l 232(sp),-(sp)			
	move.l 232(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,84(sp)			
	move.l a1,88(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 240(sp),-(sp)			
	move.l 240(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,116(sp)			
	move.l a1,120(sp)			
						
	move.l 152(sp),-(sp)			
	move.l 152(sp),-(sp)			
	move.l 232(sp),-(sp)			
	move.l 232(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,220(sp)			
	move.l a1,224(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 240(sp),-(sp)			
	move.l 240(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,228(sp)			
	move.l a1,232(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 264(sp),-(sp)			
	move.l 264(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,148(sp)			
	move.l a1,152(sp)			
						
	move.l 160(sp),-(sp)			
	move.l 160(sp),-(sp)			
	move.l 136(sp),-(sp)			
	move.l 136(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 264(sp),-(sp)			
	move.l 264(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,252(sp)			
	move.l a1,256(sp)			
						
	move.l 128(sp),-(sp)			
	move.l 128(sp),-(sp)			
	move.l 168(sp),-(sp)			
	move.l 168(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,124(sp)			
	move.l a1,128(sp)			
						
	move.l 152(sp),-(sp)			
	move.l 152(sp),-(sp)			
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,156(sp)			
	move.l a1,160(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 152(sp),-(sp)			
	move.l 152(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,148(sp)			
	move.l a1,152(sp)			
						
	move.l 256(sp),-(sp)			
	move.l 256(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 128(sp),-(sp)			
	move.l 128(sp),-(sp)			
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,172(sp)			
	move.l a1,176(sp)			
						
	move.l 128(sp),-(sp)			
	move.l 128(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 256(sp),-(sp)			
	move.l 256(sp),-(sp)			
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,252(sp)			
	move.l a1,256(sp)			
						
	move.l 112(sp),-(sp)			
	move.l 112(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 264(sp),-(sp)			
	move.l 264(sp),-(sp)			
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 264(sp),-(sp)			
	move.l 264(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 112(sp),-(sp)			
	move.l 112(sp),-(sp)			
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
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
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 168(sp),-(sp)			
	move.l 168(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,108(sp)			
	move.l d1,112(sp)			
						
	move.l 320(sp),a6			
	move.l d0,144(a6)			
	move.l d1,148(a6)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 160(sp),-(sp)			
	move.l 160(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,108(sp)			
	move.l d1,112(sp)			
						
	move.l 320(sp),a0			
	move.l d0,152(a0)			
	move.l d1,156(a0)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 160(sp),-(sp)			
	move.l 160(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,108(sp)			
	move.l d1,112(sp)			
						
	move.l 320(sp),a2			
	move.l d0,208(a2)			
	move.l d1,212(a2)			
						
	move.l 160(sp),-(sp)			
	move.l 160(sp),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,108(sp)			
	move.l d1,112(sp)			
						
	move.l 320(sp),a6			
	move.l d0,216(a6)			
	move.l d1,220(a6)			
						
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 216(sp),-(sp)			
	move.l 216(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 216(sp),-(sp)			
	move.l 216(sp),-(sp)			
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
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
						
	move.l 176(sp),-(sp)			
	move.l 176(sp),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a0			
	move.l d0,176(a0)			
	move.l d1,180(a0)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 264(sp),-(sp)			
	move.l 264(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a2			
	move.l d0,184(a2)			
	move.l d1,188(a2)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 264(sp),-(sp)			
	move.l 264(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a6			
	move.l d0,240(a6)			
	move.l d1,244(a6)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 184(sp),-(sp)			
	move.l 184(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a0			
	move.l d0,248(a0)			
	move.l d1,252(a0)			
						
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	move.l 248(sp),-(sp)			
	move.l 248(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a2			
	move.l d0,128(a2)			
	move.l d1,132(a2)			
						
	move.l 120(sp),-(sp)			
	move.l 120(sp),-(sp)			
	move.l 256(sp),-(sp)			
	move.l 256(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a6			
	move.l d0,136(a6)			
	move.l d1,140(a6)			
						
	move.l 248(sp),-(sp)			
	move.l 248(sp),-(sp)			
	move.l 128(sp),-(sp)			
	move.l 128(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a0			
	move.l d0,192(a0)			
	move.l d1,196(a0)			
						
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	move.l 248(sp),-(sp)			
	move.l 248(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a2			
	move.l d0,200(a2)			
	move.l d1,204(a2)			
						
	move.l 232(sp),-(sp)			
	move.l 232(sp),-(sp)			
	move.l 144(sp),-(sp)			
	move.l 144(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 224(sp),-(sp)			
	move.l 224(sp),-(sp)			
	move.l 152(sp),-(sp)			
	move.l 152(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 208(sp),-(sp)			
	move.l 208(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a6			
	move.l d0,160(a6)			
	move.l d1,164(a6)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
						
	move.l 208(sp),-(sp)			
	move.l 208(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a0			
	move.l d0,168(a0)			
	move.l d1,172(a0)			
						
	move.l 144(sp),-(sp)			
	move.l 144(sp),-(sp)			
	move.l 232(sp),-(sp)			
	move.l 232(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 232(sp),-(sp)			
	move.l 232(sp),-(sp)			
	move.l 144(sp),-(sp)			
	move.l 144(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 208(sp),-(sp)			
	move.l 208(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a2			
	move.l d0,224(a2)			
	move.l d1,228(a2)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
						
	move.l 208(sp),-(sp)			
	move.l 208(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,52(sp)			
	move.l d1,56(sp)			
						
	move.l 320(sp),a6			
	move.l d0,232(a6)			
	move.l d1,236(a6)			
						
	moveq #32,d0				
	cmp.l 316(sp),d0			
	jbge _?L27				
	move.w #64,a2				
	add.l 324(sp),a2			
	lea (256,a6),a6				
	moveq #-33,d0				
	add.l 316(sp),d0			
	lsr.l #4,d0				
	lsl.l #7,d0				
	move.l 320(sp),d1			
	add.l #384,d1				
	add.l d1,d0				
	move.l d0,308(sp)			
_?L29:						
						
	move.l (a2),52(sp)			
	move.l 4(a2),56(sp)			
						
	move.l 8(a2),76(sp)			
	move.l 12(a2),80(sp)			
						
	move.l 16(a2),84(sp)			
	move.l 20(a2),88(sp)			
						
	move.l 24(a2),60(sp)			
	move.l 28(a2),64(sp)			
						
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l a2,52(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,116(sp)			
	move.l a1,120(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,132(sp)			
	move.l a1,136(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,260(sp)			
	move.l a1,264(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,140(sp)			
	move.l a1,144(sp)			
						
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 128(sp),-(sp)			
	move.l 128(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,212(sp)			
	move.l a1,216(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 136(sp),-(sp)			
	move.l 136(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,236(sp)			
	move.l a1,240(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,244(sp)			
	move.l a1,248(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,220(sp)			
	move.l a1,224(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 144(sp),-(sp)			
	move.l 144(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,228(sp)			
	move.l a1,232(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 128(sp),-(sp)			
	move.l 128(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,252(sp)			
	move.l a1,256(sp)			
						
	move.l (a6),68(sp)			
	move.l 4(a6),72(sp)			
						
	move.l 16(a6),a0			
	move.l 20(a6),a1			
						
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	move.l a0,60(sp)			
	move.l a1,56(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l d2,124(sp)			
	move.l d3,128(sp)			
						
	move.l 8(a6),d4				
	move.l 12(a6),d5			
						
	move.l 24(a6),d6			
	move.l 28(a6),d7			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l d2,164(sp)			
	move.l d3,168(sp)			
						
	move.l 44(sp),a0			
	move.l 40(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,148(sp)			
	move.l a1,152(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 32(a6),68(sp)			
	move.l 36(a6),72(sp)			
						
	move.l 48(a6),a0			
	move.l 52(a6),a1			
						
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	move.l a0,60(sp)			
	move.l a1,56(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l d2,156(sp)			
	move.l d3,160(sp)			
						
	move.l 40(a6),d4			
	move.l 44(a6),d5			
						
	move.l 56(a6),108(sp)			
	move.l 60(a6),112(sp)			
						
	move.l 112(sp),-(sp)			
	move.l 112(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l d2,172(sp)			
	move.l d3,176(sp)			
						
	move.l 44(sp),a0			
	move.l 40(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,68(sp)			
	move.l a1,72(sp)			
						
	move.l 112(sp),-(sp)			
	move.l 112(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 160(sp),-(sp)			
	move.l 160(sp),-(sp)			
	move.l 136(sp),-(sp)			
	move.l 136(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,108(sp)			
	move.l a1,112(sp)			
						
	move.l 176(sp),-(sp)			
	move.l 176(sp),-(sp)			
	move.l 176(sp),-(sp)			
	move.l 176(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,268(sp)			
	move.l a1,272(sp)			
						
	move.l 160(sp),-(sp)			
	move.l 160(sp),-(sp)			
	move.l 136(sp),-(sp)			
	move.l 136(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,124(sp)			
	move.l a1,128(sp)			
						
	move.l 176(sp),-(sp)			
	move.l 176(sp),-(sp)			
	move.l 176(sp),-(sp)			
	move.l 176(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,164(sp)			
	move.l a1,168(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 160(sp),-(sp)			
	move.l 160(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,156(sp)			
	move.l a1,160(sp)			
						
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,172(sp)			
	move.l a1,176(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 160(sp),-(sp)			
	move.l 160(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,148(sp)			
	move.l a1,152(sp)			
						
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,276(sp)			
	move.l a1,280(sp)			
						
	move.l 64(a6),68(sp)			
	move.l 68(a6),72(sp)			
						
	move.l 80(a6),a0			
	move.l 84(a6),a1			
						
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	move.l a0,60(sp)			
	move.l a1,56(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l d2,180(sp)			
	move.l d3,184(sp)			
						
	move.l 72(a6),d4			
	move.l 76(a6),d5			
						
	move.l 88(a6),d6			
	move.l 92(a6),d7			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l d2,188(sp)			
	move.l d3,192(sp)			
						
	move.l 44(sp),a0			
	move.l 40(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,92(sp)			
	move.l a1,96(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,196(sp)			
	move.l a1,200(sp)			
						
	move.l 96(a6),68(sp)			
	move.l 100(a6),72(sp)			
						
	move.l 112(a6),a0			
	move.l 116(a6),a1			
						
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	move.l a0,60(sp)			
	move.l a1,56(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d2				
	move.l d1,d3				
	move.l d2,100(sp)			
	move.l d3,104(sp)			
						
	move.l 104(a6),d2			
	move.l 108(a6),d3			
						
	move.l 120(a6),d6			
	move.l 124(a6),d7			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	move.l d2,64(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 44(sp),a0			
	move.l 40(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,68(sp)			
	move.l a1,72(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 56(sp),d2			
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 104(sp),-(sp)			
	move.l 104(sp),-(sp)			
	move.l 192(sp),-(sp)			
	move.l 192(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,284(sp)			
	move.l a1,288(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 200(sp),-(sp)			
	move.l 200(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,292(sp)			
	move.l a1,296(sp)			
						
	move.l 104(sp),-(sp)			
	move.l 104(sp),-(sp)			
	move.l 192(sp),-(sp)			
	move.l 192(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,180(sp)			
	move.l a1,184(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 200(sp),-(sp)			
	move.l 200(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,188(sp)			
	move.l a1,192(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 104(sp),-(sp)			
	move.l 104(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,100(sp)			
	move.l a1,104(sp)			
						
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l 208(sp),-(sp)			
	move.l 208(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 104(sp),-(sp)			
	move.l 104(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,92(sp)			
	move.l a1,96(sp)			
						
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l 208(sp),-(sp)			
	move.l 208(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 112(sp),-(sp)			
	move.l 112(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 208(sp),-(sp)			
	move.l 208(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,68(sp)			
	move.l a1,72(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 112(sp),-(sp)			
	move.l 112(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
						
	move.l 208(sp),-(sp)			
	move.l 208(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,196(sp)			
	move.l a1,200(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 104(sp),-(sp)			
	move.l 104(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 208(sp),-(sp)			
	move.l 208(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,100(sp)			
	move.l a1,104(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 104(sp),-(sp)			
	move.l 104(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
						
	move.l 208(sp),-(sp)			
	move.l 208(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,92(sp)			
	move.l a1,96(sp)			
						
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l 168(sp),-(sp)			
	move.l 168(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,300(sp)			
	move.l a1,304(sp)			
						
	move.l 200(sp),-(sp)			
	move.l 200(sp),-(sp)			
	move.l 184(sp),-(sp)			
	move.l 184(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 304(sp),-(sp)			
	move.l 304(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,16(a6)			
	move.l d1,20(a6)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 304(sp),-(sp)			
	move.l 304(sp),-(sp)			
	move.l 88(sp),-(sp)			
	move.l 88(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,24(a6)			
	move.l d1,28(a6)			
						
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l 168(sp),-(sp)			
	move.l 168(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,52(sp)			
	move.l a1,56(sp)			
						
	move.l 200(sp),-(sp)			
	move.l 200(sp),-(sp)			
	move.l 184(sp),-(sp)			
	move.l 184(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 224(sp),-(sp)			
	move.l 224(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 248(sp),-(sp)			
	move.l 248(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,80(a6)			
	move.l d1,84(a6)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 224(sp),-(sp)			
	move.l 224(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 248(sp),-(sp)			
	move.l 248(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,88(a6)			
	move.l d1,92(a6)			
						
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	move.l 160(sp),-(sp)			
	move.l 160(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,52(sp)			
	move.l a1,56(sp)			
						
	move.l 104(sp),-(sp)			
	move.l 104(sp),-(sp)			
	move.l 288(sp),-(sp)			
	move.l 288(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 128(sp),-(sp)			
	move.l 128(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 144(sp),-(sp)			
	move.l 144(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,48(a6)			
	move.l d1,52(a6)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 128(sp),-(sp)			
	move.l 128(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 144(sp),-(sp)			
	move.l 144(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,56(a6)			
	move.l d1,60(a6)			
						
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	move.l 160(sp),-(sp)			
	move.l 160(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,52(sp)			
	move.l a1,56(sp)			
						
	move.l 104(sp),-(sp)			
	move.l 104(sp),-(sp)			
	move.l 288(sp),-(sp)			
	move.l 288(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 240(sp),-(sp)			
	move.l 240(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 264(sp),-(sp)			
	move.l 264(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,112(a6)			
	move.l d1,116(a6)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 240(sp),-(sp)			
	move.l 240(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 264(sp),-(sp)			
	move.l 264(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,120(a6)			
	move.l d1,124(a6)			
						
	move.l 288(sp),-(sp)			
	move.l 288(sp),-(sp)			
	move.l 120(sp),-(sp)			
	move.l 120(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	move.l 296(sp),-(sp)			
	move.l 296(sp),-(sp)			
	move.l 280(sp),-(sp)			
	move.l 280(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,8(a6)				
	move.l d1,12(a6)			
						
	move.l 288(sp),-(sp)			
	move.l 288(sp),-(sp)			
	move.l 120(sp),-(sp)			
	move.l 120(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,52(sp)			
	move.l a1,56(sp)			
						
	move.l 296(sp),-(sp)			
	move.l 296(sp),-(sp)			
	move.l 280(sp),-(sp)			
	move.l 280(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 272(sp),-(sp)			
	move.l 272(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 152(sp),-(sp)			
	move.l 152(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,64(a6)			
	move.l d1,68(a6)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 272(sp),-(sp)			
	move.l 272(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 152(sp),-(sp)			
	move.l 152(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,72(a6)			
	move.l d1,76(a6)			
						
	move.l 192(sp),-(sp)			
	move.l 192(sp),-(sp)			
	move.l 136(sp),-(sp)			
	move.l 136(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,52(sp)			
	move.l a1,56(sp)			
						
	move.l 184(sp),-(sp)			
	move.l 184(sp),-(sp)			
	move.l 176(sp),-(sp)			
	move.l 176(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,32(a6)			
	move.l d1,36(a6)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,40(a6)			
	move.l d1,44(a6)			
						
	move.l 192(sp),-(sp)			
	move.l 192(sp),-(sp)			
	move.l 136(sp),-(sp)			
	move.l 136(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,60(sp)			
	move.l a1,64(sp)			
						
	move.l 184(sp),-(sp)			
	move.l 184(sp),-(sp)			
	move.l 176(sp),-(sp)			
	move.l 176(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 256(sp),-(sp)			
	move.l 256(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 232(sp),-(sp)			
	move.l 232(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,96(a6)			
	move.l d1,100(a6)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 256(sp),-(sp)			
	move.l 256(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 232(sp),-(sp)			
	move.l 232(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,104(a6)			
	move.l d1,108(a6)			
						
	move.l 36(sp),a2			
	lea (32,a2),a2				
	lea (128,a6),a6				
	cmp.l 308(sp),a6			
	jbne _?L29				
_?L27:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (276,sp),sp				
	rts					
						
	.align	2				
						
_cftmdl:					
	lea (-624,sp),sp			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
						
	move.l 668(sp),d0			
	lsl.l #3,d0				
	move.l d0,620(sp)			
						
	move.l 676(sp),a0			
	move.l 16(a0),480(sp)			
	move.l 20(a0),484(sp)			
						
	tst.l 668(sp)				
	jble _?L34				
	move.l 672(sp),a2			
	lea (a2,d0.l),a1			
	move.l a1,476(sp)			
	add.l d0,a1				
	move.l a1,416(sp)			
	move.l 668(sp),d0			
	lsl.l #4,d0				
	add.l a1,d0				
	move.l d0,408(sp)			
	move.l d0,a4				
	add.l 620(sp),a4			
	move.l a4,400(sp)			
	move.l a4,a5				
	add.l 620(sp),a5			
	move.l 620(sp),d0			
	add.l a5,d0				
	move.l d0,424(sp)			
	lea (8,a2),a0				
	move.l a0,352(sp)			
	move.l 620(sp),a4			
	lea 8(a2,a4.l),a1			
	move.l a1,336(sp)			
	move.l 668(sp),a0			
	add.l a0,a0				
	move.l 668(sp),a1			
	lea 1(a1,a0.l),a1			
	move.l a1,d0				
	lsl.l #3,d0				
	add.l a2,d0				
	move.l d0,420(sp)			
	move.l 668(sp),d0			
	subq.l #1,d0				
	move.l d0,552(sp)			
	lsr.l #1,d0				
	lsl.l #4,d0				
	move.w #16,a0				
	add.l a2,a0				
	move.l a0,536(sp)			
	add.l a0,d0				
	move.l d0,512(sp)			
	lea ___adddf3,a4			
	lea ___subdf3,a6			
	lea ___muldf3,a3			
	move.l a5,d3				
	move.l a3,328(sp)			
	move.l a4,a3				
_?L35:						
						
	move.l (a2),344(sp)			
	move.l 4(a2),348(sp)			
						
	move.l 476(sp),a1			
	move.l (a1),a4				
	move.l 4(a1),a5				
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	move.l a2,60(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,428(sp)			
	move.l a1,432(sp)			
						
	move.l 352(sp),a0			
	move.l (a0),d4				
	move.l 4(a0),d5				
						
	move.l 336(sp),a1			
	move.l (a1),d6				
	move.l 4(a1),d7				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,392(sp)			
	move.l a1,396(sp)			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,360(sp)			
	move.l a1,364(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l 416(sp),a0			
	move.l (a0),344(sp)			
	move.l 4(a0),348(sp)			
						
	move.l 420(sp),a1			
	move.l -8(a1),d6			
	move.l -4(a1),d7			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,488(sp)			
	move.l a1,492(sp)			
						
	move.l 416(sp),a0			
	move.l 8(a0),376(sp)			
	move.l 12(a0),380(sp)			
						
	move.l 420(sp),a1			
	move.l (a1),d4				
	move.l 4(a1),d5				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,468(sp)			
	move.l a1,472(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 492(sp),-(sp)			
	move.l 492(sp),-(sp)			
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,504(sp)			
	move.l a1,508(sp)			
						
	move.l 472(sp),-(sp)			
	move.l 472(sp),-(sp)			
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,452(sp)			
	move.l a1,456(sp)			
						
	move.l 492(sp),-(sp)			
	move.l 492(sp),-(sp)			
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,428(sp)			
	move.l a1,432(sp)			
						
	move.l 472(sp),-(sp)			
	move.l 472(sp),-(sp)			
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,392(sp)			
	move.l a1,396(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 372(sp),-(sp)			
	move.l 372(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,488(sp)			
	move.l a1,492(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,468(sp)			
	move.l a1,472(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 372(sp),-(sp)			
	move.l 372(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,360(sp)			
	move.l a1,364(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,460(sp)			
	move.l a1,464(sp)			
						
	move.l 408(sp),a4			
	move.l (a4),344(sp)			
	move.l 4(a4),348(sp)			
						
	move.l 400(sp),a0			
	move.l (a0),d6				
	move.l 4(a0),d7				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,384(sp)			
	move.l a1,388(sp)			
						
	move.l 408(sp),a1			
	move.l 8(a1),a4				
	move.l 12(a1),a5			
						
	move.l 400(sp),a0			
	move.l 8(a0),d4				
	move.l 12(a0),d5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,436(sp)			
	move.l a1,440(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,368(sp)			
	move.l a1,372(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,444(sp)			
	move.l a1,448(sp)			
						
	move.l d3,a1				
	move.l (a1),496(sp)			
	move.l 4(a1),500(sp)			
						
	move.l 424(sp),a4			
	move.l (a4),344(sp)			
	move.l 4(a4),348(sp)			
						
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l 508(sp),-(sp)			
	move.l 508(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d3,a0				
	move.l 8(a0),a4				
	move.l 12(a0),a5			
						
	move.l 424(sp),a1			
	move.l 8(a1),376(sp)			
	move.l 12(a1),380(sp)			
						
	move.l 380(sp),-(sp)			
	move.l 380(sp),-(sp)			
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l 508(sp),-(sp)			
	move.l 508(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,344(sp)			
	move.l a1,348(sp)			
						
	move.l 380(sp),-(sp)			
	move.l 380(sp),-(sp)			
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 396(sp),-(sp)			
	move.l 396(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,376(sp)			
	move.l a1,380(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 448(sp),-(sp)			
	move.l 448(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,496(sp)			
	move.l a1,500(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 396(sp),-(sp)			
	move.l 396(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,384(sp)			
	move.l a1,388(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 448(sp),-(sp)			
	move.l 448(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,436(sp)			
	move.l a1,440(sp)			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 380(sp),-(sp)			
	move.l 380(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l 456(sp),-(sp)			
	move.l 456(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 380(sp),-(sp)			
	move.l 380(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,368(sp)			
	move.l a1,372(sp)			
						
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l 456(sp),-(sp)			
	move.l 456(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 484(sp),-(sp)			
	move.l 484(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 344(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,344(sp)			
	move.l a1,348(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 484(sp),-(sp)			
	move.l 484(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 344(sp),a1			
	jbsr (a1)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 380(sp),-(sp)			
	move.l 380(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 484(sp),-(sp)			
	move.l 484(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 344(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,444(sp)			
	move.l a1,448(sp)			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 380(sp),-(sp)			
	move.l 380(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 484(sp),-(sp)			
	move.l 484(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 344(sp),a1			
	jbsr (a1)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l 500(sp),-(sp)			
	move.l 500(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 476(sp),a4			
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 480(sp),-(sp)			
	move.l 480(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 336(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l 500(sp),-(sp)			
	move.l 500(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 400(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 480(sp),-(sp)			
	move.l 480(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 400(sp),a4			
	move.l d0,8(a4)				
	move.l d1,12(a4)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 372(sp),-(sp)			
	move.l 372(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 420(sp),a0			
	move.l d0,-8(a0)			
	move.l d1,-4(a0)			
						
	move.l 448(sp),-(sp)			
	move.l 448(sp),-(sp)			
	move.l 472(sp),-(sp)			
	move.l 472(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 420(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 372(sp),-(sp)			
	move.l 372(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 424(sp),a4			
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	move.l 448(sp),-(sp)			
	move.l 448(sp),-(sp)			
	move.l 472(sp),-(sp)			
	move.l 472(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 424(sp),a0			
	move.l d0,8(a0)				
	move.l d1,12(a0)			
						
	move.l 380(sp),-(sp)			
	move.l 380(sp),-(sp)			
	move.l 516(sp),-(sp)			
	move.l 516(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l 44(sp),a2			
	move.l d0,(a2)				
	move.l d1,4(a2)				
						
	move.l 500(sp),-(sp)			
	move.l 500(sp),-(sp)			
	move.l 464(sp),-(sp)			
	move.l 464(sp),-(sp)			
	move.l a2,60(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 352(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 380(sp),-(sp)			
	move.l 380(sp),-(sp)			
	move.l 516(sp),-(sp)			
	move.l 516(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 408(sp),a4			
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	move.l 500(sp),-(sp)			
	move.l 500(sp),-(sp)			
	move.l 464(sp),-(sp)			
	move.l 464(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 408(sp),a0			
	move.l d0,8(a0)				
	move.l d1,12(a0)			
						
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 416(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 416(sp),a4			
	move.l d0,8(a4)				
	move.l d1,12(a4)			
						
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d3,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d3,a1				
	move.l d0,8(a1)				
	move.l d1,12(a1)			
						
	move.l 44(sp),a2			
	lea (16,a2),a2				
	moveq #16,d0				
	add.l d0,476(sp)			
	add.l d0,416(sp)			
	add.l d0,408(sp)			
	add.l d0,400(sp)			
	add.l d0,d3				
	add.l d0,424(sp)			
	add.l d0,352(sp)			
	add.l d0,336(sp)			
	add.l d0,420(sp)			
	cmp.l 512(sp),a2			
	jbne _?L35				
	move.l a3,a4				
	move.l 328(sp),a3			
						
	move.l 620(sp),d1			
	cmp.l 664(sp),d1			
	jbge _?L33				
						
	move.l 676(sp),a0			
	move.l 32(a0),400(sp)			
	move.l 36(a0),404(sp)			
						
	move.l 40(a0),408(sp)			
	move.l 44(a0),412(sp)			
						
	move.l 668(sp),d0			
	add.l d1,d0				
	move.l d0,636(sp)			
	move.l d1,d3				
	lsl.l #3,d3				
	move.l 672(sp),a2			
	add.l d3,a2				
	lsl.l #3,d0				
	move.l 672(sp),a5			
	add.l d0,a5				
	move.l 668(sp),d1			
	add.l 636(sp),d1			
	move.l 668(sp),d0			
	add.l d1,d0				
	move.l d0,d2				
	lsl.l #3,d2				
	add.l 672(sp),d2			
	move.l d2,328(sp)			
	add.l 668(sp),d0			
	move.l d0,d2				
	lsl.l #3,d2				
	add.l 672(sp),d2			
	move.l d2,476(sp)			
	add.l 668(sp),d0			
	move.l 668(sp),d2			
	add.l d0,d2				
	move.l d2,d4				
	lsl.l #3,d4				
	add.l 672(sp),d4			
	move.l d4,424(sp)			
	add.l 668(sp),d2			
	lsl.l #3,d2				
	add.l 672(sp),d2			
	move.l d2,420(sp)			
	move.l 672(sp),a0			
	lea 8(a0,d3.l),a0			
	move.l a0,336(sp)			
	addq.l #1,d1				
	lsl.l #3,d1				
	add.l 672(sp),d1			
	move.l d1,416(sp)			
	addq.l #1,d0				
	lsl.l #3,d0				
	move.l 672(sp),d3			
	add.l d0,d3				
	moveq #-2,d0				
	and.l 552(sp),d0			
	add.l 636(sp),d0			
	lsl.l #3,d0				
	add.l 536(sp),d0			
	move.l d0,536(sp)			
_?L39:						
						
	move.l (a2),352(sp)			
	move.l 4(a2),356(sp)			
						
	move.l (a5),d6				
	move.l 4(a5),d7				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 364(sp),-(sp)			
	move.l 364(sp),-(sp)			
	move.l a2,60(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,376(sp)			
	move.l a1,380(sp)			
						
	move.l 336(sp),a1			
	move.l (a1),344(sp)			
	move.l 4(a1),348(sp)			
						
	move.l 8(a5),d4				
	move.l 12(a5),d5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,428(sp)			
	move.l a1,432(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 364(sp),-(sp)			
	move.l 364(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,392(sp)			
	move.l a1,396(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,360(sp)			
	move.l a1,364(sp)			
						
	move.l 416(sp),a0			
	move.l -8(a0),352(sp)			
	move.l -4(a0),356(sp)			
						
	move.l 328(sp),a1			
	move.l (a1),d6				
	move.l 4(a1),d7				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 364(sp),-(sp)			
	move.l 364(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,488(sp)			
	move.l a1,492(sp)			
						
	move.l 416(sp),a0			
	move.l (a0),344(sp)			
	move.l 4(a0),348(sp)			
						
	move.l 328(sp),a1			
	move.l 8(a1),d4				
	move.l 12(a1),d5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,468(sp)			
	move.l a1,472(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 364(sp),-(sp)			
	move.l 364(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 492(sp),-(sp)			
	move.l 492(sp),-(sp)			
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,504(sp)			
	move.l a1,508(sp)			
						
	move.l 472(sp),-(sp)			
	move.l 472(sp),-(sp)			
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,452(sp)			
	move.l a1,456(sp)			
						
	move.l 492(sp),-(sp)			
	move.l 492(sp),-(sp)			
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,488(sp)			
	move.l a1,492(sp)			
						
	move.l 472(sp),-(sp)			
	move.l 472(sp),-(sp)			
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,428(sp)			
	move.l a1,432(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,468(sp)			
	move.l a1,472(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 372(sp),-(sp)			
	move.l 372(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,460(sp)			
	move.l a1,464(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,392(sp)			
	move.l a1,396(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 372(sp),-(sp)			
	move.l 372(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,360(sp)			
	move.l a1,364(sp)			
						
	move.l 476(sp),a0			
	move.l (a0),352(sp)			
	move.l 4(a0),356(sp)			
						
	move.l d3,a1				
	move.l -8(a1),d6			
	move.l -4(a1),d7			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 364(sp),-(sp)			
	move.l 364(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,384(sp)			
	move.l a1,388(sp)			
						
	move.l 476(sp),a0			
	move.l 8(a0),344(sp)			
	move.l 12(a0),348(sp)			
						
	move.l d3,a1				
	move.l (a1),d4				
	move.l 4(a1),d5				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,436(sp)			
	move.l a1,440(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 364(sp),-(sp)			
	move.l 364(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,368(sp)			
	move.l a1,372(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,444(sp)			
	move.l a1,448(sp)			
						
	move.l 424(sp),a0			
	move.l (a0),352(sp)			
	move.l 4(a0),356(sp)			
						
	move.l 420(sp),a1			
	move.l (a1),344(sp)			
	move.l 4(a1),348(sp)			
						
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l 364(sp),-(sp)			
	move.l 364(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,496(sp)			
	move.l a1,500(sp)			
						
	move.l 424(sp),a0			
	move.l 8(a0),376(sp)			
	move.l 12(a0),380(sp)			
						
	move.l 420(sp),a1			
	move.l 8(a1),d4				
	move.l 12(a1),d5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l 364(sp),-(sp)			
	move.l 364(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,352(sp)			
	move.l a1,356(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 500(sp),-(sp)			
	move.l 500(sp),-(sp)			
	move.l 396(sp),-(sp)			
	move.l 396(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,344(sp)			
	move.l a1,348(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 448(sp),-(sp)			
	move.l 448(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,376(sp)			
	move.l a1,380(sp)			
						
	move.l 500(sp),-(sp)			
	move.l 500(sp),-(sp)			
	move.l 396(sp),-(sp)			
	move.l 396(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,384(sp)			
	move.l a1,388(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 448(sp),-(sp)			
	move.l 448(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,436(sp)			
	move.l a1,440(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 380(sp),-(sp)			
	move.l 380(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,496(sp)			
	move.l a1,500(sp)			
						
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	move.l 456(sp),-(sp)			
	move.l 456(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 380(sp),-(sp)			
	move.l 380(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,368(sp)			
	move.l a1,372(sp)			
						
	move.l 448(sp),-(sp)			
	move.l 448(sp),-(sp)			
	move.l 364(sp),-(sp)			
	move.l 364(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,352(sp)			
	move.l a1,356(sp)			
						
	move.l 412(sp),-(sp)			
	move.l 412(sp),-(sp)			
	move.l 508(sp),-(sp)			
	move.l 508(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,444(sp)			
	move.l a1,448(sp)			
						
	move.l 412(sp),-(sp)			
	move.l 412(sp),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	move.l 508(sp),-(sp)			
	move.l 508(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,496(sp)			
	move.l a1,500(sp)			
						
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	move.l 380(sp),-(sp)			
	move.l 380(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 412(sp),-(sp)			
	move.l 412(sp),-(sp)			
	move.l 364(sp),-(sp)			
	move.l 364(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,512(sp)			
	move.l a1,516(sp)			
						
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	move.l 364(sp),-(sp)			
	move.l 364(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 412(sp),-(sp)			
	move.l 412(sp),-(sp)			
	move.l 380(sp),-(sp)			
	move.l 380(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,352(sp)			
	move.l a1,356(sp)			
						
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	move.l 480(sp),-(sp)			
	move.l 480(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 412(sp),-(sp)			
	move.l 412(sp),-(sp)			
	move.l 472(sp),-(sp)			
	move.l 472(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	move.l 472(sp),-(sp)			
	move.l 472(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 412(sp),-(sp)			
	move.l 412(sp),-(sp)			
	move.l 480(sp),-(sp)			
	move.l 480(sp),-(sp)			
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
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 456(sp),-(sp)			
	move.l 456(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 508(sp),-(sp)			
	move.l 508(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,8(a5)				
	move.l d1,12(a5)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 508(sp),-(sp)			
	move.l 508(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d3,a0				
	move.l d0,-8(a0)			
	move.l d1,-4(a0)			
						
	move.l 448(sp),-(sp)			
	move.l 448(sp),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d3,a1				
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 412(sp),-(sp)			
	move.l 412(sp),-(sp)			
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	move.l 372(sp),-(sp)			
	move.l 372(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 412(sp),-(sp)			
	move.l 412(sp),-(sp)			
	move.l 372(sp),-(sp)			
	move.l 372(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
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
						
	move.l 516(sp),-(sp)			
	move.l 516(sp),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 328(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 364(sp),-(sp)			
	move.l 364(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 328(sp),a1			
	move.l d0,8(a1)				
	move.l d1,12(a1)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 364(sp),-(sp)			
	move.l 364(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 420(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 524(sp),-(sp)			
	move.l 524(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 420(sp),a1			
	move.l d0,8(a1)				
	move.l d1,12(a1)			
						
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l 516(sp),-(sp)			
	move.l 516(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l 44(sp),a2			
	move.l d0,(a2)				
	move.l d1,4(a2)				
						
	move.l 380(sp),-(sp)			
	move.l 380(sp),-(sp)			
	move.l 464(sp),-(sp)			
	move.l 464(sp),-(sp)			
	move.l a2,60(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 336(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 456(sp),-(sp)			
	move.l 456(sp),-(sp)			
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 476(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l 516(sp),-(sp)			
	move.l 516(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 476(sp),a0			
	move.l d0,8(a0)				
	move.l d1,12(a0)			
						
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	move.l 500(sp),-(sp)			
	move.l 500(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 484(sp),-(sp)			
	move.l 484(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 416(sp),a1			
	move.l d0,-8(a1)			
	move.l d1,-4(a1)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 484(sp),-(sp)			
	move.l 484(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 416(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 432(sp),-(sp)			
	move.l 432(sp),-(sp)			
	move.l 396(sp),-(sp)			
	move.l 396(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	move.l 500(sp),-(sp)			
	move.l 500(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d1,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 484(sp),-(sp)			
	move.l 484(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 424(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 484(sp),-(sp)			
	move.l 484(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 424(sp),a0			
	move.l d0,8(a0)				
	move.l d1,12(a0)			
						
	move.l 44(sp),a2			
	lea (16,a2),a2				
	lea (16,a5),a5				
	moveq #16,d0				
	add.l d0,328(sp)			
	add.l d0,476(sp)			
	add.l d0,424(sp)			
	add.l d0,420(sp)			
	add.l d0,336(sp)			
	add.l d0,416(sp)			
	add.l d0,d3				
	cmp.l 536(sp),a5			
	jbne _?L39				
_?L38:						
						
	move.l 620(sp),d1			
	add.l d1,d1				
	move.l d1,632(sp)			
						
	move.l 664(sp),a0			
	cmp.l a0,d1				
	jbge _?L33				
	move.w #64,a1				
	add.l 676(sp),a1			
	move.l a1,624(sp)			
	move.l 620(sp),d0			
	add.l 636(sp),d0			
	move.l d0,636(sp)			
	move.l 620(sp),d1			
	lsl.l #3,d1				
	move.l d1,648(sp)			
	move.l 632(sp),d0			
	lsl.l #3,d0				
	add.l 672(sp),d0			
	move.l d0,628(sp)			
	move.l 668(sp),d0			
	add.l d0,d0				
	move.l 668(sp),d1			
	add.l d0,d1				
	move.l 632(sp),d0			
	add.l d1,d0				
	lsl.l #3,d0				
	add.l 672(sp),d0			
	move.l d0,640(sp)			
	move.l 668(sp),d0			
	add.l d1,d0				
	add.l 668(sp),d0			
	add.l 668(sp),d0			
	add.l 632(sp),d0			
	lsl.l #3,d0				
	add.l 672(sp),d0			
	move.l d0,644(sp)			
	move.l 668(sp),d0			
	lsl.l #4,d0				
	lea ___adddf3,a4			
	lea ___subdf3,a6			
	lea ___muldf3,a3			
	addq.l #8,d0				
	move.l d0,652(sp)			
	move.w #16,a0				
	add.l 672(sp),a0			
	move.l a0,656(sp)			
	move.l a4,d3				
_?L42:						
						
	move.l 624(sp),a1			
	move.l (a1),520(sp)			
	move.l 4(a1),524(sp)			
						
	move.l 8(a1),512(sp)			
	move.l 12(a1),516(sp)			
						
	move.l 16(a1),528(sp)			
	move.l 20(a1),532(sp)			
						
	move.l 24(a1),496(sp)			
	move.l 28(a1),500(sp)			
						
	move.l 500(sp),-(sp)			
	move.l 500(sp),-(sp)			
	move.l 508(sp),-(sp)			
	move.l 508(sp),-(sp)			
	move.l d3,a4				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	move.l 524(sp),-(sp)			
	move.l 524(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 532(sp),-(sp)			
	move.l 532(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,536(sp)			
	move.l a1,540(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 532(sp),-(sp)			
	move.l 532(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 516(sp),-(sp)			
	move.l 516(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,544(sp)			
	move.l a1,548(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 508(sp),-(sp)			
	move.l 508(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l #1072693248,-(sp)		
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,560(sp)			
	move.l a1,564(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 540(sp),-(sp)			
	move.l 540(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,552(sp)			
	move.l a1,556(sp)			
						
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	move.l 524(sp),-(sp)			
	move.l 524(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 548(sp),-(sp)			
	move.l 548(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,568(sp)			
	move.l a1,572(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 532(sp),-(sp)			
	move.l 532(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 548(sp),-(sp)			
	move.l 548(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,576(sp)			
	move.l a1,580(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 508(sp),-(sp)			
	move.l 508(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 540(sp),-(sp)			
	move.l 540(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,584(sp)			
	move.l a1,588(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 540(sp),-(sp)			
	move.l 540(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 500(sp),-(sp)			
	move.l 500(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,592(sp)			
	move.l a1,596(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 556(sp),-(sp)			
	move.l 556(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l 532(sp),-(sp)			
	move.l 532(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,600(sp)			
	move.l a1,604(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 548(sp),-(sp)			
	move.l 548(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 516(sp),-(sp)			
	move.l 516(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,608(sp)			
	move.l a1,612(sp)			
						
	move.l 632(sp),d0			
	cmp.l 636(sp),d0			
	jbge _?L40				
	move.l 628(sp),a5			
	add.l 620(sp),a5			
	move.l 640(sp),a0			
	add.l 620(sp),a0			
	move.l a0,420(sp)			
	move.l 644(sp),a1			
	add.l 620(sp),a1			
	move.l a1,408(sp)			
	move.l 628(sp),a4			
	addq.l #8,a4				
	move.l a4,476(sp)			
	move.l 628(sp),a0			
	add.l 652(sp),a0			
	move.l a0,400(sp)			
	move.l 640(sp),a0			
	add.l 652(sp),a0			
	move.l 636(sp),d0			
	subq.l #1,d0				
	sub.l 632(sp),d0			
	moveq #-2,d1				
	and.l d1,d0				
	add.l 636(sp),d0			
	lsl.l #3,d0				
	add.l 656(sp),d0			
	move.l d0,616(sp)			
	move.l 644(sp),416(sp)			
	move.l 640(sp),424(sp)			
	move.l 628(sp),a2			
	move.l d3,a4				
	move.l a0,d3				
_?L41:						
						
	move.l (a2),328(sp)			
	move.l 4(a2),332(sp)			
						
	move.l (a5),d6				
	move.l 4(a5),d7				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 340(sp),-(sp)			
	move.l 340(sp),-(sp)			
	move.l a2,60(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,352(sp)			
	move.l a1,356(sp)			
						
	move.l 476(sp),a0			
	move.l (a0),336(sp)			
	move.l 4(a0),340(sp)			
						
	move.l 8(a5),d4				
	move.l 12(a5),d5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,344(sp)			
	move.l a1,348(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 340(sp),-(sp)			
	move.l 340(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,376(sp)			
	move.l a1,380(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,428(sp)			
	move.l a1,432(sp)			
						
	move.l 400(sp),a1			
	move.l -8(a1),328(sp)			
	move.l -4(a1),332(sp)			
						
	move.l 424(sp),a0			
	move.l (a0),d6				
	move.l 4(a0),d7				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 340(sp),-(sp)			
	move.l 340(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,392(sp)			
	move.l a1,396(sp)			
						
	move.l 400(sp),a1			
	move.l (a1),336(sp)			
	move.l 4(a1),340(sp)			
						
	move.l 424(sp),a0			
	move.l 8(a0),d4				
	move.l 12(a0),d5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,360(sp)			
	move.l a1,364(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 340(sp),-(sp)			
	move.l 340(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 396(sp),-(sp)			
	move.l 396(sp),-(sp)			
	move.l 364(sp),-(sp)			
	move.l 364(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,488(sp)			
	move.l a1,492(sp)			
						
	move.l 364(sp),-(sp)			
	move.l 364(sp),-(sp)			
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,468(sp)			
	move.l a1,472(sp)			
						
	move.l 396(sp),-(sp)			
	move.l 396(sp),-(sp)			
	move.l 364(sp),-(sp)			
	move.l 364(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,392(sp)			
	move.l a1,396(sp)			
						
	move.l 364(sp),-(sp)			
	move.l 364(sp),-(sp)			
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,344(sp)			
	move.l a1,348(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,360(sp)			
	move.l a1,364(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,504(sp)			
	move.l a1,508(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,376(sp)			
	move.l a1,380(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,428(sp)			
	move.l a1,432(sp)			
						
	move.l 420(sp),a1			
	move.l (a1),328(sp)			
	move.l 4(a1),332(sp)			
						
	move.l d3,a0				
	move.l -8(a0),d6			
	move.l -4(a0),d7			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 340(sp),-(sp)			
	move.l 340(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,452(sp)			
	move.l a1,456(sp)			
						
	move.l 420(sp),a1			
	move.l 8(a1),336(sp)			
	move.l 12(a1),340(sp)			
						
	move.l d3,a0				
	move.l (a0),d4				
	move.l 4(a0),d5				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,460(sp)			
	move.l a1,464(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 340(sp),-(sp)			
	move.l 340(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,384(sp)			
	move.l a1,388(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,436(sp)			
	move.l a1,440(sp)			
						
	move.l 416(sp),a1			
	move.l (a1),328(sp)			
	move.l 4(a1),332(sp)			
						
	move.l 408(sp),a0			
	move.l (a0),d6				
	move.l 4(a0),d7				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 340(sp),-(sp)			
	move.l 340(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,368(sp)			
	move.l a1,372(sp)			
						
	move.l 416(sp),a1			
	move.l 8(a1),336(sp)			
	move.l 12(a1),340(sp)			
						
	move.l 408(sp),a0			
	move.l 8(a0),352(sp)			
	move.l 12(a0),356(sp)			
						
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 340(sp),-(sp)			
	move.l 340(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,328(sp)			
	move.l a1,332(sp)			
						
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 372(sp),-(sp)			
	move.l 372(sp),-(sp)			
	move.l 464(sp),-(sp)			
	move.l 464(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,336(sp)			
	move.l a1,340(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 472(sp),-(sp)			
	move.l 472(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,352(sp)			
	move.l a1,356(sp)			
						
	move.l 372(sp),-(sp)			
	move.l 372(sp),-(sp)			
	move.l 464(sp),-(sp)			
	move.l 464(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,452(sp)			
	move.l a1,456(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 472(sp),-(sp)			
	move.l 472(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,460(sp)			
	move.l a1,464(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 396(sp),-(sp)			
	move.l 396(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,368(sp)			
	move.l a1,372(sp)			
						
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	move.l 448(sp),-(sp)			
	move.l 448(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 396(sp),-(sp)			
	move.l 396(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,384(sp)			
	move.l a1,388(sp)			
						
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	move.l 448(sp),-(sp)			
	move.l 448(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 380(sp),-(sp)			
	move.l 380(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 484(sp),-(sp)			
	move.l 484(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,328(sp)			
	move.l a1,332(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 380(sp),-(sp)			
	move.l 380(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 484(sp),-(sp)			
	move.l 484(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,436(sp)			
	move.l a1,440(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 396(sp),-(sp)			
	move.l 396(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 484(sp),-(sp)			
	move.l 484(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,368(sp)			
	move.l a1,372(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 396(sp),-(sp)			
	move.l 396(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 484(sp),-(sp)			
	move.l 484(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,384(sp)			
	move.l a1,388(sp)			
						
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	move.l 372(sp),-(sp)			
	move.l 372(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,444(sp)			
	move.l a1,448(sp)			
						
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	move.l 516(sp),-(sp)			
	move.l 516(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 448(sp),-(sp)			
	move.l 448(sp),-(sp)			
	move.l 532(sp),-(sp)			
	move.l 532(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 524(sp),-(sp)			
	move.l 524(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 532(sp),-(sp)			
	move.l 532(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 448(sp),-(sp)			
	move.l 448(sp),-(sp)			
	move.l 524(sp),-(sp)			
	move.l 524(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,8(a5)				
	move.l d1,12(a5)			
						
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	move.l 372(sp),-(sp)			
	move.l 372(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,328(sp)			
	move.l a1,332(sp)			
						
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	move.l 516(sp),-(sp)			
	move.l 516(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	move.l 580(sp),-(sp)			
	move.l 580(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 588(sp),-(sp)			
	move.l 588(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d3,a1				
	move.l d0,-8(a1)			
	move.l d1,-4(a1)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 580(sp),-(sp)			
	move.l 580(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	move.l 588(sp),-(sp)			
	move.l 588(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d3,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,328(sp)			
	move.l a1,332(sp)			
						
	move.l 372(sp),-(sp)			
	move.l 372(sp),-(sp)			
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	move.l 548(sp),-(sp)			
	move.l 548(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 556(sp),-(sp)			
	move.l 556(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 424(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 548(sp),-(sp)			
	move.l 548(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	move.l 556(sp),-(sp)			
	move.l 556(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 424(sp),a0			
	move.l d0,8(a0)				
	move.l d1,12(a0)			
						
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	move.l 388(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,328(sp)			
	move.l a1,332(sp)			
						
	move.l 372(sp),-(sp)			
	move.l 372(sp),-(sp)			
	move.l 440(sp),-(sp)			
	move.l 440(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	move.l 612(sp),-(sp)			
	move.l 612(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 620(sp),-(sp)			
	move.l 620(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 408(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 612(sp),-(sp)			
	move.l 612(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	move.l 620(sp),-(sp)			
	move.l 620(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 408(sp),a0			
	move.l d0,8(a0)				
	move.l d1,12(a0)			
						
	move.l 340(sp),-(sp)			
	move.l 340(sp),-(sp)			
	move.l 500(sp),-(sp)			
	move.l 500(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l 44(sp),a2			
	move.l d0,(a2)				
	move.l d1,4(a2)				
						
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	move.l 480(sp),-(sp)			
	move.l 480(sp),-(sp)			
	move.l a2,60(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 476(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 340(sp),-(sp)			
	move.l 340(sp),-(sp)			
	move.l 500(sp),-(sp)			
	move.l 500(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,328(sp)			
	move.l a1,332(sp)			
						
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	move.l 480(sp),-(sp)			
	move.l 480(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	move.l 572(sp),-(sp)			
	move.l 572(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 564(sp),-(sp)			
	move.l 564(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 420(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 572(sp),-(sp)			
	move.l 572(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	move.l 564(sp),-(sp)			
	move.l 564(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 420(sp),a1			
	move.l d0,8(a1)				
	move.l d1,12(a1)			
						
	move.l 464(sp),-(sp)			
	move.l 464(sp),-(sp)			
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,328(sp)			
	move.l a1,332(sp)			
						
	move.l 456(sp),-(sp)			
	move.l 456(sp),-(sp)			
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	move.l 540(sp),-(sp)			
	move.l 540(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 508(sp),-(sp)			
	move.l 508(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 400(sp),a0			
	move.l d0,-8(a0)			
	move.l d1,-4(a0)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 540(sp),-(sp)			
	move.l 540(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	move.l 508(sp),-(sp)			
	move.l 508(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 400(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 464(sp),-(sp)			
	move.l 464(sp),-(sp)			
	move.l 404(sp),-(sp)			
	move.l 404(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,328(sp)			
	move.l a1,332(sp)			
						
	move.l 456(sp),-(sp)			
	move.l 456(sp),-(sp)			
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	move.l 596(sp),-(sp)			
	move.l 596(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 604(sp),-(sp)			
	move.l 604(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 416(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 596(sp),-(sp)			
	move.l 596(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	move.l 604(sp),-(sp)			
	move.l 604(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 416(sp),a1			
	move.l d0,8(a1)				
	move.l d1,12(a1)			
						
	move.l 44(sp),a2			
	lea (16,a2),a2				
	lea (16,a5),a5				
	moveq #16,d0				
	add.l d0,424(sp)			
	add.l d0,420(sp)			
	add.l d0,416(sp)			
	add.l d0,408(sp)			
	add.l d0,476(sp)			
	add.l d0,400(sp)			
	add.l d0,d3				
	cmp.l 616(sp),a5			
	jbne _?L41				
	move.l a4,d3				
_?L40:						
						
	move.l 620(sp),d1			
	add.l d1,632(sp)			
						
	moveq #32,d0				
	add.l d0,624(sp)			
	add.l d1,636(sp)			
	move.l 648(sp),d1			
	add.l d1,628(sp)			
	add.l d1,640(sp)			
	add.l d1,644(sp)			
	move.l 664(sp),a0			
	cmp.l 632(sp),a0			
	jbgt _?L42				
_?L33:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (624,sp),sp				
	rts					
_?L34:						
						
	move.l 620(sp),d1			
	cmp.l 664(sp),d1			
	jbge _?L33				
						
	move.l 668(sp),d0			
	add.l d1,d0				
	move.l d0,636(sp)			
	jbra _?L38				
						
	.align	2				
						
_cftbsub:					
	lea (-320,sp),sp			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 360(sp),d4			
	move.l 364(sp),a3			
	move.l 368(sp),a4			
						
	moveq #16,d0				
	cmp.l d4,d0				
	jblt _?L80				
						
	moveq #8,d1				
	cmp.l d4,d1				
	jblt _?L81				
						
	moveq #8,d0				
						
	moveq #2,d3				
						
	cmp.l d4,d0				
	jbeq _?L69				
	moveq #16,d0				
	move.l a3,a0				
	lea (a3,d0.l),a1			
	lea (8,a3),a5				
	lea 8(a3,d0.l),a4			
						
	moveq #0,d6				
	lea ___adddf3,a6			
	lea ___subdf3,a3			
	move.l a0,d7				
	move.l a6,224(sp)			
	move.l a1,a6				
_?L66:						
						
	move.l d7,a0				
	move.l (a0),184(sp)			
	move.l 4(a0),188(sp)			
						
	move.l (a6),192(sp)			
	move.l 4(a6),196(sp)			
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d5				
	move.l d1,d4				
						
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	move.l 240(sp),a1			
	jbsr (a1)				
	lea (16,sp),sp				
	move.l d7,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l (a5),d0				
	add.l #-2147483648,d0			
	move.l d0,160(sp)			
	move.l 4(a5),164(sp)			
						
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	move.l 172(sp),-(sp)			
	move.l 172(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
						
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	move.l d5,d0				
	move.l d4,d1				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	addq.l #2,d6				
						
	moveq #16,d1				
	add.l d1,d7				
	lea (16,a6),a6				
	lea (16,a5),a5				
	lea (16,a4),a4				
	cmp.l d6,d3				
	jbgt _?L66				
_?L51:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (320,sp),sp				
	rts					
_?L81:						
						
	move.l 16(a4),296(sp)			
	move.l 20(a4),300(sp)			
						
	moveq #2,d3				
	moveq #16,d0				
	move.w #4,a0				
	move.l a3,a2				
	move.l d3,d1				
	lsl.l #4,d1				
	lea (a3,d1.l),a1			
	move.l a1,200(sp)			
	add.l a1,d1				
	move.l d1,160(sp)			
	move.l d1,a4				
	add.l d0,a4				
	move.l a4,192(sp)			
	add.l d0,a4				
	move.l a4,184(sp)			
	add.l a4,d0				
	move.l d0,232(sp)			
	lea (8,a3),a1				
	move.l a1,304(sp)			
	move.l d3,d0				
	addq.l #1,d0				
	lsl.l #3,d0				
	add.l a3,d0				
	move.l d0,224(sp)			
	lea 1(a0,d3.l),a0			
	move.l a0,d0				
	lsl.l #3,d0				
	lea (a3,d0.l),a0			
						
	clr.l 312(sp)				
	lea ___adddf3,a6			
	lea ___subdf3,a3			
	move.l d3,352(sp)			
	move.l a0,d3				
_?L63:						
						
	move.l (a2),152(sp)			
	move.l 4(a2),156(sp)			
						
	move.l 224(sp),a0			
	move.l -8(a0),a4			
	move.l -4(a0),a5			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	move.l a2,60(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,240(sp)			
	move.l a1,244(sp)			
						
	move.l 304(sp),a1			
	move.l (a1),d4				
	move.l 4(a1),d5				
						
	move.l 224(sp),a0			
	move.l (a0),d6				
	move.l 4(a0),d7				
						
	move.l d4,d0				
	add.l #-2147483648,d0			
	move.l d0,320(sp)			
	move.l d5,324(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,248(sp)			
	move.l a1,252(sp)			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,168(sp)			
	move.l a1,172(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 200(sp),a0			
	move.l (a0),152(sp)			
	move.l 4(a0),156(sp)			
						
	move.l d3,a1				
	move.l -8(a1),a4			
	move.l -4(a1),a5			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,176(sp)			
	move.l a1,180(sp)			
						
	move.l 200(sp),a0			
	move.l 8(a0),d4				
	move.l 12(a0),d5			
						
	move.l d3,a1				
	move.l (a1),208(sp)			
	move.l 4(a1),212(sp)			
						
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,256(sp)			
	move.l a1,260(sp)			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 180(sp),-(sp)			
	move.l 180(sp),-(sp)			
	move.l 252(sp),-(sp)			
	move.l 252(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,328(sp)			
	move.l a1,332(sp)			
						
	move.l 260(sp),-(sp)			
	move.l 260(sp),-(sp)			
	move.l 260(sp),-(sp)			
	move.l 260(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,336(sp)			
	move.l a1,340(sp)			
						
	move.l 180(sp),-(sp)			
	move.l 180(sp),-(sp)			
	move.l 252(sp),-(sp)			
	move.l 252(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,240(sp)			
	move.l a1,244(sp)			
						
	move.l 260(sp),-(sp)			
	move.l 260(sp),-(sp)			
	move.l 260(sp),-(sp)			
	move.l 260(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,248(sp)			
	move.l a1,252(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 180(sp),-(sp)			
	move.l 180(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,176(sp)			
	move.l a1,180(sp)			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,256(sp)			
	move.l a1,260(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 180(sp),-(sp)			
	move.l 180(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,168(sp)			
	move.l a1,172(sp)			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,344(sp)			
	move.l a1,348(sp)			
						
	move.l 160(sp),a4			
	move.l (a4),152(sp)			
	move.l 4(a4),156(sp)			
						
	move.l 192(sp),a0			
	move.l (a0),d6				
	move.l 4(a0),d7				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,264(sp)			
	move.l a1,268(sp)			
						
	move.l 160(sp),a1			
	move.l 8(a1),a4				
	move.l 12(a1),a5			
						
	move.l 192(sp),a0			
	move.l 8(a0),d4				
	move.l 12(a0),d5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,272(sp)			
	move.l a1,276(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,216(sp)			
	move.l a1,220(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,280(sp)			
	move.l a1,284(sp)			
						
	move.l 184(sp),a1			
	move.l (a1),288(sp)			
	move.l 4(a1),292(sp)			
						
	move.l 232(sp),a4			
	move.l (a4),d6				
	move.l 4(a4),d7				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 300(sp),-(sp)			
	move.l 300(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l 184(sp),a0			
	move.l 8(a0),152(sp)			
	move.l 12(a0),156(sp)			
						
	move.l 232(sp),a1			
	move.l 8(a1),208(sp)			
	move.l 12(a1),212(sp)			
						
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 300(sp),-(sp)			
	move.l 300(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,288(sp)			
	move.l a1,292(sp)			
						
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 276(sp),-(sp)			
	move.l 276(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,152(sp)			
	move.l a1,156(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 284(sp),-(sp)			
	move.l 284(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,208(sp)			
	move.l a1,212(sp)			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 276(sp),-(sp)			
	move.l 276(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,264(sp)			
	move.l a1,268(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 284(sp),-(sp)			
	move.l 284(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,272(sp)			
	move.l a1,276(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 228(sp),-(sp)			
	move.l 228(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l 292(sp),-(sp)			
	move.l 292(sp),-(sp)			
	move.l 292(sp),-(sp)			
	move.l 292(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 228(sp),-(sp)			
	move.l 228(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,216(sp)			
	move.l a1,220(sp)			
						
	move.l 292(sp),-(sp)			
	move.l 292(sp),-(sp)			
	move.l 292(sp),-(sp)			
	move.l 292(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 300(sp),-(sp)			
	move.l 300(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,280(sp)			
	move.l a1,284(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 300(sp),-(sp)			
	move.l 300(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 228(sp),-(sp)			
	move.l 228(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 300(sp),-(sp)			
	move.l 300(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,288(sp)			
	move.l a1,292(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 228(sp),-(sp)			
	move.l 228(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 300(sp),-(sp)			
	move.l 300(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 284(sp),-(sp)			
	move.l 284(sp),-(sp)			
	move.l 188(sp),-(sp)			
	move.l 188(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 224(sp),a0			
	move.l d0,-8(a0)			
	move.l d1,-4(a0)			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 268(sp),-(sp)			
	move.l 268(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 224(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 284(sp),-(sp)			
	move.l 284(sp),-(sp)			
	move.l 188(sp),-(sp)			
	move.l 188(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 192(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 268(sp),-(sp)			
	move.l 268(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 192(sp),a1			
	move.l d0,8(a1)				
	move.l d1,12(a1)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 180(sp),-(sp)			
	move.l 180(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d3,a4				
	move.l d0,-8(a4)			
	move.l d1,-4(a4)			
						
	move.l 292(sp),-(sp)			
	move.l 292(sp),-(sp)			
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 180(sp),-(sp)			
	move.l 180(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 232(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 292(sp),-(sp)			
	move.l 292(sp),-(sp)			
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 232(sp),a4			
	move.l d0,8(a4)				
	move.l d1,12(a4)			
						
	move.l 156(sp),-(sp)			
	move.l 156(sp),-(sp)			
	move.l 340(sp),-(sp)			
	move.l 340(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l 44(sp),a2			
	move.l d0,(a2)				
	move.l d1,4(a2)				
						
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l a2,60(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 304(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 156(sp),-(sp)			
	move.l 156(sp),-(sp)			
	move.l 340(sp),-(sp)			
	move.l 340(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 160(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 160(sp),a4			
	move.l d0,8(a4)				
	move.l d1,12(a4)			
						
	move.l 276(sp),-(sp)			
	move.l 276(sp),-(sp)			
	move.l 252(sp),-(sp)			
	move.l 252(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 200(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 268(sp),-(sp)			
	move.l 268(sp),-(sp)			
	move.l 260(sp),-(sp)			
	move.l 260(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 200(sp),a1			
	move.l d0,8(a1)				
	move.l d1,12(a1)			
						
	move.l 276(sp),-(sp)			
	move.l 276(sp),-(sp)			
	move.l 252(sp),-(sp)			
	move.l 252(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 184(sp),a4			
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	move.l 268(sp),-(sp)			
	move.l 268(sp),-(sp)			
	move.l 260(sp),-(sp)			
	move.l 260(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 184(sp),a0			
	move.l d0,8(a0)				
	move.l d1,12(a0)			
						
	addq.l #2,312(sp)			
						
	move.l 44(sp),a2			
	lea (16,a2),a2				
	moveq #16,d0				
	add.l d0,200(sp)			
	add.l d0,160(sp)			
	add.l d0,192(sp)			
	add.l d0,184(sp)			
	add.l d0,232(sp)			
	add.l d0,304(sp)			
	add.l d0,224(sp)			
	add.l d0,d3				
	move.l 312(sp),a0			
	cmp.l 352(sp),a0			
	jbge _?L51				
						
	move.l (a2),152(sp)			
	move.l 4(a2),156(sp)			
						
	move.l 224(sp),a0			
	move.l -8(a0),a4			
	move.l -4(a0),a5			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	move.l a2,60(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,240(sp)			
	move.l a1,244(sp)			
						
	move.l 304(sp),a1			
	move.l (a1),d4				
	move.l 4(a1),d5				
						
	move.l 224(sp),a0			
	move.l (a0),d6				
	move.l 4(a0),d7				
						
	move.l d4,d0				
	add.l #-2147483648,d0			
	move.l d0,320(sp)			
	move.l d5,324(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 332(sp),-(sp)			
	move.l 332(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,248(sp)			
	move.l a1,252(sp)			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,168(sp)			
	move.l a1,172(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l 200(sp),a0			
	move.l (a0),152(sp)			
	move.l 4(a0),156(sp)			
						
	move.l d3,a1				
	move.l -8(a1),a4			
	move.l -4(a1),a5			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,176(sp)			
	move.l a1,180(sp)			
						
	move.l 200(sp),a0			
	move.l 8(a0),d4				
	move.l 12(a0),d5			
						
	move.l d3,a1				
	move.l (a1),208(sp)			
	move.l 4(a1),212(sp)			
						
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,256(sp)			
	move.l a1,260(sp)			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 180(sp),-(sp)			
	move.l 180(sp),-(sp)			
	move.l 252(sp),-(sp)			
	move.l 252(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,328(sp)			
	move.l a1,332(sp)			
						
	move.l 260(sp),-(sp)			
	move.l 260(sp),-(sp)			
	move.l 260(sp),-(sp)			
	move.l 260(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,336(sp)			
	move.l a1,340(sp)			
						
	move.l 180(sp),-(sp)			
	move.l 180(sp),-(sp)			
	move.l 252(sp),-(sp)			
	move.l 252(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,240(sp)			
	move.l a1,244(sp)			
						
	move.l 260(sp),-(sp)			
	move.l 260(sp),-(sp)			
	move.l 260(sp),-(sp)			
	move.l 260(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,248(sp)			
	move.l a1,252(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 180(sp),-(sp)			
	move.l 180(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,176(sp)			
	move.l a1,180(sp)			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,256(sp)			
	move.l a1,260(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 180(sp),-(sp)			
	move.l 180(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,168(sp)			
	move.l a1,172(sp)			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,344(sp)			
	move.l a1,348(sp)			
						
	move.l 160(sp),a4			
	move.l (a4),152(sp)			
	move.l 4(a4),156(sp)			
						
	move.l 192(sp),a0			
	move.l (a0),d6				
	move.l 4(a0),d7				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,264(sp)			
	move.l a1,268(sp)			
						
	move.l 160(sp),a1			
	move.l 8(a1),a4				
	move.l 12(a1),a5			
						
	move.l 192(sp),a0			
	move.l 8(a0),d4				
	move.l 12(a0),d5			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,272(sp)			
	move.l a1,276(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,216(sp)			
	move.l a1,220(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,280(sp)			
	move.l a1,284(sp)			
						
	move.l 184(sp),a1			
	move.l (a1),288(sp)			
	move.l 4(a1),292(sp)			
						
	move.l 232(sp),a4			
	move.l (a4),d6				
	move.l 4(a4),d7				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 300(sp),-(sp)			
	move.l 300(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l 184(sp),a0			
	move.l 8(a0),152(sp)			
	move.l 12(a0),156(sp)			
						
	move.l 232(sp),a1			
	move.l 8(a1),208(sp)			
	move.l 12(a1),212(sp)			
						
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 300(sp),-(sp)			
	move.l 300(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,288(sp)			
	move.l a1,292(sp)			
						
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 276(sp),-(sp)			
	move.l 276(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,152(sp)			
	move.l a1,156(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 284(sp),-(sp)			
	move.l 284(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,208(sp)			
	move.l a1,212(sp)			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 276(sp),-(sp)			
	move.l 276(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,264(sp)			
	move.l a1,268(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 284(sp),-(sp)			
	move.l 284(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,272(sp)			
	move.l a1,276(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 228(sp),-(sp)			
	move.l 228(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l 292(sp),-(sp)			
	move.l 292(sp),-(sp)			
	move.l 292(sp),-(sp)			
	move.l 292(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 228(sp),-(sp)			
	move.l 228(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,216(sp)			
	move.l a1,220(sp)			
						
	move.l 292(sp),-(sp)			
	move.l 292(sp),-(sp)			
	move.l 292(sp),-(sp)			
	move.l 292(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 300(sp),-(sp)			
	move.l 300(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,280(sp)			
	move.l a1,284(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 300(sp),-(sp)			
	move.l 300(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,a4				
	move.l d1,a5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 228(sp),-(sp)			
	move.l 228(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 300(sp),-(sp)			
	move.l 300(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,288(sp)			
	move.l a1,292(sp)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 228(sp),-(sp)			
	move.l 228(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 300(sp),-(sp)			
	move.l 300(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 284(sp),-(sp)			
	move.l 284(sp),-(sp)			
	move.l 188(sp),-(sp)			
	move.l 188(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 224(sp),a0			
	move.l d0,-8(a0)			
	move.l d1,-4(a0)			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 268(sp),-(sp)			
	move.l 268(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 224(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 284(sp),-(sp)			
	move.l 284(sp),-(sp)			
	move.l 188(sp),-(sp)			
	move.l 188(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 192(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l 268(sp),-(sp)			
	move.l 268(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 192(sp),a1			
	move.l d0,8(a1)				
	move.l d1,12(a1)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 180(sp),-(sp)			
	move.l 180(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d3,a4				
	move.l d0,-8(a4)			
	move.l d1,-4(a4)			
						
	move.l 292(sp),-(sp)			
	move.l 292(sp),-(sp)			
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 180(sp),-(sp)			
	move.l 180(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 232(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 292(sp),-(sp)			
	move.l 292(sp),-(sp)			
	move.l 356(sp),-(sp)			
	move.l 356(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 232(sp),a4			
	move.l d0,8(a4)				
	move.l d1,12(a4)			
						
	move.l 156(sp),-(sp)			
	move.l 156(sp),-(sp)			
	move.l 340(sp),-(sp)			
	move.l 340(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l 44(sp),a2			
	move.l d0,(a2)				
	move.l d1,4(a2)				
						
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l a2,60(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 304(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 156(sp),-(sp)			
	move.l 156(sp),-(sp)			
	move.l 340(sp),-(sp)			
	move.l 340(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 160(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l 348(sp),-(sp)			
	move.l 348(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 160(sp),a4			
	move.l d0,8(a4)				
	move.l d1,12(a4)			
						
	move.l 276(sp),-(sp)			
	move.l 276(sp),-(sp)			
	move.l 252(sp),-(sp)			
	move.l 252(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 200(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 268(sp),-(sp)			
	move.l 268(sp),-(sp)			
	move.l 260(sp),-(sp)			
	move.l 260(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l 200(sp),a1			
	move.l d0,8(a1)				
	move.l d1,12(a1)			
						
	move.l 276(sp),-(sp)			
	move.l 276(sp),-(sp)			
	move.l 252(sp),-(sp)			
	move.l 252(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 184(sp),a4			
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	move.l 268(sp),-(sp)			
	move.l 268(sp),-(sp)			
	move.l 260(sp),-(sp)			
	move.l 260(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 184(sp),a0			
	move.l d0,8(a0)				
	move.l d1,12(a0)			
						
	addq.l #2,312(sp)			
						
	move.l 44(sp),a2			
	lea (16,a2),a2				
	moveq #16,d0				
	add.l d0,200(sp)			
	add.l d0,160(sp)			
	add.l d0,192(sp)			
	add.l d0,184(sp)			
	add.l d0,232(sp)			
	add.l d0,304(sp)			
	add.l d0,224(sp)			
	add.l d0,d3				
	move.l 312(sp),a0			
	cmp.l 352(sp),a0			
	jblt _?L63				
	jbra _?L51				
_?L80:						
						
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l d4,-(sp)				
	jbsr _cft1st				
	lea (12,sp),sp				
						
	cmp.l #128,d4				
	jble _?L53				
						
	moveq #16,d1				
						
	moveq #127,d3				
	not.b d3				
	lea _cftmdl,a5				
						
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
						
	move.l d3,d0				
	lsl.l #3,d0				
	move.l d3,d1				
						
	cmp.l d0,d4				
	jble _?L82				
_?L67:						
						
	move.l d0,d3				
						
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
						
	move.l d3,d0				
	lsl.l #3,d0				
	move.l d3,d1				
						
	cmp.l d0,d4				
	jbgt _?L67				
_?L82:						
						
	move.l d3,a0				
	add.l d3,a0				
	move.l a0,d1				
	add.l a0,d1				
						
	cmp.l d1,d4				
	jble _?L61				
						
	tst.l d3				
	jble _?L51				
						
	move.l 16(a4),296(sp)			
	move.l 20(a4),300(sp)			
	move.l a3,a2				
	move.l d3,d1				
	lsl.l #4,d1				
	lea (a3,d1.l),a1			
	move.l a1,200(sp)			
	add.l a1,d1				
	move.l d1,160(sp)			
	move.l d1,a4				
	add.l d0,a4				
	move.l a4,192(sp)			
	add.l d0,a4				
	move.l a4,184(sp)			
	add.l a4,d0				
	move.l d0,232(sp)			
	lea (8,a3),a1				
	move.l a1,304(sp)			
	move.l d3,d0				
	addq.l #1,d0				
	lsl.l #3,d0				
	add.l a3,d0				
	move.l d0,224(sp)			
	lea 1(a0,d3.l),a0			
	move.l a0,d0				
	lsl.l #3,d0				
	lea (a3,d0.l),a0			
						
	clr.l 312(sp)				
	lea ___adddf3,a6			
	lea ___subdf3,a3			
	move.l d3,352(sp)			
	move.l a0,d3				
	jbra _?L63				
_?L61:						
						
	cmp.l d1,d4				
	jbeq _?L64				
						
	tst.l d3				
	jble _?L51				
	move.l a3,a0				
	lea (a3,d0.l),a1			
	lea (8,a3),a5				
	lea 8(a3,d0.l),a4			
						
	moveq #0,d6				
	lea ___adddf3,a6			
	lea ___subdf3,a3			
	move.l a0,d7				
	move.l a6,224(sp)			
	move.l a1,a6				
	jbra _?L66				
_?L69:						
	moveq #16,d0				
_?L59:						
	move.l a3,a2				
	lea (a3,d0.l),a0			
	lea (a0,d0.l),a5			
	lea (a5,d0.l),a4			
	move.l a3,d4				
	addq.l #8,d4				
	lea 8(a3,d0.l),a1			
						
	moveq #0,d7				
	lea ___adddf3,a6			
	lea ___subdf3,a3			
	move.l d3,240(sp)			
	move.l a1,d3				
	move.l a0,d5				
	move.l a2,d6				
_?L65:						
						
	move.l d6,a0				
	move.l (a0),192(sp)			
	move.l 4(a0),196(sp)			
						
	move.l d5,a1				
	move.l (a1),160(sp)			
	move.l 4(a1),164(sp)			
						
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	move.l 204(sp),-(sp)			
	move.l 204(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,224(sp)			
	move.l a1,228(sp)			
						
	move.l d4,a0				
	move.l (a0),184(sp)			
	move.l 4(a0),188(sp)			
						
	move.l d3,a1				
	move.l (a1),200(sp)			
	move.l 4(a1),204(sp)			
						
	move.l 184(sp),d0			
	add.l #-2147483648,d0			
	move.l d0,232(sp)			
	move.l 188(sp),236(sp)			
						
	move.l 204(sp),-(sp)			
	move.l 204(sp),-(sp)			
	move.l 244(sp),-(sp)			
	move.l 244(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,296(sp)			
	move.l a1,300(sp)			
						
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	move.l 204(sp),-(sp)			
	move.l 204(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,304(sp)			
	move.l a1,308(sp)			
						
	move.l 188(sp),-(sp)			
	move.l 188(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,312(sp)			
	move.l a1,316(sp)			
						
	move.l (a5),184(sp)			
	move.l 4(a5),188(sp)			
						
	move.l (a4),192(sp)			
	move.l 4(a4),196(sp)			
						
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,152(sp)			
	move.l a1,156(sp)			
						
	move.l 8(a5),160(sp)			
	move.l 12(a5),164(sp)			
						
	move.l 8(a4),200(sp)			
	move.l 12(a4),204(sp)			
						
	move.l 204(sp),-(sp)			
	move.l 204(sp),-(sp)			
	move.l 172(sp),-(sp)			
	move.l 172(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,208(sp)			
	move.l a1,212(sp)			
						
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,184(sp)			
	move.l a1,188(sp)			
						
	move.l 204(sp),-(sp)			
	move.l 204(sp),-(sp)			
	move.l 172(sp),-(sp)			
	move.l 172(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,192(sp)			
	move.l a1,196(sp)			
						
	move.l 156(sp),-(sp)			
	move.l 156(sp),-(sp)			
	move.l 236(sp),-(sp)			
	move.l 236(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d6,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l 308(sp),-(sp)			
	move.l 308(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d4,a1				
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 156(sp),-(sp)			
	move.l 156(sp),-(sp)			
	move.l 236(sp),-(sp)			
	move.l 236(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
						
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l 308(sp),-(sp)			
	move.l 308(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,8(a5)				
	move.l d1,12(a5)			
						
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	move.l 316(sp),-(sp)			
	move.l 316(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d5,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 188(sp),-(sp)			
	move.l 188(sp),-(sp)			
	move.l 324(sp),-(sp)			
	move.l 324(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d3,a1				
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	move.l 316(sp),-(sp)			
	move.l 316(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	move.l 188(sp),-(sp)			
	move.l 188(sp),-(sp)			
	move.l 324(sp),-(sp)			
	move.l 324(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,8(a4)				
	move.l d1,12(a4)			
						
	addq.l #2,d7				
						
	moveq #16,d0				
	add.l d0,d6				
	add.l d0,d5				
	lea (16,a5),a5				
	lea (16,a4),a4				
	add.l d0,d4				
	add.l d0,d3				
	cmp.l 240(sp),d7			
	jbge _?L51				
						
	move.l d6,a0				
	move.l (a0),192(sp)			
	move.l 4(a0),196(sp)			
						
	move.l d5,a1				
	move.l (a1),160(sp)			
	move.l 4(a1),164(sp)			
						
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	move.l 204(sp),-(sp)			
	move.l 204(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,224(sp)			
	move.l a1,228(sp)			
						
	move.l d4,a0				
	move.l (a0),184(sp)			
	move.l 4(a0),188(sp)			
						
	move.l d3,a1				
	move.l (a1),200(sp)			
	move.l 4(a1),204(sp)			
						
	move.l 184(sp),d0			
	add.l #-2147483648,d0			
	move.l d0,232(sp)			
	move.l 188(sp),236(sp)			
						
	move.l 204(sp),-(sp)			
	move.l 204(sp),-(sp)			
	move.l 244(sp),-(sp)			
	move.l 244(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,296(sp)			
	move.l a1,300(sp)			
						
	move.l 164(sp),-(sp)			
	move.l 164(sp),-(sp)			
	move.l 204(sp),-(sp)			
	move.l 204(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,304(sp)			
	move.l a1,308(sp)			
						
	move.l 188(sp),-(sp)			
	move.l 188(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,312(sp)			
	move.l a1,316(sp)			
						
	move.l (a5),184(sp)			
	move.l 4(a5),188(sp)			
						
	move.l (a4),192(sp)			
	move.l 4(a4),196(sp)			
						
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,152(sp)			
	move.l a1,156(sp)			
						
	move.l 8(a5),160(sp)			
	move.l 12(a5),164(sp)			
						
	move.l 8(a4),200(sp)			
	move.l 12(a4),204(sp)			
						
	move.l 204(sp),-(sp)			
	move.l 204(sp),-(sp)			
	move.l 172(sp),-(sp)			
	move.l 172(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,208(sp)			
	move.l a1,212(sp)			
						
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,184(sp)			
	move.l a1,188(sp)			
						
	move.l 204(sp),-(sp)			
	move.l 204(sp),-(sp)			
	move.l 172(sp),-(sp)			
	move.l 172(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,192(sp)			
	move.l a1,196(sp)			
						
	move.l 156(sp),-(sp)			
	move.l 156(sp),-(sp)			
	move.l 236(sp),-(sp)			
	move.l 236(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d6,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l 308(sp),-(sp)			
	move.l 308(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d4,a1				
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 156(sp),-(sp)			
	move.l 156(sp),-(sp)			
	move.l 236(sp),-(sp)			
	move.l 236(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
						
	move.l 212(sp),-(sp)			
	move.l 212(sp),-(sp)			
	move.l 308(sp),-(sp)			
	move.l 308(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,8(a5)				
	move.l d1,12(a5)			
						
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	move.l 316(sp),-(sp)			
	move.l 316(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d5,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 188(sp),-(sp)			
	move.l 188(sp),-(sp)			
	move.l 324(sp),-(sp)			
	move.l 324(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d3,a1				
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 196(sp),-(sp)			
	move.l 196(sp),-(sp)			
	move.l 316(sp),-(sp)			
	move.l 316(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	move.l 188(sp),-(sp)			
	move.l 188(sp),-(sp)			
	move.l 324(sp),-(sp)			
	move.l 324(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,8(a4)				
	move.l d1,12(a4)			
						
	addq.l #2,d7				
						
	moveq #16,d0				
	add.l d0,d6				
	add.l d0,d5				
	lea (16,a5),a5				
	lea (16,a4),a4				
	add.l d0,d4				
	add.l d0,d3				
	cmp.l 240(sp),d7			
	jblt _?L65				
	jbra _?L51				
_?L64:						
	tst.l d3				
	jble _?L51				
	move.l a3,a2				
	lea (a3,d0.l),a0			
	lea (a0,d0.l),a5			
	lea (a5,d0.l),a4			
	move.l a3,d4				
	addq.l #8,d4				
	lea 8(a3,d0.l),a1			
						
	moveq #0,d7				
	lea ___adddf3,a6			
	lea ___subdf3,a3			
	move.l d3,240(sp)			
	move.l a1,d3				
	move.l a0,d5				
	move.l a2,d6				
	jbra _?L65				
_?L53:						
						
	moveq #64,d0				
	cmp.l d4,d0				
	jbge _?L58				
						
	move.l 16(a4),296(sp)			
	move.l 20(a4),300(sp)			
						
	moveq #16,d3				
	moveq #127,d0				
	not.b d0				
	move.w #32,a0				
	move.l a3,a2				
	move.l d3,d1				
	lsl.l #4,d1				
	lea (a3,d1.l),a1			
	move.l a1,200(sp)			
	add.l a1,d1				
	move.l d1,160(sp)			
	move.l d1,a4				
	add.l d0,a4				
	move.l a4,192(sp)			
	add.l d0,a4				
	move.l a4,184(sp)			
	add.l a4,d0				
	move.l d0,232(sp)			
	lea (8,a3),a1				
	move.l a1,304(sp)			
	move.l d3,d0				
	addq.l #1,d0				
	lsl.l #3,d0				
	add.l a3,d0				
	move.l d0,224(sp)			
	lea 1(a0,d3.l),a0			
	move.l a0,d0				
	lsl.l #3,d0				
	lea (a3,d0.l),a0			
						
	clr.l 312(sp)				
	lea ___adddf3,a6			
	lea ___subdf3,a3			
	move.l d3,352(sp)			
	move.l a0,d3				
	jbra _?L63				
_?L58:						
						
	moveq #64,d1				
						
	moveq #16,d3				
	moveq #127,d0				
	not.b d0				
						
	cmp.l d4,d1				
	jbeq _?L59				
	move.l a3,a0				
	lea (a3,d0.l),a1			
	lea (8,a3),a5				
	lea 8(a3,d0.l),a4			
						
	moveq #0,d6				
	lea ___adddf3,a6			
	lea ___subdf3,a3			
	move.l a0,d7				
	move.l a6,224(sp)			
	move.l a1,a6				
	jbra _?L66				
						
	.align	2				
						
_cftfsub:					
	lea (-88,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 128(sp),d3			
	move.l 132(sp),a6			
	move.l 136(sp),d4			
						
	moveq #15,d0				
	cmp.l d3,d0				
	jblt _?L110				
						
	moveq #4,d1				
	cmp.l d3,d1				
	jbge _?L111				
						
	moveq #2,d1				
	move.l d1,120(sp)			
	moveq #16,d0				
	move.l a6,a2				
	lea (a6,d0.l),a0			
	lea (a0,d0.l),a6			
	lea (a6,d0.l),a5			
	move.l a2,d4				
	addq.l #8,d4				
	lea 8(a2,d0.l),a1			
						
	moveq #0,d7				
	move.l #___adddf3,d3			
	lea ___subdf3,a3			
	move.l a0,d5				
	move.l a2,d6				
	move.l d3,a4				
	move.l a1,d3				
_?L93:						
						
	move.l d6,a0				
	move.l (a0),48(sp)			
	move.l 4(a0),52(sp)			
						
	move.l d5,a0				
	move.l (a0),56(sp)			
	move.l 4(a0),60(sp)			
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,72(sp)			
	move.l a1,76(sp)			
						
	move.l d4,a0				
	move.l (a0),40(sp)			
	move.l 4(a0),44(sp)			
						
	move.l d3,a0				
	move.l (a0),64(sp)			
	move.l 4(a0),68(sp)			
						
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 52(sp),-(sp)			
	move.l 52(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,80(sp)			
	move.l a1,84(sp)			
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,88(sp)			
	move.l a1,92(sp)			
						
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 52(sp),-(sp)			
	move.l 52(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,96(sp)			
	move.l a1,100(sp)			
						
	move.l (a6),48(sp)			
	move.l 4(a6),52(sp)			
						
	move.l (a5),56(sp)			
	move.l 4(a5),60(sp)			
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,104(sp)			
	move.l a1,108(sp)			
						
	move.l 8(a6),40(sp)			
	move.l 12(a6),44(sp)			
						
	move.l 8(a5),64(sp)			
	move.l 12(a5),68(sp)			
						
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 52(sp),-(sp)			
	move.l 52(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,112(sp)			
	move.l a1,116(sp)			
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,48(sp)			
	move.l a1,52(sp)			
						
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 52(sp),-(sp)			
	move.l 52(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,56(sp)			
	move.l a1,60(sp)			
						
	move.l 108(sp),-(sp)			
	move.l 108(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l 84(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d6,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 116(sp),-(sp)			
	move.l 116(sp),-(sp)			
	move.l 92(sp),-(sp)			
	move.l 92(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d4,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 108(sp),-(sp)			
	move.l 108(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l 84(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	move.l 116(sp),-(sp)			
	move.l 116(sp),-(sp)			
	move.l 92(sp),-(sp)			
	move.l 92(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,8(a6)				
	move.l d1,12(a6)			
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l 100(sp),-(sp)			
	move.l 100(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d5,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 52(sp),-(sp)			
	move.l 52(sp),-(sp)			
	move.l 108(sp),-(sp)			
	move.l 108(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d3,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l 100(sp),-(sp)			
	move.l 100(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
						
	move.l 52(sp),-(sp)			
	move.l 52(sp),-(sp)			
	move.l 108(sp),-(sp)			
	move.l 108(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,8(a5)				
	move.l d1,12(a5)			
						
	addq.l #2,d7				
						
	moveq #16,d0				
	add.l d0,d6				
	add.l d0,d5				
	lea (16,a6),a6				
	lea (16,a5),a5				
	add.l d0,d4				
	add.l d0,d3				
	cmp.l 120(sp),d7			
	jblt _?L93				
_?L83:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (88,sp),sp				
	rts					
_?L111:						
						
	subq.l #4,d3				
	jbne _?L83				
						
	moveq #2,d1				
	move.l d1,120(sp)			
	moveq #16,d0				
	lea (a6,d0.l),a1			
	lea (8,a6),a4				
	lea 8(a6,d0.l),a5			
						
	sub.l a0,a0				
	move.l #___adddf3,d3			
	lea ___subdf3,a3			
	move.l d3,56(sp)			
	move.l a0,d3				
	move.l a3,d0				
	move.l a6,a3				
	move.l d0,a6				
_?L94:						
						
	move.l (a3),48(sp)			
	move.l 4(a3),52(sp)			
						
	move.l (a1),d6				
	move.l 4(a1),d7				
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	move.l a1,52(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d5				
	move.l d1,d4				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l 72(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	move.l 72(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l 36(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l d5,d0				
	move.l d4,d1				
	move.l d0,(a5)				
	move.l d1,4(a5)				
						
	addq.l #2,d3				
						
	lea (16,a3),a3				
	lea (16,a1),a1				
	lea (16,a4),a4				
	lea (16,a5),a5				
	cmp.l 120(sp),d3			
	jbge _?L83				
						
	move.l (a3),48(sp)			
	move.l 4(a3),52(sp)			
						
	move.l (a1),d6				
	move.l 4(a1),d7				
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	move.l a1,52(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d5				
	move.l d1,d4				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l 72(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	move.l 72(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l 36(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l d5,d0				
	move.l d4,d1				
	move.l d0,(a5)				
	move.l d1,4(a5)				
						
	addq.l #2,d3				
						
	lea (16,a3),a3				
	lea (16,a1),a1				
	lea (16,a4),a4				
	lea (16,a5),a5				
	cmp.l 120(sp),d3			
	jblt _?L94				
	jbra _?L83				
_?L110:						
						
	move.l d4,-(sp)				
	move.l a6,-(sp)				
	move.l d3,-(sp)				
	jbsr _cft1st				
	lea (12,sp),sp				
						
	cmp.l #128,d3				
	jblt _?L85				
						
	moveq #16,d1				
						
	move.l #128,120(sp)			
	lea _cftmdl,a4				
	moveq #127,d5				
	not.b d5				
						
	move.l d4,-(sp)				
	move.l a6,-(sp)				
	move.l d1,-(sp)				
	move.l d3,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l d5,d0				
	lsl.l #3,d0				
	move.l d5,d1				
						
	cmp.l d0,d3				
	jblt _?L112				
_?L95:						
						
	move.l d0,d5				
						
	move.l d4,-(sp)				
	move.l a6,-(sp)				
	move.l d1,-(sp)				
	move.l d3,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l d5,d0				
	lsl.l #3,d0				
	move.l d5,d1				
						
	cmp.l d0,d3				
	jbge _?L95				
_?L112:						
	move.l d5,120(sp)			
						
	add.l d5,d1				
						
	cmp.l d1,d3				
	jble _?L92				
						
	tst.l d5				
	jble _?L83				
	move.l a6,a2				
	lea (a6,d0.l),a0			
	lea (a0,d0.l),a6			
	lea (a6,d0.l),a5			
	move.l a2,d4				
	addq.l #8,d4				
	lea 8(a2,d0.l),a1			
						
	moveq #0,d7				
	move.l #___adddf3,d3			
	lea ___subdf3,a3			
	move.l a0,d5				
	move.l a2,d6				
	move.l d3,a4				
	move.l a1,d3				
	jbra _?L93				
_?L92:						
						
	cmp.l d1,d3				
	jbne _?L83				
						
	tst.l 120(sp)				
	jble _?L83				
	lea (a6,d0.l),a1			
	lea (8,a6),a4				
	lea 8(a6,d0.l),a5			
						
	sub.l a0,a0				
	move.l #___adddf3,d3			
	lea ___subdf3,a3			
	move.l d3,56(sp)			
	move.l a0,d3				
	move.l a3,d0				
	move.l a6,a3				
	move.l d0,a6				
	jbra _?L94				
_?L85:						
						
	moveq #32,d0				
	cmp.l d3,d0				
	jblt _?L97				
						
	jbne _?L83				
						
	moveq #16,d0				
	move.l d0,120(sp)			
	moveq #127,d0				
	not.b d0				
	lea (a6,d0.l),a1			
	lea (8,a6),a4				
	lea 8(a6,d0.l),a5			
						
	sub.l a0,a0				
	move.l #___adddf3,d3			
	lea ___subdf3,a3			
	move.l d3,56(sp)			
	move.l a0,d3				
	move.l a3,d0				
	move.l a6,a3				
	move.l d0,a6				
	jbra _?L94				
_?L97:						
						
	moveq #16,d0				
	move.l d0,120(sp)			
	moveq #127,d0				
	not.b d0				
	move.l a6,a2				
	lea (a6,d0.l),a0			
	lea (a0,d0.l),a6			
	lea (a6,d0.l),a5			
	move.l a2,d4				
	addq.l #8,d4				
	lea 8(a2,d0.l),a1			
						
	moveq #0,d7				
	move.l #___adddf3,d3			
	lea ___subdf3,a3			
	move.l a0,d5				
	move.l a2,d6				
	move.l d3,a4				
	move.l a1,d3				
	jbra _?L93				
						
	.globl	___divsi3			
	.align	2				
						
_rftfsub:					
	lea (-56,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 96(sp),d5			
	move.l 100(sp),a3			
						
	move.l d5,d4				
	asr.l #1,d4				
						
	move.l 104(sp),d0			
	add.l d0,d0				
						
	move.l d4,-(sp)				
	move.l d0,-(sp)				
	jbsr ___divsi3				
	addq.l #8,sp				
	move.l d0,d1				
						
	moveq #2,d0				
	cmp.l d4,d0				
	jbge _?L113				
	move.l d1,d0				
	neg.l d0				
	move.l d0,d7				
	lsl.l #3,d7				
	move.l 104(sp),d0			
	sub.l d1,d0				
	lsl.l #3,d0				
	move.l 108(sp),a0			
	add.l d0,a0				
	move.l 108(sp),d6			
	sub.l d7,d6				
	lea (16,a3),a1				
	move.l d5,d0				
	subq.l #2,d0				
	lsl.l #3,d0				
	move.l a3,d3				
	add.l d0,d3				
	lea (24,a3),a6				
	subq.l #1,d5				
	lsl.l #3,d5				
	add.l a3,d5				
	subq.l #3,d4				
	lsr.l #1,d4				
	lsl.l #4,d4				
	lea 40(a3,d4.l),a3			
	move.l a3,88(sp)			
	lea ___subdf3,a3			
	move.l d5,a4				
	move.l d3,a5				
	move.l a1,d3				
_?L115:						
						
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l a0,52(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,56(sp)			
	move.l d5,60(sp)			
						
	move.l d6,a1				
	move.l (a1),48(sp)			
	move.l 4(a1),52(sp)			
						
	move.l d3,a1				
	move.l (a1),40(sp)			
	move.l 4(a1),44(sp)			
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 52(sp),-(sp)			
	move.l 52(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,64(sp)			
	move.l d5,68(sp)			
						
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	move.l 4(a6),-(sp)			
	move.l (a6),-(sp)			
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,72(sp)			
	move.l d5,76(sp)			
						
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 76(sp),-(sp)			
	move.l 76(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,80(sp)			
	move.l d5,84(sp)			
						
	move.l 76(sp),-(sp)			
	move.l 76(sp),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 84(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l 52(sp),-(sp)			
	move.l 52(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d3,a1				
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 4(a6),-(sp)			
	move.l (a6),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	move.l 84(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	move.l 36(sp),a0			
	add.l d7,a0				
	sub.l d7,d6				
	moveq #16,d0				
	add.l d0,d3				
	lea (-16,a5),a5				
	lea (16,a6),a6				
	lea (-16,a4),a4				
	cmp.l 88(sp),a6				
	jbne _?L115				
_?L113:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (56,sp),sp				
	rts					
						
	.align	2				
						
_rftbsub:					
	lea (-60,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 100(sp),d4			
						
	move.l 104(sp),a0			
	move.l 8(a0),a1				
	add.l #-2147483648,a1			
	move.l a0,a2				
	move.l 12(a0),a0			
	move.l a1,d0				
	move.l a0,d1				
	move.l d0,8(a2)				
	move.l d1,12(a2)			
						
	move.l d4,d0				
	asr.l #1,d0				
	move.l d0,92(sp)			
						
	move.l 108(sp),d0			
	add.l d0,d0				
						
	move.l 92(sp),-(sp)			
	move.l d0,-(sp)				
	jbsr ___divsi3				
	addq.l #8,sp				
	move.l d0,d1				
						
	moveq #2,d0				
	cmp.l 92(sp),d0				
	jbge _?L120				
	move.l d1,d0				
	neg.l d0				
	move.l d0,d7				
	lsl.l #3,d7				
	move.l 108(sp),d0			
	sub.l d1,d0				
	lsl.l #3,d0				
	move.l 112(sp),a0			
	add.l d0,a0				
	move.l 112(sp),d6			
	sub.l d7,d6				
	move.w #16,a1				
	add.l 104(sp),a1			
	move.l d4,d0				
	subq.l #2,d0				
	lsl.l #3,d0				
	move.l 104(sp),d3			
	add.l d0,d3				
	move.w #24,a6				
	add.l 104(sp),a6			
	subq.l #1,d4				
	lsl.l #3,d4				
	add.l 104(sp),d4			
	move.l 92(sp),d0			
	subq.l #3,d0				
	lsr.l #1,d0				
	lsl.l #4,d0				
	move.l 104(sp),a2			
	lea 40(a2,d0.l),a2			
	move.l a2,88(sp)			
	lea ___subdf3,a3			
	move.l d4,a4				
	move.l d3,a5				
	move.l a1,d3				
_?L121:						
						
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l a0,52(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,56(sp)			
	move.l d5,60(sp)			
						
	move.l d6,a1				
	move.l (a1),48(sp)			
	move.l 4(a1),52(sp)			
						
	move.l d3,a2				
	move.l (a2),40(sp)			
	move.l 4(a2),44(sp)			
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 52(sp),-(sp)			
	move.l 52(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,64(sp)			
	move.l d5,68(sp)			
						
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	move.l 4(a6),-(sp)			
	move.l (a6),-(sp)			
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,72(sp)			
	move.l d5,76(sp)			
						
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 76(sp),-(sp)			
	move.l 76(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,80(sp)			
	move.l d5,84(sp)			
						
	move.l 76(sp),-(sp)			
	move.l 76(sp),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 68(sp),-(sp)			
	move.l 68(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l 60(sp),-(sp)			
	jbsr ___muldf3				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 84(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l 52(sp),-(sp)			
	move.l 52(sp),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d3,a1				
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 4(a6),-(sp)			
	move.l (a6),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	move.l 84(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
						
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	move.l 36(sp),a0			
	add.l d7,a0				
	sub.l d7,d6				
	moveq #16,d0				
	add.l d0,d3				
	lea (-16,a5),a5				
	lea (16,a6),a6				
	lea (-16,a4),a4				
	cmp.l 88(sp),a6				
	jbne _?L121				
_?L120:						
						
	move.l 92(sp),d0			
	addq.l #1,d0				
	lsl.l #3,d0				
	move.l 104(sp),a0			
	add.l d0,a0				
						
	move.l (a0),d2				
	add.l #-2147483648,d2			
	move.l 4(a0),a1				
	move.l d2,d0				
	move.l a1,d1				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (60,sp),sp				
	rts					
						
	.align	2				
						
_dctsub:					
	lea (-44,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 84(sp),d3			
						
	move.l d3,d4				
	asr.l #1,d4				
						
	move.l d3,-(sp)				
	move.l 96(sp),-(sp)			
	jbsr ___divsi3				
	addq.l #8,sp				
	move.l d0,d1				
						
	moveq #1,d0				
	cmp.l d4,d0				
	jbge _?L133				
	move.l d1,d0				
	lsl.l #3,d0				
	move.l d0,60(sp)			
	move.l 96(sp),a2			
	add.l d0,a2				
	move.l 92(sp),d0			
	sub.l d1,d0				
	lsl.l #3,d0				
	move.l 96(sp),a0			
	add.l d0,a0				
	move.l 88(sp),a4			
	addq.l #8,a4				
	subq.l #1,d3				
	lsl.l #3,d3				
	move.l 88(sp),a6			
	add.l d3,a6				
	lsl.l #3,d4				
	move.l d4,76(sp)			
	move.l 88(sp),d0			
	add.l d4,d0				
	move.l d0,72(sp)			
	lea ___muldf3,a3			
	move.l a0,a5				
	move.l a2,d3				
_?L127:						
						
	move.l d3,a0				
	move.l (a0),d6				
	move.l 4(a0),d7				
						
	move.l (a5),d4				
	move.l 4(a5),d5				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,52(sp)			
	move.l a1,56(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l (a4),a0				
	move.l 4(a4),a1				
						
	move.l (a6),44(sp)			
	move.l 4(a6),48(sp)			
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l a0,56(sp)			
	move.l a1,52(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,64(sp)			
	move.l d1,68(sp)			
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 48(sp),a0			
	move.l 44(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	add.l 60(sp),d3				
	sub.l 60(sp),a5				
	subq.l #8,a6				
	cmp.l 72(sp),a4				
	jbne _?L127				
						
	move.l 88(sp),a4			
	add.l 76(sp),a4				
						
	move.l 96(sp),a0			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (44,sp),sp				
	rts					
_?L133:						
	lsl.l #3,d4				
	move.l d4,76(sp)			
	lea ___muldf3,a3			
						
	move.l 88(sp),a4			
	add.l 76(sp),a4				
						
	move.l 96(sp),a0			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (44,sp),sp				
	rts					
						
	.align	2				
						
_dstsub:					
	lea (-36,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 76(sp),d3			
						
	move.l d3,d4				
	asr.l #1,d4				
						
	move.l d3,-(sp)				
	move.l 88(sp),-(sp)			
	jbsr ___divsi3				
	addq.l #8,sp				
	move.l d0,d1				
						
	moveq #1,d0				
	cmp.l d4,d0				
	jbge _?L142				
	move.l d1,d0				
	lsl.l #3,d0				
	move.l d0,60(sp)			
	move.l 88(sp),a1			
	add.l d0,a1				
	move.l 84(sp),d0			
	sub.l d1,d0				
	lsl.l #3,d0				
	move.l 88(sp),a0			
	add.l d0,a0				
	subq.l #1,d3				
	lsl.l #3,d3				
	move.l 80(sp),a6			
	add.l d3,a6				
	move.l 80(sp),d3			
	addq.l #8,d3				
	lsl.l #3,d4				
	move.l d4,68(sp)			
	move.l 80(sp),d0			
	add.l d4,d0				
	move.l d0,64(sp)			
	lea ___muldf3,a3			
	move.l a0,a5				
	move.l d3,a4				
	move.l a1,d3				
_?L136:						
						
	move.l d3,a0				
	move.l (a0),d6				
	move.l 4(a0),d7				
						
	move.l (a5),d4				
	move.l 4(a5),d5				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,52(sp)			
	move.l a1,56(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l (a6),a0				
	move.l 4(a6),a1				
						
	move.l (a4),44(sp)			
	move.l 4(a4),48(sp)			
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l a0,56(sp)			
	move.l a1,52(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 48(sp),a0			
	move.l 44(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr (a3)				
						
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,44(sp)			
	move.l d1,48(sp)			
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	add.l 60(sp),d3				
	sub.l 60(sp),a5				
	subq.l #8,a6				
	cmp.l 64(sp),a4				
	jbne _?L136				
						
	move.l 80(sp),a4			
	add.l 68(sp),a4				
						
	move.l 88(sp),a0			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (36,sp),sp				
	rts					
_?L142:						
	lsl.l #3,d4				
	move.l d4,68(sp)			
	lea ___muldf3,a3			
						
	move.l 80(sp),a4			
	add.l 68(sp),a4				
						
	move.l 88(sp),a0			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (36,sp),sp				
	rts					
						
	.globl	___floatsidf			
	.globl	___divdf3			
	.align	2				
						
_makewt?part?0:					
	lea (-16,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 56(sp),44(sp)			
	move.l 60(sp),48(sp)			
	move.l 64(sp),a6			
						
	move.l 44(sp),d3			
	asr.l #1,d3				
	move.l d3,a5				
						
	move.l d3,-(sp)				
	jbsr ___floatsidf			
	move.l d0,d4				
	move.l d1,d5				
						
	move.l d1,(sp)				
	move.l d4,-(sp)				
	move.l #1413754136,-(sp)		
	move.l #1072243195,-(sp)		
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,36(sp)			
	move.l a1,40(sp)			
						
	move.l #1072693248,(a6)			
	clr.l 4(a6)				
						
	clr.l 8(a6)				
	clr.l 12(a6)				
						
	lsl.l #3,d3				
						
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___muldf3				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	jbsr _cos				
	addq.l #8,sp				
						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,(a6,d3.l)			
	move.l a1,4(a6,d3.l)			
						
	move.l a0,8(a6,d3.l)			
	move.l a1,12(a6,d3.l)			
						
	moveq #2,d4				
	cmp.l a5,d4				
	jbge _?L143				
	lea (16,a6),a4				
	move.l 44(sp),d0			
	subq.l #2,d0				
	lsl.l #3,d0				
	lea (a6,d0.l),a3			
						
	moveq #2,d5				
	move.l d5,d7				
_?L145:						
						
	move.l d7,-(sp)				
	jbsr ___floatsidf			
	addq.l #4,sp				
	move.l 40(sp),-(sp)			
	move.l 40(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr _cos				
	addq.l #8,sp				
	move.l d0,d6				
	move.l d1,d3				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr _sin				
	addq.l #8,sp				
						
	move.l d6,a0				
	move.l d3,a1				
	move.l a0,(a4)				
	move.l a1,4(a4)				
						
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,8(a4)				
	move.l a1,12(a4)			
						
	move.l a0,(a3)				
	move.l a1,4(a3)				
						
	move.l d6,d0				
	move.l d3,d1				
	move.l d0,8(a3)				
	move.l d1,12(a3)			
						
	addq.l #2,d7				
						
	lea (16,a4),a4				
	lea (-16,a3),a3				
	cmp.l a5,d7				
	jblt _?L145				
						
	move.l a5,d0				
	subq.l #2,d0				
						
	moveq #3,d1				
	cmp.l a5,d1				
	jbeq _?L146				
	move.l d0,d1				
	lsl.l #4,d1				
	lea (a6,d1.l),a0			
	add.l a5,d0				
	lsl.l #3,d0				
	lea (a6,d0.l),a1			
	lea -32(a6,d1.l),a2			
	move.l a5,d0				
	subq.l #4,d0				
	lsr.l #1,d0				
	lsl.l #5,d0				
	move.l a2,d2				
	sub.l d0,d2				
_?L147:						
						
	move.l 8(a0),d0				
	move.l 12(a0),d1			
						
	move.l (a0),d3				
	move.l 4(a0),d4				
	move.l d3,(a1)				
	move.l d4,4(a1)				
						
	move.l d0,8(a1)				
	move.l d1,12(a1)			
						
	lea (-32,a0),a0				
	lea (-16,a1),a1				
	cmp.l d2,a0				
	jbne _?L147				
_?L146:						
						
	move.l a6,64(sp)			
	move.l 48(sp),d4			
	addq.l #8,d4				
	move.l d4,60(sp)			
	move.l 44(sp),56(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
						
	jbra _bitrv2				
_?L143:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
						
	.align	2				
						
_makect?part?0:					
	lea (-24,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 64(sp),d3			
	move.l 68(sp),a5			
						
	move.l d3,d6				
	asr.l #1,d6				
						
	move.l #___floatsidf,d7			
	move.l d6,-(sp)				
	move.l d7,a0				
	jbsr (a0)				
	move.l d0,a0				
						
	move.l d1,(sp)				
	move.l a0,-(sp)				
	move.l #1413754136,-(sp)		
	move.l #1072243195,-(sp)		
	move.l a0,56(sp)			
	move.l d1,52(sp)			
	jbsr ___divdf3				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d4,52(sp)			
	move.l d5,56(sp)			
						
	lea ___muldf3,a3			
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	move.l 48(sp),a0			
	move.l 44(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a3)				
	lea (12,sp),sp				
	move.l d1,(sp)				
	move.l d0,-(sp)				
	lea _cos,a6				
	jbsr (a6)				
	addq.l #8,sp				
	move.l d0,a0				
	move.l d1,a1				
						
	move.l a0,(a5)				
	move.l a1,4(a5)				
						
	move.l d6,d0				
	lsl.l #3,d0				
	move.l d0,a4				
						
	clr.l -(sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,44(sp)			
	move.l d1,48(sp)			
						
	move.l d0,(a5,a4.l)			
	move.l d1,4(a5,a4.l)			
						
	moveq #1,d0				
	cmp.l d6,d0				
	jbeq _?L155				
	lea (8,a5),a4				
	subq.l #1,d3				
	lsl.l #3,d3				
	add.l d3,a5				
						
	moveq #1,d3				
_?L157:						
						
	move.l d3,-(sp)				
	move.l d7,a0				
	jbsr (a0)				
	addq.l #4,sp				
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
	move.l d1,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
						
	addq.l #4,sp				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,44(sp)			
	move.l d1,48(sp)			
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr _sin				
						
	addq.l #4,sp				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
						
	addq.l #1,d3				
						
	subq.l #8,a5				
	cmp.l d6,d3				
	jbne _?L157				
_?L155:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (24,sp),sp				
	rts					
						
	.align	2				
	.globl	_aubio_ooura_cdft		
						
_aubio_ooura_cdft:				
	lea (-68,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 108(sp),76(sp)			
	move.l 112(sp),d3			
	move.l 116(sp),d4			
	move.l 120(sp),a3			
	move.l 124(sp),92(sp)			
						
	move.l (a3),d0				
	add.l d0,d0				
	add.l d0,d0				
						
	cmp.l 76(sp),d0				
	jbge _?L165				
						
	move.l 76(sp),d0			
	asr.l #2,d0				
						
	move.l d0,(a3)				
						
	moveq #1,d1				
	move.l d1,4(a3)				
						
	moveq #2,d5				
	cmp.l d0,d5				
	jblt _?L199				
_?L165:						
						
	moveq #4,d6				
	cmp.l 76(sp),d6				
	jblt _?L200				
						
	moveq #4,d0				
	cmp.l 76(sp),d0				
	jbeq _?L201				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (68,sp),sp				
	rts					
_?L199:						
	move.l 92(sp),-(sp)			
	move.l a3,-(sp)				
	move.l d0,-(sp)				
	jbsr (_makewt?part?0)			
	lea (12,sp),sp				
						
	tst.l d3				
	jblt _?L202				
_?L166:						
						
	move.l d4,-(sp)				
	pea 8(a3)				
	move.l 84(sp),-(sp)			
	jbsr _bitrv2				
	lea (12,sp),sp				
						
	move.l 92(sp),116(sp)			
	move.l d4,112(sp)			
	move.l 76(sp),108(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (68,sp),sp				
						
	jbra _cftfsub				
_?L200:						
						
	tst.l d3				
	jbge _?L166				
						
	clr.l 8(a3)				
						
	moveq #8,d7				
	cmp.l 76(sp),d7				
	jbge _?L170				
						
	move.l 76(sp),d0			
						
	moveq #1,d2				
_?L172:						
						
	asr.l #1,d0				
						
	tst.l d2				
	jble _?L175				
	lea (8,a3),a0				
	move.l d2,d1				
	addq.l #2,d1				
	add.l d1,d1				
	add.l d1,d1				
	lea (a3,d1.l),a1			
	move.l a1,d1				
_?L174:						
						
	move.l d0,d3				
	add.l (a0)+,d3				
	move.l d3,(a1)+				
						
	cmp.l d1,a0				
	jbne _?L174				
_?L175:						
						
	move.l d2,d1				
	add.l d2,d1				
						
	lsl.l #4,d2				
						
	cmp.l d0,d2				
	jbge _?L203				
						
	move.l d1,d2				
	jbra _?L172				
_?L202:						
						
	clr.l 8(a3)				
						
	move.l 76(sp),d0			
						
	moveq #1,d2				
	jbra _?L172				
_?L201:						
						
	move.l 92(sp),116(sp)			
	move.l d4,112(sp)			
	move.l d0,108(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (68,sp),sp				
						
	jbra _cftfsub				
_?L203:						
	move.l d1,96(sp)			
						
	move.l d1,a0				
	add.l d1,a0				
	move.l a0,56(sp)			
						
	cmp.l d0,d2				
	jbeq _?L204				
						
	move.l d4,a2				
	move.l 8(a2),a1				
	add.l #-2147483648,a1			
	move.l 12(a2),a0			
	move.l a1,d0				
	move.l a0,d1				
	move.l d0,8(a2)				
	move.l d1,12(a2)			
						
	move.l 56(sp),d0			
	addq.l #1,d0				
	lsl.l #3,d0				
	lea (a2,d0.l),a0			
						
	move.l (a0),d2				
	add.l #-2147483648,d2			
	move.l 4(a0),a1				
	move.l d2,d0				
	move.l a1,d1				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	moveq #1,d0				
	cmp.l 96(sp),d0				
	jbge _?L185				
	lea (12,a3),a6				
	moveq #2,d1				
	move.l d1,60(sp)			
	addq.l #8,a3				
	move.l a3,68(sp)			
	move.l a6,48(sp)			
_?L182:						
						
	move.l 48(sp),a0			
	move.l (a0),64(sp)			
	move.l 68(sp),a4			
	move.l 64(sp),d0			
	lsl.l #3,d0				
	lea (a2,d0.l),a3			
	move.l 64(sp),d1			
	add.l 56(sp),d1				
	lsl.l #3,d1				
	lea (a2,d1.l),a0			
	lea 8(a2,d0.l),a1			
_?L183:						
						
	move.l 60(sp),d0			
	add.l (a4)+,d0				
						
	move.l (a3),40(sp)			
	move.l 4(a3),44(sp)			
						
	move.l (a1),d7				
	add.l #-2147483648,d7			
	move.l 4(a1),d6				
						
	move.l d0,d1				
	lsl.l #3,d1				
	lea (a2,d1.l),a6			
						
	lea 8(a2,d1.l),a5			
						
	move.l (a5),d3				
	add.l #-2147483648,d3			
	move.l 4(a5),d2				
						
	move.l (a6),d4				
	move.l 4(a6),d5				
	move.l d4,(a3)				
	move.l d5,4(a3)				
						
	move.l d2,d1				
	move.l d3,d2				
	move.l d1,d3				
	move.l d2,(a1)				
	move.l d3,4(a1)				
						
	move.l 40(sp),(a6)			
	move.l 44(sp),4(a6)			
						
	move.l d7,d2				
	move.l d6,d3				
	move.l d2,(a5)				
	move.l d3,4(a5)				
						
	move.l (a0),40(sp)			
	move.l 4(a0),44(sp)			
						
	move.l 8(a0),d5				
	add.l #-2147483648,d5			
	move.l 12(a0),d3			
						
	add.l 56(sp),d0				
						
	lsl.l #3,d0				
	lea (a2,d0.l),a6			
						
	lea 8(a2,d0.l),a5			
						
	move.l (a5),d1				
	add.l #-2147483648,d1			
	move.l 4(a5),d0				
						
	move.l (a6),d6				
	move.l 4(a6),d7				
	move.l d6,(a0)				
	move.l d7,4(a0)				
						
	move.l d0,d2				
	move.l d1,d0				
	move.l d2,d1				
	move.l d0,8(a0)				
	move.l d1,12(a0)			
						
	move.l 40(sp),(a6)			
	move.l 44(sp),4(a6)			
						
	move.l d5,d0				
	move.l d3,d1				
	move.l d0,(a5)				
	move.l d1,4(a5)				
						
	lea (16,a3),a3				
	lea (16,a0),a0				
	lea (16,a1),a1				
	cmp.l 48(sp),a4				
	jbne _?L183				
						
	move.l 60(sp),a1			
	add.l 64(sp),a1				
						
	lea (1,a1),a0				
	move.l a0,d7				
	lsl.l #3,d7				
	lea (a2,d7.l),a0			
						
	move.l (a0),d3				
	add.l #-2147483648,d3			
	move.l 4(a0),d2				
	move.l d3,d0				
	move.l d2,d1				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 56(sp),a3			
	lea 1(a3,a1.l),a0			
	move.l a0,d0				
	lsl.l #3,d0				
	lea (a2,d0.l),a0			
						
	move.l (a0),d2				
	add.l #-2147483648,d2			
	move.l 4(a0),a1				
	move.l d2,d0				
	move.l a1,d1				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	addq.l #4,48(sp)			
	addq.l #2,60(sp)			
	cmp.l 60(sp),a3				
	jbne _?L182				
	move.l a2,d4				
_?L185:						
						
	move.l 92(sp),116(sp)			
	move.l d4,112(sp)			
	move.l 76(sp),108(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (68,sp),sp				
						
	jbra _cftbsub				
_?L204:						
						
	tst.l d1				
	jble _?L185				
						
	add.l a0,a0				
	move.l a0,60(sp)			
	addq.l #8,a3				
	move.l a3,100(sp)			
						
	move.l (a3),88(sp)			
	move.l a3,84(sp)			
						
	clr.l 68(sp)				
						
	clr.l 80(sp)				
	move.l d4,a0				
_?L180:						
						
	move.l 68(sp),d2			
	add.l 88(sp),d2				
						
	move.l d2,d0				
	addq.l #1,d0				
	lsl.l #3,d0				
	lea (a0,d0.l),a1			
						
	move.l (a1),d4				
	add.l #-2147483648,d4			
	move.l 4(a1),d3				
	move.l d4,d0				
	move.l d3,d1				
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 56(sp),d0			
	add.l d2,d0				
						
	move.l 56(sp),d2			
	add.l d0,d2				
						
	lsl.l #3,d0				
	lea (a0,d0.l),a4			
						
	move.l (a4),40(sp)			
	move.l 4(a4),44(sp)			
						
	lea 8(a0,d0.l),a2			
						
	move.l (a2),d6				
	add.l #-2147483648,d6			
	move.l 4(a2),d5				
						
	move.l d2,d0				
	lsl.l #3,d0				
	lea (a0,d0.l),a3			
						
	lea 8(a0,d0.l),a1			
						
	move.l (a1),d1				
	add.l #-2147483648,d1			
	move.l 4(a1),d0				
						
	move.l (a3),d3				
	move.l 4(a3),d4				
	move.l d3,(a4)				
	move.l d4,4(a4)				
						
	move.l d0,d3				
	move.l d1,d0				
	move.l d3,d1				
	move.l d0,(a2)				
	move.l d1,4(a2)				
						
	move.l 40(sp),(a3)			
	move.l 44(sp),4(a3)			
						
	move.l d6,d0				
	move.l d5,d1				
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l 56(sp),a2			
	lea 1(a2,d2.l),a1			
	move.l a1,d0				
	lsl.l #3,d0				
	lea (a0,d0.l),a1			
						
	move.l (a1),d3				
	add.l #-2147483648,d3			
	move.l 4(a1),d2				
	move.l d3,d0				
	move.l d2,d1				
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	addq.l #1,80(sp)			
	move.l 84(sp),72(sp)			
						
	addq.l #4,84(sp)			
	move.l 80(sp),d1			
	cmp.l 96(sp),d1				
	jbge _?L193				
						
	move.l 84(sp),a1			
	move.l (a1),88(sp)			
						
	add.l d1,d1				
	move.l d1,68(sp)			
	move.l 88(sp),d0			
	lsl.l #3,d0				
	lea (a0,d0.l),a5			
	move.l 88(sp),d1			
	add.l a2,d1				
	move.l d1,d2				
	lsl.l #3,d2				
	lea (a0,d2.l),a3			
	add.l a2,d1				
	move.l d1,d2				
	lsl.l #3,d2				
	lea (a0,d2.l),a2			
	add.l 56(sp),d1				
	lsl.l #3,d1				
	lea (a0,d1.l),a1			
	lea 8(a0,d0.l),a4			
	move.l 100(sp),d4			
	move.l d4,40(sp)			
_?L181:						
						
	move.l 40(sp),a6			
	move.l (a6),d0				
	move.l a6,64(sp)			
	addq.l #4,40(sp)			
						
	add.l 68(sp),d0				
						
	move.l (a5),48(sp)			
	move.l 4(a5),52(sp)			
						
	move.l (a4),d7				
	add.l #-2147483648,d7			
	move.l 4(a4),d6				
						
	move.l d0,d2				
	lsl.l #3,d2				
	move.l a0,d1				
	add.l d2,d1				
						
	lea 8(a0,d2.l),a6			
	move.l a6,36(sp)			
						
	move.l (a6),d3				
	add.l #-2147483648,d3			
	move.l 4(a6),d2				
						
	move.l d1,a6				
	move.l (a6),d4				
	move.l 4(a6),d5				
	move.l d4,(a5)				
	move.l d5,4(a5)				
						
	move.l d2,d4				
	move.l d3,d2				
	move.l d4,d3				
	move.l d2,(a4)				
	move.l d3,4(a4)				
						
	move.l 48(sp),(a6)			
	move.l 52(sp),4(a6)			
						
	move.l d7,d2				
	move.l d6,d3				
	move.l 36(sp),a6			
	move.l d2,(a6)				
	move.l d3,4(a6)				
						
	add.l 60(sp),d0				
						
	move.l (a3),48(sp)			
	move.l 4(a3),52(sp)			
						
	move.l 8(a3),d7				
	add.l #-2147483648,d7			
	move.l 12(a3),d6			
						
	move.l d0,d2				
	lsl.l #3,d2				
	move.l a0,d1				
	add.l d2,d1				
						
	lea 8(a0,d2.l),a6			
	move.l a6,36(sp)			
						
	move.l (a6),d3				
	add.l #-2147483648,d3			
	move.l 4(a6),d2				
						
	move.l d1,a6				
	move.l (a6),d4				
	move.l 4(a6),d5				
	move.l d4,(a3)				
	move.l d5,4(a3)				
						
	move.l d2,d4				
	move.l d3,d2				
	move.l d4,d3				
	move.l d2,8(a3)				
	move.l d3,12(a3)			
						
	move.l 48(sp),(a6)			
	move.l 52(sp),4(a6)			
						
	move.l d7,d2				
	move.l d6,d3				
	move.l 36(sp),a6			
	move.l d2,(a6)				
	move.l d3,4(a6)				
						
	sub.l 56(sp),d0				
						
	move.l (a2),48(sp)			
	move.l 4(a2),52(sp)			
						
	move.l 8(a2),d7				
	add.l #-2147483648,d7			
	move.l 12(a2),d6			
						
	move.l d0,d2				
	lsl.l #3,d2				
	move.l a0,d1				
	add.l d2,d1				
						
	lea 8(a0,d2.l),a6			
	move.l a6,36(sp)			
						
	move.l (a6),d3				
	add.l #-2147483648,d3			
	move.l 4(a6),d2				
						
	move.l d1,a6				
	move.l (a6),d4				
	move.l 4(a6),d5				
	move.l d4,(a2)				
	move.l d5,4(a2)				
						
	move.l d2,d4				
	move.l d3,d2				
	move.l d4,d3				
	move.l d2,8(a2)				
	move.l d3,12(a2)			
						
	move.l 48(sp),(a6)			
	move.l 52(sp),4(a6)			
						
	move.l d7,d2				
	move.l d6,d3				
	move.l 36(sp),a6			
	move.l d2,(a6)				
	move.l d3,4(a6)				
						
	move.l (a1),48(sp)			
	move.l 4(a1),52(sp)			
						
	move.l 8(a1),d5				
	add.l #-2147483648,d5			
	move.l 12(a1),d4			
						
	add.l 60(sp),d0				
						
	lsl.l #3,d0				
	move.l a0,d2				
	add.l d0,d2				
						
	lea 8(a0,d0.l),a6			
	move.l a6,36(sp)			
						
	move.l (a6),d1				
	add.l #-2147483648,d1			
	move.l 4(a6),d0				
						
	move.l d2,a6				
	move.l (a6),d6				
	move.l 4(a6),d7				
	move.l d6,(a1)				
	move.l d7,4(a1)				
						
	move.l d0,d3				
	move.l d1,d0				
	move.l d3,d1				
	move.l d0,8(a1)				
	move.l d1,12(a1)			
						
	move.l 48(sp),(a6)			
	move.l 52(sp),4(a6)			
						
	move.l d5,d0				
	move.l d4,d1				
	move.l 36(sp),a6			
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	lea (16,a5),a5				
	lea (16,a3),a3				
	lea (16,a2),a2				
	lea (16,a1),a1				
	lea (16,a4),a4				
	move.l 64(sp),d0			
	cmp.l 72(sp),d0				
	jbeq _?L180				
						
	move.l 40(sp),a6			
	move.l (a6),d0				
	move.l a6,64(sp)			
	addq.l #4,40(sp)			
						
	add.l 68(sp),d0				
						
	move.l (a5),48(sp)			
	move.l 4(a5),52(sp)			
						
	move.l (a4),d7				
	add.l #-2147483648,d7			
	move.l 4(a4),d6				
						
	move.l d0,d2				
	lsl.l #3,d2				
	move.l a0,d1				
	add.l d2,d1				
						
	lea 8(a0,d2.l),a6			
	move.l a6,36(sp)			
						
	move.l (a6),d3				
	add.l #-2147483648,d3			
	move.l 4(a6),d2				
						
	move.l d1,a6				
	move.l (a6),d4				
	move.l 4(a6),d5				
	move.l d4,(a5)				
	move.l d5,4(a5)				
						
	move.l d2,d4				
	move.l d3,d2				
	move.l d4,d3				
	move.l d2,(a4)				
	move.l d3,4(a4)				
						
	move.l 48(sp),(a6)			
	move.l 52(sp),4(a6)			
						
	move.l d7,d2				
	move.l d6,d3				
	move.l 36(sp),a6			
	move.l d2,(a6)				
	move.l d3,4(a6)				
						
	add.l 60(sp),d0				
						
	move.l (a3),48(sp)			
	move.l 4(a3),52(sp)			
						
	move.l 8(a3),d7				
	add.l #-2147483648,d7			
	move.l 12(a3),d6			
						
	move.l d0,d2				
	lsl.l #3,d2				
	move.l a0,d1				
	add.l d2,d1				
						
	lea 8(a0,d2.l),a6			
	move.l a6,36(sp)			
						
	move.l (a6),d3				
	add.l #-2147483648,d3			
	move.l 4(a6),d2				
						
	move.l d1,a6				
	move.l (a6),d4				
	move.l 4(a6),d5				
	move.l d4,(a3)				
	move.l d5,4(a3)				
						
	move.l d2,d4				
	move.l d3,d2				
	move.l d4,d3				
	move.l d2,8(a3)				
	move.l d3,12(a3)			
						
	move.l 48(sp),(a6)			
	move.l 52(sp),4(a6)			
						
	move.l d7,d2				
	move.l d6,d3				
	move.l 36(sp),a6			
	move.l d2,(a6)				
	move.l d3,4(a6)				
						
	sub.l 56(sp),d0				
						
	move.l (a2),48(sp)			
	move.l 4(a2),52(sp)			
						
	move.l 8(a2),d7				
	add.l #-2147483648,d7			
	move.l 12(a2),d6			
						
	move.l d0,d2				
	lsl.l #3,d2				
	move.l a0,d1				
	add.l d2,d1				
						
	lea 8(a0,d2.l),a6			
	move.l a6,36(sp)			
						
	move.l (a6),d3				
	add.l #-2147483648,d3			
	move.l 4(a6),d2				
						
	move.l d1,a6				
	move.l (a6),d4				
	move.l 4(a6),d5				
	move.l d4,(a2)				
	move.l d5,4(a2)				
						
	move.l d2,d4				
	move.l d3,d2				
	move.l d4,d3				
	move.l d2,8(a2)				
	move.l d3,12(a2)			
						
	move.l 48(sp),(a6)			
	move.l 52(sp),4(a6)			
						
	move.l d7,d2				
	move.l d6,d3				
	move.l 36(sp),a6			
	move.l d2,(a6)				
	move.l d3,4(a6)				
						
	move.l (a1),48(sp)			
	move.l 4(a1),52(sp)			
						
	move.l 8(a1),d5				
	add.l #-2147483648,d5			
	move.l 12(a1),d4			
						
	add.l 60(sp),d0				
						
	lsl.l #3,d0				
	move.l a0,d2				
	add.l d0,d2				
						
	lea 8(a0,d0.l),a6			
	move.l a6,36(sp)			
						
	move.l (a6),d1				
	add.l #-2147483648,d1			
	move.l 4(a6),d0				
						
	move.l d2,a6				
	move.l (a6),d6				
	move.l 4(a6),d7				
	move.l d6,(a1)				
	move.l d7,4(a1)				
						
	move.l d0,d3				
	move.l d1,d0				
	move.l d3,d1				
	move.l d0,8(a1)				
	move.l d1,12(a1)			
						
	move.l 48(sp),(a6)			
	move.l 52(sp),4(a6)			
						
	move.l d5,d0				
	move.l d4,d1				
	move.l 36(sp),a6			
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	lea (16,a5),a5				
	lea (16,a3),a3				
	lea (16,a2),a2				
	lea (16,a1),a1				
	lea (16,a4),a4				
	move.l 64(sp),d0			
	cmp.l 72(sp),d0				
	jbne _?L181				
	jbra _?L180				
_?L193:						
	move.l a0,d4				
						
	move.l 92(sp),116(sp)			
	move.l d4,112(sp)			
	move.l 76(sp),108(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (68,sp),sp				
						
	jbra _cftbsub				
_?L170:						
						
	moveq #8,d5				
	cmp.l 76(sp),d5				
	jbeq _?L205				
						
	move.l d4,a0				
	move.l 8(a0),a1				
	add.l #-2147483648,a1			
	move.l d4,a2				
	move.l 12(a0),a0			
	move.l a1,d0				
	move.l a0,d1				
	move.l d0,8(a2)				
	move.l d1,12(a2)			
						
	move.l 24(a2),a1			
	add.l #-2147483648,a1			
	move.l 28(a2),a0			
	move.l a1,d0				
	move.l a0,d1				
	move.l d0,24(a2)			
	move.l d1,28(a2)			
						
	move.l 92(sp),116(sp)			
	move.l d4,112(sp)			
	move.l 76(sp),108(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (68,sp),sp				
						
	jbra _cftbsub				
_?L205:						
						
	moveq #4,d0				
	move.l d0,60(sp)			
						
	moveq #1,d1				
	move.l d1,96(sp)			
						
	move.w #2,a0				
	move.l a0,56(sp)			
	addq.l #8,a3				
	move.l a3,100(sp)			
						
	move.l (a3),88(sp)			
	move.l a3,84(sp)			
						
	clr.l 68(sp)				
						
	clr.l 80(sp)				
	move.l d4,a0				
	jbra _?L180				
						
	.align	2				
	.globl	_aubio_ooura_rdft		
						
_aubio_ooura_rdft:				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 40(sp),d3			
	move.l 44(sp),d6			
	move.l 48(sp),a3			
	move.l 52(sp),a4			
	move.l 56(sp),a5			
						
	move.l (a4),d4				
						
	move.l d4,d0				
	add.l d4,d0				
	add.l d0,d0				
						
	cmp.l d0,d3				
	jble _?L207				
						
	move.l d3,d4				
	asr.l #2,d4				
						
	move.l d4,(a4)				
						
	moveq #1,d0				
	move.l d0,4(a4)				
						
	moveq #2,d0				
	cmp.l d4,d0				
	jbge _?L219				
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l d4,-(sp)				
	jbsr (_makewt?part?0)			
	lea (12,sp),sp				
						
	move.l 4(a4),d5				
						
	move.l d5,d0				
	add.l d5,d0				
	add.l d0,d0				
						
	cmp.l d3,d0				
	jbge _?L225				
						
	move.l d4,d7				
	lsl.l #3,d7				
						
	move.l a5,d0				
	add.l d7,d0				
						
	move.l d4,4(a4)				
						
	move.l d4,d5				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	jbsr (_makect?part?0)			
	addq.l #8,sp				
						
	tst.l d6				
	jblt _?L213				
_?L212:						
						
	move.l a3,-(sp)				
	pea 8(a4)				
	move.l d3,-(sp)				
	jbsr _bitrv2				
						
	addq.l #8,sp				
	move.l a5,(sp)				
	move.l a3,-(sp)				
	move.l d3,-(sp)				
	jbsr _cftfsub				
	lea (12,sp),sp				
						
	pea (a5,d7.l)				
	move.l d5,-(sp)				
	move.l a3,-(sp)				
	move.l d3,-(sp)				
	jbsr _rftfsub				
	lea (16,sp),sp				
_?L215:						
						
	move.l (a3),d4				
	move.l 4(a3),d5				
						
	move.l 8(a3),d6				
	move.l 12(a3),d7			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,8(a3)				
	move.l d1,12(a3)			
_?L206:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L207:						
						
	move.l 4(a4),d5				
						
	move.l d5,d0				
	add.l d5,d0				
	add.l d0,d0				
						
	cmp.l d3,d0				
	jbge _?L211				
_?L227:						
						
	move.l d3,d5				
	asr.l #2,d5				
						
	move.l d5,4(a4)				
						
	moveq #1,d0				
	cmp.l d5,d0				
	jblt _?L226				
_?L211:						
						
	tst.l d6				
	jblt _?L213				
						
	moveq #4,d0				
	cmp.l d3,d0				
	jblt _?L222				
						
	subq.l #4,d3				
	jbne _?L215				
						
	move.l a5,-(sp)				
	move.l a3,-(sp)				
	pea 4.w					
	jbsr _cftfsub				
	lea (12,sp),sp				
						
	move.l (a3),d4				
	move.l 4(a3),d5				
						
	move.l 8(a3),d6				
	move.l 12(a3),d7			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___subdf3				
	lea (16,sp),sp				
	move.l d0,8(a3)				
	move.l d1,12(a3)			
	jbra _?L206				
_?L219:						
	moveq #4,d0				
	moveq #1,d5				
						
	cmp.l d3,d0				
	jbge _?L211				
	jbra _?L227				
_?L225:						
						
	tst.l d6				
	jbge _?L222				
_?L213:						
						
	move.l (a3),d6				
	move.l 4(a3),d7				
						
	lea ___subdf3,a6			
	move.l 12(a3),-(sp)			
	move.l 8(a3),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
						
	lea (12,sp),sp				
	clr.l (sp)				
	move.l #1071644672,-(sp)		
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr ___muldf3				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
						
	move.l a0,8(a3)				
	move.l a1,12(a3)			
						
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	moveq #4,d0				
	cmp.l d3,d0				
	jblt _?L228				
						
	moveq #4,d0				
	cmp.l d3,d0				
	jbne _?L206				
						
	move.l a5,48(sp)			
	move.l a3,44(sp)			
	move.l d0,40(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
						
	jbra _cftfsub				
_?L226:						
						
	move.l d4,d7				
	lsl.l #3,d7				
						
	move.l a5,d0				
	add.l d7,d0				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	jbsr (_makect?part?0)			
	addq.l #8,sp				
						
	tst.l d6				
	jbge _?L212				
	jbra _?L213				
_?L222:						
	move.l d4,d7				
	lsl.l #3,d7				
						
	move.l a3,-(sp)				
	pea 8(a4)				
	move.l d3,-(sp)				
	jbsr _bitrv2				
						
	addq.l #8,sp				
	move.l a5,(sp)				
	move.l a3,-(sp)				
	move.l d3,-(sp)				
	jbsr _cftfsub				
	lea (12,sp),sp				
						
	pea (a5,d7.l)				
	move.l d5,-(sp)				
	move.l a3,-(sp)				
	move.l d3,-(sp)				
	jbsr _rftfsub				
	lea (16,sp),sp				
	jbra _?L215				
_?L228:						
						
	lsl.l #3,d4				
						
	pea (a5,d4.l)				
	move.l d5,-(sp)				
	move.l a3,-(sp)				
	move.l d3,-(sp)				
	jbsr _rftbsub				
						
	lea (12,sp),sp				
	move.l a3,(sp)				
	pea 8(a4)				
	move.l d3,-(sp)				
	jbsr _bitrv2				
	lea (12,sp),sp				
						
	move.l a5,48(sp)			
	move.l a3,44(sp)			
	move.l d3,40(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
						
	jbra _cftbsub				
						
	.align	2				
	.globl	_aubio_ooura_ddct		
						
_aubio_ooura_ddct:				
	lea (-64,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 104(sp),a6			
	move.l 108(sp),d3			
	move.l 112(sp),68(sp)			
	move.l 116(sp),76(sp)			
	move.l 120(sp),84(sp)			
						
	move.l 76(sp),a0			
	move.l (a0),d1				
						
	move.l d1,d0				
	add.l d1,d0				
	add.l d0,d0				
						
	cmp.l d0,a6				
	jble _?L230				
						
	move.l a6,d0				
	asr.l #2,d0				
						
	move.l d0,(a0)				
						
	moveq #1,d1				
	move.l d1,4(a0)				
						
	moveq #2,d1				
	cmp.l d0,d1				
	jbge _?L260				
						
	move.l d0,d1				
	lsl.l #3,d1				
						
	add.l 84(sp),d1				
	move.l d1,88(sp)			
	move.l 84(sp),-(sp)			
	move.l 80(sp),-(sp)			
	move.l d0,-(sp)				
	jbsr (_makewt?part?0)			
	lea (12,sp),sp				
						
	move.l 76(sp),a0			
	move.l 4(a0),80(sp)			
						
	cmp.l 80(sp),a6				
	jbgt _?L257				
_?L232:						
						
	move.l a6,d0				
	add.l #536870911,d0			
	lsl.l #3,d0				
	move.l 68(sp),a0			
	add.l d0,a0				
	move.l a0,72(sp)			
						
	tst.l d3				
	jblt _?L261				
_?L234:						
						
	move.l 88(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l 76(sp),-(sp)			
	move.l a6,-(sp)				
	jbsr _dctsub				
	lea (16,sp),sp				
						
	moveq #4,d0				
	cmp.l a6,d0				
	jblt _?L262				
						
	moveq #4,d0				
	cmp.l a6,d0				
	jbeq _?L263				
						
	move.l 68(sp),a0			
	move.l (a0),d4				
	move.l 4(a0),d5				
						
	move.l 8(a0),d6				
	move.l 12(a0),d7			
						
	lea ___subdf3,a5			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,76(sp)			
	move.l d1,d3				
						
	lea ___adddf3,a3			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l 68(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	moveq #3,d0				
	cmp.l a6,d0				
	jbne _?L247				
	move.l 68(sp),a4			
	addq.l #8,a4				
	move.l a6,d0				
	subq.l #3,d0				
	lsr.l #1,d0				
	lsl.l #4,d0				
	move.l 68(sp),a1			
	lea 24(a1,d0.l),a6			
_?L246:						
						
	move.l 8(a4),d4				
	move.l 12(a4),d5			
						
	move.l 16(a4),d6			
	move.l 20(a4),d7			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,8(a4)				
	move.l d1,12(a4)			
						
	lea (16,a4),a4				
	cmp.l a6,a4				
	jbne _?L246				
_?L247:						
						
	move.l 76(sp),d0			
	move.l d3,d1				
	move.l 72(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (64,sp),sp				
	rts					
_?L230:						
						
	move.l 76(sp),a1			
	move.l 4(a1),80(sp)			
						
	lsl.l #3,d1				
						
	add.l 84(sp),d1				
	move.l d1,88(sp)			
						
	cmp.l 80(sp),a6				
	jble _?L232				
						
	move.l a6,4(a1)				
						
	moveq #1,d0				
	cmp.l a6,d0				
	jblt _?L233				
	move.l a6,80(sp)			
						
	move.l a6,d0				
	add.l #536870911,d0			
	lsl.l #3,d0				
	move.l 68(sp),a0			
	add.l d0,a0				
	move.l a0,72(sp)			
						
	tst.l d3				
	jbge _?L234				
_?L261:						
						
	move.l (a0),92(sp)			
	move.l 4(a0),96(sp)			
						
	moveq #3,d1				
	cmp.l a6,d1				
	jbge _?L264				
	move.l 68(sp),a0			
	lea -16(a0,d0.l),a4			
	lea -32(a0,d0.l),a0			
	move.l a6,d0				
	subq.l #4,d0				
	lsr.l #1,d0				
	lsl.l #4,d0				
	move.l a0,d3				
	sub.l d0,d3				
	lea ___subdf3,a5			
	lea ___adddf3,a3			
_?L238:						
						
	move.l 8(a4),d4				
	move.l 12(a4),d5			
						
	move.l (a4),d6				
	move.l 4(a4),d7				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,16(a4)			
	move.l d1,20(a4)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,8(a4)				
	move.l d1,12(a4)			
						
	lea (-16,a4),a4				
	cmp.l d3,a4				
	jbne _?L238				
_?L239:						
						
	move.l 68(sp),a0			
	move.l (a0),d4				
	move.l 4(a0),d5				
						
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
						
	move.l 68(sp),a1			
	move.l d0,8(a1)				
	move.l d1,12(a1)			
						
	move.l 96(sp),-(sp)			
	move.l 96(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l 68(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	moveq #4,d0				
	cmp.l a6,d0				
	jblt _?L265				
						
	moveq #4,d0				
	cmp.l a6,d0				
	jbeq _?L266				
						
	move.l 88(sp),116(sp)			
	move.l 80(sp),112(sp)			
	move.l 68(sp),108(sp)			
	move.l a6,104(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (64,sp),sp				
						
	jbra _dctsub				
_?L260:						
						
	lsl.l #3,d0				
						
	add.l 84(sp),d0				
	move.l d0,88(sp)			
						
	moveq #1,d0				
	cmp.l a6,d0				
	jbge _?L248				
_?L257:						
						
	move.l a6,4(a0)				
_?L233:						
	move.l 88(sp),-(sp)			
	move.l a6,-(sp)				
	jbsr (_makect?part?0)			
	addq.l #8,sp				
	move.l a6,80(sp)			
	jbra _?L232				
_?L262:						
						
	move.l 68(sp),-(sp)			
	move.l 80(sp),a0			
	pea 8(a0)				
	move.l a6,-(sp)				
	jbsr _bitrv2				
	lea (12,sp),sp				
						
	move.l 84(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l a6,-(sp)				
	jbsr _cftfsub				
	lea (12,sp),sp				
						
	move.l 88(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l 76(sp),-(sp)			
	move.l a6,-(sp)				
	jbsr _rftfsub				
	lea (16,sp),sp				
						
	move.l 68(sp),a0			
	move.l (a0),d4				
	move.l 4(a0),d5				
						
	move.l 8(a0),d6				
	move.l 12(a0),d7			
						
	lea ___subdf3,a5			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,76(sp)			
	move.l d1,d3				
						
	lea ___adddf3,a3			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l 68(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
_?L267:						
	move.l 68(sp),a4			
	addq.l #8,a4				
	move.l a6,d0				
	subq.l #3,d0				
	lsr.l #1,d0				
	lsl.l #4,d0				
	move.l 68(sp),a1			
	lea 24(a1,d0.l),a6			
	jbra _?L246				
_?L248:						
						
	moveq #1,d1				
	move.l d1,80(sp)			
	jbra _?L232				
_?L266:						
						
	move.l 84(sp),-(sp)			
	move.l 72(sp),-(sp)			
	pea 4.w					
	jbsr _cftfsub				
	lea (12,sp),sp				
						
	move.l 88(sp),116(sp)			
	move.l 80(sp),112(sp)			
	move.l 68(sp),108(sp)			
	moveq #4,d1				
	move.l d1,104(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (64,sp),sp				
						
	jbra _dctsub				
_?L265:						
						
	move.l 88(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l 76(sp),-(sp)			
	move.l a6,-(sp)				
	jbsr _rftbsub				
	lea (16,sp),sp				
						
	move.l 68(sp),-(sp)			
	move.l 80(sp),a1			
	pea 8(a1)				
	move.l a6,-(sp)				
	jbsr _bitrv2				
	lea (12,sp),sp				
						
	move.l 84(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l a6,-(sp)				
	jbsr _cftbsub				
	lea (12,sp),sp				
						
	move.l 88(sp),116(sp)			
	move.l 80(sp),112(sp)			
	move.l 68(sp),108(sp)			
	move.l a6,104(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (64,sp),sp				
						
	jbra _dctsub				
_?L263:						
						
	move.l 84(sp),-(sp)			
	move.l 72(sp),-(sp)			
	pea 4.w					
	jbsr _cftfsub				
	lea (12,sp),sp				
						
	move.l 68(sp),a0			
	move.l (a0),d4				
	move.l 4(a0),d5				
						
	move.l 8(a0),d6				
	move.l 12(a0),d7			
						
	lea ___subdf3,a5			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,76(sp)			
	move.l d1,d3				
						
	lea ___adddf3,a3			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l 68(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
	jbra _?L267				
_?L264:						
	lea ___subdf3,a5			
	lea ___adddf3,a3			
	jbra _?L239				
						
	.align	2				
	.globl	_aubio_ooura_ddst		
						
_aubio_ooura_ddst:				
	lea (-48,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 88(sp),d3			
	move.l 92(sp),d4			
	move.l 96(sp),a5			
	move.l 100(sp),a4			
	move.l 104(sp),60(sp)			
						
	move.l (a4),d1				
						
	move.l d1,d0				
	add.l d1,d0				
	add.l d0,d0				
						
	cmp.l d0,d3				
	jble _?L269				
						
	move.l d3,d0				
	asr.l #2,d0				
						
	move.l d0,(a4)				
						
	moveq #1,d1				
	move.l d1,4(a4)				
						
	moveq #2,d1				
	cmp.l d0,d1				
	jbge _?L299				
						
	move.l d0,d1				
	lsl.l #3,d1				
						
	add.l 60(sp),d1				
	move.l d1,64(sp)			
	move.l 60(sp),-(sp)			
	move.l a4,-(sp)				
	move.l d0,-(sp)				
	jbsr (_makewt?part?0)			
	lea (12,sp),sp				
						
	move.l 4(a4),56(sp)			
						
	cmp.l 56(sp),d3				
	jbgt _?L296				
_?L271:						
						
	move.l d3,d0				
	add.l #536870911,d0			
	lsl.l #3,d0				
	lea (a5,d0.l),a0			
	move.l a0,52(sp)			
						
	tst.l d4				
	jblt _?L300				
_?L273:						
						
	move.l 64(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l a5,-(sp)				
	move.l d3,-(sp)				
	jbsr _dstsub				
	lea (16,sp),sp				
						
	moveq #4,d1				
	cmp.l d3,d1				
	jblt _?L301				
						
	moveq #4,d0				
	cmp.l d3,d0				
	jbeq _?L302				
						
	move.l (a5),a0				
	move.l 4(a5),a1				
						
	move.l 8(a5),d4				
	move.l 12(a5),d5			
						
	lea ___subdf3,a3			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l a0,56(sp)			
	move.l a1,52(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,56(sp)			
	move.l d1,60(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 48(sp),a0			
	move.l 44(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
						
	moveq #3,d1				
	cmp.l d3,d1				
	jbne _?L286				
	lea (8,a5),a6				
	move.l d3,d0				
	subq.l #3,d0				
	lsr.l #1,d0				
	lsl.l #4,d0				
	lea 24(a5,d0.l),a5			
	move.l a5,d3				
_?L285:						
						
	move.l 8(a6),d4				
	move.l 12(a6),d5			
						
	move.l 16(a6),a4			
	move.l 20(a6),a5			
						
	move.l d4,d6				
	add.l #-2147483648,d6			
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l d5,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a6)				
	move.l d1,4(a6)				
						
	move.l a5,-(sp)				
	move.l a4,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,8(a6)				
	move.l d1,12(a6)			
						
	lea (16,a6),a6				
	cmp.l d3,a6				
	jbne _?L285				
_?L286:						
						
	move.l 56(sp),d0			
	add.l #-2147483648,d0			
	move.l 52(sp),a0			
	move.l d0,(a0)				
	move.l 60(sp),4(a0)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (48,sp),sp				
	rts					
_?L269:						
						
	move.l 4(a4),56(sp)			
						
	lsl.l #3,d1				
						
	add.l 60(sp),d1				
	move.l d1,64(sp)			
						
	cmp.l 56(sp),d3				
	jble _?L271				
						
	move.l d3,4(a4)				
						
	moveq #1,d1				
	cmp.l d3,d1				
	jblt _?L272				
	move.l d3,56(sp)			
						
	move.l d3,d0				
	add.l #536870911,d0			
	lsl.l #3,d0				
	lea (a5,d0.l),a0			
	move.l a0,52(sp)			
						
	tst.l d4				
	jbge _?L273				
_?L300:						
						
	move.l (a0),68(sp)			
	move.l 4(a0),72(sp)			
						
	moveq #3,d1				
	cmp.l d3,d1				
	jbge _?L303				
	lea -16(a5,d0.l),a6			
	lea -32(a5,d0.l),a0			
	move.l d3,d0				
	subq.l #4,d0				
	lsr.l #1,d0				
	lsl.l #4,d0				
	sub.l d0,a0				
	move.l a0,52(sp)			
	lea ___subdf3,a3			
	move.l a5,76(sp)			
	move.l a4,80(sp)			
	move.l a6,a4				
_?L277:						
						
	move.l 8(a4),d4				
	move.l 12(a4),d5			
						
	move.l (a4),d6				
	move.l 4(a4),d7				
						
	move.l d4,a5				
	add.l #-2147483648,a5			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l a5,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,16(a4)			
	move.l d1,20(a4)			
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,8(a4)				
	move.l d1,12(a4)			
						
	lea (-16,a4),a4				
	cmp.l 52(sp),a4				
	jbne _?L277				
	move.l 76(sp),a5			
	move.l 80(sp),a4			
_?L278:						
						
	move.l (a5),d4				
	move.l 4(a5),d5				
						
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,8(a5)				
	move.l d1,12(a5)			
						
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
						
	moveq #4,d0				
	cmp.l d3,d0				
	jblt _?L304				
						
	moveq #4,d1				
	cmp.l d3,d1				
	jbeq _?L305				
						
	move.l 64(sp),100(sp)			
	move.l 56(sp),96(sp)			
	move.l a5,92(sp)			
	move.l d3,88(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (48,sp),sp				
						
	jbra _dstsub				
_?L299:						
						
	lsl.l #3,d0				
						
	add.l 60(sp),d0				
	move.l d0,64(sp)			
						
	moveq #1,d0				
	cmp.l d3,d0				
	jbge _?L287				
_?L296:						
						
	move.l d3,4(a4)				
_?L272:						
	move.l 64(sp),-(sp)			
	move.l d3,-(sp)				
	jbsr (_makect?part?0)			
	addq.l #8,sp				
	move.l d3,56(sp)			
	jbra _?L271				
_?L301:						
						
	move.l a5,-(sp)				
	pea 8(a4)				
	move.l d3,-(sp)				
	jbsr _bitrv2				
	lea (12,sp),sp				
						
	move.l 60(sp),-(sp)			
	move.l a5,-(sp)				
	move.l d3,-(sp)				
	jbsr _cftfsub				
	lea (12,sp),sp				
						
	move.l 64(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l a5,-(sp)				
	move.l d3,-(sp)				
	jbsr _rftfsub				
	lea (16,sp),sp				
						
	move.l (a5),d4				
	move.l 4(a5),d5				
						
	move.l 8(a5),a0				
	move.l 12(a5),a1			
						
	lea ___subdf3,a3			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a0,56(sp)			
	move.l a1,52(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,56(sp)			
	move.l d1,60(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 48(sp),a0			
	move.l 44(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
_?L306:						
	lea (8,a5),a6				
	move.l d3,d0				
	subq.l #3,d0				
	lsr.l #1,d0				
	lsl.l #4,d0				
	lea 24(a5,d0.l),a5			
	move.l a5,d3				
	jbra _?L285				
_?L287:						
						
	moveq #1,d0				
	move.l d0,56(sp)			
	jbra _?L271				
_?L305:						
						
	move.l 60(sp),-(sp)			
	move.l a5,-(sp)				
	pea 4.w					
	jbsr _cftfsub				
	lea (12,sp),sp				
						
	move.l 64(sp),100(sp)			
	move.l 56(sp),96(sp)			
	move.l a5,92(sp)			
	moveq #4,d0				
	move.l d0,88(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (48,sp),sp				
						
	jbra _dstsub				
_?L304:						
						
	move.l 64(sp),-(sp)			
	move.l 60(sp),-(sp)			
	move.l a5,-(sp)				
	move.l d3,-(sp)				
	jbsr _rftbsub				
						
	lea (12,sp),sp				
	move.l a5,(sp)				
	pea 8(a4)				
	move.l d3,-(sp)				
	jbsr _bitrv2				
	lea (12,sp),sp				
						
	move.l 60(sp),-(sp)			
	move.l a5,-(sp)				
	move.l d3,-(sp)				
	jbsr _cftbsub				
	lea (12,sp),sp				
						
	move.l 64(sp),100(sp)			
	move.l 56(sp),96(sp)			
	move.l a5,92(sp)			
	move.l d3,88(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (48,sp),sp				
						
	jbra _dstsub				
_?L302:						
						
	move.l 60(sp),-(sp)			
	move.l a5,-(sp)				
	pea 4.w					
	jbsr _cftfsub				
	lea (12,sp),sp				
						
	move.l (a5),d4				
	move.l 4(a5),d5				
						
	move.l 8(a5),a0				
	move.l 12(a5),a1			
						
	lea ___subdf3,a3			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l a0,56(sp)			
	move.l a1,52(sp)			
	jbsr (a3)				
	lea (16,sp),sp				
	move.l d0,56(sp)			
	move.l d1,60(sp)			
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 48(sp),a0			
	move.l 44(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr ___adddf3				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
	jbra _?L306				
_?L303:						
	lea ___subdf3,a3			
	jbra _?L278				
						
	.align	2				
	.globl	_aubio_ooura_dfct		
						
_aubio_ooura_dfct:				
	lea (-88,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
						
	move.l 140(sp),a0			
	move.l (a0),112(sp)			
						
	move.l 112(sp),d0			
	lsl.l #3,d0				
						
	cmp.l 128(sp),d0			
	jblt _?L308				
						
	move.l 4(a0),88(sp)			
						
	move.l 88(sp),d0			
	add.l d0,d0				
						
	move.l 128(sp),d2			
	asr.l #1,d2				
	move.l d2,92(sp)			
						
	cmp.l 128(sp),d0			
	jblt _?L346				
_?L310:						
						
	move.l 92(sp),d3			
	lsl.l #3,d3				
						
	move.l 132(sp),a1			
	move.l (a1,d3.l),52(sp)			
	move.l 4(a1,d3.l),56(sp)		
						
	move.l (a1),a0				
	move.l 4(a1),a1				
						
	move.l 128(sp),d2			
	lsl.l #3,d2				
	move.l d2,96(sp)			
	move.l 132(sp),a2			
	add.l d2,a2				
	move.l a2,116(sp)			
	move.l (a2),d6				
	move.l 4(a2),d7				
						
	lea ___adddf3,a4			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l a0,56(sp)			
	move.l a1,52(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	lea ___subdf3,a6			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 48(sp),a0			
	move.l 44(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l 132(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 136(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 136(sp),a2			
	move.l d0,(a2,d3.l)			
	move.l d1,4(a2,d3.l)			
						
	moveq #2,d0				
	cmp.l 128(sp),d0			
	jbge _?L313				
_?L353:						
						
	move.l 128(sp),d2			
	asr.l #2,d2				
	move.l d2,120(sp)			
						
	moveq #7,d0				
	cmp.l 128(sp),d0			
	jbge _?L347				
	move.l 132(sp),a1			
	addq.l #8,a1				
	move.l d3,d1				
	subq.l #8,d1				
	move.l 132(sp),a3			
	add.l d1,a3				
	move.l 92(sp),a0			
	subq.l #1,a0				
	move.l 128(sp),d0			
	sub.l a0,d0				
	lsl.l #3,d0				
	add.l 132(sp),d0			
	move.l d0,84(sp)			
	move.l 136(sp),a0			
	addq.l #8,a0				
	move.l a0,76(sp)			
	move.l 136(sp),a5			
	add.l d1,a5				
	move.l 120(sp),d2			
	lsl.l #3,d2				
	move.l d2,80(sp)			
	add.l 132(sp),d2			
	move.l d2,108(sp)			
	move.l d3,104(sp)			
	move.l a5,d3				
	move.l a1,a5				
_?L317:						
						
	move.l (a5),52(sp)			
	move.l 4(a5),56(sp)			
						
	move.l a3,a0				
	sub.l 104(sp),a0			
	move.l 96(sp),a1			
	move.l (a0,a1.l),60(sp)			
	move.l 4(a0,a1.l),64(sp)		
						
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d6				
	move.l d1,d7				
						
	move.l (a3),a0				
	move.l 4(a3),a1				
						
	move.l 84(sp),a2			
	addq.l #8,84(sp)			
	move.l (a2)+,68(sp)			
	move.l (a2)+,72(sp)			
						
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l a0,56(sp)			
	move.l a1,52(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l d0,(a5)+				
	move.l d1,(a5)+				
						
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l 48(sp),a0			
	move.l 44(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 76(sp),a0			
	addq.l #8,76(sp)			
	move.l d0,(a0)+				
	move.l d1,(a0)+				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d3,a1				
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	subq.l #8,a3				
	subq.l #8,d3				
	cmp.l 108(sp),a5			
	jbne _?L317				
	move.l 104(sp),d3			
						
	move.l 132(sp),a3			
	add.l 80(sp),a3				
						
	move.l 128(sp),d0			
	sub.l 120(sp),d0			
						
	lsl.l #3,d0				
	move.l 132(sp),a5			
	add.l d0,a5				
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 136(sp),a0			
	move.l 80(sp),a1			
	move.l d0,(a0,a1.l)			
	move.l d1,4(a0,a1.l)			
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	move.l 112(sp),d0			
	lsl.l #3,d0				
						
	add.l 144(sp),d0			
	move.l d0,76(sp)			
	move.l d0,-(sp)				
	move.l 92(sp),-(sp)			
	move.l 140(sp),-(sp)			
	move.l 104(sp),-(sp)			
	jbsr _dctsub				
	lea (16,sp),sp				
						
	moveq #4,d0				
	cmp.l 92(sp),d0				
	jblt _?L348				
_?L340:						
						
	moveq #4,d0				
	cmp.l 92(sp),d0				
	jbeq _?L349				
						
	move.l 132(sp),a0			
	move.l 12(a0),-(sp)			
	move.l 8(a0),-(sp)			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 132(sp),a2			
	move.l 96(sp),d2			
	move.l d0,-8(a2,d2.l)			
	move.l d1,-4(a2,d2.l)			
						
	move.l 4(a2),-(sp)			
	move.l (a2),-(sp)			
	move.l 12(a2),-(sp)			
	move.l 8(a2),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 132(sp),a2			
	move.l d0,8(a2)				
	move.l d1,12(a2)			
_?L324:						
						
	moveq #2,d7				
						
	moveq #1,d0				
	cmp.l 120(sp),d0			
	jbge _?L341				
						
	move.l 140(sp),a0			
	addq.l #8,a0				
	move.l a0,100(sp)			
	move.w #32,a1				
	add.l 136(sp),a1			
	move.l a1,84(sp)			
	move.l 120(sp),d4			
	move.l d7,52(sp)			
						
	move.l 76(sp),-(sp)			
	move.l 92(sp),-(sp)			
	move.l 144(sp),-(sp)			
	move.l d4,-(sp)				
	jbsr _dctsub				
	lea (16,sp),sp				
						
	moveq #4,d1				
	cmp.l d4,d1				
	jblt _?L350				
_?L325:						
						
	moveq #4,d2				
	cmp.l d4,d2				
	jbeq _?L351				
_?L326:						
						
	move.l 128(sp),d3			
	sub.l 52(sp),d3				
						
	lsl.l #3,d3				
						
	move.l 136(sp),a0			
	move.l 12(a0),-(sp)			
	move.l 8(a0),-(sp)			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 132(sp),a2			
	move.l d0,(a2,d3.l)			
	move.l d1,4(a2,d3.l)			
						
	move.l 136(sp),a0			
	move.l 12(a0),-(sp)			
	move.l 8(a0),-(sp)			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,60(sp)			
	move.l d1,64(sp)			
						
	move.l 52(sp),d0			
	lsl.l #3,d0				
	move.l 132(sp),a2			
	move.l 60(sp),(a2,d0.l)			
	move.l 64(sp),4(a2,d0.l)		
						
	move.l d4,d5				
	asr.l #1,d5				
						
	move.l 52(sp),d2			
	add.l d2,d2				
	move.l d2,60(sp)			
						
	moveq #2,d0				
	cmp.l d4,d0				
	jbeq _?L330				
	moveq #16,d7				
	add.l 136(sp),d7			
	move.l 60(sp),d0			
	add.l d0,d0				
	move.l d0,d6				
	lsl.l #3,d6				
	sub.l 52(sp),d0				
	lsl.l #3,d0				
	move.l 132(sp),a3			
	add.l d0,a3				
	move.w #24,a5				
	add.l 136(sp),a5			
	move.l d4,d3				
	subq.l #3,d3				
	lsr.l #1,d3				
	lsl.l #4,d3				
	add.l 84(sp),d3				
	move.l 52(sp),d2			
	lsl.l #4,d2				
	move.l d4,68(sp)			
	move.l a5,d4				
	move.l a3,a5				
	move.l d7,a3				
	move.l d2,d7				
_?L329:						
						
	move.l d4,a0				
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,(a5)				
	move.l d1,4(a5)				
						
	move.l d4,a1				
	move.l 4(a1),-(sp)			
	move.l (a1),-(sp)			
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,(a5,d7.l)			
	move.l d1,4(a5,d7.l)			
						
	lea (16,a3),a3				
	add.l d6,a5				
	moveq #16,d0				
	add.l d0,d4				
	cmp.l d3,a3				
	jbne _?L329				
	move.l 68(sp),d4			
_?L330:						
	move.l d4,d6				
	lsl.l #4,d6				
	move.l 136(sp),a3			
	add.l d6,a3				
	move.l 80(sp),d6			
	neg.l d6				
	move.l a3,a5				
	sub.l 80(sp),a5				
						
	moveq #0,d3				
_?L328:						
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,(a5,d6.l)			
	move.l d1,4(a5,d6.l)			
						
	subq.l #8,sp				
	move.l (a5)+,(sp)			
	move.l (a5)+,4(sp)			
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,(a3,d6.l)			
	move.l d1,4(a3,d6.l)			
						
	addq.l #1,d3				
						
	subq.l #8,a3				
	cmp.l d3,d5				
	jbgt _?L328				
						
	add.l d5,d4				
	lsl.l #3,d4				
						
	move.l d5,d0				
	lsl.l #3,d0				
	move.l 136(sp),a0			
	move.l (a0,d4.l),d1			
	move.l 4(a0,d4.l),d2			
	move.l d1,(a0,d0.l)			
	move.l d2,4(a0,d0.l)			
						
	moveq #1,d1				
	cmp.l d5,d1				
	jbeq _?L352				
	move.l d5,d4				
						
	move.l 60(sp),52(sp)			
	move.l d0,80(sp)			
						
	move.l 76(sp),-(sp)			
	move.l 92(sp),-(sp)			
	move.l 144(sp),-(sp)			
	move.l d4,-(sp)				
	jbsr _dctsub				
	lea (16,sp),sp				
						
	moveq #4,d1				
	cmp.l d4,d1				
	jbge _?L325				
_?L350:						
						
	move.l 136(sp),-(sp)			
	move.l 104(sp),-(sp)			
	move.l d4,-(sp)				
	jbsr _bitrv2				
	lea (12,sp),sp				
						
	move.l 144(sp),-(sp)			
	move.l 140(sp),-(sp)			
	move.l d4,-(sp)				
	jbsr _cftfsub				
	lea (12,sp),sp				
						
	move.l 76(sp),-(sp)			
	move.l 92(sp),-(sp)			
	move.l 144(sp),-(sp)			
	move.l d4,-(sp)				
	jbsr _rftfsub				
	lea (16,sp),sp				
	jbra _?L326				
_?L308:						
						
	move.l 128(sp),d2			
	asr.l #3,d2				
	move.l d2,112(sp)			
						
	move.l 140(sp),a0			
	move.l d2,(a0)				
						
	moveq #1,d0				
	move.l d0,4(a0)				
						
	moveq #2,d1				
	cmp.l d2,d1				
	jbge _?L332				
	move.l 144(sp),-(sp)			
	move.l a0,-(sp)				
	move.l d2,-(sp)				
	jbsr (_makewt?part?0)			
	lea (12,sp),sp				
						
	move.l 140(sp),a0			
	move.l 4(a0),88(sp)			
						
	move.l 128(sp),d2			
	asr.l #1,d2				
	move.l d2,92(sp)			
						
	move.l 88(sp),d0			
	add.l d0,d0				
						
	cmp.l 128(sp),d0			
	jbge _?L310				
						
	move.l d2,4(a0)				
_?L311:						
						
	move.l 112(sp),d0			
	lsl.l #3,d0				
	move.l 144(sp),a0			
	pea (a0,d0.l)				
	move.l 96(sp),-(sp)			
	jbsr (_makect?part?0)			
	addq.l #8,sp				
	move.l 92(sp),88(sp)			
_?L354:						
						
	move.l 92(sp),d3			
	lsl.l #3,d3				
						
	move.l 132(sp),a1			
	move.l (a1,d3.l),52(sp)			
	move.l 4(a1,d3.l),56(sp)		
						
	move.l (a1),a0				
	move.l 4(a1),a1				
						
	move.l 128(sp),d2			
	lsl.l #3,d2				
	move.l d2,96(sp)			
	move.l 132(sp),a2			
	add.l d2,a2				
	move.l a2,116(sp)			
	move.l (a2),d6				
	move.l 4(a2),d7				
						
	lea ___adddf3,a4			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l a0,56(sp)			
	move.l a1,52(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	lea ___subdf3,a6			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	move.l 48(sp),a0			
	move.l 44(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l 132(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 136(sp),a1			
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 64(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 136(sp),a2			
	move.l d0,(a2,d3.l)			
	move.l d1,4(a2,d3.l)			
						
	moveq #2,d0				
	cmp.l 128(sp),d0			
	jblt _?L353				
_?L313:						
						
	move.l 132(sp),a2			
	move.l (a2),8(a2)			
	move.l 4(a2),12(a2)			
						
	move.l 136(sp),a0			
	move.l (a0),d0				
	move.l 4(a0),d1				
	move.l d0,16(a2)			
	move.l d1,20(a2)			
						
	move.l 136(sp),a1			
	move.l 8(a1),d0				
	move.l 12(a1),d1			
						
	move.l d0,a0				
	move.l d1,a1				
	move.l 132(sp),a2			
	move.l a0,(a2)				
	move.l a1,4(a2)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (88,sp),sp				
	rts					
_?L346:						
						
	move.l 140(sp),a0			
	move.l d2,4(a0)				
						
	moveq #1,d0				
	cmp.l d2,d0				
	jblt _?L311				
	move.l 92(sp),88(sp)			
	jbra _?L354				
_?L351:						
						
	move.l 144(sp),-(sp)			
	move.l 140(sp),-(sp)			
	pea 4.w					
	jbsr _cftfsub				
	lea (12,sp),sp				
	jbra _?L326				
_?L332:						
	moveq #2,d0				
	moveq #1,d2				
	move.l d2,88(sp)			
						
	move.l 128(sp),d2			
	asr.l #1,d2				
	move.l d2,92(sp)			
						
	cmp.l 128(sp),d0			
	jbge _?L310				
	jbra _?L346				
_?L352:						
						
	move.l 60(sp),d6			
	lsl.l #3,d6				
						
	move.l 136(sp),a2			
	move.l (a2),a0				
	move.l 4(a2),a1				
	move.l 132(sp),a2			
	move.l a0,(a2,d6.l)			
	move.l a1,4(a2,d6.l)			
						
	move.l 136(sp),a0			
	move.l 12(a0),-(sp)			
	move.l 8(a0),-(sp)			
	move.l 20(a0),-(sp)			
	move.l 16(a0),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 116(sp),a2			
	move.l d0,(a2)				
	move.l d1,4(a2)				
						
	move.l 136(sp),a0			
	move.l 12(a0),-(sp)			
	move.l 8(a0),-(sp)			
	move.l 20(a0),-(sp)			
	move.l 16(a0),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
_?L355:						
						
	move.l d0,a0				
	move.l d1,a1				
	move.l 132(sp),a2			
	move.l a0,(a2)				
	move.l a1,4(a2)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (88,sp),sp				
	rts					
_?L347:						
	lsl.l #3,d2				
	move.l d2,80(sp)			
						
	move.l 132(sp),a3			
	add.l 80(sp),a3				
						
	move.l 128(sp),d0			
	sub.l 120(sp),d0			
						
	lsl.l #3,d0				
	move.l 132(sp),a5			
	add.l d0,a5				
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 136(sp),a0			
	move.l 80(sp),a1			
	move.l d0,(a0,a1.l)			
	move.l d1,4(a0,a1.l)			
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	move.l 112(sp),d0			
	lsl.l #3,d0				
						
	add.l 144(sp),d0			
	move.l d0,76(sp)			
	move.l d0,-(sp)				
	move.l 92(sp),-(sp)			
	move.l 140(sp),-(sp)			
	move.l 104(sp),-(sp)			
	jbsr _dctsub				
	lea (16,sp),sp				
						
	moveq #4,d0				
	cmp.l 92(sp),d0				
	jbge _?L340				
_?L348:						
						
	move.l 132(sp),-(sp)			
	move.l 144(sp),a2			
	pea 8(a2)				
	move.l 100(sp),-(sp)			
	jbsr _bitrv2				
	lea (12,sp),sp				
						
	move.l 144(sp),-(sp)			
	move.l 136(sp),-(sp)			
	move.l 100(sp),-(sp)			
	jbsr _cftfsub				
	lea (12,sp),sp				
						
	move.l 76(sp),-(sp)			
	move.l 92(sp),-(sp)			
	move.l 140(sp),-(sp)			
	move.l 104(sp),-(sp)			
	jbsr _rftfsub				
	lea (16,sp),sp				
						
	move.l 132(sp),a0			
	move.l 12(a0),-(sp)			
	move.l 8(a0),-(sp)			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 132(sp),a2			
	move.l 96(sp),d2			
	move.l d0,-8(a2,d2.l)			
	move.l d1,-4(a2,d2.l)			
						
	move.l 4(a2),-(sp)			
	move.l (a2),-(sp)			
	move.l 12(a2),-(sp)			
	move.l 8(a2),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 132(sp),a2			
	move.l d0,8(a2)				
	move.l d1,12(a2)			
	lea -16(a2,d3.l),a3			
	move.l 92(sp),d0			
	lsl.l #4,d0				
	lea -40(a2,d0.l),a2			
	move.l a2,d5				
	move.l 92(sp),d4			
	subq.l #1,d4				
	lsl.l #3,d4				
	move.l 132(sp),a5			
	add.l d4,a5				
	move.l 132(sp),a1			
	lea -32(a1,d3.l),a0			
	move.l 92(sp),d0			
	subq.l #4,d0				
	lsr.l #1,d0				
	lsl.l #4,d0				
	move.l a0,d3				
	sub.l d0,d3				
_?L323:						
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d5,a2				
	move.l d0,16(a2)			
	move.l d1,20(a2)			
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d5,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	lea (-16,a3),a3				
	moveq #-32,d0				
	add.l d0,d5				
	lea (-16,a5),a5				
	cmp.l d3,a3				
	jbeq _?L324				
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	move.l d5,a2				
	move.l d0,16(a2)			
	move.l d1,20(a2)			
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d5,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	lea (-16,a3),a3				
	moveq #-32,d0				
	add.l d0,d5				
	lea (-16,a5),a5				
	cmp.l d3,a3				
	jbne _?L323				
	jbra _?L324				
_?L349:						
						
	move.l 144(sp),-(sp)			
	move.l 136(sp),-(sp)			
	pea 4.w					
	jbsr _cftfsub				
	lea (12,sp),sp				
						
	move.l 132(sp),a0			
	move.l 12(a0),-(sp)			
	move.l 8(a0),-(sp)			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 132(sp),a2			
	move.l 96(sp),d2			
	move.l d0,-8(a2,d2.l)			
	move.l d1,-4(a2,d2.l)			
						
	move.l 4(a2),-(sp)			
	move.l (a2),-(sp)			
	move.l 12(a2),-(sp)			
	move.l 8(a2),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
						
	move.l 132(sp),a2			
	move.l d0,8(a2)				
	move.l d1,12(a2)			
	lea -16(a2,d3.l),a3			
	move.l 92(sp),d0			
	lsl.l #4,d0				
	lea -40(a2,d0.l),a2			
	move.l a2,d5				
	move.l 92(sp),d4			
	subq.l #1,d4				
	lsl.l #3,d4				
	move.l 132(sp),a5			
	add.l d4,a5				
	move.l 132(sp),a1			
	lea -32(a1,d3.l),a0			
	move.l 92(sp),d0			
	subq.l #4,d0				
	lsr.l #1,d0				
	lsl.l #4,d0				
	move.l a0,d3				
	sub.l d0,d3				
	jbra _?L323				
_?L341:						
						
	moveq #16,d6				
						
	move.l 136(sp),a2			
	move.l (a2),a0				
	move.l 4(a2),a1				
	move.l 132(sp),a2			
	move.l a0,(a2,d6.l)			
	move.l a1,4(a2,d6.l)			
						
	move.l 136(sp),a0			
	move.l 12(a0),-(sp)			
	move.l 8(a0),-(sp)			
	move.l 20(a0),-(sp)			
	move.l 16(a0),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 116(sp),a2			
	move.l d0,(a2)				
	move.l d1,4(a2)				
						
	move.l 136(sp),a0			
	move.l 12(a0),-(sp)			
	move.l 8(a0),-(sp)			
	move.l 20(a0),-(sp)			
	move.l 16(a0),-(sp)			
	jbsr (a4)				
	lea (16,sp),sp				
	jbra _?L355				
						
	.align	2				
	.globl	_aubio_ooura_dfst		
						
_aubio_ooura_dfst:				
	lea (-100,sp),sp			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
						
	move.l 152(sp),a0			
	move.l (a0),d3				
						
	lsl.l #3,d3				
						
	cmp.l 140(sp),d3			
	jbge _?L357				
						
	move.l 140(sp),d3			
	asr.l #3,d3				
						
	move.l d3,(a0)				
						
	moveq #1,d0				
	move.l d0,4(a0)				
						
	moveq #2,d1				
	cmp.l d3,d1				
	jbge _?L403				
	move.l 156(sp),-(sp)			
	move.l 156(sp),-(sp)			
	move.l d3,-(sp)				
	jbsr (_makewt?part?0)			
	lea (12,sp),sp				
						
	move.l 152(sp),a0			
	move.l 4(a0),80(sp)			
						
	move.l 80(sp),d0			
	add.l d0,d0				
						
	cmp.l 140(sp),d0			
	jbge _?L361				
						
	move.l 140(sp),d0			
	asr.l #1,d0				
	move.l d0,80(sp)			
						
	move.l d0,4(a0)				
	lsl.l #3,d3				
_?L362:						
						
	add.l 156(sp),d3			
	move.l d3,88(sp)			
	move.l d3,-(sp)				
	move.l 84(sp),-(sp)			
	jbsr (_makect?part?0)			
	addq.l #8,sp				
	move.l 80(sp),96(sp)			
						
	move.l 140(sp),d3			
	asr.l #2,d3				
						
	moveq #7,d0				
	cmp.l 140(sp),d0			
	jbge _?L404				
_?L363:						
	move.l 144(sp),a4			
	addq.l #8,a4				
	move.l 96(sp),d2			
	subq.l #1,d2				
	move.l d2,d1				
	lsl.l #3,d1				
	move.l 144(sp),a3			
	add.l d1,a3				
	move.l 140(sp),d0			
	sub.l d2,d0				
	lsl.l #3,d0				
	add.l 144(sp),d0			
	move.l d0,76(sp)			
	move.l 148(sp),a0			
	addq.l #8,a0				
	move.l 148(sp),a2			
	add.l d1,a2				
	move.l d3,d1				
	lsl.l #3,d1				
	move.l d1,112(sp)			
	add.l 144(sp),d1			
	move.l d1,100(sp)			
	move.l 96(sp),d0			
	neg.l d0				
	lsl.l #3,d0				
	move.l d0,108(sp)			
	move.l 140(sp),d0			
	lsl.l #3,d0				
	move.l d0,104(sp)			
	lea ___subdf3,a6			
	move.l #___adddf3,84(sp)		
	move.l d3,116(sp)			
	move.l a2,d3				
	move.l d6,120(sp)			
	move.l d7,124(sp)			
	move.l a0,d6				
	lea ___adddf3,a5			
_?L368:						
						
	move.l (a4),44(sp)			
	move.l 4(a4),48(sp)			
						
	move.l 108(sp),a0			
	add.l a3,a0				
	move.l 104(sp),a1			
	move.l (a0,a1.l),52(sp)			
	move.l 4(a0,a1.l),56(sp)		
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,a0				
	move.l d1,a1				
	move.l a0,68(sp)			
	move.l a1,72(sp)			
						
	move.l (a3),60(sp)			
	move.l 4(a3),64(sp)			
						
	move.l 76(sp),a2			
	addq.l #8,76(sp)			
	move.l (a2)+,a0				
	move.l (a2)+,a1				
						
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	move.l a0,56(sp)			
	move.l a1,52(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,d4				
	move.l d1,d5				
						
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	move.l 56(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
						
	move.l d0,(a4)+				
	move.l d1,(a4)+				
						
	move.l 40(sp),a0			
	move.l 36(sp),a1			
	move.l a1,-(sp)				
	move.l a0,-(sp)				
	move.l 72(sp),-(sp)			
	move.l 72(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr (a5)				
	lea (16,sp),sp				
						
	move.l d6,a0				
	move.l d0,(a0)+				
	move.l d1,(a0)+				
	move.l a0,d6				
						
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	move.l 80(sp),-(sp)			
	move.l 80(sp),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d3,a1				
	move.l d0,(a1)				
	move.l d1,4(a1)				
						
	subq.l #8,a3				
	subq.l #8,d3				
	cmp.l 100(sp),a4			
	jbne _?L368				
	move.l 116(sp),d3			
	move.l 120(sp),d6			
	move.l 124(sp),d7			
_?L369:						
						
	move.l 144(sp),a4			
	add.l 112(sp),a4			
						
	move.l 140(sp),d0			
	sub.l d3,d0				
						
	lsl.l #3,d0				
	move.l 144(sp),a3			
	add.l d0,a3				
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 148(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	move.l 100(sp),a1			
	jbsr (a1)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	move.l 96(sp),d0			
	lsl.l #3,d0				
	move.l d0,a4				
						
	move.l 144(sp),a2			
	move.l (a2,d0.l),a0			
	move.l 4(a2,d0.l),a1			
	move.l a0,(a2)				
	move.l a1,4(a2)				
						
	move.l 88(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l a2,-(sp)				
	move.l 108(sp),-(sp)			
	jbsr _dstsub				
	lea (16,sp),sp				
						
	moveq #4,d0				
	cmp.l 96(sp),d0				
	jblt _?L405				
_?L395:						
						
	moveq #4,d0				
	cmp.l 96(sp),d0				
	jbeq _?L406				
						
	move.l 140(sp),d0			
	add.l #536870911,d0			
						
	move.l d0,d4				
	lsl.l #3,d4				
						
	move.l 144(sp),a0			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	move.l 12(a0),-(sp)			
	move.l 8(a0),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 144(sp),a2			
	move.l d0,(a2,d4.l)			
	move.l d1,4(a2,d4.l)			
						
	move.l 4(a2),-(sp)			
	move.l (a2),-(sp)			
	move.l 12(a2),-(sp)			
	move.l 8(a2),-(sp)			
	move.l 100(sp),a2			
	jbsr (a2)				
	lea (16,sp),sp				
						
	move.l 144(sp),a0			
	move.l d0,8(a0)				
	move.l d1,12(a0)			
_?L375:						
						
	moveq #2,d4				
						
	moveq #1,d0				
	cmp.l d3,d0				
	jbge _?L396				
						
	move.l 152(sp),a0			
	addq.l #8,a0				
	move.l a0,92(sp)			
	move.w #32,a1				
	add.l 148(sp),a1			
	move.l a1,76(sp)			
	move.l d3,52(sp)			
						
	move.l 88(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l 156(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr _dstsub				
	lea (16,sp),sp				
						
	moveq #4,d0				
	cmp.l 52(sp),d0				
	jblt _?L407				
_?L376:						
						
	moveq #4,d1				
	cmp.l 52(sp),d1				
	jbeq _?L408				
						
	move.l 140(sp),d3			
	sub.l d4,d3				
						
	lsl.l #3,d3				
						
	move.l 148(sp),a0			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	move.l 12(a0),-(sp)			
	move.l 8(a0),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 144(sp),a2			
	move.l d0,(a2,d3.l)			
	move.l d1,4(a2,d3.l)			
						
	move.l 148(sp),a0			
	move.l 12(a0),-(sp)			
	move.l 8(a0),-(sp)			
	move.l 4(a0),-(sp)			
	move.l (a0),-(sp)			
	move.l 100(sp),a2			
	jbsr (a2)				
	lea (16,sp),sp				
	move.l d0,44(sp)			
	move.l d1,48(sp)			
						
	move.l d4,d0				
	lsl.l #3,d0				
	move.l 144(sp),a0			
	move.l 44(sp),(a0,d0.l)			
	move.l 48(sp),4(a0,d0.l)		
						
	moveq #3,d0				
	cmp.l 52(sp),d0				
	jbne _?L379				
						
	move.l d4,d1				
	add.l d4,d1				
	move.l d1,60(sp)			
	move.l d1,d0				
	add.l d1,d0				
	move.w #16,a4				
	add.l 148(sp),a4			
	move.l d0,d5				
	lsl.l #3,d5				
	sub.l d4,d0				
	lsl.l #3,d0				
	move.l 144(sp),a3			
	add.l d0,a3				
	move.w #24,a5				
	add.l 148(sp),a5			
	move.l 52(sp),d3			
	subq.l #3,d3				
	lsr.l #1,d3				
	lsl.l #4,d3				
	add.l 76(sp),d3				
	lsl.l #4,d4				
_?L380:						
						
	move.l (a4),d6				
	add.l #-2147483648,d6			
	move.l 4(a4),d7				
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,(a3)				
	move.l d1,4(a3)				
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,(a3,d4.l)			
	move.l d1,4(a3,d4.l)			
						
	lea (16,a4),a4				
	add.l d5,a3				
	lea (16,a5),a5				
	cmp.l d3,a4				
	jbne _?L380				
						
	move.l 60(sp),d4			
						
	move.l 52(sp),d0			
	asr.l #1,d0				
	move.l d0,68(sp)			
						
	subq.l #1,d0				
	jbeq _?L383				
	move.l 52(sp),a0			
	lea -1(a0,a0.l),a1			
	move.l a1,d0				
	lsl.l #3,d0				
	move.l 148(sp),a4			
	add.l d0,a4				
	move.l a0,d0				
	addq.l #1,d0				
	lsl.l #3,d0				
	move.l 148(sp),a5			
	add.l d0,a5				
	move.l 68(sp),d3			
	add.l 52(sp),d3				
	lsl.l #3,d3				
	move.l 148(sp),d5			
	add.l d3,d5				
	move.l 52(sp),d0			
	neg.l d0				
	lsl.l #3,d0				
	move.l d0,a3				
	move.l d6,52(sp)			
	move.l d7,56(sp)			
	move.l d3,d6				
	move.l 84(sp),d3			
_?L384:						
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	move.l d3,a0				
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,(a5,a3.l)			
	move.l d1,4(a5,a3.l)			
						
	subq.l #8,sp				
	move.l (a5)+,(sp)			
	move.l (a5)+,4(sp)			
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,(a4,a3.l)			
	move.l d1,4(a4,a3.l)			
						
	subq.l #8,a4				
	cmp.l d5,a5				
	jbne _?L384				
						
	move.l 148(sp),a0			
	move.l (a0,d6.l),d0			
	move.l 4(a0,d6.l),d1			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 68(sp),52(sp)			
						
	move.l 88(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l 156(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr _dstsub				
	lea (16,sp),sp				
						
	moveq #4,d0				
	cmp.l 52(sp),d0				
	jbge _?L376				
_?L407:						
						
	move.l 148(sp),-(sp)			
	move.l 96(sp),-(sp)			
	move.l 60(sp),-(sp)			
	jbsr _bitrv2				
	lea (12,sp),sp				
						
	move.l 156(sp),-(sp)			
	move.l 152(sp),-(sp)			
	move.l 60(sp),-(sp)			
	jbsr _cftfsub				
	lea (12,sp),sp				
						
	move.l 88(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l 156(sp),-(sp)			
	move.l 64(sp),-(sp)			
	jbsr _rftfsub				
	lea (16,sp),sp				
						
	move.l 140(sp),d3			
	sub.l d4,d3				
						
	lsl.l #3,d3				
						
	move.l 148(sp),a1			
	move.l 4(a1),-(sp)			
	move.l (a1),-(sp)			
	move.l 12(a1),-(sp)			
	move.l 8(a1),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 144(sp),a0			
	move.l d0,(a0,d3.l)			
	move.l d1,4(a0,d3.l)			
						
	move.l 148(sp),a1			
	move.l 12(a1),-(sp)			
	move.l 8(a1),-(sp)			
	move.l 4(a1),-(sp)			
	move.l (a1),-(sp)			
	move.l 100(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,44(sp)			
	move.l d1,48(sp)			
						
	move.l d4,d0				
	lsl.l #3,d0				
	move.l 144(sp),a1			
	move.l 44(sp),(a1,d0.l)			
	move.l 48(sp),4(a1,d0.l)		
_?L410:						
						
	move.l d4,d1				
	add.l d4,d1				
	move.l d1,60(sp)			
	move.l d1,d0				
	add.l d1,d0				
	move.w #16,a4				
	add.l 148(sp),a4			
	move.l d0,d5				
	lsl.l #3,d5				
	sub.l d4,d0				
	lsl.l #3,d0				
	move.l 144(sp),a3			
	add.l d0,a3				
	move.w #24,a5				
	add.l 148(sp),a5			
	move.l 52(sp),d3			
	subq.l #3,d3				
	lsr.l #1,d3				
	lsl.l #4,d3				
	add.l 76(sp),d3				
	lsl.l #4,d4				
	jbra _?L380				
_?L357:						
						
	move.l 152(sp),a0			
	move.l 4(a0),80(sp)			
						
	move.l 80(sp),d0			
	add.l d0,d0				
						
	cmp.l 140(sp),d0			
	jbge _?L364				
						
	move.l 140(sp),d0			
	asr.l #1,d0				
	move.l d0,80(sp)			
						
	move.l d0,4(a0)				
						
	moveq #1,d1				
	cmp.l d0,d1				
	jblt _?L362				
_?L364:						
						
	moveq #2,d0				
	cmp.l 140(sp),d0			
	jblt _?L409				
_?L360:						
						
	move.l 144(sp),a0			
	clr.l (a0)				
	clr.l 4(a0)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (100,sp),sp				
	rts					
_?L403:						
						
	cmp.l 140(sp),d1			
	jbge _?L360				
						
	move.l 140(sp),d1			
	asr.l #1,d1				
	move.l d1,80(sp)			
						
	move.l 152(sp),a0			
	move.l d1,4(a0)				
						
	moveq #1,d0				
	lsl.l #3,d3				
	cmp.l d1,d0				
	jbne _?L362				
						
	add.l 156(sp),d3			
	move.l d3,88(sp)			
						
	moveq #1,d0				
	move.l d0,96(sp)			
						
	moveq #0,d3				
	clr.l 112(sp)				
	lea ___subdf3,a6			
	move.l #___adddf3,84(sp)		
						
	move.l 144(sp),a4			
	add.l 112(sp),a4			
						
	move.l 140(sp),d0			
	sub.l d3,d0				
						
	lsl.l #3,d0				
	move.l 144(sp),a3			
	add.l d0,a3				
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 148(sp),a0			
	move.l d0,(a0)				
	move.l d1,4(a0)				
						
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	move.l 4(a4),-(sp)			
	move.l (a4),-(sp)			
	move.l 100(sp),a1			
	jbsr (a1)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	move.l 96(sp),d0			
	lsl.l #3,d0				
	move.l d0,a4				
						
	move.l 144(sp),a2			
	move.l (a2,d0.l),a0			
	move.l 4(a2,d0.l),a1			
	move.l a0,(a2)				
	move.l a1,4(a2)				
						
	move.l 88(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l a2,-(sp)				
	move.l 108(sp),-(sp)			
	jbsr _dstsub				
	lea (16,sp),sp				
						
	moveq #4,d0				
	cmp.l 96(sp),d0				
	jbge _?L395				
_?L405:						
						
	move.l 144(sp),-(sp)			
	move.l 156(sp),a2			
	pea 8(a2)				
	move.l 104(sp),-(sp)			
	jbsr _bitrv2				
	lea (12,sp),sp				
						
	move.l 156(sp),-(sp)			
	move.l 148(sp),-(sp)			
	move.l 104(sp),-(sp)			
	jbsr _cftfsub				
	lea (12,sp),sp				
						
	move.l 88(sp),-(sp)			
	move.l 84(sp),-(sp)			
	move.l 152(sp),-(sp)			
	move.l 108(sp),-(sp)			
	jbsr _rftfsub				
	lea (16,sp),sp				
						
	move.l 140(sp),d4			
	add.l #536870911,d4			
						
	lsl.l #3,d4				
						
	move.l 144(sp),a2			
	move.l 4(a2),-(sp)			
	move.l (a2),-(sp)			
	move.l 12(a2),-(sp)			
	move.l 8(a2),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 144(sp),a1			
	move.l d0,(a1,d4.l)			
	move.l d1,4(a1,d4.l)			
						
	move.l 4(a1),-(sp)			
	move.l (a1),-(sp)			
	move.l 12(a1),-(sp)			
	move.l 8(a1),-(sp)			
	move.l 100(sp),a1			
	jbsr (a1)				
	lea (16,sp),sp				
						
	move.l 144(sp),a2			
	move.l d0,8(a2)				
	move.l d1,12(a2)			
	lea -16(a2,a4.l),a3			
	move.l 96(sp),d0			
	lsl.l #4,d0				
	lea -40(a2,d0.l),a2			
	move.l 96(sp),d0			
	subq.l #1,d0				
	lsl.l #3,d0				
	move.l 144(sp),a5			
	add.l d0,a5				
	move.l 144(sp),a1			
	lea -32(a1,a4.l),a0			
	move.l 96(sp),d0			
	subq.l #4,d0				
	lsr.l #1,d0				
	lsl.l #4,d0				
	move.l a0,a4				
	sub.l d0,a4				
	move.l d6,52(sp)			
	move.l d7,56(sp)			
	move.l d3,d6				
	move.l a4,d3				
	move.l a2,a4				
_?L374:						
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l 4(a3),-(sp)			
	move.l (a3),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,16(a4)			
	move.l d1,20(a4)			
						
	move.l (a3),d4				
	add.l #-2147483648,d4			
	move.l 4(a3),d5				
						
	move.l 4(a5),-(sp)			
	move.l (a5),-(sp)			
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (16,sp),sp				
	move.l d0,(a4)				
	move.l d1,4(a4)				
						
	lea (-16,a3),a3				
	lea (-32,a4),a4				
	lea (-16,a5),a5				
	cmp.l d3,a3				
	jbne _?L374				
	move.l d6,d3				
	jbra _?L375				
_?L379:						
						
	move.l 148(sp),a0			
	move.l 24(a0),44(sp)			
	move.l 28(a0),48(sp)			
						
	move.l 44(sp),(a0)			
	move.l 48(sp),4(a0)			
						
	move.l d4,d5				
	lsl.l #4,d5				
						
	move.l 144(sp),a2			
	move.l 44(sp),(a2,d5.l)			
	move.l 48(sp),4(a2,d5.l)		
_?L411:						
						
	move.l 144(sp),a0			
	clr.l (a0)				
	clr.l 4(a0)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (100,sp),sp				
	rts					
_?L408:						
						
	move.l 156(sp),-(sp)			
	move.l 152(sp),-(sp)			
	pea 4.w					
	jbsr _cftfsub				
	lea (12,sp),sp				
						
	move.l 140(sp),d3			
	sub.l d4,d3				
						
	lsl.l #3,d3				
						
	move.l 148(sp),a1			
	move.l 4(a1),-(sp)			
	move.l (a1),-(sp)			
	move.l 12(a1),-(sp)			
	move.l 8(a1),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 144(sp),a0			
	move.l d0,(a0,d3.l)			
	move.l d1,4(a0,d3.l)			
						
	move.l 148(sp),a1			
	move.l 12(a1),-(sp)			
	move.l 8(a1),-(sp)			
	move.l 4(a1),-(sp)			
	move.l (a1),-(sp)			
	move.l 100(sp),a0			
	jbsr (a0)				
	lea (16,sp),sp				
	move.l d0,44(sp)			
	move.l d1,48(sp)			
						
	move.l d4,d0				
	lsl.l #3,d0				
	move.l 144(sp),a1			
	move.l 44(sp),(a1,d0.l)			
	move.l 48(sp),4(a1,d0.l)		
	jbra _?L410				
_?L361:						
						
	move.l 140(sp),d1			
	asr.l #1,d1				
	move.l d1,96(sp)			
						
	lsl.l #3,d3				
						
	add.l 156(sp),d3			
	move.l d3,88(sp)			
						
	move.l 140(sp),d3			
	asr.l #2,d3				
	move.l 144(sp),a4			
	addq.l #8,a4				
	move.l 96(sp),d2			
	subq.l #1,d2				
	move.l d2,d1				
	lsl.l #3,d1				
	move.l 144(sp),a3			
	add.l d1,a3				
	move.l 140(sp),d0			
	sub.l d2,d0				
	lsl.l #3,d0				
	add.l 144(sp),d0			
	move.l d0,76(sp)			
	move.l 148(sp),a0			
	addq.l #8,a0				
	move.l 148(sp),a2			
	add.l d1,a2				
	move.l d3,d1				
	lsl.l #3,d1				
	move.l d1,112(sp)			
	add.l 144(sp),d1			
	move.l d1,100(sp)			
	move.l 96(sp),d0			
	neg.l d0				
	lsl.l #3,d0				
	move.l d0,108(sp)			
	move.l 140(sp),d0			
	lsl.l #3,d0				
	move.l d0,104(sp)			
	lea ___subdf3,a6			
	move.l #___adddf3,84(sp)		
	move.l d3,116(sp)			
	move.l a2,d3				
	move.l d6,120(sp)			
	move.l d7,124(sp)			
	move.l a0,d6				
	lea ___adddf3,a5			
	jbra _?L368				
_?L383:						
						
	move.l 148(sp),a1			
	move.l 32(a1),44(sp)			
	move.l 36(a1),48(sp)			
						
	move.l 44(sp),(a1)			
	move.l 48(sp),4(a1)			
						
	move.l 60(sp),d5			
	lsl.l #3,d5				
						
	move.l 144(sp),a2			
	move.l 44(sp),(a2,d5.l)			
	move.l 48(sp),4(a2,d5.l)		
	jbra _?L411				
_?L406:						
						
	move.l 156(sp),-(sp)			
	move.l 148(sp),-(sp)			
	pea 4.w					
	jbsr _cftfsub				
	lea (12,sp),sp				
						
	move.l 140(sp),d4			
	add.l #536870911,d4			
						
	lsl.l #3,d4				
						
	move.l 144(sp),a2			
	move.l 4(a2),-(sp)			
	move.l (a2),-(sp)			
	move.l 12(a2),-(sp)			
	move.l 8(a2),-(sp)			
	jbsr (a6)				
	lea (16,sp),sp				
						
	move.l 144(sp),a1			
	move.l d0,(a1,d4.l)			
	move.l d1,4(a1,d4.l)			
						
	move.l 4(a1),-(sp)			
	move.l (a1),-(sp)			
	move.l 12(a1),-(sp)			
	move.l 8(a1),-(sp)			
	move.l 100(sp),a1			
	jbsr (a1)				
	lea (16,sp),sp				
						
	move.l 144(sp),a2			
	move.l d0,8(a2)				
	move.l d1,12(a2)			
	lea -16(a2,a4.l),a3			
	move.l 96(sp),d0			
	lsl.l #4,d0				
	lea -40(a2,d0.l),a2			
	move.l 96(sp),d0			
	subq.l #1,d0				
	lsl.l #3,d0				
	move.l 144(sp),a5			
	add.l d0,a5				
	move.l 144(sp),a1			
	lea -32(a1,a4.l),a0			
	move.l 96(sp),d0			
	subq.l #4,d0				
	lsr.l #1,d0				
	lsl.l #4,d0				
	move.l a0,a4				
	sub.l d0,a4				
	move.l d6,52(sp)			
	move.l d7,56(sp)			
	move.l d3,d6				
	move.l a4,d3				
	move.l a2,a4				
	jbra _?L374				
_?L396:						
						
	move.l 148(sp),a1			
	move.l (a1),44(sp)			
	move.l 4(a1),48(sp)			
	moveq #16,d5				
						
	move.l 144(sp),a2			
	move.l 44(sp),(a2,d5.l)			
	move.l 48(sp),4(a2,d5.l)		
	jbra _?L411				
_?L409:						
						
	move.l 140(sp),d1			
	asr.l #1,d1				
	move.l d1,96(sp)			
						
	add.l 156(sp),d3			
	move.l d3,88(sp)			
						
	move.l 140(sp),d3			
	asr.l #2,d3				
						
	moveq #7,d0				
	cmp.l 140(sp),d0			
	jblt _?L363				
_?L404:						
	move.l d3,d1				
	lsl.l #3,d1				
	move.l d1,112(sp)			
	lea ___subdf3,a6			
	move.l #___adddf3,84(sp)		
	jbra _?L369				
						
						
