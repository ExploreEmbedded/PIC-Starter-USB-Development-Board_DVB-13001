/*-----------------------------------------------------------------------------
 Program to demonstrate single channel ADC, 10bit(0-1023) adc value is displayed on lcd
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

  /* Display "ADC Channel zero" on first line*/
  LCD_DisplayString("ADC Channel zero");

   /* Display the adc channel zero value continously */ 
   while(1)
    {
	     /*Get the adc value of channel zero */
		 adc_result= ADC_StartConversion(0);

        /*Go to second line and display the adc value */
         LCD_GoToLineTwo();
         LCD_DisplayNumber(adc_result);
      }


  }