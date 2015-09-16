/*----------------------------------------------------------------------------------
                        PIC LCD library for 4-bit mode
Filename: lcd_4_bit.c
Controller: Pic16F877A
Oscillator: 20 MHz
Author: XploreLabz
website: www.xplorelabz.com

 ----------------------------------------------------------------------------------
Note:
 1.Pin connection for LCD display in 4-bit mode.
 2.By default the LCD is connected to PORTB.
 3.The code can be modified to connect the LCD to any of the PORTs by changing the
   "#define databus PORTB".
            _______________________________________________
           |                                               |
           |              16*2 lcd  Display                |
           |                4-bit Mode                     |
           |                                               |
           |                                               |
           |                                               |
           |         D7 D6 D5 D4 D3 D2 D1 D0     EN RW RS  |
            -----------------------------------------------
                     |  |  |  |                  |  |  |
                     |  |  |  |					 |	|  |
                     |	|  |  |             	 |  |  |___PORTB.0
					 |  |  |  | 	             |  |______PORTB.1
                     |  |  |  |                  |_________PORTB.2
					 |	|  |  |
					 |	|  |  |____________________________PORTB.4
					 |  |  |_______________________________PORTB.5
					 |  |__________________________________PORTB.6
					 |_____________________________________PORTB.7


----------------------------------------------------------------------------------*/


#include<htc.h>
#include "delay.h"
#include "lcd.h"

#define databus	PORTB       //	LCD databus connected to PORTB
#define DataBusDirection TRISB    //Data and Control bus direction config registers 

#define rs RB1		 // Register select pin connected to PORTB.0
#define rw RB2		 // Read Write pin connected to PORTB.1
#define en RB3		 // Enable pin connected to PORTB.2



/* 16x2 LCD Specification */
#define LCDMaxLines 2
#define LCDMaxChars 16
#define LineOne 0x80
#define LineTwo 0xc0

#define BlankSpace ' '




/*----------------------------------------------------------------------------------
                         void LCD_Init()
 ----------------------------------------------------------------------------------
 * Function name:  LCD_Init()
 * I/P Arguments: none.
 * Return value	: none

 * description  :This function is used to initialize the lcd in 4-bit mode

----------------------------------------------------------------------------------*/
void LCD_Init()
{
    delay_us(5000);
   DataBusDirection=0x00; //Configure data and control bus as output
   LCD_CmdWrite(0x02);	//Initilize the LCD in 4bit Mode
   LCD_CmdWrite(0x28);
   LCD_CmdWrite(0x0E);	// Display ON cursor ON
   LCD_CmdWrite(0x01);	// Clear the LCD
   LCD_CmdWrite(0x80);	// Move the Cursor to First line First Position

}




/*---------------------------------------------------------------------------------
                         void LCD_Clear()
 ----------------------------------------------------------------------------------
 * I/P Arguments: none.
 * Return value	: none

 * description  :This function clears the LCD and moves the cursor to first Position

-----------------------------------------------------------------------------------*/
void LCD_Clear()
{
   LCD_CmdWrite(0x01);	// Clear the LCD and go to First line First Position
}





/*---------------------------------------------------------------------------------
                         void LCD_GoToLineOne()
 ----------------------------------------------------------------------------------
 * I/P Arguments: none.
 * Return value	: none

 * description  :This function moves the Cursor to First line First Position

-----------------------------------------------------------------------------------*/
void LCD_GoToLineOne()
{
   LCD_CmdWrite(LineOne);	// Move the Cursor to First line First Position
}




/*---------------------------------------------------------------------------------
                         void LCD_GoToLineTwo()
 ----------------------------------------------------------------------------------
 * I/P Arguments: none.
 * Return value	: none

 * description  :This function moves the Cursor to Second line First Position

-----------------------------------------------------------------------------------*/
void LCD_GoToLineTwo()
{
   LCD_CmdWrite(LineTwo);	// Move the Cursor to Second line First Position
}




/*---------------------------------------------------------------------------------
                         void LCD_GoToXY(char row,char col)
 ----------------------------------------------------------------------------------
 * I/P Arguments: char row,char col
                 row -> line number(line1=0, line2=1),
                        For 2line LCD the I/P argument should be either 0 or 1.
                 col -> char number.
                        For 16-char LCD the I/P argument should be betwen 0-15.
 * Return value	: none

 * description  :This function moves the Cursor to specified position

-----------------------------------------------------------------------------------*/
void LCD_GoToXY(char row, char col)
{
   char pos;

    if(row<LCDMaxLines)
      {
		 pos= LineOne | (row << 6); // take the line number
		                            //row0->pos=0x80  row1->pos=0xc0

	    if(col<LCDMaxChars)
		   pos= pos+col;            //take the char number
		                            //now pos points to the given XY pos

		 LCD_CmdWrite(pos);	       // Move the Cursor specified Position
       }
}






