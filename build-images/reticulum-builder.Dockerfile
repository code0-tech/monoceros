FROM docker:28.3.1
LABEL org.opencontainers.image.source=https://github.com/code0-tech/monoceros
ARG RUBY_VERSION

RUN apk add bash curl tar build-base tzdata zlib-dev perl linux-headers libffi readline yaml-dev mise
RUN mise install-into ruby@$RUBY_VERSION /usr/local/share/ruby
ENV PATH=/usr/local/share/ruby/bin:$PATH
