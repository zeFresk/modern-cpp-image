#!/bin/sh
WLR_BACKENDS=headless WLR_LIBINPUT_NO_DEVICES=1 sway
wayvnc 0.0.0.0
