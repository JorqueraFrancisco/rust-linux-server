FROM ubuntu:22.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget lib32gcc-s1 tmux screen curl libsqlite3-0 && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -m steam

USER steam

# Descarga e instala SteamCMD en su propia capa
RUN mkdir -p /home/steam/rust/steamcmd && \
    cd /home/steam/rust/steamcmd && \
    curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -

# Actualiza y valida la aplicación Rust utilizando SteamCMD en una capa separada
RUN /home/steam/rust/steamcmd/steamcmd.sh \
    +force_install_dir /home/steam/rust \
    +login anonymous \
    +app_update 258550 validate \
    +quit

# Establece el directorio de trabajo en /home/steam/rust
WORKDIR /home/steam/rust

COPY ./etc/entry.sh /home/steam/rust/

USER root
RUN chown steam:steam /home/steam/rust/entry.sh && \
    chmod +x /home/steam/rust/entry.sh
USER steam

CMD ["./entry.sh"]