/*----------------------------------------------------------------------------------
                       void LCD_CmdWrite( char cmd)
------------------------------------------------------------------------------------
 * I/P Arguments: 8-bit command supported by LCD.
 * Return value	: none

 * description  :This function sends a command to LCD in the following steps.
     step1: Send the Higher Nibble of the I/P command to LCD.
     step2: Select the Control Register by making RS low.
     step3: Select Write operation making RW low.
	 step4: Send a High-to-Low pulse on Enable PIN with some delay_us.

	 step5: Send the Lower Nibble of the I/P command to LCD.
	 step6: Select the Control Register by making RS low.
	 step7: Select Write operation making RW low.
	 step8: Send a High-to-Low pulse on Enable PIN with some delay_us.
----------------------------------------------------------------------------------*/
void LCD_CmdWrite( char cmd)
{

   databus=(cmd & 0xf0);        // Send the Higher Nibble of the command to LCD
     rs=0;						// Select the Command Register by pulling RS LOW
     rw=0;						// Select the Write Operation  by pulling RW LOW
     en=1;						// Send a High-to-Low Pusle at Enable Pin
	delay_us(10);
     en=0;

   delay_us(10);					// wait for some time

   databus=((cmd<<4) & 0xf0);   // Send the Lower Nibble of the command to LCD
     rs=0;						// Select the Command Register by pulling RS LOW
     rw=0;						// Select the Write Operation  by pulling RW LOW
     en=1;						// Send a High-to-Low Pusle at Enable Pin
	delay_us(10);
     en=0;

   delay_ms(1);
}








/*---------------------------------------------------------------------------------
                       void LCD_DataWrite( char dat)
 ----------------------------------------------------------------------------------
 * Function name: LCD_DataWrite()
 * I/P Arguments: ASCII value of the char to be displayed.
 * Return value	: none

 * description  :
    This function sends a character to be displayed on LCD in the following steps.
       step1: Send the higher nibble of the character to LCD.
       step2: Select the Data Register by making RS high.
       step3: Select Write operation making RW low.
	   step4: Send a High-to-Low pulse on Enable PIN with some delay_us.

       step5: wait for some time

       step6: Send the lower nibble of the character to LCD.
	   step7: Select the Data Register by making RS high.
	   step8: Select Write operation making RW low.
	   step9: Send a High-to-Low pulse on Enable PIN with some delay_us.
----------------------------------------------------------------------------------*/
void LCD_DataWrite( char dat)
{


   databus=(dat & 0xf0);	    // Send the Higher Nibble of the Data to LCD
     rs=1;						// Select the Data Register by pulling RS HIGH
     rw=0;						// Select the Write Operation  by pulling RW LOW
     en=1;						// Send a High-to-Low Pusle at Enable Pin
	delay_us(10);
     en=0;

   delay_us(10);			        // wait for some time.

   databus=((dat <<4) & 0xf0);	// Send the Lower Nibble of the Data to LCD
     rs=1;						// Select the Data Register by pulling RS HIGH
     rw=0;						// Select the Write Operation  by pulling RW LOW
     en=1;						// Send a High-to-Low Pusle at Enable Pin
	delay_us(10);
     en=0;

   delay_ms(1);

}






/*---------------------------------------------------------------------------------
                       void LCD_DisplayString(char *string_ptr)
 ----------------------------------------------------------------------------------
 * Function name:  lcd_display_string()
 * I/P Arguments: String(Address of the string) to be displayed.
 * Return value	: none

 * description  :
               This function is used to display the ASCII string on the lcd.
                 1.The string_ptr points to the first char of the string
                    and traverses till the end(NULL CHAR).
                 2.Each time a char is sent to lcd_dat funtion to display.
-----------------------------------------------------------------------------------*/
void LCD_DisplayString(char *string_ptr)
{
   while(*string_ptr)
    LCD_DataWrite(*string_ptr++);
	}





/*---------------------------------------------------------------------------------
                      void  LCD_DisplayNumber(unsigned int num)
 ----------------------------------------------------------------------------------
 * Function name:  LCD_DisplayNumber()
 * I/P Arguments: unsigned int.
 * Return value	: none

 * description  :This function is used to display a 5-digit integer(0-65535).
                 ex: if the number is 12345 then 12345 is displayed.
                     if the number is 123 then 00123 is displayed.


 __________Take 1 by dividing by 10000 and add 0X30 to obtain the ASCII value,
|           then take the 4-digit remainder(2345).
|
| _________Take 2 by dividing by 1000  and add 0X30 to obtain the ASCII value,
||           then take the 3-digit remainder(345)
||
|| ________Take 3 by dividing by 100   and add 0X30 to obtain the ASCII value,
|||           then take the 2-digit remainder(45).
|||
||| _______Take 4 by dividing by 10    and add 0X30 to obtain the ASCII value,
|||| ______Take 5 the remainder of 45  and add 0X30 to obtain the ASCII value,.
|||||
12345
-----------------------------------------------------------------------------------*/
void LCD_DisplayNumber(unsigned int num)
{
   LCD_DataWrite((num/10000)+0x30);
   num=num%10000;

   LCD_DataWrite((num/1000)+0x30);
   num=num%1000;

   LCD_DataWrite((num/100)+0x30);
   num=num%100;

   LCD_DataWrite((num/10)+0x30);

   LCD_DataWrite((num%10)+0x30);

 }




