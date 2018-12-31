#!/bin/bash
XDG_RUNTIME_DIR="/run/user/1000"
export XDG_RUNTIME_DIR
espeak -v "$1" -s 262 -a 10 -g 12 --stdout | paplay
