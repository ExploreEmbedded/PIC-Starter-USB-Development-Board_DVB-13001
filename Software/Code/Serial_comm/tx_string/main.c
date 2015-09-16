/*-----------------------------------------------------------------------------
  Program to demonstrate transmission of String at 9600 baudrate
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
   	 char msg[]={"hello world, "};

  /* Initilize the UART before Transmitting/Receiving any data */
    UART_Init();

   while(1)
    {
	    /*Transmit a string indefinitely at 9600 baud rate */
	     UART_TxString(msg); 
         UART_TxString("welcome to PIC programming\n\r"); 
	  }	   

  }