#!/bin/bash

folderName="Folder1";

if [ ! -d "%$folderName" ];then
echo "Папка $folderName не существует. Создание: "

mkdir "$folderName"
fi

cd "$folderName" || exit 1;

for ((i=0;i<10;i++)); do

    touch "file${i}.exe"

done;

chmod +x *.exe;

echo "Десять файлов с расширением .exe созданы в папке $folderName и имеют права на выполнение."

