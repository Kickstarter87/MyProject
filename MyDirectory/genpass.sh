#!/bin/bash

# Проверка, переданы ли аргументы
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <length> <output_file>"
  exit 1
fi

# Генерация пароля и запись в файл
< /dev/urandom tr -dc 'A-Za-z0-9' | head -c "$1" > "$2"

echo "Password saved to $2"
