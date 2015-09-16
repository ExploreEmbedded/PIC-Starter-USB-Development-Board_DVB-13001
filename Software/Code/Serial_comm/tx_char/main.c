/*-----------------------------------------------------------------------------
         Program to demonstrate serial transmission of char at 9600 baudrate
  -----------------------------------------------------------------------------
  note:
  Refer uart.c for baud ratae configuraton.
------------------------------------------------------------------------------*/


/* htc.h contains the defnition of all ports and SFRs */
#include <htc.h> 

#include "uart.h"	//User defined UART library which conatins the uart routines


/* start the main program */
void main() 
{
   

  /* Initilize the UART before Transmitting/Receiving any data */
    UART_Init();

   while(1)
    {
        /*Transmit a char indefinitely at 9600 baud rate */
         UART_TxChar('a');
	  }



  }