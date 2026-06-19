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

head log.txt

awk 'NR < 10' log.txt

grep "42.236.10.117" log.txt # This filters the log.txt file and displays only the complete lines that contain the IP address 42.236.10.117.

awk '{print $7}' log.txt # Processes text line by line and extracts only the seventh column

grep "42.236.10.117" log.txt | awk '{print $7}' # This command first filters the log.txt file to find lines containing the IP address and shows only the resources or pages (column 7) visited by that specific IP address

sed 's/Mozilla/Godzilla/g' log.txt

sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt

sed 's/ //g' log.txt

sed '1d' log.txt

sed '$d' log.txt

sed '5,7d' log.txt

sed -n '2,15 p' log.txt

sed -i '1d' log.txt