#!/bin/bash
cd /root/autodl-tmp/Real-ESRGAN-0.2.5.0
id=$(ls -ahl results/  | awk '{print $9}'|awk -F '_' 'END{print $1}')
/usr/bin/ossutil64 sync results/ oss://yiwofeng/mj_bak/ -u
ls -ahl results/  | awk '{print $9}'|awk -F '_' '{if (NR>3&& $1<'$id') print $0}'|xargs -i rm -rf results/{}
echo $id