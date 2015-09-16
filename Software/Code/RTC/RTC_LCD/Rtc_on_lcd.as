opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_LCD_Init
	FNCALL	_main,_DS1307_Init
	FNCALL	_main,_DS1307_SetTime
	FNCALL	_main,_DS1307_SetDate
	FNCALL	_main,_LCD_DisplayString
	FNCALL	_main,_LCD_GoToLineTwo
	FNCALL	_main,_DS1307_GetTime
	FNCALL	_main,_LCD_GoToXY
	FNCALL	_main,_LCD_DisplayRtcTime
	FNCALL	_main,_DS1307_GetDate
	FNCALL	_main,_LCD_DisplayRtcDate
	FNCALL	_DS1307_GetDate,_I2C_Start
	FNCALL	_DS1307_GetDate,_DS1307_Write
	FNCALL	_DS1307_GetDate,_I2C_Stop
	FNCALL	_DS1307_GetDate,_DS1307_Read
	FNCALL	_DS1307_GetDate,_I2C_Ack
	FNCALL	_DS1307_GetDate,_I2C_NoAck
	FNCALL	_DS1307_GetTime,_I2C_Start
	FNCALL	_DS1307_GetTime,_DS1307_Write
	FNCALL	_DS1307_GetTime,_I2C_Stop
	FNCALL	_DS1307_GetTime,_DS1307_Read
	FNCALL	_DS1307_GetTime,_I2C_Ack
	FNCALL	_DS1307_GetTime,_I2C_NoAck
	FNCALL	_DS1307_SetDate,_I2C_Start
	FNCALL	_DS1307_SetDate,_DS1307_Write
	FNCALL	_DS1307_SetDate,_I2C_Stop
	FNCALL	_DS1307_SetTime,_I2C_Start
	FNCALL	_DS1307_SetTime,_DS1307_Write
	FNCALL	_DS1307_SetTime,_I2C_Stop
	FNCALL	_DS1307_Init,_I2C_Init
	FNCALL	_DS1307_Init,_I2C_Start
	FNCALL	_DS1307_Init,_DS1307_Write
	FNCALL	_DS1307_Init,_I2C_Stop
	FNCALL	_DS1307_Write,_I2C_Write
	FNCALL	_DS1307_Write,_I2C_Clock
	FNCALL	_LCD_DisplayRtcDate,_LCD_DataWrite
	FNCALL	_LCD_DisplayRtcTime,_LCD_DataWrite
	FNCALL	_LCD_GoToXY,_LCD_CmdWrite
	FNCALL	_LCD_GoToLineTwo,_LCD_CmdWrite
	FNCALL	_LCD_DisplayString,_LCD_DataWrite
	FNCALL	_LCD_Init,_delay_us
	FNCALL	_LCD_Init,_LCD_CmdWrite
	FNCALL	_LCD_DataWrite,_delay_us
	FNCALL	_LCD_DataWrite,_delay_ms
	FNCALL	_LCD_CmdWrite,_delay_us
	FNCALL	_LCD_CmdWrite,_delay_ms
	FNCALL	_I2C_NoAck,_I2C_Clock
	FNCALL	_I2C_Ack,_I2C_Clock
	FNCALL	_DS1307_Read,_I2C_Read
	FNCALL	_I2C_Write,_I2C_Clock
	FNCALL	_I2C_Read,_delay_us
	FNCALL	_I2C_Clock,_delay_us
	FNCALL	_I2C_Stop,_delay_us
	FNCALL	_I2C_Start,_delay_us
	FNCALL	_delay_ms,_delay_us
	FNROOT	_main
	global	_PORTB
psect	text520,local,class=CODE,delta=2
global __ptext520
__ptext520:
_PORTB	set	6
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_TRISB
_TRISB	set	134
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	84	;'T'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"Rtc_on_lcd.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_LCD_Init
?_LCD_Init:	; 0 bytes @ 0x0
	global	?_DS1307_Init
?_DS1307_Init:	; 0 bytes @ 0x0
	global	?_LCD_DisplayString
?_LCD_DisplayString:	; 0 bytes @ 0x0
	global	?_LCD_GoToLineTwo
?_LCD_GoToLineTwo:	; 0 bytes @ 0x0
	global	?_I2C_Init
?_I2C_Init:	; 0 bytes @ 0x0
	global	??_I2C_Init
??_I2C_Init:	; 0 bytes @ 0x0
	global	?_I2C_Start
?_I2C_Start:	; 0 bytes @ 0x0
	global	?_DS1307_Write
?_DS1307_Write:	; 0 bytes @ 0x0
	global	?_I2C_Stop
?_I2C_Stop:	; 0 bytes @ 0x0
	global	?_I2C_Write
?_I2C_Write:	; 0 bytes @ 0x0
	global	?_I2C_Clock
?_I2C_Clock:	; 0 bytes @ 0x0
	global	?_I2C_Ack
?_I2C_Ack:	; 0 bytes @ 0x0
	global	?_I2C_NoAck
?_I2C_NoAck:	; 0 bytes @ 0x0
	global	?_LCD_CmdWrite
?_LCD_CmdWrite:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_delay_us
?_delay_us:	; 0 bytes @ 0x0
	global	?_LCD_DataWrite
?_LCD_DataWrite:	; 0 bytes @ 0x0
	global	?_I2C_Read
?_I2C_Read:	; 1 bytes @ 0x0
	global	?_DS1307_Read
?_DS1307_Read:	; 1 bytes @ 0x0
	global	delay_us@us_count
delay_us@us_count:	; 2 bytes @ 0x0
	ds	2
	global	??_I2C_Start
??_I2C_Start:	; 0 bytes @ 0x2
	global	??_I2C_Stop
??_I2C_Stop:	; 0 bytes @ 0x2
	global	??_I2C_Write
??_I2C_Write:	; 0 bytes @ 0x2
	global	??_I2C_Clock
??_I2C_Clock:	; 0 bytes @ 0x2
	global	??_I2C_Read
??_I2C_Read:	; 0 bytes @ 0x2
	global	??_I2C_Ack
??_I2C_Ack:	; 0 bytes @ 0x2
	global	??_I2C_NoAck
??_I2C_NoAck:	; 0 bytes @ 0x2
	global	??_delay_us
??_delay_us:	; 0 bytes @ 0x2
	global	?_delay_ms
?_delay_ms:	; 0 bytes @ 0x2
	global	delay_ms@ms_count
delay_ms@ms_count:	; 2 bytes @ 0x2
	ds	2
	global	??_LCD_CmdWrite
??_LCD_CmdWrite:	; 0 bytes @ 0x4
	global	??_delay_ms
??_delay_ms:	; 0 bytes @ 0x4
	global	??_LCD_DataWrite
??_LCD_DataWrite:	; 0 bytes @ 0x4
	global	I2C_Write@dat
I2C_Write@dat:	; 1 bytes @ 0x4
	global	I2C_Read@i
I2C_Read@i:	; 1 bytes @ 0x4
	ds	1
	global	I2C_Write@i
I2C_Write@i:	; 1 bytes @ 0x5
	global	I2C_Read@dat
I2C_Read@dat:	; 1 bytes @ 0x5
	global	LCD_CmdWrite@cmd
LCD_CmdWrite@cmd:	; 1 bytes @ 0x5
	global	LCD_DataWrite@dat
LCD_DataWrite@dat:	; 1 bytes @ 0x5
	ds	1
	global	??_LCD_Init
??_LCD_Init:	; 0 bytes @ 0x6
	global	??_LCD_DisplayString
??_LCD_DisplayString:	; 0 bytes @ 0x6
	global	??_LCD_GoToLineTwo
??_LCD_GoToLineTwo:	; 0 bytes @ 0x6
	global	?_LCD_GoToXY
?_LCD_GoToXY:	; 0 bytes @ 0x6
	global	?_LCD_DisplayRtcTime
?_LCD_DisplayRtcTime:	; 0 bytes @ 0x6
	global	?_LCD_DisplayRtcDate
?_LCD_DisplayRtcDate:	; 0 bytes @ 0x6
	global	??_DS1307_Write
??_DS1307_Write:	; 0 bytes @ 0x6
	global	??_DS1307_Read
??_DS1307_Read:	; 0 bytes @ 0x6
	global	DS1307_Write@dat
DS1307_Write@dat:	; 1 bytes @ 0x6
	global	LCD_GoToXY@col
LCD_GoToXY@col:	; 1 bytes @ 0x6
	global	LCD_DisplayRtcTime@min
LCD_DisplayRtcTime@min:	; 1 bytes @ 0x6
	global	LCD_DisplayRtcDate@month
LCD_DisplayRtcDate@month:	; 1 bytes @ 0x6
	ds	1
	global	??_DS1307_Init
??_DS1307_Init:	; 0 bytes @ 0x7
	global	?_DS1307_SetTime
?_DS1307_SetTime:	; 0 bytes @ 0x7
	global	?_DS1307_SetDate
?_DS1307_SetDate:	; 0 bytes @ 0x7
	global	??_LCD_GoToXY
??_LCD_GoToXY:	; 0 bytes @ 0x7
	global	DS1307_Read@dat
DS1307_Read@dat:	; 1 bytes @ 0x7
	global	DS1307_SetTime@mm
DS1307_SetTime@mm:	; 1 bytes @ 0x7
	global	DS1307_SetDate@mm
DS1307_SetDate@mm:	; 1 bytes @ 0x7
	global	LCD_DisplayString@string_ptr
LCD_DisplayString@string_ptr:	; 1 bytes @ 0x7
	global	LCD_DisplayRtcTime@sec
LCD_DisplayRtcTime@sec:	; 1 bytes @ 0x7
	global	LCD_DisplayRtcDate@year
LCD_DisplayRtcDate@year:	; 1 bytes @ 0x7
	ds	1
	global	?_DS1307_GetTime
?_DS1307_GetTime:	; 0 bytes @ 0x8
	global	??_LCD_DisplayRtcTime
??_LCD_DisplayRtcTime:	; 0 bytes @ 0x8
	global	?_DS1307_GetDate