/*---------------------------------------------------------------------------------
                  void LCD_ScrollMessage(char *msg_ptr)
 ----------------------------------------------------------------------------------
 * I/P Arguments: char *msg_ptr
                 msg_ptr -> pointer to the string to be scrolled

 * Return value	: none

 * description  :This function scrolls the given message on the first line.
        1.16 chars are displayed at atime.
        2.Pointer is incremented to skip a char each time to give the illusion of
           moving chars
        3.If the chars are less than 16, then the BlankSpaces are displayed.

-----------------------------------------------------------------------------------*/

void LCD_ScrollMessage(char *msg_ptr)
{
  unsigned char i,j;

  for(i=0;msg_ptr[i];i++)        //Loop to display the string complete
    {                            //each time 16 chars are displayed and
                                 //pointer is incremented to point to next char

      LCD_CmdWrite(LineOne);                   //Move the Cursor to first line

    for(j=0;j<LCDMaxChars && msg_ptr[i+j];j++) //loop to Display first 16 Chars
	  LCD_DataWrite(msg_ptr[i+j]);                 //or till Null char

	for(j=j; j<LCDMaxChars; j++)               //If the chars are below 16
      LCD_DataWrite(BlankSpace);              //then display blank spaces

     delay_ms(300);
    }
}





/*---------------------------------------------------------------------------------
                  LCD_DisplayRtcTime(char hour,char min,char sec)
 ----------------------------------------------------------------------------------
 * I/P Arguments: char hour,char min,char sec
             hour,min,sec should be packed BCD format, as read from DS1307

 * Return value	: none

 * description  :This function display hour,min,sec read from DS1307.

   ___________ Display the higher nibble of hour after adding 0x30(ASCII conversion)
  |            Display the lower nibble of hour after adding 0x30(ASCII conversion)
  |
  |	  ________ Display the higher nibble of min after adding 0x30(ASCII conversion)
  |	 |     	   Display the lower nibble of min after adding 0x30(ASCII conversion)
  |	 |
  |	 |	 _____ Display the higher nibble of sec after adding 0x30(ASCII conversion)
  |	 |	|      Display the lower nibble of sec after adding 0x30(ASCII conversion)
  |	 |	|
  10;40;07

-----------------------------------------------------------------------------------*/
void LCD_DisplayRtcTime(char hour,char min,char sec)
{
    LCD_DataWrite(((hour>>4) & 0x0f) + 0x30);
    LCD_DataWrite((hour & 0x0f) + 0x30);
    LCD_DataWrite(':');

    LCD_DataWrite(((min>>4) & 0x0f) + 0x30);
	LCD_DataWrite((min & 0x0f) + 0x30);
    LCD_DataWrite(':');

    LCD_DataWrite(((sec>>4) & 0x0f) + 0x30);
	LCD_DataWrite((sec & 0x0f) + 0x30);

 }






/*---------------------------------------------------------------------------------
                  LCD_DisplayRtcDate(char day,char month,char year)
 ----------------------------------------------------------------------------------
 * I/P Arguments: char day,char month,char year
             day,month,year should be packed BCD format, as read from DS1307

 * Return value	: none

 * description  :This function display day,month,year read from DS1307.

   ___________ Display the higher nibble of day after adding 0x30(ASCII conversion)
  |            Display the lower nibble of day after adding 0x30(ASCII conversion)
  |
  |   ________ Display the higher nibble of month after adding 0x30(ASCII conversion)
  |  |         Display the lower nibble of month after adding 0x30(ASCII conversion)
  |  |
  |  |	 _____ Display the higher nibble of year after adding 0x30(ASCII conversion)
  |  |	|      Display the lower nibble of year after adding 0x30(ASCII conversion)
  |  |	|
  01/01/12 (1st-Jan 2012)

-----------------------------------------------------------------------------------*/
void LCD_DisplayRtcDate(char day,char month,char year)
 {
     LCD_DataWrite(((day>>4) & 0x0f) + 0x30);
     LCD_DataWrite((day & 0x0f) + 0x30);
     LCD_DataWrite('/');

     LCD_DataWrite(((month>>4) & 0x0f) + 0x30);
 	LCD_DataWrite((month & 0x0f) + 0x30);
     LCD_DataWrite('/');

     LCD_DataWrite(((year>>4) & 0x0f) + 0x30);
 	LCD_DataWrite((year & 0x0f) + 0x30);

 }