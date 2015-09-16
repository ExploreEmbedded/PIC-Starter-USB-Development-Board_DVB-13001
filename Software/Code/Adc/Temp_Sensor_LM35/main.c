/*-----------------------------------------------------------------------------
 Program to demonstrate the temperature sensor(LM35) interface.
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
   unsigned int adc_result,adc_temp;

  /* Initilize the lcd before displaying any thing on the lcd */
    LCD_Init();

  /* Initilize the adc before starting the conversion */
    ADC_Init();

  /* Display "ADC value" on first line*/
  LCD_DisplayString("ADC value: ");

  /* Display "Temperature" on second line*/
  LCD_GoToLineTwo();
  LCD_DisplayString("Temp     : ");

   /* Display the adc channel zero value continously */ 
   while(1)
    {
	     /*Get the adc value of channel one or wherever the LM35 temp sensor is connected */
		 adc_result= ADC_StartConversion(1);

 		/*Go to first line 10th position and Display the raw ADC value */
         LCD_GoToXY(0,10); 
         LCD_DisplayNumber(adc_result);
					 
		 // Convert the raw ADC value to equivalent temperature with 5v as ADC reference
		 /* Step size of AdC= (5v/1023)=4.887mv = 5mv.
		    for every degree celcius the Lm35 provides 10mv voltage change.
			1 step of ADC=5mv=0.5'c, hence the Raw ADC value can be divided by 2 to get equivalent temp*/
		 adc_temp = (adc_result/2); 

		/*Go to second line 10th position Display the actual temp */
		 LCD_GoToXY(1,10); 
         LCD_DisplayNumber(adc_temp);
      }


  }