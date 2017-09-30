if [ -z "$1" ]; 
then
    echo "need to specify chapter number"
    else
        let lastChapter="$1 - 1"
        mkdir chapitre_$1
        cd chapitre_$1
        mkdir kra
        mkdir scribus
        mkdir text
        mkdir scenario
        touch scenario/chapitre_$1.txt
        #mkdir script
        mkdir storyboard
        mkdir release
        mkdir -p svg/png
        cd ..
        cp -n chapitre_$lastChapter/scribus/chapitre_$lastChapter.sla chapitre_$1/scribus/chapitre_$1.sla
        cp -n chapitre_$lastChapter/svg/vierge.svg chapitre_$1/svg/vierge.svg
        cp -n chapitre_$lastChapter/svg/vierge.svg "chapitre_$1/svg/waste_c$1_p01.svg"
        cp -n chapitre_$lastChapter/svg/png/vierge.png chapitre_$1/svg/png/vierge.png
        ln -s "$PWD"/chapitre_$1 /home/b/Pictures
fi
