This file provides some insight into what the specific files in this directory will do. You should be able to get a working system by first installing all the packages and then copying the contents of this folder into your root directory. (Not tested, do at your own risk!)

# systemd

Various system services are enabled by default:

* avahi-daemon (allows zeroconf discovery)
* irexec (executes actions as a user based on IR remote events)
* lircd (handles IR remote)
* shairport-sync (provides Apple AirPort capability)
* sshd (allows SSH access)

In addition, some services run with user priviledges (whenever possible):

* mpd
* pulseaudio
* startx (starts the X server)

# X11

* In `/etc/X11/xinitrc` the main application to launch is set to `mpd-touch-screen-gui`.
* In `/etc/X11/xorg.conf.d` the touchscreen and normal output device is added.

# modprobe.d and modules.d

* The default audio is disabled (required for the HifiBerry AMP).
* Provide working parameters to use the ILI9341 touchscreen with the `fbtft` module and load it. (This should probably be done with a device tree overlay.)

# pulseaudio

* In `daemon.conf`: Some changes to enable high priority at all times.
* In `default.pa`: Most important are the plugins for auto-discovery via `libavahi` (`module-zeroconf-publish`) and the native protocol to receive audio from another pulseaudio instance via TCP (`module-native-protocol-tcp`).

# makepkg.conf

Faster compiling by using `distccd`.

```
DISTCC_HOSTS="phi"
```

# mkinitcpio.conf

Uncompressed kernel image reduces boot time.

```
COMPRESSION="cat"
```

# fstab

Mount the music collection.

```
LABEL=music     /mnt/music ext4    defaults,user,rw,nofail,noatime,nodiratime,exec     0       0
```

Also mount `/var/log` as `tmpfs` to reduce SD card writes. (`asd` is probably a better choice.)

# shairport-sync.conf

A password has been added.

# lircrc

Provides presets for `irexec` that are executed on IR remote events.
