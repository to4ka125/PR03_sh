#!/bin/bash


num=$RANDOM;
if [ $((num%2)) -eq 0 ];
then 
  echo -e "\e[1;31mЧётное число: $num\e[0m"
else
echo -e "\e[34mНeчетное числ: $num\e[0m"

fi