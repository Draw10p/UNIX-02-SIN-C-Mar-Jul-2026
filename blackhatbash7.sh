#!/bin/bash
for index in $(seq 1 10); do
  echo "${index}"
done

grep "35.237.4.214" log.txt

grep "35.237.4.214\|13.66.139.0" log.txt

grep -e "35.237.4.214" -e "13.66.139.0" log.txt

ps | grep TTY

ps | grep -i tty

grep -v "35.237.4.214" log.txt

grep -o "35.237.4.214" log.txt

awk '{print $1}' log.txt

awk '{print $1,$2,$3}' log.txt

awk '{print $1,$NF}' log.txt

touch test.csv

echo -e "hola1,chao1\nhola2,chao2\nhola3,chao3" >> test.csv

awk -F, '{print $1}' test.csv