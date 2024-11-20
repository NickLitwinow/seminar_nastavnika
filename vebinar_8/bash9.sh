#!/bin/bash

command="$@" &

pid=$!
echo "PID запущенного процесса: $pid"