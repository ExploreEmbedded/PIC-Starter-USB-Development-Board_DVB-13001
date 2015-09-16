/*-----------------------------------------------------------------------------
                 Program to demonstrate binary upcounter
  -----------------------------------------------------------------------------
 
note: Leds can be connected to any of the ports as all the ports are blinked

------------------------------------------------------------------------------*/


/* htc.h contains the defnition of all ports and SFRs */
#include <htc.h> 


#include "delay.h" //User defined library which conatins the delay routines




/* start the main program */
void main() 
{
   unsigned char cnt=0;
  /*Configure all the ports as output */
   TRISA=0x00;
   TRISB=0x00;
   TRISC=0x00;
   TRISD=0x00;
   TRISE=0x00;
  while(1)
    {

	 /* Display the counter on all the ports */ 
	   PORTA=cnt;
	   PORTB=cnt;
	   PORTC=cnt;
	   PORTD=cnt;
       PORTE=cnt;

	 /* Increment the counter after 1-sec */ 
	   delay_sec(1);
        cnt++;
      }
  }