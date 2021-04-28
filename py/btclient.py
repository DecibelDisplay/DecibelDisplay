from dbus_next.aio import MessageBus, ProxyInterface
from dbus_next.service import (ServiceInterface, method, dbus_property, signal)
from dbus_next import BusType, Message, Variant
import bluetooth
import asyncio
import os
import zmq
import json

PORT = 7008

loop = asyncio.get_event_loop()
context = zmq.Context()
sock = context.socket(zmq.PUSH) # pylint: disable=no-member
sock.bind(f"tcp://127.0.0.1:{PORT}")

# Allows serialization of DBus objects
def CustomDBusEncoder(obj):
    if isinstance(obj, Variant):
        return obj.value
    raise TypeError(f"{obj} is not JSON serializable")

class BluetoothManager(object):
    @classmethod
    async def initialize(self):
        self.bluez_iname = "org.bluez"
        self.bluez_path = "/"
        self.bus = await MessageBus(bus_type=BusType.SYSTEM).connect()

        introspection = await self.bus.introspect(self.bluez_iname, self.bluez_path)
        self.bluez_obj = self.bus.get_proxy_object(self.bluez_iname, self.bluez_path, introspection)
        self.mgr = self.bluez_obj.get_interface('org.freedesktop.DBus.ObjectManager')
        self.connected = False

    # This finds an interface by name (and optional path) even if it's nested
    async def get_interface(self, interface_name, interface_path=None):
        objs = await self.mgr.call_get_managed_objects()
        for path,ifaces in objs.items():
            if interface_path and path != interface_path:
                continue
            if interface_name in ifaces:
                bluez_intro = await self.bus.introspect(self.bluez_iname, path)
                bluez_obj = self.bus.get_proxy_object(self.bluez_iname, path, bluez_intro)
                return bluez_obj.get_interface(interface_name)


btmanager: BluetoothManager
# When track info changes (pause, resumed, artist, track name, etc.)
def on_media_update(iface, changed_props, inval_props):
        for changed, variant in changed_props.items():
                print(f"Sending cmd {changed}")
                sock.send_json({"category": "media_update", "cmd": changed, "data": variant.value}, default=CustomDBusEncoder)
            

# State and Volume
def on_transport_update(iface, changed_props, inval_props):
    for changed, variant in changed_props.items():
            print(f'2property changed({iface}): {changed} - {variant.value}')

# Whether or not a deviec is connected
def on_device_update(iface, changed_props, inval_props):
    for changed, variant in changed_props.items():
        print(f'3property changed({iface}): {changed} - {variant.value}')
        if changed == "Connected":
            connected = variant.value
            btmanager.connected = connected
            print(btmanager.connected)
            if connected:
                initialize_ifaces()

# Find the interfaces and attach property listeners
async def initialize_ifaces():
    ifaces = {
        "org.bluez.Adapter1": None,
        "org.bluez.MediaPlayer1": on_media_update,
        "org.bluez.MediaTransport1": on_transport_update,
        "org.bluez.MediaControl1": on_device_update,
    }

    for iface_name in ifaces:
        iface = await btmanager.get_interface(iface_name)
        if not iface:
            continue

        iface_props = await btmanager.get_interface("org.freedesktop.DBus.Properties", iface.path)
        
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
                btmanager.connected = await iface.get_connected()
                print(f"Device already connected: {btmanager.connected}")




async def main():
    global btmanager
    btmanager = BluetoothManager()
    await system("bluetp")
    await btmanager.initialize()
    await initialize_ifaces()
    await loop.create_future()

loop.run_until_complete(main())
