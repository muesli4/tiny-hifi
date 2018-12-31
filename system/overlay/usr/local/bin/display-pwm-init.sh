#!/bin/bash

#export WIRINGPI_GPIOMEM=1

# export pin 12 (which supports pwm)
sudo gpio export 12 out

# set mode to pwm
sudo gpio -g mode 12 pwm

# completely disabled
sudo gpio -g pwm 12 1024

