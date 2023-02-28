* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"log.c"				
						
						
						
						
						
	.text					
	.align	2				
	.globl	_aubio_default_log		
						
_aubio_default_log:				
	move.l 4(sp),d0				
	move.l 8(sp),a0				
						
	jbeq _?L3				
						
	subq.l #3,d0				
						
	move.l #__iob+26,d1			
						
	moveq #1,d2				
	cmp.l d0,d2				
	jbcc _?L3				
						
	move.l d1,8(sp)				
	move.l a0,4(sp)				
						
						
	jbra _fputs				
_?L3:						
						
	move.l #__iob+52,d1			
						
	move.l d1,8(sp)				
	move.l a0,4(sp)				
						
						
	jbra _fputs				
						
	.align	2				
	.globl	_aubio_log			
						
_aubio_log:					
	link.w a6,#0				
	move.l d3,-(sp)				
	move.l 8(a6),d3				
						
	pea 16(a6)				
	move.l 12(a6),-(sp)			
	pea _aubio_log_buffer			
	jbsr _vsprintf				
	lea (12,sp),sp				
						
	moveq #4,d0				
	cmp.l d3,d0				
	jbcs _?L8				
						
	move.l d3,d0				
	add.l d3,d0				
	add.l d0,d0				
	lea _aubio_log_function,a0		
	move.l (a0,d0.l),a0			
						
	cmp.w #0,a0				
	jbeq _?L9				
						
	lea _aubio_log_user_data,a1		
	move.l (a1,d0.l),-(sp)			
	pea _aubio_log_buffer			
	move.l d3,-(sp)				
	jbsr (a0)				
	lea (12,sp),sp				
_?L8:						
						
	moveq #1,d0				
	move.l -4(a6),d3			
	unlk a6					
	rts					
_?L9:						
						
	tst.l d3				
	jbne _?L16				
_?L11:						
						
	move.l #__iob+52,d0			
						
	move.l d0,-(sp)				
	pea _aubio_log_buffer			
	jbsr _fputs				
	addq.l #8,sp				
_?L17:						
						
	moveq #1,d0				
	move.l -4(a6),d3			
	unlk a6					
	rts					
_?L16:						
						
	subq.l #3,d3				
						
	move.l #__iob+26,d0			
						
	moveq #1,d1				
	cmp.l d3,d1				
	jbcc _?L11				
						
	move.l d0,-(sp)				
	pea _aubio_log_buffer			
	jbsr _fputs				
	addq.l #8,sp				
	jbra _?L17				
						
	.align	2				
	.globl	_aubio_log_reset		
						
_aubio_log_reset:				
						
	move.l #_aubio_default_log,_aubio_log_function
	move.l #_aubio_default_log,_aubio_log_function+4
	move.l #_aubio_default_log,_aubio_log_function+8
	move.l #_aubio_default_log,_aubio_log_function+12
	move.l #_aubio_default_log,_aubio_log_function+16
						
	clr.l _aubio_log_user_data		
	clr.l _aubio_log_user_data+4		
	clr.l _aubio_log_user_data+8		
	clr.l _aubio_log_user_data+12		
	clr.l _aubio_log_user_data+16		
						
	rts					
						
	.align	2				
	.globl	_aubio_log_set_level_function	
						
_aubio_log_set_level_function:			
	move.l 4(sp),d0				
						
	moveq #4,d1				
	cmp.l d0,d1				
	jbcs _?L22				
						
	lea _aubio_log_function,a0		
	add.l d0,d0				
	move.l d0,d1				
	add.l d0,d1				
	move.l (a0,d1.l),d0			
						
	move.l 8(sp),(a0,d1.l)			
						
	lea _aubio_log_user_data,a0		
	move.l 12(sp),(a0,d1.l)			
						
	rts					
_?L22:						
						
	moveq #0,d0				
						
	rts					
						
	.align	2				
	.globl	_aubio_log_set_function		
						
_aubio_log_set_function:			
	move.l 4(sp),d1				
	move.l 8(sp),d0				
						
	move.l d1,_aubio_log_function		
						
	move.l d0,_aubio_log_user_data		
						
	move.l d1,_aubio_log_function+4		
						
	move.l d0,_aubio_log_user_data+4	
						
	move.l d1,_aubio_log_function+8		
						
	move.l d0,_aubio_log_user_data+8	
						
	move.l d1,_aubio_log_function+12	
						
	move.l d0,_aubio_log_user_data+12	
						
	move.l d1,_aubio_log_function+16	
						
	move.l d0,_aubio_log_user_data+16	
						
	rts					
						
						
	.comm	_aubio_log_buffer,512		
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_aubio_log_user_data,20		
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_aubio_log_function,20		
						
