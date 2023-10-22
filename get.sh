#!/usr/bin/sh

. .env

path="${1}"

queries="${2}"

curl -sL --user "${CLIENT_ID}:${CLIENT_SECRET}" "https://www.udemy.com/api-2.0/${path}?${queries}"
