#ifndef _DS1307_H
#define _DS1307_H

void DS1307_Init();
void DS1307_Write(unsigned char);
unsigned char DS1307_Read();
void DS1307_SetTime(unsigned char, unsigned char, unsigned char);
void DS1307_SetDate(unsigned char, unsigned char, unsigned char);
void DS1307_GetTime(unsigned char *,unsigned char *,unsigned char *);
void DS1307_GetDate(unsigned char *,unsigned char *,unsigned char *);

#endif
