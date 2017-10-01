find . -regex ".*\.kra" -printf "%f\n" | 
while read fileName; 
do	
    #l'expression :
    #\([1-9]*\) le pattern a isoler (on se fiche des 0 en prefix, ils seront retrouvés dans produce.sh
    #.kra qui finit par kra
    fileName=$(echo $fileName | grep -o -P '[1-9]+[0-9]*(?=\.kra$)')
    produce.sh $fileName $1
    #fileName=$(find -printf "%f\n" | grep -P ".*(?<![1-9])$fileName\.kra$")
done
