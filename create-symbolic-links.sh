#!/bin/bash

if ln -sfn "$PWD/aurorae/WisteriaKDE" "$HOME/.local/share/aurorae/themes/WisteriaKDE"; then
    echo "Aurorae symbolic link created/updated successfully!"
else
    echo "Failed to create Aurorae symbolic link."
fi

if ln -sfn "$PWD/plasma-style/WisteriaKDE" "$HOME/.local/share/plasma/desktoptheme/WisteriaKDE"; then
    echo "Plasma Style symbolic link created/updated successfully!"
else
    echo "Failed to create Plasma Style symbolic link."
fi