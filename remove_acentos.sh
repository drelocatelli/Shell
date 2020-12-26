#!/bin/bash
if [ -z "$1" ]
then
    echo -n "Caminho do arquivo: "
    read file
else
    file="$1"
fi    
mv $file "old.$file"
echo `sed 'y/áÁàÀãÃâÂéÉêÊíÍóÓõÕôÔúÚçÇ/aAaAaAaAeEeEiIoOoOoOuUcC/' "old.$file" >> "$file"`
rm -r "old.$file"
echo "Acentuação removida de '$file'."