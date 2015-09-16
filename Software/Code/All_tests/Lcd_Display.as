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
	FNCALL	_main,_LCD_DisplayString
	FNCALL	_main,_LCD_GoToLineTwo
	FNCALL	_main,_delay_ms
	FNCALL	_LCD_DisplayString,_LCD_DataWrite
	FNCALL	_LCD_GoToLineTwo,_LCD_CmdWrite
	FNCALL	_LCD_Init,_delay_us
	FNCALL	_LCD_Init,_LCD_CmdWrite
	FNCALL	_LCD_DataWrite,_delay_us
	FNCALL	_LCD_DataWrite,_delay_ms
	FNCALL	_LCD_CmdWrite,_delay_us
	FNCALL	_LCD_CmdWrite,_delay_ms
	FNCALL	_delay_ms,_delay_us
	FNROOT	_main
	global	_PORTB
psect	text133,local,class=CODE,delta=2
global __ptext133
__ptext133:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
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
	retlw	76	;'L'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	39	;'''
	retlw	115	;'s'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	117	;'u'
	retlw	105	;'i'
	retlw	108	;'l'
	retlw	100	;'d'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	46	;'.'
	retlw	32	;' '
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_1:	
	retlw	88	;'X'
	retlw	112	;'p'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	97	;'a'
	retlw	98	;'b'
	retlw	122	;'z'
	retlw	0
psect	strings
	file	"Lcd_Display.as"
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
	global	?_LCD_CmdWrite
?_LCD_CmdWrite:	; 0 bytes @ 0x0
	global	?_delay_us
?_delay_us:	; 0 bytes @ 0x0
	global	?_LCD_Init
?_LCD_Init:	; 0 bytes @ 0x0
	global	?_LCD_GoToLineTwo
?_LCD_GoToLineTwo:	; 0 bytes @ 0x0
	global	?_LCD_DataWrite
?_LCD_DataWrite:	; 0 bytes @ 0x0
	global	?_LCD_DisplayString
?_LCD_DisplayString:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
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
	global	??_LCD_CmdWrite
??_LCD_CmdWrite:	; 0 bytes @ 0x4
	global	??_delay_ms
??_delay_ms:	; 0 bytes @ 0x4
	global	??_LCD_DataWrite
??_LCD_DataWrite:	; 0 bytes @ 0x4
	ds	1
	global	LCD_CmdWrite@cmd
LCD_CmdWrite@cmd:	; 1 bytes @ 0x5
	global	LCD_DataWrite@dat
LCD_DataWrite@dat:	; 1 bytes @ 0x5
	ds	1
	global	??_LCD_Init
??_LCD_Init:	; 0 bytes @ 0x6
	global	??_LCD_GoToLineTwo
??_LCD_GoToLineTwo:	; 0 bytes @ 0x6
	global	??_LCD_DisplayString
??_LCD_DisplayString:	; 0 bytes @ 0x6
	ds	1
	global	LCD_DisplayString@string_ptr
LCD_DisplayString@string_ptr:	; 1 bytes @ 0x7
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x8
;;Data sizes: Strings 29, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; LCD_DisplayString@string_ptr	PTR unsigned char  size(1) Largest target is 17
;;		 -> STR_2(CODE[17]), STR_1(CODE[12]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_LCD_DisplayString
;;   _LCD_DisplayString->_LCD_DataWrite
;;   _LCD_GoToLineTwo->_LCD_CmdWrite
;;   _LCD_Init->_LCD_CmdWrite
;;   _LCD_DataWrite->_delay_ms
;;   _LCD_CmdWrite->_delay_ms
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     300
;;                           _LCD_Init
;;                  _LCD_DisplayString
;;                    _LCD_GoToLineTwo
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (1) _LCD_DisplayString                                    2     2      0     105
;;                                              6 COMMON     2     2      0
;;                      _LCD_DataWrite
;; ---------------------------------------------------------------------------------
;; (1) _LCD_GoToLineTwo                                      0     0      0      75
;;                       _LCD_CmdWrite
;; ---------------------------------------------------------------------------------
;; (1) _LCD_Init                                             0     0      0      90
;;                           _delay_us
;;                       _LCD_CmdWrite
;; ---------------------------------------------------------------------------------
;; (2) _LCD_DataWrite                                        2     2      0      75
;;                                              4 COMMON     2     2      0
;;                           _delay_us
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (2) _LCD_CmdWrite                                         2     2      0      75
;;                                              4 COMMON     2     2      0
;;                           _delay_us
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (1) _delay_ms                                             2     0      2      30
;;                                              2 COMMON     2     0      2
;;                           _delay_us
;; ---------------------------------------------------------------------------------
;; (2) _delay_us                                             2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _LCD_Init
;;     _delay_us
;;     _LCD_CmdWrite
;;       _delay_us
;;       _delay_ms
;;         _delay_us
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
;;   _delay_ms
;;     _delay_us
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
;;		line 18 in file "G:\work_space\Sample_Programs_updated\Pic\Pro_Pic _USB\All_tests\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCD_Init
;;		_LCD_DisplayString
;;		_LCD_GoToLineTwo
;;		_delay_ms
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\work_space\Sample_Programs_updated\Pic\Pro_Pic _USB\All_tests\main.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	21
	
l4312:	
;main.c: 21: LCD_Init();
	fcall	_LCD_Init
	line	24
	
l4314:	
;main.c: 24: LCD_DisplayString("Xplore Labz");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_LCD_DisplayString
	line	27
	
l4316:	
;main.c: 27: LCD_GoToLineTwo();
	fcall	_LCD_GoToLineTwo
	line	28
;main.c: 28: LCD_DisplayString("Let's build. . .");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_LCD_DisplayString
	line	30
	
l4318:	
;main.c: 30: TRISC = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	goto	l4320
	line	31
;main.c: 31: while(1)
	
l2132:	
	line	33
	
l4320:	
;main.c: 32: {
;main.c: 33: PORTC = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	34
	
l4322:	
;main.c: 34: delay_ms(100);
	movlw	low(064h)
	movwf	(?_delay_ms)
	movlw	high(064h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	35
	
l4324:	
;main.c: 35: PORTC = 0XFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	36
	
l4326:	
;main.c: 36: delay_ms(100);
	movlw	low(064h)
	movwf	(?_delay_ms)
	movlw	high(064h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	goto	l4320
	line	38
	
l2133:	
	line	31
	goto	l4320
	
l2134:	
	line	40
	
l2135:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_LCD_DisplayString
psect	text134,local,class=CODE,delta=2
global __ptext134
__ptext134:

;; *************** function _LCD_DisplayString *****************
;; Defined at:
;;		line 285 in file "G:\work_space\Sample_Programs_updated\Pic\Pro_Pic _USB\All_tests\lcd_4_bit.c"
;; Parameters:    Size  Location     Type
;;  string_ptr      1    wreg     PTR unsigned char 
;;		 -> STR_2(17), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  string_ptr      1    7[COMMON] PTR unsigned char 
;;		 -> STR_2(17), STR_1(12), 
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
psect	text134
	file	"G:\work_space\Sample_Programs_updated\Pic\Pro_Pic _USB\All_tests\lcd_4_bit.c"
	line	285
	global	__size_of_LCD_DisplayString
	__size_of_LCD_DisplayString	equ	__end_of_LCD_DisplayString-_LCD_DisplayString
	
_LCD_DisplayString:	
	opt	stack 4
; Regs used in _LCD_DisplayString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCD_DisplayString@string_ptr stored from wreg
	movwf	(LCD_DisplayString@string_ptr)
	line	286
	
l4304:	
;lcd_4_bit.c: 286: while(*string_ptr)
	goto	l4310
	
l1415:	
	line	287
	
l4306:	
;lcd_4_bit.c: 287: LCD_DataWrite(*string_ptr++);
	movf	(LCD_DisplayString@string_ptr),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCD_DataWrite
	
l4308:	
	movlw	(01h)
	movwf	(??_LCD_DisplayString+0)+0
	movf	(??_LCD_DisplayString+0)+0,w
	addwf	(LCD_DisplayString@string_ptr),f
	goto	l4310
	
l1414:	
	line	286
	
l4310:	
	movf	(LCD_DisplayString@string_ptr),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l4306
u2410:
	goto	l1417
	
l1416:	
	line	288
	
l1417:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DisplayString
	__end_of_LCD_DisplayString:
;; =============== function _LCD_DisplayString ends ============

	signat	_LCD_DisplayString,4216
	global	_LCD_GoToLineTwo
psect	text135,local,class=CODE,delta=2
global __ptext135
__ptext135:

;; *************** function _LCD_GoToLineTwo *****************
;; Defined at:
;;		line 133 in file "G:\work_space\Sample_Programs_updated\Pic\Pro_Pic _USB\All_tests\lcd_4_bit.c"
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
psect	text135
	file	"G:\work_space\Sample_Programs_updated\Pic\Pro_Pic _USB\All_tests\lcd_4_bit.c"
	line	133
	global	__size_of_LCD_GoToLineTwo
	__size_of_LCD_GoToLineTwo	equ	__end_of_LCD_GoToLineTwo-_LCD_GoToLineTwo
	
_LCD_GoToLineTwo:	
	opt	stack 4
; Regs used in _LCD_GoToLineTwo: [wreg+status,2+status,0+pclath+cstack]
	line	134
	
l4302:	
;lcd_4_bit.c: 134: LCD_CmdWrite(0xc0);
	movlw	(0C0h)
	fcall	_LCD_CmdWrite
	line	135
	
l1400:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_GoToLineTwo
	__end_of_LCD_GoToLineTwo:
;; =============== function _LCD_GoToLineTwo ends ============

	signat	_LCD_GoToLineTwo,88
	global	_LCD_Init
psect	text136,local,class=CODE,delta=2
global __ptext136
__ptext136:

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 74 in file "G:\work_space\Sample_Programs_updated\Pic\Pro_Pic _USB\All_tests\lcd_4_bit.c"
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
psect	text136
	file	"G:\work_space\Sample_Programs_updated\Pic\Pro_Pic _USB\All_tests\lcd_4_bit.c"
	line	74
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
	opt	stack 4
; Regs used in _LCD_Init: [wreg+status,2+status,0+pclath+cstack]
	line	75
	
l4288:	
;lcd_4_bit.c: 75: delay_us(5000);
	movlw	low(01388h)
	movwf	(?_delay_us)
	movlw	high(01388h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	76
	
l4290:	
;lcd_4_bit.c: 76: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	77
	
l4292:	
;lcd_4_bit.c: 77: LCD_CmdWrite(0x02);
	movlw	(02h)
	fcall	_LCD_CmdWrite
	line	78
	
l4294:	
;lcd_4_bit.c: 78: LCD_CmdWrite(0x28);
	movlw	(028h)
	fcall	_LCD_CmdWrite
	line	79
	
l4296:	
;lcd_4_bit.c: 79: LCD_CmdWrite(0x0E);
	movlw	(0Eh)
	fcall	_LCD_CmdWrite
	line	80
	
l4298:	
;lcd_4_bit.c: 80: LCD_CmdWrite(0x01);
	movlw	(01h)
	fcall	_LCD_CmdWrite
	line	81
	
l4300:	
;lcd_4_bit.c: 81: LCD_CmdWrite(0x80);
	movlw	(080h)
	fcall	_LCD_CmdWrite
	line	83
	
l1391:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
;; =============== function _LCD_Init ends ============

	signat	_LCD_Init,88
	global	_LCD_DataWrite
psect	text137,local,class=CODE,delta=2
global __ptext137
__ptext137:

;; *************** function _LCD_DataWrite *****************
;; Defined at:
;;		line 243 in file "G:\work_space\Sample_Programs_updated\Pic\Pro_Pic _USB\All_tests\lcd_4_bit.c"
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
;;		_LCD_DisplayNumber
;;		_LCD_ScrollMessage
;;		_LCD_DisplayRtcTime
;;		_LCD_DisplayRtcDate
;; This function uses a non-reentrant model
;;
psect	text137
	file	"G:\work_space\Sample_Programs_updated\Pic\Pro_Pic _USB\All_tests\lcd_4_bit.c"
	line	243
	global	__size_of_LCD_DataWrite
	__size_of_LCD_DataWrite	equ	__end_of_LCD_DataWrite-_LCD_DataWrite
	
_LCD_DataWrite:	
	opt	stack 4
; Regs used in _LCD_DataWrite: [wreg+status,2+status,0+pclath+cstack]
;LCD_DataWrite@dat stored from wreg
	line	246
	movwf	(LCD_DataWrite@dat)
	
l4260:	
;lcd_4_bit.c: 246: PORTB=(dat & 0xf0);
	movf	(LCD_DataWrite@dat),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	247
	
l4262:	
;lcd_4_bit.c: 247: RB1=1;
	bsf	(49/8),(49)&7
	line	248
	
l4264:	
;lcd_4_bit.c: 248: RB2=0;
	bcf	(50/8),(50)&7
	line	249
	
l4266:	
;lcd_4_bit.c: 249: RB3=1;
	bsf	(51/8),(51)&7
	line	250
	
l4268:	
;lcd_4_bit.c: 250: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	251
	
l4270:	
;lcd_4_bit.c: 251: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	253
	
l4272:	
;lcd_4_bit.c: 253: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	255
	
l4274:	
;lcd_4_bit.c: 255: PORTB=((dat <<4) & 0xf0);
	movf	(LCD_DataWrite@dat),w
	movwf	(??_LCD_DataWrite+0)+0
	movlw	(04h)-1
u2405:
	clrc
	rlf	(??_LCD_DataWrite+0)+0,f
	addlw	-1
	skipz
	goto	u2405
	clrc
	rlf	(??_LCD_DataWrite+0)+0,w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	256
	
l4276:	
;lcd_4_bit.c: 256: RB1=1;
	bsf	(49/8),(49)&7
	line	257
	
l4278:	
;lcd_4_bit.c: 257: RB2=0;
	bcf	(50/8),(50)&7
	line	258
	
l4280:	
;lcd_4_bit.c: 258: RB3=1;
	bsf	(51/8),(51)&7
	line	259
	
l4282:	
;lcd_4_bit.c: 259: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	260
	
l4284:	
;lcd_4_bit.c: 260: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	262
	
l4286:	
;lcd_4_bit.c: 262: delay_ms(1);
	movlw	low(01h)
	movwf	(?_delay_ms)
	movlw	high(01h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	264
	
l1411:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DataWrite
	__end_of_LCD_DataWrite:
;; =============== function _LCD_DataWrite ends ============

	signat	_LCD_DataWrite,4216
	global	_LCD_CmdWrite
psect	text138,local,class=CODE,delta=2
global __ptext138
__ptext138:

;; *************** function _LCD_CmdWrite *****************
;; Defined at:
;;		line 193 in file "G:\work_space\Sample_Programs_updated\Pic\Pro_Pic _USB\All_tests\lcd_4_bit.c"
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
;;		_LCD_Clear
;;		_LCD_GoToLineOne
;;		_LCD_GoToXY
;;		_LCD_ScrollMessage
;; This function uses a non-reentrant model
;;
psect	text138
	file	"G:\work_space\Sample_Programs_updated\Pic\Pro_Pic _USB\All_tests\lcd_4_bit.c"
	line	193
	global	__size_of_LCD_CmdWrite
	__size_of_LCD_CmdWrite	equ	__end_of_LCD_CmdWrite-_LCD_CmdWrite
	
_LCD_CmdWrite:	
	opt	stack 4
; Regs used in _LCD_CmdWrite: [wreg+status,2+status,0+pclath+cstack]
;LCD_CmdWrite@cmd stored from wreg
	line	195
	movwf	(LCD_CmdWrite@cmd)
	
l4232:	
;lcd_4_bit.c: 195: PORTB=(cmd & 0xf0);
	movf	(LCD_CmdWrite@cmd),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	196
	
l4234:	
;lcd_4_bit.c: 196: RB1=0;
	bcf	(49/8),(49)&7
	line	197
	
l4236:	
;lcd_4_bit.c: 197: RB2=0;
	bcf	(50/8),(50)&7
	line	198
	
l4238:	
;lcd_4_bit.c: 198: RB3=1;
	bsf	(51/8),(51)&7
	line	199
	
l4240:	
;lcd_4_bit.c: 199: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	200
	
l4242:	
;lcd_4_bit.c: 200: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	202
	
l4244:	
;lcd_4_bit.c: 202: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	204
	
l4246:	
;lcd_4_bit.c: 204: PORTB=((cmd<<4) & 0xf0);
	movf	(LCD_CmdWrite@cmd),w
	movwf	(??_LCD_CmdWrite+0)+0
	movlw	(04h)-1
u2395:
	clrc
	rlf	(??_LCD_CmdWrite+0)+0,f
	addlw	-1
	skipz
	goto	u2395
	clrc
	rlf	(??_LCD_CmdWrite+0)+0,w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	205
	
l4248:	
;lcd_4_bit.c: 205: RB1=0;
	bcf	(49/8),(49)&7
	line	206
	
l4250:	
;lcd_4_bit.c: 206: RB2=0;
	bcf	(50/8),(50)&7
	line	207
	
l4252:	
;lcd_4_bit.c: 207: RB3=1;
	bsf	(51/8),(51)&7
	line	208
	
l4254:	
;lcd_4_bit.c: 208: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	209
	
l4256:	
;lcd_4_bit.c: 209: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	211
	
l4258:	
;lcd_4_bit.c: 211: delay_ms(1);
	movlw	low(01h)
	movwf	(?_delay_ms)
	movlw	high(01h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	212
	
l1408:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_CmdWrite
	__end_of_LCD_CmdWrite:
;; =============== function _LCD_CmdWrite ends ============

	signat	_LCD_CmdWrite,4216
	global	_delay_ms
psect	text139,local,class=CODE,delta=2
global __ptext139
__ptext139:

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 47 in file "G:\work_space\Sample_Programs_updated\Pic\Pro_Pic _USB\All_tests\delay.c"
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
;;		_main
;;		_delay_sec
;;		_LCD_ScrollMessage
;; This function uses a non-reentrant model
;;
psect	text139
	file	"G:\work_space\Sample_Programs_updated\Pic\Pro_Pic _USB\All_tests\delay.c"
	line	47
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
	opt	stack 6
; Regs used in _delay_ms: [wreg+status,2+status,0+pclath+cstack]
	line	48
	
l4224:	
;delay.c: 48: while(ms_count!=0)
	goto	l4230
	
l692:	
	line	50
	
l4226:	
;delay.c: 49: {
;delay.c: 50: delay_us(300);
	movlw	low(012Ch)
	movwf	(?_delay_us)
	movlw	high(012Ch)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	51
	
l4228:	
;delay.c: 51: ms_count--;
	movlw	low(01h)
	subwf	(delay_ms@ms_count),f
	movlw	high(01h)
	skipc
	decf	(delay_ms@ms_count+1),f
	subwf	(delay_ms@ms_count+1),f
	goto	l4230
	line	52
	
l691:	
	line	48
	
l4230:	
	movf	((delay_ms@ms_count+1)),w
	iorwf	((delay_ms@ms_count)),w
	skipz
	goto	u2381
	goto	u2380
u2381:
	goto	l4226
u2380:
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
	global	_delay_us
psect	text140,local,class=CODE,delta=2
global __ptext140
__ptext140:

;; *************** function _delay_us *****************
;; Defined at:
;;		line 26 in file "G:\work_space\Sample_Programs_updated\Pic\Pro_Pic _USB\All_tests\delay.c"
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
psect	text140
	file	"G:\work_space\Sample_Programs_updated\Pic\Pro_Pic _USB\All_tests\delay.c"
	line	26
	global	__size_of_delay_us
	__size_of_delay_us	equ	__end_of_delay_us-_delay_us
	
_delay_us:	
	opt	stack 6
; Regs used in _delay_us: [wreg+status,2+status,0]
	line	27
	
l3294:	
;delay.c: 27: while(us_count!=0)
	goto	l3298
	
l686:	
	line	29
	
l3296:	
;delay.c: 28: {
;delay.c: 29: us_count--;
	movlw	low(01h)
	subwf	(delay_us@us_count),f
	movlw	high(01h)
	skipc
	decf	(delay_us@us_count+1),f
	subwf	(delay_us@us_count+1),f
	goto	l3298
	line	30
	
l685:	
	line	27
	
l3298:	
	movf	((delay_us@us_count+1)),w
	iorwf	((delay_us@us_count)),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l3296
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
psect	text141,local,class=CODE,delta=2
global __ptext141
__ptext141:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
