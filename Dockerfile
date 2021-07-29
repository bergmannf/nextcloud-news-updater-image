FROM python:3-slim
MAINTAINER Florian Bergmann <Bergmann.F@gmail.com>

RUN pip install nextcloud_news_updater

ENTRYPOINT ["nextcloud-news-updater"]
