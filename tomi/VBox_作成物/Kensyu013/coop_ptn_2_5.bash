#!/usr/bin/bash
#Linux課題_No013

#連携ファイルパス
path_file=/home/t2020091/Linux_Kensyu/Kensyu012/coop_test.txt

#コマンド実行チェック
command_check(){
        if [ $1 -ne 0 ]; then
        
                echo "コマンドエラー"
                exit 1
	fi
}


while :
do
        sleep 1s
        command_check $?

	#ファイル末尾に"ptn002"
	if [ "$(tail -n 1 $path_file)" == "ptn002" ]; then
		echo "パターン2（$(date +%Y/%m/%d\ \ \ %H:%M:%S:%2N)）"
                command_check $?
                echo -ne "ptn003\n" >> $path_file
                command_check $?
        fi

	#ファイル末尾に"ptn005"
	if [ "$(tail -n 1 $path_file)" == "ptn005" ]; then
		echo "パターン5（$(date +%Y/%m/%d\ \ \ %H:%M:%S:%2N)）"
                command_check $?
		echo -ne "ptn006\n" >> $path_file
                command_check $?

		break
        fi
done

exit 0