?_DS1307_GetDate:	; 0 bytes @ 0x8
	global	??_LCD_DisplayRtcDate
??_LCD_DisplayRtcDate:	; 0 bytes @ 0x8
	global	DS1307_SetTime@ss
DS1307_SetTime@ss:	; 1 bytes @ 0x8
	global	DS1307_SetDate@yy
DS1307_SetDate@yy:	; 1 bytes @ 0x8
	global	DS1307_GetTime@m_ptr
DS1307_GetTime@m_ptr:	; 1 bytes @ 0x8
	global	DS1307_GetDate@m_ptr
DS1307_GetDate@m_ptr:	; 1 bytes @ 0x8
	ds	1
	global	??_DS1307_SetTime
??_DS1307_SetTime:	; 0 bytes @ 0x9
	global	??_DS1307_SetDate
??_DS1307_SetDate:	; 0 bytes @ 0x9
	global	DS1307_SetTime@hh
DS1307_SetTime@hh:	; 1 bytes @ 0x9
	global	DS1307_SetDate@dd
DS1307_SetDate@dd:	; 1 bytes @ 0x9
	global	DS1307_GetTime@s_ptr
DS1307_GetTime@s_ptr:	; 1 bytes @ 0x9
	global	DS1307_GetDate@y_ptr
DS1307_GetDate@y_ptr:	; 1 bytes @ 0x9
	global	LCD_GoToXY@row
LCD_GoToXY@row:	; 1 bytes @ 0x9
	global	LCD_DisplayRtcTime@hour
LCD_DisplayRtcTime@hour:	; 1 bytes @ 0x9
	global	LCD_DisplayRtcDate@day
LCD_DisplayRtcDate@day:	; 1 bytes @ 0x9
	ds	1
	global	??_DS1307_GetTime
??_DS1307_GetTime:	; 0 bytes @ 0xA
	global	??_DS1307_GetDate
??_DS1307_GetDate:	; 0 bytes @ 0xA
	global	LCD_GoToXY@pos
LCD_GoToXY@pos:	; 1 bytes @ 0xA
	ds	1
	global	DS1307_GetTime@h_ptr
DS1307_GetTime@h_ptr:	; 1 bytes @ 0xB
	global	DS1307_GetDate@d_ptr
DS1307_GetDate@d_ptr:	; 1 bytes @ 0xB
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xC
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@sec
main@sec:	; 1 bytes @ 0x0
	ds	1
	global	main@min
main@min:	; 1 bytes @ 0x1
	ds	1
	global	main@hour
main@hour:	; 1 bytes @ 0x2
	ds	1
	global	main@day
main@day:	; 1 bytes @ 0x3
	ds	1
	global	main@month
main@month:	; 1 bytes @ 0x4
	ds	1
	global	main@year
main@year:	; 1 bytes @ 0x5
	ds	1
;;Data sizes: Strings 14, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      6       6
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; LCD_DisplayString@string_ptr	PTR unsigned char  size(1) Largest target is 7
;;		 -> STR_2(CODE[7]), STR_1(CODE[7]), 
;;
;; DS1307_GetDate@y_ptr	PTR unsigned char  size(1) Largest target is 1
;;		 -> main@year(BANK0[1]), 
;;
;; DS1307_GetDate@m_ptr	PTR unsigned char  size(1) Largest target is 1
;;		 -> main@month(BANK0[1]), 
;;
;; DS1307_GetDate@d_ptr	PTR unsigned char  size(1) Largest target is 1
;;		 -> main@day(BANK0[1]), 
;;
;; DS1307_GetTime@h_ptr	PTR unsigned char  size(1) Largest target is 1
;;		 -> main@hour(BANK0[1]), 
;;
;; DS1307_GetTime@m_ptr	PTR unsigned char  size(1) Largest target is 1
;;		 -> main@min(BANK0[1]), 
;;
;; DS1307_GetTime@s_ptr	PTR unsigned char  size(1) Largest target is 1
;;		 -> main@sec(BANK0[1]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_DS1307_GetTime
;;   _main->_DS1307_GetDate
;;   _DS1307_GetDate->_DS1307_Read
;;   _DS1307_GetTime->_DS1307_Read
;;   _DS1307_SetDate->_DS1307_Write
;;   _DS1307_SetTime->_DS1307_Write
;;   _DS1307_Init->_DS1307_Write
;;   _DS1307_Write->_I2C_Write
;;   _LCD_DisplayRtcDate->_LCD_DataWrite
;;   _LCD_DisplayRtcTime->_LCD_DataWrite
;;   _LCD_GoToXY->_LCD_CmdWrite
;;   _LCD_GoToLineTwo->_LCD_CmdWrite
;;   _LCD_DisplayString->_LCD_DataWrite
;;   _LCD_Init->_LCD_CmdWrite
;;   _LCD_DataWrite->_delay_ms
;;   _LCD_CmdWrite->_delay_ms
;;   _DS1307_Read->_I2C_Read
;;   _I2C_Read->_delay_us
;;   _I2C_Clock->_delay_us
;;   _I2C_Stop->_delay_us
;;   _I2C_Start->_delay_us
;;   _delay_ms->_delay_us
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 8     8      0    3123
;;                                             12 COMMON     2     2      0
;;                                              0 BANK0      6     6      0
;;                           _LCD_Init
;;                        _DS1307_Init
;;                     _DS1307_SetTime
;;                     _DS1307_SetDate
;;                  _LCD_DisplayString
;;                    _LCD_GoToLineTwo
;;                     _DS1307_GetTime
;;                         _LCD_GoToXY
;;                 _LCD_DisplayRtcTime
;;                     _DS1307_GetDate
;;                 _LCD_DisplayRtcDate
;; ---------------------------------------------------------------------------------
;; (1) _DS1307_GetDate                                       4     2      2     478
;;                                              8 COMMON     4     2      2
;;                          _I2C_Start
;;                       _DS1307_Write
;;                           _I2C_Stop
;;                        _DS1307_Read
;;                            _I2C_Ack
;;                          _I2C_NoAck
;; ---------------------------------------------------------------------------------
;; (1) _DS1307_GetTime                                       4     2      2     478
;;                                              8 COMMON     4     2      2
;;                          _I2C_Start
;;                       _DS1307_Write
;;                           _I2C_Stop
;;                        _DS1307_Read
;;                            _I2C_Ack
;;                          _I2C_NoAck
;; ---------------------------------------------------------------------------------
;; (1) _DS1307_SetDate                                       3     1      2     271
;;                                              7 COMMON     3     1      2
;;                          _I2C_Start
;;                       _DS1307_Write
;;                           _I2C_Stop
;; ---------------------------------------------------------------------------------
;; (1) _DS1307_SetTime                                       3     1      2     271
;;                                              7 COMMON     3     1      2
;;                          _I2C_Start
;;                       _DS1307_Write
;;                           _I2C_Stop
;; ---------------------------------------------------------------------------------
;; (1) _DS1307_Init                                          0     0      0     205
;;                           _I2C_Init
;;                          _I2C_Start
;;                       _DS1307_Write
;;                           _I2C_Stop
;; ---------------------------------------------------------------------------------
;; (2) _DS1307_Write                                         1     1      0     159
;;                                              6 COMMON     1     1      0
;;                          _I2C_Write
;;                          _I2C_Clock
;; ---------------------------------------------------------------------------------
;; (1) _LCD_DisplayRtcDate                                   4     2      2     245
;;                                              6 COMMON     4     2      2
;;                      _LCD_DataWrite
;; ---------------------------------------------------------------------------------
;; (1) _LCD_DisplayRtcTime                                   4     2      2     245
;;                                              6 COMMON     4     2      2
;;                      _LCD_DataWrite
;; ---------------------------------------------------------------------------------
;; (1) _LCD_GoToXY                                           5     4      1     247
;;                                              6 COMMON     5     4      1
;;                       _LCD_CmdWrite
;; ---------------------------------------------------------------------------------
;; (1) _LCD_GoToLineTwo                                      0     0      0     113
;;                       _LCD_CmdWrite
;; ---------------------------------------------------------------------------------
;; (1) _LCD_DisplayString                                    2     2      0     158
;;                                              6 COMMON     2     2      0
;;                      _LCD_DataWrite
;; ---------------------------------------------------------------------------------
;; (1) _LCD_Init                                             0     0      0     136
;;                           _delay_us
;;                       _LCD_CmdWrite
;; ---------------------------------------------------------------------------------
;; (2) _LCD_DataWrite                                        2     2      0     113
;;                                              4 COMMON     2     2      0
;;                           _delay_us
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (2) _LCD_CmdWrite                                         2     2      0     113
;;                                              4 COMMON     2     2      0
;;                           _delay_us
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (2) _I2C_NoAck                                            0     0      0      23
;;                          _I2C_Clock
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Ack                                              0     0      0      23
;;                          _I2C_Clock
;; ---------------------------------------------------------------------------------
;; (2) _DS1307_Read                                          2     2      0     161
;;                                              6 COMMON     2     2      0
;;                           _I2C_Read
;; ---------------------------------------------------------------------------------
;; (3) _I2C_Write                                            4     4      0     114
;;                                              2 COMMON     4     4      0
;;                          _I2C_Clock
;; ---------------------------------------------------------------------------------
;; (3) _I2C_Read                                             4     4      0     138
;;                                              2 COMMON     4     4      0
;;                           _delay_us
;; ---------------------------------------------------------------------------------
;; (3) _I2C_Clock                                            0     0      0      23
;;                           _delay_us
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Stop                                             0     0      0      23
;;                           _delay_us
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Start                                            0     0      0      23
;;                           _delay_us
;; ---------------------------------------------------------------------------------
;; (3) _delay_ms                                             2     0      2      46
;;                                              2 COMMON     2     0      2
;;                           _delay_us
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _delay_us                                             2     0      2      23
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _LCD_Init
;;     _delay_us
;;     _LCD_CmdWrite
;;       _delay_us
;;       _delay_ms
;;         _delay_us
;;   _DS1307_Init
;;     _I2C_Init
;;     _I2C_Start
;;       _delay_us
;;     _DS1307_Write
;;       _I2C_Write
;;         _I2C_Clock
;;           _delay_us
;;       _I2C_Clock
;;         _delay_us
;;     _I2C_Stop
;;       _delay_us
;;   _DS1307_SetTime
;;     _I2C_Start
;;       _delay_us
;;     _DS1307_Write
;;       _I2C_Write
;;         _I2C_Clock
;;           _delay_us
;;       _I2C_Clock
;;         _delay_us
;;     _I2C_Stop
;;       _delay_us
;;   _DS1307_SetDate
;;     _I2C_Start
;;       _delay_us
;;     _DS1307_Write
;;       _I2C_Write
;;         _I2C_Clock
;;           _delay_us
;;       _I2C_Clock
;;         _delay_us
;;     _I2C_Stop
;;       _delay_us
;;   _LCD_DisplayString
;;     _LCD_DataWrite
;;       _delay_us
;;       _delay_ms
;;         _delay_us
;;   _LCD_GoToLineTwo
;;     _LCD_CmdWrite
;;       _delay_us
;;       _delay_ms
;;         _delay_us
;;   _DS1307_GetTime
;;     _I2C_Start
;;       _delay_us
;;     _DS1307_Write
;;       _I2C_Write
;;         _I2C_Clock
;;           _delay_us
;;       _I2C_Clock
;;         _delay_us
;;     _I2C_Stop
;;       _delay_us
;;     _DS1307_Read
;;       _I2C_Read
;;         _delay_us
;;     _I2C_Ack
;;       _I2C_Clock
;;         _delay_us
;;     _I2C_NoAck
;;       _I2C_Clock
;;         _delay_us
;;   _LCD_GoToXY
;;     _LCD_CmdWrite
;;       _delay_us
;;       _delay_ms
;;         _delay_us
;;   _LCD_DisplayRtcTime
;;     _LCD_DataWrite
;;       _delay_us
;;       _delay_ms
;;         _delay_us
;;   _DS1307_GetDate
;;     _I2C_Start
;;       _delay_us
;;     _DS1307_Write
;;       _I2C_Write
;;         _I2C_Clock
;;           _delay_us
;;       _I2C_Clock
;;         _delay_us
;;     _I2C_Stop
;;       _delay_us
;;     _DS1307_Read
;;       _I2C_Read
;;         _delay_us
;;     _I2C_Ack
;;       _I2C_Clock
;;         _delay_us
;;     _I2C_NoAck
;;       _I2C_Clock
;;         _delay_us
;;   _LCD_DisplayRtcDate
;;     _LCD_DataWrite
;;       _delay_us
;;       _delay_ms
;;         _delay_us
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      6       6       5        7.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 19 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  year            1    5[BANK0 ] unsigned char 
;;  month           1    4[BANK0 ] unsigned char 
;;  day             1    3[BANK0 ] unsigned char 
;;  hour            1    2[BANK0 ] unsigned char 
;;  min             1    1[BANK0 ] unsigned char 
;;  sec             1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       6       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCD_Init
;;		_DS1307_Init
;;		_DS1307_SetTime
;;		_DS1307_SetDate
;;		_LCD_DisplayString
;;		_LCD_GoToLineTwo
;;		_DS1307_GetTime
;;		_LCD_GoToXY
;;		_LCD_DisplayRtcTime
;;		_DS1307_GetDate
;;		_LCD_DisplayRtcDate
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\main.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	23
	
l6189:	
;main.c: 20: unsigned char sec,min,hour,day,month,year;
;main.c: 23: LCD_Init();
	fcall	_LCD_Init
	line	26
;main.c: 26: DS1307_Init();
	fcall	_DS1307_Init
	line	30
;main.c: 30: DS1307_SetTime(0x10,0x40,0x20);
	movlw	(040h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_DS1307_SetTime)
	movlw	(020h)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_DS1307_SetTime)+01h
	movlw	(010h)
	fcall	_DS1307_SetTime
	line	31
