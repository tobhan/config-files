#!/bin/bash
#script to allow quick changing of .iso files and qemu virtual hard disks for use with qemu.
main(){
selection1=0
read -p "Do you want to:

	 [1] Create a new vm hdd file?
	 [2] Run a vm?
     	 [3] exit?
 " selection1
}
newfile(){

	read -p "Enter file path :" filepath
	read -p "What file type? [raw/qcow2] :" filetype
	read -p "File size	:" filesize
	sudo qemu-img create -f $filetype $filepath $filesize
	main
}
notimplemented(){

		echo "
	
		**Not yet implemented**
	
		"
		main
}
notvalid(){

		echo "Not a valid input"
		main	
}
main

if [ $selection1 == 1 ]; then
	newfile
fi
	if [ $selection1 == 2 ]; then
		notimplemented
	fi
	if [ $selection1 == 3 ]; then
		exit
	fi
	while [ $selection1 > 3 ]
       	do
		notvalid
	done
