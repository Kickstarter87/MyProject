#!/bin/bash

# Директория, которую нужно архивировать
source_directory="/home/sert/MyDirectory"

# Директория, куда будут сохраняться резервные копии
backup_directory="/home/sert/"

# Получение текущей даты в формате YYYY-MM-DD
current_date=$(date +"%Y-%m-%d")

# Имя файла архива с датой
backup_filename="backup_$current_date.tar.gz"

# Полный путь к файлу архива
backup_path="$backup_directory/$backup_filename"

# Создание резервной копии
tar -czf "$backup_path" -C "$source_directory" .

# Вывод сообщения о завершении
echo "Резервная копия создана: $backup_path"
