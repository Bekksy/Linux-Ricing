#!/bin/bash

# Akkustände
capacity1=$(cat /sys/class/power_supply/BAT1/capacity)
capacity2=$(cat /sys/class/power_supply/BAT2/capacity)

# Ladezustände
status1=$(cat /sys/class/power_supply/BAT1/status)
status2=$(cat /sys/class/power_supply/BAT2/status)

# Mittelwert
avg=$(( ($capacity1 + $capacity2) / 2 ))

## sufacebook version :
if [[ "$status1" == "Charging" || "$status2" == "Charging" ]]; then
    icon="󱒁 󰂄"
elif (( $avg >= 70 )); then
    icon="🌿 󱊣"
elif (( $avg >=50 )); then
    icon="🌿 󱊢"
elif (( $avg >= 10 )); then
    icon="🍂 󱊡"
else
    icon="🥀 󰂎"
fi



bar_length=10
filled=$(( $avg * $bar_length / 100 ))
empty=$(( $bar_length - $filled ))

bar="["
for ((i = 0; i < $filled; i++)); do
  bar+="▓"
done
for ((i = 0; i < $empty; i++)); do
  bar+="░"
done
bar+="]"

tooltip="BAT1: $capacity1%\n BAT2: $capacity2%"

# Anzeige
 printf '{"text": "%s %s %s%%"}\n' "$icon" "$bar" "$avg" "$tooltip"
