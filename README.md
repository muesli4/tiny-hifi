# Overview

 There are images of the assembly (but not any soldering) and the final result.

# Hardware

The root directory mostly contains information about the hardware configuration at the moment. Important components are:

* **Raspberry Pi 2B**
* A touch display (touch controller and 320x240 pixel 2.4" LCD)
* **HiFiBerry AMP+** as sound card and amplifier
* A typical IR receiver to use a remote control

The circuits for the PWM light control and the IR receiver are only on paper currently (both are really simple).

# Software

A custom-build Archlinux is used as operating system. Some of the key components are:

* **libavahi** for *zeroconf* auto-detection of streaming sources
* **pulseaudio** for streaming audio over ethernet
* **mpd** for playing music
* ![**mpd-touch-screen-gui**](https://github.com/muesli4/mpd-touch-screen-gui) as main application for the touch display
* **lirc** and **irexec** for handling a remote control

# Open tasks

* Rubber feet
* Back-cover and air vent holes
* Add more features to the GUI

# Contact

Let me know if you need any additional information. If there is enough interest I will write a tutorial.
