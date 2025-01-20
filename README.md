
# Домашнее задание к занятию 3 «Резервное копирование» Фролов Кирилл

### Задание 1
- Составьте команду rsync, которая позволяет создавать зеркальную копию домашней директории пользователя в директорию `/tmp/backup`
- Необходимо исключить из синхронизации все директории, начинающиеся с точки (скрытые)
- Необходимо сделать так, чтобы rsync подсчитывал хэш-суммы для всех файлов, даже если их время модификации и размер идентичны в источнике и приемнике.
- На проверку направить скриншот с командой и результатом ее выполнения
---
### Ответ:
```
rsync -av --checksum --exclude='.*' ~/ /tmp/backup/
```
![1](scrn/1.png)
![2](scrn/2.png)
![3](scrn/3.png)
---

### Задание 2
- Написать скрипт и настроить задачу на регулярное резервное копирование домашней директории пользователя с помощью rsync и cron.
- Резервная копия должна быть полностью зеркальной
- Резервная копия должна создаваться раз в день, в системном логе должна появляться запись об успешном или неуспешном выполнении операции
- Резервная копия размещается локально, в директории `/tmp/backup`
- На проверку направить файл crontab и скриншот с результатом работы утилиты.
---
### Ответ:
![4](scrn/4.png)
![5](scrn/5.png)

#### Файл crontab в репозитории "tet"
