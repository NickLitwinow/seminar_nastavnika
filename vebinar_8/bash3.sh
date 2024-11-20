#!/bin/zsh

read -p "Введите имя директории для архивирования: " directory

current_datetime=$(date +"%Y-%m-%d %H:%M:%S.%3N")
tar -cvf "backup_$current_datetime.tar" "$directory"

echo "Архив успешно создан: backup_$current_datetime.tar.gz"