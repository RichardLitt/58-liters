# This will create new files for every image.
# It will not remove duplicate files, and it will overwrite.
# Use only on a clean install.

FILES=static/img/*
for f in $FILES
do
  filename=$(basename "$f")
  title=$(echo $filename | cut -d'.' -f1)
  cleanfile="content/stuff/"${title//[,)(]/}".md"
  cleanfile="${cleanfile// /-}"
    touch $cleanfile
    echo "+++
showonlyimage = true
draft = false
image = \"img/"$filename"\"
date = \"2016-11-05T18:25:22+05:30\"
title = \""$title"\"
weight = 0
+++

And I would walk 10,000 miles.
" > "$cleanfile"
done
