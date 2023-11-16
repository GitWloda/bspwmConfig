#!/bin/sh
Bstatus="$(cat /sys/class/power_supply/BAT0/status)"
Bcapacity="$(cat /sys/class/power_supply/BAT0/capacity)"

#if BAT0/status == Discharging > not plugged && discarging
#if BAT0/status == Not chargin > plugged && not charging
#if BAT0/status == Charging > plugged && charging
#
#
#
#cat BAT0/capacity > %bat
#if %bat >= 10% > emergencyBat > !0
#if %bat >= 15% > lowBat > 0
#if %bat >= 25% > notLowBat > 1
#if %bat >= 40% > medLowBat > 2
#if %bat >= 60% > HightBat > 3
#if %bat >= 80% > FullBat > 4

if [ "$Bstatus" == "Discharging" ]; then
	if [ "$Bcapacity" -lt "10" ];then
		echo "! $Bcapacity%"
	elif [ "$Bcapacity" -lt "15" ];then
		echo " $Bcapacity%"	
	elif [ "$Bcapacity" -lt "25" ];then
		echo " $Bcapacity%"
	elif [ "$Bcapacity" -lt "40" ];then
		echo " $Bcapacity%"
	elif [ "$Bcapacity" -lt "60" ];then
		echo " $Bcapacity%"
	elif [ "$Bcapacity" -lt "80" ];then
		echo " $Bcapacity%"
	fi
elif [ "$Bstatus" == "Charging" ];then
	if [ "$Bcapacity" -lt "15" ];then
		echo " $Bcapacity%"	
	elif [ "$Bcapacity" -lt "25" ];then
		echo " $Bcapacity%"
	elif [ "$Bcapacity" -lt "40" ];then
		echo " $Bcapacity%"
	elif [ "$Bcapacity" -lt "60" ];then
		echo " $Bcapacity%"
	elif [ "$Bcapacity" -lt "80" ];then
		echo " $Bcapacity%"
	fi
elif [ "$Bstatus" == "Not charging" ];then
	echo " $Bcapacity%"
fi
