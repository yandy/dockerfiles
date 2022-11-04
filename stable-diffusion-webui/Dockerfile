FROM ghcr.io/sdustio/pytorch:base

RUN set -eux; \
    apt-get update; \
	DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
		ipython3 \
		git \
		python3-opencv \
    ; \
	rm -rf /var/lib/apt/lists/*;

RUN git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git /opt/sdwebui && \
    cd /opt/sdwebui && python launch.py --skip-torch-cuda-test --exit

WORKDIR /opt/sdwebui
