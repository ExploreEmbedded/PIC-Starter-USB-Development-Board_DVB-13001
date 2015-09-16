#ifndef _I2C_H
#define _I2C_H

void I2C_Init();
void I2C_Clock(void);
void I2C_Start();
void I2C_Stop(void);
void I2C_Write(unsigned char );
unsigned char I2C_Read(void);
void I2C_Ack();
void I2C_NoAck();

#endif
