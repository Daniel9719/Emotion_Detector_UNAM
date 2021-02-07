#include<stdbool.h>
#include<stdint.h>
#include"driverlib/inc/tms320f28379d.h"
#include"HM10_BLE.h"

extern volatile int SCI_State;
extern bool SCI_TxAvail;
extern volatile bool SCI_RxAvail;
extern uint16_t* SCI_StartPt;
extern uint16_t* SCI_EndPt;
extern uint16_t SCI_Data;

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%    WRITE TEXT TO SCIB    %%%%%%%%%%%%%%%%%%%%%%%
//      char* TxText_Pt: Pointer of string to send
//--------------------------------------------------------------------
void SCIB_WText(char* TxText_Pt){
    while(*TxText_Pt){                          //While char inside string is not zero
        while(SCIB_FFTX_R&0x1F00){}             //While SCI FIFO is not full
        SCIB_TXBUF_R=*(TxText_Pt++);            //Writing to TXBUF the char pointed with TxText_Pt and points foward
    }
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    WRITING DATA TO SCIB    %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void SCIB_WData(void){          //It always sends 2 bytes of data
    static uint16_t LSB=1;
    //While there's still data in pointer and the TxFIFO is not full
    while((SCI_StartPt!=SCI_EndPt)&&((SCIB_FFTX_R&0x1F00)!=0x1000)){
        SCIB_TXBUF_R=SCI_Data;              //Writing to TXBUF the data pointed with SCI_StartPt and points foward
        if(LSB){                //If it sent the low Byte of the data
            SCI_Data=(*SCI_StartPt)>>8;
        }
        else{                   //If it sent the upper Byte of the Data
            SCI_StartPt++;
            SCI_Data=*SCI_StartPt;
        }
        LSB^=1;
    }
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%    READING DATA FROM SCIB    %%%%%%%%%%%%%%%%%%%%%
//char* RxData_Pt: Pointer to string where data is going to be stored
//--------------------------------------------------------------------
void SCIB_Read(char* RxData_Pt){
    *(RxData_Pt)=SCIB_RXBUF_R&0xFF;
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%    CLEANING STRING TO ZEROS    %%%%%%%%%%%%%%%%%%
//char* Reg_Pt: Pointer to string where data is stored
//--------------------------------------------------------------------
void Clean_Reg(char *Reg_Pt){
    while(*Reg_Pt){
        *(Reg_Pt++)=0x0;
    }
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%    ESCRITURA DE Comando AT AL SCIB    %%%%%%%%%%%%%%
//char* Comando: Ap a caracteres con el comando principal
//char* Opción: Ap a caracteres con alguna opción adicional
//--------------------------------------------------------------------
void ComandoAT(char *Comando, char *Opcion){
    SCIB_WText(Comando);
    SCIB_WText(Opcion);
    SCIB_WText(CR);
    SCIB_WText(LF);
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%    HM10 MODULE CONFIGURATION    %%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void HM10_Config(void){
    SCI_State=0;
    SCI_RxAvail=true;
    while(SCI_State<5){                                 //While all the conditions (cases) aren't completed
        if(SCI_RxAvail){                                  //If an "OK" statement has arrived
            switch(SCI_State){
            case 0:
                ComandoAT(AT_NAME,"EmoDet_UNAM");       //Setting name for HM10 Module to EmoDet_UNAM
                SCI_RxAvail=false;
                break;
            case 1:
                ComandoAT(AT_NOTI,"1");                 //Enable notification when the module is connected or disconnected (OK+CONN or OK+LOST)
                SCI_RxAvail=false;
                break;
            case 2:
                ComandoAT(AT_BAUD,"8");                 //Establish data rate to (8) 115200
                SCI_RxAvail=false;
                break;
            case 3:
                ComandoAT(AT_POWE,"2");                 //Establish Tx Power to (2) 0 dBm
                SCI_RxAvail=false;
                break;
            case 4:
                ComandoAT(AT,"");                       //Verify functioning of HM10 with AT command
                SCI_RxAvail=false;
                break;
            default:
                break;
            }
        }
    }
}
