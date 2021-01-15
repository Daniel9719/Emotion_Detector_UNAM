#include<stdbool.h>
#include<stdint.h>
#include"driverlib/inc/tms320f28379d.h"
#include"HM10_BLE.h"

extern int SCI_State;
extern bool SCI_Sent;
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
//%%%%%%%%%%%%%%    CONFIGURACIÓN DEL MÓDULO HM10    %%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void HM10_Config(void){
    SCI_State=1;
    SCI_Sent=false;
    while(SCI_State<6){
        if(!SCI_Sent){
            switch(SCI_State){
            case 0:
                ComandoAT(AT_NAME,"EmoDet_UNAM");    //Nombre del sensor por BLE
                break;
            case 1:
                ComandoAT(AT_NOTI,"1");                 //Hab Notificación al conectarse el módulo (OK+CONN o OK+LOST)
                break;
            case 2:
                ComandoAT(AT_BAUD,"8");                 //Establecimiento de la tasa de transmisión con el módem a 115200
                break;
            case 3:
                ComandoAT(AT,"");                       //Verify function HM10 with new data rate
                break;
            default:
                break;
            }
            SCI_Sent=true;
        }
    }
}
