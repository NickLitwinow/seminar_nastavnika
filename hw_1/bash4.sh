#!/bin/bash

greet() {
    local name="$1"
    echo "Hello, $name"
}

sum() {
    local num1="$1"
    local num2="$2"
    echo $((num1 + num2))
}

read -p "Введите имя: " name
read -p "Введите первое число: " number1
read -p "Введите второе число: " number2
echo ""

greet "$name"
result=$(sum "$number1" "$number2")
echo "$number1 + $number2 = $result"