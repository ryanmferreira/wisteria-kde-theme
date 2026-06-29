#!/bin/bash

if ln -sfn "$PWD/aurorae/wisteriakde" "$HOME/.local/share/aurorae/themes/wisteriakde"; then
    echo "Aurorae symbolic link created/updated successfully!"
else
    echo "Failed to create Aurorae symbolic link."
fi

if ln -sfn "$PWD/plasma-style/wisteriakde" "$HOME/.local/share/plasma/desktoptheme/wisteriakde"; then
    echo "Plasma Style symbolic link created/updated successfully!"
else
    echo "Failed to create Plasma Style symbolic link."
fi