#convert appelle imagemagick qu'il faut installer
#sudo apt-get install imagemagick
find . -name "*.png" -printf "%f\n" | \
while read fileName; do
	base="$(cut -d "." -f1 <<< "$fileName")"
	convert "$base.png" -resize 990x1400  "$base.jpg" 
done