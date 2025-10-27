FROM ghcr.io/code0-tech/build-images/mise:220.1

ARG NODE_VERSION
RUN mise use -g node@$NODE_VERSION
RUN npx playwright install-deps && npx playwright install
