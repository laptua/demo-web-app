#!/bin/sh

[[ "$1" != '' ]] && export APP_ID=$1 || export APP_ID=demo-web-app-100
[[ "$2" != '' ]] && export BRANCH=$2 || export BRANCH=HEAD
[[ "$3" != '' ]] && export REPOS=$3  || export REPOS=laputa

cat apps_template.yaml | \
    sed "s/{{.APP_ID}}/${APP_ID}/g" | \
    sed "s/{{.BRANCH}}/${BRANCH}/g" | \
    sed "s/{{.REPOS}}/${REPOS}/g" | grep -v '#'
