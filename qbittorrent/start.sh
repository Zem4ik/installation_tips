docker run \
    -it \
    -p 8080:8080 \
    --name qbittorrent \
    -v /data/docker/qbittorrent/downloads/:/downloads \
    qbittorrent-nox 
