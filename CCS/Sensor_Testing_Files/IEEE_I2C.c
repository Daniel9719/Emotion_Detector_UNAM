#include"driverlib/inc/tms320f28379d.h"
#include"IEEE_I2C.h"

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%    MASTER COMMANDS FOR I2C    %%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void I2C_StartWR(int Slave_Add, int Cont, bool WR){ //WR: (WRITE) Transmitir    (READ) Recibir
    I2CA_SAR_R=Slave_Add;                           //Carga dirección de escalvo y escritura o lectura
    I2CA_CNT_R=Cont;                                //Número de datos a enviar sin contar ADD
    if(WR){     //Write
        I2CA_MDR_R=0x6620;                          //FREE: Sigue operando aunque ocurra un breakpoint
                                                    //STT: Start
                                                    //MST: Modo maestro (1)
                                                    //TRX: Transmisión de datos (1)
                                                    //BC: Envio 8 bits (0)
        while((I2CA_STR_R&0x4)==0){};               //Mientras el contador no llegue a cero ARDY
    }else{      //Read
        I2CA_MDR_R=0x6420;                          //FREE: Sigue operando aunque ocurra un breakpoint
                                                    //STT: Start
                                                    //MST: Modo maestro (1)
                                                    //TRX: Recepción de datos (0)
                                                    //BC: Envio 8 bits (0)
    }
}

void I2C_Write_Byte(int Byte){
    I2CA_DXR_R=Byte&0xFF;                            //Send Byte of data
}
int I2C_Read_Byte(void){
    return I2CA_DRR_R&0xFF;                                //Lectura de dato del bus
}
void I2C_Stop(void){
    I2CA_MDR_R|=0x800;                              //Escritura de STOP
}


