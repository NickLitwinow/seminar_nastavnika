#!/bin/bash

read -p "Число: " number

if (( $(echo "$number > 0" | bc -l) )); then
    echo "$number > 0\n\nПосчитаем:"

    count=1
    while (( count <= number )); do
        echo $count
        ((count++))
    done

elif (( $(echo "$number < 0" | bc -l) )); then
    echo "$number < 0"
else
    echo "$number = 0"
fi