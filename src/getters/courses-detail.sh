#!/usr/bin/sh

## inputs

pk="${1}"

path="courses/${pk}"

. datetime.sh

## runners

resp=$( bash get.sh "${path}" "" | jq )

## outputs

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
