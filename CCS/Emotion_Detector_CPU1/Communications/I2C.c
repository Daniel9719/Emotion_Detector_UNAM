#include "Communications/I2C.h"

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%    MASTER COMMANDS FOR I2C    %%%%%%%%%%%%%%%%%%%
//int Slave_Add: Slave Adrress of I2C Device
//int Cont: Counter with the amount of data to send without ADD Byte
//bool WR: Value to describe a (WRITE) Trasmit of Data or (READ) Recieve of Data
//--------------------------------------------------------------------
void I2C_StartWR(int Slave_Add, int Cont, bool WR){
    I2CA_SAR_R=Slave_Add;
    I2CA_CNT_R=Cont;
    if(WR){     //Write
        I2CA_MDR_R=0x6620;                          //FREE: Keep running even after breakpoint stop
                                                    //STT: Start
                                                    //MST: Master Mode (1)
                                                    //TRX: Transmitting Data (1)
                                                    //BC: Sending 8 bits (0)
        while((I2CA_STR_R&0x4)==0){};               //While the counter doesn't arrive to zero (ARDY)
    }else{      //Read
        I2CA_MDR_R=0x6420;                          //FREE: Keep running even after breakpoint stop
                                                    //STT: Start
                                                    //MST: Master Mode  (1)
                                                    //TRX: Receiving Data (0)
                                                    //BC: Sending 8 bits (0)
    }
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%    WRITING BYTE TO TX BUFFER/FIFO    %%%%%%%%%%%%%%%
//int Byte: Byte to write into Tx Buffer or FIFO
//--------------------------------------------------------------------
void I2C_Write_Byte(int Byte){
    I2CA_DXR_R=Byte&0xFF;                            //Send Byte of data
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%    READING BYTE FROM RX BUFFER/FIFO    %%%%%%%%%%%%%%%
//return int: Data Byte read from bus
//--------------------------------------------------------------------
int I2C_Read_Byte(void){
    return I2CA_DRR_R&0xFF;
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%    SETTING STOP COMMAND ON I2C BUS    %%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void I2C_Stop(void){
    I2CA_MDR_R|=0x800;                              //STOP Write
}


