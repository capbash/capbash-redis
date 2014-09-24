FROM ubuntu:14.04

RUN apt-get -qq update
RUN apt-get -qqy upgrade
RUN apt-get install -y wget git build-essential
RUN apt-get install -y redis-server

RUN mkdir -p /config

VOLUME /data
VOLUME /log
EXPOSE 6379

ADD redis.conf /config/redis.conf
CMD /usr/bin/redis-server /config/redis.conf
