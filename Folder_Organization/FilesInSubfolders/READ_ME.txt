Maximus Fernandez
7/6/2024 Summer Freshman

===============================================
		PURPOSE:
===============================================

I had a main picture folder containing several subfolders, 
each filled with numerous photos that I wanted to extract 
onto the main folder.

This bash script serves as a test for the Python script I plan
to use for extracting photos into the main folder before 
executing the actual process.

===============================================
		GIST:
===============================================

Bash script is called "create_files.sh"

	Basically creates TestRoot{1..2} folders within Desktop directory, 
	then creates folder{A..D} subfolders within each folder,
	then creates file{1..5}.txt within each subfolder. 

To run, type into git terminal (../Desktop dir):

	This makes the script executable (you only need to do it once)
	chmod +x create_files.sh

	This runs the script
	./create_files.sh

NOTE:
 
	This script will overwrite any files that have duplicate names
	if you run it again (does not append).

===============================================
		Here is the code:
===============================================

#!/bin/bash

# Define the path to the desktop directory
desktop_path="$HOME/Desktop"

# Create the TestRoot and subfolders on the desktop
for i in {1..2}; do
    for j in {A..D}; do
        mkdir -p "$desktop_path/TestRoot$i/folder$j"
    done
done

# Create the files within each subfolder on the desktop
for i in {1..2}; do
    for j in {A..D}; do
        for k in {1..5}; do
            touch "$desktop_path/TestRoot$i/folder$j/file$k"
        done
    done
done