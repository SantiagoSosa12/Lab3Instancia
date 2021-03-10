#!/bin/bash

nmap -sP 192.168.0.1/24 > ips.txt

sed -n '/MAC/{n;p;}' ips.txt > test.txt
cut -c 22-33 test.txt > ips.txt

while read line; do
	sed -i "/$line/d" ./ips.txt
done < excluded.txt

echo "NO IP" > test.txt

while read line1; do
       	echo "$line1 comprobando.." 
        (sshpass -p 'a123' timeout 5s ssh "serverone@$line1" node /home/serverone/tigre/index.js &) 2> lec.txt
       	VAR="$(grep refused lec.txt)"
	echo "$VARpedo"
       	if [ "$VAR" = " " ]
        then
       	        echo "Se conecto a una IP!!!"
               	echo "$line1" > test.txt
		tranferir mi mi respaldo
		restaurarlo con mongo
		enviar la nueva ip al middleware
		break
        fi
done < ips.txt

