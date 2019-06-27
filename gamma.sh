#!/bin/bash

var1=$(xrandr --verbose |head -6|tail -1)
var2="	Gamma:      1.3:1.3:1.3"

if [ "$var1" == "$var2" ]
then
	notify-send "$var1" #"Adjusting Gamma: " #xrandr --verbose |head -6|tail -1
elif [ "$var1" != "$var2" ]
then
	notify-send "Adjusting Gamma: "
	
	xrandr --output eDP-1 --gamma .99:.99:.99
	sleep .1
	xrandr --output eDP-1 --gamma .98:.98:.98
	sleep .1
	xrandr --output eDP-1 --gamma .97:.97:.97
	sleep .1
	xrandr --output eDP-1 --gamma .96:.96:.96
	sleep .1
	xrandr --output eDP-1 --gamma .95:.95:.95
	sleep .1
	xrandr --output eDP-1 --gamma .94:.94:.94
	sleep .1
	xrandr --output eDP-1 --gamma .93:.93:.93
	sleep .1
	xrandr --output eDP-1 --gamma .92:.92:.92
	sleep .1
	xrandr --output eDP-1 --gamma .91:.91:.91
	sleep .1
	xrandr --output eDP-1 --gamma .90:.90:.90
	sleep .1
	xrandr --output eDP-1 --gamma .89:.89:.89
	sleep .1
	xrandr --output eDP-1 --gamma .88:.88:.88
	sleep .1
	xrandr --output eDP-1 --gamma .87:.87:.87
	sleep .1
	xrandr --output eDP-1 --gamma .86:.86:.86
	sleep .1
	xrandr --output eDP-1 --gamma .85:.85:.85
	sleep .1
	xrandr --output eDP-1 --gamma .84:.84:.84
	sleep .1
	xrandr --output eDP-1 --gamma .83:.83:.83
	sleep .1
	xrandr --output eDP-1 --gamma .82:.82:.82
	sleep .1
	xrandr --output eDP-1 --gamma .81:.81:.81
	sleep .1
	xrandr --output eDP-1 --gamma .80:.80:.80
	sleep .1
	xrandr --output eDP-1 --gamma .79:.79:.79
	sleep .1
	xrandr --output eDP-1 --gamma .78:.78:.78
	sleep .1
	xrandr --output eDP-1 --gamma .777:.777:.777

	notify-send "Gamma Set"
else
	echo "well crud"
fi