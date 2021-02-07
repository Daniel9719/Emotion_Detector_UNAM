#ifndef IEEE_I2C_H_
#define IEEE_I2C_H_

#include<stdbool.h>
#define WRITE true
#define READ false

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%    COMANDOS PARA I2C MAESTRO    %%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void I2C_StartWR(int Slave_Add, int Cont, bool WR);
void I2C_Write_Byte(int Byte);
int I2C_Read_Byte(void);
void I2C_Stop(void);

#endif /* IEEE_I2C_H_ */
