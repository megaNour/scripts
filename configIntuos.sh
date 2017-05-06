export intuosStylus='Wacom Intuos5 touch M Pen stylus'
export intuosEraser='Wacom Intuos5 touch M Pen eraser'
export intuosTouch='Wacom Intuos5 touch M Finger touch'
export intuosPad='Wacom Intuos5 touch M Pad pad'
#export intuosCursor='Wacom Intuos5 touch M Pen cursor'

xsetwacom set "$intuosStylus" Button 2 'key b'
xsetwacom set "$intuosStylus" Button 3 2

xsetwacom set "$intuosTouch" touch off

xsetwacom set "$intuosPad" button 1 0 #ring button
#j'ai commenté les vrais id des bouttons de 1 à 8 de bas en haut
xsetwacom set "$intuosPad" button 13	0 #boutton 8
xsetwacom set "$intuosPad" button 12	0 #boutton 7
xsetwacom set "$intuosPad" button 11	0 #boutton 6
xsetwacom set "$intuosPad" button 10	0 #boutton 5
xsetwacom set "$intuosPad" button 9	0 #boutton 4
xsetwacom set "$intuosPad" button 8	0 #boutton 3
xsetwacom set "$intuosPad" button 3	0 #boutton 2
xsetwacom set "$intuosPad" button 2	0 #boutton 1
xsetwacom set "$intuosPad" abswheelup	0 #touch ring up
xsetwacom set "$intuosPad" abswheeldown	0 #touch ring down
#bouttons perdus
#xsetwacom set "$intuosPad" button 4 0 #??
#xsetwacom set "$intuosPad" button 5 0 #??
#xsetwacom set "$intuosPad" button 6 0 #??
#xsetwacom set "$intuosPad" button 7 0 #??

xsetwacom set "$intuosStylus" rotate half
xsetwacom set "$intuosStylus" MapToOutput 'DVI-1'
xsetwacom set "$intuosStylus" Mode Absolute

xsetwacom set "$intuosEraser" rotate half
xsetwacom set "$intuosEraser" MapToOutput 'DVI-1'
xsetwacom set "$intuosEraser" Mode Absolute
