#!/bin/zsh

add () {
  sum=$(( $1 + $2 ))
  echo "Сумма: $sum"
}

read -p "1: " first
read -p "2: " second
add first second