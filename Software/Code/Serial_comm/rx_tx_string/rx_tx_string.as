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
	FNCALL	_main,_UART_TxString
	FNCALL	_main,_UART_RxString
	FNCALL	_UART_RxString,_UART_RxChar
	FNCALL	_UART_RxString,_UART_TxChar
	FNCALL	_UART_TxString,_UART_TxChar
	FNROOT	_main
	global	_RCREG
psect	text119,local,class=CODE,delta=2
global __ptext119
__ptext119:
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
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
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
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
	retlw	10
	retlw	10
	retlw	13
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	119	;'w'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	10
	retlw	13
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"rx_tx_string.as"
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
	global	?_UART_RxString
?_UART_RxString:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_UART_RxChar
??_UART_RxChar:	; 0 bytes @ 0x0
	global	?_UART_TxChar
?_UART_TxChar:	; 0 bytes @ 0x0
	global	??_UART_TxChar
??_UART_TxChar:	; 0 bytes @ 0x0
	global	?_UART_RxChar
?_UART_RxChar:	; 1 bytes @ 0x0
	global	UART_TxChar@ch
UART_TxChar@ch:	; 1 bytes @ 0x0
	ds	1
	global	?_UART_TxString
?_UART_TxString:	; 0 bytes @ 0x1
	global	??_UART_RxString
??_UART_RxString:	; 0 bytes @ 0x1
	global	UART_TxString@string_ptr
UART_TxString@string_ptr:	; 2 bytes @ 0x1
	ds	1
	global	UART_RxString@string_ptr
UART_RxString@string_ptr:	; 1 bytes @ 0x2
	ds	1
	global	??_UART_TxString
??_UART_TxString:	; 0 bytes @ 0x3
	global	UART_RxString@ch
UART_RxString@ch:	; 1 bytes @ 0x3
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@msg
main@msg:	; 50 bytes @ 0x0
	ds	50
