subtitle "Microchip MPLAB XC8 C Compiler v2.50 (Free license) build 20240725155939 Og9 "

pagewidth 120

	opt flic

	processor	18F4580
include "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\18f4580.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 54 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNROOT	_main
	global	_seven_segment
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"main.c"
	line	9

;initializer for _seven_segment
	dw	(0C0h)&0ffffh
	dw	(0F9h)&0ffffh
	dw	(0A4h)&0ffffh
	dw	(0B0h)&0ffffh
	dw	(099h)&0ffffh
	dw	(092h)&0ffffh
	dw	(082h)&0ffffh
	dw	(0F8h)&0ffffh
	dw	(080h)&0ffffh
	dw	(090h)&0ffffh
	global	_j
	global	_i
psect	nvCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pnvCOMRAM
__pnvCOMRAM:
	global	_i
_i:
       ds      2
	global	_PORTD
_PORTD	set	0xF83
	global	_PORTC
_PORTC	set	0xF82
	global	_TRISD
_TRISD	set	0xF95
	global	_TRISC
_TRISC	set	0xF94
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config OSC = "HS"
	config FCMEN = "OFF"
	config IESO = "OFF"
	file	"main.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
	global	_j
_j:
       ds      2
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"main.c"
	line	9
	global	_seven_segment
_seven_segment:
       ds      20
	file	"main.as"
	line	#
psect	cinit
; Initialize objects allocated to COMRAM (20 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,20
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
	line	#
; Clear objects allocated to COMRAM (2 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_main:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x0
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x0
	ds   2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x2
	ds   2
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
??___awmod:	; 1 bytes @ 0x4
	ds   1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	ds   1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds   2
??_main:	; 1 bytes @ 0x8
	ds   1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        20
;!    BSS         2
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95      9      33
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->___awdiv
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0     600
;!                                              8 COMRAM     1     1      0
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (1) ___awmod                                              6     2      4     298
;!                                              0 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) ___awdiv                                              8     4      4     302
;!                                              0 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___awdiv
;!   ___awmod
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BIGRAM            1535      0       0      0.0%
;!BITBIGSFRl         642      0       0      0.0%
;!BITBANK5           256      0       0      0.0%
;!BANK5              256      0       0      0.0%
;!BITBANK4           256      0       0      0.0%
;!BANK4              256      0       0      0.0%
;!BITBANK3           256      0       0      0.0%
;!BANK3              256      0       0      0.0%
;!BITBANK2           256      0       0      0.0%
;!BANK2              256      0       0      0.0%
;!BITBANK1           256      0       0      0.0%
;!BANK1              256      0       0      0.0%
;!BITBANK0           160      0       0      0.0%
;!BANK0              160      0       0      0.0%
;!BITBIGSFRh         125      0       0      0.0%
;!BITCOMRAM           95      0       0      0.0%
;!COMRAM              95      9      33     34.7%
;!STACK                0      0       0      0.0%
;!DATA                 0      0      33      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 12 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	12
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	12
	
_main:
;incstack = 0
	callstack 30
	line	14
	
l964:
	clrf	((c:3988))^0f00h,c	;volatile
	line	15
	clrf	((c:3989))^0f00h,c	;volatile
	line	23
	
l966:
	movlw	high(0)
	movwf	((c:_i+1))^00h,c
	movlw	low(0)
	movwf	((c:_i))^00h,c
	line	24
	
l972:
	movff	(c:_i),(c:___awdiv@dividend)
	movff	(c:_i+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_seven_segment)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:3970))^0f00h,c	;volatile
	line	25
	
l974:
	movlw	high(0)
	movwf	((c:_j+1))^00h,c
	movlw	low(0)
	movwf	((c:_j))^00h,c
	line	26
	
l980:
	movff	(c:_i),(c:___awmod@dividend)
	movff	(c:_i+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_seven_segment)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:3971))^0f00h,c	;volatile
	line	27
	
l982:
	asmopt push
asmopt off
movlw	13
movwf	(??_main+0+0)^00h,c
	movlw	252
u297:
decfsz	wreg,f
	bra	u297
	decfsz	(??_main+0+0)^00h,c,f
	bra	u297
asmopt pop

	line	25
	
l984:
	infsnz	((c:_j))^00h,c
	incf	((c:_j+1))^00h,c
	
l986:
	btfsc	((c:_j+1))^00h,c,7
	goto	u271
	movf	((c:_j+1))^00h,c,w
	bnz	u270
	movlw	100
	subwf	 ((c:_j))^00h,c,w
	btfss	status,0
	goto	u271
	goto	u270

u271:
	goto	l980
u270:
	line	23
	
l988:
	infsnz	((c:_i))^00h,c
	incf	((c:_i+1))^00h,c
	
l990:
	btfsc	((c:_i+1))^00h,c,7
	goto	u281
	movf	((c:_i+1))^00h,c,w
	bnz	u280
	movlw	100
	subwf	 ((c:_i))^00h,c,w
	btfss	status,0
	goto	u281
	goto	u280

u281:
	goto	l972
u280:
	goto	l966
	global	start
	goto	start
	callstack 0
	line	41
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] int 
;;  divisor         2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[COMRAM] unsigned char 
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\awmod.c"
	line	7
