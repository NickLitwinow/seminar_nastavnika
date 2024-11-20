#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Использование: $0 [имя файла]"
    exit 1
fi

target_file=$1

echo "Список файлов и каталогов в текущей директории:"
for item in *; do
    if [ -f "$item" ]; then
        echo "[$item]: Файл"
    elif [ -d "$item" ]; then
        echo "[$item]: Каталог"
    else
        echo "$item - Другой тип"
    fi
done

echo ""

if [ -e "$target_file" ]; then
    echo "['$target_file']: Существует."
else
    echo "['$target_file'] Не существует."
fi

echo ""

echo "Информация о файлах в текущей директории:"
for file in *; do
    if [ -e "$file" ]; then
        permissions=$(ls -l "$file" | awk '{print $1}')
        echo "[$file]: $permissions"
    fi
done