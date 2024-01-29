#!/bin/bash

# Проверяем количество аргументов
if [ $# -ne 3 ]; then
    echo "Использование: $0 <имя_файла> <каталог> <расширение>"
    exit 1
fi

# Присваиваем аргументы переменным
file_name="$1"
directory="$2"
extension="$3"

# Проверяем существование каталога
if [ ! -d "$directory" ]; then
    echo "Каталог $directory не существует."
    exit 1
fi

# Переходим в заданный каталог
cd "$directory" || exit

# Ищем файлы с заданным расширением и записываем их имена в файл
find . -type f -name "*.$extension" > "$file_name"

echo "Имена файлов с расширением .$extension из каталога $directory были записаны в файл $file_name."
