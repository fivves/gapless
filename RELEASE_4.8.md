# Gapless 4.8

Released: April 14, 2026

## Highlights

- Click artist, album, and song labels to jump directly to the relevant view from the player and queue.
- Use `Space` as a play/pause hotkey without interfering with typing in search fields.
- Playlist drag-and-drop reordering behaves more predictably, with smoother scroll handling while rearranging items.
- Artist and album grid view preferences are now configurable separately.
- Artist sorting is more natural, especially for names with a leading `The`.
- Install and build scripts now align with the Meson `builddir` workflow.

## Changes Since 4.7

### Navigation and Playback

- Added click-to-navigate behavior for artist, album, and song labels.
- Open now playing album clicks in the album view.
- Added a global `Space` play/pause hotkey.
- Fixed the `Space` hotkey so it no longer triggers while typing in search fields.
- Added artist navigation from the home/playing queue list.

### Library and Playlist Behavior

- Improved playlist reorder scrolling and drag-and-drop stability.
- Disabled unwanted automatic scrollbar changes during drag and drop.
- Normalized alphabetical artist sorting.

### Preferences

- Split the old combined grid view preference into separate artist and album settings.
- Added migration logic so existing users keep their current grid preference.

### Build, Install, and Docs

- Switched the installer to use `meson install`.
- Fixed the install script to look for `builddir`.
- Updated build and usage documentation in the README.

## Full Commit List

- `56012c7` Update README.md
- `bf9f4a5` Update README.md
- `6d4aa6d` Update README.md
- `510c4fa` Fix: Disable automatic scrollbar changes during drag and drop
- `1762168` feat: Navigate to artist, album, or song on click
- `c77250b` Split artist and album grid view settings
- `e3aeb1d` Normalize alphabetical sorting for artists
- `594ee46` Fix installer to use meson install
- `db7fab9` Update README.md
- `92104e0` Update README.md
- `15a9438` Fix playlist reorder scroll behavior
- `b8549f2` Open now playing album clicks in album view
- `7417876` Add global space bar hotkey for play/pause
- `dd65e12` Fix spacebar playback hotkey and add artist navigation
- `faa92c2` Fix install script builddir path
