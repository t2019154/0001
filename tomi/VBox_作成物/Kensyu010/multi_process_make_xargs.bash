#!/usr/bin/bash
#Linux課題_No010

path_Kensyu010=/home/t2020091/Linux_Kensyu/Kensyu010

#引数の数値判定
numeric_check(){
	expr $1 + 1 > /dev/null
	if [ $? -ge 2 ]; then
		echo "引数には、数字を入力してください" >&2
		exit 1
	fi
}


#コマンド実行確認
command_check(){
	if [ $1 -ne 0 ]; then
		echo "コマンドエラー" >&2
		exit 1
	fi
}

#引数1：バイト数
byte=$1
numeric_check $byte
#引数2：ファイル個数
file_num=$2
numeric_check $file_num
#引数3：多重度
multi_plicity=$3
numeric_check $file_num

#large_fileディレクトリがない場合、新規作成
if [ ! -e $path_Kensyu010/large_file ]; then
        mkdir $path_Kensyu010/large_file
	command_check $?
fi

#ファイル新規作成
seq $file_num | xargs -I{} -P $multi_plicity dd if=/dev/zero of=$path_Kensyu010/large_file/file{}  bs=1 count=$byte
command_check $?

wait

exit 0
