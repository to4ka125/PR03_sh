#!/bin/bash

if ! [ -e "/etc/passwd" ] ;then
mkpasswd -l > /etc/passwd
else
echo -e "\e[32mФайл /etc/passwd есть\e[0m"
fi
if ! [ -e "/etc/group" ] ;then
mkgroup -l > /etc/group
else
echo -e "\e[32mФайл /etc/group есть\e[0m"
fi
# Выводим последнюю строку из файла /etc/passwd и подкрашиваем ее желтым
last_passwd_line=$(tail -n 1 "/etc/passwd")
echo -e "\e[33mПоследняя строка из /etc/passwd:\n$last_passwd_line\e[0m"

# Выводим последнюю строку из файла /etc/group и подкрашиваем ее желтым
last_group_line=$(tail -n 1 "/etc/group")
echo -e "\e[33mПоследняя строка из  /etc/group \n$last_group_line\e[0m"