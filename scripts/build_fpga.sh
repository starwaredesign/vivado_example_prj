#!/usr/bin/env bash
su - vivado -c '\
#echo "echo \"executing bashrc\"" >> /home/vivado/.bashrc \
echo $- \
whoami && cat ~/.bashrc && source ~/.bashrc && env && echo $PATH \ 
vivado -mode batch -source recreate_prj.tcl \
vivado -mode batch -source build_bitstream.tcl \
'
 
