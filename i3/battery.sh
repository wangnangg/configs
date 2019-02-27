#!/bin/bash

bat=$(acpi -b | awk '{print $4}' | sed 's/[^0-9]*//g')
charge=$(acpi -b | awk '{print $3}' | sed 's/[,]*//g')
if [ $charge != Discharging ]
then
    printf ""
fi
if [ $bat -gt 90 ]
then
     echo 
elif [ $bat -gt 60 ]
then
     echo 
elif [ $bat -gt 40 ]
then
     echo 
elif [ $bat -gt 10 ]
then
     echo 
else
    echo 
fi
