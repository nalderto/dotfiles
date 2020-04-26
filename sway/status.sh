#!/bin/bash

date_formatted=$(date "+%a %Y-%m-%d %l:%M %p")

volume=$(pactl list sinks | grep Volume | head -n1 | awk '{print $5}')
audio_info=$(pactl list sinks | grep Mute | awk -v vol="${volume}" '{print $2=="no"? "🔉 " vol : "🔇 " vol}')

battery=$(acpi -b | grep -E -o '[0-9][0-9]?%' | tr '\n' ' ')

echo "BAT: $battery| $audio_info | $date_formatted"

