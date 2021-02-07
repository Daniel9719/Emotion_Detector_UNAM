/*
 * I2C.h
 *
 *  Created on: 07/12/2020
 *      Author: Daniel Ortiz Torres
 */

#ifndef IEEE_I2C_H_
#define IEEE_I2C_H_

#include<stdbool.h>
#include <tms320f28379d.h>

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%%%%    I2C DEFINES   %%%%%%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
#define WRITE true
#define READ false

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%    MASTER COMMANDS FOR I2C    %%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void I2C_StartWR(int Slave_Add, int Cont, bool WR);
void I2C_Write_Byte(int Byte);
int I2C_Read_Byte(void);
void I2C_Stop(void);

#endif /* IEEE_I2C_H_ */
