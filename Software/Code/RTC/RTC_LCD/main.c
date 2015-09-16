/*-----------------------------------------------------------------------------
         Program to demonstrate displaying of RTC on LCD
  -----------------------------------------------------------------------------
  note:
  Refer lcd.c(lcd_4_bit.c/lcd_8_bit.c) file for Pin connections
  Refer i2c.c for SDA and SCL connection.
------------------------------------------------------------------------------*/


/* htc.h contains the defnition of all ports and SFRs */
#include <htc.h> 

#include "lcd.h"	//User defined LCD library which conatins the lcd routines
#include "ds1307.h" //User defined library which conatins the RTC(ds1307) routines


/* start the main program */
void main() 
{
   unsigned char sec,min,hour,day,month,year;

  /* Initilize the lcd before displaying any thing on the lcd */
    LCD_Init();

  /* Initilize the RTC(ds1307) before reading or writing time/date */
    DS1307_Init();


  /*Set the time and Date only once */
   DS1307_SetTime(0x10,0x40,0x20);  //  10:40:20 am
   DS1307_SetDate(0x01,0x12,0x12);  //  14th Nov 2012

  /* Display "Time" on first line*/
  LCD_DisplayString("Time: ");

   /* Display "Date" on Second line*/
  LCD_GoToLineTwo();
  LCD_DisplayString("Date: ");

   /* Display the Time and Date continously */ 
   while(1)
    {
	   /* Read the Time from RTC(ds1307) */ 
        DS1307_GetTime(&hour,&min,&sec);        

		/* Display the time on Firstline-7th position*/
         LCD_GoToXY(0,6); 		 
         LCD_DisplayRtcTime(hour,min,sec);

	
	    /* Read the Date from RTC(ds1307) */ 
        DS1307_GetDate(&day,&month,&year);        

		/* Display the Date on Secondline-7th position*/
         LCD_GoToXY(1,6); 		 
         LCD_DisplayRtcDate(day,month,year);
	  }		

  }