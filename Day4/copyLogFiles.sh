for files in *.log
do
        folderName=`echo $files | awk -F. '{print $1}'`;
        echo $files;
        echo $folderName;
        printf "\n";
        mkdir $folderName;
        cp $files $folderName/$files;
        currentDate=`date | awk '{print $3 "" $2 "" $6}'`;
        echo "$currentDate"
        temp=$folderName-$currentDate.log
        echo "$temp"
        cp $folderName/$files $folderName/$temp
done
