#!/bin/bash
# Use pacman and then yay (if indicated by user) to install programs

# Define packages to remove/add
pkgs_remove=(palemoon mousepad hexchat delug)

pkgs_core=(
    qutebrowser rofi ranger termdown python-pywal trash-cli
    bluez-utils pulseaudio pulseaudio-bluetooth
    jupyterlab python syncthing firefox chromium
    gimp pdfarranger inkscape transmission-gtk openvpn sshfs
    python-adblock pavucontrol scrot redshift atril
    bash-completion thunderbird speedtest-cli evince
    neovim noto-fonts-emoji unzip
)
pkgs_dev=(
    r code
)
# Bonus
pkgs_bonus=(
    ttf_apple_emoji  xorg-xmodmap
)
pkgs_desktop=(
    logiops
)
pkgs_surface=(

)
pkgs_yay=(
  spotify notion-app zoom nordvpn-bin pulseeffect-legacy-git google-chrome fontpreview
)

# Prompt function for selecting to remove / keep
function ask_yes_no {
    local message=$1
    local options=("${@:2}")  # Store the remaining arguments as an array

    while true; do
        # Print the message and options on the same line
        echo -n "$message (${options[@]}) [Y/n]: "
        read user_input

        # Default to 'y' if the user just presses Enter
        user_input=${user_input:-"y"}

        # Convert the input to lowercase for case-insensitivity
        user_input_lower=$(echo "$user_input" | tr '[:upper:]' '[:lower:]')

        if [ "$user_input_lower" == "y" ]; then
            return 0  # true
        elif [ "$user_input_lower" == "n" ]; then
            return 1  # false
        else
            echo "Invalid input. Please enter 'y' or 'n'."
        fi
    done
}

echo -e "Program installer v0.1.0"
echo -e

# Booleans to track what options install
install_yay=false
install_dev=false
install_desktop=false
install_surface=false

# Prompt user for options
if ask_yes_no "Would you like to install programs for development?" "${pkgs_dev[@]}"; then
    install_dev=true
fi
if ask_yes_no "Would you like to install desktop specific programs?" "${pkgs_desktop[@]}"; then
    install_desktop=true
fi
if ask_yes_no "Would you like to install surface specific programs?" "${pkgs_surface[@]}"; then
    install_surface=true
fi
if ask_yes_no "Would you like to install yay packages?" "${pkgs_yay[@]}"; then
    install_yay=true
fi

# Start installation
echo -e
echo -e "Updating OS."
# use subshell to prevent unnecessary printing
(set -x; sudo pacman -Syu)
echo -e "Removing unused preinstalled programs."
(set -x; sudo pacman -R "${pkgs_remove[@]}")
echo -e
echo -e "Installing core programs."
(set -x; sudo pacman -Su "${pkgs_core[@]}")
echo -e

# Install options based on input
if $install_dev; then
    echo "Installing dev programs."
    (set -x; sudo pacman -Su "${pkgs_dev[@]}")
    echo -e
fi
if $install_desktop; then
    echo "Installing desktop programs."
    (set -x; sudo pacman -Su "${pkgs_desktop[@]}")
    echo -e
fi
if $install_surface; then
    echo "Installing surface programs."
    (set -x; sudo pacman -Su "${pkgs_surface[@]}")
    echo -e
fi
if $install_yay; then
    echo "Installing yay programs."
    (set -x; yay -Su "${pkgs_yay[@]}")
    echo -e
fi