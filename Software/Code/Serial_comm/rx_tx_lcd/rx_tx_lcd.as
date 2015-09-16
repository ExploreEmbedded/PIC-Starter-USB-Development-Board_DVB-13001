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
	FNCALL	_main,_LCD_Init
	FNCALL	_main,_UART_RxChar
	FNCALL	_main,_UART_TxChar
	FNCALL	_main,_LCD_DataWrite
	FNCALL	_LCD_Init,_delay_us
	FNCALL	_LCD_Init,_LCD_CmdWrite
	FNCALL	_LCD_CmdWrite,_delay_us
	FNCALL	_LCD_CmdWrite,_delay_ms
	FNCALL	_LCD_DataWrite,_delay_us
	FNCALL	_LCD_DataWrite,_delay_ms
	FNCALL	_delay_ms,_delay_us
	FNROOT	_main
	global	_PORTB
psect	text158,local,class=CODE,delta=2
global __ptext158
__ptext158:
_PORTB	set	6
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
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
	global	_RCIF
_RCIF	set	101
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TXSTA
_TXSTA	set	152
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
	file	"rx_tx_lcd.as"
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
	global	?_UART_Init
?_UART_Init:	; 0 bytes @ 0x0
	global	??_UART_Init
??_UART_Init:	; 0 bytes @ 0x0
	global	?_LCD_Init
?_LCD_Init:	; 0 bytes @ 0x0
	global	??_UART_RxChar
??_UART_RxChar:	; 0 bytes @ 0x0
	global	?_UART_TxChar
?_UART_TxChar:	; 0 bytes @ 0x0
	global	??_UART_TxChar
??_UART_TxChar:	; 0 bytes @ 0x0
	global	?_LCD_DataWrite
?_LCD_DataWrite:	; 0 bytes @ 0x0
	global	?_LCD_CmdWrite
?_LCD_CmdWrite:	; 0 bytes @ 0x0
	global	?_delay_us
?_delay_us:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_UART_RxChar
?_UART_RxChar:	; 1 bytes @ 0x0
	global	UART_TxChar@ch
UART_TxChar@ch:	; 1 bytes @ 0x0
	global	delay_us@us_count
delay_us@us_count:	; 2 bytes @ 0x0
	ds	2
	global	??_delay_us
??_delay_us:	; 0 bytes @ 0x2
	global	?_delay_ms
?_delay_ms:	; 0 bytes @ 0x2
	global	delay_ms@ms_count
delay_ms@ms_count:	; 2 bytes @ 0x2
	ds	2
	global	??_LCD_DataWrite
??_LCD_DataWrite:	; 0 bytes @ 0x4
	global	??_LCD_CmdWrite
??_LCD_CmdWrite:	; 0 bytes @ 0x4
	global	??_delay_ms
??_delay_ms:	; 0 bytes @ 0x4
	ds	1
	global	LCD_CmdWrite@cmd
LCD_CmdWrite@cmd:	; 1 bytes @ 0x5
	global	LCD_DataWrite@dat
LCD_DataWrite@dat:	; 1 bytes @ 0x5
	ds	1
	global	??_LCD_Init
??_LCD_Init:	; 0 bytes @ 0x6
	global	??_main
??_main:	; 0 bytes @ 0x6
	ds	1
	global	main@ch
