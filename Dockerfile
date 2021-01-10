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

# TODO: not needed to move code if we use volumes
COPY . ./

RUN chmod +x bin/docker-entrypoint.sh
ENTRYPOINT ["bin/docker-entrypoint.sh"]
