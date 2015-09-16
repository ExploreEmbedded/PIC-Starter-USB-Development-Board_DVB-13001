/*-----------------------------------------------------------------------------
  Program to demonstrate serial Reception,transmission of char at 9600 baudrate
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
   	 char ch;

  /* Initilize the UART before Transmitting/Receiving any data */
    UART_Init();

   while(1)
    {
	    /*Receive and Transmit a char indefinitely at 9600 baud rate */
	     ch=UART_RxChar(); // Receive a char and store it in "ch"
        
         UART_TxChar(ch);  //Transmit the received char
	  }	   

  }