# https://meshtastic.org/docs/development/firmware/build/
init:
	git submodule update --init

update:
	git pull --recurse-submodules

heltec3:
	pio run -e heltec-v3 -t upload
    # Open the newly cloned folder in Visual Studio Code. If you do this for the first time, this can take quite some while as PlatformIO will download all the necessary tooling and libraries. Also if platformio is not installed, VSCode will ask you to install it, probably requiring a restart of the program.
    # To select the device you wish to build, open your command palette:
    #    Windows: Ctrl + Shift + P
    #    Mac: command + Shift + P
    # Enter: PlatformIO: Pick Project Environment and select your target. (heltec-v3)
    # To build the firmware, simply run PlatformIO: Build from your command palette.
    # Finally, flash the firmware to your device by running PlatformIO: Upload