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
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_LCD_DisplayString
	FNCALL	_main,_ADC_StartConversion
	FNCALL	_main,_LCD_GoToLineTwo
	FNCALL	_main,_LCD_DisplayNumber
	FNCALL	_LCD_DisplayNumber,___lwdiv
	FNCALL	_LCD_DisplayNumber,_LCD_DataWrite
	FNCALL	_LCD_DisplayNumber,___lwmod
	FNCALL	_LCD_DisplayString,_LCD_DataWrite
	FNCALL	_LCD_GoToLineTwo,_LCD_CmdWrite
	FNCALL	_LCD_Init,_delay_us
	FNCALL	_LCD_Init,_LCD_CmdWrite
	FNCALL	_LCD_DataWrite,_delay_us
	FNCALL	_LCD_DataWrite,_delay_ms
	FNCALL	_LCD_CmdWrite,_delay_us
	FNCALL	_LCD_CmdWrite,_delay_ms
	FNCALL	_delay_ms,_delay_us
	FNCALL	_ADC_StartConversion,_delay_us
	FNROOT	_main
	global	_ADCON0
psect	text166,local,class=CODE,delta=2
global __ptext166
__ptext166:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTB
_PORTB	set	6
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_GO
_GO	set	250
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
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
	global	_ADON
_ADON	set	248
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
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	67	;'C'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	122	;'z'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	0
psect	strings
	file	"Single_Channel.as"
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
	global	?_LCD_CmdWrite
?_LCD_CmdWrite:	; 0 bytes @ 0x0
	global	?_ADC_Init
?_ADC_Init:	; 0 bytes @ 0x0
	global	??_ADC_Init
??_ADC_Init:	; 0 bytes @ 0x0
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
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	delay_us@us_count
delay_us@us_count:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_delay_us
??_delay_us:	; 0 bytes @ 0x2
	global	?_delay_ms
?_delay_ms:	; 0 bytes @ 0x2
	global	?_ADC_StartConversion
?_ADC_StartConversion:	; 2 bytes @ 0x2
	global	delay_ms@ms_count
delay_ms@ms_count:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??_LCD_CmdWrite
??_LCD_CmdWrite:	; 0 bytes @ 0x4
	global	??_ADC_StartConversion
??_ADC_StartConversion:	; 0 bytes @ 0x4
	global	??_delay_ms
??_delay_ms:	; 0 bytes @ 0x4
	global	??_LCD_DataWrite
??_LCD_DataWrite:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	LCD_CmdWrite@cmd
LCD_CmdWrite@cmd:	; 1 bytes @ 0x4
	global	LCD_DataWrite@dat
LCD_DataWrite@dat:	; 1 bytes @ 0x4
	ds	1
	global	??_LCD_Init
??_LCD_Init:	; 0 bytes @ 0x5
	global	??_LCD_GoToLineTwo
??_LCD_GoToLineTwo:	; 0 bytes @ 0x5
	global	??_LCD_DisplayString
??_LCD_DisplayString:	; 0 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	ADC_StartConversion@channel
ADC_StartConversion@channel:	; 1 bytes @ 0x6
	global	LCD_DisplayString@string_ptr
LCD_DisplayString@string_ptr:	; 1 bytes @ 0x6
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?_LCD_DisplayNumber
?_LCD_DisplayNumber:	; 0 bytes @ 0x8
	global	LCD_DisplayNumber@num
LCD_DisplayNumber@num:	; 2 bytes @ 0x8
	ds	2
	global	??_LCD_DisplayNumber
??_LCD_DisplayNumber:	; 0 bytes @ 0xA
	global	??_main
??_main:	; 0 bytes @ 0xA
	global	main@adc_result
main@adc_result:	; 2 bytes @ 0xA
	ds	2
