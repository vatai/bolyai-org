#! /bin/bash
# vatai@tanari:~$ mkdir vatai-emil-2el
# vatai@tanari:~$ cd vatai-emil-2el/
# vatai@tanari:~$ mv ~/Downloads/ellenorzo.sh .
# vatai@tanari:~/vatai-emil-2el$ chmod +x vatai-emil-2el.sh 
# vatai@tanari:~/vatai-emil-2el$ ./vatai-emil-2el.sh # futtatás
# 

# 1. feladat (pipe)
#
# Számoljuk meg hány hány fájl vagy direktórium van az /usr/share/
# könyvtárban.  Segítség: listázni tudunk, sorokat számolni is. Minden
# fájl/direktórium 


# 1. feladat (átirányítás)
# listáz ki a /usr/share tartalmát az usr-lst.txt fájlba

ls /usr/share > usr-lst.txt


# 3. feladat (grep)
# Az usr-bas.txt fájlba írjuk ki az usr-lst.txt fájl azon sorai 
# melyek amelyek a "bas" stringgel kezdődnek.

# 4. feladat (sed)
# Írjuk ki a usr-bas.txt sorait úgy hogy a kötőjel előtt és után található
# részstring fel van cserélve

# 5. feladat (for)
# 

# 6. feladat (behelyettesítés $())
# 

for i in alma korte szilva
do
  cut -d- -f3 file.txt | grep "$i" >> otosomlesz.txt
done

for i in $(ls)
do 
  echo mv $i $(echo $i|sed 's/\..*//')
done



