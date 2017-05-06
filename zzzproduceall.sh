find . -name "*.kra" -printf "%f\n" | 
while read fileName; 
do	base="$(cut -d "." -f1 <<< "$fileName")"
	unzip "$base.kra" mergedimage.png;
	mv mergedimage.png "$base.png"
	convert "$base.png" -resize 990x1400  "$base.jpg"
	mv "$base.png" ../png/
	mv "$base.jpg" ../jpg/
done
