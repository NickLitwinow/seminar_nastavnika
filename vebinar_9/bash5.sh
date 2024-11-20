#!/bin/zsh

if [ $# -ne 1 ]; then
  echo "Укажите директорию для обработки."
  exit 1
fi

directory="$1"

if [ ! -d "$directory" ]; then
  echo "Директория '$directory' не найдена."
  exit 1
fi

cd "$directory"

for file in *; do
  new_name=$(echo "$file" | tr '[:upper:]' '[:lower:]')
  mv "$file" "$new_name"
done