* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"lvec.c"			
						
						
						
						
						
	.text					
	.align	2				
	.globl	_new_lvec			
						
_new_lvec:					
	movem.l d3/a3/a4,-(sp)			
	move.l 16(sp),d3			
						
	jble _?L3				
						
	pea 8.w					
	lea _MALLOC,a4				
	jbsr (a4)				
	move.l d0,a3				
						
	move.l d3,(a3)				
						
	move.l d3,d1				
	add.l d3,d1				
	add.l d3,d1				
	add.l d1,d1				
	add.l d1,d1				
	move.l d1,(sp)				
	jbsr (a4)				
	addq.l #4,sp				
						
	move.l d0,4(a3)				
						
	move.l a3,d0				
	movem.l (sp)+,d3/a3/a4			
	rts					
_?L3:						
						
	sub.l a3,a3				
						
	move.l a3,d0				
	movem.l (sp)+,d3/a3/a4			
	rts					
						
	.align	2				
	.globl	_del_lvec			
						
_del_lvec:					
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 4(a3),-(sp)			
	jbsr _MFREE				
	addq.l #4,sp				
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
						
	.align	2				
	.globl	_lvec_set_sample		
						
_lvec_set_sample:				
	move.l d3,-(sp)				
	move.l 24(sp),d1			
						
	move.l 8(sp),a0				
	move.l 4(a0),a0				
	move.l d1,d0				
	add.l d1,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	move.l 12(sp),d1			
	move.l 16(sp),d2			
	move.l 20(sp),d3			
	move.l d1,(a0,d0.l)			
	move.l d2,4(a0,d0.l)			
	move.l d3,8(a0,d0.l)			
						
	move.l (sp)+,d3				
	rts					
						
	.align	2				
	.globl	_lvec_get_sample		
						
_lvec_get_sample:				
	move.l 8(sp),d1				
						
	move.l 4(sp),a0				
	move.l 4(a0),a0				
	move.l d1,d0				
	add.l d1,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
						
	move.l 8(a0,d0.l),d2			
	move.l 4(a0,d0.l),d1			
	move.l (a0,d0.l),d0			
	rts					
						
	.align	2				
	.globl	_lvec_get_data			
						
_lvec_get_data:					
						
	move.l 4(sp),a0				
	move.l 4(a0),d0				
	rts					
						
	.data					
_?LC0:						
	.dc.b $25,$4c,$66,$20
	.dc.b $00				
_?LC1:						
	.dc.b $0a
	.dc.b $00				
	.text					
	.align	2				
	.globl	_lvec_print			
						
_lvec_print:					
	movem.l d3/a3/a4/a5,-(sp)		
	move.l 20(sp),a4			
	lea _aubio_log,a5			
						
	tst.l (a4)				
	jbeq _?L15				
	sub.l a3,a3				
						
	moveq #0,d3				
	lea _aubio_log,a5			
_?L16:						
						
	move.l 4(a4),a0				
	move.l 8(a0,a3.l),-(sp)			
	move.l 4(a0,a3.l),-(sp)			
	move.l (a0,a3.l),-(sp)			
	pea _?LC0				
	pea 2.w					
	jbsr (a5)				
	lea (20,sp),sp				
						
	addq.l #1,d3				
						
	lea (12,a3),a3				
	cmp.l (a4),d3				
	jbcs _?L16				
_?L15:						
						
	pea _?LC1				
	pea 2.w					
	jbsr (a5)				
	addq.l #8,sp				
						
	movem.l (sp)+,d3/a3/a4/a5		
	rts					
						
	.globl	___extenddfxf2			
	.align	2				
	.globl	_lvec_set_all			
						
_lvec_set_all:					
	movem.l d3/a3/a4,-(sp)			
	move.l 16(sp),a4			
						
	move.l (a4),d3				
						
	jbeq _?L22				
						
	move.l 24(sp),-(sp)			
	move.l 24(sp),-(sp)			
	jbsr ___extenddfxf2			
	addq.l #8,sp				
	move.l d0,a1				
	move.l d1,a2				
	move.l d2,a3				
	move.l 4(a4),a0				
	move.l d3,d0				
	add.l d3,d0				
	add.l d3,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l a0,d0				
_?L24:						
						
	move.l a1,(a0)+				
	move.l a2,(a0)+				
	move.l a3,(a0)+				
						
	cmp.l a0,d0				
	jbne _?L24				
_?L22:						
						
	movem.l (sp)+,d3/a3/a4			
	rts					
						
	.align	2				
	.globl	_lvec_zeros			
						
_lvec_zeros:					
	move.l 4(sp),a0				
						
	move.l (a0),d1				
						
	jbeq _?L29				
						
	move.l d1,d0				
	add.l d1,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l 4(a0),-(sp)			
	jbsr _memset				
	lea (12,sp),sp				
_?L29:						
						
	rts					
						
	.data					
	.align	2				
_?LC2:						
	.dc.l	1073676288			
	.dc.l	-2147483648			
	.dc.l	0				
	.text					
	.align	2				
	.globl	_lvec_ones			
						
_lvec_ones:					
	move.l d3,-(sp)				
	move.l 8(sp),a0				
						
	move.l (a0),d1				
						
	jbeq _?L36				
	move.l 4(a0),a0				
	move.l d1,d0				
	add.l d1,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l a0,d0				
_?L38:						
						
	move.l _?LC2,d1				
	move.l _?LC2+4,d2			
	move.l _?LC2+8,d3			
	move.l d1,(a0)+				
	move.l d2,(a0)+				
	move.l d3,(a0)+				
						
	cmp.l a0,d0				
	jbne _?L38				
_?L36:						
						
	move.l (sp)+,d3				
	rts					
						
						
