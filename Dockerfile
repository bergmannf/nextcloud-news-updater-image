FROM python:3-slim
MAINTAINER Florian Bergmann <Bergmann.F@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y git && rm -rf /var/lib/apt/lists/*
RUN pip install git+https://github.com/nextcloud/news-updater

ENTRYPOINT ["nextcloud-news-updater"]
