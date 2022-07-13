#!/usr/bin/env bash

VERSION_RELEASE=` echo ${GITHUB_REF##*/} | grep -oP '(?<=Version_)[^ ]*'`

sed -i "s/\$RELEASE/${VERSION_RELEASE}/g" galaxy.yml

ansible-galaxy collection build --output-path ./releases
