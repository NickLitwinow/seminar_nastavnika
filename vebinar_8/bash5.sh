#!/bin/zsh

read -p "Имя директории: " directory
cd "$directory"

for file in *;
do
  mv "$file" "backup_$file"
done

echo "Закончили"