How to switch lamps by keyboard

virtualenv ~/tmp/yeelight
source ~/tmp/yeelight/bin/activate
pip install yeelight
deactivate

# Yeelight Light Control
# Add it at ~/.config/i3/config
##### bindsym $mod+Shift+i exec ~/tmp/yeelight/bin/python ~/.config/i3/yeelight/desktop-w.py
##### bindsym $mod+Shift+p exec ~/tmp/yeelight/bin/python ~/.config/i3/yeelight/desktop.py
##### bindsym $mod+Shift+o exec ~/tmp/yeelight/bin/python ~/.config/i3/yeelight/kitchen.py
