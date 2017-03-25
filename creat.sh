FILES=static/img/*
for f in $FILES
do
  filename=$(basename "$f")
  title=$(echo $filename | cut -d'.' -f1)
  cleanfile="content/portfolio/"${title//[,)(]/}".md"
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
" >> "$cleanfile"
done
