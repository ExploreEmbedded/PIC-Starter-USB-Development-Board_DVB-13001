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
	FNCALL	_main,_UART_TxChar
	FNROOT	_main
	global	_RCREG
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:
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
	file	"tx_char.as"
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
	global	?_UART_TxChar
?_UART_TxChar:	; 0 bytes @ 0x0
	global	??_UART_TxChar
??_UART_TxChar:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	UART_TxChar@ch
UART_TxChar@ch:	; 1 bytes @ 0x0
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      1       1
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_UART_TxChar
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
;; (0) _main                                                 0     0      0      15
;;                          _UART_Init
;;                        _UART_TxChar
;; ---------------------------------------------------------------------------------
;; (1) _UART_TxChar                                          1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _UART_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _UART_Init
;;   _UART_TxChar
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      1       1       1        7.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
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
;;		line 17 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\tx_char\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_UART_Init
;;		_UART_TxChar
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\tx_char\main.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	21
	
l3464:	
;main.c: 21: UART_Init();
	fcall	_UART_Init
	line	23
;main.c: 23: while(1)
	
l689:	
	line	26
;main.c: 24: {
;main.c: 26: UART_TxChar('a');
	movlw	(061h)
	fcall	_UART_TxChar
	goto	l689
	line	27
	
l690:	
	line	23
	goto	l689
	
l691:	
	line	31
	
l692:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_UART_TxChar
psect	text89,local,class=CODE,delta=2
global __ptext89
__ptext89:

;; *************** function _UART_TxChar *****************
;; Defined at:
;;		line 80 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\tx_char\uart.c"
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
psect	text89
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\tx_char\uart.c"
	line	80
	global	__size_of_UART_TxChar
	__size_of_UART_TxChar	equ	__end_of_UART_TxChar-_UART_TxChar
	
_UART_TxChar:	
	opt	stack 7
; Regs used in _UART_TxChar: [wreg]
;UART_TxChar@ch stored from wreg
	movwf	(UART_TxChar@ch)
	line	81
	
l2568:	
;uart.c: 81: while(TXIF==0);
	goto	l1386
	
l1387:	
	
l1386:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u11
	goto	u10
u11:
	goto	l1386
u10:
	
l1388:	
	line	82
;uart.c: 82: TXIF=0;
	bcf	(100/8),(100)&7
	line	83
	
l2570:	
;uart.c: 83: TXREG=ch;
	movf	(UART_TxChar@ch),w
	movwf	(25)	;volatile
	line	84
	
l1389:	
	return
	opt stack 0
GLOBAL	__end_of_UART_TxChar
	__end_of_UART_TxChar:
;; =============== function _UART_TxChar ends ============

	signat	_UART_TxChar,4216
	global	_UART_Init
psect	text90,local,class=CODE,delta=2
global __ptext90
__ptext90:

;; *************** function _UART_Init *****************
;; Defined at:
;;		line 31 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\tx_char\uart.c"
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
psect	text90
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Serial_comm\tx_char\uart.c"
	line	31
	global	__size_of_UART_Init
	__size_of_UART_Init	equ	__end_of_UART_Init-_UART_Init
	
_UART_Init:	
	opt	stack 7
; Regs used in _UART_Init: [wreg]
	line	32
	
l2566:	
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
	
l1377:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Init
	__end_of_UART_Init:
;; =============== function _UART_Init ends ============

	signat	_UART_Init,88
psect	text91,local,class=CODE,delta=2
global __ptext91
__ptext91:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
