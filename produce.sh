size=800
for var in $@;
do
if [[ $var == "w"* ]]
then
 size=$(cut -d'w' -f2 <<< $var)
 echo $size
fi
done
if [[ $size == 800 ]]
then
    echo "default width: 800px will be used"
fi

if [[ -z $1 ]]
then
    echo "batching"
    exec batchKrita.sh
fi

for var in $@;
do
    if [[ $var != "w"* ]]
    then
        if [[ $var == *"-"* ]]
        then
            echo "batching on $var"
            (exec batchKrita.sh $var "w$size")
        else
            echo "#################### $var ####################"
            fileName=$(ls | grep -P ".*(?<![1-9])$var\.kra$")
            echo "filename: $fileName"        
            base=$(echo $fileName | grep -o -P ".*(?=\.kra$)")
            echo "base: $base"
                        unzip "$base.kra" mergedimage.png;
            mv mergedimage.png "$base.png"
            
            if [[ -z "$size" ]]
                then
                convert "$base.png" -resize 800  "$base.jpg"
                else
                convert "$base.png" -resize $size  "$base.jpg"
            fi

            mkdir ../jpg 2>/dev/null
            mkdir ../png 2>/dev/null
            mv "$base.png" ../png/
            mv "$base.jpg" ../jpg/
        fi
    else
        if [[ $# -eq 1 ]]
        then
                exec batchKrita.sh $var
        fi
    fi
done
#unset $aux


