FROM python:2.7
MAINTAINER Michael Ding <dy@tinysou.com>

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

ENV PYTHON3_VERSION 3.4.2

RUN set -x \
  && mkdir -p /usr/src/python \
  && curl -SL "https://www.python.org/ftp/python/$PYTHON3_VERSION/Python-$PYTHON3_VERSION.tar.xz" \
    | tar -xJC /usr/src/python --strip-components=1 \
  && cd /usr/src/python \
  && ./configure --enable-shared \
  && make -j$(nproc) \
  && make install \
  && ldconfig \
  && find /usr/local \
    \( -type d -a -name test -o -name tests \) \
    -o \( -type f -a -name '*.pyc' -o -name '*.pyo' \) \
    -exec rm -rf '{}' + \
  && rm -rf /usr/src/python

RUN adduser --disabled-password --home=/home/deployer deployer

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
RUN sed -ri 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config

COPY supervisord.conf /etc/supervisor/supervisord.conf

EXPOSE 22

CMD ["/usr/local/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
