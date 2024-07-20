FROM debian:bullseye-slim

RUN apt update && apt-get install -y inotify-tools curl bash unzip

RUN curl https://rclone.org/install.sh | bash

WORKDIR /app

COPY ./cloud-backup.json ./

COPY ./entrypoint.sh ./

RUN chmod +x ./entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]
