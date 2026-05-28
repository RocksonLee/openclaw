FROM ghcr.io/openclaw/openclaw:latest

USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        git \
        golang-go \
    && rm -rf /var/lib/apt/lists/*

ENV GOPATH=/go
ENV PATH=/go/bin:/usr/local/go/bin:$PATH

# Optional tools:
# Add extra Go-based tools here when needed.
#
# Example:
# RUN go install github.com/example/tool@latest
#
# gifgrep:
# Confirm the official Go install path from /app/skills/gifgrep/SKILL.md
# before enabling a go install command.

USER node
