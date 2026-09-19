#!/bin/bash
name=$1
mkdir /home/$name
touch /home/$name/.bashrc
echo "Привет, $name!"
echo "Пользователь $name создан" >> setup.log

