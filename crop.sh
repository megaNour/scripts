frameWidth=236
sizeFormula=$((3508-($frameWidth * 2)))x$((4961-($frameWidth * 2)))+236+236
for image in *.kra; do
 fileName="${image%.*}"
 echo $fileName
unzip "$fileName.kra" mergedimage.png #-d $base
convert -density 300 -crop $sizeFormula mergedimage.png -resize 800 $fileName.jpg
mv mergedimage.png $fileName.png

done



