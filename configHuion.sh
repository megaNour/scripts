#!/bin/bash
if [[ ! -z $1 ]]
then
    screen="DVI-$1"
else
    screen="DVI-0"
fi

stylus="$(xsetwacom --list |  sed -n 's/Huion Q11K[^0-9]*\([0-9]*\).*/\1/p')"
echo $stylus

#export intuosTouch='Wacom Intuos5 touch M Finger touch'
#intuosPad="$(xsetwacom --list |  sed -n 's/.*Wacom Intuos.*pad.*id: \([0-9]*\).*/\1/p')"
#export intuosCursor='Wacom Intuos5 touch M Pen cursor'
for word in $stylus
do
	echo $word ": stylus"
	xsetwacom set "$word" Button 2 'key b'
	xsetwacom set "$word" Button 3 3

	xsetwacom set "$word" rotate half
	xsetwacom set "$word" MapToOutput "$screen"
	xsetwacom set "$word" Mode Absolute
done
#3 = click milieu
#2 = click droit
#1 = click gauche

<<'coucouComment'
xsetwacom set 21 touch off
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
coucouComment



echo "mapped to screen: $screen"

#xsetwacom set "$intuosTouch" rotate half
#xsetwacom set "$intuosTouch" MapToOutput 'DVI-0'
#xsetwacom set "$intuosTouch" Mode Absolute
