#!/bin/bash
printf "Local do arquivo: "
read file
count=1
while IFS= read -r line
do
  # printa cada linha
  printf "%s | %s\n" "$count" "$line";
  # loop counter
  count=`expr $count + 1`;
done < "$file"
# conta total de linhas
total_lines=`wc -l < ${file}`
echo "`wc -l < ${file}` linhas de texto."