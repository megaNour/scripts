name=$(find *.pdf)
echo $name
convert -density 300 -crop 3036x4725+236+236 -resize 800 $name ../release/$name.jpg

