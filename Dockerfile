from    ubuntu:latest

COPY    src/terraria-server-1448.zip    /root/terraria-server-1448.zip
COPY    src/usr/bin/entrypoint          /usr/bin/entrypoint

#ENTRYPOINT [ "entrypoint" ]
ENTRYPOINT [ "bash" ]
