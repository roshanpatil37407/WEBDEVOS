#!/bin/bash
T=$(date + "%H") 
echo "Current time is $T"
if [$T -gt 6 -a $T-le 12 ]
then
echo "Good mornning all of you"
elif [ $T -gt 12 -a $T -le ]
then
echo "Good Afternoon"
else [$T -gt 16 -a $T le 20 ]
echo "Good Nigth"
fi