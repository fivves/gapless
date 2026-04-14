#!/bin/bash

set -euo pipefail

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILD_DIR="${SOURCE_DIR}/builddir"

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root (use sudo)"
    exit 1
fi

if [[ ! -f "${BUILD_DIR}/build.ninja" ]]; then
    echo "Build directory not found at ${BUILD_DIR}"
    echo "Run 'meson setup builddir --buildtype=release' and 'meson compile -C builddir' first."
    exit 1
fi

echo ":: Installing Gapless build dependencies..."
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

echo ":: Installing Gapless with Meson..."
meson install -C "${BUILD_DIR}" --no-rebuild

echo ":: Gapless installed successfully!"
