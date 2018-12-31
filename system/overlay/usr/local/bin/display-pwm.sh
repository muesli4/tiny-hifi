#!/bin/bash

if [ $# -eq 1 ]; then
    #export WIRINGPI_GPIOMEM=1
    sudo gpio -g pwm 12 $1
else
    echo "Usage: display-pwm.sh VALUE"
    echo
    echo "    VALUE - A value between 0 (on) and 1047 (off)"
    echo
fi
