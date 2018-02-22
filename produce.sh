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
    echo $var " looping"
    #if not a width parameter : w950 for example
    if [[ $var != "w"* ]]
    then
        if [[ $var == *"-"* ]]
        then
            echo "batching on $var"
            (exec batchKrita.sh $var "w$size")
        else
            #echo "#################### $var ####################"

            mkdir "../jpg" 2>/dev/null
            mkdir "../png" 2>/dev/null            

            fileName=$(ls | grep -P ".*[^1-9]$var\.kra$")
            echo "filename: $fileName"        
            base=${fileName%.kra}
            echo "base: $base"
            unzip "$base.kra" mergedimage.png #-d $base
            #cd $base

            if [[ -z "$size" ]]
                then
                convert mergedimage.png -resize 800  "$base.jpg"
                else
                convert mergedimage.png -resize $size  "$base.jpg"
            fi

            mv mergedimage.png "../png/$base.png"
            mv "$base.jpg" "../jpg/"
            
            cd ../kra
            #rm -r $base
        fi
    else
        if [[ $# -eq 1 ]]
        then
            exec batchKrita.sh $var
        fi
    fi
done
#unset $aux


