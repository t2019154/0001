#!/usr/bin/bash
#Linux課題_No012

#連携ファイルパス
path_file=/home/t2020091/Linux_Kensyu/Kensyu012/coop_test.txt

#コマンド実行確認
command_check(){
	if [ $1 -ne 0 ]; then

		echo "コマンドエラー"
		exit 1
	fi
}

#連携ファイル作成
echo -n > $path_file
command_check $?


echo "パターン1（$(date +%Y/%m/%d\ \ \ %H:%M:%S:%2N)）"
command_check $?
echo -ne "ptn002\n" >> $path_file
command_check $?


while :
do
	sleep 1s
	command_check $?

	#ファイル末尾に"ptn004"
	if [ "$(tail -n 1 $path_file)" == "ptn004" ]; then
		
		echo "パターン4（$(date +%Y/%m/%d\ \ \ %H:%M:%S:%2N)）"
		command_check $?
		echo -ne "ptn005\n" >> $path_file
		command_check $?

	fi
	
	#ファイル末尾に"end"
	if [ "$(tail -n 1 $path_file)" == "end" ]; then
		
		break

	fi
done

exit 0
