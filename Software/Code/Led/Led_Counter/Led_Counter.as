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
	FNCALL	_main,_delay_sec
	FNCALL	_delay_sec,_delay_ms
	FNCALL	_delay_ms,_delay_us
	FNROOT	_main
	global	_PORTA
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
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
	file	"Led_Counter.as"
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
	global	?_delay_us
?_delay_us:	; 0 bytes @ 0x0
	global	?_delay_sec
?_delay_sec:	; 0 bytes @ 0x0
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
	global	??_delay_ms
??_delay_ms:	; 0 bytes @ 0x4
	global	??_delay_sec
??_delay_sec:	; 0 bytes @ 0x4
	global	delay_sec@sec_count
delay_sec@sec_count:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
	ds	1
	global	main@cnt
main@cnt:	; 1 bytes @ 0x6
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       7
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_delay_sec
;;   _delay_sec->_delay_ms
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
;; (0) _main                                                 2     2      0     120
;;                                              5 COMMON     2     2      0
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
;; (3) _delay_us                                             2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
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
;;COMMON               E      7       7       1       50.0%
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
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 21 in file "F:\Sample_Programs\Pic_Programs\Led\Led_Counter\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cnt             1    6[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay_sec
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\Sample_Programs\Pic_Programs\Led\Led_Counter\main.c"
	line	21
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	22
	
l3314:	
;main.c: 22: unsigned char cnt=0;
	clrf	(main@cnt)
	line	24
	
l3316:	
;main.c: 24: TRISA=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	25
;main.c: 25: TRISB=0x00;
	clrf	(134)^080h	;volatile
	line	26
;main.c: 26: TRISC=0x00;
	clrf	(135)^080h	;volatile
	line	27
;main.c: 27: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	28
;main.c: 28: TRISE=0x00;
	clrf	(137)^080h	;volatile
	goto	l3318
	line	29
;main.c: 29: while(1)
	
l1386:	
	line	33
	
l3318:	
;main.c: 30: {
;main.c: 33: PORTA=cnt;
	movf	(main@cnt),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	34
	
l3320:	
;main.c: 34: PORTB=cnt;
	movf	(main@cnt),w
	movwf	(6)	;volatile
	line	35
	
l3322:	
;main.c: 35: PORTC=cnt;
	movf	(main@cnt),w
	movwf	(7)	;volatile
	line	36
	
l3324:	
;main.c: 36: PORTD=cnt;
	movf	(main@cnt),w
	movwf	(8)	;volatile
	line	37
	
l3326:	
;main.c: 37: PORTE=cnt;
	movf	(main@cnt),w
	movwf	(9)	;volatile
	line	40
	
l3328:	
;main.c: 40: delay_sec(1);
	movlw	(01h)
	fcall	_delay_sec
	line	41
	
l3330:	
;main.c: 41: cnt++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@cnt),f
	goto	l3318
	line	42
	
l1387:	
	line	29
	goto	l3318
	
l1388:	
	line	43
	
l1389:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay_sec
psect	text83,local,class=CODE,delta=2
global __ptext83
__ptext83:

;; *************** function _delay_sec *****************
;; Defined at:
;;		line 74 in file "F:\Sample_Programs\Pic_Programs\Led\Led_Counter\delay.c"
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
psect	text83
	file	"F:\Sample_Programs\Pic_Programs\Led\Led_Counter\delay.c"
	line	74
	global	__size_of_delay_sec
	__size_of_delay_sec	equ	__end_of_delay_sec-_delay_sec
	
_delay_sec:	
	opt	stack 5
; Regs used in _delay_sec: [wreg+status,2+status,0+pclath+cstack]
;delay_sec@sec_count stored from wreg
	movwf	(delay_sec@sec_count)
	line	77
	
l3306:	
;delay.c: 77: while(sec_count!=0)
	goto	l3312
	
l697:	
	line	79
	
l3308:	
;delay.c: 78: {
;delay.c: 79: delay_ms(1000);
	movlw	low(03E8h)
	movwf	(?_delay_ms)
	movlw	high(03E8h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	80
	
l3310:	
;delay.c: 80: sec_count--;
	movlw	low(01h)
	subwf	(delay_sec@sec_count),f
	goto	l3312
	line	81
	
l696:	
	line	77
	
l3312:	
	movf	(delay_sec@sec_count),f
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l3308
u2240:
	goto	l699
	
l698:	
	line	82
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_delay_sec
	__end_of_delay_sec:
;; =============== function _delay_sec ends ============

	signat	_delay_sec,4216
	global	_delay_ms
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 46 in file "F:\Sample_Programs\Pic_Programs\Led\Led_Counter\delay.c"
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
psect	text84
	file	"F:\Sample_Programs\Pic_Programs\Led\Led_Counter\delay.c"
	line	46
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
	opt	stack 5
; Regs used in _delay_ms: [wreg+status,2+status,0+pclath+cstack]
	line	47
	
l3298:	
;delay.c: 47: while(ms_count!=0)
	goto	l3304
	
l691:	
	line	49
	
l3300:	
;delay.c: 48: {
;delay.c: 49: delay_us(112);
	movlw	low(070h)
	movwf	(?_delay_us)
	movlw	high(070h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	50
	
l3302:	
;delay.c: 50: ms_count--;
	movlw	low(01h)
	subwf	(delay_ms@ms_count),f
	movlw	high(01h)
	skipc
	decf	(delay_ms@ms_count+1),f
	subwf	(delay_ms@ms_count+1),f
	goto	l3304
	line	51
	
l690:	
	line	47
	
l3304:	
	movf	((delay_ms@ms_count+1)),w
	iorwf	((delay_ms@ms_count)),w
	skipz
	goto	u2231
	goto	u2230
u2231:
	goto	l3300
u2230:
	goto	l693
	
l692:	
	line	53
	
l693:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
;; =============== function _delay_ms ends ============

	signat	_delay_ms,4216
	global	_delay_us
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _delay_us *****************
;; Defined at:
;;		line 26 in file "F:\Sample_Programs\Pic_Programs\Led\Led_Counter\delay.c"
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
psect	text85
	file	"F:\Sample_Programs\Pic_Programs\Led\Led_Counter\delay.c"
	line	26
	global	__size_of_delay_us
	__size_of_delay_us	equ	__end_of_delay_us-_delay_us
	
_delay_us:	
	opt	stack 5
; Regs used in _delay_us: [wreg+status,2+status,0]
	
l685:	
	line	28
	
l2436:	
;delay.c: 27: {
;delay.c: 28: us_count--;
	movlw	low(01h)
	subwf	(delay_us@us_count),f
	movlw	high(01h)
	skipc
	decf	(delay_us@us_count+1),f
	subwf	(delay_us@us_count+1),f
	line	29
	
l2438:	
;delay.c: 29: }while(us_count);
	movf	((delay_us@us_count+1)),w
	iorwf	((delay_us@us_count)),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l685
u10:
	goto	l687
	
l686:	
	line	30
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_delay_us
	__end_of_delay_us:
;; =============== function _delay_us ends ============

	signat	_delay_us,4216
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
