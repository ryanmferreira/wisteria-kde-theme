#!/bin/bash

mkdir -p "$PWD/release"

echo "Starting theme compression..."

if (cd "$PWD/aurorae" && tar -czf "../release/WisteriaKDEAurorae.tar.gz" WisteriaKDE); then
    echo "Aurorae compacted successfully to release/WisteriaKDEAurorae.tar.gz"
else
    echo "Error compacting Aurorae."
fi

if (cd "$PWD/plasma-style" && tar -czf "../release/WisteriaKDEPlasmaStyle.tar.gz" WisteriaKDE); then
    echo "Plasma Style compacted successfully to release/WisteriaKDEPlasmaStyle.tar.gz"
else
    echo "Error compacting Plasma Style."
fi

echo "Files ready."