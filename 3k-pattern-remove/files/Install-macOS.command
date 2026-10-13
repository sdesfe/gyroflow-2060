#!/bin/bash
# Installs the 3K Pattern Remove v1 DCTL for DaVinci Resolve (macOS).
# Double-click this file. You will be asked for your Mac password.
cd "$(dirname "$0")"
DEST="/Library/Application Support/Blackmagic Design/DaVinci Resolve/LUT/3K Pattern Remove"
sudo mkdir -p "$DEST" && sudo cp "3K Pattern Remove v1.dctl" "$DEST/" && echo "Installed to $DEST" && echo "Restart DaVinci Resolve, then pick DCTL > 3K Pattern Remove > 3K Pattern Remove v1 on a node."
read -n 1 -s -r -p "Press any key to close"
