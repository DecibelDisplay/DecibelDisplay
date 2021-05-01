# Python script that runs all of the other scripts and manages config
import asyncio
import zmq
from termcolor import cprint

from btmanager import BluetoothManager
from btclient import run_btclient
from btagent import run_btagent
from visualize import run_visualize
from sensor import run_sensor

######################################################
#                                                    #
#                    CONFIG                          #
#                                                    #
######################################################

ZMQ_PORT = 7008 # Port that the ZMQ server runs on
CAPABILITY = "DisplayYesNo" # The capability mode the BT agent acts in


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

    await asyncio.gather(
        # btclient.py (sets Discoverable, listens for track changes, etc.)
        run_btclient(btmanager),
        # btagent.py (Accepts pairing, trusts device, etc.)
        run_btagent(btmanager, CAPABILITY),
        # visualize.py (Controls the LEDs)
        run_visualize(loop)
    )

    # # sensor.py (Controls the sensors)
    # cprint("Starting sensor.py", "cyan")
    # loop.create_task(run_sensor(sock))


loop.run_until_complete(main())