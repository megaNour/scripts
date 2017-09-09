if [ -z "$1" ]; 
then
    echo "need to specify chapter number"
    else
        mkdir chapitre_$1
        cd chapitre_$1
        mkdir kra
        mkdir scribus
        mkdir text
        mkdir scenario
        touch scenario/chapitre_$1.txt
        mkdir script
        mkdir storyboard
        mkdir release
        mkdir -p svg/png
        cd ..
        cp -n chapitre_13/scribus/chapitre_13.sla chapitre_$1/scribus/chapitre_$1.sla
        cp -n chapitre_13/svg/waste_c13_p06.svg chapitre_$1/svg/waste_c$1_p01.svg
        cp -n chapitre_12/svg/waste_c12_p08.svg chapitre_$1/svg/vierge.svg
        cp -n chapitre_12/svg/png/08.png chapitre_$1/svg/png/vierge.png
fi
