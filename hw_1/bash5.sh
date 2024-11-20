#!/bin/bash

set -m

sleep 1 &
pid1=$!
echo "Г Процесс: [sleep 10]\nL PID: [$pid1]"

sleep 2 &
pid2=$!
echo "Г Процесс: [sleep 15]\nL PID: [$pid2]"

sleep 3 &
pid3=$!
echo "Г Процесс: [sleep 20]\nL PID: [$pid3]\n"

echo -e "Список фоновых задач:"
jobs

echo ""

read -p "Нажмите Enter, чтобы вернуть задачу 1 в fg"
fg %1

echo ""

echo -e "Список задач после fg:"
jobs

echo ""

read -p "Нажмите Enter, чтобы перевести задачу 2 в bg"

bg %2

echo ""

echo -e "Список задач после bg:"
jobs