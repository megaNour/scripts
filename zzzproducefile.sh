echo File number ?
read fileNumber

fileName="$(find . -maxdepth 1 -name "*p$fileNumber.kra" -printf "%f\n")"
base="$(cut -d "." -f1 <<< "$fileName")"
echo "filenamE: $fileName //"
echo "basE: $base //"
krita "$base.kra" --export --export-filename "$base.png";
convert "$base.png" -resize 990x1400  "$base.jpg"
mv "$base.png" ../png/
mv "$base.jpg" ../jpg/
