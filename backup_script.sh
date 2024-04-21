#!/bin/bash

# Шлях до директорії для бекапу
BACKUP_SRC="/home/username/data"
# Шлях, куди буде збережено бекап
BACKUP_DEST="/home/username/backups"
# Ім'я файлу бекапу
BACKUP_NAME="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

# Створення директорії для бекапів, якщо вона не існує
mkdir -p $BACKUP_DEST

# Створення архіву
tar -czf $BACKUP_DEST/$BACKUP_NAME --exclude='*.dat' $BACKUP_SRC

# Повідомлення про завершення бекапу
echo "Backup created at $BACKUP_DEST/$BACKUP_NAME"