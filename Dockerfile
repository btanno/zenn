FROM node:latest

WORKDIR /workspace

RUN apt-get -y update && apt-get install -y --no-install-recommends git && apt-get clean

RUN npm init -yes && \
    npm install -y zenn-cli@latest && \
    npx zenn init

