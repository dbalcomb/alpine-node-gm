FROM mhart/alpine-node

# build tools for native dependencies
RUN apk add --update make gcc g++ python git

# graphicsmagick
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories;
RUN apk add --update graphicsmagick && rm -rf /var/cache/apk/*
