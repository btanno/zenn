FROM node

ENV NODE_PATH /opt/node_modules

WORKDIR /workspace

RUN apt-get -y update && apt-get install -y --no-install-recommends git && apt-get clean
RUN npm init --yes
RUN npm install -g zenn-cli@latest
RUN npx zenn init

