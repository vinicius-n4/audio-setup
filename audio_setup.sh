#!/bin/bash

# Check if the user is logged in
# if who | grep -q $USER; then
    # Check if the active profile contains "HiFi"
    # active_profile=$(pactl list cards | grep "Active Profile: " | sed "s/Active Profile: //")

    # if [[ $active_profile == *"HiFi"* ]]; then
        # Save the card name in a variable
        name=$(pactl list cards | grep "Name: " | sed "s/Name: //")
        name=$(echo $name | cut -d' ' -f1)

        # Execute the requested commands
        pactl set-card-profile $name HiFi
        pactl set-sink-volume 0 10%
        pactl set-card-profile $name pro-audio
    # fi
# fi
