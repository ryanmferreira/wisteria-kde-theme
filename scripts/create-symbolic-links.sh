#!/bin/bash

AURORAE_SRC="$PWD/aurorae/wisteriakde"
PLASMA_SRC="$PWD/plasma-style/wisteriakde"

if ln -sfn "$AURORAE_SRC" "$HOME/.local/share/aurorae/themes/wisteriakde"; then
    echo -e "Aurorae symbolic link created/updated successfully! Origem: $AURORAE_SRC\n"
else
    echo "Failed to create Aurorae symbolic link."
fi

if ln -sfn "$PLASMA_SRC" "$HOME/.local/share/plasma/desktoptheme/wisteriakde"; then
    echo -e "Plasma Style symbolic link created/updated successfully! Origem: $PLASMA_SRC\n"
else
    echo "Failed to create Plasma Style symbolic link."
fi