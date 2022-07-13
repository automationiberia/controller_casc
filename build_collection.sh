#!/usr/bin/env bash

if [[ $# -ne 1 ]] ; then
    echo 'ERROR: It is needed one parameter with the version'
    exit 1
fi

sed -i "s/version: \$RELEASE/version: ${1}/g" galaxy.yml

ansible-galaxy collection build --output-path ./releases
