#!/bin/bash
# a little experiment to see if I can get my keyboard to flash in a pwm manner. I have a Dell and you only get two levels of brightness. Unfortuantely, however, I have hit a lower limit at this point and while the pulsing works it simply isn't consistent enough
while :
do
	xdotool key XF86KbdLightOnOff
	#sleep .015
	xdotool key XF86KbdLightOnOff
	sleep .015
done