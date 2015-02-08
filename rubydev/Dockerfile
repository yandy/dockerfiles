FROM ruby:2.2

ENV BUNDLE_APP_CONFIG .bundle

RUN groupadd developer && useradd -g developer developer

VOLUME ["/data"]

WORKDIR /data

USER developer
