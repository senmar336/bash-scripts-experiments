#!/bin/bash

# Проверяем количество аргументов
if [ $# -ne 2 ]; then
    echo "Использование: $0 <исходный_файл.c> <результирующий_файл.exe>"
    exit 1
fi

# Присваиваем аргументы переменным
source_file="$1"
executable_file="$2"

# Компилируем программу
gcc "$source_file" -o "$executable_file"

# Проверяем код возврата компиляции
if [ $? -eq 0 ]; then
    echo "Программа успешно скомпилирована: $executable_file"
    # Запускаем программу
    ./"$executable_file"
else
    echo "Ошибка при компиляции программы."
fi
