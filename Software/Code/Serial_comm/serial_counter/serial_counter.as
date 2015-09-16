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
	FNCALL	_main,_UART_TxNumber
	FNCALL	_main,_delay_sec
	FNCALL	_delay_sec,_delay_ms
	FNCALL	_delay_ms,_delay_us
	FNCALL	_UART_TxNumber,___lwdiv
	FNCALL	_UART_TxNumber,_UART_TxChar
	FNCALL	_UART_TxNumber,___lwmod
	FNCALL	_UART_TxString,_UART_TxChar
	FNROOT	_main
	global	_RCREG
psect	text125,local,class=CODE,delta=2
global __ptext125
__ptext125:
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
	retlw	53	;'5'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	10
	retlw	13
	retlw	0
psect	strings
	file	"serial_counter.as"
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
	global	?_UART_TxString
?_UART_TxString:	; 0 bytes @ 0x0
	global	?_delay_sec
?_delay_sec:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_UART_TxChar
?_UART_TxChar:	; 0 bytes @ 0x0
	global	??_UART_TxChar
??_UART_TxChar:	; 0 bytes @ 0x0
	global	?_delay_us
?_delay_us:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	UART_TxChar@ch
UART_TxChar@ch:	; 1 bytes @ 0x0
	global	delay_us@us_count
delay_us@us_count:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_UART_TxString
??_UART_TxString:	; 0 bytes @ 0x1
	ds	1
	global	??_delay_us
??_delay_us:	; 0 bytes @ 0x2
	global	?_delay_ms
?_delay_ms:	; 0 bytes @ 0x2
	global	UART_TxString@string_ptr
UART_TxString@string_ptr:	; 1 bytes @ 0x2
	global	delay_ms@ms_count
delay_ms@ms_count:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??_delay_sec
??_delay_sec:	; 0 bytes @ 0x4
	global	??_delay_ms
??_delay_ms:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	delay_sec@sec_count
delay_sec@sec_count:	; 1 bytes @ 0x4
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?_UART_TxNumber
?_UART_TxNumber:	; 0 bytes @ 0x8
	global	UART_TxNumber@num
UART_TxNumber@num:	; 2 bytes @ 0x8
	ds	2
	global	??_UART_TxNumber
??_UART_TxNumber:	; 0 bytes @ 0xA
	global	??_main
??_main:	; 0 bytes @ 0xA
	global	main@cnt
main@cnt:	; 2 bytes @ 0xA
	ds	2
