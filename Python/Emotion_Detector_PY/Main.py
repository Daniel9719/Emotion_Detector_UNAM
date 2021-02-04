# -*- coding: utf-8 -*-
"""
Created on Mon Jan 25 13:12:00 2021

@author: danie
"""
import asyncio
from RF_Communications import RF_COMS
import nest_asyncio
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
        Task1 = loop.create_task(GUI_updater(loop), name="Task1")
        loop.run_forever()
        print("First loop finished")
    except KeyboardInterrupt:
        print("User stopped program.")
    finally:
        print("Disconnecting...")
        loop.run_until_complete(rf_coms.cleanup())
        loop.stop()