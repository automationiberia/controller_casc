#!/usr/bin/env bash

if [ $# -ne 1 ]; then
  echo "usage: ${0} <file.tar.gz>"
  exit 1
fi
ansible-galaxy collection publish ${1} -s inbound-redhat_cop
rm -rf ${1}
