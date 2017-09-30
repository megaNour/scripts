if [ -z $1 ]
then
   cd ..
   number=$(echo ${PWD##} | grep -P '\d+$' -o)
   cd kra
else
   number=$1
fi
for i in `seq 1 20`;
do 
    if [ $i -lt 10 ] 
        then
            cp -n vierge.kra "waste_c"$number"_p0$i.kra"; 
        else
            cp -n vierge.kra "waste_c"$number"_p$i.kra";
    fi
done
