FROM ghcr.io/code0-tech/build-images/mise:398.1

# renovate: datasource=github-releases depName=lycheeverse/lychee versioning=regex:^lychee-v(?<major>\d+)\.(?<minor>\d+)\.(?<patch>\d+)$
ARG LYCHEE_VERSION=lychee-v0.24.2

# renovate: datasource=github-releases depName=rvben/rumdl versioning=regex:^v(?<major>\d+)\.(?<minor>\d+)\.(?<patch>\d+)$
ARG RUMDL_VERSION=v0.2.5

RUN mise use -g lychee@$LYCHEE_VERSION rumdl@$RUMDL_VERSION
