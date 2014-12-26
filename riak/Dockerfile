FROM ubuntu:14.04
MAINTAINER Michael Ding <dy@tinysou.com>

RUN apt-get install -y curl
RUN curl https://packagecloud.io/gpg.key | apt-key add -
RUN apt-get install -y apt-transport-https

ADD source.list.sh /src/source.list.sh
RUN sh /src/source.list.sh

RUN apt-get update && apt-get install -y riak

VOLUME ["/etc/riak", "/var/lib/riak", "/var/log/riak"]

EXPOSE 8098 8087

CMD ["riak", "start"]
