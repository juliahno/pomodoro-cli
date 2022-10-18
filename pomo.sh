#!/bin/bash

session_minutes=${1:-25}
break_minutes=${2:-5}

session_seconds=$((session_minutes * 60))
break_seconds=$((break_minutes * 60))

while true
do
    date '+%H:%M'
    sleep $session_seconds
    zenity --info --title="Pomodoro" --text="End of session.\nOK starts the break."
    
    date '+%H:%M'
    sleep $break_seconds
    zenity --info --title="Pomodoro" --text="End of break.\nOK starts the session."
done
