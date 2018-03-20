if [ -z "$1" ]; 
then
    echo "need to specify chapter number"
    else
        chapterNum=$(addLeadingZeroes.sh $1 3)
        if [ "$2" -eq "$2" ] 2>/dev/null ; then
            pageNum="$2"
        else
            chapterTitle="$chapterNum"_"$2"                
            echo "chapter title concatenated $chapterTitle"
            pageNum=14
            echo "Default number of pages will be used: $pageNum"
        fi
        if ! [ -z "$3" ]; then
                chapterTitle="$chapterNum"_"$3"
        fi
        let lastChapter="$1 - 1"
        mkdir -p chapitre_"$chapterTitle"
        cd chapitre_"$chapterTitle"
        mkdir -p dump
        mkdir -p kra
        mkdir -p scribus
        mkdir -p text
        mkdir -p scenario
        mkdir -p thumbnails
        touch scenario/chapitre_$chapterNum.txt
        #mkdir -p script
        #mkdir -p storyboard
        mkdir -p release
        #mkdir -p svg/png

        cd ../..
        seriesName=$(basename "$PWD")
        cd - > /dev/null
        cd kra
        exec populate.sh $pageNum "$seriesName"&
        #cd ../svg
        #exec populate.sh $pageNum &
        cd ../..
        cp -n "/home/b/Pictures/images/WASTE/Manga/generic/scribus/generique.sla" chapitre_"$chapterTitle"/scribus/chapitre_$1.sla
        perl -pi -e "s/_c$lastChapter/_c$1/" chapitre_"$chapterTitle"/scribus/chapitre_$1.sla
        perl -pi -e "s/chapter $lastChapter/chapter $1/i" chapitre_"$chapterTitle"/scribus/chapitre_$1.sla
        #cp -n generic/svg/png/vierge.png chapitre_$1/svg/png/vierge.png
        
        if [ ! -L /home/b/Pictures/"$seriesName"_chapitre_"$chapterTitle" ]; 
            then                
            ln -s "$PWD"/"$seriesName"_chapitre_"$chapterTitle" /home/b/Pictures
        fi
fi

