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
	FNCALL	_main,_UART_Init
	FNCALL	_main,_DS1307_Init
	FNCALL	_main,_DS1307_SetTime
	FNCALL	_main,_DS1307_SetDate
	FNCALL	_main,_DS1307_GetDate
	FNCALL	_main,_DisplayRtcDate
	FNCALL	_main,_DS1307_GetTime
	FNCALL	_main,_DisplayRtcTime
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
	FNCALL	_DisplayRtcTime,_UART_TxString
	FNCALL	_DisplayRtcTime,_UART_TxChar
	FNCALL	_DisplayRtcDate,_UART_TxString
	FNCALL	_DisplayRtcDate,_UART_TxChar
	FNCALL	_I2C_NoAck,_I2C_Clock
	FNCALL	_I2C_Ack,_I2C_Clock
	FNCALL	_DS1307_Read,_I2C_Read
	FNCALL	_I2C_Write,_I2C_Clock
	FNCALL	_UART_TxString,_UART_TxChar
	FNCALL	_I2C_Read,_delay_us
	FNCALL	_I2C_Clock,_delay_us
	FNCALL	_I2C_Stop,_delay_us
	FNCALL	_I2C_Start,_delay_us
	FNROOT	_main
	global	_RCREG
psect	text458,local,class=CODE,delta=2
global __ptext458
__ptext458:
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RCIF
_RCIF	set	101
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TRISC
_TRISC	set	135
	global	_TXSTA
_TXSTA	set	152
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
	
STR_2:	
	retlw	10
	retlw	13
	retlw	100	;'d'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	32	;' '
	retlw	84	;'T'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"tc_on_uart.as"
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
	global	?_UART_Init
?_UART_Init:	; 0 bytes @ 0x0
	global	??_UART_Init
??_UART_Init:	; 0 bytes @ 0x0
	global	?_UART_TxString
?_UART_TxString:	; 0 bytes @ 0x0
	global	?_UART_TxChar
?_UART_TxChar:	; 0 bytes @ 0x0
	global	??_UART_TxChar
??_UART_TxChar:	; 0 bytes @ 0x0
	global	?_delay_us
?_delay_us:	; 0 bytes @ 0x0
	global	?_DS1307_Init
?_DS1307_Init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_I2C_Read
?_I2C_Read:	; 1 bytes @ 0x0
	global	?_DS1307_Read
?_DS1307_Read:	; 1 bytes @ 0x0
	global	UART_TxChar@ch
UART_TxChar@ch:	; 1 bytes @ 0x0
	global	delay_us@us_count
delay_us@us_count:	; 2 bytes @ 0x0
	ds	1
	global	??_UART_TxString
??_UART_TxString:	; 0 bytes @ 0x1
	ds	1
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
	global	UART_TxString@string_ptr
UART_TxString@string_ptr:	; 1 bytes @ 0x2
	ds	1
	global	?_DisplayRtcDate
?_DisplayRtcDate:	; 0 bytes @ 0x3
	global	?_DisplayRtcTime
?_DisplayRtcTime:	; 0 bytes @ 0x3
	global	DisplayRtcTime@min
DisplayRtcTime@min:	; 1 bytes @ 0x3
	global	DisplayRtcDate@month
DisplayRtcDate@month:	; 1 bytes @ 0x3
	ds	1
	global	I2C_Write@dat
I2C_Write@dat:	; 1 bytes @ 0x4
	global	I2C_Read@i
I2C_Read@i:	; 1 bytes @ 0x4
	global	DisplayRtcTime@sec
DisplayRtcTime@sec:	; 1 bytes @ 0x4
	global	DisplayRtcDate@year
DisplayRtcDate@year:	; 1 bytes @ 0x4
	ds	1
	global	??_DisplayRtcDate
??_DisplayRtcDate:	; 0 bytes @ 0x5
	global	??_DisplayRtcTime
??_DisplayRtcTime:	; 0 bytes @ 0x5
	global	I2C_Write@i
I2C_Write@i:	; 1 bytes @ 0x5
	global	I2C_Read@dat
I2C_Read@dat:	; 1 bytes @ 0x5
	ds	1
	global	??_DS1307_Write
??_DS1307_Write:	; 0 bytes @ 0x6
	global	??_DS1307_Read
??_DS1307_Read:	; 0 bytes @ 0x6
	global	DS1307_Write@dat
DS1307_Write@dat:	; 1 bytes @ 0x6
	global	DisplayRtcTime@hour
DisplayRtcTime@hour:	; 1 bytes @ 0x6
	global	DisplayRtcDate@day
DisplayRtcDate@day:	; 1 bytes @ 0x6
	ds	1
	global	??_DS1307_Init
??_DS1307_Init:	; 0 bytes @ 0x7
	global	?_DS1307_SetTime
?_DS1307_SetTime:	; 0 bytes @ 0x7
	global	?_DS1307_SetDate
?_DS1307_SetDate:	; 0 bytes @ 0x7
	global	DS1307_Read@dat
DS1307_Read@dat:	; 1 bytes @ 0x7
	global	DS1307_SetTime@mm
DS1307_SetTime@mm:	; 1 bytes @ 0x7
	global	DS1307_SetDate@mm
DS1307_SetDate@mm:	; 1 bytes @ 0x7
	ds	1
	global	?_DS1307_GetTime
