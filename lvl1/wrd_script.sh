#!/bin/bash

# Проверяем количество аргументов
if [ $# -ne 2 ]; then
    echo "Использование: $0 <строка> <каталог>"
    exit 1
fi

# Присваиваем аргументы переменным
search_string="$1"
directory="$2"

# Проверяем существование каталога
if [ ! -d "$directory" ]; then
    echo "Каталог $directory не существует."
    exit 1
fi

# Поиск файлов в указанном каталоге и его подкаталогах
# Исключаем вывод сообщений об ошибках доступа
find "$directory" -type f -exec grep -q "$search_string" {} \; -exec echo "{}" \; -exec du -h {} \; 2>/dev/null