;main.c: 31: DS1307_SetDate(0x01,0x12,0x12);
	movlw	(012h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_DS1307_SetDate)
	movlw	(012h)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_DS1307_SetDate)+01h
	movlw	(01h)
	fcall	_DS1307_SetDate
	line	34
	
l6191:	
;main.c: 34: LCD_DisplayString("Time: ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_LCD_DisplayString
	line	37
	
l6193:	
;main.c: 37: LCD_GoToLineTwo();
	fcall	_LCD_GoToLineTwo
	line	38
;main.c: 38: LCD_DisplayString("Date: ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_LCD_DisplayString
	line	41
;main.c: 41: while(1)
	
l707:	
	line	44
;main.c: 42: {
;main.c: 44: DS1307_GetTime(&hour,&min,&sec);
	movlw	(main@min)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_DS1307_GetTime)
	movlw	(main@sec)&0ffh
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_DS1307_GetTime)+01h
	movlw	(main@hour)&0ffh
	fcall	_DS1307_GetTime
	line	47
	
l6195:	
;main.c: 47: LCD_GoToXY(0,6);
	movlw	(06h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_LCD_GoToXY)
	movlw	(0)
	fcall	_LCD_GoToXY
	line	48
	
l6197:	
;main.c: 48: LCD_DisplayRtcTime(hour,min,sec);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@min),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_LCD_DisplayRtcTime)
	movf	(main@sec),w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_LCD_DisplayRtcTime)+01h
	movf	(main@hour),w
	fcall	_LCD_DisplayRtcTime
	line	52
;main.c: 52: DS1307_GetDate(&day,&month,&year);
	movlw	(main@month)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_DS1307_GetDate)
	movlw	(main@year)&0ffh
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_DS1307_GetDate)+01h
	movlw	(main@day)&0ffh
	fcall	_DS1307_GetDate
	line	55
	
l6199:	
;main.c: 55: LCD_GoToXY(1,6);
	movlw	(06h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_LCD_GoToXY)
	movlw	(01h)
	fcall	_LCD_GoToXY
	line	56
	
l6201:	
;main.c: 56: LCD_DisplayRtcDate(day,month,year);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@month),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_LCD_DisplayRtcDate)
	movf	(main@year),w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_LCD_DisplayRtcDate)+01h
	movf	(main@day),w
	fcall	_LCD_DisplayRtcDate
	goto	l707
	line	57
	
l708:	
	line	41
	goto	l707
	
l709:	
	line	59
	
l710:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_DS1307_GetDate
psect	text521,local,class=CODE,delta=2
global __ptext521
__ptext521:

;; *************** function _DS1307_GetDate *****************
;; Defined at:
;;		line 218 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\ds1307.c"
;; Parameters:    Size  Location     Type
;;  d_ptr           1    wreg     PTR unsigned char 
;;		 -> main@day(1), 
;;  m_ptr           1    8[COMMON] PTR unsigned char 
;;		 -> main@month(1), 
;;  y_ptr           1    9[COMMON] PTR unsigned char 
;;		 -> main@year(1), 
;; Auto vars:     Size  Location     Type
;;  d_ptr           1   11[COMMON] PTR unsigned char 
;;		 -> main@day(1), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_I2C_Start
;;		_DS1307_Write
;;		_I2C_Stop
;;		_DS1307_Read
;;		_I2C_Ack
;;		_I2C_NoAck
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text521
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\ds1307.c"
	line	218
	global	__size_of_DS1307_GetDate
	__size_of_DS1307_GetDate	equ	__end_of_DS1307_GetDate-_DS1307_GetDate
	
_DS1307_GetDate:	
	opt	stack 3
; Regs used in _DS1307_GetDate: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;DS1307_GetDate@d_ptr stored from wreg
	movwf	(DS1307_GetDate@d_ptr)
	line	219
	
l6179:	
;ds1307.c: 219: I2C_Start();
	fcall	_I2C_Start
	line	221
;ds1307.c: 221: DS1307_Write(0xD0);
	movlw	(0D0h)
	fcall	_DS1307_Write
	line	222
;ds1307.c: 222: DS1307_Write(0x04);
	movlw	(04h)
	fcall	_DS1307_Write
	line	224
;ds1307.c: 224: I2C_Stop();
	fcall	_I2C_Stop
	line	227
;ds1307.c: 227: I2C_Start();
	fcall	_I2C_Start
	line	228
;ds1307.c: 228: DS1307_Write(0xD1);
	movlw	(0D1h)
	fcall	_DS1307_Write
	line	231
	
