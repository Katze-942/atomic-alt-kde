#!/bin/bash

echo "::group:: ===$(basename "$0")==="

wget "https://ru.download.nvidia.com/XFree86/Linux-x86_64/570.86.16/NVIDIA-Linux-x86_64-570.86.16.run"
chmod +x ./NVIDIA-Linux-x86_64-570.86.16.run
./NVIDIA-Linux-x86_64-570.86.16.run --ui=none -q --dkms --rebuild-initramfs
rm NVIDIA-Linux-x86_64-570.86.16.run

echo "End kernel_setup.sh"
