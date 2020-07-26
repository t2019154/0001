#!/usr/bin/bash
#Linux課題_002_list100作成用
#test101~109.txt用のlist100.txt作成用シェル

#list_100.txtの作成
sed -e "s/0/10/g" /c/Users/tdcsoft/Desktop/Linux_Kensyu/Kensyu001/list.txt > /c/Users/tdcsoft/Desktop/Linux_Kensyu/Kensyu002/list_100.txt

#list_00100.txtの作成
paste /c/Users/tdcsoft/Desktop/Linux_Kensyu/Kensyu001/list.txt  /c/Users/tdcsoft/Desktop/Linux_Kensyu/Kensyu002/list_100.txt >  /c/Users/tdcsoft/Desktop/Linux_Kensyu/Kensyu002/list_00100.txt

