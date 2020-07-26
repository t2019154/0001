#!/usr/bin/bash
#Linux課題_303_list作成用
#list.txt作成用シェル

#list.txtにtest01~08.txtを書き込む
for i in 1 2 3 4 5 6 7 8 9
do
        echo -ne "test0${i}.txt\r\n" >> /home/t2020091/Linux_Kensyu/Kensyu303/list.txt
done
