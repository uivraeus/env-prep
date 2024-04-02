#!/usr/bin/env bash

# This scripts assumes Ubuntu-22.04 (with systemd)

echo "***************************************************"
echo "Installing jq and yq"
echo "***************************************************"

set -uxo pipefail

if command -v yq &> /dev/null
then
    echo "yq already installed, skipping"
else
  # Install yq [https://github.com/mikefarah/yq#wget]
  mkdir -p ${HOME}/.local/bin
  wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O ${HOME}/.local/bin/yq
  chmod +x ${HOME}/.local/bin/yq
fi

if command -v jq &> /dev/null
then
  echo "jq already installed, skipping"
  exit 0
fi

# Install jq
sudo apt -y update
sudo apt -y install jq
