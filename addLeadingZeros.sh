echo "coucou"





chapterNum=$1
desiredLength=$2
echo "gona while"
while [ ${#chapterNum} -lt $desiredLength ]; do
            chapterNum="0$chapterNum"
echo "while $chapterNum"
done
echo $chapterNum
