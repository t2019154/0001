#!/usr/bin/bash
#Linux課題_001_list作成用
#list.txt作成用シェル

#list.txtにtest01~08.txtを書き込む
for i in 1 2 3 4 5 6 7 8 9
do
	echo "test0${i}.txt" >> /c/Users/tdcsoft/Desktop/Linux_Kensyu/Kensyu001/list.txt
done
