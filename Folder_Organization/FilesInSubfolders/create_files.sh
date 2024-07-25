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
            touch "$desktop_path/TestRoot$i/folder$j/file$k.txt"
        done
    done
done


