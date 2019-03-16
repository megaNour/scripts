cd ~/programmes/
nuxeoD=$(ls | grep nuxeo)
cd $nuxeoD/bin
if [[ ! -z $1 ]]
then
    if [ $1 -eq 0 ]
    then
        bash -c "./nuxeoctl stop"
    
    elif [ $1 -eq 1 ]  
    then
        bash -c "./nuxeoctl start"
    else
        bash -c "./nuxeoctl console"
    fi
else
    bash -c "./nuxeoctl console"
fi
