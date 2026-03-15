#!/bin/bash

# Install script for Gapless Music Player

set -e

APP_NAME="gapless"
APP_ID="com.github.fivves.gapless"
SOURCE_DIR="/home/eddie/gapless"
BIN_SRC="${SOURCE_DIR}/build/src/gapless"
ICON_SRC="${SOURCE_DIR}/data/icons/com.github.fivves.gapless.Source.svg"

# Check for root
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root (use sudo)"
    exit 1
fi

echo ":: Installing Gapless..."

# Install dependencies
echo ":: Installing dependencies..."
pacman -S --needed --noconfirm \
    dconf \
    gdk-pixbuf2 \
    glib2 \
    glibc \
    graphene \
    gst-plugins-base-libs \
    gstreamer \
    gtk4 \
    hicolor-icon-theme \
    libadwaita \
    pango

# Install binary
echo ":: Installing binary..."
install -Dm755 "${BIN_SRC}" "/usr/local/bin/${APP_NAME}"

# Install icon
echo ":: Installing icon..."
install -Dm644 "${ICON_SRC}" "/usr/share/icons/hicolor/scalable/apps/${APP_ID}.svg"

# Create .desktop file
echo ":: Creating desktop entry..."
install -Dm644 /dev/stdin "/usr/share/applications/${APP_ID}.desktop" <<EOF
[Desktop Entry]
Name=Gapless
Comment=A music player for GNOME
Exec=gapless
Icon=${APP_ID}
Terminal=false
Type=Application
Categories=Audio;Music;Player;AudioVideo;GTK;
Keywords=Music;Player;Audio;
StartupNotify=true
EOF

# Update icon cache
echo ":: Updating icon cache..."
gtk-update-icon-cache -f -t /usr/share/icons/hicolor/ 2>/dev/null || true

# Update desktop database
echo ":: Updating desktop database..."
update-desktop-database /usr/share/applications/ 2>/dev/null || true

echo ":: Gapless installed successfully!"