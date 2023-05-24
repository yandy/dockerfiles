FROM yandy0725/pytorch:base

ENV SD_VERSION=1.2.1

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        wget \
        git \
        build-essential \
        python3-opencv \
    ; \
    rm -rf /var/lib/apt/lists/* ;\
    wget -O sdweb.tar.gz "https://github.com/AUTOMATIC1111/stable-diffusion-webui/archive/refs/tags/v${SD_VERSION}.tar.gz"; \
    mkdir -p /opt/sdweb/stable-diffusion-webui; \
    tar --gzip --extract --directory /opt/sdweb/stable-diffusion-webui --strip-components=1 --file sdweb.tar.gz; \
    rm sdweb.tar.gz

COPY webui.sh /usr/local/bin/webui.sh

RUN set -eux; \
    cd /opt/sdweb; \
    webui.sh --exit --skip-torch-cuda-test

WORKDIR /opt/sdweb
