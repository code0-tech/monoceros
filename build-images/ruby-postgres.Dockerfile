FROM ghcr.io/code0-tech/build-images/asdf:72.1
SHELL ["/usr/bin/bash", "-lc"]

RUN apt-get update && apt-get install \
    build-essential \
    libssl-dev \
    libreadline-dev \
    zlib1g-dev \
    libcurl4-openssl-dev \
    uuid-dev \
    icu-devtools \
    libicu-dev \
    libyaml-dev \
    -y

RUN asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
RUN asdf plugin add postgres https://github.com/smashedtoatoms/asdf-postgres.git

ARG RUBY_VERSION
RUN asdf install ruby $RUBY_VERSION
ARG POSTGRES_VERSION
RUN POSTGRES_EXTRA_CONFIGURE_OPTIONS="--without-icu" POSTGRES_SKIP_INITDB=true asdf install postgres $POSTGRES_VERSION
