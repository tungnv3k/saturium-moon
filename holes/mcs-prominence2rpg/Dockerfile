FROM itzg/minecraft-server:latest

WORKDIR /setup

COPY p2-data/ ./
COPY setup.sh ./

ARG SERVER_MODPACK_URL
RUN /bin/bash ./setup.sh $SERVER_MODPACK_URL

WORKDIR /data

COPY entrypoint.sh /
ENTRYPOINT [ "/bin/bash", "/entrypoint.sh" ]