global __ptext1
__ptext1:
psect	text1
	file	"C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\awmod.c"
	line	7
	
___awmod:
;incstack = 0
	callstack 30
	line	12
	
l928:
	clrf	((c:___awmod@sign))^00h,c
	line	13
	
l930:
	btfsc	((c:___awmod@dividend+1))^00h,c,7
	goto	u210
	goto	u211

u211:
	goto	l936
u210:
	line	14
	
l932:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	15
	
l934:
	movlw	low(01h)
	movwf	((c:___awmod@sign))^00h,c
	line	17
	
l936:
	btfsc	((c:___awmod@divisor+1))^00h,c,7
	goto	u220
	goto	u221

u221:
	goto	l940
u220:
	line	18
	
l938:
	negf	((c:___awmod@divisor))^00h,c
	comf	((c:___awmod@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@divisor+1))^00h,c
	line	19
	
l940:
	movf	((c:___awmod@divisor))^00h,c,w
iorwf	((c:___awmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u231
	goto	u230

u231:
	goto	l956
u230:
	line	20
	
l942:
	movlw	low(01h)
	movwf	((c:___awmod@counter))^00h,c
	line	21
	goto	l946
	line	22
	
l944:
	bcf	status,0
	rlcf	((c:___awmod@divisor))^00h,c
	rlcf	((c:___awmod@divisor+1))^00h,c
	line	23
	incf	((c:___awmod@counter))^00h,c
	line	21
	
l946:
	
	btfss	((c:___awmod@divisor+1))^00h,c,(15)&7
	goto	u241
	goto	u240
u241:
	goto	l944
u240:
	line	26
	
l948:
		movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c,w
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u251
	goto	u250

u251:
	goto	l952
u250:
	line	27
	
l950:
	movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c

	line	28
	
l952:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1))^00h,c
	rrcf	((c:___awmod@divisor))^00h,c
	line	29
	
l954:
	decfsz	((c:___awmod@counter))^00h,c
	
	goto	l948
	line	31
	
l956:
	movf	((c:___awmod@sign))^00h,c,w
	btfsc	status,2
	goto	u261
	goto	u260
u261:
	goto	l960
u260:
	line	32
	
l958:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	33
	
l960:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	line	34
	
l275:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] int 
;;  divisor         2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMRAM] int 
;;  sign            1    5[COMRAM] unsigned char 
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\awdiv.c"
	line	7
global __ptext2
__ptext2:
psect	text2
	file	"C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\awdiv.c"
	line	7
	
___awdiv:
;incstack = 0
	callstack 30
	line	13
	
l884:
	clrf	((c:___awdiv@sign))^00h,c
	line	14
	
l886:
	btfsc	((c:___awdiv@divisor+1))^00h,c,7
	goto	u150
	goto	u151

u151:
	goto	l892
u150:
	line	15
	
l888:
	negf	((c:___awdiv@divisor))^00h,c
	comf	((c:___awdiv@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1))^00h,c
	line	16
	
l890:
	movlw	low(01h)
	movwf	((c:___awdiv@sign))^00h,c
	line	18
	
l892:
	btfsc	((c:___awdiv@dividend+1))^00h,c,7
	goto	u160
	goto	u161

u161:
	goto	l898
u160:
	line	19
	
l894:
	negf	((c:___awdiv@dividend))^00h,c
	comf	((c:___awdiv@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1))^00h,c
	line	20
	
l896:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign))^00h,c
	line	22
	
l898:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___awdiv@quotient))^00h,c
	line	23
	
l900:
	movf	((c:___awdiv@divisor))^00h,c,w
iorwf	((c:___awdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u171
	goto	u170

u171:
	goto	l920
u170:
	line	24
	
l902:
	movlw	low(01h)
	movwf	((c:___awdiv@counter))^00h,c
	line	25
	goto	l906
	line	26
	
l904:
	bcf	status,0
	rlcf	((c:___awdiv@divisor))^00h,c
	rlcf	((c:___awdiv@divisor+1))^00h,c
	line	27
	incf	((c:___awdiv@counter))^00h,c
	line	25
	
l906:
	
	btfss	((c:___awdiv@divisor+1))^00h,c,(15)&7
	goto	u181
	goto	u180
u181:
	goto	l904
u180:
	line	30
	
l908:
	bcf	status,0
	rlcf	((c:___awdiv@quotient))^00h,c
	rlcf	((c:___awdiv@quotient+1))^00h,c
	line	31
	
l910:
		movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c,w
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u191
	goto	u190

u191:
	goto	l916
u190:
	line	32
	
l912:
	movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c

	line	33
	
l914:
	bsf	(0+(0/8)+(c:___awdiv@quotient))^00h,c,(0)&7
	line	35
	
l916:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1))^00h,c
	rrcf	((c:___awdiv@divisor))^00h,c
	line	36
	
l918:
	decfsz	((c:___awdiv@counter))^00h,c
	
	goto	l908
	line	38
	
l920:
	movf	((c:___awdiv@sign))^00h,c,w
	btfsc	status,2
	goto	u201
	goto	u200
u201:
	goto	l924
u200:
	line	39
	
l922:
	negf	((c:___awdiv@quotient))^00h,c
	comf	((c:___awdiv@quotient+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1))^00h,c
	line	40
	
l924:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	line	41
	
l262:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
