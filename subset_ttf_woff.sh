#!/bin/sh

for file in `\find src/ -maxdepth 1 -type f -not -name ".DS_Store"`; do pyftsubset $file --text-file=chars.txt --layout-features='kern' --flavor=woff --output-file=dist/`echo ${file##*/} | sed s/.ttf$/.woff/`; done
