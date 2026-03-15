#!/bin/bash

# Uninstall script for Gapless Music Player

set -e

APP_NAME="gapless"
APP_ID="com.github.fivves.gapless"

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root (use sudo)"
    exit 1
fi

echo ":: Uninstalling Gapless..."

rm -f "/usr/local/bin/${APP_NAME}"
rm -f "/usr/share/icons/hicolor/scalable/apps/${APP_ID}.svg"
rm -f "/usr/share/applications/${APP_ID}.desktop"

gtk-update-icon-cache -f -t /usr/share/icons/hicolor/ 2>/dev/null || true
update-desktop-database /usr/share/applications/ 2>/dev/null || true

echo ":: Gapless uninstalled."