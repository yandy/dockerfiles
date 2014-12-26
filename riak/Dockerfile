FROM ubuntu:14.04
MAINTAINER Michael Ding <dy@tinysou.com>

RUN apt-get update && apt-get install -y curl

RUN curl https://packagecloud.io/gpg.key | apt-key add -
RUN apt-get install -y apt-transport-https
ADD source.list.sh /source.list.sh
RUN /source.list.sh
RUN apt-get update && apt-get install -y riak

# grab gosu for easy step-down from root
RUN gpg --keyserver pgp.mit.edu --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
RUN apt-get update && rm -rf /var/lib/apt/lists/* \
  && curl -o /usr/local/bin/gosu -SL "https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture)" \
  && curl -o /usr/local/bin/gosu.asc -SL "https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture).asc" \
  && gpg --verify /usr/local/bin/gosu.asc \
  && rm /usr/local/bin/gosu.asc \
  && chmod +x /usr/local/bin/gosu

apt-get purge -y --auto-remove curl

RUN ulimit -n 65536

VOLUME ["/etc/riak", "/var/lib/riak", "/var/log/riak"]

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8098 8087
CMD ["riak", "console"]
