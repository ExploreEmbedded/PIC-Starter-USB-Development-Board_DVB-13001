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
	FNCALL	_UART_TxString,_UART_TxChar
	FNROOT	_main
	global	main@F1102
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\tx_string\main.c"
	line	18

;initializer for main@F1102
	retlw	068h
	retlw	065h
	retlw	06Ch
	retlw	06Ch
	retlw	06Fh
	retlw	020h
	retlw	077h
	retlw	06Fh
	retlw	072h
	retlw	06Ch
	retlw	064h
	retlw	02Ch
	retlw	020h
	retlw	0
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
	retlw	119	;'w'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	103	;'g'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	109	;'m'
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	10
	retlw	13
	retlw	0
psect	strings
	file	"tx_string.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\tx_string\main.c"
main@F1102:
       ds      14

global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+14)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_UART_TxChar
?_UART_TxChar:	; 0 bytes @ 0x0
	global	??_UART_TxChar
??_UART_TxChar:	; 0 bytes @ 0x0
	global	UART_TxChar@ch
UART_TxChar@ch:	; 1 bytes @ 0x0
	ds	1
	global	?_UART_TxString
?_UART_TxString:	; 0 bytes @ 0x1
	global	UART_TxString@string_ptr
UART_TxString@string_ptr:	; 2 bytes @ 0x1
	ds	2
	global	??_UART_TxString
??_UART_TxString:	; 0 bytes @ 0x3
	global	??_main
??_main:	; 0 bytes @ 0x3
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@msg
main@msg:	; 14 bytes @ 0x0
	ds	14
;;Data sizes: Strings 29, constant 0, data 14, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       7
;; BANK0           80     14      28
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; UART_TxString@string_ptr	PTR unsigned char  size(2) Largest target is 29
;;		 -> STR_1(CODE[29]), main@msg(BANK0[14]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_UART_TxString
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                18    18      0      92
;;                                              3 COMMON     4     4      0
;;                                              0 BANK0     14    14      0
;;                          _UART_Init
;;                      _UART_TxString
;; ---------------------------------------------------------------------------------
;; (1) _UART_TxString                                        2     0      2      67
;;                                              1 COMMON     2     0      2
;;                        _UART_TxChar
;; ---------------------------------------------------------------------------------
;; (2) _UART_TxChar                                          1     1      0      22
;;                                              0 COMMON     1     1      0
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
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      25      12        0.0%
;;ABS                  0      0      23       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      E      1C       5       35.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      7       7       1       50.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\tx_string\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  msg            14    0[BANK0 ] unsigned char [14]
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
;;      Locals:         0      14       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      14       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_UART_Init
;;		_UART_TxString
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\tx_string\main.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l3516:	
;main.c: 18: char msg[]={"hello world, "};
	movlw	(main@msg)&0ffh
	movwf	fsr0
	movlw	low(main@F1102)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	14
	movwf	((??_main+0)+0+2)
u2320:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2320
	line	21
	
l3518:	
;main.c: 21: UART_Init();
	fcall	_UART_Init
	goto	l3520
	line	23
;main.c: 23: while(1)
	
l691:	
	line	26
	
l3520:	
;main.c: 24: {
;main.c: 26: UART_TxString(msg);
	movlw	(main@msg&0ffh)
	movwf	(?_UART_TxString)
	movlw	(0x0/2)
	movwf	(?_UART_TxString+1)
	fcall	_UART_TxString
	line	27
	
l3522:	
;main.c: 27: UART_TxString("welcome to PIC programming\n\r");
	movlw	low((STR_1-__stringbase))
	movwf	(?_UART_TxString)
	movlw	80h
	movwf	(?_UART_TxString+1)
	fcall	_UART_TxString
	goto	l3520
	line	28
	
l692:	
	line	23
	goto	l3520
	
l693:	
	line	30
	
l694:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_UART_TxString
psect	text155,local,class=CODE,delta=2
global __ptext155
__ptext155:

;; *************** function _UART_TxString *****************
;; Defined at:
;;		line 107 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\tx_string\uart.c"
;; Parameters:    Size  Location     Type
;;  string_ptr      2    1[COMMON] PTR unsigned char 
;;		 -> STR_1(29), main@msg(14), 
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
psect	text155
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\tx_string\uart.c"
	line	107
	global	__size_of_UART_TxString
	__size_of_UART_TxString	equ	__end_of_UART_TxString-_UART_TxString
	
_UART_TxString:	
	opt	stack 6
; Regs used in _UART_TxString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	108
	
l3508:	
;uart.c: 108: while(*string_ptr)
	goto	l3514
	
l1395:	
	line	109
	
l3510:	
;uart.c: 109: UART_TxChar(*string_ptr++);
	movf	(UART_TxString@string_ptr+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(UART_TxString@string_ptr),w
	movwf	fsr0
	fcall	stringtab
	fcall	_UART_TxChar
	
l3512:	
	movlw	low(01h)
	addwf	(UART_TxString@string_ptr),f
	skipnc
	incf	(UART_TxString@string_ptr+1),f
	movlw	high(01h)
	addwf	(UART_TxString@string_ptr+1),f
	goto	l3514
	
l1394:	
	line	108
	
l3514:	
	movf	(UART_TxString@string_ptr+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(UART_TxString@string_ptr),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2311
	goto	u2310
u2311:
	goto	l3510
u2310:
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
psect	text156,local,class=CODE,delta=2
global __ptext156
__ptext156:

;; *************** function _UART_TxChar *****************
;; Defined at:
;;		line 80 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\tx_string\uart.c"
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
psect	text156
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\tx_string\uart.c"
	line	80
	global	__size_of_UART_TxChar
	__size_of_UART_TxChar	equ	__end_of_UART_TxChar-_UART_TxChar
	
_UART_TxChar:	
	opt	stack 6
; Regs used in _UART_TxChar: [wreg]
;UART_TxChar@ch stored from wreg
	movwf	(UART_TxChar@ch)
	line	81
	
l3492:	
;uart.c: 81: while(TXIF==0);
	goto	l1388
	
l1389:	
	
l1388:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l1388
u2280:
	
l1390:	
	line	82
;uart.c: 82: TXIF=0;
	bcf	(100/8),(100)&7
	line	83
	
l3494:	
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
	global	_UART_Init
psect	text157,local,class=CODE,delta=2
global __ptext157
__ptext157:

;; *************** function _UART_Init *****************
;; Defined at:
;;		line 31 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\tx_string\uart.c"
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
psect	text157
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\tx_string\uart.c"
	line	31
	global	__size_of_UART_Init
	__size_of_UART_Init	equ	__end_of_UART_Init-_UART_Init
	
_UART_Init:	
	opt	stack 7
; Regs used in _UART_Init: [wreg]
	line	32
	
l3490:	
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
psect	text158,local,class=CODE,delta=2
global __ptext158
__ptext158:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