;;Data sizes: Strings 28, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      12
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; UART_TxString@string_ptr	PTR unsigned char  size(1) Largest target is 25
;;		 -> STR_2(CODE[3]), STR_1(CODE[25]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_UART_TxNumber
;;   _delay_sec->_delay_ms
;;   _delay_ms->_delay_us
;;   _UART_TxNumber->___lwdiv
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
;; (0) _main                                                 2     2      0     465
;;                                             10 COMMON     2     2      0
;;                          _UART_Init
;;                      _UART_TxString
;;                      _UART_TxNumber
;;                          _delay_sec
;; ---------------------------------------------------------------------------------
;; (1) _delay_sec                                            1     1      0      45
;;                                              4 COMMON     1     1      0
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (2) _delay_ms                                             2     0      2      30
;;                                              2 COMMON     2     0      2
;;                           _delay_us
;; ---------------------------------------------------------------------------------
;; (1) _UART_TxNumber                                        2     0      2     345
;;                                              8 COMMON     2     0      2
;;                            ___lwdiv
;;                        _UART_TxChar
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _UART_TxString                                        2     2      0      45
;;                                              1 COMMON     2     2      0
;;                        _UART_TxChar
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     105
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     105
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (3) _delay_us                                             2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (2) _UART_TxChar                                          1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _UART_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _UART_Init
;;   _UART_TxString
;;     _UART_TxChar
;;   _UART_TxNumber
;;     ___lwdiv
;;     _UART_TxChar
;;     ___lwmod
;;   _delay_sec
;;     _delay_ms
;;       _delay_us
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      C       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
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
;;		line 19 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\serial_counter\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cnt             2   10[COMMON] unsigned int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_UART_Init
;;		_UART_TxString
;;		_UART_TxNumber
;;		_delay_sec
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\serial_counter\main.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	20
	
l4190:	
;main.c: 20: unsigned int cnt=0;
	clrf	(main@cnt)
	clrf	(main@cnt+1)
	line	23
	
l4192:	
;main.c: 23: UART_Init();
	fcall	_UART_Init
	line	24
	
l4194:	
;main.c: 24: UART_TxString("5digit decimal counter: ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_UART_TxString
	line	27
;main.c: 27: while(cnt < 9999)
	goto	l4204
	
l694:	
	line	31
	
l4196:	
;main.c: 28: {
;main.c: 31: UART_TxNumber(cnt);
	movf	(main@cnt+1),w
	clrf	(?_UART_TxNumber+1)
	addwf	(?_UART_TxNumber+1)
	movf	(main@cnt),w
	clrf	(?_UART_TxNumber)
	addwf	(?_UART_TxNumber)

	fcall	_UART_TxNumber
	line	32
	
l4198:	
;main.c: 32: UART_TxString("\n\r");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_UART_TxString
	line	35
	
l4200:	
;main.c: 35: delay_sec(1);
	movlw	(01h)
	fcall	_delay_sec
	line	36
	
l4202:	
;main.c: 36: cnt++;
	movlw	low(01h)
	addwf	(main@cnt),f
	skipnc
	incf	(main@cnt+1),f
	movlw	high(01h)
	addwf	(main@cnt+1),f
	goto	l4204
	line	37
	
l693:	
	line	27
	
l4204:	
	movlw	high(0270Fh)
	subwf	(main@cnt+1),w
	movlw	low(0270Fh)
	skipnz
	subwf	(main@cnt),w
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l4196
u2300:
	goto	l696
	
l695:	
	line	39
	
l696:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay_sec
psect	text126,local,class=CODE,delta=2
global __ptext126
__ptext126:

;; *************** function _delay_sec *****************
;; Defined at:
;;		line 75 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\serial_counter\delay.c"
;; Parameters:    Size  Location     Type
;;  sec_count       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sec_count       1    4[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text126
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\serial_counter\delay.c"
	line	75
	global	__size_of_delay_sec
	__size_of_delay_sec	equ	__end_of_delay_sec-_delay_sec
	
_delay_sec:	
	opt	stack 5
; Regs used in _delay_sec: [wreg+status,2+status,0+pclath+cstack]
;delay_sec@sec_count stored from wreg
	movwf	(delay_sec@sec_count)
	line	78
	
l4182:	
;delay.c: 78: while(sec_count!=0)
	goto	l4188
	
l2109:	
	line	80
	
l4184:	
;delay.c: 79: {
;delay.c: 80: delay_ms(1000);
	movlw	low(03E8h)
	movwf	(?_delay_ms)
	movlw	high(03E8h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	81
	
l4186:	
;delay.c: 81: sec_count--;
	movlw	low(01h)
	subwf	(delay_sec@sec_count),f
	goto	l4188
	line	82
	
l2108:	
	line	78
	
l4188:	
	movf	(delay_sec@sec_count),f
	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l4184
u2290:
	goto	l2111
	
l2110:	
	line	83
	
l2111:	
	return
	opt stack 0
GLOBAL	__end_of_delay_sec
	__end_of_delay_sec:
;; =============== function _delay_sec ends ============

	signat	_delay_sec,4216
	global	_delay_ms
psect	text127,local,class=CODE,delta=2
global __ptext127
__ptext127:

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 47 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\serial_counter\delay.c"
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
;;		_delay_sec
;; This function uses a non-reentrant model
;;
psect	text127
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\serial_counter\delay.c"
	line	47
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
	opt	stack 5
; Regs used in _delay_ms: [wreg+status,2+status,0+pclath+cstack]
	line	48
	
l4174:	
;delay.c: 48: while(ms_count!=0)
	goto	l4180
	
l2103:	
	line	50
	
l4176:	
;delay.c: 49: {
;delay.c: 50: delay_us(300);
	movlw	low(012Ch)
	movwf	(?_delay_us)
	movlw	high(012Ch)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	51
	
l4178:	
;delay.c: 51: ms_count--;
	movlw	low(01h)
	subwf	(delay_ms@ms_count),f
	movlw	high(01h)
	skipc
	decf	(delay_ms@ms_count+1),f
	subwf	(delay_ms@ms_count+1),f
	goto	l4180
	line	52
	
l2102:	
	line	48
	
l4180:	
	movf	((delay_ms@ms_count+1)),w
	iorwf	((delay_ms@ms_count)),w
	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l4176
u2280:
	goto	l2105
	
l2104:	
	line	54
	
l2105:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
;; =============== function _delay_ms ends ============

	signat	_delay_ms,4216
	global	_UART_TxNumber
psect	text128,local,class=CODE,delta=2
global __ptext128
__ptext128:

;; *************** function _UART_TxNumber *****************
;; Defined at:
;;		line 188 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\serial_counter\uart.c"
;; Parameters:    Size  Location     Type
;;  num             2    8[COMMON] unsigned int 
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
;;		___lwdiv
;;		_UART_TxChar
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text128
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\serial_counter\uart.c"
	line	188
	global	__size_of_UART_TxNumber
	__size_of_UART_TxNumber	equ	__end_of_UART_TxNumber-_UART_TxNumber
	
_UART_TxNumber:	
	opt	stack 6
; Regs used in _UART_TxNumber: [wreg+status,2+status,0+pclath+cstack]
	line	190
	
l4172:	
;uart.c: 190: UART_TxChar((num/10000)+0x30);
	movlw	low(02710h)
	movwf	(?___lwdiv)
	movlw	high(02710h)
	movwf	((?___lwdiv))+1
	movf	(UART_TxNumber@num+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(UART_TxNumber@num),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_UART_TxChar
	line	191
;uart.c: 191: num=num%10000;
	movlw	low(02710h)
	movwf	(?___lwmod)
	movlw	high(02710h)
	movwf	((?___lwmod))+1
	movf	(UART_TxNumber@num+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(UART_TxNumber@num),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	(UART_TxNumber@num+1)
	addwf	(UART_TxNumber@num+1)
	movf	(0+(?___lwmod)),w
	clrf	(UART_TxNumber@num)
	addwf	(UART_TxNumber@num)

	line	193
;uart.c: 193: UART_TxChar((num/1000)+0x30);
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(UART_TxNumber@num+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(UART_TxNumber@num),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_UART_TxChar
	line	194
;uart.c: 194: num=num%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	(UART_TxNumber@num+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(UART_TxNumber@num),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	(UART_TxNumber@num+1)
	addwf	(UART_TxNumber@num+1)
	movf	(0+(?___lwmod)),w
	clrf	(UART_TxNumber@num)
	addwf	(UART_TxNumber@num)

	line	196
;uart.c: 196: UART_TxChar((num/100)+0x30);
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(UART_TxNumber@num+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(UART_TxNumber@num),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_UART_TxChar
	line	197
;uart.c: 197: num=num%100;
	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	movf	(UART_TxNumber@num+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(UART_TxNumber@num),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	(UART_TxNumber@num+1)
	addwf	(UART_TxNumber@num+1)
	movf	(0+(?___lwmod)),w
	clrf	(UART_TxNumber@num)
	addwf	(UART_TxNumber@num)

	line	199
;uart.c: 199: UART_TxChar((num/10)+0x30);
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(UART_TxNumber@num+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(UART_TxNumber@num),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_UART_TxChar
	line	201
;uart.c: 201: UART_TxChar((num%10)+0x30);
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(UART_TxNumber@num+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(UART_TxNumber@num),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_UART_TxChar
	line	202
	
l1411:	
	return
	opt stack 0
GLOBAL	__end_of_UART_TxNumber
	__end_of_UART_TxNumber:
;; =============== function _UART_TxNumber ends ============

	signat	_UART_TxNumber,4216
	global	_UART_TxString
psect	text129,local,class=CODE,delta=2
global __ptext129
__ptext129:

;; *************** function _UART_TxString *****************
;; Defined at:
;;		line 107 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\serial_counter\uart.c"
;; Parameters:    Size  Location     Type
;;  string_ptr      1    wreg     PTR unsigned char 
;;		 -> STR_2(3), STR_1(25), 
;; Auto vars:     Size  Location     Type
;;  string_ptr      1    2[COMMON] PTR unsigned char 
;;		 -> STR_2(3), STR_1(25), 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text129
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\serial_counter\uart.c"
	line	107
	global	__size_of_UART_TxString
	__size_of_UART_TxString	equ	__end_of_UART_TxString-_UART_TxString
	
_UART_TxString:	
	opt	stack 6
; Regs used in _UART_TxString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;UART_TxString@string_ptr stored from wreg
	movwf	(UART_TxString@string_ptr)
	line	108
	
l4164:	
;uart.c: 108: while(*string_ptr)
	goto	l4170
	
l1397:	
	line	109
	
l4166:	
;uart.c: 109: UART_TxChar(*string_ptr++);
	movf	(UART_TxString@string_ptr),w
	movwf	fsr0
	fcall	stringdir
	fcall	_UART_TxChar
	
l4168:	
	movlw	(01h)
	movwf	(??_UART_TxString+0)+0
	movf	(??_UART_TxString+0)+0,w
	addwf	(UART_TxString@string_ptr),f
	goto	l4170
	
l1396:	
	line	108
	
l4170:	
	movf	(UART_TxString@string_ptr),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l4166
u2270:
	goto	l1399
	
l1398:	
	line	110
	
l1399:	
	return
	opt stack 0
GLOBAL	__end_of_UART_TxString
	__end_of_UART_TxString:
;; =============== function _UART_TxString ends ============

	signat	_UART_TxString,4216
	global	___lwmod
psect	text130,local,class=CODE,delta=2
global __ptext130
__ptext130:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_TxNumber
;; This function uses a non-reentrant model
;;
psect	text130
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3434:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u271
	goto	u270
u271:
	goto	l3452
u270:
	line	9
	
l3436:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l3442
	
l2812:	
	line	11
	
l3438:	
	movlw	01h
	
u285:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u285
	line	12
	
l3440:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l3442
	line	13
	
l2811:	
	line	10
	
l3442:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u291
	goto	u290
u291:
	goto	l3438
u290:
	goto	l3444
	
l2813:	
	goto	l3444
	line	14
	
l2814:	
	line	15
	
l3444:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u305
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u305:
	skipc
	goto	u301
	goto	u300
u301:
	goto	l3448
u300:
	line	16
	
l3446:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l3448
	
l2815:	
	line	17
	
l3448:	
	movlw	01h
	
u315:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u315
	line	18
	
l3450:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u321
	goto	u320
u321:
	goto	l3444
u320:
	goto	l3452
	
l2816:	
	goto	l3452
	line	19
	
l2810:	
	line	20
	
l3452:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l2817
	
l3454:	
	line	21
	
l2817:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text131,local,class=CODE,delta=2
global __ptext131
__ptext131:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_TxNumber
;; This function uses a non-reentrant model
;;
psect	text131
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3408:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3410:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u201
	goto	u200
u201:
	goto	l3430
u200:
	line	11
	
l3412:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l3418
	
l2802:	
	line	13
	
l3414:	
	movlw	01h
	
u215:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u215
	line	14
	
l3416:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l3418
	line	15
	
l2801:	
	line	12
	
l3418:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u221
	goto	u220
u221:
	goto	l3414
u220:
	goto	l3420
	
l2803:	
	goto	l3420
	line	16
	
l2804:	
	line	17
	
l3420:	
	movlw	01h
	
u235:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u235
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u245
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u245:
	skipc
	goto	u241
	goto	u240
u241:
	goto	l3426
u240:
	line	19
	
l3422:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3424:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l3426
	line	21
	
l2805:	
	line	22
	
l3426:	
	movlw	01h
	
u255:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u255
	line	23
	
l3428:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u261
	goto	u260
u261:
	goto	l3420
u260:
	goto	l3430
	
l2806:	
	goto	l3430
	line	24
	
l2800:	
	line	25
	
l3430:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l2807
	
l3432:	
	line	26
	
l2807:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_delay_us
psect	text132,local,class=CODE,delta=2
global __ptext132
__ptext132:

;; *************** function _delay_us *****************
;; Defined at:
;;		line 26 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\serial_counter\delay.c"
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
;; This function uses a non-reentrant model
;;
psect	text132
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\serial_counter\delay.c"
	global	__size_of_delay_us
	__size_of_delay_us	equ	__end_of_delay_us-_delay_us
	
_delay_us:	
	opt	stack 5
; Regs used in _delay_us: [wreg+status,2+status,0]
	line	27
	
l3292:	
;delay.c: 27: while(us_count!=0)
	goto	l3296
	
l2097:	
	line	29
	
l3294:	
;delay.c: 28: {
;delay.c: 29: us_count--;
	movlw	low(01h)
	subwf	(delay_us@us_count),f
	movlw	high(01h)
	skipc
	decf	(delay_us@us_count+1),f
	subwf	(delay_us@us_count+1),f
	goto	l3296
	line	30
	
l2096:	
	line	27
	
l3296:	
	movf	((delay_us@us_count+1)),w
	iorwf	((delay_us@us_count)),w
	skipz
	goto	u51
	goto	u50
u51:
	goto	l3294
u50:
	goto	l2099
	
l2098:	
	line	31
	
l2099:	
	return
	opt stack 0
GLOBAL	__end_of_delay_us
	__end_of_delay_us:
;; =============== function _delay_us ends ============

	signat	_delay_us,4216
	global	_UART_TxChar
psect	text133,local,class=CODE,delta=2
global __ptext133
__ptext133:

;; *************** function _UART_TxChar *****************
;; Defined at:
;;		line 80 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\serial_counter\uart.c"
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
;;		_UART_TxNumber
;;		_UART_RxString
;; This function uses a non-reentrant model
;;
psect	text133
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\serial_counter\uart.c"
	line	80
	global	__size_of_UART_TxChar
	__size_of_UART_TxChar	equ	__end_of_UART_TxChar-_UART_TxChar
	
_UART_TxChar:	
	opt	stack 6
; Regs used in _UART_TxChar: [wreg]
;UART_TxChar@ch stored from wreg
	movwf	(UART_TxChar@ch)
	line	81
	
l3278:	
;uart.c: 81: while(TXIF==0);
	goto	l1390
	
l1391:	
	
l1390:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u21
	goto	u20
u21:
	goto	l1390
u20:
	
l1392:	
	line	82
;uart.c: 82: TXIF=0;
	bcf	(100/8),(100)&7
	line	83
	
l3280:	
;uart.c: 83: TXREG=ch;
	movf	(UART_TxChar@ch),w
	movwf	(25)	;volatile
	line	84
	
l1393:	
	return
	opt stack 0
GLOBAL	__end_of_UART_TxChar
	__end_of_UART_TxChar:
;; =============== function _UART_TxChar ends ============

	signat	_UART_TxChar,4216
	global	_UART_Init
psect	text134,local,class=CODE,delta=2
global __ptext134
__ptext134:

;; *************** function _UART_Init *****************
;; Defined at:
;;		line 31 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\serial_counter\uart.c"
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
psect	text134
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\serial_counter\uart.c"
	line	31
	global	__size_of_UART_Init
	__size_of_UART_Init	equ	__end_of_UART_Init-_UART_Init
	
_UART_Init:	
	opt	stack 7
; Regs used in _UART_Init: [wreg]
	line	32
	
l3270:	
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
	
l1381:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Init
	__end_of_UART_Init:
;; =============== function _UART_Init ends ============

	signat	_UART_Init,88
psect	text135,local,class=CODE,delta=2
global __ptext135
__ptext135:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
