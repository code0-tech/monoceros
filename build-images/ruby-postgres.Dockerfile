FROM ghcr.io/code0-tech/build-images/mise:250.1

RUN apt-get update \
    && apt-get install \
        build-essential \
        libssl-dev \
        libreadline-dev \
        zlib1g-dev \
        libcurl4-openssl-dev \
        uuid-dev \
        libicu-dev \
        libyaml-dev \
        flex \
        bison \
        -y \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

ARG POSTGRES_VERSION
ARG RUBY_VERSION
RUN echo "POSTGRES_SKIP_INITDB=true" > .install-env \
    && echo "POSTGRES_EXTRA_CONFIGURE_OPTIONS=--without-icu" >> .install-env \
    && MISE_ENV_FILE=.install-env mise use -g postgres@$POSTGRES_VERSION ruby@$RUBY_VERSION \
    && rm .install-env
