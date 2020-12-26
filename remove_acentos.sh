#!/bin/bash
if [ -z "$1" ]
then
    echo -n "Caminho do arquivo: "
    read file
else
    file="$1"
fi    
echo -n `sed -i 'y/áÁàÀãÃâÂéÉêÊíÍóÓõÕôÔúÚçÇ/aAaAaAaAeEeEiIoOoOoOuUcC/' $file`
echo "Acentuação removida de '$file'."
