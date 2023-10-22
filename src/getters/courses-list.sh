#!/usr/bin/sh

## inputs

path=""

. datetime.sh

## runners

resp=$( bash get.sh "${path}" "" | jq )

## outputs

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