l6181:	
;ds1307.c: 231: *d_ptr = DS1307_Read(); I2C_Ack();
	fcall	_DS1307_Read
	movwf	(??_DS1307_GetDate+0)+0
	movf	(DS1307_GetDate@d_ptr),w
	movwf	fsr0
	movf	(??_DS1307_GetDate+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6183:	
	fcall	_I2C_Ack
	line	232
;ds1307.c: 232: *m_ptr = DS1307_Read(); I2C_Ack();
	fcall	_DS1307_Read
	movwf	(??_DS1307_GetDate+0)+0
	movf	(DS1307_GetDate@m_ptr),w
	movwf	fsr0
	movf	(??_DS1307_GetDate+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6185:	
	fcall	_I2C_Ack
	line	233
	
l6187:	
;ds1307.c: 233: *y_ptr = DS1307_Read(); I2C_NoAck();
	fcall	_DS1307_Read
	movwf	(??_DS1307_GetDate+0)+0
	movf	(DS1307_GetDate@y_ptr),w
	movwf	fsr0
	movf	(??_DS1307_GetDate+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	fcall	_I2C_NoAck
	line	235
;ds1307.c: 235: I2C_Stop();
	fcall	_I2C_Stop
	line	236
	
l2131:	
	return
	opt stack 0
GLOBAL	__end_of_DS1307_GetDate
	__end_of_DS1307_GetDate:
;; =============== function _DS1307_GetDate ends ============

	signat	_DS1307_GetDate,12408
	global	_DS1307_GetTime
psect	text522,local,class=CODE,delta=2
global __ptext522
__ptext522:

;; *************** function _DS1307_GetTime *****************
;; Defined at:
;;		line 180 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\ds1307.c"
;; Parameters:    Size  Location     Type
;;  h_ptr           1    wreg     PTR unsigned char 
;;		 -> main@hour(1), 
;;  m_ptr           1    8[COMMON] PTR unsigned char 
;;		 -> main@min(1), 
;;  s_ptr           1    9[COMMON] PTR unsigned char 
;;		 -> main@sec(1), 
;; Auto vars:     Size  Location     Type
;;  h_ptr           1   11[COMMON] PTR unsigned char 
;;		 -> main@hour(1), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_I2C_Start
;;		_DS1307_Write
;;		_I2C_Stop
;;		_DS1307_Read
;;		_I2C_Ack
;;		_I2C_NoAck
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text522
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\ds1307.c"
	line	180
	global	__size_of_DS1307_GetTime
	__size_of_DS1307_GetTime	equ	__end_of_DS1307_GetTime-_DS1307_GetTime
	
_DS1307_GetTime:	
	opt	stack 3
; Regs used in _DS1307_GetTime: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;DS1307_GetTime@h_ptr stored from wreg
	movwf	(DS1307_GetTime@h_ptr)
	line	181
	
l6169:	
;ds1307.c: 181: I2C_Start();
	fcall	_I2C_Start
	line	183
;ds1307.c: 183: DS1307_Write(0xD0);
	movlw	(0D0h)
	fcall	_DS1307_Write
	line	184
;ds1307.c: 184: DS1307_Write(0x00);
	movlw	(0)
	fcall	_DS1307_Write
	line	186
;ds1307.c: 186: I2C_Stop();
	fcall	_I2C_Stop
	line	188
;ds1307.c: 188: I2C_Start();
	fcall	_I2C_Start
	line	189
;ds1307.c: 189: DS1307_Write(0xD1);
	movlw	(0D1h)
	fcall	_DS1307_Write
	line	192
	
l6171:	
;ds1307.c: 192: *s_ptr = DS1307_Read(); I2C_Ack();
	fcall	_DS1307_Read
	movwf	(??_DS1307_GetTime+0)+0
	movf	(DS1307_GetTime@s_ptr),w
	movwf	fsr0
	movf	(??_DS1307_GetTime+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6173:	
	fcall	_I2C_Ack
	line	193
;ds1307.c: 193: *m_ptr = DS1307_Read(); I2C_Ack();
	fcall	_DS1307_Read
	movwf	(??_DS1307_GetTime+0)+0
	movf	(DS1307_GetTime@m_ptr),w
	movwf	fsr0
	movf	(??_DS1307_GetTime+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6175:	
	fcall	_I2C_Ack
	line	194
	
l6177:	
;ds1307.c: 194: *h_ptr = DS1307_Read(); I2C_NoAck();
	fcall	_DS1307_Read
	movwf	(??_DS1307_GetTime+0)+0
	movf	(DS1307_GetTime@h_ptr),w
	movwf	fsr0
	movf	(??_DS1307_GetTime+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	fcall	_I2C_NoAck
	line	196
;ds1307.c: 196: I2C_Stop();
	fcall	_I2C_Stop
	line	197
	
l2128:	
	return
	opt stack 0
GLOBAL	__end_of_DS1307_GetTime
	__end_of_DS1307_GetTime:
;; =============== function _DS1307_GetTime ends ============

	signat	_DS1307_GetTime,12408
	global	_DS1307_SetDate
psect	text523,local,class=CODE,delta=2
global __ptext523
__ptext523:

;; *************** function _DS1307_SetDate *****************
;; Defined at:
;;		line 149 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\ds1307.c"
;; Parameters:    Size  Location     Type
;;  dd              1    wreg     unsigned char 
;;  mm              1    7[COMMON] unsigned char 
;;  yy              1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dd              1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_I2C_Start
;;		_DS1307_Write
;;		_I2C_Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text523
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\ds1307.c"
	line	149
	global	__size_of_DS1307_SetDate
	__size_of_DS1307_SetDate	equ	__end_of_DS1307_SetDate-_DS1307_SetDate
	
_DS1307_SetDate:	
	opt	stack 3
; Regs used in _DS1307_SetDate: [wreg+status,2+status,0+pclath+cstack]
;DS1307_SetDate@dd stored from wreg
	movwf	(DS1307_SetDate@dd)
	line	150
	
l6167:	
;ds1307.c: 150: I2C_Start();
	fcall	_I2C_Start
	line	152
;ds1307.c: 152: DS1307_Write(0xD0);
	movlw	(0D0h)
	fcall	_DS1307_Write
	line	153
;ds1307.c: 153: DS1307_Write(0x04);
	movlw	(04h)
	fcall	_DS1307_Write
	line	155
;ds1307.c: 155: DS1307_Write(dd);
	movf	(DS1307_SetDate@dd),w
	fcall	_DS1307_Write
	line	156
;ds1307.c: 156: DS1307_Write(mm);
	movf	(DS1307_SetDate@mm),w
	fcall	_DS1307_Write
	line	157
;ds1307.c: 157: DS1307_Write(yy);
	movf	(DS1307_SetDate@yy),w
	fcall	_DS1307_Write
	line	159
;ds1307.c: 159: I2C_Stop();
	fcall	_I2C_Stop
	line	160
	
l2125:	
	return
	opt stack 0
GLOBAL	__end_of_DS1307_SetDate
	__end_of_DS1307_SetDate:
;; =============== function _DS1307_SetDate ends ============

	signat	_DS1307_SetDate,12408
	global	_DS1307_SetTime
psect	text524,local,class=CODE,delta=2
global __ptext524
__ptext524:

;; *************** function _DS1307_SetTime *****************
;; Defined at:
;;		line 117 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\ds1307.c"
;; Parameters:    Size  Location     Type
;;  hh              1    wreg     unsigned char 
;;  mm              1    7[COMMON] unsigned char 
;;  ss              1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  hh              1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_I2C_Start
;;		_DS1307_Write
;;		_I2C_Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text524
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\ds1307.c"
	line	117
	global	__size_of_DS1307_SetTime
	__size_of_DS1307_SetTime	equ	__end_of_DS1307_SetTime-_DS1307_SetTime
	
_DS1307_SetTime:	
	opt	stack 3
; Regs used in _DS1307_SetTime: [wreg+status,2+status,0+pclath+cstack]
;DS1307_SetTime@hh stored from wreg
	movwf	(DS1307_SetTime@hh)
	line	118
	
l6165:	
;ds1307.c: 118: I2C_Start();
	fcall	_I2C_Start
	line	120
;ds1307.c: 120: DS1307_Write(0xD0);
	movlw	(0D0h)
	fcall	_DS1307_Write
	line	121
;ds1307.c: 121: DS1307_Write(0x00);
	movlw	(0)
	fcall	_DS1307_Write
	line	123
;ds1307.c: 123: DS1307_Write(ss);
	movf	(DS1307_SetTime@ss),w
	fcall	_DS1307_Write
	line	124
;ds1307.c: 124: DS1307_Write(mm);
	movf	(DS1307_SetTime@mm),w
	fcall	_DS1307_Write
	line	125
;ds1307.c: 125: DS1307_Write(hh);
	movf	(DS1307_SetTime@hh),w
	fcall	_DS1307_Write
	line	127
;ds1307.c: 127: I2C_Stop();
	fcall	_I2C_Stop
	line	128
	
l2122:	
	return
	opt stack 0
GLOBAL	__end_of_DS1307_SetTime
	__end_of_DS1307_SetTime:
;; =============== function _DS1307_SetTime ends ============

	signat	_DS1307_SetTime,12408
	global	_DS1307_Init
psect	text525,local,class=CODE,delta=2
global __ptext525
__ptext525:

;; *************** function _DS1307_Init *****************
;; Defined at:
;;		line 43 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\ds1307.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_I2C_Init
;;		_I2C_Start
;;		_DS1307_Write
;;		_I2C_Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text525
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\ds1307.c"
	line	43
	global	__size_of_DS1307_Init
	__size_of_DS1307_Init	equ	__end_of_DS1307_Init-_DS1307_Init
	
_DS1307_Init:	
	opt	stack 3
; Regs used in _DS1307_Init: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l6153:	
;ds1307.c: 44: I2C_Init();
	fcall	_I2C_Init
	line	45
	
l6155:	
;ds1307.c: 45: I2C_Start();
	fcall	_I2C_Start
	line	47
	
l6157:	
;ds1307.c: 47: DS1307_Write(0xD0);
	movlw	(0D0h)
	fcall	_DS1307_Write
	line	48
	
l6159:	
;ds1307.c: 48: DS1307_Write(0x07);
	movlw	(07h)
	fcall	_DS1307_Write
	line	50
	
l6161:	
;ds1307.c: 50: DS1307_Write(0x00);
	movlw	(0)
	fcall	_DS1307_Write
	line	52
	
l6163:	
;ds1307.c: 52: I2C_Stop();
	fcall	_I2C_Stop
	line	54
	
l2113:	
	return
	opt stack 0
GLOBAL	__end_of_DS1307_Init
	__end_of_DS1307_Init:
;; =============== function _DS1307_Init ends ============

	signat	_DS1307_Init,88
	global	_DS1307_Write
psect	text526,local,class=CODE,delta=2
global __ptext526
__ptext526:

;; *************** function _DS1307_Write *****************
;; Defined at:
;;		line 76 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\ds1307.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_I2C_Write
;;		_I2C_Clock
;; This function is called by:
;;		_DS1307_Init
;;		_DS1307_SetTime
;;		_DS1307_SetDate
;;		_DS1307_GetTime
;;		_DS1307_GetDate
;; This function uses a non-reentrant model
;;
psect	text526
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\ds1307.c"
	line	76
	global	__size_of_DS1307_Write
	__size_of_DS1307_Write	equ	__end_of_DS1307_Write-_DS1307_Write
	
_DS1307_Write:	
	opt	stack 3
; Regs used in _DS1307_Write: [wreg+status,2+status,0+pclath+cstack]
;DS1307_Write@dat stored from wreg
	movwf	(DS1307_Write@dat)
	line	77
	
l6151:	
;ds1307.c: 77: I2C_Write(dat);
	movf	(DS1307_Write@dat),w
	fcall	_I2C_Write
	line	78
;ds1307.c: 78: I2C_Clock();
	fcall	_I2C_Clock
	line	79
	
l2116:	
	return
	opt stack 0
GLOBAL	__end_of_DS1307_Write
	__end_of_DS1307_Write:
;; =============== function _DS1307_Write ends ============

	signat	_DS1307_Write,4216
	global	_LCD_DisplayRtcDate
psect	text527,local,class=CODE,delta=2
global __ptext527
__ptext527:

;; *************** function _LCD_DisplayRtcDate *****************
;; Defined at:
;;		line 445 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\lcd_4_bit.c"
;; Parameters:    Size  Location     Type
;;  day             1    wreg     unsigned char 
;;  month           1    6[COMMON] unsigned char 
;;  year            1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  day             1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_DataWrite
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text527
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\lcd_4_bit.c"
	line	445
	global	__size_of_LCD_DisplayRtcDate
	__size_of_LCD_DisplayRtcDate	equ	__end_of_LCD_DisplayRtcDate-_LCD_DisplayRtcDate
	
_LCD_DisplayRtcDate:	
	opt	stack 4
; Regs used in _LCD_DisplayRtcDate: [wreg+status,2+status,0+pclath+cstack]
;LCD_DisplayRtcDate@day stored from wreg
	movwf	(LCD_DisplayRtcDate@day)
	line	446
	
l6149:	
;lcd_4_bit.c: 446: LCD_DataWrite(((day>>4) & 0x0f) + 0x30);
	movf	(LCD_DisplayRtcDate@day),w
	movwf	(??_LCD_DisplayRtcDate+0)+0
	movlw	04h
u2735:
	clrc
	rrf	(??_LCD_DisplayRtcDate+0)+0,f
	addlw	-1
	skipz
	goto	u2735
	movf	0+(??_LCD_DisplayRtcDate+0)+0,w
	andlw	0Fh
	addlw	030h
	fcall	_LCD_DataWrite
	line	447
;lcd_4_bit.c: 447: LCD_DataWrite((day & 0x0f) + 0x30);
	movf	(LCD_DisplayRtcDate@day),w
	andlw	0Fh
	addlw	030h
	fcall	_LCD_DataWrite
	line	448
;lcd_4_bit.c: 448: LCD_DataWrite('/');
	movlw	(02Fh)
	fcall	_LCD_DataWrite
	line	450
;lcd_4_bit.c: 450: LCD_DataWrite(((month>>4) & 0x0f) + 0x30);
	movf	(LCD_DisplayRtcDate@month),w
	movwf	(??_LCD_DisplayRtcDate+0)+0
	movlw	04h
u2745:
	clrc
	rrf	(??_LCD_DisplayRtcDate+0)+0,f
	addlw	-1
	skipz
	goto	u2745
	movf	0+(??_LCD_DisplayRtcDate+0)+0,w
	andlw	0Fh
	addlw	030h
	fcall	_LCD_DataWrite
	line	451
;lcd_4_bit.c: 451: LCD_DataWrite((month & 0x0f) + 0x30);
	movf	(LCD_DisplayRtcDate@month),w
	andlw	0Fh
	addlw	030h
	fcall	_LCD_DataWrite
	line	452
;lcd_4_bit.c: 452: LCD_DataWrite('/');
	movlw	(02Fh)
	fcall	_LCD_DataWrite
	line	454
;lcd_4_bit.c: 454: LCD_DataWrite(((year>>4) & 0x0f) + 0x30);
	movf	(LCD_DisplayRtcDate@year),w
	movwf	(??_LCD_DisplayRtcDate+0)+0
	movlw	04h
u2755:
	clrc
	rrf	(??_LCD_DisplayRtcDate+0)+0,f
	addlw	-1
	skipz
	goto	u2755
	movf	0+(??_LCD_DisplayRtcDate+0)+0,w
	andlw	0Fh
	addlw	030h
	fcall	_LCD_DataWrite
	line	455
;lcd_4_bit.c: 455: LCD_DataWrite((year & 0x0f) + 0x30);
	movf	(LCD_DisplayRtcDate@year),w
	andlw	0Fh
	addlw	030h
	fcall	_LCD_DataWrite
	line	457
	
l3582:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DisplayRtcDate
	__end_of_LCD_DisplayRtcDate:
;; =============== function _LCD_DisplayRtcDate ends ============

	signat	_LCD_DisplayRtcDate,12408
	global	_LCD_DisplayRtcTime
psect	text528,local,class=CODE,delta=2
global __ptext528
__ptext528:

;; *************** function _LCD_DisplayRtcTime *****************
;; Defined at:
;;		line 403 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\lcd_4_bit.c"
;; Parameters:    Size  Location     Type
;;  hour            1    wreg     unsigned char 
;;  min             1    6[COMMON] unsigned char 
;;  sec             1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  hour            1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_DataWrite
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text528
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\lcd_4_bit.c"
	line	403
	global	__size_of_LCD_DisplayRtcTime
	__size_of_LCD_DisplayRtcTime	equ	__end_of_LCD_DisplayRtcTime-_LCD_DisplayRtcTime
	
_LCD_DisplayRtcTime:	
	opt	stack 4
; Regs used in _LCD_DisplayRtcTime: [wreg+status,2+status,0+pclath+cstack]
;LCD_DisplayRtcTime@hour stored from wreg
	movwf	(LCD_DisplayRtcTime@hour)
	line	404
	
l6147:	
;lcd_4_bit.c: 404: LCD_DataWrite(((hour>>4) & 0x0f) + 0x30);
	movf	(LCD_DisplayRtcTime@hour),w
	movwf	(??_LCD_DisplayRtcTime+0)+0
	movlw	04h
u2705:
	clrc
	rrf	(??_LCD_DisplayRtcTime+0)+0,f
	addlw	-1
	skipz
	goto	u2705
	movf	0+(??_LCD_DisplayRtcTime+0)+0,w
	andlw	0Fh
	addlw	030h
	fcall	_LCD_DataWrite
	line	405
;lcd_4_bit.c: 405: LCD_DataWrite((hour & 0x0f) + 0x30);
	movf	(LCD_DisplayRtcTime@hour),w
	andlw	0Fh
	addlw	030h
	fcall	_LCD_DataWrite
	line	406
;lcd_4_bit.c: 406: LCD_DataWrite(':');
	movlw	(03Ah)
	fcall	_LCD_DataWrite
	line	408
;lcd_4_bit.c: 408: LCD_DataWrite(((min>>4) & 0x0f) + 0x30);
	movf	(LCD_DisplayRtcTime@min),w
	movwf	(??_LCD_DisplayRtcTime+0)+0
	movlw	04h
u2715:
	clrc
	rrf	(??_LCD_DisplayRtcTime+0)+0,f
	addlw	-1
	skipz
	goto	u2715
	movf	0+(??_LCD_DisplayRtcTime+0)+0,w
	andlw	0Fh
	addlw	030h
	fcall	_LCD_DataWrite
	line	409
;lcd_4_bit.c: 409: LCD_DataWrite((min & 0x0f) + 0x30);
	movf	(LCD_DisplayRtcTime@min),w
	andlw	0Fh
	addlw	030h
	fcall	_LCD_DataWrite
	line	410
;lcd_4_bit.c: 410: LCD_DataWrite(':');
	movlw	(03Ah)
	fcall	_LCD_DataWrite
	line	412
;lcd_4_bit.c: 412: LCD_DataWrite(((sec>>4) & 0x0f) + 0x30);
	movf	(LCD_DisplayRtcTime@sec),w
	movwf	(??_LCD_DisplayRtcTime+0)+0
	movlw	04h
u2725:
	clrc
	rrf	(??_LCD_DisplayRtcTime+0)+0,f
	addlw	-1
	skipz
	goto	u2725
	movf	0+(??_LCD_DisplayRtcTime+0)+0,w
	andlw	0Fh
	addlw	030h
	fcall	_LCD_DataWrite
	line	413
;lcd_4_bit.c: 413: LCD_DataWrite((sec & 0x0f) + 0x30);
	movf	(LCD_DisplayRtcTime@sec),w
	andlw	0Fh
	addlw	030h
	fcall	_LCD_DataWrite
	line	415
	
l3579:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DisplayRtcTime
	__end_of_LCD_DisplayRtcTime:
;; =============== function _LCD_DisplayRtcTime ends ============

	signat	_LCD_DisplayRtcTime,12408
	global	_LCD_GoToXY
psect	text529,local,class=CODE,delta=2
global __ptext529
__ptext529:

;; *************** function _LCD_GoToXY *****************
;; Defined at:
;;		line 154 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\lcd_4_bit.c"
;; Parameters:    Size  Location     Type
;;  row             1    wreg     unsigned char 
;;  col             1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  row             1    9[COMMON] unsigned char 
;;  pos             1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_CmdWrite
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text529
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\lcd_4_bit.c"
	line	154
	global	__size_of_LCD_GoToXY
	__size_of_LCD_GoToXY	equ	__end_of_LCD_GoToXY-_LCD_GoToXY
	
_LCD_GoToXY:	
	opt	stack 4
; Regs used in _LCD_GoToXY: [wreg+status,2+status,0+pclath+cstack]
;LCD_GoToXY@row stored from wreg
	line	157
	movwf	(LCD_GoToXY@row)
	
l6137:	
;lcd_4_bit.c: 155: char pos;
;lcd_4_bit.c: 157: if(row<2)
	movlw	(02h)
	subwf	(LCD_GoToXY@row),w
	skipnc
	goto	u2671
	goto	u2670
u2671:
	goto	l3548
u2670:
	line	159
	
l6139:	
;lcd_4_bit.c: 158: {
;lcd_4_bit.c: 159: pos= 0x80 | (row << 6);
	movf	(LCD_GoToXY@row),w
	movwf	(??_LCD_GoToXY+0)+0
	movlw	(06h)-1
u2685:
	clrc
	rlf	(??_LCD_GoToXY+0)+0,f
	addlw	-1
	skipz
	goto	u2685
	clrc
	rlf	(??_LCD_GoToXY+0)+0,w
	iorlw	080h
	movwf	(??_LCD_GoToXY+1)+0
	movf	(??_LCD_GoToXY+1)+0,w
	movwf	(LCD_GoToXY@pos)
	line	162
	
l6141:	
;lcd_4_bit.c: 162: if(col<16)
	movlw	(010h)
	subwf	(LCD_GoToXY@col),w
	skipnc
	goto	u2691
	goto	u2690
u2691:
	goto	l6145
u2690:
	line	163
	
l6143:	
;lcd_4_bit.c: 163: pos= pos+col;
	movf	(LCD_GoToXY@col),w
	addwf	(LCD_GoToXY@pos),w
	movwf	(??_LCD_GoToXY+0)+0
	movf	(??_LCD_GoToXY+0)+0,w
	movwf	(LCD_GoToXY@pos)
	goto	l6145
	
l3547:	
	line	166
	
l6145:	
;lcd_4_bit.c: 166: LCD_CmdWrite(pos);
	movf	(LCD_GoToXY@pos),w
	fcall	_LCD_CmdWrite
	goto	l3548
	line	167
	
l3546:	
	line	168
	
l3548:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_GoToXY
	__end_of_LCD_GoToXY:
;; =============== function _LCD_GoToXY ends ============

	signat	_LCD_GoToXY,8312
	global	_LCD_GoToLineTwo
psect	text530,local,class=CODE,delta=2
global __ptext530
__ptext530:

;; *************** function _LCD_GoToLineTwo *****************
;; Defined at:
;;		line 133 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\lcd_4_bit.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_CmdWrite
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text530
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\lcd_4_bit.c"
	line	133
	global	__size_of_LCD_GoToLineTwo
	__size_of_LCD_GoToLineTwo	equ	__end_of_LCD_GoToLineTwo-_LCD_GoToLineTwo
	
_LCD_GoToLineTwo:	
	opt	stack 4
; Regs used in _LCD_GoToLineTwo: [wreg+status,2+status,0+pclath+cstack]
	line	134
	
l6135:	
;lcd_4_bit.c: 134: LCD_CmdWrite(0xc0);
	movlw	(0C0h)
	fcall	_LCD_CmdWrite
	line	135
	
l3543:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_GoToLineTwo
	__end_of_LCD_GoToLineTwo:
;; =============== function _LCD_GoToLineTwo ends ============

	signat	_LCD_GoToLineTwo,88
	global	_LCD_DisplayString
psect	text531,local,class=CODE,delta=2
global __ptext531
__ptext531:

;; *************** function _LCD_DisplayString *****************
;; Defined at:
;;		line 285 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\lcd_4_bit.c"
;; Parameters:    Size  Location     Type
;;  string_ptr      1    wreg     PTR unsigned char 
;;		 -> STR_2(7), STR_1(7), 
;; Auto vars:     Size  Location     Type
;;  string_ptr      1    7[COMMON] PTR unsigned char 
;;		 -> STR_2(7), STR_1(7), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_DataWrite
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text531
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\lcd_4_bit.c"
	line	285
	global	__size_of_LCD_DisplayString
	__size_of_LCD_DisplayString	equ	__end_of_LCD_DisplayString-_LCD_DisplayString
	
_LCD_DisplayString:	
	opt	stack 4
; Regs used in _LCD_DisplayString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCD_DisplayString@string_ptr stored from wreg
	movwf	(LCD_DisplayString@string_ptr)
	line	286
	
l6127:	
;lcd_4_bit.c: 286: while(*string_ptr)
	goto	l6133
	
l3558:	
	line	287
	
l6129:	
;lcd_4_bit.c: 287: LCD_DataWrite(*string_ptr++);
	movf	(LCD_DisplayString@string_ptr),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCD_DataWrite
	
l6131:	
	movlw	(01h)
	movwf	(??_LCD_DisplayString+0)+0
	movf	(??_LCD_DisplayString+0)+0,w
	addwf	(LCD_DisplayString@string_ptr),f
	goto	l6133
	
l3557:	
	line	286
	
l6133:	
	movf	(LCD_DisplayString@string_ptr),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2661
	goto	u2660
u2661:
	goto	l6129
u2660:
	goto	l3560
	
l3559:	
	line	288
	
l3560:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DisplayString
	__end_of_LCD_DisplayString:
;; =============== function _LCD_DisplayString ends ============

	signat	_LCD_DisplayString,4216
	global	_LCD_Init
psect	text532,local,class=CODE,delta=2
global __ptext532
__ptext532:

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 74 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\lcd_4_bit.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay_us
;;		_LCD_CmdWrite
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text532
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\lcd_4_bit.c"
	line	74
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
	opt	stack 4
; Regs used in _LCD_Init: [wreg+status,2+status,0+pclath+cstack]
	line	75
	
l6113:	
;lcd_4_bit.c: 75: delay_us(5000);
	movlw	low(01388h)
	movwf	(?_delay_us)
	movlw	high(01388h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	76
	
l6115:	
;lcd_4_bit.c: 76: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	77
	
l6117:	
;lcd_4_bit.c: 77: LCD_CmdWrite(0x02);
	movlw	(02h)
	fcall	_LCD_CmdWrite
	line	78
	
l6119:	
;lcd_4_bit.c: 78: LCD_CmdWrite(0x28);
	movlw	(028h)
	fcall	_LCD_CmdWrite
	line	79
	
l6121:	
;lcd_4_bit.c: 79: LCD_CmdWrite(0x0E);
	movlw	(0Eh)
	fcall	_LCD_CmdWrite
	line	80
	
l6123:	
;lcd_4_bit.c: 80: LCD_CmdWrite(0x01);
	movlw	(01h)
	fcall	_LCD_CmdWrite
	line	81
	
l6125:	
;lcd_4_bit.c: 81: LCD_CmdWrite(0x80);
	movlw	(080h)
	fcall	_LCD_CmdWrite
	line	83
	
l3534:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
;; =============== function _LCD_Init ends ============

	signat	_LCD_Init,88
	global	_LCD_DataWrite
psect	text533,local,class=CODE,delta=2
global __ptext533
__ptext533:

;; *************** function _LCD_DataWrite *****************
;; Defined at:
;;		line 243 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\lcd_4_bit.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_us
;;		_delay_ms
;; This function is called by:
;;		_LCD_DisplayString
;;		_LCD_DisplayRtcTime
;;		_LCD_DisplayRtcDate
;;		_LCD_DisplayNumber
;;		_LCD_ScrollMessage
;; This function uses a non-reentrant model
;;
psect	text533
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\lcd_4_bit.c"
	line	243
	global	__size_of_LCD_DataWrite
	__size_of_LCD_DataWrite	equ	__end_of_LCD_DataWrite-_LCD_DataWrite
	
_LCD_DataWrite:	
	opt	stack 4
; Regs used in _LCD_DataWrite: [wreg+status,2+status,0+pclath+cstack]
;LCD_DataWrite@dat stored from wreg
	line	246
	movwf	(LCD_DataWrite@dat)
	
l6085:	
;lcd_4_bit.c: 246: PORTB=(dat & 0xf0);
	movf	(LCD_DataWrite@dat),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	247
	
l6087:	
;lcd_4_bit.c: 247: RB0=1;
	bsf	(48/8),(48)&7
	line	248
	
l6089:	
;lcd_4_bit.c: 248: RB1=0;
	bcf	(49/8),(49)&7
	line	249
	
l6091:	
;lcd_4_bit.c: 249: RB2=1;
	bsf	(50/8),(50)&7
	line	250
	
l6093:	
;lcd_4_bit.c: 250: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	251
	
l6095:	
;lcd_4_bit.c: 251: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	253
	
l6097:	
;lcd_4_bit.c: 253: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	255
	
l6099:	
;lcd_4_bit.c: 255: PORTB=((dat <<4) & 0xf0);
	movf	(LCD_DataWrite@dat),w
	movwf	(??_LCD_DataWrite+0)+0
	movlw	(04h)-1
u2655:
	clrc
	rlf	(??_LCD_DataWrite+0)+0,f
	addlw	-1
	skipz
	goto	u2655
	clrc
	rlf	(??_LCD_DataWrite+0)+0,w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	256
	
l6101:	
;lcd_4_bit.c: 256: RB0=1;
	bsf	(48/8),(48)&7
	line	257
	
l6103:	
;lcd_4_bit.c: 257: RB1=0;
	bcf	(49/8),(49)&7
	line	258
	
l6105:	
;lcd_4_bit.c: 258: RB2=1;
	bsf	(50/8),(50)&7
	line	259
	
l6107:	
;lcd_4_bit.c: 259: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	260
	
l6109:	
;lcd_4_bit.c: 260: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	262
	
l6111:	
;lcd_4_bit.c: 262: delay_ms(1);
	movlw	low(01h)
	movwf	(?_delay_ms)
	movlw	high(01h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	264
	
l3554:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DataWrite
	__end_of_LCD_DataWrite:
;; =============== function _LCD_DataWrite ends ============

	signat	_LCD_DataWrite,4216
	global	_LCD_CmdWrite
psect	text534,local,class=CODE,delta=2
global __ptext534
__ptext534:

;; *************** function _LCD_CmdWrite *****************
;; Defined at:
;;		line 193 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\lcd_4_bit.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_us
;;		_delay_ms
;; This function is called by:
;;		_LCD_Init
;;		_LCD_GoToLineTwo
;;		_LCD_GoToXY
;;		_LCD_Clear
;;		_LCD_GoToLineOne
;;		_LCD_ScrollMessage
;; This function uses a non-reentrant model
;;
psect	text534
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\lcd_4_bit.c"
	line	193
	global	__size_of_LCD_CmdWrite
	__size_of_LCD_CmdWrite	equ	__end_of_LCD_CmdWrite-_LCD_CmdWrite
	
_LCD_CmdWrite:	
	opt	stack 4
; Regs used in _LCD_CmdWrite: [wreg+status,2+status,0+pclath+cstack]
;LCD_CmdWrite@cmd stored from wreg
	line	195
	movwf	(LCD_CmdWrite@cmd)
	
l6057:	
;lcd_4_bit.c: 195: PORTB=(cmd & 0xf0);
	movf	(LCD_CmdWrite@cmd),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	196
	
l6059:	
;lcd_4_bit.c: 196: RB0=0;
	bcf	(48/8),(48)&7
	line	197
	
l6061:	
;lcd_4_bit.c: 197: RB1=0;
	bcf	(49/8),(49)&7
	line	198
	
l6063:	
;lcd_4_bit.c: 198: RB2=1;
	bsf	(50/8),(50)&7
	line	199
	
l6065:	
;lcd_4_bit.c: 199: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	200
	
l6067:	
;lcd_4_bit.c: 200: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	202
	
l6069:	
;lcd_4_bit.c: 202: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	204
	
l6071:	
;lcd_4_bit.c: 204: PORTB=((cmd<<4) & 0xf0);
	movf	(LCD_CmdWrite@cmd),w
	movwf	(??_LCD_CmdWrite+0)+0
	movlw	(04h)-1
u2645:
	clrc
	rlf	(??_LCD_CmdWrite+0)+0,f
	addlw	-1
	skipz
	goto	u2645
	clrc
	rlf	(??_LCD_CmdWrite+0)+0,w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	205
	
l6073:	
;lcd_4_bit.c: 205: RB0=0;
	bcf	(48/8),(48)&7
	line	206
	
l6075:	
;lcd_4_bit.c: 206: RB1=0;
	bcf	(49/8),(49)&7
	line	207
	
l6077:	
;lcd_4_bit.c: 207: RB2=1;
	bsf	(50/8),(50)&7
	line	208
	
l6079:	
;lcd_4_bit.c: 208: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	209
	
l6081:	
;lcd_4_bit.c: 209: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	211
	
l6083:	
;lcd_4_bit.c: 211: delay_ms(1);
	movlw	low(01h)
	movwf	(?_delay_ms)
	movlw	high(01h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	212
	
l3551:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_CmdWrite
	__end_of_LCD_CmdWrite:
;; =============== function _LCD_CmdWrite ends ============

	signat	_LCD_CmdWrite,4216
	global	_I2C_NoAck
psect	text535,local,class=CODE,delta=2
global __ptext535
__ptext535:

;; *************** function _I2C_NoAck *****************
;; Defined at:
;;		line 264 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_Clock
;; This function is called by:
;;		_DS1307_GetTime
;;		_DS1307_GetDate
;; This function uses a non-reentrant model
;;
psect	text535
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\i2c.c"
	line	264
	global	__size_of_I2C_NoAck
	__size_of_I2C_NoAck	equ	__end_of_I2C_NoAck-_I2C_NoAck
	
_I2C_NoAck:	
	opt	stack 4
; Regs used in _I2C_NoAck: [wreg+status,2+status,0+pclath+cstack]
	line	265
	
l6051:	
;i2c.c: 265: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	266
	
l6053:	
;i2c.c: 266: I2C_Clock();
	fcall	_I2C_Clock
	line	267
	
l6055:	
;i2c.c: 267: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	268
	
l2843:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_NoAck
	__end_of_I2C_NoAck:
;; =============== function _I2C_NoAck ends ============

	signat	_I2C_NoAck,88
	global	_I2C_Ack
psect	text536,local,class=CODE,delta=2
global __ptext536
__ptext536:

;; *************** function _I2C_Ack *****************
;; Defined at:
;;		line 244 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_Clock
;; This function is called by:
;;		_DS1307_GetTime
;;		_DS1307_GetDate
;; This function uses a non-reentrant model
;;
psect	text536
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\i2c.c"
	line	244
	global	__size_of_I2C_Ack
	__size_of_I2C_Ack	equ	__end_of_I2C_Ack-_I2C_Ack
	
_I2C_Ack:	
	opt	stack 4
; Regs used in _I2C_Ack: [wreg+status,2+status,0+pclath+cstack]
	line	245
	
l6045:	
;i2c.c: 245: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	246
	
l6047:	
;i2c.c: 246: I2C_Clock();
	fcall	_I2C_Clock
	line	247
	
l6049:	
;i2c.c: 247: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	248
	
l2840:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Ack
	__end_of_I2C_Ack:
;; =============== function _I2C_Ack ends ============

	signat	_I2C_Ack,88
	global	_DS1307_Read
psect	text537,local,class=CODE,delta=2
global __ptext537
__ptext537:

;; *************** function _DS1307_Read *****************
;; Defined at:
;;		line 95 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\ds1307.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dat             1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_Read
;; This function is called by:
;;		_DS1307_GetTime
;;		_DS1307_GetDate
;; This function uses a non-reentrant model
;;
psect	text537
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\ds1307.c"
	line	95
	global	__size_of_DS1307_Read
	__size_of_DS1307_Read	equ	__end_of_DS1307_Read-_DS1307_Read
	
_DS1307_Read:	
	opt	stack 4
; Regs used in _DS1307_Read: [wreg+status,2+status,0+pclath+cstack]
	line	97
	
l6039:	
;ds1307.c: 96: unsigned char dat;
;ds1307.c: 97: dat = I2C_Read();
	fcall	_I2C_Read
	movwf	(??_DS1307_Read+0)+0
	movf	(??_DS1307_Read+0)+0,w
	movwf	(DS1307_Read@dat)
	line	98
	
l6041:	
;ds1307.c: 98: return(dat);
	movf	(DS1307_Read@dat),w
	goto	l2119
	
l6043:	
	line	99
	
l2119:	
	return
	opt stack 0
GLOBAL	__end_of_DS1307_Read
	__end_of_DS1307_Read:
;; =============== function _DS1307_Read ends ============

	signat	_DS1307_Read,89
	global	_I2C_Write
psect	text538,local,class=CODE,delta=2
global __ptext538
__ptext538:

;; *************** function _I2C_Write *****************
;; Defined at:
;;		line 169 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\i2c.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    4[COMMON] unsigned char 
;;  i               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_Clock
;; This function is called by:
;;		_DS1307_Write
;; This function uses a non-reentrant model
;;
psect	text538
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\i2c.c"
	line	169
	global	__size_of_I2C_Write
	__size_of_I2C_Write	equ	__end_of_I2C_Write-_I2C_Write
	
_I2C_Write:	
	opt	stack 3
; Regs used in _I2C_Write: [wreg+status,2+status,0+pclath+cstack]
;I2C_Write@dat stored from wreg
	line	172
	movwf	(I2C_Write@dat)
	
l6023:	
;i2c.c: 170: unsigned char i;
;i2c.c: 172: for(i=0;i<8;i++)
	clrf	(I2C_Write@i)
	
l6025:	
	movlw	(08h)
	subwf	(I2C_Write@i),w
	skipc
	goto	u2591
	goto	u2590
u2591:
	goto	l6029
u2590:
	goto	l2831
	
l6027:	
	goto	l2831
	line	173
	
l2830:	
	line	174
	
l6029:	
;i2c.c: 173: {
;i2c.c: 174: RC4 = (dat & 0x80)>>7;
	movf	(I2C_Write@dat),w
	movwf	(??_I2C_Write+0)+0
	movlw	07h
u2605:
	clrc
	rrf	(??_I2C_Write+0)+0,f
	addlw	-1
	skipz
	goto	u2605
	btfsc	0+(??_I2C_Write+0)+0,0
	goto	u2611
	goto	u2610
	
u2611:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	goto	u2624
u2610:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
u2624:
	line	175
	
l6031:	
;i2c.c: 175: I2C_Clock();
	fcall	_I2C_Clock
	line	176
	
l6033:	
;i2c.c: 176: dat = dat<<1;
	movf	(I2C_Write@dat),w
	movwf	(??_I2C_Write+0)+0
	addwf	(??_I2C_Write+0)+0,w
	movwf	(??_I2C_Write+1)+0
	movf	(??_I2C_Write+1)+0,w
	movwf	(I2C_Write@dat)
	line	172
	
l6035:	
	movlw	(01h)
	movwf	(??_I2C_Write+0)+0
	movf	(??_I2C_Write+0)+0,w
	addwf	(I2C_Write@i),f
	
l6037:	
	movlw	(08h)
	subwf	(I2C_Write@i),w
	skipc
	goto	u2631
	goto	u2630
u2631:
	goto	l6029
u2630:
	
l2831:	
	line	178
;i2c.c: 177: }
;i2c.c: 178: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	180
	
l2832:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Write
	__end_of_I2C_Write:
;; =============== function _I2C_Write ends ============

	signat	_I2C_Write,4216
	global	_I2C_Read
psect	text539,local,class=CODE,delta=2
global __ptext539
__ptext539:

;; *************** function _I2C_Read *****************
;; Defined at:
;;		line 207 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dat             1    5[COMMON] unsigned char 
;;  i               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_us
;; This function is called by:
;;		_DS1307_Read
;; This function uses a non-reentrant model
;;
psect	text539
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\i2c.c"
	line	207
	global	__size_of_I2C_Read
	__size_of_I2C_Read	equ	__end_of_I2C_Read-_I2C_Read
	
_I2C_Read:	
	opt	stack 4
; Regs used in _I2C_Read: [wreg+status,2+status,0+pclath+cstack]
	line	208
	
l5999:	
;i2c.c: 208: unsigned char i, dat=0x00;
	clrf	(I2C_Read@dat)
	line	210
;i2c.c: 210: TRISC4=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	211
;i2c.c: 211: for(i=0;i<8;i++)
	clrf	(I2C_Read@i)
	
l6001:	
	movlw	(08h)
	subwf	(I2C_Read@i),w
	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l6005
u2570:
	goto	l2836
	
l6003:	
	goto	l2836
	line	212
	
l2835:	
	line	213
	
l6005:	
;i2c.c: 212: {
;i2c.c: 213: delay_us(1);
	movlw	low(01h)
	movwf	(?_delay_us)
	movlw	high(01h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	216
	
l6007:	
;i2c.c: 216: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	217
;i2c.c: 217: delay_us(1);
	movlw	low(01h)
	movwf	(?_delay_us)
	movlw	high(01h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	219
	
l6009:	
;i2c.c: 219: dat = dat<<1;
	movf	(I2C_Read@dat),w
	movwf	(??_I2C_Read+0)+0
	addwf	(??_I2C_Read+0)+0,w
	movwf	(??_I2C_Read+1)+0
	movf	(??_I2C_Read+1)+0,w
	movwf	(I2C_Read@dat)
	line	220
	
l6011:	
;i2c.c: 220: dat = dat | RC4;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	movlw	1
	iorwf	(I2C_Read@dat),w
	movwf	(??_I2C_Read+0)+0
	movf	(??_I2C_Read+0)+0,w
	movwf	(I2C_Read@dat)
	line	222
	
l6013:	
;i2c.c: 222: RC3 = 0;
	bcf	(59/8),(59)&7
	line	211
	
l6015:	
	movlw	(01h)
	movwf	(??_I2C_Read+0)+0
	movf	(??_I2C_Read+0)+0,w
	addwf	(I2C_Read@i),f
	
l6017:	
	movlw	(08h)
	subwf	(I2C_Read@i),w
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l6005
u2580:
	
l2836:	
	line	224
;i2c.c: 223: }
;i2c.c: 224: TRISC4=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	225
	
l6019:	
;i2c.c: 225: return dat;
	movf	(I2C_Read@dat),w
	goto	l2837
	
l6021:	
	line	226
	
l2837:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Read
	__end_of_I2C_Read:
;; =============== function _I2C_Read ends ============

	signat	_I2C_Read,89
	global	_I2C_Clock
psect	text540,local,class=CODE,delta=2
global __ptext540
__ptext540:

;; *************** function _I2C_Clock *****************
;; Defined at:
;;		line 56 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_us
;; This function is called by:
;;		_DS1307_Write
;;		_I2C_Write
;;		_I2C_Ack
;;		_I2C_NoAck
;; This function uses a non-reentrant model
;;
psect	text540
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\i2c.c"
	line	56
	global	__size_of_I2C_Clock
	__size_of_I2C_Clock	equ	__end_of_I2C_Clock-_I2C_Clock
	
_I2C_Clock:	
	opt	stack 4
; Regs used in _I2C_Clock: [wreg+status,2+status,0+pclath+cstack]
	line	57
	
l5993:	
;i2c.c: 57: delay_us(1);
	movlw	low(01h)
	movwf	(?_delay_us)
	movlw	high(01h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	58
	
l5995:	
;i2c.c: 58: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	60
;i2c.c: 60: delay_us(1);
	movlw	low(01h)
	movwf	(?_delay_us)
	movlw	high(01h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	61
	
l5997:	
;i2c.c: 61: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	62
	
l2821:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Clock
	__end_of_I2C_Clock:
;; =============== function _I2C_Clock ends ============

	signat	_I2C_Clock,88
	global	_I2C_Stop
psect	text541,local,class=CODE,delta=2
global __ptext541
__ptext541:

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 128 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_us
;; This function is called by:
;;		_DS1307_Init
;;		_DS1307_SetTime
;;		_DS1307_SetDate
;;		_DS1307_GetTime
;;		_DS1307_GetDate
;; This function uses a non-reentrant model
;;
psect	text541
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\i2c.c"
	line	128
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
	opt	stack 5
; Regs used in _I2C_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	130
	
l5983:	
;i2c.c: 130: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	131
	
l5985:	
;i2c.c: 131: delay_us(1);
	movlw	low(01h)
	movwf	(?_delay_us)
	movlw	high(01h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	133
	
l5987:	
;i2c.c: 133: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	134
;i2c.c: 134: delay_us(1);
	movlw	low(01h)
	movwf	(?_delay_us)
	movlw	high(01h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	136
	
l5989:	
;i2c.c: 136: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	137
;i2c.c: 137: delay_us(1);
	movlw	low(01h)
	movwf	(?_delay_us)
	movlw	high(01h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	139
	
l5991:	
;i2c.c: 139: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	140
	
l2827:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
;; =============== function _I2C_Stop ends ============

	signat	_I2C_Stop,88
	global	_I2C_Start
psect	text542,local,class=CODE,delta=2
global __ptext542
__ptext542:

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 88 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_us
;; This function is called by:
;;		_DS1307_Init
;;		_DS1307_SetTime
;;		_DS1307_SetDate
;;		_DS1307_GetTime
;;		_DS1307_GetDate
;; This function uses a non-reentrant model
;;
psect	text542
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\i2c.c"
	line	88
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
	opt	stack 5
; Regs used in _I2C_Start: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l5973:	
;i2c.c: 90: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	92
;i2c.c: 92: RC4 = 1;
	bsf	(60/8),(60)&7
	line	93
	
l5975:	
;i2c.c: 93: delay_us(1);
	movlw	low(01h)
	movwf	(?_delay_us)
	movlw	high(01h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	95
	
l5977:	
;i2c.c: 95: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	96
;i2c.c: 96: delay_us(1);
	movlw	low(01h)
	movwf	(?_delay_us)
	movlw	high(01h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	98
	
l5979:	
;i2c.c: 98: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	99
;i2c.c: 99: delay_us(1);
	movlw	low(01h)
	movwf	(?_delay_us)
	movlw	high(01h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	101
	
l5981:	
;i2c.c: 101: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	103
	
l2824:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
;; =============== function _I2C_Start ends ============

	signat	_I2C_Start,88
	global	_delay_ms
psect	text543,local,class=CODE,delta=2
global __ptext543
__ptext543:

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 47 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\delay.c"
;; Parameters:    Size  Location     Type
;;  ms_count        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_us
;; This function is called by:
;;		_LCD_CmdWrite
;;		_LCD_DataWrite
;;		_delay_sec
;;		_LCD_ScrollMessage
;; This function uses a non-reentrant model
;;
psect	text543
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\delay.c"
	line	47
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
	opt	stack 4
; Regs used in _delay_ms: [wreg+status,2+status,0+pclath+cstack]
	line	48
	
l5965:	
;delay.c: 48: while(ms_count!=0)
	goto	l5971
	
l1402:	
	line	50
	
l5967:	
;delay.c: 49: {
;delay.c: 50: delay_us(300);
	movlw	low(012Ch)
	movwf	(?_delay_us)
	movlw	high(012Ch)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	51
	
l5969:	
;delay.c: 51: ms_count--;
	movlw	low(01h)
	subwf	(delay_ms@ms_count),f
	movlw	high(01h)
	skipc
	decf	(delay_ms@ms_count+1),f
	subwf	(delay_ms@ms_count+1),f
	goto	l5971
	line	52
	
l1401:	
	line	48
	
l5971:	
	movf	((delay_ms@ms_count+1)),w
	iorwf	((delay_ms@ms_count)),w
	skipz
	goto	u2561
	goto	u2560
u2561:
	goto	l5967
u2560:
	goto	l1404
	
l1403:	
	line	54
	
l1404:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
;; =============== function _delay_ms ends ============

	signat	_delay_ms,4216
	global	_I2C_Init
psect	text544,local,class=CODE,delta=2
global __ptext544
__ptext544:

;; *************** function _I2C_Init *****************
;; Defined at:
;;		line 39 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DS1307_Init
;; This function uses a non-reentrant model
;;
psect	text544
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\i2c.c"
	line	39
	global	__size_of_I2C_Init
	__size_of_I2C_Init	equ	__end_of_I2C_Init-_I2C_Init
	
_I2C_Init:	
	opt	stack 6
; Regs used in _I2C_Init: []
	line	40
	
l5927:	
;i2c.c: 40: TRISC3=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	41
;i2c.c: 41: TRISC4=0;
	bcf	(1084/8)^080h,(1084)&7
	line	42
	
l2818:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Init
	__end_of_I2C_Init:
;; =============== function _I2C_Init ends ============

	signat	_I2C_Init,88
	global	_delay_us
psect	text545,local,class=CODE,delta=2
global __ptext545
__ptext545:

;; *************** function _delay_us *****************
;; Defined at:
;;		line 26 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\delay.c"
;; Parameters:    Size  Location     Type
;;  us_count        2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_delay_ms
;;		_I2C_Clock
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Read
;;		_LCD_Init
;;		_LCD_CmdWrite
;;		_LCD_DataWrite
;; This function uses a non-reentrant model
;;
psect	text545
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\RTC\RTC_LCD\delay.c"
	line	26
	global	__size_of_delay_us
	__size_of_delay_us	equ	__end_of_delay_us-_delay_us
	
_delay_us:	
	opt	stack 4
; Regs used in _delay_us: [wreg+status,2+status,0]
	line	27
	
l5913:	
;delay.c: 27: while(us_count!=0)
	goto	l5917
	
l1396:	
	line	29
	
l5915:	
;delay.c: 28: {
;delay.c: 29: us_count--;
	movlw	low(01h)
	subwf	(delay_us@us_count),f
	movlw	high(01h)
	skipc
	decf	(delay_us@us_count+1),f
	subwf	(delay_us@us_count+1),f
	goto	l5917
	line	30
	
l1395:	
	line	27
	
l5917:	
	movf	((delay_us@us_count+1)),w
	iorwf	((delay_us@us_count)),w
	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l5915
u2490:
	goto	l1398
	
l1397:	
	line	31
	
l1398:	
	return
	opt stack 0
GLOBAL	__end_of_delay_us
	__end_of_delay_us:
;; =============== function _delay_us ends ============

	signat	_delay_us,4216
psect	text546,local,class=CODE,delta=2
global __ptext546
__ptext546:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
