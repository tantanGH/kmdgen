* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"a_weighting.c"			
						
						
						
						
						
	.text					
	.data					
_?LC110:					
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$61,$75,$62
	.dc.b $69,$6f,$5f,$66,$69,$6c,$74,$65
	.dc.b $72,$3a,$20,$66,$61,$69,$6c,$65
	.dc.b $64,$20,$73,$65,$74,$74,$69,$6e
	.dc.b $67,$20,$41,$2d,$77,$65,$69,$67
	.dc.b $68,$74,$69,$6e,$67,$20,$77,$69
	.dc.b $74,$68,$20,$73,$61,$6d,$70,$6c
	.dc.b $65,$72,$61,$74,$65,$20,$25,$64
	.dc.b $0a
	.dc.b $00				
_?LC111:					
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$61,$75,$62
	.dc.b $69,$6f,$5f,$66,$69,$6c,$74,$65
	.dc.b $72,$3a,$20,$66,$61,$69,$6c,$65
	.dc.b $64,$20,$73,$65,$74,$74,$69,$6e
	.dc.b $67,$20,$41,$2d,$77,$65,$69,$67
	.dc.b $68,$74,$69,$6e,$67,$20,$77,$69
	.dc.b $74,$68,$20,$66,$69,$6c,$74,$65
	.dc.b $72,$20,$4e,$55,$4c,$4c,$0a
	.dc.b $00				
_?LC112:					
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$61,$75,$62
	.dc.b $69,$6f,$5f,$66,$69,$6c,$74,$65
	.dc.b $72,$3a,$20,$6f,$72,$64,$65,$72
	.dc.b $20,$6f,$66,$20,$41,$2d,$77,$65
	.dc.b $69,$67,$68,$74,$69,$6e,$67,$20
	.dc.b $66,$69,$6c,$74,$65,$72,$20,$6d
	.dc.b $75,$73,$74,$20,$62,$65,$20,$37
	.dc.b $2c,$20,$6e,$6f,$74,$20,$25,$64
	.dc.b $0a
	.dc.b $00				
_?LC114:					
	.dc.b $41,$55,$42,$49,$4f,$20,$45,$52
	.dc.b $52,$4f,$52,$3a,$20,$73,$61,$6d
	.dc.b $70,$6c,$69,$6e,$67,$20,$72,$61
	.dc.b $74,$65,$20,$6f,$66,$20,$41,$2d
	.dc.b $77,$65,$69,$67,$68,$74,$69,$6e
	.dc.b $67,$20,$66,$69,$6c,$74,$65,$72
	.dc.b $20,$69,$73,$20,$25,$64,$2c,$20
	.dc.b $73,$68,$6f,$75,$6c,$64,$20,$62
	.dc.b $65,$20,$6f,$6e,$65,$20,$6f,$66
	.dc.b $20,$38,$30,$30,$30,$2c,$20,$31
	.dc.b $31,$30,$32,$35,$2c,$20,$31,$36
	.dc.b $30,$30,$30,$2c,$20,$32,$32,$30
	.dc.b $35,$30,$2c,$20,$32,$34,$30,$30
	.dc.b $30,$2c,$20,$33,$32,$30,$30,$30
	.dc.b $2c,$20,$34,$34,$31,$30,$30,$2c
	.dc.b $20,$34,$38,$30,$30,$30,$2c,$20
	.dc.b $38,$38,$32,$30,$30,$2c,$20,$39
	.dc.b $36,$30,$30,$30,$2c,$20,$31,$39
	.dc.b $32,$30,$30,$30,$2e,$0a
	.dc.b $00				
	.data					
	.align	2				
_?LC0:						
	.dc.l	1073610752			
	.dc.l	-1586470954			
	.dc.l	-940210176			
	.align	2				
_?LC1:						
	.dc.l	-1073807360			
	.dc.l	-1586470954			
	.dc.l	-940208128			
	.align	2				
_?LC2:						
	.dc.l	-1073872896			
	.dc.l	-1586470954			
	.dc.l	-940212224			
	.align	2				
_?LC3:						
	.dc.l	1073741824			
	.dc.l	-1586470954			
	.dc.l	-940208128			
	.align	2				
_?LC4:						
	.dc.l	-1073741824			
	.dc.l	-2009543050			
	.dc.l	626102272			
	.align	2				
_?LC5:						
	.dc.l	1073545216			
	.dc.l	-1762079929			
	.dc.l	1086177280			
	.align	2				
_?LC6:						
	.dc.l	1073676288			
	.dc.l	-377562349			
	.dc.l	1930678272			
	.align	2				
_?LC7:						
	.dc.l	-1073872896			
	.dc.l	-834671514			
	.dc.l	-1414524928			
	.align	2				
_?LC8:						
	.dc.l	-1073938432			
	.dc.l	-904092349			
	.dc.l	2006925312			
	.align	2				
_?LC9:						
	.dc.l	1073479680			
	.dc.l	-689688347			
	.dc.l	-887547904			
	.align	2				
_?LC10:						
	.dc.l	1073610752			
	.dc.l	-1711680118			
	.dc.l	-850794496			
	.align	2				
_?LC11:						
	.dc.l	-1073807360			
	.dc.l	-1711680118			
	.dc.l	-850792448			
	.align	2				
_?LC12:						
	.dc.l	-1073872896			
	.dc.l	-1711680118			
	.dc.l	-850796544			
	.align	2				
_?LC13:						
	.dc.l	1073741824			
	.dc.l	-1711680118			
	.dc.l	-850792448			
	.align	2				
_?LC14:						
	.dc.l	-1073741824			
	.dc.l	-1649719758			
	.dc.l	633823232			
	.align	2				
_?LC15:						
	.dc.l	1073676288			
	.dc.l	-1939607956			
	.dc.l	-896126976			
	.align	2				
_?LC16:						
	.dc.l	1073676288			
	.dc.l	-1328815185			
	.dc.l	1818968064			
	.align	2				
_?LC17:						
	.dc.l	-1073807360			
	.dc.l	-2117685817			
	.dc.l	1239967744			
	.align	2				
_?LC18:						
	.dc.l	-1074003968			
	.dc.l	-1135361317			
	.dc.l	139892736			
	.align	2				
_?LC19:						
	.dc.l	1073479680			
	.dc.l	-1144992938			
	.dc.l	46077952			
	.align	2				
_?LC20:						
	.dc.l	1073610752			
	.dc.l	-2012235859			
	.dc.l	1068515328			
	.align	2				
_?LC21:						
	.dc.l	-1073807360			
	.dc.l	-2012235859			
	.dc.l	1068515328			
	.align	2				
_?LC22:						
	.dc.l	-1073872896			
	.dc.l	-2012235859			
	.dc.l	1068515328			
	.align	2				
_?LC23:						
	.dc.l	1073741824			
	.dc.l	-2012235859			
	.dc.l	1068515328			
	.align	2				
_?LC24:						
	.dc.l	-1073741824			
	.dc.l	-1215655519			
	.dc.l	-639012864			
	.align	2				
_?LC25:						
	.dc.l	1073741824			
	.dc.l	-1910031646			
	.dc.l	1623648256			
	.align	2				
_?LC26:						
	.dc.l	1073545216			
	.dc.l	-384242079			
	.dc.l	-1531756544			
	.align	2				
_?LC27:						
	.dc.l	-1073872896			
	.dc.l	-71352878			
	.dc.l	-1941553152			
	.align	2				
_?LC28:						
	.dc.l	1073348608			
	.dc.l	-451490988			
	.dc.l	-1968844800			
	.align	2				
_?LC29:						
	.dc.l	1073414144			
	.dc.l	-210346751			
	.dc.l	1002031104			
	.align	2				
