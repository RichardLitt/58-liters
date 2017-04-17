#!/bin/sh

# This will create new files for every image.
# It will not remove duplicate files, and it will overwrite.
# Use only on a clean install.

# Usage: sh utils/create_items richlitt-2015-04

FILES=static/img/$1/*
for f in $FILES
do
  filename=$(basename "$f")
  title=$(echo $filename | cut -d'.' -f1)
  cleanfile="content/"$1"/"${title//[,)(]/}".md"
  cleanfile="${cleanfile// /-}"
    touch $cleanfile
    echo "+++
showonlyimage = true
draft = false
image = \""$filename"\"
date = \"$(date -u +'%Y-%m-%dT%H:%M:%SZ')\"
title = \""$title"\"
weight = 0
+++

And I would walk 10,000 miles.
" > "$cleanfile"
done
