* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"source.c"			
						
						
						
						
						
	.text					
	.align	2				
	.globl	_new_aubio_source		
						
_new_aubio_source:				
	movem.l d3/d4/a3,-(sp)			
						
	pea 36.w				
	jbsr _MALLOC				
	addq.l #4,sp				
	move.l d0,a3				
						
	move.l 24(sp),-(sp)			
	move.l 24(sp),-(sp)			
	move.l 24(sp),-(sp)			
	jbsr _new_aubio_source_wavread		
	lea (12,sp),sp				
						
	move.l d0,(a3)				
						
	jbeq _?L8				
	move.l #_aubio_source_wavread_do,d4	
	move.l #_aubio_source_wavread_do_multi,d3
	lea _aubio_source_wavread_get_channels,a2
	move.l #_aubio_source_wavread_get_samplerate,d2
	lea _aubio_source_wavread_get_duration,a1
	lea _aubio_source_wavread_seek,a0	
	move.l #_aubio_source_wavread_close,d1	
	move.l #_del_aubio_source_wavread,d0	
						
	move.l d4,4(a3)				
						
	move.l d3,8(a3)				
						
	move.l a2,16(a3)			
						
	move.l d2,12(a3)			
						
	move.l a1,20(a3)			
						
	move.l a0,24(a3)			
						
	move.l d1,28(a3)			
						
	move.l d0,32(a3)			
_?L1:						
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/a3			
	rts					
_?L8:						
						
	move.l 24(sp),-(sp)			
	move.l 24(sp),-(sp)			
	move.l 24(sp),-(sp)			
	jbsr _new_aubio_source_s44read		
	lea (12,sp),sp				
						
	move.l d0,(a3)				
						
	jbeq _?L3				
	move.l #_aubio_source_s44read_do,d4	
	move.l #_aubio_source_s44read_do_multi,d3
	lea _aubio_source_s44read_get_channels,a2
	move.l #_aubio_source_s44read_get_samplerate,d2
	lea _aubio_source_s44read_get_duration,a1
	lea _aubio_source_s44read_seek,a0	
	move.l #_aubio_source_s44read_close,d1	
	move.l #_del_aubio_source_s44read,d0	
						
	move.l d4,4(a3)				
						
	move.l d3,8(a3)				
						
	move.l a2,16(a3)			
						
	move.l d2,12(a3)			
						
	move.l a1,20(a3)			
						
	move.l a0,24(a3)			
						
	move.l d1,28(a3)			
						
	move.l d0,32(a3)			
	jbra _?L1				
_?L3:						
						
	move.l a3,-(sp)				
	jbsr _MFREE				
	addq.l #4,sp				
						
	sub.l a3,a3				
						
	move.l a3,d0				
	movem.l (sp)+,d3/d4/a3			
	rts					
						
	.align	2				
	.globl	_aubio_source_do		
						
_aubio_source_do:				
	move.l 4(sp),a0				
						
	move.l (a0),4(sp)			
	move.l 4(a0),a1				
						
						
	jmp (a1)				
						
	.align	2				
	.globl	_aubio_source_do_multi		
						
_aubio_source_do_multi:				
	move.l 4(sp),a0				
						
	move.l (a0),4(sp)			
	move.l 8(a0),a1				
						
						
	jmp (a1)				
						
	.align	2				
	.globl	_aubio_source_close		
						
_aubio_source_close:				
	move.l 4(sp),a0				
						
	move.l (a0),4(sp)			
	move.l 28(a0),a1			
						
						
	jmp (a1)				
						
	.align	2				
	.globl	_del_aubio_source		
						
_del_aubio_source:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	cmp.w #0,a3				
	jbeq _?L16				
						
	move.l 32(a3),a0			
						
	cmp.w #0,a0				
	jbeq _?L16				
						
	move.l (a3),d0				
						
	jbeq _?L16				
						
	move.l d0,-(sp)				
	jbsr (a0)				
	addq.l #4,sp				
_?L16:						
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _MFREE				
						
	.align	2				
	.globl	_aubio_source_get_samplerate	
						
_aubio_source_get_samplerate:			
	move.l 4(sp),a0				
						
	move.l (a0),4(sp)			
	move.l 12(a0),a1			
						
						
	jmp (a1)				
						
	.align	2				
	.globl	_aubio_source_get_channels	
						
_aubio_source_get_channels:			
	move.l 4(sp),a0				
						
	move.l (a0),4(sp)			
	move.l 16(a0),a1			
						
						
	jmp (a1)				
						
	.align	2				
	.globl	_aubio_source_get_duration	
						
_aubio_source_get_duration:			
	move.l 4(sp),a0				
						
	move.l (a0),4(sp)			
	move.l 20(a0),a1			
						
						
	jmp (a1)				
						
	.align	2				
	.globl	_aubio_source_seek		
						
_aubio_source_seek:				
	move.l 4(sp),a0				
						
	move.l (a0),4(sp)			
	move.l 24(a0),a1			
						
						
	jmp (a1)				
						
						
