#!/usr/bin/bash
#Linux課題_No014

#連携ファイルパス
path_file=/home/t2020091/Linux_Kensyu/Kensyu012/coop_test.txt

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

	#ファイル末尾に"ptn003"
        if [ "$(tail -n 1 $path_file)" == "ptn003" ]; then
		echo "パターン3（$(date +%Y/%m/%d\ \ \ %H:%M:%S:%2N)）"
                command_check $?
                echo -ne "ptn004\n" >> $path_file
                command_check $?
        fi

	#ファイル末尾に"ptn006"
	if [ "$(tail -n 1 $path_file)" == "ptn006" ]; then
		echo "パターン6（$(date +%Y/%m/%d\ \ \ %H:%M:%S:%2N)）"
                command_check $?
                echo -ne "end\n" >> $path_file
                command_check $?
		
		break
	fi
done

exit 0
