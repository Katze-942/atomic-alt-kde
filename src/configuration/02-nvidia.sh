#!/bin/bash

set -e

echo "::group:: ===$(basename "$0")==="

wget "https://ru.download.nvidia.com/XFree86/Linux-x86_64/570.86.16/NVIDIA-Linux-x86_64-570.86.16.run"
chmod +x ./NVIDIA-Linux-x86_64-570.86.16.run
./NVIDIA-Linux-x86_64-570.86.16.run --ui=none -q --dkms --kernel-source-path=/lib/modules/$(ls /lib/modules/ | tail -n 1)/build
rm NVIDIA-Linux-x86_64-570.86.16.run
depmod -a -v "$(ls /lib/modules/ | tail -n 1)"

echo "End 02-nvidia.sh"
