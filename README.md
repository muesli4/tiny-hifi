![picture of the finished device](https://raw.githubusercontent.com/muesli4/tiny-hifi/master/images/left%20view%20(b).JPG "The finished device.")

This is a rough guide to create your own Raspberry Pi high fidelity audio system. Although small it features amazing sound quality and shines with all the functionality a modern Linux operating system can deliver. Other devices can be connected with little to no effort and stream their audio to it while playing your favorite music and controlling it from wherever you want.

Unfortunately, there is still a lot of the details missing. I may upgrade it incrementally. If you need to know something specific feel free to create an issue.

# Overview

 There are images of the assembly (but not any soldering) and the final result.

# Hardware

The root directory mostly contains information about the hardware configuration at the moment. Important components are:

* **Raspberry Pi 2B**
* A touch display (touch controller and 320x240 pixel 2.4" LCD)
* **HiFiBerry AMP+** as sound card and amplifier
* A typical IR receiver that can be used with any IR remote

The circuits for the PWM light control and the IR receiver are only on paper currently but both are really simple.

# Software

Archlinux is used as the operating system. Some of the key components are:

* **libavahi** for *zeroconf* auto-detection of streaming sources
* **pulseaudio** for audio playback and streaming audio over the network (there are a lot of useful plugins you can use)
* **mpd** for playing music
* ![**mpd-touch-screen-gui**](https://github.com/muesli4/mpd-touch-screen-gui) as main application for the touch display and as a **mpd** frontend
* **lirc** and **irexec** for handling remote control events
* **shairplay-sync** for acting as a sink for Apple AirPlay devices

# Open tasks

* Rubber feet
* Back-cover and air vent holes
* Add more features to the GUI

# Contact

Let me know if you need any additional information. If there is enough interest I will improve this page or even write a tutorial.
