# Python script that runs all of the other scripts and manages config
import asyncio
import zmq
from termcolor import cprint

from btmanager import BluetoothManager
from btclient import run_btclient
from btagent import run_btagent

######################################################
#                                                    #
#                    CONFIG                          #
#                                                    #
######################################################

ZMQ_PORT = 7008 # Port that the ZMQ server runs on
CAPABILITY = "DisplayOnly" # The capability mode the BT agent acts in




######################################################
#                                                    #
#                     CODE                           #
#                                                    #
######################################################

# Event loop
loop = asyncio.get_event_loop()

# Set up ZMQ Messaging Server
context = zmq.Context()
sock = context.socket(zmq.PUSH) # pylint: disable=no-member
sock.bind(f"tcp://127.0.0.1:{ZMQ_PORT}")




async def main():
    # Instantiate Bluetooth Manager
    btmanager = BluetoothManager()
    await btmanager.initialize(sock)

    # btclient.py (sets Discoverable, listens for track changes, etc.)
    cprint("Starting btclient.py", "cyan")
    loop.create_task(run_btclient(btmanager))

    # btagent.py (Accepts pairing, trusts device, etc.)
    cprint("Starting btagent.py", "cyan")
    loop.create_task(run_btagent(btmanager))

    # visualize.py (Controls the LEDs)

    await loop.create_future()

loop.run_until_complete(main())