#!/bin/bash

# Check if the script is run with sudo privileges
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Use 'sudo ./installer.sh'"
    exit 1
fi


# Set up variables for this script
SCRIPT_PERMISSIONS="755"
SESSION_FILE_PERMISSIONS="644"
STEAMOS_POLKIT_HELPERS_DIR="steamos-polkit-helpers"
USR_BIN_DIR="/usr/bin"
WAYLAND_SESSIONS_DIR="/usr/share/wayland-sessions"
APPLICATIONS_DIR="/usr/share/applications"


# Ensure the scripts have the correct permissions set
#
# 'gamescope-session'
chmod $SCRIPT_PERMISSIONS .$USR_BIN_DIR/gamescope-session

# 'steam-gamescope-nested'
chmod $SCRIPT_PERMISSIONS .$USR_BIN_DIR/steam-gamescope-nested

# 'steam-gamescope-nested-deck'
chmod $SCRIPT_PERMISSIONS .$USR_BIN_DIR/steam-gamescope-nested-deck

# 'jupiter-biosupdate'
chmod $SCRIPT_PERMISSIONS .$USR_BIN_DIR/jupiter-biosupdate
chmod $SCRIPT_PERMISSIONS .$USR_BIN_DIR/$STEAMOS_POLKIT_HELPERS_DIR/jupiter-biosupdate

# 'steamos-select-branch'
chmod $SCRIPT_PERMISSIONS .$USR_BIN_DIR/steamos-select-branch

# 'steamos-session-select'
chmod $SCRIPT_PERMISSIONS .$USR_BIN_DIR/steamos-session-select

# 'steamos-update'
chmod $SCRIPT_PERMISSIONS .$USR_BIN_DIR/steamos-update
chmod $SCRIPT_PERMISSIONS .$USR_BIN_DIR/$STEAMOS_POLKIT_HELPERS_DIR/steamos-update

# 'steamos-set-timezone'
chmod $SCRIPT_PERMISSIONS .$USR_BIN_DIR/$STEAMOS_POLKIT_HELPERS_DIR/steamos-set-timezone

# Ensure the session file has the correct permissions set
#
# 'steam.desktop'
chmod $SESSION_FILE_PERMISSIONS .$WAYLAND_SESSIONS_DIR/steam.desktop

# Ensure the desktop application entry has the correct permissions set
#
# 'steam-gamescope-nested.desktop'
chmod $SESSION_FILE_PERMISSIONS .$APPLICATIONS_DIR/steam-gamescope-nested.desktop

# 'steam-gamescope-nested-deck.desktop'
chmod $SESSION_FILE_PERMISSIONS .$APPLICATIONS_DIR/steam-gamescope-nested-deck.desktop


# Create a 'steamos-polkit-helpers' folder under '/usr/bin'
sudo mkdir $USR_BIN_DIR/$STEAMOS_POLKIT_HELPERS_DIR


# Copy the following scripts to the /usr/bin folder
#
# 'gamescope-session'
sudo cp .$USR_BIN_DIR/gamescope-session \
    $USR_BIN_DIR/gamescope-session

# 'steam-gamescope-nested'
sudo cp .$USR_BIN_DIR/steam-gamescope-nested \
    $USR_BIN_DIR/steam-gamescope-nested

# 'steam-gamescope-nested-deck'
sudo cp .$USR_BIN_DIR/steam-gamescope-nested-deck \
    $USR_BIN_DIR/steam-gamescope-nested-deck

# 'jupiter-biosupdate'
sudo cp .$USR_BIN_DIR/jupiter-biosupdate \
    $USR_BIN_DIR/jupiter-biosupdate
sudo cp .$USR_BIN_DIR/$STEAMOS_POLKIT_HELPERS_DIR/jupiter-biosupdate \
    $USR_BIN_DIR/$STEAMOS_POLKIT_HELPERS_DIR/jupiter-biosupdate

# 'steamos-select-branch'
sudo cp .$USR_BIN_DIR/steamos-select-branch \
    $USR_BIN_DIR/steamos-select-branch

# 'steamos-session-select'
sudo cp .$USR_BIN_DIR/steamos-session-select \
    $USR_BIN_DIR/steamos-session-select

# 'steamos-update'
sudo cp .$USR_BIN_DIR/steamos-update \
    $USR_BIN_DIR/steamos-update
sudo cp .$USR_BIN_DIR/$STEAMOS_POLKIT_HELPERS_DIR/steamos-update \
    $USR_BIN_DIR/$STEAMOS_POLKIT_HELPERS_DIR/steamos-update

# 'steamos-set-timezone'
sudo cp .$USR_BIN_DIR/$STEAMOS_POLKIT_HELPERS_DIR/steamos-set-timezone \
    $USR_BIN_DIR/$STEAMOS_POLKIT_HELPERS_DIR/steamos-set-timezone


# Copy the following scripts to the /usr/share folder
#
# 'steam.desktop'
sudo cp .$WAYLAND_SESSIONS_DIR/steam.desktop \
    $WAYLAND_SESSIONS_DIR/steam.desktop

# 'steam-gamescope-nested.desktop'
sudo mkdir -p $APPLICATIONS_DIR
sudo cp .$APPLICATIONS_DIR/steam-gamescope-nested.desktop \
    $APPLICATIONS_DIR/steam-gamescope-nested.desktop

# 'steam-gamescope-nested-deck.desktop'
sudo cp .$APPLICATIONS_DIR/steam-gamescope-nested-deck.desktop \
    $APPLICATIONS_DIR/steam-gamescope-nested-deck.desktop
