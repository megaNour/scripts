cd ..
chapter=$(echo ${PWD##} | grep -P '\d+$' -o)
cd - > /dev/null
if [ -z $1 ]
then
    number=10
else
   number=$1
fi
ext=$(echo ${PWD##*/})
for i in `seq 1 $number`;
do 
    if [ $i -lt 10 ] 
        then
            cp -n ../../generic/$ext/vierge.$ext "waste_c"$chapter"_p0$i.$ext"; 
        else
            cp -n ../../generic/$ext/vierge.$ext "waste_c"$chapter"_p$i.$ext";
    fi
done

