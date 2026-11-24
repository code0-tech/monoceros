FROM docker:29.10.0
LABEL org.opencontainers.image.source=https://github.com/code0-tech/monoceros
ARG RUBY_VERSION
ARG TERRAFORM_VERSION

RUN apk add \
    bash \
    curl \
    tar \
    build-base \
    tzdata \
    zlib-dev \
    perl \
    linux-headers \
    libffi \
    readline \
    yaml-dev \
    mise \
    libc6-compat \
    jq
RUN mise install-into ruby@$RUBY_VERSION /usr/local/share/ruby
RUN mise install-into terraform@$TERRAFORM_VERSION /usr/local/share/terraform
ENV PATH=/usr/local/share/ruby/bin:/usr/local/share/terraform:$PATH