_?LC30:						
	.dc.l	1073545216			
	.dc.l	-435510969			
	.dc.l	1668124672			
	.align	2				
_?LC31:						
	.dc.l	-1073872896			
	.dc.l	-435510969			
	.dc.l	1668126720			
	.align	2				
_?LC32:						
	.dc.l	-1073938432			
	.dc.l	-435510969			
	.dc.l	1668120576			
	.align	2				
_?LC33:						
	.dc.l	1073676288			
	.dc.l	-435510969			
	.dc.l	1668128768			
	.align	2				
_?LC34:						
	.dc.l	-1073741824			
	.dc.l	-827770330			
	.dc.l	696268800			
	.align	2				
_?LC35:						
	.dc.l	1073741824			
	.dc.l	-693105844			
	.dc.l	1619384320			
	.align	2				
_?LC36:						
	.dc.l	-1073872896			
	.dc.l	-1151977368			
	.dc.l	-1862473728			
	.align	2				
_?LC37:						
	.dc.l	-1073872896			
	.dc.l	-1601323761			
	.dc.l	-1480159232			
	.align	2				
_?LC38:						
	.dc.l	1073479680			
	.dc.l	-1250450514			
	.dc.l	743104512			
	.align	2				
_?LC39:						
	.dc.l	1073348608			
	.dc.l	-424881051			
	.dc.l	-1306152960			
	.align	2				
_?LC40:						
	.dc.l	1073545216			
	.dc.l	-638864452			
	.dc.l	-1621157888			
	.align	2				
_?LC41:						
	.dc.l	-1073872896			
	.dc.l	-638864452			
	.dc.l	-1621159936			
	.align	2				
_?LC42:						
	.dc.l	-1073938432			
	.dc.l	-638864452			
	.dc.l	-1621155840			
	.align	2				
_?LC43:						
	.dc.l	1073676288			
	.dc.l	-638864452			
	.dc.l	-1621159936			
	.align	2				
_?LC44:						
	.dc.l	-1073741824			
	.dc.l	-723706280			
	.dc.l	908285952			
	.align	2				
_?LC45:						
	.dc.l	1073741824			
	.dc.l	-346645652			
	.dc.l	1781116928			
	.align	2				
_?LC46:						
	.dc.l	-1073807360			
	.dc.l	-1918828015			
	.dc.l	-462323712			
	.align	2				
_?LC47:						
	.dc.l	-1073938432			
	.dc.l	-234757128			
	.dc.l	-673546240			
	.align	2				
_?LC48:						
	.dc.l	1073479680			
	.dc.l	-1096175710			
	.dc.l	-431865856			
	.align	2				
_?LC49:						
	.dc.l	1073348608			
	.dc.l	-1423337499			
	.dc.l	1505005568			
	.align	2				
_?LC50:						
	.dc.l	1073545216			
	.dc.l	-1344682632			
	.dc.l	1542154240			
	.align	2				
_?LC51:						
	.dc.l	-1073872896			
	.dc.l	-1344682632			
	.dc.l	1542156288			
	.align	2				
_?LC52:						
	.dc.l	-1073938432			
	.dc.l	-1344682632			
	.dc.l	1542152192			
	.align	2				
_?LC53:						
	.dc.l	1073676288			
	.dc.l	-1344682632			
	.dc.l	1542156288			
	.align	2				
_?LC54:						
	.dc.l	-1073741824			
	.dc.l	-368888253			
	.dc.l	-776093696			
	.align	2				
_?LC55:						
	.dc.l	1073807360			
	.dc.l	-1701092423			
	.dc.l	1722613760			
	.align	2				
_?LC56:						
	.dc.l	-1073741824			
	.dc.l	-1548767895			
	.dc.l	160315392			
	.align	2				
_?LC57:						
	.dc.l	1073545216			
	.dc.l	-2118552410			
	.dc.l	1398581248			
	.align	2				
_?LC58:						
	.dc.l	1073414144			
	.dc.l	-87856744			
	.dc.l	-293740544			
	.align	2				
_?LC59:						
	.dc.l	1073152000			
	.dc.l	-576379296			
	.dc.l	447109120			
	.align	2				
_?LC60:						
	.dc.l	1073545216			
	.dc.l	-2098167759			
	.dc.l	-47009792			
	.align	2				
_?LC61:						
	.dc.l	-1073872896			
	.dc.l	-2098167759			
	.dc.l	-47009792			
	.align	2				
_?LC62:						
	.dc.l	-1073938432			
	.dc.l	-2098167759			
	.dc.l	-47009792			
	.align	2				
_?LC63:						
	.dc.l	1073676288			
	.dc.l	-2098167759			
	.dc.l	-47009792			
	.align	2				
_?LC64:						
	.dc.l	-1073676288			
	.dc.l	-2136973766			
	.dc.l	898224128			
	.align	2				
_?LC65:						
	.dc.l	1073807360			
	.dc.l	-972055015			
	.dc.l	-1075851264			
	.align	2				
_?LC66:						
	.dc.l	-1073676288			
	.dc.l	-1904174340			
	.dc.l	-1446846464			
	.align	2				
_?LC67:						
	.dc.l	1073676288			
	.dc.l	-1243730296			
	.dc.l	-1335443456			
	.align	2				
_?LC68:						
	.dc.l	-1074003968			
	.dc.l	-1858424209			
	.dc.l	1560985600			
	.align	2				
_?LC69:						
	.dc.l	1073152000			
	.dc.l	-1902882315			
	.dc.l	1593624576			
	.align	2				
_?LC70:						
	.dc.l	1073479680			
	.dc.l	-269693155			
	.dc.l	1212794880			
	.align	2				
_?LC71:						
	.dc.l	-1073938432			
	.dc.l	-269693155			
	.dc.l	1212796928			
	.align	2				
_?LC72:						
	.dc.l	-1074003968			
	.dc.l	-269693155			
	.dc.l	1212792832			
	.align	2				
_?LC73:						
	.dc.l	1073610752			
	.dc.l	-269693155			
	.dc.l	1212796928			
	.align	2				
_?LC74:						
	.dc.l	-1073676288			
	.dc.l	-2086793931			
	.dc.l	-149932032			
	.align	2				
_?LC75:						
	.dc.l	1073807360			
	.dc.l	-776786845			
	.dc.l	-880660480			
	.align	2				
_?LC76:						
	.dc.l	-1073676288			
	.dc.l	-1615525484			
	.dc.l	910759936			
	.align	2				
_?LC77:						
	.dc.l	1073676288			
	.dc.l	-460125639			
	.dc.l	-1365516288			
	.align	2				
_?LC78:						
	.dc.l	-1074003968			
	.dc.l	-65445075			
	.dc.l	-344109056			
	.align	2				
_?LC79:						
	.dc.l	1073217536			
	.dc.l	-1209668940			
	.dc.l	647360512			
	.align	2				
_?LC80:						
	.dc.l	1073414144			
	.dc.l	-450537373			
	.dc.l	948238336			
	.align	2				
_?LC81:						
	.dc.l	-1074003968			
	.dc.l	-450537373			
	.dc.l	948236288			
	.align	2				
_?LC82:						
	.dc.l	-1074069504			
	.dc.l	-450537373			
	.dc.l	948240384			
	.align	2				
_?LC83:						
	.dc.l	1073545216			
	.dc.l	-450537373			
	.dc.l	948236288			
	.align	2				
_?LC84:						
	.dc.l	-1073676288			
	.dc.l	-1757211478			
	.dc.l	-1249366016			
	.align	2				
