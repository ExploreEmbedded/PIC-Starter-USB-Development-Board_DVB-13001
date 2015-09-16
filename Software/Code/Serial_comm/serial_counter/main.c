/*-----------------------------------------------------------------------------
  Program to demonstrate a 5 digit counter at 9600 baudrate
  -----------------------------------------------------------------------------
  note:
  Refer uart.c for baud rate configuraton.
------------------------------------------------------------------------------*/


/* htc.h contains the defnition of all ports and SFRs */
#include <htc.h> 

#include "uart.h"	//User defined UART library which conatins the uart routines

#include "delay.h" //User defined library which conatins the delay routines


/* start the main program */
void main() 
{
   	 unsigned int cnt=0;

  /* Initilize the UART before Transmitting/Receiving any data */
    UART_Init();
	UART_TxString("5digit decimal counter: ");

  /* Transmit the counter till 9999 */ 
   while(cnt < 9999)
    {
	   
	    /* Transmit the counter value and go to next line */ 
		 UART_TxNumber(cnt);  
		 UART_TxString("\n\r");
		 
		/* Increment the counter value after 1-sec */  
		 delay_sec(1);
		 cnt++;
	  }	   

  }