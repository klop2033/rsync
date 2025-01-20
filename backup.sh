#!/bin/bash
# переменная с директорией куда кидать копию
DIR="/tmp/backup"
# Переменная где распологаеться лог файл
LOG="/home/tet/Netology/rsync/backup.log"
# Команда скрипта (2>&1)- перенапровление всех выводов
rsync -av --delete --exclude='.*' ~/ "$DIR" >> "$LOG" 2>&1
echo " Резервное копирование от: $(date) " >> "$LOG"
