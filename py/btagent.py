from dbus_next.service import (ServiceInterface, method, dbus_property, signal)
from dbus_next import Variant, DBusError
from termcolor import cprint

import asyncio


class BluezAgent(ServiceInterface):
    exit_on_release = True
    def __init__(self, btmanager):
        super().__init__('org.bluez.Agent1')
        self.btmanager = btmanager

    async def set_trusted(self, path):
        cprint(f"set_trusted {path}", "green")
        iface = await self.btmanager.get_interface("org.bluez.Device1")
        await iface.set_trusted(True)

    def set_exit_on_release(self, exit_on_release):
        self.exit_on_release = exit_on_release

    @method()
    def Release(self):
        cprint("Release", "green")

    @method()
    def AuthorizeService(self, device: "o", uuid: "s"):
        cprint("AuthorizeService (%s, %s)" % (device, uuid), "green")
        return

    @method()
    async def RequestPinCode(self, device: "o") -> "s":
        cprint("RequestPinCode (%s)" % (device), "green")
        await self.set_trusted(device)
        return "1234"

    @method()
    async def RequestPasskey(self, device: "o") -> "u":
        cprint("RequestPasskey (%s)" % (device), "green")
        await self.set_trusted(device)
        return 1234

    @method()
    def DisplayPasskey(self, device: "o", passkey: "u", entered: "q"):
        cprint("DisplayPasskey (%s, %06u entered %u)" %
                        (device, passkey, entered), "green")

    @method()
    def DisplayPinCode(self, device: "o", pincode: "s"):
        cprint("DisplayPinCode (%s, %s)" % (device, pincode), "green")

    @method()
    async def RequestConfirmation(self, device: "o", passkey: "u"):
        cprint("RequestConfirmation (%s, %06d)" % (device, passkey), "green")
        await self.set_trusted(device)

    @method()
    def RequestAuthorization(self, device: "o"):
        cprint("RequestAuthorization (%s)" % (device), "green")
        return

    @method()
    def Cancel(self):
        cprint("Cancel", "green")


async def run_btagent(btmanager, capability):
    cprint("Starting btagent.py", "cyan")
    path = "/test/agent"
    interface = BluezAgent(btmanager)
    btmanager.bus.export(path, interface)

    manager = await btmanager.get_interface("org.bluez.AgentManager1")
    await manager.call_register_agent(path, capability)
    await manager.call_request_default_agent(path)

    await btmanager.bus.wait_for_disconnect()