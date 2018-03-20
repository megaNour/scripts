cd ..
chapter=$(echo "$PWD" | grep -P '(?<=chapitre_|chapter_)\d+(?=_)' -o)
cd - > /dev/null
if [ -z "$1" ]; then
       number=14
else
       number=$1
fi
if [ -z "$2" ]; then
    cd ../../..
    seriesName=$(basename "$PWD")
    cd - > /dev/null
else
    seriesName="$2"
fi
ext=$(echo ${PWD##*/})
for i in `seq 1 $number`;
do 
    if [ $i -lt 10 ]     
        then
            cp -n "/home/b/Pictures/Images WASTE/Manga/generic/$ext/vierge.$ext" "$seriesName""_c"$chapter"_p0$i.$ext"; 
        else
            cp -n "/home/b/Pictures/Images WASTE/Manga/generic/$ext/vierge.$ext" "$seriesName""_c"$chapter"_p$i.$ext";
    fi
done

