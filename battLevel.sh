#!/bin/bash
#not my code, originally from https://askubuntu.com/questions/837248/low-battery-notification
get_percentage()
{
     # Note, | \ must have only new line after it, no space
     upower --show-info /org/freedesktop/UPower/devices/battery_BAT1 |\
     awk '/percentage/{gsub(/\%/,""); print $2}'
}

main()
{
    while true
    do
        pcent=$(get_percentage)
		[[$pcent -le 25]] && notify-send "Battery at $pcent" "Please plug in charger"
		sleep 60 # check every minute
    done
}
main