_?LC85:						
	.dc.l	1073872896			
	.dc.l	-1858406047			
	.dc.l	1527414784			
	.align	2				
_?LC86:						
	.dc.l	-1073610752			
	.dc.l	-1875060553			
	.dc.l	673689600			
	.align	2				
_?LC87:						
	.dc.l	1073807360			
	.dc.l	-1689655027			
	.dc.l	-2111688704			
	.align	2				
_?LC88:						
	.dc.l	-1073807360			
	.dc.l	-1430486489			
	.dc.l	-1131042816			
	.align	2				
_?LC89:						
	.dc.l	1073479680			
	.dc.l	-1786684836			
	.dc.l	-436914176			
	.align	2				
_?LC90:						
	.dc.l	1073414144			
	.dc.l	-875520846			
	.dc.l	-893755392			
	.align	2				
_?LC91:						
	.dc.l	-1074003968			
	.dc.l	-875520846			
	.dc.l	-893755392			
	.align	2				
_?LC92:						
	.dc.l	-1074069504			
	.dc.l	-875520846			
	.dc.l	-893755392			
	.align	2				
_?LC93:						
	.dc.l	1073545216			
	.dc.l	-875520846			
	.dc.l	-893755392			
	.align	2				
_?LC94:						
	.dc.l	-1073676288			
	.dc.l	-1716804169			
	.dc.l	-161257472			
	.align	2				
_?LC95:						
	.dc.l	1073872896			
	.dc.l	-1771188889			
	.dc.l	-187727872			
	.align	2				
_?LC96:						
	.dc.l	-1073610752			
	.dc.l	-1727075085			
	.dc.l	-1487661056			
	.align	2				
_?LC97:						
	.dc.l	1073807360			
	.dc.l	-1444303050			
	.dc.l	1140459520			
	.align	2				
_?LC98:						
	.dc.l	-1073807360			
	.dc.l	-1036518716			
	.dc.l	587964416			
	.align	2				
_?LC99:						
	.dc.l	1073479680			
	.dc.l	-1304000185			
	.dc.l	1657989120			
	.align	2				
_?LC100:					
	.dc.l	1073348608			
	.dc.l	-1935680996			
	.dc.l	-1803962368			
	.align	2				
_?LC101:					
	.dc.l	-1074069504			
	.dc.l	-1935680996			
	.dc.l	-1803964416			
	.align	2				
_?LC102:					
	.dc.l	-1074135040			
	.dc.l	-1935680996			
	.dc.l	-1803960320			
	.align	2				
_?LC103:					
	.dc.l	1073479680			
	.dc.l	-1935680996			
	.dc.l	-1803964416			
	.align	2				
_?LC104:					
	.dc.l	-1073676288			
	.dc.l	-1446371206			
	.dc.l	1194125312			
	.align	2				
_?LC105:					
	.dc.l	1073872896			
	.dc.l	-1165137554			
	.dc.l	1097121792			
	.align	2				
_?LC106:					
	.dc.l	-1073610752			
	.dc.l	-650794671			
	.dc.l	1352294400			
	.align	2				
_?LC107:					
	.dc.l	1073872896			
	.dc.l	-1924975638			
	.dc.l	2122674176			
	.align	2				
_?LC108:					
	.dc.l	-1073741824			
	.dc.l	-1031339630			
	.dc.l	-1976250368			
	.align	2				
_?LC109:					
	.dc.l	1073545216			
	.dc.l	-579103926			
	.dc.l	-473923584			
	.align	2				
_?LC113:					
	.dc.l	1073676288			
	.dc.l	-2147483648			
	.dc.l	0				
	.text					
	.align	2				
	.globl	_aubio_filter_set_a_weighting	
						
