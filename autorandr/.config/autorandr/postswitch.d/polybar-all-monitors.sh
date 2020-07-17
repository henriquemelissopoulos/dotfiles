#!/bin/bash
# Script to configure polybar on monitor changes

# Kill previous bars
killall -q polybar

# Add monitor listed as PRIMARY as the first
arr=(`polybar --list-monitors | grep primary | cut -d":" -f1`)

# Then add the others
arr+=(`polybar --list-monitors | grep -v primary | cut -d":" -f1`)

dunstify -a "hmmm" "polybar changed" 

for i in "${!arr[@]}"
do
    monitor=${arr[$i]}

    # The first monitor will always be considered primary
    # so doesn't matter if we really catch a monitor marked as primary
    bar=$([ $i == 0 ] && echo "top-primary" || echo "top")
    MONITOR=$monitor polybar --reload $bar &
done