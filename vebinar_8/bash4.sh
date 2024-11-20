#!/bin/zsh

read -p "Введите имя файла: " filename

if [ -f "$filename" ]; then
  num_lines=$(wc -l < "$filename")
  echo "Кол-во строк: $num_lines"
else
  echo "Файл не найден"
fi