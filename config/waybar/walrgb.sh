
COLOUR=$(/home/xyris-brain/Apps/walall/brightest_colour.sh)

openrgb --device 1 --mode static --color $COLOUR
openrgb --device 2 --mode static --color $COLOUR