main@ch:	; 1 bytes @ 0x7
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_LCD_DataWrite
;;   _LCD_Init->_LCD_CmdWrite
;;   _LCD_CmdWrite->_delay_ms
;;   _LCD_DataWrite->_delay_ms
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0     210
;;                                              6 COMMON     2     2      0
;;                          _UART_Init
;;                           _LCD_Init
;;                        _UART_RxChar
;;                        _UART_TxChar
;;                      _LCD_DataWrite
;; ---------------------------------------------------------------------------------
;; (1) _LCD_Init                                             0     0      0      90
;;                           _delay_us
;;                       _LCD_CmdWrite
;; ---------------------------------------------------------------------------------
;; (2) _LCD_CmdWrite                                         2     2      0      75
;;                                              4 COMMON     2     2      0
;;                           _delay_us
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (1) _LCD_DataWrite                                        2     2      0      75
;;                                              4 COMMON     2     2      0
;;                           _delay_us
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (2) _delay_ms                                             2     0      2      30
;;                                              2 COMMON     2     0      2
;;                           _delay_us
;; ---------------------------------------------------------------------------------
;; (1) _UART_TxChar                                          1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _UART_RxChar                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _UART_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _delay_us                                             2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _UART_Init
;;   _LCD_Init
;;     _delay_us
;;     _LCD_CmdWrite
;;       _delay_us
;;       _delay_ms
;;         _delay_us
;;   _UART_RxChar
;;   _UART_TxChar
;;   _LCD_DataWrite
;;     _delay_us
;;     _delay_ms
;;       _delay_us
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       8       1       57.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
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
;;		line 20 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ch              1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_UART_Init
;;		_LCD_Init
;;		_UART_RxChar
;;		_UART_TxChar
;;		_LCD_DataWrite
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\main.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l5173:	
;main.c: 21: char ch;
;main.c: 24: UART_Init();
	fcall	_UART_Init
	line	27
;main.c: 27: LCD_Init();
	fcall	_LCD_Init
	goto	l5175
	line	30
;main.c: 30: while(1)
	
l1395:	
	line	33
	
l5175:	
;main.c: 31: {
;main.c: 33: ch=UART_RxChar();
	fcall	_UART_RxChar
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@ch)
	line	35
	
l5177:	
;main.c: 35: UART_TxChar(ch);
	movf	(main@ch),w
	fcall	_UART_TxChar
	line	37
	
l5179:	
;main.c: 37: LCD_DataWrite(ch);
	movf	(main@ch),w
	fcall	_LCD_DataWrite
	goto	l5175
	line	38
	
l1396:	
	line	30
	goto	l5175
	
l1397:	
	line	40
	
l1398:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_LCD_Init
psect	text159,local,class=CODE,delta=2
global __ptext159
__ptext159:

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 74 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\lcd_4_bit.c"
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
psect	text159
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\lcd_4_bit.c"
	line	74
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
	opt	stack 4
; Regs used in _LCD_Init: [wreg+status,2+status,0+pclath+cstack]
	line	75
	
