#!/bin/zsh
read -p "Введите имя файла: " filename

if [ -e "$filename" ]; then
  echo "Файл найден!"
else
  echo "Файл не найден."
fi