#!/usr/bin/env bash

##
## Copyright (c) 2024 Marcos Bento
##
## Distributed under multiple licenses: Apache, MIT, Boost, Unlicense.
##
## See https://github.com/marcosbento/receptacles
##

function dockbuildf() {
    if [ -z "$1" ]; then
        echo "[ERROR] Docker image name (in Dockerfile.<imagename>) must be provided"
        return
    fi

    local IMAGE=${1:-ubuntu2204.base}
    local FNAME="Dockerfile.${IMAGE}"

    docker build --progress plain --platform=linux/arm64 -t marcosbento/receptacles:${IMAGE} -f ${FNAME} .
}
