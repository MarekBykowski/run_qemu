#!/bin/bash

# Point to the qemu you want to run

# This qemu is from 'cxl-2.0v4' branch, obsolete now. Don't run it unless you
# have a reason for. Also it needs to be run with the --cxl-legacy flag.
# qemu_bin=/home/bykowmar/repos/qemu/build/qemu-system-x86_64
# sudo qemu=${qemu_dir} run_qemu.sh --cxl --git-qemu --cxl-legacy -r img --cxl-debug

# This qemu is from the master branch. We should always run it.
qemu_bin=/home/bykowmar/repos/qemu_master/build/qemu-system-x86_64
cd ../cxl
#sudo run_qemu.sh --cxl --git-qemu

# to only run qemu -> '-r none'
# to build and run -> '-r img'
sudo qemu=${qemu_bin} run_qemu.sh --cxl --git-qemu -r img --cxl-debug
