# -*- coding: utf-8 -*-
"""
Created on Mon Jan 25 13:12:00 2021

@author: danie
"""
import asyncio
from RF_Communications import RF_COMS
import nest_asyncio
import time
from EMDC import features_csv, targets_csv, train_and_test
import tkinter as tk
from User_Interface import declarar_widgets, on_close

UUID_characteristic = "0000ffe1-0000-1000-8000-00805f9b34fb"

async def GUI_updater(loop):
    while True:
        try:
            root.update()
            await asyncio.sleep(1/20)
        except KeyboardInterrupt:
            print("User stopped loop.")
    
async def main(loop):
    while True:
        # Task1 = loop.create_task(rf_coms.manager(), name="Task1")
        # Task2 = loop.create_task(plotting(rf_coms), name="Task2")
        # future, pending = await asyncio.wait([Task1, Task2],return_when="ALL_COMPLETED")
        # future, pending = await asyncio.wait([Task1],return_when="ALL_COMPLETED")
        
        await rf_coms.manager()
        # await rf_coms.Connect() 
        rf_coms.Config = 0x46
        await rf_coms.Send_Config()   

        rf_coms.Chars_Asig, rf_coms.FLD_W, rf_coms.Mean_Vect, rf_coms.Pik_Vect, rf_coms.Cov_S_Inv=train_and_test(features_csv,targets_csv)
        print(f"SFFS:{rf_coms.Chars_Asig} \n W:{rf_coms.FLD_W} \n mk:{rf_coms.Mean_Vect} \n Pik:{rf_coms.Pik_Vect} \n S:{rf_coms.Cov_S_Inv}")
        await rf_coms.Send_Clasif_Parameters()
        # print(f"Futuro: {future}    Pending:{pending}")
        while(1):
            time.sleep(20)
            print("Aqui toy")
#############
# App Main
#############

if __name__ == "__main__":
    nest_asyncio.apply()
    # Create the event loop.
    loop = asyncio.get_event_loop()
    loop.set_debug(True)
        
    rf_coms = RF_COMS(
         loop, UUID_characteristic
    )
    #Main GUI window
    root = tk.Tk()
    root.title("Dispositivo detector de emociones")
    root.geometry("1500x700")
    
    declarar_widgets(rf_coms, root, loop)
    
    #on_close function will be executed when trying to close the main window
    root.protocol("WM_DELETE_WINDOW",  lambda: on_close(root,loop)) 
    
    try:
        # loop.run_until_complete(main(loop))
        Task1 = loop.create_task(GUI_updater(loop), name="Task1")
        loop.run_forever()
        print("First loop finished")
        # loop.close()
    except KeyboardInterrupt:
        print("User stopped program.")
    finally:
        print("Disconnecting...")
        # loop.stop()
        loop.run_until_complete(rf_coms.cleanup())
        loop.stop()
        # loop.close()