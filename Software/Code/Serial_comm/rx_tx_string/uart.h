#ifndef _UART_H
#define _UART_H


void UART_Init();
void UART_TxChar(char);
char UART_RxChar();
void UART_TxString(char *);
void UART_RxString(char *);
void UART_TxNumber(unsigned int);

#endif