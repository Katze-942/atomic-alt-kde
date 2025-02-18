#!/bin/bash

set -e

echo "::group:: ===$(basename "$0")==="

touch /usr/lib/bootc/kargs.d/10-nvidia.toml
echo "kargs = [\"nvidia_drm.modeset=1\"]" > /usr/lib/bootc/kargs.d/10-nvidia.toml

echo "End kernel_setup.sh"
