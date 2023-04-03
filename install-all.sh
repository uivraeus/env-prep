#!/usr/bin/env bash

# This scripts assumes Ubuntu-22.04 (with systemd)

set -uo pipefail

# General update
sudo apt update
sudo apt -y dist-upgrade

. ./install-docker.sh
. ./install-podman.sh
. ./install-helm.sh
. ./install-kubectl.sh
. ./install-k3d.sh
. ./install-code.sh
