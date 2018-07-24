#!/bin/sh

for file in `\find src -type f -name "*.otf" -or -name "*.ttf"`
do
  output_path=`\echo $file | sed "s/^src\//dist\//"`
  ext=${file##*.}

  mkdir -p `\dirname $output_path`

  if [ $ext = otf ]; then
    pyftsubset $file --text-file=chars.txt --layout-features='palt vert' --flavor=woff --output-file=${output_path%.*}.woff;
    pyftsubset $file --text-file=chars.txt --layout-features='palt vert' --flavor=woff2 --output-file=${output_path%.*}.woff2;
  elif [ $ext = ttf ]; then
    pyftsubset $file --text-file=chars.txt --layout-features='palt vert' --flavor=woff --output-file=${output_path%.*}.woff;
    pyftsubset $file --text-file=chars.txt --layout-features='palt vert' --flavor=woff2 --output-file=${output_path%.*}.woff2;
  fi
done
