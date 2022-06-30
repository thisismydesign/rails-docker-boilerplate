FROM ruby:3.1.2-alpine

RUN apk update
RUN apk add --no-cache \
    # Build tools for building gems with native extensions
    build-base \
    # Required for Docker port scanning
    netcat-openbsd \
    # Required by Rails
    tzdata \
    # Required for mysql
    mariadb-dev \
    # Required for rails new
    git

WORKDIR /app

ENTRYPOINT ["bin/docker-entrypoint.sh"]
