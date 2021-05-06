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

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%    WRITING BYTE TO TX BUFFER/FIFO    %%%%%%%%%%%%%%%
//int Byte: Byte to write into Tx Buffer or FIFO
//--------------------------------------------------------------------
inline void I2C_Write_Byte(int Byte){
    I2CA_DXR_R=Byte&0xFF;                            //Send Byte of data
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%    READING BYTE FROM RX BUFFER/FIFO    %%%%%%%%%%%%%%%
//return int: Data Byte read from bus
//--------------------------------------------------------------------
inline int I2C_Read_Byte(void){
    return I2CA_DRR_R&0xFF;
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%    SETTING STOP COMMAND ON I2C BUS    %%%%%%%%%%%%%%%
//--------------------------------------------------------------------
inline void I2C_Stop(void){
    I2CA_MDR_R|=0x800;                              //STOP Write
}


#endif /* IEEE_I2C_H_ */
