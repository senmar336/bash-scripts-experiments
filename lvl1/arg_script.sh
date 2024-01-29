#!/bin/bash

# Проверяем, переданы ли аргументы командной строки
if [ $# -eq 0 ]; then
    echo "Usage: $0 [arguments...]"
    exit 1
fi

# Выводим аргументы на консоль
echo "Аргументы командной строки:"
for arg in "$@"; do
    echo "$arg"
done

# Записываем аргументы в файл args.txt
echo "Аргументы командной строки:" > args.txt
for arg in "$@"; do
    echo "$arg" >> args.txt
done

echo "Аргументы были записаны в файл args.txt"
