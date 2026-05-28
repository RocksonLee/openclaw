FROM ghcr.io/openclaw/openclaw:latest

USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        git \
        golang-go \
    && mkdir -p /go/bin /go/pkg/mod \
    && chown -R node:node /go \
    && rm -rf /var/lib/apt/lists/*

ENV GOPATH=/go
ENV GOBIN=/go/bin
ENV PATH=/go/bin:/usr/local/go/bin:$PATH

USER node