#!/bin/zsh

generate_password() {
  length="$1"
  password=""

  chars="1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM"

  for ((i=0; i<length; i++))
  do
    password+="${chars:RANDOM%${#chars}:1}"
  done

  echo "$password"
}

read -p "Введите желаемую длину пароля: " length

password=$(generate_password "$length")

echo "Сгенерированный пароль: $password"