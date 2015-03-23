FROM python:3.4

RUN apt-get update && apt-get install -y libblas-dev liblapack-dev gfortran

RUN pip install virtualenv

VOLUME ["/data"]

WORKDIR /data
