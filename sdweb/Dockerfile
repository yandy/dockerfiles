FROM yandy0725/pytorch:base

ENV SD_VERSION=1.2.1

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        wget \
        git \
    ; \
    rm -rf /var/lib/apt/lists/* ;\
    wget -O sdweb.tar.gz "https://github.com/AUTOMATIC1111/stable-diffusion-webui/archive/refs/tags/v${SD_VERSION}.tar.gz"; \
    mkdir -p /opt/sdweb; \
    tar --gzip --extract --directory /opt/sdweb --file sdweb.tar.gz; \
    rm sdweb.tar.gz

COPY webui.sh /usr/local/bin/webui.sh

RUN set -eux; \
    cd /opt/sdweb; \
    webui.sh --exit --skip-torch-cuda-test

WORKDIR /opt/sdweb
