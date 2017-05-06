find . -name "*.kra" -printf "%f\n" | 
while read fileName; 
do	base="$(cut -d "." -f1 <<< "$fileName")"
	kri "$base.kra" --export --export-filename "$base.png";
done
