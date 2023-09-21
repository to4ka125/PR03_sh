#!/bin/bash
folderName="Folder1";
exeFile="file0.exe";

fileCount=$(find "$folderName" -maxdepth 1 -type f | wc -l)

if [ "$fileCount" -gt 7 ]; then
    if [ -f "$folderName/$exeFile" ] && [ -x "$folderName/$exeFile" ]; then
        echo -e "\e[34mФайл исполняемый и существует\e[0m"
    else
        echo -e "\e[31mОТСУТСТВУЕТ\e[0m"
    fi
else
    echo "Количество файлов в папке $folderName меньше или равно 7."
fi