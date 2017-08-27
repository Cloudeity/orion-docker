FROM node:6-alpine

COPY orion.conf /opt/
WORKDIR /opt
RUN apk update && \
    apk upgrade && \
    apk add git libgit2-dev && \
    apk add python tzdata pkgconfig build-base && \
    rm -rf /var/cache/apk/*

RUN git clone https://github.com/eclipse/orion.client.git
WORKDIR /opt/orion.client/modules/orionode
RUN npm install
ENTRYPOINT ["node","server.js"]
