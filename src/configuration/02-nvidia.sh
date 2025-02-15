#!/bin/bash

set -e

echo "::group:: ===$(basename "$0")==="

wget "https://ru.download.nvidia.com/XFree86/Linux-x86_64/570.86.16/NVIDIA-Linux-x86_64-570.86.16.run"
chmod +x ./NVIDIA-Linux-x86_64-570.86.16.run
./NVIDIA-Linux-x86_64-570.86.16.run --ui=none -q --dkms --rebuild-initramfs --kernel-source-path=/lib/modules/$(ls /lib/modules/ | tail -n 1)/build
rm NVIDIA-Linux-x86_64-570.86.16.run

touch /usr/lib/bootc/kargs.d/10-nvidia.toml
echo "kargs = [\"nvidia_drm.modeset=1\"]" > /usr/lib/bootc/kargs.d/10-nvidia.toml

echo "End kernel_setup.sh"
