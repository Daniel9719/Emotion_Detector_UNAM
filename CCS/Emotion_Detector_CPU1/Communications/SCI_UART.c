#include <Communications/SCI_UART.h>

volatile int SCI_State=0;
volatile bool SCI_RxAvail=true;
bool SCI_TxAvail=true;
uint16_t SCI_Mode=0;                             //(0) AT Mode   (1) Connection Mode  (2) Standby Mode

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%    WRITE TEXT TO SCIB    %%%%%%%%%%%%%%%%%%%%%%%
//      char* TxText_Pt: Pointer of string to send
//--------------------------------------------------------------------
void SCIB_WText(char* TxText_Pt){
    while(*TxText_Pt){                                  //While char inside string is not zero
        while((SCIB_FFTX_R&0x1F00)==0x1F00){}           //While SCI FIFO is not full
        SCIB_TXBUF_R=*(TxText_Pt++);                    //Writing to TXBUF the char pointed with TxText_Pt and points foward
    }
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    WRITING DATA TO SCIB    %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void SCIB_WData(uint16_t SCI_TxData){                   //It always sends 2 bytes of data
    //While the TxFIFO is not full
    while((SCIB_FFTX_R&0x1F00)==0x1000){}
    SCIB_TXBUF_R=SCI_TxData&0xFF;                       //Writing to TXBUF the data pointed with SCI_StartPt and points foward
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
//%%%%%%%%%%%%%%%%    WRITIRNG AT COMMAND TO SCIB   %%%%%%%%%%%%%%%%%%
//char* Command: Pointer to characters with the main command
//char* Option: Pointer to characters with additional information
//--------------------------------------------------------------------
void ATCommand(char *Command, char *Option){
    SCIB_WText(Command);
    SCIB_WText(Option);
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
                ATCommand(AT_NAME,"EmoDet_UNAM");       //Setting name for HM10 Module to EmoDet_UNAM
                SCI_RxAvail=false;
                break;
            case 1:
                ATCommand(AT_NOTI,"1");                 //Enable notification when the module is connected or disconnected (OK+CONN or OK+LOST)
                SCI_RxAvail=false;
                break;
            case 2:
                ATCommand(AT_BAUD,"8");                 //Establish data rate to (8) 115200
                SCI_RxAvail=false;
                break;
            case 3:
                ATCommand(AT_POWE,"2");                 //Establish Tx Power to (2) 0 dBm
                SCI_RxAvail=false;
                break;
            case 4:
                ATCommand(AT,"");                       //Verify functioning of HM10 with AT command
                SCI_RxAvail=false;
                break;
            default:
                break;
            }
        }
    }
}
