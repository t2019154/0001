#!/usr/bin/bash
#Linux課題_002
#test101~109.txt作成用シェル

#list_00100.txtを読み込み
while read file00 file100
do
	#test01~09.txtをtest101~109.txtにファイル名変更
        mv /c/Users/tdcsoft/Desktop/Linux_Kensyu/Kensyu002/$file00 /c/Users/tdcsoft/Desktop/Linux_Kensyu/Kensyu002/$file100
done < /c/Users/tdcsoft/Desktop/Linux_Kensyu/Kensyu002/list_00100.txt

