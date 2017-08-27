FROM node:6

RUN cd /opt && git clone https://github.com/Cloudeity/orion.client
WORKDIR /opt/orion.client/modules/orionode
RUN npm install --prod && \
    npm prune --production

ENTRYPOINT ["node","server.js"]
