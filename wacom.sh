if [[ ! -z $1 ]]
then
    screen="$1"
else
    screen="0"
fi
~/Documents/scripts/configIntuos.sh $screen
~/Documents/scripts/configCintiq.sh


