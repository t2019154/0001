#!/usr/bin/bash
#Linux課題_001
#test01~09.txt作成用シェル

#list.txtを読み込み
while read file
do

	#test01~08.txtを作成
	touch "/c/Users/tdcsoft/Desktop/Linux_Kensyu/Kensyu001/$file"
	cp /c/Users/tdcsoft/Desktop/Linux_Kensyu/Kensyu001/tmp.txt /c/Users/tdcsoft/Desktop/Linux_Kensyu/Kensyu001/$file

done < /c/Users/tdcsoft/Desktop/Linux_Kensyu/Kensyu001/list.txt
