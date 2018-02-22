#!/bin/bash

export cintiqStylus='Wacom Cintiq 24HD Pen stylus'
export cintiqPad='Wacom Cintiq 24HD Pad pad' 
export cintiqEraser='Wacom Cintiq 24HD Pen eraser'

#xsetwacom get "$cintiqStylus" Area
#xinput_calibrator --device "$cintiqStylus"

xsetwacom set "$cintiqStylus" MapToOutput 'DVI-0'
xsetwacom set "$cintiqStylus" Mode Absolute
#xsetwacom set "$cintiqStylus" Button 1 ''
xsetwacom set "$cintiqStylus" Button 2 'key b'
xsetwacom set "$cintiqStylus" Button 3 2


xsetwacom set "$cintiqEraser" MapToOutput 'DVI-0'
xsetwacom set "$cintiqEraser" Mode Absolute



