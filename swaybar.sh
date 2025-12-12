#!/bin/bash
while true; do
	battery_capacity=$(cat /sys/class/power_supply/BAT*/capacity)
	wifi_ssid=$(/usr/sbin/iw dev wlp1s0 link | grep "SSID" | awk '{print $2}')
	wifi_signal=$(/usr/sbin/iw dev wlp1s0 link | grep "signal" | awk '{print int($2)}')

	echo "$wifi_ssid:$wifi_signal dBm | $battery_capacity% | $(date)"
	sleep 1
done
