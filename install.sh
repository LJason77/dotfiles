#!/bin/bash

sudo apt -y install --no-install-recommends stow

for file in `ls`
	do
		if [ -d "$file" ]; then
			stow -t ~/ $file
		fi
	done
