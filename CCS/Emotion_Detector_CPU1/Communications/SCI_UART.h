/*
 * SCI_UART.h
 *
 *  Created on: 07/12/2020
 *      Author: Daniel Ortiz Torres
 */

#ifndef HM10_BLE_H_
#define HM10_BLE_H_

#include <stdbool.h>
#include <stdint.h>
#include <tms320f28379d.h>

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%%%%    SCI DEFINES   %%%%%%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
#define AT "AT"
#define AT_BAUD "AT+BAUD"
#define AT_PARI "AT+PARI"
#define AT_STOP "AT+STOP"
#define AT_MODE "AT+MODE"
#define AT_NAME "AT+NAME"
#define AT_RESET "AT+RESET"
#define AT_ROLE "AT+ROLE"
#define AT_PASS "AT+PASS"
#define AT_ADDR "AT+ADDR"
#define AT_TYPE "AT+TYPE"
#define AT_POWE "AT+POWE"
#define AT_NOTI "AT+NOTI"

#define LF "\n"  //0xa
#define CR "\r"  //0xd

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%%%%%    SCI FUNCTIONS   %%%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void SCIB_WText(char*);
void SCIB_WData(uint16_t);
void SCIB_WLongData(void);
void SCIB_Read(char*);
void Clean_Reg(char*);
void ComandoAT(char*,char*);
void HM10_Config(void);

#endif /* HM10_BLE_H_ */
