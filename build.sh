#!/bin/bash

set +x
set -e

THIS_SCRIPT="$(readlink -e "$0")"
THIS_SCRIPT_DIR="$(dirname "$THIS_SCRIPT")"
DOCKER_BUILD_DIR="${THIS_SCRIPT_DIR}/build/docker-bitcoin-qt"
DOCKER_SCRIPTS_DIR="${THIS_SCRIPT_DIR}/scripts"

(cd "$DOCKER_BUILD_DIR"
	export PATH="${DOCKER_SCRIPTS_DIR}:${PATH}"
	"docker_build_docker-bitcoin.sh" .
)

