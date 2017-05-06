# $((10#$1)) The $(()) sets up an arithmetic context and the 10# converts the number from base 10 to base 10 causing any leading zeros to be dropped.
#(?<![1-9] lookbehind negatif.
# On retire les zeros en trop dans l'input. Puis en cherchant, on s'assure de ne pas prendre les 13 avec les 3 par exemple car les deux finissent en 3.
#fileName="$(find -printf "%f\n" | grep -P ".*(?<![1-9])$((10#$1))\.kra$" $2)" 
#echo $fileName
#pageNum=`expr match $1 '0*\([1-9]*[0-9]*\)'`
#echo "pagenum: $pageNum"
