![picture of the finished device](https://raw.githubusercontent.com/muesli4/tiny-hifi/master/images/left%20view%20(b).JPG "The finished device.")

This is a rough guide to create your own Raspberry Pi high fidelity audio system. Although small it features amazing sound quality and shines with all the functionality a modern Linux operating system can deliver. Other devices can be connected with little to no effort and stream their audio to it while playing your favorite music and controlling it from wherever you want.

Unfortunately, there is still a lot of the details missing on this page. I may upgrade it incrementally. If you need to know something specific feel free to create an issue.

# Overview

There are images of the [assembly](https://github.com/muesli4/tiny-hifi/tree/master/images/assembly) but unfortunately I didn't capture any of the soldering involved. There are pictures of the [final result](https://github.com/muesli4/tiny-hifi/tree/master/images) as well. *Note that the graphical user interface is constantly evolving and is no longer up-to-date.*

# Hardware

The root directory mostly contains information about the hardware configuration at the moment. Important components are:

* **Raspberry Pi 2B**
* A touch display (touch controller and 320x240 pixel 2.4" LCD)
* **HiFiBerry AMP+** as sound card and amplifier (there is a newer version!)
* A typical IR receiver that can be used with any IR remote

The circuits for the PWM light control and the IR receiver are only on paper currently but both are really simple.

# Software

[Archlinux ARM](https://archlinuxarm.org/) is used as the operating system. Some of the key components are:

* **libavahi** for *zeroconf* auto-detection of streaming sources
* **pulseaudio** for audio playback and streaming audio over the network (there are a lot of useful plugins you can use)
* [**mpd**](https://github.com/MusicPlayerDaemon/MPD) for playing music
* [**mpd-touch-screen-gui**](https://github.com/muesli4/mpd-touch-screen-gui) as main application for the touch display and as a **mpd** frontend
* **lirc** and **irexec** for handling remote control events
* [**shairport-sync**](https://github.com/mikebrady/shairport-sync) for acting as a sink for Apple AirPlay devices

You can find the installed packages, scripts and configuration files in the [system directory](https://github.com/muesli4/tiny-hifi/tree/master/system).

# Case

The case is made from acrylic glas. The sides are 5mm, the bottom and top 8mm and the front 3mm thick. The front is made from blue UV-active acrylic glas. Almost all parts are connected with screws. For that purpose I tapped a thread into it. Only the front piece is glued to two parts.

I finished the sides with a chisel. The edges are smoothed with a chisel as well at a 45° angle.

It was a lot harder than it looks. Especially the precision to make everything fit is hard to achieve without the right tools. *Also a little hint if you're planning to cut acrylic glas: The buzz saw might shatter your edges. Always use several layers of adhesive tape on both sides of it!*

# Open tasks

* Rubber feet
* Back-cover and air vent holes
* Add more features to the GUI
* Smooth out front piece at the top

# Contact

Let me know if you need any additional information. If there is enough interest I will improve this page or even write a tutorial.
