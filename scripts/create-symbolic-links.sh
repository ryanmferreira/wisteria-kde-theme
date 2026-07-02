#!/bin/bash

echo -e "============================\n Creating symbolic links... \n============================"

THISLOCATION=".."

AURORAE_SRC="$THISLOCATION/aurorae/wisteriakde"
PLASMA_SRC="$THISLOCATION/plasma-style/wisteriakde"

if ln -sfn "$AURORAE_SRC" "$HOME/.local/share/aurorae/themes/wisteriakde"; then
    echo "Aurorae symbolic link created/updated successfully"
else
    echo "Failed to create Aurorae symbolic link"
fi

if ln -sfn "$PLASMA_SRC" "$HOME/.local/share/plasma/desktoptheme/wisteriakde"; then
    echo "Plasma Style symbolic link created/updated successfully"
else
    echo "Failed to create Plasma Style symbolic link"
fi