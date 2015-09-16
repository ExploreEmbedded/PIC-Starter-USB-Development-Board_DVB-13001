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
	FNCALL	_main,_LCD_GoToLineTwo
	FNCALL	_main,_ADC_StartConversion
	FNCALL	_main,_LCD_GoToXY
	FNCALL	_main,_LCD_DisplayNumber
	FNCALL	_LCD_DisplayNumber,___lwdiv
	FNCALL	_LCD_DisplayNumber,_LCD_DataWrite
	FNCALL	_LCD_DisplayNumber,___lwmod
	FNCALL	_LCD_DisplayString,_LCD_DataWrite
	FNCALL	_LCD_GoToXY,_LCD_CmdWrite
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
psect	text298,local,class=CODE,delta=2
global __ptext298
__ptext298:
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
	
STR_2:	
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	67	;'C'
	retlw	32	;' '
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"Temp_sensor.as"
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
	global	??_delay_ms
??_delay_ms:	; 0 bytes @ 0x4
	global	??_ADC_StartConversion
??_ADC_StartConversion:	; 0 bytes @ 0x4
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
	global	?_LCD_GoToXY
?_LCD_GoToXY:	; 0 bytes @ 0x5
	global	??_LCD_DisplayString
??_LCD_DisplayString:	; 0 bytes @ 0x5
	global	LCD_GoToXY@col
LCD_GoToXY@col:	; 1 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	??_LCD_GoToXY
??_LCD_GoToXY:	; 0 bytes @ 0x6
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
	global	LCD_GoToXY@row
LCD_GoToXY@row:	; 1 bytes @ 0x8
	global	LCD_DisplayNumber@num
LCD_DisplayNumber@num:	; 2 bytes @ 0x8
	ds	1
	global	LCD_GoToXY@pos
LCD_GoToXY@pos:	; 1 bytes @ 0x9
	ds	1
	global	??_LCD_DisplayNumber
??_LCD_DisplayNumber:	; 0 bytes @ 0xA
	global	??_main
??_main:	; 0 bytes @ 0xA
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@adc_temp
main@adc_temp:	; 2 bytes @ 0x0
	ds	2
	global	main@adc_result
main@adc_result:	; 2 bytes @ 0x2
	ds	2
