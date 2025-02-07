#!/bin/bash

#1)
#a)
grep -o -E '[01]*' bruxarias.txt > 1a.txt
#b)
grep -o -E '1[01]{0,7}' bruxarias.txt > 1b.txt
#c)
grep -o -E '^1[01]{0,7}$' bruxarias.txt > 1c.txt
#d)
grep -o -E -w '\b[1-9][0-9]*\b' bruxarias.txt > 1d.txt
#e)
grep -o -E '[ue]tt' bruxarias.txt > 1e.txt
#f)
grep -o -E '[A-Z][a-z]{2,}|[a-z]{3,}' bruxarias.txt > 1f.txt
#g)
grep -o -E '\b[a-zA-Z][a-zA-Z0-9_]*\b' bruxarias.txt > 1g.txt
#h)
grep -Eo '\b(25[0-5]|2[0-4][0-9]|1?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|1?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|1?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|1?[0-9][0-9]?)\b' bruxarias.txt > 1h.txt

#2)
#a)
find /etc -type d > 2a.txt
#b)
find /etc -maxdepth 1 -type d > 2b.txt
#c)
find /etc -type f -size +1k > 2c.txt
#d)
find /var -type f -mtime -7 > 2d.txt

#3)
#a)
awk -F: '{print $1}' /etc/passwd > 3a.txt
#b)
awk -F: 'NR>=10 && NR<=20 {print $1}' /etc/passwd > 3b.txt

#4)
sudo adduser teste
#a)
sudo sed -i 's/teste:/exercicio:/' /etc/passwd > 4a.txt
#b)
sudo sed -i '/teste:/d' /etc/passwd > 4b.txt
