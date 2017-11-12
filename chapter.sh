if [ -z "$1" ]; 
then
    echo "need to specify chapter number"
    else
        if [ -z "$2" ];
            then
                pageNum=14
                echo "Default number of pages will be used: $pageNum"
            else
                pageNum=$2
        fi
        let lastChapter="$1 - 1"
        mkdir -p chapitre_$1
        cd chapitre_$1
        mkdir -p dump
        mkdir -p kra
        mkdir -p scribus
        mkdir -p text
        mkdir -p scenario
        touch scenario/chapitre_$1.txt
        #mkdir -p script
        #mkdir -p storyboard
        mkdir -p release
        mkdir -p svg/png
        cd ..
        cd chapitre_$1/kra
        sh /home/b/Documents/scripts/populate.sh $pageNum
        cd ../svg
        sh /home/b/Documents/scripts/populate.sh $pageNum
        cd ../..
        cp -n chapitre_$lastChapter/scribus/chapitre_$lastChapter.sla chapitre_$1/scribus/chapitre_$1.sla
        cp -n generic/svg/png/vierge.png chapitre_$1/svg/png/vierge.png

        if [ ! -L /home/b/Pictures/chapitre_$1 ]; then                
        ln -s "$PWD"/chapitre_$1 /home/b/Pictures
        fi
fi
