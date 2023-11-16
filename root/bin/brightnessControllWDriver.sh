light=$(cat /sys/class/backlight/nvidia_wmi_ec_backlight/brightness)
if [ $1 == D ]; then
	if [ "$light" -gt "9" ]; then
		sh -c 'echo $(($(cat /sys/class/backlight/nvidia_wmi_ec_backlight/brightness)-5)) > /sys/class/backlight/nvidia_wmi_ec_backlight/brightness'
	fi
elif [ $1 = U ]; then
	if [ "$light" -lt "99" ]; then
		sh -c 'echo $(($(cat /sys/class/backlight/nvidia_wmi_ec_backlight/brightness)+5)) > /sys/class/backlight/nvidia_wmi_ec_backlight/brightness'
	fi
elif [ $1 = G ]; then
	echo "LUM: $light"
fi