_aubio_filter_set_a_weighting:			
	lea (-84,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 124(sp),d4			
	move.l 128(sp),d3			
						
	jble _?L24				
						
	tst.l d4				
	jbeq _?L25				
						
	move.l d4,-(sp)				
	jbsr _aubio_filter_get_order		
	addq.l #4,sp				
						
	moveq #7,d1				
	cmp.l d0,d1				
	jbne _?L26				
						
	move.l d3,-(sp)				
	move.l d4,-(sp)				
	jbsr _aubio_filter_set_samplerate	
						
	addq.l #4,sp				
	move.l d4,(sp)				
	jbsr _aubio_filter_get_feedforward	
	move.l d0,a3				
						
	move.l d4,(sp)				
	jbsr _aubio_filter_get_feedback		
	addq.l #4,sp				
						
	move.l 4(a3),d6				
						
	move.l d0,a0				
	move.l 4(a0),d7				
						
	cmp.l #32000,d3				
	jbeq _?L12				
	jbls _?L27				
	cmp.l #88200,d3				
	jbeq _?L18				
	jbls _?L28				
	cmp.l #96000,d3				
	jbeq _?L21				
	cmp.l #192000,d3			
	jbne _?L10				
	move.l _?LC100,d0			
	move.l _?LC100+4,d1			
	move.l _?LC100+8,d2			
	move.l _?LC101,a1			
	move.l _?LC101+4,a2			
	move.l _?LC101+8,a3			
	move.l _?LC102,d3			
	move.l _?LC102+4,d4			
	move.l _?LC102+8,d5			
	move.l _?LC103,84(sp)			
	move.l _?LC103+4,88(sp)			
	move.l _?LC103+8,92(sp)			
	move.l _?LC104,96(sp)			
	move.l _?LC104+4,100(sp)		
	move.l _?LC104+8,104(sp)		
	move.l _?LC105,108(sp)			
	move.l _?LC105+4,112(sp)		
	move.l _?LC105+8,116(sp)		
	move.l _?LC106,36(sp)			
	move.l _?LC106+4,40(sp)			
	move.l _?LC106+8,44(sp)			
	move.l _?LC107,48(sp)			
	move.l _?LC107+4,52(sp)			
	move.l _?LC107+8,56(sp)			
	move.l _?LC108,60(sp)			
	move.l _?LC108+4,64(sp)			
	move.l _?LC108+8,68(sp)			
	move.l _?LC109,72(sp)			
	move.l _?LC109+4,76(sp)			
	move.l _?LC109+8,80(sp)			
						
	move.l d6,a4				
	move.l d0,(a4)				
	move.l d1,4(a4)				
	move.l d2,8(a4)				
						
	move.l a1,12(a4)			
	move.l a2,16(a4)			
	move.l a3,20(a4)			
						
	move.l d3,24(a4)			
	move.l d4,28(a4)			
	move.l d5,32(a4)			
						
	move.l 84(sp),a4			
	move.l 88(sp),a5			
	move.l 92(sp),a6			
	move.l d6,a0				
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l d3,48(a0)			
	move.l d4,52(a0)			
	move.l d5,56(a0)			
						
	move.l a1,60(a0)			
	move.l a2,64(a0)			
	move.l a3,68(a0)			
						
	move.l d0,72(a0)			
	move.l d1,76(a0)			
	move.l d2,80(a0)			
						
	move.l _?LC113,d0			
	move.l _?LC113+4,d1			
	move.l _?LC113+8,d2			
	move.l d7,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
	move.l d2,8(a0)				
						
	move.l 96(sp),a4			
	move.l 100(sp),a5			
	move.l 104(sp),a6			
	move.l a4,12(a0)			
	move.l a5,16(a0)			
	move.l a6,20(a0)			
						
	move.l 108(sp),a4			
	move.l 112(sp),a5			
	move.l 116(sp),a6			
	move.l a4,24(a0)			
	move.l a5,28(a0)			
	move.l a6,32(a0)			
						
	move.l 36(sp),a4			
	move.l 40(sp),a5			
	move.l 44(sp),a6			
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l 48(sp),a4			
	move.l 52(sp),a5			
	move.l 56(sp),a6			
	move.l a4,48(a0)			
	move.l a5,52(a0)			
	move.l a6,56(a0)			
						
	move.l 60(sp),a4			
	move.l 64(sp),a5			
	move.l 68(sp),a6			
	move.l a4,60(a0)			
	move.l a5,64(a0)			
	move.l a6,68(a0)			
						
	move.l 72(sp),a4			
	move.l 76(sp),a5			
	move.l 80(sp),a6			
	move.l a4,72(a0)			
	move.l a5,76(a0)			
	move.l a6,80(a0)			
						
	moveq #0,d0				
_?L1:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (84,sp),sp				
	rts					
_?L26:						
						
	move.l d0,-(sp)				
	pea _?LC112				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	moveq #1,d0				
_?L30:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (84,sp),sp				
	rts					
_?L27:						
						
	cmp.l #16000,d3				
	jbeq _?L13				
	jbls _?L29				
	cmp.l #22050,d3				
	jbeq _?L16				
	cmp.l #24000,d3				
	jbne _?L10				
	move.l _?LC40,d0			
	move.l _?LC40+4,d1			
	move.l _?LC40+8,d2			
	move.l _?LC41,a1			
	move.l _?LC41+4,a2			
	move.l _?LC41+8,a3			
	move.l _?LC42,d3			
	move.l _?LC42+4,d4			
	move.l _?LC42+8,d5			
	move.l _?LC43,84(sp)			
	move.l _?LC43+4,88(sp)			
	move.l _?LC43+8,92(sp)			
	move.l _?LC44,96(sp)			
	move.l _?LC44+4,100(sp)			
	move.l _?LC44+8,104(sp)			
	move.l _?LC45,108(sp)			
	move.l _?LC45+4,112(sp)			
	move.l _?LC45+8,116(sp)			
	move.l _?LC46,36(sp)			
	move.l _?LC46+4,40(sp)			
	move.l _?LC46+8,44(sp)			
	move.l _?LC47,48(sp)			
	move.l _?LC47+4,52(sp)			
	move.l _?LC47+8,56(sp)			
	move.l _?LC48,60(sp)			
	move.l _?LC48+4,64(sp)			
	move.l _?LC48+8,68(sp)			
	move.l _?LC49,72(sp)			
	move.l _?LC49+4,76(sp)			
	move.l _?LC49+8,80(sp)			
						
	move.l d6,a4				
	move.l d0,(a4)				
	move.l d1,4(a4)				
	move.l d2,8(a4)				
						
	move.l a1,12(a4)			
	move.l a2,16(a4)			
	move.l a3,20(a4)			
						
	move.l d3,24(a4)			
	move.l d4,28(a4)			
	move.l d5,32(a4)			
						
	move.l 84(sp),a4			
	move.l 88(sp),a5			
	move.l 92(sp),a6			
	move.l d6,a0				
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l d3,48(a0)			
	move.l d4,52(a0)			
	move.l d5,56(a0)			
						
	move.l a1,60(a0)			
	move.l a2,64(a0)			
	move.l a3,68(a0)			
						
	move.l d0,72(a0)			
	move.l d1,76(a0)			
	move.l d2,80(a0)			
						
	move.l _?LC113,d0			
	move.l _?LC113+4,d1			
	move.l _?LC113+8,d2			
	move.l d7,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
	move.l d2,8(a0)				
						
	move.l 96(sp),a4			
	move.l 100(sp),a5			
	move.l 104(sp),a6			
	move.l a4,12(a0)			
	move.l a5,16(a0)			
	move.l a6,20(a0)			
						
	move.l 108(sp),a4			
	move.l 112(sp),a5			
	move.l 116(sp),a6			
	move.l a4,24(a0)			
	move.l a5,28(a0)			
	move.l a6,32(a0)			
						
	move.l 36(sp),a4			
	move.l 40(sp),a5			
	move.l 44(sp),a6			
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l 48(sp),a4			
	move.l 52(sp),a5			
	move.l 56(sp),a6			
	move.l a4,48(a0)			
	move.l a5,52(a0)			
	move.l a6,56(a0)			
						
	move.l 60(sp),a4			
	move.l 64(sp),a5			
	move.l 68(sp),a6			
	move.l a4,60(a0)			
	move.l a5,64(a0)			
	move.l a6,68(a0)			
						
	move.l 72(sp),a4			
	move.l 76(sp),a5			
	move.l 80(sp),a6			
	move.l a4,72(a0)			
	move.l a5,76(a0)			
	move.l a6,80(a0)			
						
	moveq #0,d0				
	jbra _?L1				
_?L29:						
						
	cmp.l #8000,d3				
	jbeq _?L14				
	cmp.l #11025,d3				
	jbne _?L10				
	move.l _?LC10,d0			
	move.l _?LC10+4,d1			
	move.l _?LC10+8,d2			
	move.l _?LC11,a1			
	move.l _?LC11+4,a2			
	move.l _?LC11+8,a3			
	move.l _?LC12,d3			
	move.l _?LC12+4,d4			
	move.l _?LC12+8,d5			
	move.l _?LC13,84(sp)			
	move.l _?LC13+4,88(sp)			
	move.l _?LC13+8,92(sp)			
	move.l _?LC14,96(sp)			
	move.l _?LC14+4,100(sp)			
	move.l _?LC14+8,104(sp)			
	move.l _?LC15,108(sp)			
	move.l _?LC15+4,112(sp)			
	move.l _?LC15+8,116(sp)			
	move.l _?LC16,36(sp)			
	move.l _?LC16+4,40(sp)			
	move.l _?LC16+8,44(sp)			
	move.l _?LC17,48(sp)			
	move.l _?LC17+4,52(sp)			
	move.l _?LC17+8,56(sp)			
	move.l _?LC18,60(sp)			
	move.l _?LC18+4,64(sp)			
	move.l _?LC18+8,68(sp)			
	move.l _?LC19,72(sp)			
	move.l _?LC19+4,76(sp)			
	move.l _?LC19+8,80(sp)			
						
	move.l d6,a4				
	move.l d0,(a4)				
	move.l d1,4(a4)				
	move.l d2,8(a4)				
						
	move.l a1,12(a4)			
	move.l a2,16(a4)			
	move.l a3,20(a4)			
						
	move.l d3,24(a4)			
	move.l d4,28(a4)			
	move.l d5,32(a4)			
						
	move.l 84(sp),a4			
	move.l 88(sp),a5			
	move.l 92(sp),a6			
	move.l d6,a0				
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l d3,48(a0)			
	move.l d4,52(a0)			
	move.l d5,56(a0)			
						
	move.l a1,60(a0)			
	move.l a2,64(a0)			
	move.l a3,68(a0)			
						
	move.l d0,72(a0)			
	move.l d1,76(a0)			
	move.l d2,80(a0)			
						
	move.l _?LC113,d0			
	move.l _?LC113+4,d1			
	move.l _?LC113+8,d2			
	move.l d7,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
	move.l d2,8(a0)				
						
	move.l 96(sp),a4			
	move.l 100(sp),a5			
	move.l 104(sp),a6			
	move.l a4,12(a0)			
	move.l a5,16(a0)			
	move.l a6,20(a0)			
						
	move.l 108(sp),a4			
	move.l 112(sp),a5			
	move.l 116(sp),a6			
	move.l a4,24(a0)			
	move.l a5,28(a0)			
	move.l a6,32(a0)			
						
	move.l 36(sp),a4			
	move.l 40(sp),a5			
	move.l 44(sp),a6			
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l 48(sp),a4			
	move.l 52(sp),a5			
	move.l 56(sp),a6			
	move.l a4,48(a0)			
	move.l a5,52(a0)			
	move.l a6,56(a0)			
						
	move.l 60(sp),a4			
	move.l 64(sp),a5			
	move.l 68(sp),a6			
	move.l a4,60(a0)			
	move.l a5,64(a0)			
	move.l a6,68(a0)			
						
	move.l 72(sp),a4			
	move.l 76(sp),a5			
	move.l 80(sp),a6			
	move.l a4,72(a0)			
	move.l a5,76(a0)			
	move.l a6,80(a0)			
						
	moveq #0,d0				
	jbra _?L1				
_?L28:						
						
	cmp.l #44100,d3				
	jbeq _?L19				
	cmp.l #48000,d3				
	jbne _?L10				
	move.l _?LC70,d0			
	move.l _?LC70+4,d1			
	move.l _?LC70+8,d2			
	move.l _?LC71,a1			
	move.l _?LC71+4,a2			
	move.l _?LC71+8,a3			
	move.l _?LC72,d3			
	move.l _?LC72+4,d4			
	move.l _?LC72+8,d5			
	move.l _?LC73,84(sp)			
	move.l _?LC73+4,88(sp)			
	move.l _?LC73+8,92(sp)			
	move.l _?LC74,96(sp)			
	move.l _?LC74+4,100(sp)			
	move.l _?LC74+8,104(sp)			
	move.l _?LC75,108(sp)			
	move.l _?LC75+4,112(sp)			
	move.l _?LC75+8,116(sp)			
	move.l _?LC76,36(sp)			
	move.l _?LC76+4,40(sp)			
	move.l _?LC76+8,44(sp)			
	move.l _?LC77,48(sp)			
	move.l _?LC77+4,52(sp)			
	move.l _?LC77+8,56(sp)			
	move.l _?LC78,60(sp)			
	move.l _?LC78+4,64(sp)			
	move.l _?LC78+8,68(sp)			
	move.l _?LC79,72(sp)			
	move.l _?LC79+4,76(sp)			
	move.l _?LC79+8,80(sp)			
						
	move.l d6,a4				
	move.l d0,(a4)				
	move.l d1,4(a4)				
	move.l d2,8(a4)				
						
	move.l a1,12(a4)			
	move.l a2,16(a4)			
	move.l a3,20(a4)			
						
	move.l d3,24(a4)			
	move.l d4,28(a4)			
	move.l d5,32(a4)			
						
	move.l 84(sp),a4			
	move.l 88(sp),a5			
	move.l 92(sp),a6			
	move.l d6,a0				
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l d3,48(a0)			
	move.l d4,52(a0)			
	move.l d5,56(a0)			
						
	move.l a1,60(a0)			
	move.l a2,64(a0)			
	move.l a3,68(a0)			
						
	move.l d0,72(a0)			
	move.l d1,76(a0)			
	move.l d2,80(a0)			
						
	move.l _?LC113,d0			
	move.l _?LC113+4,d1			
	move.l _?LC113+8,d2			
	move.l d7,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
	move.l d2,8(a0)				
						
	move.l 96(sp),a4			
	move.l 100(sp),a5			
	move.l 104(sp),a6			
	move.l a4,12(a0)			
	move.l a5,16(a0)			
	move.l a6,20(a0)			
						
	move.l 108(sp),a4			
	move.l 112(sp),a5			
	move.l 116(sp),a6			
	move.l a4,24(a0)			
	move.l a5,28(a0)			
	move.l a6,32(a0)			
						
	move.l 36(sp),a4			
	move.l 40(sp),a5			
	move.l 44(sp),a6			
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l 48(sp),a4			
	move.l 52(sp),a5			
	move.l 56(sp),a6			
	move.l a4,48(a0)			
	move.l a5,52(a0)			
	move.l a6,56(a0)			
						
	move.l 60(sp),a4			
	move.l 64(sp),a5			
	move.l 68(sp),a6			
	move.l a4,60(a0)			
	move.l a5,64(a0)			
	move.l a6,68(a0)			
						
	move.l 72(sp),a4			
	move.l 76(sp),a5			
	move.l 80(sp),a6			
	move.l a4,72(a0)			
	move.l a5,76(a0)			
	move.l a6,80(a0)			
						
	moveq #0,d0				
	jbra _?L1				
_?L21:						
						
	move.l _?LC90,d0			
	move.l _?LC90+4,d1			
	move.l _?LC90+8,d2			
	move.l _?LC91,a1			
	move.l _?LC91+4,a2			
	move.l _?LC91+8,a3			
	move.l _?LC92,d3			
	move.l _?LC92+4,d4			
	move.l _?LC92+8,d5			
	move.l _?LC93,84(sp)			
	move.l _?LC93+4,88(sp)			
	move.l _?LC93+8,92(sp)			
	move.l _?LC94,96(sp)			
	move.l _?LC94+4,100(sp)			
	move.l _?LC94+8,104(sp)			
	move.l _?LC95,108(sp)			
	move.l _?LC95+4,112(sp)			
	move.l _?LC95+8,116(sp)			
	move.l _?LC96,36(sp)			
	move.l _?LC96+4,40(sp)			
	move.l _?LC96+8,44(sp)			
	move.l _?LC97,48(sp)			
	move.l _?LC97+4,52(sp)			
	move.l _?LC97+8,56(sp)			
	move.l _?LC98,60(sp)			
	move.l _?LC98+4,64(sp)			
	move.l _?LC98+8,68(sp)			
	move.l _?LC99,72(sp)			
	move.l _?LC99+4,76(sp)			
	move.l _?LC99+8,80(sp)			
						
	move.l d6,a4				
	move.l d0,(a4)				
	move.l d1,4(a4)				
	move.l d2,8(a4)				
						
	move.l a1,12(a4)			
	move.l a2,16(a4)			
	move.l a3,20(a4)			
						
	move.l d3,24(a4)			
	move.l d4,28(a4)			
	move.l d5,32(a4)			
						
	move.l 84(sp),a4			
	move.l 88(sp),a5			
	move.l 92(sp),a6			
	move.l d6,a0				
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l d3,48(a0)			
	move.l d4,52(a0)			
	move.l d5,56(a0)			
						
	move.l a1,60(a0)			
	move.l a2,64(a0)			
	move.l a3,68(a0)			
						
	move.l d0,72(a0)			
	move.l d1,76(a0)			
	move.l d2,80(a0)			
						
	move.l _?LC113,d0			
	move.l _?LC113+4,d1			
	move.l _?LC113+8,d2			
	move.l d7,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
	move.l d2,8(a0)				
						
	move.l 96(sp),a4			
	move.l 100(sp),a5			
	move.l 104(sp),a6			
	move.l a4,12(a0)			
	move.l a5,16(a0)			
	move.l a6,20(a0)			
						
	move.l 108(sp),a4			
	move.l 112(sp),a5			
	move.l 116(sp),a6			
	move.l a4,24(a0)			
	move.l a5,28(a0)			
	move.l a6,32(a0)			
						
	move.l 36(sp),a4			
	move.l 40(sp),a5			
	move.l 44(sp),a6			
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l 48(sp),a4			
	move.l 52(sp),a5			
	move.l 56(sp),a6			
	move.l a4,48(a0)			
	move.l a5,52(a0)			
	move.l a6,56(a0)			
						
	move.l 60(sp),a4			
	move.l 64(sp),a5			
	move.l 68(sp),a6			
	move.l a4,60(a0)			
	move.l a5,64(a0)			
	move.l a6,68(a0)			
						
	move.l 72(sp),a4			
	move.l 76(sp),a5			
	move.l 80(sp),a6			
	move.l a4,72(a0)			
	move.l a5,76(a0)			
	move.l a6,80(a0)			
						
	moveq #0,d0				
	jbra _?L1				
_?L19:						
						
	move.l _?LC60,d0			
	move.l _?LC60+4,d1			
	move.l _?LC60+8,d2			
	move.l _?LC61,a1			
	move.l _?LC61+4,a2			
	move.l _?LC61+8,a3			
	move.l _?LC62,d3			
	move.l _?LC62+4,d4			
	move.l _?LC62+8,d5			
	move.l _?LC63,84(sp)			
	move.l _?LC63+4,88(sp)			
	move.l _?LC63+8,92(sp)			
	move.l _?LC64,96(sp)			
	move.l _?LC64+4,100(sp)			
	move.l _?LC64+8,104(sp)			
	move.l _?LC65,108(sp)			
	move.l _?LC65+4,112(sp)			
	move.l _?LC65+8,116(sp)			
	move.l _?LC66,36(sp)			
	move.l _?LC66+4,40(sp)			
	move.l _?LC66+8,44(sp)			
	move.l _?LC67,48(sp)			
	move.l _?LC67+4,52(sp)			
	move.l _?LC67+8,56(sp)			
	move.l _?LC68,60(sp)			
	move.l _?LC68+4,64(sp)			
	move.l _?LC68+8,68(sp)			
	move.l _?LC69,72(sp)			
	move.l _?LC69+4,76(sp)			
	move.l _?LC69+8,80(sp)			
						
	move.l d6,a4				
	move.l d0,(a4)				
	move.l d1,4(a4)				
	move.l d2,8(a4)				
						
	move.l a1,12(a4)			
	move.l a2,16(a4)			
	move.l a3,20(a4)			
						
	move.l d3,24(a4)			
	move.l d4,28(a4)			
	move.l d5,32(a4)			
						
	move.l 84(sp),a4			
	move.l 88(sp),a5			
	move.l 92(sp),a6			
	move.l d6,a0				
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l d3,48(a0)			
	move.l d4,52(a0)			
	move.l d5,56(a0)			
						
	move.l a1,60(a0)			
	move.l a2,64(a0)			
	move.l a3,68(a0)			
						
	move.l d0,72(a0)			
	move.l d1,76(a0)			
	move.l d2,80(a0)			
						
	move.l _?LC113,d0			
	move.l _?LC113+4,d1			
	move.l _?LC113+8,d2			
	move.l d7,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
	move.l d2,8(a0)				
						
	move.l 96(sp),a4			
	move.l 100(sp),a5			
	move.l 104(sp),a6			
	move.l a4,12(a0)			
	move.l a5,16(a0)			
	move.l a6,20(a0)			
						
	move.l 108(sp),a4			
	move.l 112(sp),a5			
	move.l 116(sp),a6			
	move.l a4,24(a0)			
	move.l a5,28(a0)			
	move.l a6,32(a0)			
						
	move.l 36(sp),a4			
	move.l 40(sp),a5			
	move.l 44(sp),a6			
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l 48(sp),a4			
	move.l 52(sp),a5			
	move.l 56(sp),a6			
	move.l a4,48(a0)			
	move.l a5,52(a0)			
	move.l a6,56(a0)			
						
	move.l 60(sp),a4			
	move.l 64(sp),a5			
	move.l 68(sp),a6			
	move.l a4,60(a0)			
	move.l a5,64(a0)			
	move.l a6,68(a0)			
						
	move.l 72(sp),a4			
	move.l 76(sp),a5			
	move.l 80(sp),a6			
	move.l a4,72(a0)			
	move.l a5,76(a0)			
	move.l a6,80(a0)			
						
	moveq #0,d0				
	jbra _?L1				
_?L14:						
						
	move.l _?LC0,d0				
	move.l _?LC0+4,d1			
	move.l _?LC0+8,d2			
	move.l _?LC1,a1				
	move.l _?LC1+4,a2			
	move.l _?LC1+8,a3			
	move.l _?LC2,d3				
	move.l _?LC2+4,d4			
	move.l _?LC2+8,d5			
	move.l _?LC3,84(sp)			
	move.l _?LC3+4,88(sp)			
	move.l _?LC3+8,92(sp)			
	move.l _?LC4,96(sp)			
	move.l _?LC4+4,100(sp)			
	move.l _?LC4+8,104(sp)			
	move.l _?LC5,108(sp)			
	move.l _?LC5+4,112(sp)			
	move.l _?LC5+8,116(sp)			
	move.l _?LC6,36(sp)			
	move.l _?LC6+4,40(sp)			
	move.l _?LC6+8,44(sp)			
	move.l _?LC7,48(sp)			
	move.l _?LC7+4,52(sp)			
	move.l _?LC7+8,56(sp)			
	move.l _?LC8,60(sp)			
	move.l _?LC8+4,64(sp)			
	move.l _?LC8+8,68(sp)			
	move.l _?LC9,72(sp)			
	move.l _?LC9+4,76(sp)			
	move.l _?LC9+8,80(sp)			
						
	move.l d6,a4				
	move.l d0,(a4)				
	move.l d1,4(a4)				
	move.l d2,8(a4)				
						
	move.l a1,12(a4)			
	move.l a2,16(a4)			
	move.l a3,20(a4)			
						
	move.l d3,24(a4)			
	move.l d4,28(a4)			
	move.l d5,32(a4)			
						
	move.l 84(sp),a4			
	move.l 88(sp),a5			
	move.l 92(sp),a6			
	move.l d6,a0				
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l d3,48(a0)			
	move.l d4,52(a0)			
	move.l d5,56(a0)			
						
	move.l a1,60(a0)			
	move.l a2,64(a0)			
	move.l a3,68(a0)			
						
	move.l d0,72(a0)			
	move.l d1,76(a0)			
	move.l d2,80(a0)			
						
	move.l _?LC113,d0			
	move.l _?LC113+4,d1			
	move.l _?LC113+8,d2			
	move.l d7,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
	move.l d2,8(a0)				
						
	move.l 96(sp),a4			
	move.l 100(sp),a5			
	move.l 104(sp),a6			
	move.l a4,12(a0)			
	move.l a5,16(a0)			
	move.l a6,20(a0)			
						
	move.l 108(sp),a4			
	move.l 112(sp),a5			
	move.l 116(sp),a6			
	move.l a4,24(a0)			
	move.l a5,28(a0)			
	move.l a6,32(a0)			
						
	move.l 36(sp),a4			
	move.l 40(sp),a5			
	move.l 44(sp),a6			
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l 48(sp),a4			
	move.l 52(sp),a5			
	move.l 56(sp),a6			
	move.l a4,48(a0)			
	move.l a5,52(a0)			
	move.l a6,56(a0)			
						
	move.l 60(sp),a4			
	move.l 64(sp),a5			
	move.l 68(sp),a6			
	move.l a4,60(a0)			
	move.l a5,64(a0)			
	move.l a6,68(a0)			
						
	move.l 72(sp),a4			
	move.l 76(sp),a5			
	move.l 80(sp),a6			
	move.l a4,72(a0)			
	move.l a5,76(a0)			
	move.l a6,80(a0)			
						
	moveq #0,d0				
	jbra _?L1				
_?L16:						
						
	move.l _?LC30,d0			
	move.l _?LC30+4,d1			
	move.l _?LC30+8,d2			
	move.l _?LC31,a1			
	move.l _?LC31+4,a2			
	move.l _?LC31+8,a3			
	move.l _?LC32,d3			
	move.l _?LC32+4,d4			
	move.l _?LC32+8,d5			
	move.l _?LC33,84(sp)			
	move.l _?LC33+4,88(sp)			
	move.l _?LC33+8,92(sp)			
	move.l _?LC34,96(sp)			
	move.l _?LC34+4,100(sp)			
	move.l _?LC34+8,104(sp)			
	move.l _?LC35,108(sp)			
	move.l _?LC35+4,112(sp)			
	move.l _?LC35+8,116(sp)			
	move.l _?LC36,36(sp)			
	move.l _?LC36+4,40(sp)			
	move.l _?LC36+8,44(sp)			
	move.l _?LC37,48(sp)			
	move.l _?LC37+4,52(sp)			
	move.l _?LC37+8,56(sp)			
	move.l _?LC38,60(sp)			
	move.l _?LC38+4,64(sp)			
	move.l _?LC38+8,68(sp)			
	move.l _?LC39,72(sp)			
	move.l _?LC39+4,76(sp)			
	move.l _?LC39+8,80(sp)			
						
	move.l d6,a4				
	move.l d0,(a4)				
	move.l d1,4(a4)				
	move.l d2,8(a4)				
						
	move.l a1,12(a4)			
	move.l a2,16(a4)			
	move.l a3,20(a4)			
						
	move.l d3,24(a4)			
	move.l d4,28(a4)			
	move.l d5,32(a4)			
						
	move.l 84(sp),a4			
	move.l 88(sp),a5			
	move.l 92(sp),a6			
	move.l d6,a0				
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l d3,48(a0)			
	move.l d4,52(a0)			
	move.l d5,56(a0)			
						
	move.l a1,60(a0)			
	move.l a2,64(a0)			
	move.l a3,68(a0)			
						
	move.l d0,72(a0)			
	move.l d1,76(a0)			
	move.l d2,80(a0)			
						
	move.l _?LC113,d0			
	move.l _?LC113+4,d1			
	move.l _?LC113+8,d2			
	move.l d7,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
	move.l d2,8(a0)				
						
	move.l 96(sp),a4			
	move.l 100(sp),a5			
	move.l 104(sp),a6			
	move.l a4,12(a0)			
	move.l a5,16(a0)			
	move.l a6,20(a0)			
						
	move.l 108(sp),a4			
	move.l 112(sp),a5			
	move.l 116(sp),a6			
	move.l a4,24(a0)			
	move.l a5,28(a0)			
	move.l a6,32(a0)			
						
	move.l 36(sp),a4			
	move.l 40(sp),a5			
	move.l 44(sp),a6			
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l 48(sp),a4			
	move.l 52(sp),a5			
	move.l 56(sp),a6			
	move.l a4,48(a0)			
	move.l a5,52(a0)			
	move.l a6,56(a0)			
						
	move.l 60(sp),a4			
	move.l 64(sp),a5			
	move.l 68(sp),a6			
	move.l a4,60(a0)			
	move.l a5,64(a0)			
	move.l a6,68(a0)			
						
	move.l 72(sp),a4			
	move.l 76(sp),a5			
	move.l 80(sp),a6			
	move.l a4,72(a0)			
	move.l a5,76(a0)			
	move.l a6,80(a0)			
						
	moveq #0,d0				
	jbra _?L1				
_?L25:						
						
	pea _?LC111				
	clr.l -(sp)				
	jbsr _aubio_log				
	addq.l #8,sp				
						
	moveq #1,d0				
	jbra _?L30				
_?L24:						
						
	move.l d3,-(sp)				
	pea _?LC110				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	moveq #1,d0				
	jbra _?L30				
_?L18:						
						
	move.l _?LC80,d0			
	move.l _?LC80+4,d1			
	move.l _?LC80+8,d2			
	move.l _?LC81,a1			
	move.l _?LC81+4,a2			
	move.l _?LC81+8,a3			
	move.l _?LC82,d3			
	move.l _?LC82+4,d4			
	move.l _?LC82+8,d5			
	move.l _?LC83,84(sp)			
	move.l _?LC83+4,88(sp)			
	move.l _?LC83+8,92(sp)			
	move.l _?LC84,96(sp)			
	move.l _?LC84+4,100(sp)			
	move.l _?LC84+8,104(sp)			
	move.l _?LC85,108(sp)			
	move.l _?LC85+4,112(sp)			
	move.l _?LC85+8,116(sp)			
	move.l _?LC86,36(sp)			
	move.l _?LC86+4,40(sp)			
	move.l _?LC86+8,44(sp)			
	move.l _?LC87,48(sp)			
	move.l _?LC87+4,52(sp)			
	move.l _?LC87+8,56(sp)			
	move.l _?LC88,60(sp)			
	move.l _?LC88+4,64(sp)			
	move.l _?LC88+8,68(sp)			
	move.l _?LC89,72(sp)			
	move.l _?LC89+4,76(sp)			
	move.l _?LC89+8,80(sp)			
						
	move.l d6,a4				
	move.l d0,(a4)				
	move.l d1,4(a4)				
	move.l d2,8(a4)				
						
	move.l a1,12(a4)			
	move.l a2,16(a4)			
	move.l a3,20(a4)			
						
	move.l d3,24(a4)			
	move.l d4,28(a4)			
	move.l d5,32(a4)			
						
	move.l 84(sp),a4			
	move.l 88(sp),a5			
	move.l 92(sp),a6			
	move.l d6,a0				
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l d3,48(a0)			
	move.l d4,52(a0)			
	move.l d5,56(a0)			
						
	move.l a1,60(a0)			
	move.l a2,64(a0)			
	move.l a3,68(a0)			
						
	move.l d0,72(a0)			
	move.l d1,76(a0)			
	move.l d2,80(a0)			
						
	move.l _?LC113,d0			
	move.l _?LC113+4,d1			
	move.l _?LC113+8,d2			
	move.l d7,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
	move.l d2,8(a0)				
						
	move.l 96(sp),a4			
	move.l 100(sp),a5			
	move.l 104(sp),a6			
	move.l a4,12(a0)			
	move.l a5,16(a0)			
	move.l a6,20(a0)			
						
	move.l 108(sp),a4			
	move.l 112(sp),a5			
	move.l 116(sp),a6			
	move.l a4,24(a0)			
	move.l a5,28(a0)			
	move.l a6,32(a0)			
						
	move.l 36(sp),a4			
	move.l 40(sp),a5			
	move.l 44(sp),a6			
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l 48(sp),a4			
	move.l 52(sp),a5			
	move.l 56(sp),a6			
	move.l a4,48(a0)			
	move.l a5,52(a0)			
	move.l a6,56(a0)			
						
	move.l 60(sp),a4			
	move.l 64(sp),a5			
	move.l 68(sp),a6			
	move.l a4,60(a0)			
	move.l a5,64(a0)			
	move.l a6,68(a0)			
						
	move.l 72(sp),a4			
	move.l 76(sp),a5			
	move.l 80(sp),a6			
	move.l a4,72(a0)			
	move.l a5,76(a0)			
	move.l a6,80(a0)			
						
	moveq #0,d0				
	jbra _?L1				
_?L13:						
						
	move.l _?LC20,d0			
	move.l _?LC20+4,d1			
	move.l _?LC20+8,d2			
	move.l _?LC21,a1			
	move.l _?LC21+4,a2			
	move.l _?LC21+8,a3			
	move.l _?LC22,d3			
	move.l _?LC22+4,d4			
	move.l _?LC22+8,d5			
	move.l _?LC23,84(sp)			
	move.l _?LC23+4,88(sp)			
	move.l _?LC23+8,92(sp)			
	move.l _?LC24,96(sp)			
	move.l _?LC24+4,100(sp)			
	move.l _?LC24+8,104(sp)			
	move.l _?LC25,108(sp)			
	move.l _?LC25+4,112(sp)			
	move.l _?LC25+8,116(sp)			
	move.l _?LC26,36(sp)			
	move.l _?LC26+4,40(sp)			
	move.l _?LC26+8,44(sp)			
	move.l _?LC27,48(sp)			
	move.l _?LC27+4,52(sp)			
	move.l _?LC27+8,56(sp)			
	move.l _?LC28,60(sp)			
	move.l _?LC28+4,64(sp)			
	move.l _?LC28+8,68(sp)			
	move.l _?LC29,72(sp)			
	move.l _?LC29+4,76(sp)			
	move.l _?LC29+8,80(sp)			
						
	move.l d6,a4				
	move.l d0,(a4)				
	move.l d1,4(a4)				
	move.l d2,8(a4)				
						
	move.l a1,12(a4)			
	move.l a2,16(a4)			
	move.l a3,20(a4)			
						
	move.l d3,24(a4)			
	move.l d4,28(a4)			
	move.l d5,32(a4)			
						
	move.l 84(sp),a4			
	move.l 88(sp),a5			
	move.l 92(sp),a6			
	move.l d6,a0				
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l d3,48(a0)			
	move.l d4,52(a0)			
	move.l d5,56(a0)			
						
	move.l a1,60(a0)			
	move.l a2,64(a0)			
	move.l a3,68(a0)			
						
	move.l d0,72(a0)			
	move.l d1,76(a0)			
	move.l d2,80(a0)			
						
	move.l _?LC113,d0			
	move.l _?LC113+4,d1			
	move.l _?LC113+8,d2			
	move.l d7,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
	move.l d2,8(a0)				
						
	move.l 96(sp),a4			
	move.l 100(sp),a5			
	move.l 104(sp),a6			
	move.l a4,12(a0)			
	move.l a5,16(a0)			
	move.l a6,20(a0)			
						
	move.l 108(sp),a4			
	move.l 112(sp),a5			
	move.l 116(sp),a6			
	move.l a4,24(a0)			
	move.l a5,28(a0)			
	move.l a6,32(a0)			
						
	move.l 36(sp),a4			
	move.l 40(sp),a5			
	move.l 44(sp),a6			
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l 48(sp),a4			
	move.l 52(sp),a5			
	move.l 56(sp),a6			
	move.l a4,48(a0)			
	move.l a5,52(a0)			
	move.l a6,56(a0)			
						
	move.l 60(sp),a4			
	move.l 64(sp),a5			
	move.l 68(sp),a6			
	move.l a4,60(a0)			
	move.l a5,64(a0)			
	move.l a6,68(a0)			
						
	move.l 72(sp),a4			
	move.l 76(sp),a5			
	move.l 80(sp),a6			
	move.l a4,72(a0)			
	move.l a5,76(a0)			
	move.l a6,80(a0)			
						
	moveq #0,d0				
	jbra _?L1				
_?L10:						
						
	move.l d3,-(sp)				
	pea _?LC114				
	clr.l -(sp)				
	jbsr _aubio_log				
	lea (12,sp),sp				
						
	moveq #1,d0				
	jbra _?L30				
_?L12:						
						
	move.l _?LC50,d0			
	move.l _?LC50+4,d1			
	move.l _?LC50+8,d2			
	move.l _?LC51,a1			
	move.l _?LC51+4,a2			
	move.l _?LC51+8,a3			
	move.l _?LC52,d3			
	move.l _?LC52+4,d4			
	move.l _?LC52+8,d5			
	move.l _?LC53,84(sp)			
	move.l _?LC53+4,88(sp)			
	move.l _?LC53+8,92(sp)			
	move.l _?LC54,96(sp)			
	move.l _?LC54+4,100(sp)			
	move.l _?LC54+8,104(sp)			
	move.l _?LC55,108(sp)			
	move.l _?LC55+4,112(sp)			
	move.l _?LC55+8,116(sp)			
	move.l _?LC56,36(sp)			
	move.l _?LC56+4,40(sp)			
	move.l _?LC56+8,44(sp)			
	move.l _?LC57,48(sp)			
	move.l _?LC57+4,52(sp)			
	move.l _?LC57+8,56(sp)			
	move.l _?LC58,60(sp)			
	move.l _?LC58+4,64(sp)			
	move.l _?LC58+8,68(sp)			
	move.l _?LC59,72(sp)			
	move.l _?LC59+4,76(sp)			
	move.l _?LC59+8,80(sp)			
						
	move.l d6,a4				
	move.l d0,(a4)				
	move.l d1,4(a4)				
	move.l d2,8(a4)				
						
	move.l a1,12(a4)			
	move.l a2,16(a4)			
	move.l a3,20(a4)			
						
	move.l d3,24(a4)			
	move.l d4,28(a4)			
	move.l d5,32(a4)			
						
	move.l 84(sp),a4			
	move.l 88(sp),a5			
	move.l 92(sp),a6			
	move.l d6,a0				
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l d3,48(a0)			
	move.l d4,52(a0)			
	move.l d5,56(a0)			
						
	move.l a1,60(a0)			
	move.l a2,64(a0)			
	move.l a3,68(a0)			
						
	move.l d0,72(a0)			
	move.l d1,76(a0)			
	move.l d2,80(a0)			
						
	move.l _?LC113,d0			
	move.l _?LC113+4,d1			
	move.l _?LC113+8,d2			
	move.l d7,a0				
	move.l d0,(a0)				
	move.l d1,4(a0)				
	move.l d2,8(a0)				
						
	move.l 96(sp),a4			
	move.l 100(sp),a5			
	move.l 104(sp),a6			
	move.l a4,12(a0)			
	move.l a5,16(a0)			
	move.l a6,20(a0)			
						
	move.l 108(sp),a4			
	move.l 112(sp),a5			
	move.l 116(sp),a6			
	move.l a4,24(a0)			
	move.l a5,28(a0)			
	move.l a6,32(a0)			
						
	move.l 36(sp),a4			
	move.l 40(sp),a5			
	move.l 44(sp),a6			
	move.l a4,36(a0)			
	move.l a5,40(a0)			
	move.l a6,44(a0)			
						
	move.l 48(sp),a4			
	move.l 52(sp),a5			
	move.l 56(sp),a6			
	move.l a4,48(a0)			
	move.l a5,52(a0)			
	move.l a6,56(a0)			
						
	move.l 60(sp),a4			
	move.l 64(sp),a5			
	move.l 68(sp),a6			
	move.l a4,60(a0)			
	move.l a5,64(a0)			
	move.l a6,68(a0)			
						
	move.l 72(sp),a4			
	move.l 76(sp),a5			
	move.l 80(sp),a6			
	move.l a4,72(a0)			
	move.l a5,76(a0)			
	move.l a6,80(a0)			
						
	moveq #0,d0				
	jbra _?L1				
						
	.align	2				
	.globl	_new_aubio_filter_a_weighting	
						
_new_aubio_filter_a_weighting:			
	move.l d3,-(sp)				
						
	pea 7.w					
	jbsr _new_aubio_filter			
	addq.l #4,sp				
	move.l d0,d3				
						
	move.l 8(sp),-(sp)			
	move.l d0,-(sp)				
	jbsr _aubio_filter_set_a_weighting	
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L38				
						
	move.l d3,d0				
	move.l (sp)+,d3				
	rts					
_?L38:						
						
	move.l d3,-(sp)				
	jbsr _del_aubio_filter			
	addq.l #4,sp				
						
	moveq #0,d3				
						
	move.l d3,d0				
	move.l (sp)+,d3				
	rts					
						
						
