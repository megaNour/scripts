continue=1
if [[ ! -z "$1" ]] &&  [[ "$1" != "w"* ]];
        then
            low=$(cut -d'-' -f1 <<< $1)
            high=$(cut -d'-' -f2 <<< $1)
        if [ ! $low -lt $high ]; 
            then            
                continue=0
                echo "wrong range given $low is not lower than $high"
        fi
        else 
            continue=0
fi

if [ $continue -eq 1 ]
then
    find . -regex ".*[1-9][0-9]?\.kra" -printf "%f\n" | 
    while read fileName; 
    do	
        fileName=$(echo $fileName | grep -o -P "[1-9]+[0-9]*(?=\.kra$)")
        if [ $fileName -ge $low ] && [ $fileName -le $high ];
            then 
             echo "then produce.sh $fileName $2"
             produce.sh $fileName $2
        fi
    done
else
    echo "else all"
    find . -regex ".*\.kra" -printf "%f\n"|
    while read fileName; 
    do	  
        fileName=$(echo $fileName | grep -o -P '[1-9]+[0-9]*(?=\.kra$)')
        #echo "#######    produce.sh $fileName $1"
        if [[ ! -z $fileName ]]; 
then 
produce.sh $fileName $1
fi
    done
fi


