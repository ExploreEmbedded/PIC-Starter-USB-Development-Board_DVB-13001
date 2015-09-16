/*---------------------------------------------------------------------------------*
                                 8051 I2C  library
Filename: I2C.c
Controller: P89V51RD2/89c51(8051 family)
Oscillator: 11.0592 MHz
Author: XploreLabz
website: www.xplorelabz.com

Note:
1.The SDA and SCL lines are connected to PORTC.4 and PORTC.3
2.The code can be modified to connect the
  SDA and SCL to any of the PORTs by changing the #define.

 ----------------------------------------------------------------------------------*/
#include <htc.h>
#include "delay.h"
#include "i2c.h"

#define SCL RC3		//SCL Connected to PORTC.3
#define SDA RC4 	//SDA Connected to PORTC.4

#define SCL_Direction TRISC3
#define SDA_Direction TRISC4




/*---------------------------------------------------------------------------------
                         void I2C_Init()
 ----------------------------------------------------------------------------------
 * I/P Arguments: none.
 * Return value	: none

 * description :This function is used to initialize the SDA and SCL directions.
                Both SCL and SDA are congigured as output initially.

------------------------------------------------------------------------------------*/
void I2C_Init()
{
  SCL_Direction=0;
  SDA_Direction=0;
}




/*---------------------------------------------------------------------------------*
                         void I2C_Clock()
 ----------------------------------------------------------------------------------*
 * I/P Arguments: none.
 * Return value	: none

 * description  :This function is used to generate a clock pulse on SCL line.
-----------------------------------------------------------------------------------*/
void I2C_Clock(void)
{
	delay_us(1);
	SCL = 1;		// Wait for Some time and Pull the SCL line High

	delay_us(1);        // Wait for Some time
	SCL = 0;		// Pull back the SCL line low to Generate a clock pulse
}







/*---------------------------------------------------------------------------------*
                         void I2C_Start()
 ----------------------------------------------------------------------------------*
 * I/P Arguments: none.
 * Return value	: none

 * description  :This function is used to generate I2C Start Condition.
                 Start Condition: SDA goes low when SCL is High.

                               ____________
                SCL:          |            |
                      ________|            |______
                           _________
                SDA:      |         |
                      ____|         |____________

-----------------------------------------------------------------------------------*/
void I2C_Start()
{

	SCL = 0;		// Pull SCL low
    
	SDA = 1;        // Pull SDA High
	delay_us(1);

	SCL = 1;		//Pull SCL high
	delay_us(1);

	SDA = 0;        //Now Pull SDA LOW, to generate the Start Condition
	delay_us(1);

	SCL = 0;        //Finally Clear the SCL to complete the cycle

}





/*-----------------------------------------------------------------------------------
                         void I2C_Stop()
 ------------------------------------------------------------------------------------
 * I/P Arguments: none.
 * Return value	: none

 * description  :This function is used to generate I2C Stop Condition.
                 Stop Condition: SDA goes High when SCL is High.

                               ____________
                SCL:          |            |
                      ________|            |______
                                 _________________
                SDA:            |
                      __________|

------------------------------------------------------------------------------------*/

void I2C_Stop(void)
{

	SCL = 0;			// Pull SCL low
	delay_us(1);

	SDA = 0;			// Pull SDA  low
	delay_us(1);

	SCL = 1;			// Pull SCL High
	delay_us(1);

	SDA = 1;			// Now Pull SDA High, to generate the Stop Condition
}








/*---------------------------------------------------------------------------------*
                         void I2C_Write(unsigned char dat)
 ----------------------------------------------------------------------------------*
 * I/P Arguments: unsigned char-->8bit data to be sent.
 * Return value	: none

 * description  :This function is used to send a byte on SDA line using I2C protocol
                 8bit data is sent bit-by-bit on each clock cycle.
                 MSB(bit) is sent first and LSB(bit) is sent at last.
                 Data is sent when SCL is low.

         ___     ___     ___     ___     ___     ___     ___     ___     ___	 _
 SCL:   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |	|
      __|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|

 SDA:        D8		  D7     D6	   	  D5	 D4		  D3	  D2	  D1	  D0


-----------------------------------------------------------------------------------*/
void I2C_Write(unsigned char dat)
{
	unsigned char i;

	for(i=0;i<8;i++)		   // loop 8 times to send 1-byte of data
	 {
      	SDA = (dat & 0x80)>>7; // Send Bit by Bit on SDA line
     	I2C_Clock();      	   // Generate Clock at SCL
		dat = dat<<1;
	  }
    	SDA = 1;			    // Set SDA at last

}






/*-----------------------------------------------------------------------------------*
                         unsigned char I2C_Read()
 ------------------------------------------------------------------------------------*
 * I/P Arguments: none.
 * Return value	: Unsigned char(received byte)

 * description :This fun is used to receive a byte on SDA line using I2C protocol.
               8bit data is received bit-by-bit each clock and finally packed into Byte.
               MSB(bit) is received first and LSB(bit) is received at last.


         ___     ___     ___     ___     ___     ___     ___     ___     ___
SCL:    |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |
      __|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|

 SDA:    D8		 D7		  D6	  D5	  D4	  D3	  D2	  D1	  D0


-------------------------------------------------------------------------------------*/
unsigned char I2C_Read(void)
{
	unsigned char i, dat=0x00;

	   SDA_Direction=1;			    //Make SDA as I/P
	for(i=0;i<8;i++)		// loop 8times read 1-byte of data
	 {
		delay_us(1);


		SCL = 1;			// Pull SCL High
		delay_us(1);

		dat = dat<<1;		//dat is Shifted each time and
		dat = dat | SDA;	//ORed with the received bit to pack into byte

		SCL = 0;			// Clear SCL to complete the Clock
	   }
   SDA_Direction=0;	
   return dat;		         // Finally return the received Byte*
}







/*---------------------------------------------------------------------------------*
                         void I2C_Ack()
 ----------------------------------------------------------------------------------*
 * I/P Arguments: none.
 * Return value	: none

 * description  :This function is used to generate a the Positive ACK
                 pulse on SDA after receiving a byte.
-----------------------------------------------------------------------------------*/
void I2C_Ack()
{
	SDA = 0;		//Pull SDA low to indicate Positive ACK
	I2C_Clock();	//Generate the Clock
	SDA = 1;		// Pull SDA back to High(IDLE state)
}
/*---------------------------------------------------------------------------------*/




/*---------------------------------------------------------------------------------*
                         void I2C_NoAck()
 ----------------------------------------------------------------------------------*
 * I/P Arguments: none.
 * Return value	: none

 * description  :This function is used to generate a the Negative/NO ACK
                 pulse on SDA after receiving all bytes.
-----------------------------------------------------------------------------------*/
void I2C_NoAck()
{
	SDA = 1;		//Pull SDA high to indicate Negative/NO ACK
   I2C_Clock();	    // Generate the Clock  
	SCL = 1;		// Set SCL 
}
