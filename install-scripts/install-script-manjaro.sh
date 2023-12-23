#!/bin/bash
echo -e "${bold}Maeve's Manjaro i3 Setup Script - v0.1.0"
function show_menu {
    PS3="Select mode (1-3): "
    options=("Install programs" "Install dotfiles" "Install both")

    select choice in "${options[@]}"; do
        case $REPLY in
            1)
                echo "You selected Option 1"
                ./scripts/install-programs.sh
                break
                ;;
            2)
                echo "You selected Option 2"
                ./scripts/dotfiles.sh
                break
                ;;
            3)
                ./scripts/install-programs.sh
                ./scripts/dotfiles.sh
                break
                ;;
            *)
                echo "Invalid selection. Please enter a number between 1 and 3."
                ;;
        esac
    done
}

show_menu
# Reminders & additional install instructions
echo -e "Remaining steps: \n - Copy over SSH key \n - Install libreoffice dictionary \n - Configure syncthing"
echo -e "Use <wal -i> on background image of choice to set theme