#!/bin/bash -x 
	read -p "Enter folder name :" foldername
	if [ -d  ${foldername} ]
	then
	echo  "Folder $foldername exist."
	else
	mkdir $foldername
	fi

