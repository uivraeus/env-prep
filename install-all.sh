#!/usr/bin/env bash

# This scripts assumes Ubuntu-22.04 (with systemd)

set -uo pipefail

# General update
sudo apt update
sudo apt -y dist-upgrade

exec ./install-docker.sh
exec ./install-podman.sh
exec ./install-helm.sh
exec ./install-kubectl.sh
exec ./install-k3d.sh




