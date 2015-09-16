/*-----------------------------------------------------------------------------
  Program to demonstrate serial Reception,transmission of char at 9600 baudrate
      and same to display on lcd.
  -----------------------------------------------------------------------------
  note:
  Refer uart.c for baud rate configuraton.
------------------------------------------------------------------------------*/


/* htc.h contains the defnition of all ports and SFRs */
#include <htc.h> 

#include "uart.h"	//User defined UART library which conatins the uart routines

#include "lcd.h"	//User defined LCD library which conatins the lcd routines


/* start the main program */
void main() 
{
   	 char ch;

  /* Initilize the UART before Transmitting/Receiving any data */
    UART_Init();

  /* Initilize the lcd before displaying any thing on the lcd */
    LCD_Init();


   while(1)
    {
	    /*Receive and Transmit a char indefinitely at 9600 baud rate */
	     ch=UART_RxChar(); // Receive a char and store it in "ch"
        
         UART_TxChar(ch);  //Transmit the received char

		 LCD_DataWrite(ch); //Display the received char on LCD
	  }	   

  }