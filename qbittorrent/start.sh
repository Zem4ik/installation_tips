#!/usr/bin/env bash

docker_group_id=$(cut -d: -f3 < <(getent group docker))
docker run -d \
    --name qbittorrent \
    -e PUID=0 \
    -e PGID="$docker_group_id" \
    -e TZ=Europe/Moscow \
    -p 6881:6881 \
    -p 6881:6881/udp \
    -p 8081:8081 \
    -e WEBUI_PORT=8081 \
    -v /data/docker/qbittorrent/config:/config \
    -v /data/docker/qbittorrent/downloads/:/downloads \
    --restart unless-stopped \
    ghcr.io/linuxserver/qbittorrent
