#!/bin/bash -x
for file in `ls *.txt`
do
foldername = `echo $file | awk -F "." '{print $1}'`
rm -r $foldername
mkdir $foldername
mv $file $foldername

done

