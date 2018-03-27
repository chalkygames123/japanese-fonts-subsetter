#!/bin/sh

for file in `\find src/ -maxdepth 1 -type f -not -name ".DS_Store"`; do pyftsubset $file --text-file=chars.txt --layout-features='palt' --output-file=dist/${file##*/}; done