#!/bin/bash
echo "Your PC temperature is"
while [ true ]
do
clear
date

echo "CPU Temperature: "

cat /sys/class/hwmon/hwmon2/temp1_input

echo "Ambient Temperature: "

cat /sys/class/hwmon/hwmon2/temp2_input

echo "SODDIM Temperature: "

cat /sys/class/hwmon/hwmon2/temp3_input

if ! read -sn 1 -t 1 cmd ; then
continue
fi

if [ $cmd == 'q' ] ; then
break
fi

done
exit
