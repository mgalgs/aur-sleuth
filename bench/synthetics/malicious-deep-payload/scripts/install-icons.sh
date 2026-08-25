#!/bin/sh
# Copy the icon set into the staging directory.
set -e
for size in 16 22 24 32 48 64 128 256; do
    install -Dm644 "data/icons/${size}/bench-widget.png" \
        "${1}/usr/share/icons/hicolor/${size}x${size}/apps/bench-widget.png"
done
