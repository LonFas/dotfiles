#!/usr/bin/env python3
from yeelight import Bulb
bulb_desktop = Bulb("192.168.1.253")
# bulb_desktop.set_rgb(245, 230, 245)
# red green blue
bulb_desktop.set_color_temp(4468)
bulb_desktop.set_brightness(100)
