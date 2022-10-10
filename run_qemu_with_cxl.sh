#!/bin/bash

# switch to the dir where you built qemu in
qemu_dir=/home/bykowmar/repos/qemu/build/qemu-system-x86_64

cd ../cxl
#sudo run_qemu.sh --cxl --git-qemu
#sudo run_qemu.sh --cxl --git-qemu --cxl-legacy -r img --cxl-debug
sudo qemu=${qemu_dir} run_qemu.sh --cxl --git-qemu --cxl-legacy -r img --cxl-debug
