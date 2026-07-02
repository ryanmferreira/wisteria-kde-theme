#!/bin/bash

echo -e "===================\n Deleting files... \n==================="

shopt -s nocaseglob

if rm -rf "$HOME/.local/share/aurorae/themes/wisteriakde"*; then
    echo "Aurorae folders or symbolic link deleted successfully!"
else
    echo "Failed to delete Aurorae folders or symbolic link."
fi

if rm -rf "$HOME/.local/share/plasma/desktoptheme/wisteriakde"; then
    echo "Plasma Style folders or symbolic link deleted successfully!"
else
    echo "Failed to delete Plasma Style folders or symbolic link."
fi

shopt -u nocaseglob

echo

read -rp "Create symbolic links now? (y/N): " answer

if [[ "$answer" =~ ^[Yy]$ ]]; then
    echo -e "\n"
    cd scripts && bash create-symbolic-links.sh
else
    echo "Skipping symbolic link creation."
fi