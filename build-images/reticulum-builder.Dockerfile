FROM docker:28.1.1
LABEL org.opencontainers.image.source=https://github.com/code0-tech/monoceros
ARG RUBY_VERSION

RUN echo "@alpine-3-22 http://dl-cdn.alpinelinux.org/alpine/v3.22/community" >> /etc/apk/repositories
RUN apk add bash build-base tzdata zlib-dev perl linux-headers libffi readline yaml-dev
RUN apk add mise@alpine-3-22
RUN mise install-into ruby@$RUBY_VERSION /usr/local/share/ruby
ENV PATH=/usr/local/share/ruby/bin:$PATH
