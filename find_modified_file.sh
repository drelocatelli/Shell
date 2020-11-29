# LISTA OU DELETA ARQUIVOS COM X TEMPO DE MODIFICAÇÃO
# Exemplo de como utilizar :::: sh find_modified_file.sh "Pasta" "[n] [years|days|month|minutes] [ago]" [list|delete]
echo "-----------------------------" && date && echo "-----------------------------"
folder_path="$HOME/$1"
if [ "$3" = "list" ]
then
    echo "Listando arquivos com '$2'."
    find "$folder_path" -not -path "$folder_path" -type f -newermt "$2" -exec ls -lhag --time-style=+"| %d %b %Y %H:%M:%S |" {}  \;
elif [ "$3" = "delete" ]
then
    echo "Removendo arquivos com '$2'."
    find "$folder_path" -not -path "$folder_path" -type f -newermt "$2" -exec rm -rv {} \;
fi

cd ~
