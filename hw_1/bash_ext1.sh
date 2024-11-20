#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Использование: $0 [Директория 1] [Директория 2]"
    exit 1
fi

d1="$1"
d2="$2"
logs="logs.txt"

if [ ! -d "$d1" ]; then
    echo "Ошибка: [$d1] Не существует."
    exit 1
fi

mkdir -p "$d2"

date=$(date +%Y-%m-%d)

counter=0

for file in "$d1"/*; do
    if [ -f "$file" ]; then
        name=$(basename "$file")
        backup="$d2/${date}~${name}"
	cp "$file" "$backup"
        ((counter++))
        echo "Файл скопирован: [$file] >> [$backup]" >> "$logs"
    fi
done

if [ "$counter" -gt 0 ]; then
    echo "Скопировано файлов в ['$d2']: $counter"
else
    echo "Ошибка: Нет файлов в ['$d1']"
fi