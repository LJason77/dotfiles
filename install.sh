#!/bin/bash

for file in `ls`
	do
		if [ -d "$file" ]; then
			stow -t ~/ $file
		fi
	done
