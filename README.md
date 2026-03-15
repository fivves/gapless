<img align="left" alt="Project logo" src="data/icons/hicolor/scalable/apps/app.svg" />

# Gapless
Play your music elegantly. (With more features!)


Gapless is a light weight music player written in GTK4, focuses on large music collection.

## Features
- Supports most music file types, Samba and any other remote protocols (depends on GIO and GStreamer).
- Fast loading and parsing thousands of music files in very few seconds, monitor local changes.
- Group and sorts by album/artist/title, shuffle list, full-text searching.
- Fluent adaptive user interface for different screen (Desktop, Tablet, Mobile).
- Gaussian blurred cover as background, follows GNOME light/dark mode.
- Supports creating and editing playlists, drag cover to change order or add to another playlist.
- Supports drag and drop with other apps.
- Supports audio peaks visualizer.
- Supports gapless playback.
- Supports normalizing volume with ReplayGain.
- Supports specified audio sink.
- Supports MPRIS control.

## FreeBSD Dependencies

```bash
pkg install vala meson libadwaita gstreamer1-plugins-all gettext gtk4
```

## How to build 
It is written in Vala, simple and clean code, with few third-party dependencies:

1. Clone the code from github.
2. Install vala, develop packages of gtk4, libadwaita, gstreamer.
3. Run in the project directory:

    `meson setup build --buildtype=release`

    `meson install -C build`

## Change Log
Check the [release tags](https://gitlab.gnome.org/fivves/gapless/-/tags) for change log.
