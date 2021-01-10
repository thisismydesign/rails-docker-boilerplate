FROM ruby:2.6.3-alpine

RUN apk update
RUN apk add --no-cache \
    # Build tools for building gems with native extensions
    build-base \
    # Required for Docker port scanning
    netcat-openbsd \
    # Required by Rails
    tzdata \
    # Required for mysql
    mariadb-dev

WORKDIR /app

ENTRYPOINT ["bin/docker-entrypoint.sh"]
