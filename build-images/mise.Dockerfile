FROM debian:12.14-slim
LABEL org.opencontainers.image.source=https://github.com/code0-tech/internal-tooling

RUN apt-get update && apt-get install curl git -y && rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
ENV MISE_DATA_DIR="/mise"
ENV MISE_CONFIG_DIR="/mise"
ENV MISE_CACHE_DIR="/mise/cache"
ENV MISE_INSTALL_PATH="/usr/local/bin/mise"
ENV PATH="/mise/shims:$PATH"
# renovate: datasource=github-releases depName=jdx/mise
ENV MISE_VERSION="2026.5.18"

RUN curl https://mise.run | sh
