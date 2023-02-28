* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"strutils.c"			
						
						
						
						
						
	.text					
	.data					
_?LC0:						

	.dc.b $00				
	.text					
	.align	2				
	.globl	_aubio_str_get_extension	
						
_aubio_str_get_extension:			
	move.l d3,-(sp)				
	move.l 8(sp),d3				
						
	jbeq _?L3				
						
	pea 46.w				
	move.l d3,-(sp)				
	jbsr _strrchr				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L5				
						
	cmp.l d3,d0				
	jbeq _?L5				
						
	addq.l #1,d0				
						
	move.l (sp)+,d3				
	rts					
_?L5:						
						
	move.l #_?LC0,d0			
						
	move.l (sp)+,d3				
	rts					
_?L3:						
						
	moveq #0,d0				
						
	move.l (sp)+,d3				
	rts					
						
	.align	2				
	.globl	_aubio_str_extension_matches	
						
_aubio_str_extension_matches:			
	move.l 4(sp),d0				
						
	jbeq _?L11				
						
	tst.l 8(sp)				
	jbeq _?L11				
						
	pea 1024.w				
	move.l 12(sp),-(sp)			
	move.l d0,-(sp)				
	jbsr _strncmp				
	lea (12,sp),sp				
						
	tst.l d0				
	seq d0					
	ext.w d0				
	ext.l d0				
	neg.l d0				
						
	rts					
_?L11:						
	moveq #0,d0				
						
	rts					
						
	.align	2				
	.globl	_aubio_str_path_has_extension	
						
_aubio_str_path_has_extension:			
	move.l d3,-(sp)				
	move.l 8(sp),d3				
						
	jbeq _?L20				
						
	pea 46.w				
	move.l d3,-(sp)				
	jbsr _strrchr				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L19				
						
	cmp.l d3,d0				
	jbeq _?L19				
						
	addq.l #1,d0				
						
	tst.l 12(sp)				
	jbeq _?L20				
_?L23:						
						
	pea 1024.w				
	move.l 16(sp),-(sp)			
	move.l d0,-(sp)				
	jbsr _strncmp				
	lea (12,sp),sp				
						
	tst.l d0				
	seq d0					
	ext.w d0				
	ext.l d0				
	neg.l d0				
						
	move.l (sp)+,d3				
	rts					
_?L20:						
	moveq #0,d0				
	move.l (sp)+,d3				
	rts					
_?L19:						
						
	move.l #_?LC0,d0			
						
	tst.l 12(sp)				
	jbne _?L23				
	jbra _?L20				
						
						
