#!/usr/bin/bash
#Linux課題_No017

#照会ファイル
#query_file=/home/t2020091/Linux_Kensyu/ksh_bash_list_Kensyu010.csv

#照会結果整形用ファイル
line[1]=/home/t2020091/Linux_Kensyu/Kensyu017/prepare/line1.txt
line[2]=/home/t2020091/Linux_Kensyu/Kensyu017/prepare/line2.txt
line[3]=/home/t2020091/Linux_Kensyu/Kensyu017/prepare/line3.txt
query_result=/home/t2020091/Linux_Kensyu/Kensyu017/prepare/query.txt

#更新日時とバイト数の列入れ替え
for i in `seq 3`
do
	cut -d, -f $i $1 > ${line[$i]}
done

paste ${line[1]} ${line[3]} ${line[2]} > $query_result

#照会結果表示
nl -w3 -nrz $query_result | sed 1i"No  ファイル名  バイト数  更新日時（mm/dd HH:MM）"  | column -t

#不要なファイルを削除
rm ${line[1]} ${line[2]} ${line[3]} $query_result

