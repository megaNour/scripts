if [ -z "$1" ]; 
    then
        echo "
        need to specify a number corresponding to the end of your kra file
        for example if I want to export waste_c8_p05.kra 
        The script will handle any leading zero so you can type 5, 05, 005....
        -However, two pages cannot end with the same number (d'oh)
        -Don't put anything between the page number and .kra extension
        -If \"convert\" command is not found, you need to get imageMagick
        "
    else
        echo "#################### $1 ####################"
        fileName=$(find -printf "%f\n" | grep -P ".*(?<![1-9])$1\.kra$")
        base=$(echo $fileName | grep -o -P ".*(?=\.kra$)")
        echo "filename: $fileName"
        unzip "$base.kra" mergedimage.png;
        mv mergedimage.png "$base.png"
        
        if [ -z "$2" ]
            then
            convert "$base.png" -resize 800  "$base.jpg"
            else
            convert "$base.png" -resize $2  "$base.jpg"
        fi

        mkdir ../jpg 2>/dev/null
        mkdir ../png 2>/dev/null
        mv "$base.png" ../png/
        mv "$base.jpg" ../jpg/
fi




