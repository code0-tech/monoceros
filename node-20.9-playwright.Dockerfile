FROM ghcr.io/code0-tech/build-images/asdf:6.1
SHELL ["/usr/bin/bash", "-lc"]

RUN asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

RUN asdf install nodejs 20.9.0
RUN asdf shell nodejs 20.9.0 && npx playwright install-deps && npx playwright install
