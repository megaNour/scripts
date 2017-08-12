if ! [ -z $2 ]
    then 
        convert $1 -resize $2  $1
        echo "$1 resized to $2px wide"
    else
            convert $1 -resize 800  $1
        echo "
   !
  !!!
 !!!!!
!!!!!!!
Resized by default to 800px width.
You can specify width as first and only argument of resizeAll.sh"
fi
