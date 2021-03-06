if [ -z "$1" ]; 
then
    echo "need to specify chapter number"
    else
        let lastChapter="$1 - 1"
        cp -n -R generic chapitre_$1        
        #mkdir -pchapitre_$1
        cd chapitre_$1
        mkdir -p dump
        #mkdir -pkra
        mkdir -p scribus
        mkdir -p text
        mkdir -p scenario
        touch scenario/chapitre_$1.txt
        #mkdir -p script
        mkdir -p storyboard
        mkdir -p release
        ##mkdir -p svg/png
        cd ..
        cd chapitre_$1/kra
        sh /home/b/Documents/scripts/populate.sh $2
        cd ../svg
        sh /home/b/Documents/scripts/populate.sh $2
        cd ../..
        cp -n chapitre_$lastChapter/scribus/chapitre_$lastChapter.sla chapitre_$1/scribus/chapitre_$1.sla
        
        if [ ! -L /home/b/Pictures/chapitre_$1 ]; then                
        ln -s "$PWD"/chapitre_$1 /home/b/Pictures
        fi

fi
