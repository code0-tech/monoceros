FROM ghcr.io/code0-tech/build-images/asdf:93.1
SHELL ["/usr/bin/bash", "-lc"]

RUN asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

ARG NODE_VERSION
RUN asdf install nodejs $NODE_VERSION
RUN asdf shell nodejs $NODE_VERSION && npx playwright install-deps && npx playwright install
