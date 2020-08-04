#!/bin/bash -x
for file in `ls *.sh *.pdf`
do
git add $file
done
git commit -m "All Assignment "
git push
