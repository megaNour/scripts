num=$1
desiredLength=$2
while [ ${#num} -lt $desiredLength ]; do
            num="0$num"
done
echo $num
