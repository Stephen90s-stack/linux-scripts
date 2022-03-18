	#! /bin/bash

	for file in $(find $PWD -type f -name $1);
	do
					echo "User: "$2 "Logged in";
					echo "Current Location of file is: "$file;
					pidof $file
					rm $file;
					echo "File: "$file "Deleted from "$2;
					echo "Deleted" > $file;
					echo "User: "$2 "Logged out";
	done