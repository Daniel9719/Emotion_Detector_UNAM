# -*- coding: utf-8 -*-
"""
Created on Mon Jan 25 13:19:00 2021

@author: danie
"""
import asyncio
from typing import Any
import numpy as np
import pandas as pd

from bleak import BleakClient

HM10_address = "88:25:83:F1:39:75"

class RF_COMS:
    
    client: BleakClient = None
    
    # CONSTRUCTOR
    def __init__(
        self,
        loop: asyncio.AbstractEventLoop,
        UUID_characteristic: str,
    ):
        # PANDAS VARIABLES
        self.emo_df = pd.read_csv("Emotions.csv")
        self.feat_df = pd.read_csv("features.csv")
        self.emo_index = len(self.emo_df.index)
        self.feat_index = len(self.feat_df.index)
        
        # BLE VARIABLES
        self.loop = loop
        self.UUID_characteristic = UUID_characteristic

        self.connected = False
        self.connected_device = None
        
        self.FirstByte = True
        self.index = 0
        self.str = ''
        self.DataQ16 = 0
        self.Auto = False
        
        # RF COMS VARIABLES
        self.Config = 0x06
        self.No_Emotions = 0x01
        
        self.CC_Config = 0x00
        self.Chars_Asig = None
        
        self.FLD_W_Config = 0x00
        self.FLD_W = None     # Every matrix changes of dimension 21x1
        
        self.Vect_Config = 0x00
        self.Pik_Vect = None
        self.Mean_Vect = None
        self.Cov_S_Inv = None
    
        
        self.Emotion = 7
        self.Chars_Val = np.zeros(21, dtype=float)

    # BLE METHODS
    async def manager(self):
        print("Starting connection manager.")
        while not self.connected:
            if self.client:
                await self.connect()
            else:
                self.select_device()
        await self.Connect_EmotSensor()
        print("Still in manager")

    async def connect(self):
        if self.connected:
            print("Already connected")
            return
        try:
            # await self.client.pair()
            await self.client.connect()
            self.connected = await self.client.is_connected()
            if self.connected==1:
                print("Connected to HM10")
                self.client.set_disconnected_callback(self.on_disconnect)
                await self.client.start_notify(
                    self.UUID_characteristic, self.BLE_Data_Rx,
                )
            else:
                print("Failed to connect to HM10")
        except Exception as e:
            print(e)

    def select_device(self):
        print("Connecting to HM10")
        self.connected_device = HM10_address
        self.client = BleakClient(HM10_address)

    def BLE_Data_Rx(self, sender: str, data: Any):            
        Rx_len=range(0,len(data),1)
        data=int.from_bytes(data, byteorder="little")
        for i in Rx_len:
            Byte = data&0xFF
            if self.Auto == False:
                if self.FirstByte:
                    Addr = Byte
                else:
                    self.Rx_Menu(Addr, Byte)
                self.FirstByte = not self.FirstByte
            else:
                Addr += 1
                self.Rx_Menu(Addr, Byte)
            data=data>>8
        
    async def BLE_Data_Tx(self, TxData, length=None):
        if self.client and self.connected:
            if type(TxData)==int:
                if length == None:
                    length = (TxData.bit_length() + 7) // 8
                Data=TxData.to_bytes(length, byteorder='little', signed=False)
                await self.client.write_gatt_char(self.UUID_characteristic, Data)
            elif type(TxData)==str:
                TxData = TxData+"\n"
                TxData = bytearray(map(ord, TxData))
                await self.client.write_gatt_char(self.UUID_characteristic, TxData)
            else:
                print("ERROR BLE_Data_Tx: Incorrect type of data")
        else:
            print ('ERROR BLE_Data_Tx: Device not connected')
        
    def on_disconnect(self, client: BleakClient):
        self.connected = False
        # Put code here to handle what happens on disconnet.
        print("Disconnected from HM10!")
        
    async def cleanup(self):
        if self.client:
            await self.client.stop_notify(self.UUID_characteristic)
            await self.client.disconnect()
            # await self.client.unpair()
        
    # RF COMS METHODS
    async def Connect_EmotSensor(self):
        await self.BLE_Data_Tx("EM_DET_UNAM")
    
    async def Send_Config(self):
        Data = (self.Config<<8) | 0x40      
        await self.BLE_Data_Tx(Data, length=2)

    async def Send_Clasif_Parameters(self):
        # Sending Chars_Asig Matrix
        for i in range(0,len(self.Chars_Asig)):
            self.CC_Config = 0x4 | i
            Data = ( (self.Chars_Asig[i][3]<<40) 
                  | (self.Chars_Asig[i][2]<<32)  
                  | (self.Chars_Asig[i][1]<<24)  
                  | (self.Chars_Asig[i][0]<<16)  
                  | (self.CC_Config<<8)          | 0x41 )

            await self.BLE_Data_Tx(Data, length=6)
        
        # Sending FLD_W Matrix
        for i in range(0,len(self.FLD_W)):
            for j in range(0,21):
                self.FLD_W_Config = 0x80 | (i<<5) | j
                if j < len(self.FLD_W[i][0]):
                    Data = ( ( int(self.FLD_W[i][3][j,0])<<40)
                          | ( int(self.FLD_W[i][2][j,0])<<32)
                          | ( int(self.FLD_W[i][1][j,0])<<24)
                          | ( int(self.FLD_W[i][0][j,0])<<16)
                          | ( int(self.FLD_W_Config<<8))     | 0x46 )

                    await self.BLE_Data_Tx(Data, length=6)
                else:
                    Data = ( (0<<40) 
                          | (0<<32) 
                          | (0<<24) 
                          | (0<<16) 
                          | (self.FLD_W_Config<<8)   | 0x46 )
                    await self.BLE_Data_Tx(Data, length=6)
                    
        # Sending Mean_Vect Matrix
        for i in range(0,len(self.Mean_Vect)):
            for j in range(0,len(self.Mean_Vect[i][0])):
                self.Vect_Config = 0x40 | (0<<4) | (2*i+j)
                Data = ( ( int(self.Mean_Vect[i][3][j,0])<<40) 
                      | ( int(self.Mean_Vect[i][2][j,0])<<32)  
                      | ( int(self.Mean_Vect[i][1][j,0])<<24)  
                      | ( int(self.Mean_Vect[i][0][j,0])<<16)  
                      | ( int(self.Vect_Config<<8))          | 0x4B )

                await self.BLE_Data_Tx(Data, length=6)

        # Sending Pik_Vect Matrix
        for i in range(0,len(self.Pik_Vect)):
            for j in range(0,len(self.Pik_Vect[i][0])):
                self.Vect_Config = 0x40 | (1<<4) | (2*i+j)
                Data = ( ( int(self.Pik_Vect[i][3][j,0])<<40) 
                      | ( int(self.Pik_Vect[i][2][j,0])<<32)  
                      | ( int(self.Pik_Vect[i][1][j,0])<<24)  
                      | ( int(self.Pik_Vect[i][0][j,0])<<16)  
                      | ( int(self.Vect_Config<<8))          | 0x4B )

                await self.BLE_Data_Tx(Data, length=6)

        # Sending Cov_S_Inv Matrix
        for i in range(0,len(self.Cov_S_Inv)):
            self.Vect_Config = 0x40 | (2<<4) | i
            Data = ( ( int(self.Cov_S_Inv[i][3][0,0])<<40)
                  | ( int(self.Cov_S_Inv[i][2][0,0])<<32)
                  | ( int(self.Cov_S_Inv[i][1][0,0])<<24)
                  | ( int(self.Cov_S_Inv[i][0][0,0])<<16)
                  | ( int(self.Vect_Config<<8))          | 0x4B )

            await self.BLE_Data_Tx(Data, length=6)

    async def Send_Start_Measurement(self):
        Data = (self.Config<<8) | 0x40
        await self.BLE_Data_Tx(Data, length=2)

    async def Request_Data(self):
        None
        
    def Rx_Menu(self, Addr: int, Data: int):
        if Addr == 0x10:
            self.Emotion = Data & 0x7
            if self.Emotion == 7:       #Neutral
                self.emo_df.loc[self.emo_index]=['1','0','0']
            elif self.Emotion == 1:     #Low Arousal - Negative Valence
                self.emo_df.loc[self.emo_index]=['0','0','0']
            elif self.Emotion == 2:     #Low Arousal - Positive Valence
                self.emo_df.loc[self.emo_index]=['0','0','1']
            elif self.Emotion == 4:     #High Arousal - Negative Valence
                self.emo_df.loc[self.emo_index]=['0','1','0']
            elif self.Emotion == 6:     #High Arousal - Positive Valence
                self.emo_df.loc[self.emo_index]=['0','1','1']  
            self.emo_index += 1
            self.emo_df.to_csv("Emotions.csv", index=False)
            
        elif Addr == 0x11:
            self.index = Data & 0x1F
            if Data & 0x20:
                self.Auto = True
            if self.index == 0:
                self.str = 'pNN50'
            elif self.index == 1:
                self.str = 'NN50'
            elif self.index == 2:
                self.str = 'RRmed'
            elif self.index == 3:
                self.str = 'SDNN'
            elif self.index == 4:
                self.str = 'RMSSD'
            elif self.index == 5:
                self.str = 'SD1/SD2'
            elif self.index == 6:
                self.str = 'LF/HF'
            elif self.index == 7:
                self.str = 'VLF'
            elif self.index == 8:
                self.str = 'PRV_LF'
            elif self.index == 9:
                self.str = 'PRV_HF'
            elif self.index == 10:
                self.str = 'SD1'
            elif self.index == 11:
                self.str = 'SD2'
            elif self.index == 12:
                self.str = 'NumSCR'
            elif self.index == 13:
                self.str = 'AmpSCR'
            elif self.index == 14:
                self.str = 'mTL'
            elif self.index == 15:
                self.str = 'sdAmpl'
            elif self.index == 16:
                self.str = 'ctl25'
            elif self.index == 17:
                self.str = 'ctl50'
            elif self.index == 18:
                self.str = 'ctl75'
            elif self.index == 19:
                self.str = 'ctl90'
            elif self.index == 20:
                self.str = 'EDA_HF'
                self.feat_index += 1
                
        elif Addr == 0x12:
            self.DataQ16 = (self.DataQ16 & 0xFFFFFF00)|Data;
            
        elif Addr == 0x13:
            self.DataQ16 = (self.DataQ16 & 0xFFFF00FF)|(Data<<8)
            
        elif Addr == 0x14:
            self.DataQ16 = (self.DataQ16 & 0xFF00FFFF)|(Data<<16)
            
        elif Addr == 0x15:
            Q16 = 65536
            self.DataQ16 = (self.DataQ16 & 0x00FFFFFF)|(Data<<24)
            self.Chars_Val[self.index] = float(self.DataQ16)/Q16
            
            self.feat_df.loc[self.feat_index, self.str] = self.Chars_Val[self.index]
            self.feat_df.to_csv("Features.csv", index=False)
            self.Auto = False
        