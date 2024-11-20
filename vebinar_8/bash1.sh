#!/bin/zsh
read -p "Ваше имя: " name
read -p "Ваш возраст: " age
echo "Привет, $name! Через год тебе будет $((age + 1)) лет."
