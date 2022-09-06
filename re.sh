#!/bin/bash
cd /images8w
for file in `ls /images8w|grep thumbnail`
do
    newFile=$(echo $file | sed 's/!thumbnail//')
    mv $file $newFile
    #echo $file
done