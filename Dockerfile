FROM docker

WORKDIR /app
CMD /bin/sh

ENV DOCKER_SQUASH_URL=https://github.com/jwilder/docker-squash/releases/download/v0.2.0/docker-squash-linux-amd64-v0.2.0.tar.gz

RUN set -x && \
    apk add --no-cache bash git make && \
    apk add --no-cache --virtual .build-deps curl go musl-dev && \
    curl -sSL "$DOCKER_SQUASH_URL" -o /tmp/docker-squash.tgz && \
    tar -C /usr/local/bin -xzvf /tmp/docker-squash.tgz && \
    rm /tmp/docker-squash.tgz && \
    go get -u github.com/cpuguy83/go-md2man && \
    go get -u github.com/openshift/source-to-image/cmd/s2i && \
    apk del .build-deps