?_DS1307_GetTime:	; 0 bytes @ 0x8
	global	?_DS1307_GetDate
?_DS1307_GetDate:	; 0 bytes @ 0x8
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
	ds	1
	global	??_DS1307_GetTime
??_DS1307_GetTime:	; 0 bytes @ 0xA
	global	??_DS1307_GetDate
??_DS1307_GetDate:	; 0 bytes @ 0xA
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
;;Data sizes: Strings 17, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      6       6
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; UART_TxString@string_ptr	PTR unsigned char  size(1) Largest target is 9
;;		 -> STR_2(CODE[9]), STR_1(CODE[8]), 
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
;;   _main->_DS1307_GetDate
;;   _main->_DS1307_GetTime
;;   _DS1307_GetDate->_DS1307_Read
;;   _DS1307_GetTime->_DS1307_Read
;;   _DS1307_SetDate->_DS1307_Write
;;   _DS1307_SetTime->_DS1307_Write
;;   _DS1307_Init->_DS1307_Write
;;   _DS1307_Write->_I2C_Write
;;   _DisplayRtcTime->_UART_TxString
;;   _DisplayRtcDate->_UART_TxString
;;   _DS1307_Read->_I2C_Read
;;   _UART_TxString->_UART_TxChar
;;   _I2C_Read->_delay_us
;;   _I2C_Clock->_delay_us
;;   _I2C_Stop->_delay_us
;;   _I2C_Start->_delay_us
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
;; (0) _main                                                 8     8      0    2421
;;                                             12 COMMON     2     2      0
;;                                              0 BANK0      6     6      0
;;                          _UART_Init
;;                        _DS1307_Init
;;                     _DS1307_SetTime
;;                     _DS1307_SetDate
;;                     _DS1307_GetDate
;;                     _DisplayRtcDate
;;                     _DS1307_GetTime
;;                     _DisplayRtcTime
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
;; (1) _DisplayRtcTime                                       4     2      2     221
;;                                              3 COMMON     4     2      2
;;                      _UART_TxString
;;                        _UART_TxChar
;; ---------------------------------------------------------------------------------
;; (1) _DisplayRtcDate                                       4     2      2     221
;;                                              3 COMMON     4     2      2
;;                      _UART_TxString
;;                        _UART_TxChar
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
;; (2) _UART_TxString                                        2     2      0      67
;;                                              1 COMMON     2     2      0
;;                        _UART_TxChar
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
;; (2) _UART_TxChar                                          1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _UART_Init                                            0     0      0       0
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
;;   _UART_Init
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
;;   _DisplayRtcDate
;;     _UART_TxString
;;       _UART_TxChar
;;     _UART_TxChar
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
;;   _DisplayRtcTime
;;     _UART_TxString
;;       _UART_TxChar
;;     _UART_TxChar
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
;;		line 22 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\main.c"
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
;;		_UART_Init
;;		_DS1307_Init
;;		_DS1307_SetTime
;;		_DS1307_SetDate
;;		_DS1307_GetDate
;;		_DisplayRtcDate
;;		_DS1307_GetTime
;;		_DisplayRtcTime
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\main.c"
	line	22
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	26
	
l6035:	
;main.c: 23: unsigned char sec,min,hour,day,month,year;
;main.c: 26: UART_Init();
	fcall	_UART_Init
	line	29
;main.c: 29: DS1307_Init();
	fcall	_DS1307_Init
	line	33
;main.c: 33: DS1307_SetTime(0x10,0x40,0x20);
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
	line	34
;main.c: 34: DS1307_SetDate(0x14,0x11,0x12);
	movlw	(011h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_DS1307_SetDate)
	movlw	(012h)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_DS1307_SetDate)+01h
	movlw	(014h)
	fcall	_DS1307_SetDate
	goto	l6037
	line	40
;main.c: 40: while(1)
	
l2838:	
	line	43
	
l6037:	
;main.c: 41: {
;main.c: 43: DS1307_GetDate(&day,&month,&year);
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
	line	46
	
l6039:	
;main.c: 46: DisplayRtcDate(day,month,year);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@month),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_DisplayRtcDate)
	movf	(main@year),w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_DisplayRtcDate)+01h
	movf	(main@day),w
	fcall	_DisplayRtcDate
	line	51
	
l6041:	
;main.c: 51: DS1307_GetTime(&hour,&min,&sec);
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
	line	54
	
l6043:	
;main.c: 54: DisplayRtcTime(hour,min,sec);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@min),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_DisplayRtcTime)
	movf	(main@sec),w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_DisplayRtcTime)+01h
	movf	(main@hour),w
	fcall	_DisplayRtcTime
	goto	l6037
	line	58
	
l2839:	
	line	40
	goto	l6037
	
l2840:	
	line	60
	
l2841:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_DS1307_GetDate
psect	text459,local,class=CODE,delta=2
global __ptext459
__ptext459:

;; *************** function _DS1307_GetDate *****************
;; Defined at:
;;		line 218 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\ds1307.c"
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
psect	text459
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\ds1307.c"
	line	218
	global	__size_of_DS1307_GetDate
	__size_of_DS1307_GetDate	equ	__end_of_DS1307_GetDate-_DS1307_GetDate
	
_DS1307_GetDate:	
	opt	stack 3
