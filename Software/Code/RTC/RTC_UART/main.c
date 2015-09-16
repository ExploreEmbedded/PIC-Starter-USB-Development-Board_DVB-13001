/*-----------------------------------------------------------------------------
         Program to demonstrate displaying of RTC on Uart at 9600 Baud Rate
  -----------------------------------------------------------------------------
  note:
  Refer Uart.c for baudrate configuration.  
  Refer i2c.c for SDA and SCL connection.
------------------------------------------------------------------------------*/


/* htc.h contains the defnition of all ports and SFRs */
#include <htc.h> 

#include "uart.h"	//User defined UART library which conatins the UART routines
#include "ds1307.h" //User defined library which conatins the RTC(ds1307) routines

/* Functions to display Time&Date on  UART */
void DisplayRtcTime(char hour,char min,char sec);
void DisplayRtcDate(char day,char month,char year);

/* start the main program */
void main() 
{
   unsigned char sec,min,hour,day,month,year;

  /* Initilize the Uart before Transmiting/Reaceiving any data */
    UART_Init();

  /* Initilize the RTC(ds1307) before reading or writing time/date */
    DS1307_Init();


  /*Set the time and Date only once */
   DS1307_SetTime(0x10,0x40,0x20);  //  10:40:20 am
   DS1307_SetDate(0x14,0x11,0x12);  //  14th Nov 2012

 


   /* Display the Time and Date continously on UART*/ 
   while(1)
    {
		  /* Read the Date from RTC(ds1307) */ 
        DS1307_GetDate(&day,&month,&year);        

	    	/* Display the Date */ 		 
         DisplayRtcDate(day,month,year);


	  
	   /* Read the Time from RTC(ds1307) */ 
        DS1307_GetTime(&hour,&min,&sec);        

		   /* Display the time */		 
         DisplayRtcTime(hour,min,sec);

	
	 
	  }		

  }




 void DisplayRtcTime(char hour,char min,char sec)
{
  	UART_TxString(" Time: ");
    UART_TxChar(((hour>>4) & 0x0f) + 0x30);
    UART_TxChar((hour & 0x0f) + 0x30);
    UART_TxChar(':');

    UART_TxChar(((min>>4) & 0x0f) + 0x30);
	UART_TxChar((min & 0x0f) + 0x30);
    UART_TxChar(':');

    UART_TxChar(((sec>>4) & 0x0f) + 0x30);
	UART_TxChar((sec & 0x0f) + 0x30);	  

 }







void DisplayRtcDate(char day,char month,char year)
 {
	 UART_TxString("\n\rdate: ");
     UART_TxChar(((day>>4) & 0x0f) + 0x30);
     UART_TxChar((day & 0x0f) + 0x30);
     UART_TxChar('/');

     UART_TxChar(((month>>4) & 0x0f) + 0x30);
 	 UART_TxChar((month & 0x0f) + 0x30);
     UART_TxChar('/');

     UART_TxChar(((year>>4) & 0x0f) + 0x30);
 	UART_TxChar((year & 0x0f) + 0x30);

 }