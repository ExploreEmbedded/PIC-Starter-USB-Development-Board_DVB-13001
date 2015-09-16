/**********************************************************************************
   PIC UART library for Serial Communication at 9600 baud rate
   with the crystal frequency 20MHz

Filename: uart.c
Controller: Pic16F877A
Oscillator: 20MHz
Author: XploreLabz
website: www.xplorelabz.com

 **********************************************************************************/


 #include<htc.h>



/*-------------------------------------------------------------------------------
                         void UART_Init()
----------------------------------------------------------------------------------
 * I/P Arguments: none.
 * Return value	: none

 * description  :This function is used to initialize the UART at 9600 baud rate
                  by below configuration.
    1.TXSTA is configured for Asynchronous mode, 8-bit data & transmitter enabled
    2.RCSTA is configured for continous receive enable
    3.SPBRG is configured 9600 Baud rate at 20MHz
__________________________________________________________________________________*/
void UART_Init()
{
    TRISC=0x80;      // Configure Rx pin as input and Tx as output  
  	TXSTA=0x20;      // Asynchronous mode, 8-bit data & enable transmitter
	RCSTA=0x90;      // 8-bit continous receive enable
	SPBRG=31;        // 9600 Baud rate at 20MHz
  }





/*----------------------------------------------------------------------------------
                              char UART_RxChar()
  ----------------------------------------------------------------------------------
 * I/P Arguments: none.
 * Return value	: char

 * description :This function is used to receive a char from UART module.
                It waits till a char is received ie.till RCIF is set,
                RCIF will be set once a CHAR is received.
              Finally it clears the RCIF for next cycle and returns the received char.
___________________________________________________________________________________*/
char UART_RxChar()
{
   while(RCIF==0);    // Wait till the data is received 
     RCIF=0;            // Clear receiver flag
   return(RCREG);        // Return the received data to calling function
}








/*----------------------------------------------------------------------------------
                         void UART_TxChar(char ch)
------------------------------------------------------------------------------------
 * I/P Arguments: char--> data to be transmitted.
 * Return value	: none.

 * description  :This function is used to transmit a char through UART module.
                 It waits till previous char is transmitted ie.till TXIF is set.
                 TXIF will be set once a CHAR is transmitted.
                 It clears the TXIF for next operation.
                 Finally the Char to be transmitted is loaded into  TXREG.                  
 __________________________________________________________________________________*/
 void UART_TxChar(char ch)
{
   while(TXIF==0);  // Wait till the transmitter register becomes empty
		TXIF=0;        // Clear transmitter flag
      TXREG=ch;        // load the chr the to be transmitted into transmit reg
}










/*----------------------------------------------------------------------------------
                         void UART_TxString(char *string_ptr)
 -----------------------------------------------------------------------------------
 * I/P Arguments: String(Address of the string) to be transmitted.
 * Return value	: none

 * description :This function is used to transmit the ASCII string through UART..
            The string_ptr points to the first char of the string.
            And it is incremented each time to traverse till the end(NULL CHAR).
            Each time a char is sent to UART_TxChar() fun to transmit it through UART
___________________________________________________________________________________*/
void UART_TxString(char *string_ptr)
 {
          while(*string_ptr)
           UART_TxChar(*string_ptr++);
   }






/*---------------------------------------------------------------------------------
                         void UART_RxString(char *string_ptr)
 ----------------------------------------------------------------------------------
 * I/P Arguments: *string_ptr
                   Address of the string where the received data needs to be stored
 * Return value	: none

 * description  :
                1.This function is used to receive a ASCII string through UART
                  till the carriage_return/New_line
                2.The string_ptr points to the begining of the string and each
                  time UART_RxChar() function is called to receive a char and copy
                  it into the buffer(STRING) and incrment string_ptr.
                3.Once the carriage_return/New_line is encountered the loop
                  is breaked and the String is NULL terminated.

 *****NOTE*******:
  1.The received char is ECHOED back,
    if not required then comment UART_TxChar(ch) in the code.
  2.BackSlash is not taken care.
___________________________________________________________________________________*/
void UART_RxString(char *string_ptr)
 {
     char ch;
     while(1)
       {
          ch=UART_RxChar();    //Reaceive a char
          UART_TxChar(ch);     //Echo back the received char

		 if((ch=='\r') || (ch=='\n')) //read till enter key is pressed
           {						  //once enter key is pressed
              *string_ptr=0;          //null terminate the string
                break;				  //and break the loop
             }
         *string_ptr=ch;              //copy the char into string.
         string_ptr++;				  //and increment the pointer
      }
 }






/*----------------------------------------------------------------------------------
                      void  UART_TxNumber(unsigned int num)
------------------------------------------------------------------------------------
 * I/P Arguments: unsigned int.
 * Return value	: none

 * description  :This function is used to transmit a 5-digit integer(0-65535).
                 ex: if the number is 12345 then 12345 is transmitted.
                     if the number is 123 then 00123 is transmitted.


 __________Take 1 by dividing by 10000 and add 0X30 to obtain the ASCII value,
|          then take the 4-digit remainder(2345).
|
| _________Take 2 by dividing by 1000  and add 0X30 to obtain the ASCII value,
||         then take the 3-digit remainder(345)
||
|| ________Take 3 by dividing by 100   and add 0X30 to obtain the ASCII value,
|||        then take the 2-digit remainder(45).
|||
||| _______Take 4 by dividing by 10    and add 0X30 to obtain the ASCII value,
|||| ______Take 5 the remainder of 45  and add 0X30 to obtain the ASCII value,.
|||||
12345
____________________________________________________________________________________*/

void UART_TxNumber(unsigned int num)
{

	   UART_TxChar((num/10000)+0x30);
	   num=num%10000;

	   UART_TxChar((num/1000)+0x30);
	   num=num%1000;

	   UART_TxChar((num/100)+0x30);
	   num=num%100;

	   UART_TxChar((num/10)+0x30);

       UART_TxChar((num%10)+0x30);
}