;;Data sizes: Strings 24, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      12
;; BANK0           80      4       4
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
;; LCD_DisplayString@string_ptr	PTR unsigned char  size(1) Largest target is 12
;;		 -> STR_2(CODE[12]), STR_1(CODE[12]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_LCD_GoToXY
;;   _main->_LCD_DisplayNumber
;;   _LCD_DisplayNumber->___lwdiv
;;   _LCD_DisplayString->_LCD_DataWrite
;;   _LCD_GoToXY->_LCD_CmdWrite
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 6     6      0    1270
;;                                             10 COMMON     2     2      0
;;                                              0 BANK0      4     4      0
;;                           _LCD_Init
;;                           _ADC_Init
;;                  _LCD_DisplayString
;;                    _LCD_GoToLineTwo
;;                _ADC_StartConversion
;;                         _LCD_GoToXY
;;                  _LCD_DisplayNumber
;; ---------------------------------------------------------------------------------
;; (1) _LCD_DisplayNumber                                    2     0      2     591
;;                                              8 COMMON     2     0      2
;;                            ___lwdiv
;;                      _LCD_DataWrite
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _LCD_DisplayString                                    2     2      0     136
;;                                              5 COMMON     2     2      0
;;                      _LCD_DataWrite
;; ---------------------------------------------------------------------------------
;; (1) _LCD_GoToXY                                           5     4      1     225
;;                                              5 COMMON     5     4      1
;;                       _LCD_CmdWrite
;; ---------------------------------------------------------------------------------
;; (1) _LCD_GoToLineTwo                                      0     0      0      91
;;                       _LCD_CmdWrite
;; ---------------------------------------------------------------------------------
;; (1) _LCD_Init                                             0     0      0     114
;;                           _delay_us
;;                       _LCD_CmdWrite
;; ---------------------------------------------------------------------------------
;; (2) _LCD_DataWrite                                        1     1      0      91
;;                                              4 COMMON     1     1      0
;;                           _delay_us
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (2) _LCD_CmdWrite                                         1     1      0      91
;;                                              4 COMMON     1     1      0
;;                           _delay_us
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (3) _delay_ms                                             2     0      2      46
;;                                              2 COMMON     2     0      2
;;                           _delay_us
;; ---------------------------------------------------------------------------------
;; (1) _ADC_StartConversion                                  5     3      2      45
;;                                              2 COMMON     5     3      2
;;                           _delay_us
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     159
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (4) _delay_us                                             2     0      2      23
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
;;   _LCD_GoToLineTwo
;;     _LCD_CmdWrite
;;       _delay_us
;;       _delay_ms
;;         _delay_us
;;   _ADC_StartConversion
;;     _delay_us
;;   _LCD_GoToXY
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
;;BANK0               50      4       4       5        5.0%
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
;;		line 19 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  adc_result      2    2[BANK0 ] unsigned int 
;;  adc_temp        2    0[BANK0 ] unsigned int 
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
;;      Locals:         0       4       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCD_Init
;;		_ADC_Init
;;		_LCD_DisplayString
;;		_LCD_GoToLineTwo
;;		_ADC_StartConversion
;;		_LCD_GoToXY
;;		_LCD_DisplayNumber
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\main.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l5209:	
;main.c: 20: unsigned int adc_result,adc_temp;
;main.c: 23: LCD_Init();
	fcall	_LCD_Init
	line	26
;main.c: 26: ADC_Init();
	fcall	_ADC_Init
	line	29
	
l5211:	
;main.c: 29: LCD_DisplayString("ADC value: ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_LCD_DisplayString
	line	32
	
l5213:	
;main.c: 32: LCD_GoToLineTwo();
	fcall	_LCD_GoToLineTwo
	line	33
;main.c: 33: LCD_DisplayString("Temp     : ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_LCD_DisplayString
	goto	l5215
	line	36
;main.c: 36: while(1)
	
l2131:	
	line	39
	
l5215:	
;main.c: 37: {
;main.c: 39: adc_result= ADC_StartConversion(1);
	movlw	(01h)
	fcall	_ADC_StartConversion
	movf	(1+(?_ADC_StartConversion)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@adc_result+1)
	addwf	(main@adc_result+1)
	movf	(0+(?_ADC_StartConversion)),w
	clrf	(main@adc_result)
	addwf	(main@adc_result)

	line	42
	
l5217:	
;main.c: 42: LCD_GoToXY(0,10);
	movlw	(0Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_LCD_GoToXY)
	movlw	(0)
	fcall	_LCD_GoToXY
	line	43
	
l5219:	
;main.c: 43: LCD_DisplayNumber(adc_result);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@adc_result+1),w
	clrf	(?_LCD_DisplayNumber+1)
	addwf	(?_LCD_DisplayNumber+1)
	movf	(main@adc_result),w
	clrf	(?_LCD_DisplayNumber)
	addwf	(?_LCD_DisplayNumber)

	fcall	_LCD_DisplayNumber
	line	49
	
l5221:	
;main.c: 49: adc_temp = (adc_result/2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@adc_result+1),w
	movwf	(??_main+0)+0+1
	movf	(main@adc_result),w
	movwf	(??_main+0)+0
	movlw	01h
u2785:
	clrc
	rrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u2785
	movf	0+(??_main+0)+0,w
	movwf	(main@adc_temp)
	movf	1+(??_main+0)+0,w
	movwf	(main@adc_temp+1)
	line	52
	
l5223:	
;main.c: 52: LCD_GoToXY(1,10);
	movlw	(0Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_LCD_GoToXY)
	movlw	(01h)
	fcall	_LCD_GoToXY
	line	53
	
l5225:	
;main.c: 53: LCD_DisplayNumber(adc_temp);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@adc_temp+1),w
	clrf	(?_LCD_DisplayNumber+1)
	addwf	(?_LCD_DisplayNumber+1)
	movf	(main@adc_temp),w
	clrf	(?_LCD_DisplayNumber)
	addwf	(?_LCD_DisplayNumber)

	fcall	_LCD_DisplayNumber
	goto	l5215
	line	54
	
l2132:	
	line	36
	goto	l5215
	
l2133:	
	line	57
	
l2134:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_LCD_DisplayNumber
psect	text299,local,class=CODE,delta=2
global __ptext299
__ptext299:

;; *************** function _LCD_DisplayNumber *****************
;; Defined at:
;;		line 284 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\lcd_8_bit.c"
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
psect	text299
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\lcd_8_bit.c"
	line	284
	global	__size_of_LCD_DisplayNumber
	__size_of_LCD_DisplayNumber	equ	__end_of_LCD_DisplayNumber-_LCD_DisplayNumber
	
_LCD_DisplayNumber:	
	opt	stack 4
; Regs used in _LCD_DisplayNumber: [wreg+status,2+status,0+pclath+cstack]
	line	285
	
l5207:	
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
	
l1413:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DisplayNumber
	__end_of_LCD_DisplayNumber:
;; =============== function _LCD_DisplayNumber ends ============

	signat	_LCD_DisplayNumber,4216
	global	_LCD_DisplayString
psect	text300,local,class=CODE,delta=2
global __ptext300
__ptext300:

;; *************** function _LCD_DisplayString *****************
;; Defined at:
;;		line 248 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\lcd_8_bit.c"
;; Parameters:    Size  Location     Type
;;  string_ptr      1    wreg     PTR unsigned char 
;;		 -> STR_2(12), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  string_ptr      1    6[COMMON] PTR unsigned char 
;;		 -> STR_2(12), STR_1(12), 
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
psect	text300
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\lcd_8_bit.c"
	line	248
	global	__size_of_LCD_DisplayString
	__size_of_LCD_DisplayString	equ	__end_of_LCD_DisplayString-_LCD_DisplayString
	
_LCD_DisplayString:	
	opt	stack 4
; Regs used in _LCD_DisplayString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCD_DisplayString@string_ptr stored from wreg
	movwf	(LCD_DisplayString@string_ptr)
	line	249
	
l5199:	
;lcd_8_bit.c: 249: while(*string_ptr)
	goto	l5205
	
l1408:	
	line	250
	
l5201:	
;lcd_8_bit.c: 250: LCD_DataWrite(*string_ptr++);
	movf	(LCD_DisplayString@string_ptr),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCD_DataWrite
	
l5203:	
	movlw	(01h)
	movwf	(??_LCD_DisplayString+0)+0
	movf	(??_LCD_DisplayString+0)+0,w
	addwf	(LCD_DisplayString@string_ptr),f
	goto	l5205
	
l1407:	
	line	249
	
l5205:	
	movf	(LCD_DisplayString@string_ptr),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2771
	goto	u2770
u2771:
	goto	l5201
u2770:
	goto	l1410
	
l1409:	
	line	251
	
l1410:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DisplayString
	__end_of_LCD_DisplayString:
;; =============== function _LCD_DisplayString ends ============

	signat	_LCD_DisplayString,4216
	global	_LCD_GoToXY
psect	text301,local,class=CODE,delta=2
global __ptext301
__ptext301:

;; *************** function _LCD_GoToXY *****************
;; Defined at:
;;		line 150 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\lcd_8_bit.c"
;; Parameters:    Size  Location     Type
;;  row             1    wreg     unsigned char 
;;  col             1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  row             1    8[COMMON] unsigned char 
;;  pos             1    9[COMMON] unsigned char 
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
psect	text301
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\lcd_8_bit.c"
	line	150
	global	__size_of_LCD_GoToXY
	__size_of_LCD_GoToXY	equ	__end_of_LCD_GoToXY-_LCD_GoToXY
	
_LCD_GoToXY:	
	opt	stack 4
; Regs used in _LCD_GoToXY: [wreg+status,2+status,0+pclath+cstack]
;LCD_GoToXY@row stored from wreg
	line	153
	movwf	(LCD_GoToXY@row)
	
l5189:	
;lcd_8_bit.c: 151: char pos;
;lcd_8_bit.c: 153: if(row<2)
	movlw	(02h)
	subwf	(LCD_GoToXY@row),w
	skipnc
	goto	u2741
	goto	u2740
u2741:
	goto	l1398
u2740:
	line	155
	
l5191:	
;lcd_8_bit.c: 154: {
;lcd_8_bit.c: 155: pos= 0x80 | (row << 6);
	movf	(LCD_GoToXY@row),w
	movwf	(??_LCD_GoToXY+0)+0
	movlw	(06h)-1
u2755:
	clrc
	rlf	(??_LCD_GoToXY+0)+0,f
	addlw	-1
	skipz
	goto	u2755
	clrc
	rlf	(??_LCD_GoToXY+0)+0,w
	iorlw	080h
	movwf	(??_LCD_GoToXY+1)+0
	movf	(??_LCD_GoToXY+1)+0,w
	movwf	(LCD_GoToXY@pos)
	line	158
	
l5193:	
;lcd_8_bit.c: 158: if(col<16)
	movlw	(010h)
	subwf	(LCD_GoToXY@col),w
	skipnc
	goto	u2761
	goto	u2760
u2761:
	goto	l5197
u2760:
	line	159
	
l5195:	
;lcd_8_bit.c: 159: pos= pos+col;
	movf	(LCD_GoToXY@col),w
	addwf	(LCD_GoToXY@pos),w
	movwf	(??_LCD_GoToXY+0)+0
	movf	(??_LCD_GoToXY+0)+0,w
	movwf	(LCD_GoToXY@pos)
	goto	l5197
	
l1397:	
	line	162
	
l5197:	
;lcd_8_bit.c: 162: LCD_CmdWrite(pos);
	movf	(LCD_GoToXY@pos),w
	fcall	_LCD_CmdWrite
	goto	l1398
	line	163
	
l1396:	
	line	164
	
l1398:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_GoToXY
	__end_of_LCD_GoToXY:
;; =============== function _LCD_GoToXY ends ============

	signat	_LCD_GoToXY,8312
	global	_LCD_GoToLineTwo
psect	text302,local,class=CODE,delta=2
global __ptext302
__ptext302:

;; *************** function _LCD_GoToLineTwo *****************
;; Defined at:
;;		line 129 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\lcd_8_bit.c"
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
psect	text302
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\lcd_8_bit.c"
	line	129
	global	__size_of_LCD_GoToLineTwo
	__size_of_LCD_GoToLineTwo	equ	__end_of_LCD_GoToLineTwo-_LCD_GoToLineTwo
	
_LCD_GoToLineTwo:	
	opt	stack 4
; Regs used in _LCD_GoToLineTwo: [wreg+status,2+status,0+pclath+cstack]
	line	130
	
l5187:	
;lcd_8_bit.c: 130: LCD_CmdWrite(0xc0);
	movlw	(0C0h)
	fcall	_LCD_CmdWrite
	line	131
	
l1393:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_GoToLineTwo
	__end_of_LCD_GoToLineTwo:
;; =============== function _LCD_GoToLineTwo ends ============

	signat	_LCD_GoToLineTwo,88
	global	_LCD_Init
psect	text303,local,class=CODE,delta=2
global __ptext303
__ptext303:

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 67 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\lcd_8_bit.c"
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
psect	text303
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\lcd_8_bit.c"
	line	67
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
	opt	stack 4
; Regs used in _LCD_Init: [wreg+status,2+status,0+pclath+cstack]
	line	68
	
l5181:	
;lcd_8_bit.c: 68: delay_us(5000);
	movlw	low(01388h)
	movwf	(?_delay_us)
	movlw	high(01388h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	70
	
l5183:	
;lcd_8_bit.c: 70: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	71
	
l5185:	
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
	
l1384:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
;; =============== function _LCD_Init ends ============

	signat	_LCD_Init,88
	global	_LCD_DataWrite
psect	text304,local,class=CODE,delta=2
global __ptext304
__ptext304:

;; *************** function _LCD_DataWrite *****************
;; Defined at:
;;		line 216 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\lcd_8_bit.c"
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
psect	text304
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\lcd_8_bit.c"
	line	216
	global	__size_of_LCD_DataWrite
	__size_of_LCD_DataWrite	equ	__end_of_LCD_DataWrite-_LCD_DataWrite
	
_LCD_DataWrite:	
	opt	stack 4
; Regs used in _LCD_DataWrite: [wreg+status,2+status,0+pclath+cstack]
;LCD_DataWrite@dat stored from wreg
	line	219
	movwf	(LCD_DataWrite@dat)
	
l5167:	
;lcd_8_bit.c: 219: PORTB=dat;
	movf	(LCD_DataWrite@dat),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	220
	
l5169:	
;lcd_8_bit.c: 220: RD0=1;
	bsf	(64/8),(64)&7
	line	221
	
l5171:	
;lcd_8_bit.c: 221: RD1=0;
	bcf	(65/8),(65)&7
	line	222
	
l5173:	
;lcd_8_bit.c: 222: RD2=1;
	bsf	(66/8),(66)&7
	line	223
	
l5175:	
;lcd_8_bit.c: 223: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	224
	
l5177:	
;lcd_8_bit.c: 224: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	226
	
l5179:	
;lcd_8_bit.c: 226: delay_ms(1);
	movlw	low(01h)
	movwf	(?_delay_ms)
	movlw	high(01h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	228
	
l1404:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DataWrite
	__end_of_LCD_DataWrite:
;; =============== function _LCD_DataWrite ends ============

	signat	_LCD_DataWrite,4216
	global	_LCD_CmdWrite
psect	text305,local,class=CODE,delta=2
global __ptext305
__ptext305:

;; *************** function _LCD_CmdWrite *****************
;; Defined at:
;;		line 185 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\lcd_8_bit.c"
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
;;		_LCD_GoToXY
;;		_LCD_Clear
;;		_LCD_GoToLineOne
;;		_LCD_ScrollMessage
;; This function uses a non-reentrant model
;;
psect	text305
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\lcd_8_bit.c"
	line	185
	global	__size_of_LCD_CmdWrite
	__size_of_LCD_CmdWrite	equ	__end_of_LCD_CmdWrite-_LCD_CmdWrite
	
_LCD_CmdWrite:	
	opt	stack 4
; Regs used in _LCD_CmdWrite: [wreg+status,2+status,0+pclath+cstack]
;LCD_CmdWrite@cmd stored from wreg
	line	187
	movwf	(LCD_CmdWrite@cmd)
	
l5153:	
;lcd_8_bit.c: 187: PORTB=cmd;
	movf	(LCD_CmdWrite@cmd),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	188
	
l5155:	
;lcd_8_bit.c: 188: RD0=0;
	bcf	(64/8),(64)&7
	line	189
	
l5157:	
;lcd_8_bit.c: 189: RD1=0;
	bcf	(65/8),(65)&7
	line	190
	
l5159:	
;lcd_8_bit.c: 190: RD2=1;
	bsf	(66/8),(66)&7
	line	191
	
l5161:	
;lcd_8_bit.c: 191: delay_us(10);
	movlw	low(0Ah)
	movwf	(?_delay_us)
	movlw	high(0Ah)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	192
	
l5163:	
;lcd_8_bit.c: 192: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	194
	
l5165:	
;lcd_8_bit.c: 194: delay_ms(1);
	movlw	low(01h)
	movwf	(?_delay_ms)
	movlw	high(01h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	195
	
l1401:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_CmdWrite
	__end_of_LCD_CmdWrite:
;; =============== function _LCD_CmdWrite ends ============

	signat	_LCD_CmdWrite,4216
	global	_delay_ms
psect	text306,local,class=CODE,delta=2
global __ptext306
__ptext306:

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 47 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\delay.c"
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
;;		_LCD_ScrollMessage
;;		_delay_sec
;; This function uses a non-reentrant model
;;
psect	text306
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\delay.c"
	line	47
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
	opt	stack 4
; Regs used in _delay_ms: [wreg+status,2+status,0+pclath+cstack]
	line	48
	
l5145:	
;delay.c: 48: while(ms_count!=0)
	goto	l5151
	
l2826:	
	line	50
	
l5147:	
;delay.c: 49: {
;delay.c: 50: delay_us(300);
	movlw	low(012Ch)
	movwf	(?_delay_us)
	movlw	high(012Ch)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	51
	
l5149:	
;delay.c: 51: ms_count--;
	movlw	low(01h)
	subwf	(delay_ms@ms_count),f
	movlw	high(01h)
	skipc
	decf	(delay_ms@ms_count+1),f
	subwf	(delay_ms@ms_count+1),f
	goto	l5151
	line	52
	
l2825:	
	line	48
	
l5151:	
	movf	((delay_ms@ms_count+1)),w
	iorwf	((delay_ms@ms_count)),w
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l5147
u2730:
	goto	l2828
	
l2827:	
	line	54
	
l2828:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
;; =============== function _delay_ms ends ============

	signat	_delay_ms,4216
	global	_ADC_StartConversion
psect	text307,local,class=CODE,delta=2
global __ptext307
__ptext307:

;; *************** function _ADC_StartConversion *****************
;; Defined at:
;;		line 41 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\adc.c"
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
psect	text307
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\adc.c"
	line	41
	global	__size_of_ADC_StartConversion
	__size_of_ADC_StartConversion	equ	__end_of_ADC_StartConversion-_ADC_StartConversion
	
_ADC_StartConversion:	
	opt	stack 6
; Regs used in _ADC_StartConversion: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;ADC_StartConversion@channel stored from wreg
	movwf	(ADC_StartConversion@channel)
	line	42
	
l5135:	
;adc.c: 42: ADCON0=((1<<ADON)|(channel<<3));
	movf	(ADC_StartConversion@channel),w
	movwf	(??_ADC_StartConversion+0)+0
	movlw	03h
u2705:
	clrc
	rlf	(??_ADC_StartConversion+0)+0,f
	addlw	-1
	skipz
	goto	u2705
	movlw	(01h)
	movwf	(??_ADC_StartConversion+1)+0
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(248/8),(248)&7
	movlw	1
	addlw	1
	goto	u2714
u2715:
	clrc
	rlf	(??_ADC_StartConversion+1)+0,f
u2714:
	addlw	-1
	skipz
	goto	u2715
	movf	0+(??_ADC_StartConversion+1)+0,w
	iorwf	0+(??_ADC_StartConversion+0)+0,w
	movwf	(31)	;volatile
	line	43
	
l5137:	
;adc.c: 43: delay_us(50);
	movlw	low(032h)
	movwf	(?_delay_us)
	movlw	high(032h)
	movwf	((?_delay_us))+1
	fcall	_delay_us
	line	45
	
l5139:	
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
	goto	u2721
	goto	u2720
u2721:
	goto	l690
u2720:
	goto	l5141
	
l692:	
	line	48
	
l5141:	
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
	
l5143:	
	line	49
	
l693:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_StartConversion
	__end_of_ADC_StartConversion:
;; =============== function _ADC_StartConversion ends ============

	signat	_ADC_StartConversion,4218
	global	___lwmod
psect	text308,local,class=CODE,delta=2
global __ptext308
__ptext308:

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
psect	text308
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l5113:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2641
	goto	u2640
u2641:
	goto	l5131
u2640:
	line	9
	
l5115:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l5121
	
l3535:	
	line	11
	
l5117:	
	movlw	01h
	
u2655:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2655
	line	12
	
l5119:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l5121
	line	13
	
l3534:	
	line	10
	
l5121:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l5117
u2660:
	goto	l5123
	
l3536:	
	goto	l5123
	line	14
	
l3537:	
	line	15
	
l5123:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2675
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2675:
	skipc
	goto	u2671
	goto	u2670
u2671:
	goto	l5127
u2670:
	line	16
	
l5125:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l5127
	
l3538:	
	line	17
	
l5127:	
	movlw	01h
	
u2685:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2685
	line	18
	
l5129:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l5123
u2690:
	goto	l5131
	
l3539:	
	goto	l5131
	line	19
	
l3533:	
	line	20
	
l5131:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l3540
	
l5133:	
	line	21
	
l3540:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text309,local,class=CODE,delta=2
global __ptext309
__ptext309:

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
psect	text309
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l5087:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l5089:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2571
	goto	u2570
u2571:
	goto	l5109
u2570:
	line	11
	
l5091:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l5097
	
l3525:	
	line	13
	
l5093:	
	movlw	01h
	
u2585:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2585
	line	14
	
l5095:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l5097
	line	15
	
l3524:	
	line	12
	
l5097:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l5093
u2590:
	goto	l5099
	
l3526:	
	goto	l5099
	line	16
	
l3527:	
	line	17
	
l5099:	
	movlw	01h
	
u2605:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2605
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2615
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2615:
	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l5105
u2610:
	line	19
	
l5101:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l5103:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l5105
	line	21
	
l3528:	
	line	22
	
l5105:	
	movlw	01h
	
u2625:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2625
	line	23
	
l5107:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l5099
u2630:
	goto	l5109
	
l3529:	
	goto	l5109
	line	24
	
l3523:	
	line	25
	
l5109:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l3530
	
l5111:	
	line	26
	
l3530:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_delay_us
psect	text310,local,class=CODE,delta=2
global __ptext310
__ptext310:

;; *************** function _delay_us *****************
;; Defined at:
;;		line 26 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\delay.c"
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
;;		_LCD_Init
;;		_LCD_CmdWrite
;;		_LCD_DataWrite
;;		_delay_ms
;; This function uses a non-reentrant model
;;
psect	text310
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\delay.c"
	global	__size_of_delay_us
	__size_of_delay_us	equ	__end_of_delay_us-_delay_us
	
_delay_us:	
	opt	stack 4
; Regs used in _delay_us: [wreg+status,2+status,0]
	line	27
	
l5031:	
;delay.c: 27: while(us_count!=0)
	goto	l5035
	
l2820:	
	line	29
	
l5033:	
;delay.c: 28: {
;delay.c: 29: us_count--;
	movlw	low(01h)
	subwf	(delay_us@us_count),f
	movlw	high(01h)
	skipc
	decf	(delay_us@us_count+1),f
	subwf	(delay_us@us_count+1),f
	goto	l5035
	line	30
	
l2819:	
	line	27
	
l5035:	
	movf	((delay_us@us_count+1)),w
	iorwf	((delay_us@us_count)),w
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l5033
u2440:
	goto	l2822
	
l2821:	
	line	31
	
l2822:	
	return
	opt stack 0
GLOBAL	__end_of_delay_us
	__end_of_delay_us:
;; =============== function _delay_us ends ============

	signat	_delay_us,4216
	global	_ADC_Init
psect	text311,local,class=CODE,delta=2
global __ptext311
__ptext311:

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 25 in file "C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\adc.c"
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
psect	text311
	file	"C:\Users\Xplore_labZ\Saved Games\Desktop\Sample_Programs_updated\Pic\Ultra_Pic\Adc\Temp_Sensor_LM35\adc.c"
	line	25
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
	opt	stack 7
; Regs used in _ADC_Init: [wreg+status,2]
	line	26
	
l5027:	
;adc.c: 26: ADCON0=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(31)	;volatile
	line	27
	
l5029:	
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
psect	text312,local,class=CODE,delta=2
global __ptext312
__ptext312:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
