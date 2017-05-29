if ! [ -z $1 ]
    then 
        find . -regextype "posix-extended" -regex ".*\.(jpg|png)" -printf "%f\n" | 
        while read fileName; 
        do	
            #fileName=$(echo $fileName | grep -o -P '.*(?=\.(png|jpg)$)')
            convert $fileName -resize $1  $fileName
            echo "$fileName resized to $1px wide"
        done
    else
        resizeAll.sh 800
        echo "
   !
  !!!
 !!!!!
!!!!!!!
Resized by default to 800px width.
You can specify width as first and only argument of resizeAll.sh"
fi
