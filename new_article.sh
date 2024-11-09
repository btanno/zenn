#!/bin/sh

USER=`id -u $USER`
GROUP=`id -g $USER`

docker compose run -u ${USER}:${GROUP} --rm zenn npx zenn new:article
