#!/bin/zsh

file="$1"
word="$2"

count=$(grep -io "$word" "$file" | wc -l)

echo "Слово '$word' встречается в файле '$file' $count раз."