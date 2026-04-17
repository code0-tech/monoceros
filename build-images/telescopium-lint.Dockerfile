FROM ghcr.io/code0-tech/build-images/mise:269.1

# renovate: datasource=github-releases depName=lycheeverse/lychee versioning=regex:^lychee-v(?<major>\d+)\.(?<minor>\d+)\.(?<patch>\d+)$
ARG LYCHEE_VERSION=0.18.1

RUN mise use -g lychee@$LYCHEE_VERSION
