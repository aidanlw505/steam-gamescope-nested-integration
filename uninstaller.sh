#!/bin/bash

# Check if the script is run with sudo privileges
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Use 'sudo ./uninstaller.sh'"
    exit 1
fi


# Set up variables for this script
STEAMOS_POLKIT_HELPERS_DIR="steamos-polkit-helpers"
USR_BIN_DIR="/usr/bin"
WAYLAND_SESSIONS_DIR="/usr/share/wayland-sessions"
APPLICATIONS_DIR="/usr/share/applications"


# Remove the following scripts to the /usr/bin folder
#
# 'gamescope-session'
sudo rm $USR_BIN_DIR/gamescope-session

# 'steam-gamescope-nested'
sudo rm $USR_BIN_DIR/steam-gamescope-nested

# 'steam-gamescope-nested-deck'
sudo rm $USR_BIN_DIR/steam-gamescope-nested-deck

# 'jupiter-biosupdate'
sudo rm $USR_BIN_DIR/jupiter-biosupdate
sudo rm $USR_BIN_DIR/$STEAMOS_POLKIT_HELPERS_DIR/jupiter-biosupdate

# 'steamos-select-branch'
sudo rm $USR_BIN_DIR/steamos-select-branch

# 'steamos-session-select'
sudo rm $USR_BIN_DIR/steamos-session-select

# 'steamos-update'
sudo rm $USR_BIN_DIR/steamos-update
sudo rm $USR_BIN_DIR/$STEAMOS_POLKIT_HELPERS_DIR/steamos-update

# 'steamos-set-timezone'
sudo rm $USR_BIN_DIR/$STEAMOS_POLKIT_HELPERS_DIR/steamos-set-timezone


# Remove the following scripts to the /usr/share folder
#
# 'steam.desktop'
sudo rm $WAYLAND_SESSIONS_DIR/steam.desktop

# 'steam-gamescope-nested.desktop'
sudo rm $APPLICATIONS_DIR/steam-gamescope-nested.desktop

# 'steam-gamescope-nested-deck.desktop'
sudo rm $APPLICATIONS_DIR/steam-gamescope-nested-deck.desktop


# Remove the 'steamos-polkit-helpers' folder under '/usr/bin'
sudo rm -rf $USR_BIN_DIR/$STEAMOS_POLKIT_HELPERS_DIR
