
Debian
====================
This directory contains files used to package totumd/totum-qt
for Debian-based Linux systems. If you compile totumd/totum-qt yourself, there are some useful files here.

## totum: URI support ##


totum-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install totum-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your totumqt binary to `/usr/bin`
and the `../../share/pixmaps/totum128.png` to `/usr/share/pixmaps`

totum-qt.protocol (KDE)

