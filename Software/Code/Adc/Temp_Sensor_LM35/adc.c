/*--------------------------------------------------------------------------------------------------------
                                    AVR ADC library.

Filename: adc.c
Controller: Pic16f877A
Oscillator: 20 MHz
Author: XploreLabz
website: www.xplorelabz.com
Reference:Atmega32 dataSheet
--------------------------------------------------------------------------------------------------------*/
#include<htc.h>
#include "delay.h"
#include "adc.h"


/*----------------------------------------------------------------------------------
                         void ADC_Init()
 -----------------------------------------------------------------------------------
 * I/P Arguments: none.
 * Return value	: none

 * description :This function initializes the ADC control registers
-----------------------------------------------------------------------------------*/
void ADC_Init()
 {
   ADCON0=0x00;    // sampling freq=osc_freq/2,ADC off initially
   ADCON1=0x80;    // All pins are configured as adc and the result is right justified  
  }


/*----------------------------------------------------------------------------------
                 unsignaed int ADC_StartConversion(unsigned char channel)
 -----------------------------------------------------------------------------------
 * I/P Arguments: char(channel number).
 * Return value	: int(10 bit ADC result)

 * description  :This function does the ADC conversioin for the Selected Channel
                 and returns the converted 10bit result
------------------------------------------------------------------------------------*/				 
unsigned int ADC_StartConversion(unsigned char channel)
 {
    ADCON0=((1<<ADON)|(channel<<3));     //select particular channel and turn ON adc
    delay_us(50);
   
    GO=1;                   // Start ADC conversion
    while(GO==1);            // Wait for the conversion to complete

    return((ADRESH<<8) + ADRESL); // return right justified 10-bit result
   }
       
