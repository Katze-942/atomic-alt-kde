#!/bin/bash

set -e

echo "::group:: ===$(basename "$0")==="

apt-get install -y apt-repo-lakostis-kmodules apt-repo-lakostis && \
  apt-get update && \
  apt-get install nvidia-smi kernel-modules-nvidia-6.12#3:570.86.16-alt1.396301.1@1739197780 nvidia_glx libnvoptix


touch /usr/lib/bootc/kargs.d/10-nvidia.toml
echo "kargs = [\"nvidia_drm.modeset=1\"]" > /usr/lib/bootc/kargs.d/10-nvidia.toml

echo "End kernel_setup.sh"
