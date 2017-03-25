FILES=static/img/*
for f in $FILES
do
  filename=$(basename "$f")
  file="content/portfolio/"$filename
  touch "$file"
#   echo "+++
# showonlyimage = true
# draft = false
# image = \"img/"$filename"\"
# date = \"2016-11-05T18:25:22+05:30\"
# title = \""$f"\"
# weight = 0
# +++
#
# And I would walk 10,000 miles.
# " >> file
done
