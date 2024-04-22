#!/bin/bash

cd "$(dirname "$0")" || return

find src \( -name "*.otf" -or -name "*.ttf" \) -type f -print0 | while IFS= read -r -d "" file; do
	output_path="${file/src/dist}"
	ext=${file##*.}

	mkdir -p "$(dirname "$output_path")"

	if [[ $ext = otf ]]; then
		(
			pyftsubset "$file" --text-file=chars.txt --output-file="$output_path" --layout-features='palt vert' &
			pyftsubset "$file" --text-file=chars.txt --output-file="${output_path%.*}.woff" --flavor=woff --layout-features='palt vert' &
			pyftsubset "$file" --text-file=chars.txt --output-file="${output_path%.*}.woff2" --flavor=woff2 --layout-features='palt vert' &
			wait
		)
	elif [[ $ext = ttf ]]; then
		(
			pyftsubset "$file" --text-file=chars.txt --output-file="$output_path" --layout-features='kern vert' &
			pyftsubset "$file" --text-file=chars.txt --output-file="${output_path%.*}.woff" --flavor=woff --layout-features='kern vert' &
			pyftsubset "$file" --text-file=chars.txt --output-file="${output_path%.*}.woff2" --flavor=woff2 --layout-features='kern vert' &
			wait
		)
	fi
done
