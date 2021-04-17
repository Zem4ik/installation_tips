from archlinux:base

run pacman -Syy \
    && pacman -S --noconfirm icu \
    && pacman -S --noconfirm qbittorrent-nox

entrypoint /bin/bash
# cmd ["qbittorrent-nox"]