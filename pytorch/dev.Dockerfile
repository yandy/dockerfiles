FROM yandy0725/pytorch:base

# [Option] Install zsh
ARG INSTALL_ZSH="true"
# [Option] Upgrade OS packages to their latest versions
ARG UPGRADE_PACKAGES="true"
# Install needed packages and setup non-root user. Use a separate RUN statement to add your own dependencies.
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

ENV SCRIPTLIBPREFIX="https://raw.githubusercontent.com/microsoft/vscode-dev-containers/v0.238.0/script-library/"

RUN set -eux; \
    apt-get update; \
	apt-get install -y --no-install-recommends \
		ca-certificates \
		curl \
    ; \
	rm -rf /var/lib/apt/lists/*;

RUN set -eux; \
    curl -fSsLO ${SCRIPTLIBPREFIX}/common-debian.sh; \
    bash ./common-debian.sh "${INSTALL_ZSH}" "${USERNAME}" "${USER_UID}" "${USER_GID}" "${UPGRADE_PACKAGES}" "true" "true"; \
    rm ./common-debian.sh; \
    apt-get autoremove -y; apt-get clean -y; rm -rf /var/lib/apt/lists/*

RUN pip --disable-pip-version-check --no-cache-dir install \
    autopep8 black yapf bandit flake8 mypy pycodestyle pydocstyle pylint \
    ipython visdom matplotlib opencv-python-headless

# [Optional] If your pip requirements rarely change, uncomment this section to add them to the image.
# COPY requirements.txt /tmp/pip-tmp/
# RUN pip --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt \
#    && rm -rf /tmp/pip-tmp

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>
