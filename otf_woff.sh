#!/bin/sh

for file in `\find src/ -maxdepth 1 -type f -not -name ".DS_Store"`; do pyftsubset $file --text-file=chars.txt --layout-features='palt' --flavor=woff --output-file=dist/`echo ${file##*/} | sed s/.otf$/.woff/`; done