l5159:	
;lcd_4_bit.c: 75: delay_us(5000);
	movlw	low(01388h)
	movwf	(?_delay_us)
	movlw	high(01388h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	76
	
l5161:	
;lcd_4_bit.c: 76: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	77
	
l5163:	
;lcd_4_bit.c: 77: LCD_CmdWrite(0x02);
	movlw	(02h)
	fcall	_LCD_CmdWrite
	line	78
	
l5165:	
;lcd_4_bit.c: 78: LCD_CmdWrite(0x28);
	movlw	(028h)
	fcall	_LCD_CmdWrite
	line	79
	
l5167:	
;lcd_4_bit.c: 79: LCD_CmdWrite(0x0E);
	movlw	(0Eh)
	fcall	_LCD_CmdWrite
	line	80
	
l5169:	
;lcd_4_bit.c: 80: LCD_CmdWrite(0x01);
	movlw	(01h)
	fcall	_LCD_CmdWrite
	line	81
	
l5171:	
;lcd_4_bit.c: 81: LCD_CmdWrite(0x80);
	movlw	(080h)
	fcall	_LCD_CmdWrite
	line	83
	
l2804:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
;; =============== function _LCD_Init ends ============

	signat	_LCD_Init,88
	global	_LCD_CmdWrite
psect	text160,local,class=CODE,delta=2
global __ptext160
__ptext160:

;; *************** function _LCD_CmdWrite *****************
;; Defined at:
;;		line 193 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\lcd_4_bit.c"
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
;;		_LCD_Clear
;;		_LCD_GoToLineOne
;;		_LCD_GoToLineTwo
;;		_LCD_GoToXY
;;		_LCD_ScrollMessage
;; This function uses a non-reentrant model
;;
psect	text160
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\lcd_4_bit.c"
	line	193
	global	__size_of_LCD_CmdWrite
	__size_of_LCD_CmdWrite	equ	__end_of_LCD_CmdWrite-_LCD_CmdWrite
	
_LCD_CmdWrite:	
	opt	stack 4
; Regs used in _LCD_CmdWrite: [wreg+status,2+status,0+pclath+cstack]
;LCD_CmdWrite@cmd stored from wreg
	line	195
	movwf	(LCD_CmdWrite@cmd)
	
l5131:	
;lcd_4_bit.c: 195: PORTB=(cmd & 0xf0);
	movf	(LCD_CmdWrite@cmd),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	196
	
l5133:	
;lcd_4_bit.c: 196: RB0=0;
	bcf	(48/8),(48)&7
	line	197
	
l5135:	
;lcd_4_bit.c: 197: RB1=0;
	bcf	(49/8),(49)&7
	line	198
	
l5137:	
;lcd_4_bit.c: 198: RB2=1;
	bsf	(50/8),(50)&7
	line	199
	
l5139:	
;lcd_4_bit.c: 199: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	200
	
l5141:	
;lcd_4_bit.c: 200: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	202
	
l5143:	
;lcd_4_bit.c: 202: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	204
	
l5145:	
;lcd_4_bit.c: 204: PORTB=((cmd<<4) & 0xf0);
	movf	(LCD_CmdWrite@cmd),w
	movwf	(??_LCD_CmdWrite+0)+0
	movlw	(04h)-1
u2465:
	clrc
	rlf	(??_LCD_CmdWrite+0)+0,f
	addlw	-1
	skipz
	goto	u2465
	clrc
	rlf	(??_LCD_CmdWrite+0)+0,w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	205
	
l5147:	
;lcd_4_bit.c: 205: RB0=0;
	bcf	(48/8),(48)&7
	line	206
	
l5149:	
;lcd_4_bit.c: 206: RB1=0;
	bcf	(49/8),(49)&7
	line	207
	
l5151:	
;lcd_4_bit.c: 207: RB2=1;
	bsf	(50/8),(50)&7
	line	208
	
l5153:	
;lcd_4_bit.c: 208: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	209
	
l5155:	
;lcd_4_bit.c: 209: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	211
	
l5157:	
;lcd_4_bit.c: 211: delay_ms(1);
	movlw	low(01h)
	movwf	(?_delay_ms)
	movlw	high(01h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	212
	
l2821:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_CmdWrite
	__end_of_LCD_CmdWrite:
;; =============== function _LCD_CmdWrite ends ============

	signat	_LCD_CmdWrite,4216
	global	_LCD_DataWrite
psect	text161,local,class=CODE,delta=2
global __ptext161
__ptext161:

;; *************** function _LCD_DataWrite *****************
;; Defined at:
;;		line 243 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\lcd_4_bit.c"
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
;;		_main
;;		_LCD_DisplayString
;;		_LCD_DisplayNumber
;;		_LCD_ScrollMessage
;;		_LCD_DisplayRtcTime
;;		_LCD_DisplayRtcDate
;; This function uses a non-reentrant model
;;
psect	text161
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\lcd_4_bit.c"
	line	243
	global	__size_of_LCD_DataWrite
	__size_of_LCD_DataWrite	equ	__end_of_LCD_DataWrite-_LCD_DataWrite
	
_LCD_DataWrite:	
	opt	stack 5
; Regs used in _LCD_DataWrite: [wreg+status,2+status,0+pclath+cstack]
;LCD_DataWrite@dat stored from wreg
	line	246
	movwf	(LCD_DataWrite@dat)
	
l5103:	
;lcd_4_bit.c: 246: PORTB=(dat & 0xf0);
	movf	(LCD_DataWrite@dat),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	247
	
l5105:	
;lcd_4_bit.c: 247: RB0=1;
	bsf	(48/8),(48)&7
	line	248
	
l5107:	
;lcd_4_bit.c: 248: RB1=0;
	bcf	(49/8),(49)&7
	line	249
	
l5109:	
;lcd_4_bit.c: 249: RB2=1;
	bsf	(50/8),(50)&7
	line	250
	
l5111:	
;lcd_4_bit.c: 250: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	251
	
l5113:	
;lcd_4_bit.c: 251: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	253
	
l5115:	
;lcd_4_bit.c: 253: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	255
	
l5117:	
;lcd_4_bit.c: 255: PORTB=((dat <<4) & 0xf0);
	movf	(LCD_DataWrite@dat),w
	movwf	(??_LCD_DataWrite+0)+0
	movlw	(04h)-1
u2455:
	clrc
	rlf	(??_LCD_DataWrite+0)+0,f
	addlw	-1
	skipz
	goto	u2455
	clrc
	rlf	(??_LCD_DataWrite+0)+0,w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	256
	
l5119:	
;lcd_4_bit.c: 256: RB0=1;
	bsf	(48/8),(48)&7
	line	257
	
l5121:	
;lcd_4_bit.c: 257: RB1=0;
	bcf	(49/8),(49)&7
	line	258
	
l5123:	
;lcd_4_bit.c: 258: RB2=1;
	bsf	(50/8),(50)&7
	line	259
	
l5125:	
;lcd_4_bit.c: 259: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	260
	
l5127:	
;lcd_4_bit.c: 260: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	262
	
l5129:	
;lcd_4_bit.c: 262: delay_ms(1);
	movlw	low(01h)
	movwf	(?_delay_ms)
	movlw	high(01h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	264
	
l2824:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DataWrite
	__end_of_LCD_DataWrite:
;; =============== function _LCD_DataWrite ends ============

	signat	_LCD_DataWrite,4216
	global	_delay_ms
psect	text162,local,class=CODE,delta=2
global __ptext162
__ptext162:

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 47 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\delay.c"
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
psect	text162
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\delay.c"
	line	47
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
	opt	stack 5
; Regs used in _delay_ms: [wreg+status,2+status,0+pclath+cstack]
	line	48
	
l5095:	
;delay.c: 48: while(ms_count!=0)
	goto	l5101
	
l692:	
	line	50
	
l5097:	
;delay.c: 49: {
;delay.c: 50: delay_us(300);
	movlw	low(012Ch)
	movwf	(?_delay_us)
	movlw	high(012Ch)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	51
	
l5099:	
;delay.c: 51: ms_count--;
	movlw	low(01h)
	subwf	(delay_ms@ms_count),f
	movlw	high(01h)
	skipc
	decf	(delay_ms@ms_count+1),f
	subwf	(delay_ms@ms_count+1),f
	goto	l5101
	line	52
	
l691:	
	line	48
	
l5101:	
	movf	((delay_ms@ms_count+1)),w
	iorwf	((delay_ms@ms_count)),w
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l5097
u2440:
	goto	l694
	
l693:	
	line	54
	
l694:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
;; =============== function _delay_ms ends ============

	signat	_delay_ms,4216
	global	_UART_TxChar
psect	text163,local,class=CODE,delta=2
global __ptext163
__ptext163:

;; *************** function _UART_TxChar *****************
;; Defined at:
;;		line 80 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\uart.c"
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
;;		_main
;;		_UART_TxString
;;		_UART_RxString
;;		_UART_TxNumber
;; This function uses a non-reentrant model
;;
psect	text163
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\uart.c"
	line	80
	global	__size_of_UART_TxChar
	__size_of_UART_TxChar	equ	__end_of_UART_TxChar-_UART_TxChar
	
_UART_TxChar:	
	opt	stack 7
; Regs used in _UART_TxChar: [wreg]
;UART_TxChar@ch stored from wreg
	movwf	(UART_TxChar@ch)
	line	81
	
l4145:	
;uart.c: 81: while(TXIF==0);
	goto	l2092
	
l2093:	
	
l2092:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u41
	goto	u40
u41:
	goto	l2092
u40:
	
l2094:	
	line	82
;uart.c: 82: TXIF=0;
	bcf	(100/8),(100)&7
	line	83
	
l4147:	
;uart.c: 83: TXREG=ch;
	movf	(UART_TxChar@ch),w
	movwf	(25)	;volatile
	line	84
	
l2095:	
	return
	opt stack 0
GLOBAL	__end_of_UART_TxChar
	__end_of_UART_TxChar:
;; =============== function _UART_TxChar ends ============

	signat	_UART_TxChar,4216
	global	_UART_RxChar
psect	text164,local,class=CODE,delta=2
global __ptext164
__ptext164:

;; *************** function _UART_RxChar *****************
;; Defined at:
;;		line 54 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_UART_RxString
;; This function uses a non-reentrant model
;;
psect	text164
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\uart.c"
	line	54
	global	__size_of_UART_RxChar
	__size_of_UART_RxChar	equ	__end_of_UART_RxChar-_UART_RxChar
	
_UART_RxChar:	
	opt	stack 7
; Regs used in _UART_RxChar: [wreg]
	line	55
	
l4139:	
;uart.c: 55: while(RCIF==0);
	goto	l2086
	
l2087:	
	
l2086:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u31
	goto	u30
u31:
	goto	l2086
u30:
	
l2088:	
	line	56
;uart.c: 56: RCIF=0;
	bcf	(101/8),(101)&7
	line	57
	
l4141:	
;uart.c: 57: return(RCREG);
	movf	(26),w	;volatile
	goto	l2089
	
l4143:	
	line	58
	
l2089:	
	return
	opt stack 0
GLOBAL	__end_of_UART_RxChar
	__end_of_UART_RxChar:
;; =============== function _UART_RxChar ends ============

	signat	_UART_RxChar,89
	global	_UART_Init
psect	text165,local,class=CODE,delta=2
global __ptext165
__ptext165:

;; *************** function _UART_Init *****************
;; Defined at:
;;		line 31 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\uart.c"
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
psect	text165
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\uart.c"
	line	31
	global	__size_of_UART_Init
	__size_of_UART_Init	equ	__end_of_UART_Init-_UART_Init
	
_UART_Init:	
	opt	stack 7
; Regs used in _UART_Init: [wreg]
	line	32
	
l4137:	
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
	
l2083:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Init
	__end_of_UART_Init:
;; =============== function _UART_Init ends ============

	signat	_UART_Init,88
	global	_delay_us
psect	text166,local,class=CODE,delta=2
global __ptext166
__ptext166:

;; *************** function _delay_us *****************
;; Defined at:
;;		line 26 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\delay.c"
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
;;		_LCD_Init
;;		_LCD_CmdWrite
;;		_LCD_DataWrite
;; This function uses a non-reentrant model
;;
psect	text166
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_lcd\delay.c"
	line	26
	global	__size_of_delay_us
	__size_of_delay_us	equ	__end_of_delay_us-_delay_us
	
_delay_us:	
	opt	stack 5
; Regs used in _delay_us: [wreg+status,2+status,0]
	line	27
	
l4123:	
;delay.c: 27: while(us_count!=0)
	goto	l4127
	
l686:	
	line	29
	
l4125:	
;delay.c: 28: {
;delay.c: 29: us_count--;
	movlw	low(01h)
	subwf	(delay_us@us_count),f
	movlw	high(01h)
	skipc
	decf	(delay_us@us_count+1),f
	subwf	(delay_us@us_count+1),f
	goto	l4127
	line	30
	
l685:	
	line	27
	
l4127:	
	movf	((delay_us@us_count+1)),w
	iorwf	((delay_us@us_count)),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l4125
u10:
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
psect	text167,local,class=CODE,delta=2
global __ptext167
__ptext167:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
