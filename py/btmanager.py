# Provides a nice wrapper to get dbus objects
from dbus_next.aio import MessageBus
from dbus_next import BusType, Message, Variant

class BluetoothManager(object):
    @classmethod
    async def initialize(self, sock):
        self.bluez_iname = "org.bluez"
        self.bluez_path = "/"
        self.bus = await MessageBus(bus_type=BusType.SYSTEM).connect()
        self.sock = sock # ZMQ Socket

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