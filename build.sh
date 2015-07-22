#!/usr/bin/env bash

set -e

command -v git >/dev/null 2>&1 || { echo >&2 "You must have git to execute the build."; exit 1; }
command -v packer >/dev/null 2>&1 || { echo >&2 "You must have packer to execute the build."; exit 1; }

if BUILD_VERSION=`git log --pretty="%h" -n 1 2>&1`; then
    packer build -var build_version=$BUILD_VERSION template.json
    exit 0
else
    echo 'You must execute this from a git repository'
    exit 1
fi
