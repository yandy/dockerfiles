FROM python:3.4.2
MAINTAINER Michael Ding <dy@tinysou.com>

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN adduser --disabled-password --home=/home/deployer deployer

RUN mkdir -p /var/run/sshd
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
RUN sed -ri 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config

RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update && apt-get install -y nginx
COPY nginx.conf /etc/nginx/nginx.conf

COPY supervisord.conf /etc/supervisor/supervisord.conf

EXPOSE 22 80 443

CMD ["/usr/bin/supervisord"]
