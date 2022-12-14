from    ubuntu:latest

COPY    src/terraria-server-14481.zip    /root/terraria-server-14481.zip
COPY    src/usr/bin/entrypoint          /usr/bin/entrypoint
COPY    src/usr/bin/terraria_conf.py    /usr/bin/terraria_conf.py

RUN apt update && \
    apt upgrade -y && \
    apt install -y \
        vim \
        unzip \
        python3 && \
    cd /root && \
    unzip terraria-server-14481.zip && \
    cd 14481/Linux && \
    chmod +x TerrariaServer*

VOLUME /root/.local/share/Terraria

ENTRYPOINT [ "entrypoint" ]
#ENTRYPOINT [ "bash" ]
