#!/usr/bin/sh

## inputs

path="courses"

. datetime.sh

## runners

resp=$( bash get.sh "${path}" "" | jq )

## outputs

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
