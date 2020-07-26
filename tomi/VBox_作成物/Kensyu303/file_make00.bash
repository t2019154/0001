#!/usr/bin/bash
#Linux課題_303
#test01~09.txt作成用シェル

#list.txtを読み込み
while read file
do

        #test01~08.txtを作成
        touch /home/t2020091/Linux_Kensyu/Kensyu303/$file
        cp /home/t2020091/Linux_Kensyu/Kensyu303/tmp.txt /home/t2020091/Linux_Kensyu/Kensyu303/$file

done < /home/t2020091/Linux_Kensyu/Kensyu303/list.txt

