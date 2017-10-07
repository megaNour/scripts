zeroPage=$(find . -regex ".*[^0-9]0+\.jpg")
if [ ! -z $zeroPage ]
    then increment=1
    else increment=0
fi
echo incrementing $increment
folderName=${PWD##}
cd ..
chapterNum=$(echo ${PWD##} | grep -P '\d+$' -o)
cd "$folderName"

echo "folderName: " $folderName
echo "chapterNum: " $chapterNum

find *.jpg |
while read filename
do
    let pageNum=$(expr "$filename" : ".*[^0-9]\+\([0-9]\+\)\.jpg$" + $increment)
    echo "pageNum: " $pageNum
    if [ $pageNum -lt 10 ]
        then
            pageNum="0$pageNum"
            echo "pageNum: " $pageNum
    fi  
echo "mv " $filename " waste_c$chapterNum"_"p$pageNum.jpg"
    mv $filename "waste_c$chapterNum"_"p$pageNum.jpg"
done
