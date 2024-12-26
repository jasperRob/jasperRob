#!/bin/bash

# List of directories to process
dirs=("i3" "polybar" "picom")

# Iterate over the list
for dir in "${dirs[@]}"; do
	echo "Updating $dir"
	# Remove the destination directory if it exists
	rm -rf "$dir"
	# Copy the source directory to the destination
	cp -r "$HOME/.config/$dir" "$dir"
done
