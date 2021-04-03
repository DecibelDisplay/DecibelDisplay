import dbus, dbus.mainloop.glib, sys, os
from gi.repository import GLib
from bluezutils import find_interface, find_interface_properties


def on_property_changed(interface, changed, invalidated):
    if interface != 'org.bluez.MediaPlayer1':
        return

    for prop, value in changed.items():
        if prop == 'Status':
            print(f'Playback Status: {value}')
        elif prop == 'Track':
            print('Music Info:')
            for key in ('Title', 'Artist', 'Album'):
                print(f"\t{key}: {value.get(key, '')}")

def on_playback_control(fd, condition):
    str = fd.readline()

    if str.startswith('play'):
        player_iface.Play()
    elif str.startswith('pause'):
        player_iface.Pause()
    elif str.startswith('next'):
        player_iface.Next()
    elif str.startswith('prev'):
        player_iface.Previous()
    elif str.startswith('vol'):
        vol = int(str.split()[1])
        if vol not in range(0, 128):
            print('Possible Values: 0-127')
            return True
        transport_props.Set(
                'org.bluez.MediaTransport1',
                'Volume',
                dbus.UInt16(vol))
    return True

print("test")

dbus.mainloop.glib.DBusGMainLoop(set_as_default=True)
bus = dbus.SystemBus()
obj = bus.get_object('org.bluez', "/")
mgr = dbus.Interface(obj, 'org.freedesktop.DBus.ObjectManager')

# Stop any active bluealsa-aplay processes
os.system("killall bluealsa-aplay")
# Run a new bluealsa-aplay process to stream Bluetooth audio out to speakers
os.system("bluealsa-aplay 00:00:00:00:00:00 &")


# Get necessary interfaces
adapter_iface = find_interface("org.bluez.Adapter1")
adapter_props = find_interface_properties("org.bluez.Adapter1")

player_iface = find_interface("org.bluez.MediaPlayer1")
transport_props = find_interface_properties("org.bluez.MediaTransport1")

# Set Discoverable to True
print("discoverable")
adapter_props.Set(adapter_iface.dbus_interface, "Discoverable", True)

bus.add_signal_receiver(
    on_property_changed,
    bus_name='org.bluez',
    signal_name='PropertiesChanged',
    dbus_interface='org.freedesktop.DBus.Properties')

GLib.MainLoop().run()
