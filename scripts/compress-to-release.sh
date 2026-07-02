#!/bin/bash

mkdir -p "$PWD/release"

echo -e "Starting theme compression...\n"

if (cd "$PWD/aurorae" && tar -czf "../release/WisteriaKDEAurorae.tar.gz" wisteriakde); then
    echo -e "Aurorae compacted successfully to release/WisteriaKDEAurorae.tar.gz"
else
    echo "Error compacting Aurorae."
fi

if (cd "$PWD/plasma-style" && tar -czf "../release/WisteriaKDEPlasmaStyle.tar.gz" wisteriakde); then
    echo -e "Plasma Style compacted successfully to release/WisteriaKDEPlasmaStyle.tar.gz\n"
else
    echo "Error compacting Plasma Style."
fi

echo "Files ready."