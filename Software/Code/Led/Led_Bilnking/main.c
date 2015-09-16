/*-----------------------------------------------------------------------------
                 Program to demonstrate Led_Blinging
  -----------------------------------------------------------------------------
 
note: Leds can be connected to any of the ports as all the ports are blinked

------------------------------------------------------------------------------*/


/* htc.h contains the defnition of all ports and SFRs */
#include <htc.h> 


#include "delay.h" //User defined library which conatins the delay routines


#define LedOn 0xFF
#define LedOff 0x00

/* start the main program */
void main() 
{
  /*Configure all the ports as output */
   TRISA=0x00;
   TRISB=0x00;
   TRISC=0x00;
   TRISD=0x00;
   TRISE=0x00;

  while(1)
    {

	 /* Turn On all the leds and wait for one second */ 
	   PORTA=LedOn;
	   PORTB=LedOn;
	   PORTC=LedOn;
	   PORTD=LedOn;
       PORTE=LedOn;

	   delay_sec(1);


	 /* Turn off all the leds and wait for one second */
	   PORTA=LedOff;
	   PORTB=LedOff;
	   PORTC=LedOff;
	   PORTD=LedOff;
       PORTE=LedOff;				   

	   delay_sec(1);
	  }
  }