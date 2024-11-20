#!/bin/bash

if [[ ! -f input.txt ]]; then
    echo "[input.txt]: Не существует."
    exit 1
fi

wc -l < input.txt > output.txt

ls doesntexist.txt 2> errors.log

echo "Строки посчитаны и записаны в >> output.txt."
echo "Ошибки записаны в >> errors.log."