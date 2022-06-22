#!/usr/bin/env bash

rm -rf ./releases/*.tar.gz
ansible-galaxy collection build --output-path ./releases