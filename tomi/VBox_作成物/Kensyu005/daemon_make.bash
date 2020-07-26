#!/usr/bin/bash
#Linux課題_005
#デーモン生成用シェル 

while :
do
	#停止ファイルが存在する場合
	if [ -e /home/t2020091/Linux_Kensyu/Kensyu005/a.txt ]; then
		echo "a.txtが存在したため、削除致します。"
		rm /home/t2020091/Linux_Kensyu/Kensyu005/a.txt
		exit 0
	fi

sleep 3s

done
