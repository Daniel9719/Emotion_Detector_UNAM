import asyncio
import nest_asyncio
# from bleak import BleakScanner
from bleak import discover

nest_asyncio.apply()

async def run():
    devices = await discover()
    for d in devices:
        print(d)

loop = asyncio.get_event_loop()
loop.run_until_complete(run())

"""
async def run():
    devices = await BleakScanner.discover()
    for d in devices:
        print(d)

loop = asyncio.get_event_loop()
loop.run_until_complete(run())
"""