;;Data sizes: Strings 17, constant 0, data 0, bss 0, persistent 0 stack 0
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
;; ?_ADC_StartConversion	unsigned int  size(1) Largest target is 0
;;
;; LCD_DisplayString@string_ptr	PTR unsigned char  size(1) Largest target is 17
;;		 -> STR_1(CODE[17]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_LCD_DisplayNumber
;;   _LCD_DisplayNumber->___lwdiv
;;   _LCD_DisplayString->_LCD_DataWrite
;;   _LCD_GoToLineTwo->_LCD_CmdWrite
;;   _LCD_Init->_LCD_CmdWrite
;;   _LCD_DataWrite->_delay_ms
;;   _LCD_CmdWrite->_delay_ms
;;   _delay_ms->_delay_us
;;   _ADC_StartConversion->_delay_us
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
;; (0) _main                                                 2     2      0     660
;;                                             10 COMMON     2     2      0
;;                           _LCD_Init
;;                           _ADC_Init
;;                  _LCD_DisplayString
;;                _ADC_StartConversion
;;                    _LCD_GoToLineTwo
;;                  _LCD_DisplayNumber
;; ---------------------------------------------------------------------------------
;; (1) _LCD_DisplayNumber                                    2     0      2     390
;;                                              8 COMMON     2     0      2
;;                            ___lwdiv
;;                      _LCD_DataWrite
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _LCD_DisplayString                                    2     2      0      90
;;                                              5 COMMON     2     2      0
;;                      _LCD_DataWrite
;; ---------------------------------------------------------------------------------
;; (1) _LCD_GoToLineTwo                                      0     0      0      60
;;                       _LCD_CmdWrite
;; ---------------------------------------------------------------------------------
;; (1) _LCD_Init                                             0     0      0      75
;;                           _delay_us
;;                       _LCD_CmdWrite
;; ---------------------------------------------------------------------------------
;; (2) _LCD_DataWrite                                        1     1      0      60
;;                                              4 COMMON     1     1      0
;;                           _delay_us
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (2) _LCD_CmdWrite                                         1     1      0      60
;;                                              4 COMMON     1     1      0
;;                           _delay_us
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (3) _delay_ms                                             2     0      2      30
;;                                              2 COMMON     2     0      2
;;                           _delay_us
;; ---------------------------------------------------------------------------------
;; (1) _ADC_StartConversion                                  5     3      2      30
;;                                              2 COMMON     5     3      2
;;                           _delay_us
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     105
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     105
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (4) _delay_us                                             2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Init                                             0     0      0       0
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
;;   _ADC_Init
;;   _LCD_DisplayString
;;     _LCD_DataWrite
;;       _delay_us
;;       _delay_ms
;;         _delay_us
;;   _ADC_StartConversion
;;     _delay_us
;;   _LCD_GoToLineTwo
;;     _LCD_CmdWrite
;;       _delay_us
;;       _delay_ms
;;         _delay_us
;;   _LCD_DisplayNumber
;;     ___lwdiv
;;     _LCD_DataWrite
;;       _delay_us
;;       _delay_ms
;;         _delay_us
;;     ___lwmod
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
;;		line 19 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  adc_result      2   10[COMMON] unsigned int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCD_Init
;;		_ADC_Init
;;		_LCD_DisplayString
;;		_ADC_StartConversion
;;		_LCD_GoToLineTwo
;;		_LCD_DisplayNumber
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\main.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l4991:	
;main.c: 20: unsigned int adc_result;
;main.c: 23: LCD_Init();
	fcall	_LCD_Init
	line	26
;main.c: 26: ADC_Init();
	fcall	_ADC_Init
	line	29
	
l4993:	
;main.c: 29: LCD_DisplayString("ADC Channel zero");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_LCD_DisplayString
	goto	l4995
	line	32
;main.c: 32: while(1)
	
l2829:	
	line	35
	
l4995:	
;main.c: 33: {
;main.c: 35: adc_result= ADC_StartConversion(0);
	movlw	(0)
	fcall	_ADC_StartConversion
	movf	(1+(?_ADC_StartConversion)),w
	clrf	(main@adc_result+1)
	addwf	(main@adc_result+1)
	movf	(0+(?_ADC_StartConversion)),w
	clrf	(main@adc_result)
	addwf	(main@adc_result)

	line	38
	
l4997:	
;main.c: 38: LCD_GoToLineTwo();
	fcall	_LCD_GoToLineTwo
	line	39
	
l4999:	
;main.c: 39: LCD_DisplayNumber(adc_result);
	movf	(main@adc_result+1),w
	clrf	(?_LCD_DisplayNumber+1)
	addwf	(?_LCD_DisplayNumber+1)
	movf	(main@adc_result),w
	clrf	(?_LCD_DisplayNumber)
	addwf	(?_LCD_DisplayNumber)

	fcall	_LCD_DisplayNumber
	goto	l4995
	line	40
	
l2830:	
	line	32
	goto	l4995
	
l2831:	
	line	43
	
l2832:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_LCD_DisplayNumber
psect	text167,local,class=CODE,delta=2
global __ptext167
__ptext167:

;; *************** function _LCD_DisplayNumber *****************
;; Defined at:
;;		line 284 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\lcd_8_bit.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		_LCD_DataWrite
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text167
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\lcd_8_bit.c"
	line	284
	global	__size_of_LCD_DisplayNumber
	__size_of_LCD_DisplayNumber	equ	__end_of_LCD_DisplayNumber-_LCD_DisplayNumber
	
_LCD_DisplayNumber:	
	opt	stack 4
; Regs used in _LCD_DisplayNumber: [wreg+status,2+status,0+pclath+cstack]
	line	285
	
l4989:	
;lcd_8_bit.c: 285: LCD_DataWrite((num/10000)+0x30);
	movlw	low(02710h)
	movwf	(?___lwdiv)
	movlw	high(02710h)
	movwf	((?___lwdiv))+1
	movf	(LCD_DisplayNumber@num+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(LCD_DisplayNumber@num),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_LCD_DataWrite
	line	286
;lcd_8_bit.c: 286: num=num%10000;
	movlw	low(02710h)
	movwf	(?___lwmod)
	movlw	high(02710h)
	movwf	((?___lwmod))+1
	movf	(LCD_DisplayNumber@num+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(LCD_DisplayNumber@num),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	(LCD_DisplayNumber@num+1)
	addwf	(LCD_DisplayNumber@num+1)
	movf	(0+(?___lwmod)),w
	clrf	(LCD_DisplayNumber@num)
	addwf	(LCD_DisplayNumber@num)

	line	288
;lcd_8_bit.c: 288: LCD_DataWrite((num/1000)+0x30);
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(LCD_DisplayNumber@num+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(LCD_DisplayNumber@num),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_LCD_DataWrite
	line	289
;lcd_8_bit.c: 289: num=num%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	(LCD_DisplayNumber@num+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(LCD_DisplayNumber@num),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	(LCD_DisplayNumber@num+1)
	addwf	(LCD_DisplayNumber@num+1)
	movf	(0+(?___lwmod)),w
	clrf	(LCD_DisplayNumber@num)
	addwf	(LCD_DisplayNumber@num)

	line	291
;lcd_8_bit.c: 291: LCD_DataWrite((num/100)+0x30);
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(LCD_DisplayNumber@num+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(LCD_DisplayNumber@num),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_LCD_DataWrite
	line	292
;lcd_8_bit.c: 292: num=num%100;
	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	movf	(LCD_DisplayNumber@num+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(LCD_DisplayNumber@num),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	(LCD_DisplayNumber@num+1)
	addwf	(LCD_DisplayNumber@num+1)
	movf	(0+(?___lwmod)),w
	clrf	(LCD_DisplayNumber@num)
	addwf	(LCD_DisplayNumber@num)

	line	294
;lcd_8_bit.c: 294: LCD_DataWrite((num/10)+0x30);
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(LCD_DisplayNumber@num+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(LCD_DisplayNumber@num),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_LCD_DataWrite
	line	296
;lcd_8_bit.c: 296: LCD_DataWrite((num%10)+0x30);
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(LCD_DisplayNumber@num+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(LCD_DisplayNumber@num),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_LCD_DataWrite
	line	298
	
l2113:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DisplayNumber
	__end_of_LCD_DisplayNumber:
;; =============== function _LCD_DisplayNumber ends ============

	signat	_LCD_DisplayNumber,4216
	global	_LCD_DisplayString
psect	text168,local,class=CODE,delta=2
global __ptext168
__ptext168:

;; *************** function _LCD_DisplayString *****************
;; Defined at:
;;		line 248 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\lcd_8_bit.c"
;; Parameters:    Size  Location     Type
;;  string_ptr      1    wreg     PTR unsigned char 
;;		 -> STR_1(17), 
;; Auto vars:     Size  Location     Type
;;  string_ptr      1    6[COMMON] PTR unsigned char 
;;		 -> STR_1(17), 
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
psect	text168
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\lcd_8_bit.c"
	line	248
	global	__size_of_LCD_DisplayString
	__size_of_LCD_DisplayString	equ	__end_of_LCD_DisplayString-_LCD_DisplayString
	
_LCD_DisplayString:	
	opt	stack 4
; Regs used in _LCD_DisplayString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCD_DisplayString@string_ptr stored from wreg
	movwf	(LCD_DisplayString@string_ptr)
	line	249
	
l4981:	
;lcd_8_bit.c: 249: while(*string_ptr)
	goto	l4987
	
l2108:	
	line	250
	
l4983:	
;lcd_8_bit.c: 250: LCD_DataWrite(*string_ptr++);
	movf	(LCD_DisplayString@string_ptr),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCD_DataWrite
	
l4985:	
	movlw	(01h)
	movwf	(??_LCD_DisplayString+0)+0
	movf	(??_LCD_DisplayString+0)+0,w
	addwf	(LCD_DisplayString@string_ptr),f
	goto	l4987
	
l2107:	
	line	249
	
l4987:	
	movf	(LCD_DisplayString@string_ptr),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l4983
u2420:
	goto	l2110
	
l2109:	
	line	251
	
l2110:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DisplayString
	__end_of_LCD_DisplayString:
;; =============== function _LCD_DisplayString ends ============

	signat	_LCD_DisplayString,4216
	global	_LCD_GoToLineTwo
psect	text169,local,class=CODE,delta=2
global __ptext169
__ptext169:

;; *************** function _LCD_GoToLineTwo *****************
;; Defined at:
;;		line 129 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\lcd_8_bit.c"
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
psect	text169
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\lcd_8_bit.c"
	line	129
	global	__size_of_LCD_GoToLineTwo
	__size_of_LCD_GoToLineTwo	equ	__end_of_LCD_GoToLineTwo-_LCD_GoToLineTwo
	
_LCD_GoToLineTwo:	
	opt	stack 4
; Regs used in _LCD_GoToLineTwo: [wreg+status,2+status,0+pclath+cstack]
	line	130
	
l4979:	
;lcd_8_bit.c: 130: LCD_CmdWrite(0xc0);
	movlw	(0C0h)
	fcall	_LCD_CmdWrite
	line	131
	
l2093:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_GoToLineTwo
	__end_of_LCD_GoToLineTwo:
;; =============== function _LCD_GoToLineTwo ends ============

	signat	_LCD_GoToLineTwo,88
	global	_LCD_Init
psect	text170,local,class=CODE,delta=2
global __ptext170
__ptext170:

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 67 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\lcd_8_bit.c"
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
psect	text170
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\lcd_8_bit.c"
	line	67
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
	opt	stack 4
; Regs used in _LCD_Init: [wreg+status,2+status,0+pclath+cstack]
	line	68
	
l4973:	
;lcd_8_bit.c: 68: delay_us(5000);
	movlw	low(01388h)
	movwf	(?_delay_us)
	movlw	high(01388h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	70
	
l4975:	
;lcd_8_bit.c: 70: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	71
	
l4977:	
;lcd_8_bit.c: 71: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	73
;lcd_8_bit.c: 73: LCD_CmdWrite(0x38);
	movlw	(038h)
	fcall	_LCD_CmdWrite
	line	74
;lcd_8_bit.c: 74: LCD_CmdWrite(0x0E);
	movlw	(0Eh)
	fcall	_LCD_CmdWrite
	line	75
;lcd_8_bit.c: 75: LCD_CmdWrite(0x01);
	movlw	(01h)
	fcall	_LCD_CmdWrite
	line	76
;lcd_8_bit.c: 76: LCD_CmdWrite(0x80);
	movlw	(080h)
	fcall	_LCD_CmdWrite
	line	78
	
l2084:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
;; =============== function _LCD_Init ends ============

	signat	_LCD_Init,88
	global	_LCD_DataWrite
psect	text171,local,class=CODE,delta=2
global __ptext171
__ptext171:

;; *************** function _LCD_DataWrite *****************
;; Defined at:
;;		line 216 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\lcd_8_bit.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    4[COMMON] unsigned char 
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
psect	text171
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\lcd_8_bit.c"
	line	216
	global	__size_of_LCD_DataWrite
	__size_of_LCD_DataWrite	equ	__end_of_LCD_DataWrite-_LCD_DataWrite
	
_LCD_DataWrite:	
	opt	stack 4
; Regs used in _LCD_DataWrite: [wreg+status,2+status,0+pclath+cstack]
;LCD_DataWrite@dat stored from wreg
	line	219
	movwf	(LCD_DataWrite@dat)
	
l4959:	
;lcd_8_bit.c: 219: PORTB=dat;
	movf	(LCD_DataWrite@dat),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	220
	
l4961:	
;lcd_8_bit.c: 220: RD0=1;
	bsf	(64/8),(64)&7
	line	221
	
l4963:	
;lcd_8_bit.c: 221: RD1=0;
	bcf	(65/8),(65)&7
	line	222
	
l4965:	
;lcd_8_bit.c: 222: RD2=1;
	bsf	(66/8),(66)&7
	line	223
	
l4967:	
;lcd_8_bit.c: 223: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	224
	
l4969:	
;lcd_8_bit.c: 224: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	226
	
l4971:	
;lcd_8_bit.c: 226: delay_ms(1);
	movlw	low(01h)
	movwf	(?_delay_ms)
	movlw	high(01h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	228
	
l2104:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DataWrite
	__end_of_LCD_DataWrite:
;; =============== function _LCD_DataWrite ends ============

	signat	_LCD_DataWrite,4216
	global	_LCD_CmdWrite
psect	text172,local,class=CODE,delta=2
global __ptext172
__ptext172:

;; *************** function _LCD_CmdWrite *****************
;; Defined at:
;;		line 185 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\lcd_8_bit.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    4[COMMON] unsigned char 
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
psect	text172
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\lcd_8_bit.c"
	line	185
	global	__size_of_LCD_CmdWrite
	__size_of_LCD_CmdWrite	equ	__end_of_LCD_CmdWrite-_LCD_CmdWrite
	
_LCD_CmdWrite:	
	opt	stack 4
; Regs used in _LCD_CmdWrite: [wreg+status,2+status,0+pclath+cstack]
;LCD_CmdWrite@cmd stored from wreg
	line	187
	movwf	(LCD_CmdWrite@cmd)
	
l4945:	
;lcd_8_bit.c: 187: PORTB=cmd;
	movf	(LCD_CmdWrite@cmd),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	188
	
l4947:	
;lcd_8_bit.c: 188: RD0=0;
	bcf	(64/8),(64)&7
	line	189
	
l4949:	
;lcd_8_bit.c: 189: RD1=0;
	bcf	(65/8),(65)&7
	line	190
	
l4951:	
;lcd_8_bit.c: 190: RD2=1;
	bsf	(66/8),(66)&7
	line	191
	
l4953:	
;lcd_8_bit.c: 191: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	192
	
l4955:	
;lcd_8_bit.c: 192: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	194
	
l4957:	
;lcd_8_bit.c: 194: delay_ms(1);
	movlw	low(01h)
	movwf	(?_delay_ms)
	movlw	high(01h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	195
	
l2101:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_CmdWrite
	__end_of_LCD_CmdWrite:
;; =============== function _LCD_CmdWrite ends ============

	signat	_LCD_CmdWrite,4216
	global	_delay_ms
psect	text173,local,class=CODE,delta=2
global __ptext173
__ptext173:

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 47 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\delay.c"
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
psect	text173
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\delay.c"
	line	47
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
	opt	stack 4
; Regs used in _delay_ms: [wreg+status,2+status,0+pclath+cstack]
	line	48
	
l4937:	
;delay.c: 48: while(ms_count!=0)
	goto	l4943
	
l1385:	
	line	50
	
l4939:	
;delay.c: 49: {
;delay.c: 50: delay_us(300);
	movlw	low(012Ch)
	movwf	(?_delay_us)
	movlw	high(012Ch)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	51
	
l4941:	
;delay.c: 51: ms_count--;
	movlw	low(01h)
	subwf	(delay_ms@ms_count),f
	movlw	high(01h)
	skipc
	decf	(delay_ms@ms_count+1),f
	subwf	(delay_ms@ms_count+1),f
	goto	l4943
	line	52
	
l1384:	
	line	48
	
l4943:	
	movf	((delay_ms@ms_count+1)),w
	iorwf	((delay_ms@ms_count)),w
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l4939
u2410:
	goto	l1387
	
l1386:	
	line	54
	
l1387:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
;; =============== function _delay_ms ends ============

	signat	_delay_ms,4216
	global	_ADC_StartConversion
psect	text174,local,class=CODE,delta=2
global __ptext174
__ptext174:

;; *************** function _ADC_StartConversion *****************
;; Defined at:
;;		line 41 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\adc.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_us
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text174
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\adc.c"
	line	41
	global	__size_of_ADC_StartConversion
	__size_of_ADC_StartConversion	equ	__end_of_ADC_StartConversion-_ADC_StartConversion
	
_ADC_StartConversion:	
	opt	stack 6
; Regs used in _ADC_StartConversion: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;ADC_StartConversion@channel stored from wreg
	movwf	(ADC_StartConversion@channel)
	line	42
	
l4927:	
;adc.c: 42: ADCON0=((1<<ADON)|(channel<<3));
	movf	(ADC_StartConversion@channel),w
	movwf	(??_ADC_StartConversion+0)+0
	movlw	03h
u2385:
	clrc
	rlf	(??_ADC_StartConversion+0)+0,f
	addlw	-1
	skipz
	goto	u2385
	movlw	(01h)
	movwf	(??_ADC_StartConversion+1)+0
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(248/8),(248)&7
	movlw	1
	addlw	1
	goto	u2394
u2395:
	clrc
	rlf	(??_ADC_StartConversion+1)+0,f
u2394:
	addlw	-1
	skipz
	goto	u2395
	movf	0+(??_ADC_StartConversion+1)+0,w
	iorwf	0+(??_ADC_StartConversion+0)+0,w
	movwf	(31)	;volatile
	line	43
	
l4929:	
;adc.c: 43: delay_us(50);
	movlw	low(032h)
	movwf	(?_delay_us)
	movlw	high(032h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	45
	
l4931:	
;adc.c: 45: GO=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	46
;adc.c: 46: while(GO==1);
	goto	l690
	
l691:	
	
l690:	
	btfsc	(250/8),(250)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l690
u2400:
	goto	l4933
	
l692:	
	line	48
	
l4933:	
;adc.c: 48: return((ADRESH<<8) + ADRESL);
	movf	(30),w	;volatile
	movwf	(??_ADC_StartConversion+0)+0
	clrf	(??_ADC_StartConversion+0)+0+1
	movf	(??_ADC_StartConversion+0)+0,w
	movwf	(??_ADC_StartConversion+0)+1
	clrf	(??_ADC_StartConversion+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	0+(??_ADC_StartConversion+0)+0,w
	movwf	(?_ADC_StartConversion)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_ADC_StartConversion+0)+0,w
	movwf	1+(?_ADC_StartConversion)
	goto	l693
	
l4935:	
	line	49
	
l693:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_StartConversion
	__end_of_ADC_StartConversion:
;; =============== function _ADC_StartConversion ends ============

	signat	_ADC_StartConversion,4218
	global	___lwmod
psect	text175,local,class=CODE,delta=2
global __ptext175
__ptext175:

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
;;		_LCD_DisplayNumber
;; This function uses a non-reentrant model
;;
psect	text175
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l4197:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u381
	goto	u380
u381:
	goto	l4215
u380:
	line	9
	
l4199:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l4205
	
l3533:	
	line	11
	
l4201:	
	movlw	01h
	
u395:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u395
	line	12
	
l4203:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l4205
	line	13
	
l3532:	
	line	10
	
l4205:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u401
	goto	u400
u401:
	goto	l4201
u400:
	goto	l4207
	
l3534:	
	goto	l4207
	line	14
	
l3535:	
	line	15
	
l4207:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u415
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u415:
	skipc
	goto	u411
	goto	u410
u411:
	goto	l4211
u410:
	line	16
	
l4209:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l4211
	
l3536:	
	line	17
	
l4211:	
	movlw	01h
	
u425:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u425
	line	18
	
l4213:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u431
	goto	u430
u431:
	goto	l4207
u430:
	goto	l4215
	
l3537:	
	goto	l4215
	line	19
	
l3531:	
	line	20
	
l4215:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l3538
	
l4217:	
	line	21
	
l3538:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text176,local,class=CODE,delta=2
global __ptext176
__ptext176:

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
;;		_LCD_DisplayNumber
;; This function uses a non-reentrant model
;;
psect	text176
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l4171:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l4173:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u311
	goto	u310
u311:
	goto	l4193
u310:
	line	11
	
l4175:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l4181
	
l3523:	
	line	13
	
l4177:	
	movlw	01h
	
u325:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u325
	line	14
	
l4179:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l4181
	line	15
	
l3522:	
	line	12
	
l4181:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u331
	goto	u330
u331:
	goto	l4177
u330:
	goto	l4183
	
l3524:	
	goto	l4183
	line	16
	
l3525:	
	line	17
	
l4183:	
	movlw	01h
	
u345:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u345
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u355
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u355:
	skipc
	goto	u351
	goto	u350
u351:
	goto	l4189
u350:
	line	19
	
l4185:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l4187:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l4189
	line	21
	
l3526:	
	line	22
	
l4189:	
	movlw	01h
	
u365:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u365
	line	23
	
l4191:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u371
	goto	u370
u371:
	goto	l4183
u370:
	goto	l4193
	
l3527:	
	goto	l4193
	line	24
	
l3521:	
	line	25
	
l4193:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l3528
	
l4195:	
	line	26
	
l3528:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_delay_us
psect	text177,local,class=CODE,delta=2
global __ptext177
__ptext177:

;; *************** function _delay_us *****************
;; Defined at:
;;		line 26 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\delay.c"
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
;;		_ADC_StartConversion
;;		_delay_ms
;;		_LCD_Init
;;		_LCD_CmdWrite
;;		_LCD_DataWrite
;; This function uses a non-reentrant model
;;
psect	text177
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\delay.c"
	global	__size_of_delay_us
	__size_of_delay_us	equ	__end_of_delay_us-_delay_us
	
_delay_us:	
	opt	stack 4
; Regs used in _delay_us: [wreg+status,2+status,0]
	line	27
	
l3995:	
;delay.c: 27: while(us_count!=0)
	goto	l3999
	
l1379:	
	line	29
	
l3997:	
;delay.c: 28: {
;delay.c: 29: us_count--;
	movlw	low(01h)
	subwf	(delay_us@us_count),f
	movlw	high(01h)
	skipc
	decf	(delay_us@us_count+1),f
	subwf	(delay_us@us_count+1),f
	goto	l3999
	line	30
	
l1378:	
	line	27
	
l3999:	
	movf	((delay_us@us_count+1)),w
	iorwf	((delay_us@us_count)),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l3997
u10:
	goto	l1381
	
l1380:	
	line	31
	
l1381:	
	return
	opt stack 0
GLOBAL	__end_of_delay_us
	__end_of_delay_us:
;; =============== function _delay_us ends ============

	signat	_delay_us,4216
	global	_ADC_Init
psect	text178,local,class=CODE,delta=2
global __ptext178
__ptext178:

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 25 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
psect	text178
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Single_Channel\adc.c"
	line	25
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
	opt	stack 7
; Regs used in _ADC_Init: [wreg+status,2]
	line	26
	
l3991:	
;adc.c: 26: ADCON0=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(31)	;volatile
	line	27
	
l3993:	
;adc.c: 27: ADCON1=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	28
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
;; =============== function _ADC_Init ends ============

	signat	_ADC_Init,88
psect	text179,local,class=CODE,delta=2
global __ptext179
__ptext179:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
