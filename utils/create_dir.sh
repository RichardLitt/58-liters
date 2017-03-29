#!/bin/sh

## Doesn't create images

# TODO Needs to actually add it into the array
echo "\""$1"\"" >> "data/bags.json"

mkdir "static/img/"$1
touch "content/bags/"$1".md"
echo "+++
showonlyimage = true
draft = false
image = \""$1"-knolling.jpg\"
date = \""$(date -u +"%Y-%m-%dT%H:%M:%SZ")"\"
title = \"TODO\" // Format: Richard - April 2015
link = \""$1"\"
+++

Leave this empty." >> "content/bags/"$1".md"
mkdir "content/"$1
touch "content/"$1"/index.md"
echo "+++
date = \""$(date -u +"%Y-%m-%dT%H:%M:%SZ")"\"
title = \""$1"\"
type = \"list\"
draft = true
+++

Leave this empty." >> "content/"$1"/index.md"
