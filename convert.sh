#!/usr/bin/env sh

# requires: brew install librsvg

# usage convert.sh /path/to/image.svg /path/to/output/dir/prefix [background-color=none]

SVG=$1
OUTPUT_DIR=$2
BACKGROUND=${3:-none}

for size in 16 32 64 128 256 512 1024 2048 4096; do
  echo "Converting to... $size";
  rsvg-convert "$SVG" --no-keep-image-data --width=${size} --format=png --background-color=$BACKGROUND > ${OUTPUT_DIR}@${size}.png
done
