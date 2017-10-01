zeroPage=$(find . -regex ".*[^0-9]0+\.jpg")
if [ ! -z $zeroPage ]
    then increment=1
        echo `find . -regex ".*[^0-9]0+\.jpg"`
    else increment=0
fi
echo $increment

find *.jpg |
while read filename
do
    let pageNum=$(expr "$filename" : ".*[^0-9]\+\([0-9]\+\)\.jpg$" + $increment)
    if [ $pageNum -lt 10 ]
        then
            pageNum="0$pageNum"
    fi
    folderName=${PWD##}
    cd ..
    chapterNum=$(echo ${PWD##} | grep -P '\d+$' -o)
    cd "$folderName"
    mv $filename "waste_c$chapterNum"_"p$pageNum.jpg"
done
