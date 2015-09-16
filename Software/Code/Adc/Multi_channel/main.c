/*-----------------------------------------------------------------------------
 Program to demonstrate multi(4) channel ADC, 10bit(0-1023) adc value is displayed on lcd
  -----------------------------------------------------------------------------
  note:
  1.Refer lcd.c(lcd_4_bit.c/lcd_8_bit.c) file for Pin connections
  2.Refer Pic16F877A datasheet for adc control register description
------------------------------------------------------------------------------*/


/* htc.h contains the defnition of all ports and SFRs */
#include <htc.h> 

#include "lcd.h"	//User defined LCD library which conatins the lcd routines
#include "adc.h"   //User defined library which conatins the adc routines


/* start the main program */
void main() 
{
   unsigned int adc_result;

  /* Initilize the lcd before displaying any thing on the lcd */
    LCD_Init();

  /* Initilize the adc before starting the conversion */
    ADC_Init();



   /* Display the adc channel zero-Three values continously */ 
   while(1)
    {
	/*Get the adc value of channel zero and diplay on line_1-position_0(0,0) */
		 adc_result= ADC_StartConversion(0);
		 LCD_GoToXY(0,0);
         LCD_DisplayNumber(adc_result);
        
	/*Get the adc value of channel one and diplay on line_1-position_8(0,7) */
		 adc_result= ADC_StartConversion(1);
		 LCD_GoToXY(0,7);
         LCD_DisplayNumber(adc_result);
     
	/*Get the adc value of channel two and diplay on line_2-position_0(1,0) */
		 adc_result= ADC_StartConversion(2);
		 LCD_GoToXY(1,0);
         LCD_DisplayNumber(adc_result);
        
	/*Get the adc value of channel three and diplay on line_2-position_8(1,7) */
		 adc_result= ADC_StartConversion(3);
		 LCD_GoToXY(1,7);
         LCD_DisplayNumber(adc_result);
         	     
      }


  }