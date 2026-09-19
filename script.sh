#!/bin/bash

if [ -z "$1" ]; then
	echo "Ошибка: не указано имя пользователя"
	echo "Использование:./script.sh <имя пользователя>"
	exit 1
fi

name=$1
userdir="./users/$name"

if [ -d "$userdir" ]; then
	echo "Директория $userdir уже существует"
else
	mkdir -p "$userdir"
	echo "Создана директория $userdir"
fi


touch "$userdir/.bashrc"
echo "Привет, $name!"
timestamp=$(date '+%Y-%m-%d %H:%M:%S')
echo "[$timestamp] Пользователь $username создан" >> setup.log
