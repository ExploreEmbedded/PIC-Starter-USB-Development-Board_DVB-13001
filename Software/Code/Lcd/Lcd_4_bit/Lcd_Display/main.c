/*-----------------------------------------------------------------------------
         Program to demonstrate displaying of message on LCD
  -----------------------------------------------------------------------------
  note:
  Refer lcd.c(lcd_4_bit.c/lcd_8_bit.c) file for Pin connections
------------------------------------------------------------------------------*/


/* htc.h contains the defnition of all ports and SFRs */
#include <htc.h> 

#include "lcd.h"	//User defined LCD library which conatins the lcd routines
#include "delay.h" //User defined library which conatins the delay routines


/* start the main program */
void main() 
{

  /* Initilize the lcd before displaying any thing on the lcd */
    LCD_Init();

  /* Display "hello, world" on first line*/
  LCD_DisplayString("Xplore Labz");

  /*Go to second line and display "good morning" */
  LCD_GoToLineTwo();
  LCD_DisplayString("Let's build. . .");


  while(1);

  }