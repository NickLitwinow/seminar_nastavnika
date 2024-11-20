#!/bin/zsh

server="$1"

if ping -q -c 1 "$server"
then
  echo "Сервер $server доступен."
else
  echo "Сервер $server недоступен."
fi