; Regs used in _DS1307_GetDate: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;DS1307_GetDate@d_ptr stored from wreg
	movwf	(DS1307_GetDate@d_ptr)
	line	219
	
l6025:	
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
	
l6027:	
;ds1307.c: 231: *d_ptr = DS1307_Read(); I2C_Ack();
	fcall	_DS1307_Read
	movwf	(??_DS1307_GetDate+0)+0
	movf	(DS1307_GetDate@d_ptr),w
	movwf	fsr0
	movf	(??_DS1307_GetDate+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6029:	
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
	
l6031:	
	fcall	_I2C_Ack
	line	233
	
l6033:	
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
	
l1421:	
	return
	opt stack 0
GLOBAL	__end_of_DS1307_GetDate
	__end_of_DS1307_GetDate:
;; =============== function _DS1307_GetDate ends ============

	signat	_DS1307_GetDate,12408
	global	_DS1307_GetTime
psect	text460,local,class=CODE,delta=2
global __ptext460
__ptext460:

;; *************** function _DS1307_GetTime *****************
;; Defined at:
;;		line 180 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\ds1307.c"
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
psect	text460
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\ds1307.c"
	line	180
	global	__size_of_DS1307_GetTime
	__size_of_DS1307_GetTime	equ	__end_of_DS1307_GetTime-_DS1307_GetTime
	
_DS1307_GetTime:	
	opt	stack 3
; Regs used in _DS1307_GetTime: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;DS1307_GetTime@h_ptr stored from wreg
	movwf	(DS1307_GetTime@h_ptr)
	line	181
	
l6015:	
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
	
l6017:	
;ds1307.c: 192: *s_ptr = DS1307_Read(); I2C_Ack();
	fcall	_DS1307_Read
	movwf	(??_DS1307_GetTime+0)+0
	movf	(DS1307_GetTime@s_ptr),w
	movwf	fsr0
	movf	(??_DS1307_GetTime+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6019:	
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
	
l6021:	
	fcall	_I2C_Ack
	line	194
	
l6023:	
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
	
l1418:	
	return
	opt stack 0
GLOBAL	__end_of_DS1307_GetTime
	__end_of_DS1307_GetTime:
;; =============== function _DS1307_GetTime ends ============

	signat	_DS1307_GetTime,12408
	global	_DS1307_SetDate
psect	text461,local,class=CODE,delta=2
global __ptext461
__ptext461:

;; *************** function _DS1307_SetDate *****************
;; Defined at:
;;		line 149 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\ds1307.c"
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
psect	text461
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\ds1307.c"
	line	149
	global	__size_of_DS1307_SetDate
	__size_of_DS1307_SetDate	equ	__end_of_DS1307_SetDate-_DS1307_SetDate
	
_DS1307_SetDate:	
	opt	stack 3
; Regs used in _DS1307_SetDate: [wreg+status,2+status,0+pclath+cstack]
;DS1307_SetDate@dd stored from wreg
	movwf	(DS1307_SetDate@dd)
	line	150
	
l6013:	
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
	
l1415:	
	return
	opt stack 0
GLOBAL	__end_of_DS1307_SetDate
	__end_of_DS1307_SetDate:
;; =============== function _DS1307_SetDate ends ============

	signat	_DS1307_SetDate,12408
	global	_DS1307_SetTime
psect	text462,local,class=CODE,delta=2
global __ptext462
__ptext462:

;; *************** function _DS1307_SetTime *****************
;; Defined at:
;;		line 117 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\ds1307.c"
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
psect	text462
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\ds1307.c"
	line	117
	global	__size_of_DS1307_SetTime
	__size_of_DS1307_SetTime	equ	__end_of_DS1307_SetTime-_DS1307_SetTime
	
_DS1307_SetTime:	
	opt	stack 3
; Regs used in _DS1307_SetTime: [wreg+status,2+status,0+pclath+cstack]
;DS1307_SetTime@hh stored from wreg
	movwf	(DS1307_SetTime@hh)
	line	118
	
l6011:	
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
	
l1412:	
	return
	opt stack 0
GLOBAL	__end_of_DS1307_SetTime
	__end_of_DS1307_SetTime:
;; =============== function _DS1307_SetTime ends ============

	signat	_DS1307_SetTime,12408
	global	_DS1307_Init
psect	text463,local,class=CODE,delta=2
global __ptext463
__ptext463:

;; *************** function _DS1307_Init *****************
;; Defined at:
;;		line 43 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\ds1307.c"
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
psect	text463
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\ds1307.c"
	line	43
	global	__size_of_DS1307_Init
	__size_of_DS1307_Init	equ	__end_of_DS1307_Init-_DS1307_Init
	
_DS1307_Init:	
	opt	stack 3
; Regs used in _DS1307_Init: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l5999:	
;ds1307.c: 44: I2C_Init();
	fcall	_I2C_Init
	line	45
	
l6001:	
;ds1307.c: 45: I2C_Start();
	fcall	_I2C_Start
	line	47
	
l6003:	
;ds1307.c: 47: DS1307_Write(0xD0);
	movlw	(0D0h)
	fcall	_DS1307_Write
	line	48
	
l6005:	
;ds1307.c: 48: DS1307_Write(0x07);
	movlw	(07h)
	fcall	_DS1307_Write
	line	50
	
l6007:	
;ds1307.c: 50: DS1307_Write(0x00);
	movlw	(0)
	fcall	_DS1307_Write
	line	52
	
l6009:	
;ds1307.c: 52: I2C_Stop();
	fcall	_I2C_Stop
	line	54
	
l1403:	
	return
	opt stack 0
GLOBAL	__end_of_DS1307_Init
	__end_of_DS1307_Init:
;; =============== function _DS1307_Init ends ============

	signat	_DS1307_Init,88
	global	_DS1307_Write
psect	text464,local,class=CODE,delta=2
global __ptext464
__ptext464:

;; *************** function _DS1307_Write *****************
;; Defined at:
;;		line 76 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\ds1307.c"
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
psect	text464
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\ds1307.c"
	line	76
	global	__size_of_DS1307_Write
	__size_of_DS1307_Write	equ	__end_of_DS1307_Write-_DS1307_Write
	
_DS1307_Write:	
	opt	stack 3
; Regs used in _DS1307_Write: [wreg+status,2+status,0+pclath+cstack]
;DS1307_Write@dat stored from wreg
	movwf	(DS1307_Write@dat)
	line	77
	
l5997:	
;ds1307.c: 77: I2C_Write(dat);
	movf	(DS1307_Write@dat),w
	fcall	_I2C_Write
	line	78
;ds1307.c: 78: I2C_Clock();
	fcall	_I2C_Clock
	line	79
	
l1406:	
	return
	opt stack 0
GLOBAL	__end_of_DS1307_Write
	__end_of_DS1307_Write:
;; =============== function _DS1307_Write ends ============

	signat	_DS1307_Write,4216
	global	_DisplayRtcTime
psect	text465,local,class=CODE,delta=2
global __ptext465
__ptext465:

;; *************** function _DisplayRtcTime *****************
;; Defined at:
;;		line 66 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\main.c"
;; Parameters:    Size  Location     Type
;;  hour            1    wreg     unsigned char 
;;  min             1    3[COMMON] unsigned char 
;;  sec             1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  hour            1    6[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_UART_TxString
;;		_UART_TxChar
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text465
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\main.c"
	line	66
	global	__size_of_DisplayRtcTime
	__size_of_DisplayRtcTime	equ	__end_of_DisplayRtcTime-_DisplayRtcTime
	
_DisplayRtcTime:	
	opt	stack 5
; Regs used in _DisplayRtcTime: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;DisplayRtcTime@hour stored from wreg
	movwf	(DisplayRtcTime@hour)
	line	67
	
l5979:	
;main.c: 67: UART_TxString(" Time: ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_UART_TxString
	line	68
	
l5981:	
;main.c: 68: UART_TxChar(((hour>>4) & 0x0f) + 0x30);
	movf	(DisplayRtcTime@hour),w
	movwf	(??_DisplayRtcTime+0)+0
	movlw	04h
u2605:
	clrc
	rrf	(??_DisplayRtcTime+0)+0,f
	addlw	-1
	skipz
	goto	u2605
	movf	0+(??_DisplayRtcTime+0)+0,w
	andlw	0Fh
	addlw	030h
	fcall	_UART_TxChar
	line	69
	
l5983:	
;main.c: 69: UART_TxChar((hour & 0x0f) + 0x30);
	movf	(DisplayRtcTime@hour),w
	andlw	0Fh
	addlw	030h
	fcall	_UART_TxChar
	line	70
	
l5985:	
;main.c: 70: UART_TxChar(':');
	movlw	(03Ah)
	fcall	_UART_TxChar
	line	72
	
l5987:	
;main.c: 72: UART_TxChar(((min>>4) & 0x0f) + 0x30);
	movf	(DisplayRtcTime@min),w
	movwf	(??_DisplayRtcTime+0)+0
	movlw	04h
u2615:
	clrc
	rrf	(??_DisplayRtcTime+0)+0,f
	addlw	-1
	skipz
	goto	u2615
	movf	0+(??_DisplayRtcTime+0)+0,w
	andlw	0Fh
	addlw	030h
	fcall	_UART_TxChar
	line	73
	
l5989:	
;main.c: 73: UART_TxChar((min & 0x0f) + 0x30);
	movf	(DisplayRtcTime@min),w
	andlw	0Fh
	addlw	030h
	fcall	_UART_TxChar
	line	74
	
l5991:	
;main.c: 74: UART_TxChar(':');
	movlw	(03Ah)
	fcall	_UART_TxChar
	line	76
	
l5993:	
;main.c: 76: UART_TxChar(((sec>>4) & 0x0f) + 0x30);
	movf	(DisplayRtcTime@sec),w
	movwf	(??_DisplayRtcTime+0)+0
	movlw	04h
u2625:
	clrc
	rrf	(??_DisplayRtcTime+0)+0,f
	addlw	-1
	skipz
	goto	u2625
	movf	0+(??_DisplayRtcTime+0)+0,w
	andlw	0Fh
	addlw	030h
	fcall	_UART_TxChar
	line	77
	
l5995:	
;main.c: 77: UART_TxChar((sec & 0x0f) + 0x30);
	movf	(DisplayRtcTime@sec),w
	andlw	0Fh
	addlw	030h
	fcall	_UART_TxChar
	line	79
	
l2844:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayRtcTime
	__end_of_DisplayRtcTime:
;; =============== function _DisplayRtcTime ends ============

	signat	_DisplayRtcTime,12408
	global	_DisplayRtcDate
psect	text466,local,class=CODE,delta=2
global __ptext466
__ptext466:

;; *************** function _DisplayRtcDate *****************
;; Defined at:
;;		line 88 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\main.c"
;; Parameters:    Size  Location     Type
;;  day             1    wreg     unsigned char 
;;  month           1    3[COMMON] unsigned char 
;;  year            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  day             1    6[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_UART_TxString
;;		_UART_TxChar
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text466
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\main.c"
	line	88
	global	__size_of_DisplayRtcDate
	__size_of_DisplayRtcDate	equ	__end_of_DisplayRtcDate-_DisplayRtcDate
	
_DisplayRtcDate:	
	opt	stack 5
; Regs used in _DisplayRtcDate: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;DisplayRtcDate@day stored from wreg
	movwf	(DisplayRtcDate@day)
	line	89
	
l5961:	
;main.c: 89: UART_TxString("\n\rdate: ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_UART_TxString
	line	90
	
l5963:	
;main.c: 90: UART_TxChar(((day>>4) & 0x0f) + 0x30);
	movf	(DisplayRtcDate@day),w
	movwf	(??_DisplayRtcDate+0)+0
	movlw	04h
u2575:
	clrc
	rrf	(??_DisplayRtcDate+0)+0,f
	addlw	-1
	skipz
	goto	u2575
	movf	0+(??_DisplayRtcDate+0)+0,w
	andlw	0Fh
	addlw	030h
	fcall	_UART_TxChar
	line	91
	
l5965:	
;main.c: 91: UART_TxChar((day & 0x0f) + 0x30);
	movf	(DisplayRtcDate@day),w
	andlw	0Fh
	addlw	030h
	fcall	_UART_TxChar
	line	92
	
l5967:	
;main.c: 92: UART_TxChar('/');
	movlw	(02Fh)
	fcall	_UART_TxChar
	line	94
	
l5969:	
;main.c: 94: UART_TxChar(((month>>4) & 0x0f) + 0x30);
	movf	(DisplayRtcDate@month),w
	movwf	(??_DisplayRtcDate+0)+0
	movlw	04h
u2585:
	clrc
	rrf	(??_DisplayRtcDate+0)+0,f
	addlw	-1
	skipz
	goto	u2585
	movf	0+(??_DisplayRtcDate+0)+0,w
	andlw	0Fh
	addlw	030h
	fcall	_UART_TxChar
	line	95
	
l5971:	
;main.c: 95: UART_TxChar((month & 0x0f) + 0x30);
	movf	(DisplayRtcDate@month),w
	andlw	0Fh
	addlw	030h
	fcall	_UART_TxChar
	line	96
	
l5973:	
;main.c: 96: UART_TxChar('/');
	movlw	(02Fh)
	fcall	_UART_TxChar
	line	98
	
l5975:	
;main.c: 98: UART_TxChar(((year>>4) & 0x0f) + 0x30);
	movf	(DisplayRtcDate@year),w
	movwf	(??_DisplayRtcDate+0)+0
	movlw	04h
u2595:
	clrc
	rrf	(??_DisplayRtcDate+0)+0,f
	addlw	-1
	skipz
	goto	u2595
	movf	0+(??_DisplayRtcDate+0)+0,w
	andlw	0Fh
	addlw	030h
	fcall	_UART_TxChar
	line	99
	
l5977:	
;main.c: 99: UART_TxChar((year & 0x0f) + 0x30);
	movf	(DisplayRtcDate@year),w
	andlw	0Fh
	addlw	030h
	fcall	_UART_TxChar
	line	101
	
l2847:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayRtcDate
	__end_of_DisplayRtcDate:
;; =============== function _DisplayRtcDate ends ============

	signat	_DisplayRtcDate,12408
	global	_I2C_NoAck
psect	text467,local,class=CODE,delta=2
global __ptext467
__ptext467:

;; *************** function _I2C_NoAck *****************
;; Defined at:
;;		line 264 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\i2c.c"
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
psect	text467
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\i2c.c"
	line	264
	global	__size_of_I2C_NoAck
	__size_of_I2C_NoAck	equ	__end_of_I2C_NoAck-_I2C_NoAck
	
_I2C_NoAck:	
	opt	stack 4
; Regs used in _I2C_NoAck: [wreg+status,2+status,0+pclath+cstack]
	line	265
	
l5955:	
;i2c.c: 265: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	266
	
l5957:	
;i2c.c: 266: I2C_Clock();
	fcall	_I2C_Clock
	line	267
	
l5959:	
;i2c.c: 267: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	268
	
l2133:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_NoAck
	__end_of_I2C_NoAck:
;; =============== function _I2C_NoAck ends ============

	signat	_I2C_NoAck,88
	global	_I2C_Ack
psect	text468,local,class=CODE,delta=2
global __ptext468
__ptext468:

;; *************** function _I2C_Ack *****************
;; Defined at:
;;		line 244 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\i2c.c"
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
psect	text468
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\i2c.c"
	line	244
	global	__size_of_I2C_Ack
	__size_of_I2C_Ack	equ	__end_of_I2C_Ack-_I2C_Ack
	
_I2C_Ack:	
	opt	stack 4
; Regs used in _I2C_Ack: [wreg+status,2+status,0+pclath+cstack]
	line	245
	
l5949:	
;i2c.c: 245: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	246
	
l5951:	
;i2c.c: 246: I2C_Clock();
	fcall	_I2C_Clock
	line	247
	
l5953:	
;i2c.c: 247: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	248
	
l2130:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Ack
	__end_of_I2C_Ack:
;; =============== function _I2C_Ack ends ============

	signat	_I2C_Ack,88
	global	_DS1307_Read
psect	text469,local,class=CODE,delta=2
global __ptext469
__ptext469:

;; *************** function _DS1307_Read *****************
;; Defined at:
;;		line 95 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\ds1307.c"
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
psect	text469
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\ds1307.c"
	line	95
	global	__size_of_DS1307_Read
	__size_of_DS1307_Read	equ	__end_of_DS1307_Read-_DS1307_Read
	
_DS1307_Read:	
	opt	stack 4
; Regs used in _DS1307_Read: [wreg+status,2+status,0+pclath+cstack]
	line	97
	
l5943:	
;ds1307.c: 96: unsigned char dat;
;ds1307.c: 97: dat = I2C_Read();
	fcall	_I2C_Read
	movwf	(??_DS1307_Read+0)+0
	movf	(??_DS1307_Read+0)+0,w
	movwf	(DS1307_Read@dat)
	line	98
	
l5945:	
;ds1307.c: 98: return(dat);
	movf	(DS1307_Read@dat),w
	goto	l1409
	
l5947:	
	line	99
	
l1409:	
	return
	opt stack 0
GLOBAL	__end_of_DS1307_Read
	__end_of_DS1307_Read:
;; =============== function _DS1307_Read ends ============

	signat	_DS1307_Read,89
	global	_I2C_Write
psect	text470,local,class=CODE,delta=2
global __ptext470
__ptext470:

;; *************** function _I2C_Write *****************
;; Defined at:
;;		line 169 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\i2c.c"
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
psect	text470
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\i2c.c"
	line	169
	global	__size_of_I2C_Write
	__size_of_I2C_Write	equ	__end_of_I2C_Write-_I2C_Write
	
_I2C_Write:	
	opt	stack 3
; Regs used in _I2C_Write: [wreg+status,2+status,0+pclath+cstack]
;I2C_Write@dat stored from wreg
	line	172
	movwf	(I2C_Write@dat)
	
l5927:	
;i2c.c: 170: unsigned char i;
;i2c.c: 172: for(i=0;i<8;i++)
	clrf	(I2C_Write@i)
	
l5929:	
	movlw	(08h)
	subwf	(I2C_Write@i),w
	skipc
	goto	u2521
	goto	u2520
u2521:
	goto	l5933
u2520:
	goto	l2121
	
l5931:	
	goto	l2121
	line	173
	
l2120:	
	line	174
	
l5933:	
;i2c.c: 173: {
;i2c.c: 174: RC4 = (dat & 0x80)>>7;
	movf	(I2C_Write@dat),w
	movwf	(??_I2C_Write+0)+0
	movlw	07h
u2535:
	clrc
	rrf	(??_I2C_Write+0)+0,f
	addlw	-1
	skipz
	goto	u2535
	btfsc	0+(??_I2C_Write+0)+0,0
	goto	u2541
	goto	u2540
	
u2541:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	goto	u2554
u2540:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
u2554:
	line	175
	
l5935:	
;i2c.c: 175: I2C_Clock();
	fcall	_I2C_Clock
	line	176
	
l5937:	
;i2c.c: 176: dat = dat<<1;
	movf	(I2C_Write@dat),w
	movwf	(??_I2C_Write+0)+0
	addwf	(??_I2C_Write+0)+0,w
	movwf	(??_I2C_Write+1)+0
	movf	(??_I2C_Write+1)+0,w
	movwf	(I2C_Write@dat)
	line	172
	
l5939:	
	movlw	(01h)
	movwf	(??_I2C_Write+0)+0
	movf	(??_I2C_Write+0)+0,w
	addwf	(I2C_Write@i),f
	
l5941:	
	movlw	(08h)
	subwf	(I2C_Write@i),w
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l5933
u2560:
	
l2121:	
	line	178
;i2c.c: 177: }
;i2c.c: 178: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	180
	
l2122:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Write
	__end_of_I2C_Write:
;; =============== function _I2C_Write ends ============

	signat	_I2C_Write,4216
	global	_UART_TxString
psect	text471,local,class=CODE,delta=2
global __ptext471
__ptext471:

;; *************** function _UART_TxString *****************
;; Defined at:
;;		line 107 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\uart.c"
;; Parameters:    Size  Location     Type
;;  string_ptr      1    wreg     PTR unsigned char 
;;		 -> STR_2(9), STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  string_ptr      1    2[COMMON] PTR unsigned char 
;;		 -> STR_2(9), STR_1(8), 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_UART_TxChar
;; This function is called by:
;;		_DisplayRtcTime
;;		_DisplayRtcDate
;; This function uses a non-reentrant model
;;
psect	text471
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\uart.c"
	line	107
	global	__size_of_UART_TxString
	__size_of_UART_TxString	equ	__end_of_UART_TxString-_UART_TxString
	
_UART_TxString:	
	opt	stack 5
; Regs used in _UART_TxString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;UART_TxString@string_ptr stored from wreg
	movwf	(UART_TxString@string_ptr)
	line	108
	
l5919:	
;uart.c: 108: while(*string_ptr)
	goto	l5925
	
l3548:	
	line	109
	
l5921:	
;uart.c: 109: UART_TxChar(*string_ptr++);
	movf	(UART_TxString@string_ptr),w
	movwf	fsr0
	fcall	stringdir
	fcall	_UART_TxChar
	
l5923:	
	movlw	(01h)
	movwf	(??_UART_TxString+0)+0
	movf	(??_UART_TxString+0)+0,w
	addwf	(UART_TxString@string_ptr),f
	goto	l5925
	
l3547:	
	line	108
	
l5925:	
	movf	(UART_TxString@string_ptr),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2511
	goto	u2510
u2511:
	goto	l5921
u2510:
	goto	l3550
	
l3549:	
	line	110
	
l3550:	
	return
	opt stack 0
GLOBAL	__end_of_UART_TxString
	__end_of_UART_TxString:
;; =============== function _UART_TxString ends ============

	signat	_UART_TxString,4216
	global	_I2C_Read
psect	text472,local,class=CODE,delta=2
global __ptext472
__ptext472:

;; *************** function _I2C_Read *****************
;; Defined at:
;;		line 207 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\i2c.c"
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
psect	text472
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\i2c.c"
	line	207
	global	__size_of_I2C_Read
	__size_of_I2C_Read	equ	__end_of_I2C_Read-_I2C_Read
	
_I2C_Read:	
	opt	stack 4
; Regs used in _I2C_Read: [wreg+status,2+status,0+pclath+cstack]
	line	208
	
l5895:	
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
	
l5897:	
	movlw	(08h)
	subwf	(I2C_Read@i),w
	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l5901
u2490:
	goto	l2126
	
l5899:	
	goto	l2126
	line	212
	
l2125:	
	line	213
	
l5901:	
;i2c.c: 212: {
;i2c.c: 213: delay_us(1);
	movlw	low(01h)
	movwf	(?_delay_us)
	movlw	high(01h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	216
	
l5903:	
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
	
l5905:	
;i2c.c: 219: dat = dat<<1;
	movf	(I2C_Read@dat),w
	movwf	(??_I2C_Read+0)+0
	addwf	(??_I2C_Read+0)+0,w
	movwf	(??_I2C_Read+1)+0
	movf	(??_I2C_Read+1)+0,w
	movwf	(I2C_Read@dat)
	line	220
	
l5907:	
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
	
l5909:	
;i2c.c: 222: RC3 = 0;
	bcf	(59/8),(59)&7
	line	211
	
l5911:	
	movlw	(01h)
	movwf	(??_I2C_Read+0)+0
	movf	(??_I2C_Read+0)+0,w
	addwf	(I2C_Read@i),f
	
l5913:	
	movlw	(08h)
	subwf	(I2C_Read@i),w
	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l5901
u2500:
	
l2126:	
	line	224
;i2c.c: 223: }
;i2c.c: 224: TRISC4=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	225
	
l5915:	
;i2c.c: 225: return dat;
	movf	(I2C_Read@dat),w
	goto	l2127
	
l5917:	
	line	226
	
l2127:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Read
	__end_of_I2C_Read:
;; =============== function _I2C_Read ends ============

	signat	_I2C_Read,89
	global	_I2C_Clock
psect	text473,local,class=CODE,delta=2
global __ptext473
__ptext473:

;; *************** function _I2C_Clock *****************
;; Defined at:
;;		line 56 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\i2c.c"
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
psect	text473
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\i2c.c"
	line	56
	global	__size_of_I2C_Clock
	__size_of_I2C_Clock	equ	__end_of_I2C_Clock-_I2C_Clock
	
_I2C_Clock:	
	opt	stack 4
; Regs used in _I2C_Clock: [wreg+status,2+status,0+pclath+cstack]
	line	57
	
l5889:	
;i2c.c: 57: delay_us(1);
	movlw	low(01h)
	movwf	(?_delay_us)
	movlw	high(01h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	58
	
l5891:	
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
	
l5893:	
;i2c.c: 61: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	62
	
l2111:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Clock
	__end_of_I2C_Clock:
;; =============== function _I2C_Clock ends ============

	signat	_I2C_Clock,88
	global	_I2C_Stop
psect	text474,local,class=CODE,delta=2
global __ptext474
__ptext474:

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 128 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\i2c.c"
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
psect	text474
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\i2c.c"
	line	128
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
	opt	stack 5
; Regs used in _I2C_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	130
	
l5879:	
;i2c.c: 130: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	131
	
l5881:	
;i2c.c: 131: delay_us(1);
	movlw	low(01h)
	movwf	(?_delay_us)
	movlw	high(01h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	133
	
l5883:	
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
	
l5885:	
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
	
l5887:	
;i2c.c: 139: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	140
	
l2117:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
;; =============== function _I2C_Stop ends ============

	signat	_I2C_Stop,88
	global	_I2C_Start
psect	text475,local,class=CODE,delta=2
global __ptext475
__ptext475:

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 88 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\i2c.c"
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
psect	text475
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\i2c.c"
	line	88
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
	opt	stack 5
; Regs used in _I2C_Start: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l5869:	
;i2c.c: 90: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	92
;i2c.c: 92: RC4 = 1;
	bsf	(60/8),(60)&7
	line	93
	
l5871:	
;i2c.c: 93: delay_us(1);
	movlw	low(01h)
	movwf	(?_delay_us)
	movlw	high(01h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	95
	
l5873:	
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
	
l5875:	
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
	
l5877:	
;i2c.c: 101: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	103
	
l2114:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
;; =============== function _I2C_Start ends ============

	signat	_I2C_Start,88
	global	_UART_TxChar
psect	text476,local,class=CODE,delta=2
global __ptext476
__ptext476:

;; *************** function _UART_TxChar *****************
;; Defined at:
;;		line 80 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\uart.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DisplayRtcTime
;;		_DisplayRtcDate
;;		_UART_TxString
;;		_UART_RxString
;;		_UART_TxNumber
;; This function uses a non-reentrant model
;;
psect	text476
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\uart.c"
	line	80
	global	__size_of_UART_TxChar
	__size_of_UART_TxChar	equ	__end_of_UART_TxChar-_UART_TxChar
	
_UART_TxChar:	
	opt	stack 6
; Regs used in _UART_TxChar: [wreg]
;UART_TxChar@ch stored from wreg
	movwf	(UART_TxChar@ch)
	line	81
	
l5853:	
;uart.c: 81: while(TXIF==0);
	goto	l3541
	
l3542:	
	
l3541:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l3541
u2460:
	
l3543:	
	line	82
;uart.c: 82: TXIF=0;
	bcf	(100/8),(100)&7
	line	83
	
l5855:	
;uart.c: 83: TXREG=ch;
	movf	(UART_TxChar@ch),w
	movwf	(25)	;volatile
	line	84
	
l3544:	
	return
	opt stack 0
GLOBAL	__end_of_UART_TxChar
	__end_of_UART_TxChar:
;; =============== function _UART_TxChar ends ============

	signat	_UART_TxChar,4216
	global	_UART_Init
psect	text477,local,class=CODE,delta=2
global __ptext477
__ptext477:

;; *************** function _UART_Init *****************
;; Defined at:
;;		line 31 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text477
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\uart.c"
	line	31
	global	__size_of_UART_Init
	__size_of_UART_Init	equ	__end_of_UART_Init-_UART_Init
	
_UART_Init:	
	opt	stack 7
; Regs used in _UART_Init: [wreg]
	line	32
	
l5851:	
;uart.c: 32: TRISC=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	33
;uart.c: 33: TXSTA=0x20;
	movlw	(020h)
	movwf	(152)^080h	;volatile
	line	34
;uart.c: 34: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	35
;uart.c: 35: SPBRG=31;
	movlw	(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	36
	
l3532:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Init
	__end_of_UART_Init:
;; =============== function _UART_Init ends ============

	signat	_UART_Init,88
	global	_I2C_Init
psect	text478,local,class=CODE,delta=2
global __ptext478
__ptext478:

;; *************** function _I2C_Init *****************
;; Defined at:
;;		line 39 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\i2c.c"
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
psect	text478
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\i2c.c"
	line	39
	global	__size_of_I2C_Init
	__size_of_I2C_Init	equ	__end_of_I2C_Init-_I2C_Init
	
_I2C_Init:	
	opt	stack 6
; Regs used in _I2C_Init: []
	line	40
	
l5849:	
;i2c.c: 40: TRISC3=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	41
;i2c.c: 41: TRISC4=0;
	bcf	(1084/8)^080h,(1084)&7
	line	42
	
l2108:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Init
	__end_of_I2C_Init:
;; =============== function _I2C_Init ends ============

	signat	_I2C_Init,88
	global	_delay_us
psect	text479,local,class=CODE,delta=2
global __ptext479
__ptext479:

;; *************** function _delay_us *****************
;; Defined at:
;;		line 26 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\delay.c"
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
;;		_I2C_Clock
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Read
;;		_delay_ms
;; This function uses a non-reentrant model
;;
psect	text479
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\RTC\RTC_UART\delay.c"
	line	26
	global	__size_of_delay_us
	__size_of_delay_us	equ	__end_of_delay_us-_delay_us
	
_delay_us:	
	opt	stack 4
; Regs used in _delay_us: [wreg+status,2+status,0]
	line	27
	
l5827:	
;delay.c: 27: while(us_count!=0)
	goto	l5831
	
l686:	
	line	29
	
l5829:	
;delay.c: 28: {
;delay.c: 29: us_count--;
	movlw	low(01h)
	subwf	(delay_us@us_count),f
	movlw	high(01h)
	skipc
	decf	(delay_us@us_count+1),f
	subwf	(delay_us@us_count+1),f
	goto	l5831
	line	30
	
l685:	
	line	27
	
l5831:	
	movf	((delay_us@us_count+1)),w
	iorwf	((delay_us@us_count)),w
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l5829
u2430:
	goto	l688
	
l687:	
	line	31
	
l688:	
	return
	opt stack 0
GLOBAL	__end_of_delay_us
	__end_of_delay_us:
;; =============== function _delay_us ends ============

	signat	_delay_us,4216
psect	text480,local,class=CODE,delta=2
global __ptext480
__ptext480:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
