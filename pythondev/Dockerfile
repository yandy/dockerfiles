FROM python:3.4

RUN pip install virtualenv

RUN groupadd developer && useradd -g developer developer

VOLUME ["/data"]

WORKDIR /data

USER developer
