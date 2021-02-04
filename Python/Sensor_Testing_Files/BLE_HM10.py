import asyncio
from typing import Any
import nest_asyncio
import matplotlib.pyplot as plt
import numpy as np
import csv

from bleak import BleakClient

Window_Size = 1280  
HM10_address = "88:25:83:F1:39:75"

class Connection:
    
    client: BleakClient = None
    
    # CONSTRUCTOR
    def __init__(
        self,
        loop: asyncio.AbstractEventLoop,
        read_characteristic: str,
        write_characteristic: str,
    ):
        self.loop = loop
        self.read_characteristic = read_characteristic
        self.write_characteristic = write_characteristic

        self.connected = False
        self.connected_device = None

        # self.rx_data = []
        self.PPG = np.zeros(Window_Size, dtype=int)
        self.EDA = np.zeros(Window_Size, dtype=int)
        self.PhysioSignal = 1       # (1) PPG   (0) EDA
        self.lenghtPPG = 0
        self.lenghtEDA = 0

    # METHODS
    async def manager(self):
        print("Starting connection manager.")
        while not self.connected:
            if self.client:
                await self.connect()
            else:
                self.select_device()
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
                    self.read_characteristic, self.BLE_Data_Rx,
                )
            else:
                print("Failed to connect to HM10")
            """
            while True:
                if not self.connected:
                    print("Out of while loop")
                    break
                await asyncio.sleep(10.0)
            # Task1.set_result()
            """
            print("Out of connect!!")
        except Exception as e:
            print("Exception ocurred!!")
            print(e)

    def select_device(self):
        print("Connecting to HM10")
        self.connected_device = HM10_address
        self.client = BleakClient(HM10_address)

    def BLE_Data_Rx(self, sender: str, data: Any):            
        Rx_len=range(0,len(data),2)
        # print(f"Lenght:{len(data)}   Data:{data}")
        data=int.from_bytes(data, byteorder="little")
        for i in Rx_len:
            data2=data&0x3FFF
            if self.PhysioSignal:
                if(self.lenghtPPG==Window_Size):
                    self.lenghtPPG=0
                self.PPG[self.lenghtPPG]=data2
                self.lenghtPPG=self.lenghtPPG+1
            else:
                if(self.lenghtEDA==Window_Size):
                    self.lenghtEDA=0
                self.EDA[self.lenghtEDA]=data2
                self.lenghtEDA=self.lenghtEDA+1
                # PPG_EDA_file.writerow({'PPG':self.PPG[self.lenghtPPG-1], 'EDA':self.EDA[self.lenghtEDA-1]})

            # print(f"Recieved: {data2}")
            data=data>>16
        self.PhysioSignal=not self.PhysioSignal
        
    def on_disconnect(self, client: BleakClient):
        self.connected = False
        # Put code here to handle what happens on disconnet.
        print("Disconnected from HM10!")
        
    async def cleanup(self):
        if self.client:
            await self.client.stop_notify(read_characteristic)
            await self.client.disconnect()
            # await self.client.unpair()

#############
# Loops
#############
async def BLE_Data_Tx(connection: Connection, TxData):
    if connection.client and connection.connected:
        if type(TxData)==int:
            await connection.client.write_gatt_char(write_characteristic, TxData)
        elif type(TxData)==str:
            TxData = TxData+"\n"
            TxData = bytearray(map(ord, TxData))
            await connection.client.write_gatt_char(write_characteristic, TxData)
        else:
            print("ERROR BLE_Data_Tx: Incorrect type of data")
        print(f"Sent: {TxData}")
    else:
        print ('ERROR BLE_Data_Tx: Device not connected')
        
async def plotting(connection: Connection):
    t = range(Window_Size)
    print("Inside PLotting")
    # fig, (ax1, ax2) = plt.subplots(nrows=2,ncols=1)
    while True:
        # plt.cla()    matplotlib.artist
        fig, (ax1, ax2) = plt.subplots(nrows=2,ncols=1)
        ax1.plot(t,connection.PPG, label='PPG')
        ax2.plot(t,connection.EDA, label='EDA')
        ax1.legend()
        ax2.legend()
        ax2.set_xlabel('Muestras')
        # ax1.stale()
        # ax2.stale()
        plt.pause(0.1)
        # plt.grid(True)
        # plt.show()
        # print("Plotting")
        await asyncio.sleep(0.1)

async def main(loop):
    while True:
        Task1 = loop.create_task(connection.manager(), name="Task1")
        Task2 = loop.create_task(plotting(connection), name="Task2")
        future, pending = await asyncio.wait([Task1, Task2],return_when="ALL_COMPLETED")
        # print(f"Futuro: {future}    Pending:{pending}")

#############
# App Main
#############
read_characteristic = "0000ffe1-0000-1000-8000-00805f9b34fb"
write_characteristic = "0000ffe1-0000-1000-8000-00805f9b34fb"

if __name__ == "__main__":
    nest_asyncio.apply()
    # Create the event loop.
    loop = asyncio.get_event_loop()
    loop.set_debug(True)
    with open('PPG_EDA_Data.csv','w',newline='') as NewFile:
        header_names = ['PPG','EDA']
        PPG_EDA_file = csv.DictWriter(NewFile, fieldnames=header_names)
        PPG_EDA_file.writeheader()
        
    connection = Connection(
         loop, read_characteristic, write_characteristic
    )
    plt.style.use('seaborn')
    try:
        loop.run_until_complete(main(loop))
        print("First loop finished")
    except KeyboardInterrupt:
        print("User stopped program.")
    finally:
        print("Disconnecting...")
        # loop.stop()
        loop.run_until_complete(connection.cleanup())
        loop.stop()
        plt.show()
        # loop.close()