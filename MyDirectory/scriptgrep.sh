#!/bin/bash

# Укажите имя файла
filename="MyFile1.txt"

# Проверьте, существует ли файл
if [[ ! -f $filename ]]; then
  echo "Файл не найден!"
  exit 1
fi

# Чтение файла и переворачивание строк
rev "$filename"
