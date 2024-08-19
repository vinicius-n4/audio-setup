# Script to Switch PulseAudio Profile and Adjust Volume

This script is designed to check if a specific PulseAudio profile is active and then switch to another profile while adjusting the volume. The script is written in Bash and is meant to be executed on Linux systems where PulseAudio is used as the sound server.

## How It Works

1. **Check Active Profile (Commented Out)**:
   - The script first checks if the user is logged in using the `who` command and if the user's active PulseAudio profile contains "HiFi". However, these checks are currently commented out.
   
2. **Retrieve and Store the Card Name**:
   - The script retrieves the name of the audio card using `pactl list cards` and stores it in a variable named `name`. The card name is extracted by filtering the output of `pactl` and processing it with `sed` and `cut` commands.

3. **Execute Audio Profile and Volume Commands**:
   - The script switches the audio card profile to "HiFi" using the `pactl set-card-profile` command.
   - It then sets the sink volume to 10% using the `pactl set-sink-volume` command.
   - Finally, the script switches the card profile back to "pro-audio" using `pactl set-card-profile`.

## Requirements

- **PulseAudio**: The script relies on PulseAudio commands (`pactl`), so PulseAudio must be installed and running on the system.

## Usage

1. **Make the Script Executable**:
   ```bash
   chmod +x script_name.sh

2. **Run the Script:**
   ```bash
   ./script_name.sh

## Notes

- The script has several lines commented out, which include checks for the logged-in user and the active profile containing "HiFi". If you want to use these checks, you can uncomment those lines.

- Make sure to have appropriate permissions to execute `pactl` commands.

## Customization

- **Profile Names**: If your audio profiles differ from "HiFi" and "pro-audio", modify the script accordingly.

- **Volume Setting**: The volume is currently set to 10%. You can adjust this value as per your preference.

## Disclaimer

This script assumes a basic understanding of PulseAudio and Bash scripting. Use with caution, as improper use of `pactl` can affect your system's audio configuration.
