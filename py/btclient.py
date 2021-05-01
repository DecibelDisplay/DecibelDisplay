from dbus_next.aio import MessageBus, ProxyInterface
from dbus_next.service import (ServiceInterface, method, dbus_property, signal)
from dbus_next import BusType, Message, Variant
from termcolor import cprint
from btmanager import BluetoothManager
import asyncio
import os
import zmq
import json

# Allows serialization of DBus objects
def CustomDBusEncoder(obj):
    if isinstance(obj, Variant):
        return obj.value
    raise TypeError(f"{obj} is not JSON serializable")


class OnUpdates:
    def __init__(self, btmanager):
        self.btmanager = btmanager

    # When track info changes (pause, resumed, artist, track name, etc.)
    def on_media_update(self, iface, changed_props, inval_props):
        for changed, variant in changed_props.items():
            cprint(f"MediaUpdate<{changed}>", "red")
            self.btmanager.sock.send_json({"category": "media_update", "cmd": changed, "data": variant.value}, default=CustomDBusEncoder)
                

    # State and Volume
    def on_transport_update(self, iface, changed_props, inval_props):
        for changed, variant in changed_props.items():
            pass # TODO: Is this even useful?

    # Whether or not a deviec is connected
    def on_device_update(self, iface, changed_props, inval_props):
        for changed, variant in changed_props.items():
            cprint(f"DeviceUpdate<{changed}>", "red")
            if changed == "Connected":
                connected = variant.value
                self.btmanager.connected = connected
                if connected:
                    asyncio.ensure_future(initialize_ifaces(self))

# Find the interfaces and attach property listeners
async def initialize_ifaces(Updates):
    ifaces = {
        "org.bluez.Adapter1": None,
        "org.bluez.MediaPlayer1": Updates.on_media_update,
        "org.bluez.MediaTransport1": Updates.on_transport_update,
        "org.bluez.MediaControl1": Updates.on_device_update,
    }

    for iface_name in ifaces:
        print(f"iface_name: {iface_name}")
        iface = await Updates.btmanager.get_interface(iface_name)
        print("Got interface")
        if not iface:
            continue

        iface_props = await Updates.btmanager.get_interface("org.freedesktop.DBus.Properties", iface.path)
        print("Got interface props")

        # Add a listener for when this iface's properties change
        iface_on_update = ifaces[iface_name]
        if iface_props and iface_on_update:
            iface_props.on_properties_changed(iface_on_update)

        
        if iface:
            # Ensure the RPi is discoverable
            if iface_name == "org.bluez.Adapter1":
                await iface.set_discoverable(True)

            # Detect whether a device is currently connected or not
            if iface_name == "org.bluez.MediaControl1":
                Updates.btmanager.connected = await iface.get_connected()




async def run_btclient(btmanager):
    cprint("Starting btclient.py", "cyan")
    Updates = OnUpdates(btmanager)
    await initialize_ifaces(Updates)
    await btmanager.bus.wait_for_disconnect()


async def main_test():
    ZMQ_PORT = 7008 # Port that the ZMQ server runs on
    context = zmq.Context()
    sock = context.socket(zmq.PUSH) # pylint: disable=no-member
    sock.bind(f"tcp://127.0.0.1:{ZMQ_PORT}")
    btmanager = BluetoothManager()
    await btmanager.initialize(sock)
    await run_btclient(btmanager)

if __name__ == "__main__":
    loop = asyncio.get_event_loop()
    loop.run_until_complete(main_test())