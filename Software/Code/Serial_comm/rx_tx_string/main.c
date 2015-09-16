/*-----------------------------------------------------------------------------
  Program to demonstrate reception & transmission of a String at 9600 baudrate
  -----------------------------------------------------------------------------
  note:
  Refer uart.c for baud rate configuraton.
------------------------------------------------------------------------------*/


/* htc.h contains the defnition of all ports and SFRs */
#include <htc.h> 

#include "uart.h"	//User defined UART library which conatins the uart routines


/* start the main program */
void main() 
{
   	 char msg[50];

  /* Initilize the UART before Transmitting/Receiving any data */
    UART_Init();
	
   while(1)
    {
	    /*Receive and transmit a string indefinitely at 9600 baud rate */
	     UART_TxString("\n\n\rEnter a new String: ");
		 UART_RxString(msg);   //Receive a string and store it in msg

		 UART_TxString("\n\rEntered String: ");
		 UART_TxString(msg);   //Transmit the received string
	  }	   

  }