;;Data sizes: Strings 43, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80     50      50
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; UART_RxString@string_ptr	PTR unsigned char  size(1) Largest target is 50
;;		 -> main@msg(BANK0[50]), 
;;
;; UART_TxString@string_ptr	PTR unsigned char  size(2) Largest target is 50
;;		 -> STR_2(CODE[19]), main@msg(BANK0[50]), STR_1(CODE[24]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_UART_RxString
;;   _UART_RxString->_UART_TxChar
;;   _UART_TxString->_UART_TxChar
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
;; (0) _main                                                50    50      0     180
;;                                              0 BANK0     50    50      0
;;                          _UART_Init
;;                      _UART_TxString
;;                      _UART_RxString
;; ---------------------------------------------------------------------------------
;; (1) _UART_RxString                                        3     3      0     105
;;                                              1 COMMON     3     3      0
;;                        _UART_RxChar
;;                        _UART_TxChar
;; ---------------------------------------------------------------------------------
;; (1) _UART_TxString                                        2     0      2      45
;;                                              1 COMMON     2     0      2
;;                        _UART_TxChar
;; ---------------------------------------------------------------------------------
;; (2) _UART_TxChar                                          1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _UART_RxChar                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _UART_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _UART_Init
;;   _UART_TxString
;;     _UART_TxChar
;;   _UART_RxString
;;     _UART_RxChar
;;     _UART_TxChar
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      4       4       1       28.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     32      32       5       62.5%
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
;;		line 17 in file "F:\work_space\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_string\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  msg            50    0[BANK0 ] unsigned char [50]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      50       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      50       0       0       0
;;Total ram usage:       50 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_UART_Init
;;		_UART_TxString
;;		_UART_RxString
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\work_space\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_string\main.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	21
	
l3470:	
;main.c: 18: char msg[50];
;main.c: 21: UART_Init();
	fcall	_UART_Init
	goto	l3472
	line	23
;main.c: 23: while(1)
	
l691:	
	line	26
	
l3472:	
;main.c: 24: {
;main.c: 26: UART_TxString("\n\n\rEnter a new String: ");
	movlw	low((STR_1-__stringbase))
	movwf	(?_UART_TxString)
	movlw	80h
	movwf	(?_UART_TxString+1)
	fcall	_UART_TxString
	line	27
	
l3474:	
;main.c: 27: UART_RxString(msg);
	movlw	(main@msg)&0ffh
	fcall	_UART_RxString
	line	29
	
l3476:	
;main.c: 29: UART_TxString("\n\rEntered String: ");
	movlw	low((STR_2-__stringbase))
	movwf	(?_UART_TxString)
	movlw	80h
	movwf	(?_UART_TxString+1)
	fcall	_UART_TxString
	line	30
	
l3478:	
;main.c: 30: UART_TxString(msg);
	movlw	(main@msg&0ffh)
	movwf	(?_UART_TxString)
	movlw	(0x0/2)
	movwf	(?_UART_TxString+1)
	fcall	_UART_TxString
	goto	l3472
	line	31
	
l692:	
	line	23
	goto	l3472
	
l693:	
	line	33
	
l694:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_UART_RxString
psect	text120,local,class=CODE,delta=2
global __ptext120
__ptext120:

;; *************** function _UART_RxString *****************
;; Defined at:
;;		line 139 in file "F:\work_space\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_string\uart.c"
;; Parameters:    Size  Location     Type
;;  string_ptr      1    wreg     PTR unsigned char 
;;		 -> main@msg(50), 
;; Auto vars:     Size  Location     Type
;;  string_ptr      1    2[COMMON] PTR unsigned char 
;;		 -> main@msg(50), 
;;  ch              1    3[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_UART_RxChar
;;		_UART_TxChar
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text120
	file	"F:\work_space\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_string\uart.c"
	line	139
	global	__size_of_UART_RxString
	__size_of_UART_RxString	equ	__end_of_UART_RxString-_UART_RxString
	
_UART_RxString:	
	opt	stack 6
; Regs used in _UART_RxString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;UART_RxString@string_ptr stored from wreg
	movwf	(UART_RxString@string_ptr)
	line	141
;uart.c: 140: char ch;
;uart.c: 141: while(1)
	
l1400:	
	line	143
	
l3456:	
;uart.c: 142: {
;uart.c: 143: ch=UART_RxChar();
	fcall	_UART_RxChar
	movwf	(??_UART_RxString+0)+0
	movf	(??_UART_RxString+0)+0,w
	movwf	(UART_RxString@ch)
	line	144
	
l3458:	
;uart.c: 144: UART_TxChar(ch);
	movf	(UART_RxString@ch),w
	fcall	_UART_TxChar
	line	146
	
l3460:	
;uart.c: 146: if((ch=='\r') || (ch=='\n'))
	movf	(UART_RxString@ch),w
	xorlw	0Dh
	skipnz
	goto	u2251
	goto	u2250
u2251:
	goto	l3464
u2250:
	
l3462:	
	movf	(UART_RxString@ch),w
	xorlw	0Ah
	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l3466
u2260:
	goto	l3464
	
l1403:	
	line	148
	
l3464:	
;uart.c: 147: {
;uart.c: 148: *string_ptr=0;
	movf	(UART_RxString@string_ptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	149
;uart.c: 149: break;
	goto	l1406
	line	150
	
l1401:	
	line	151
	
l3466:	
;uart.c: 150: }
;uart.c: 151: *string_ptr=ch;
	movf	(UART_RxString@ch),w
	movwf	(??_UART_RxString+0)+0
	movf	(UART_RxString@string_ptr),w
	movwf	fsr0
	movf	(??_UART_RxString+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	152
	
l3468:	
;uart.c: 152: string_ptr++;
	movlw	(01h)
	movwf	(??_UART_RxString+0)+0
	movf	(??_UART_RxString+0)+0,w
	addwf	(UART_RxString@string_ptr),f
	goto	l1400
	line	153
	
l1405:	
	line	141
	goto	l1400
	
l1404:	
	line	154
	
l1406:	
	return
	opt stack 0
GLOBAL	__end_of_UART_RxString
	__end_of_UART_RxString:
;; =============== function _UART_RxString ends ============

	signat	_UART_RxString,4216
	global	_UART_TxString
psect	text121,local,class=CODE,delta=2
global __ptext121
__ptext121:

;; *************** function _UART_TxString *****************
;; Defined at:
;;		line 107 in file "F:\work_space\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_string\uart.c"
;; Parameters:    Size  Location     Type
;;  string_ptr      2    1[COMMON] PTR unsigned char 
;;		 -> STR_2(19), main@msg(50), STR_1(24), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;;		_UART_TxChar
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text121
	file	"F:\work_space\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_string\uart.c"
	line	107
	global	__size_of_UART_TxString
	__size_of_UART_TxString	equ	__end_of_UART_TxString-_UART_TxString
	
_UART_TxString:	
	opt	stack 6
; Regs used in _UART_TxString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	108
	
l3448:	
;uart.c: 108: while(*string_ptr)
	goto	l3454
	
l1395:	
	line	109
	
l3450:	
;uart.c: 109: UART_TxChar(*string_ptr++);
	movf	(UART_TxString@string_ptr+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(UART_TxString@string_ptr),w
	movwf	fsr0
	fcall	stringtab
	fcall	_UART_TxChar
	
l3452:	
	movlw	low(01h)
	addwf	(UART_TxString@string_ptr),f
	skipnc
	incf	(UART_TxString@string_ptr+1),f
	movlw	high(01h)
	addwf	(UART_TxString@string_ptr+1),f
	goto	l3454
	
l1394:	
	line	108
	
l3454:	
	movf	(UART_TxString@string_ptr+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(UART_TxString@string_ptr),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l3450
u2240:
	goto	l1397
	
l1396:	
	line	110
	
l1397:	
	return
	opt stack 0
GLOBAL	__end_of_UART_TxString
	__end_of_UART_TxString:
;; =============== function _UART_TxString ends ============

	signat	_UART_TxString,4216
	global	_UART_TxChar
psect	text122,local,class=CODE,delta=2
global __ptext122
__ptext122:

;; *************** function _UART_TxChar *****************
;; Defined at:
;;		line 80 in file "F:\work_space\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_string\uart.c"
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
;;		_UART_TxString
;;		_UART_RxString
;;		_UART_TxNumber
;; This function uses a non-reentrant model
;;
psect	text122
	file	"F:\work_space\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_string\uart.c"
	line	80
	global	__size_of_UART_TxChar
	__size_of_UART_TxChar	equ	__end_of_UART_TxChar-_UART_TxChar
	
_UART_TxChar:	
	opt	stack 6
; Regs used in _UART_TxChar: [wreg]
;UART_TxChar@ch stored from wreg
	movwf	(UART_TxChar@ch)
	line	81
	
l2576:	
;uart.c: 81: while(TXIF==0);
	goto	l1388
	
l1389:	
	
l1388:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u21
	goto	u20
u21:
	goto	l1388
u20:
	
l1390:	
	line	82
;uart.c: 82: TXIF=0;
	bcf	(100/8),(100)&7
	line	83
	
l2578:	
;uart.c: 83: TXREG=ch;
	movf	(UART_TxChar@ch),w
	movwf	(25)	;volatile
	line	84
	
l1391:	
	return
	opt stack 0
GLOBAL	__end_of_UART_TxChar
	__end_of_UART_TxChar:
;; =============== function _UART_TxChar ends ============

	signat	_UART_TxChar,4216
	global	_UART_RxChar
psect	text123,local,class=CODE,delta=2
global __ptext123
__ptext123:

;; *************** function _UART_RxChar *****************
;; Defined at:
;;		line 54 in file "F:\work_space\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_string\uart.c"
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
;;		_UART_RxString
;; This function uses a non-reentrant model
;;
psect	text123
	file	"F:\work_space\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_string\uart.c"
	line	54
	global	__size_of_UART_RxChar
	__size_of_UART_RxChar	equ	__end_of_UART_RxChar-_UART_RxChar
	
_UART_RxChar:	
	opt	stack 6
; Regs used in _UART_RxChar: [wreg]
	line	55
	
l2570:	
;uart.c: 55: while(RCIF==0);
	goto	l1382
	
l1383:	
	
l1382:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u11
	goto	u10
u11:
	goto	l1382
u10:
	
l1384:	
	line	56
;uart.c: 56: RCIF=0;
	bcf	(101/8),(101)&7
	line	57
	
l2572:	
;uart.c: 57: return(RCREG);
	movf	(26),w	;volatile
	goto	l1385
	
l2574:	
	line	58
	
l1385:	
	return
	opt stack 0
GLOBAL	__end_of_UART_RxChar
	__end_of_UART_RxChar:
;; =============== function _UART_RxChar ends ============

	signat	_UART_RxChar,89
	global	_UART_Init
psect	text124,local,class=CODE,delta=2
global __ptext124
__ptext124:

;; *************** function _UART_Init *****************
;; Defined at:
;;		line 31 in file "F:\work_space\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_string\uart.c"
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
psect	text124
	file	"F:\work_space\Sample_Programs_updated\Pic\Pro_Pic\Serial_comm\rx_tx_string\uart.c"
	line	31
	global	__size_of_UART_Init
	__size_of_UART_Init	equ	__end_of_UART_Init-_UART_Init
	
_UART_Init:	
	opt	stack 7
; Regs used in _UART_Init: [wreg]
	line	32
	
l2568:	
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
	
l1379:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Init
	__end_of_UART_Init:
;; =============== function _UART_Init ends ============

	signat	_UART_Init,88
psect	text125,local,class=CODE,delta=2
global __ptext125
__ptext125:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
