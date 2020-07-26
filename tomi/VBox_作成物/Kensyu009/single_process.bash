#!/usr/bi/bash
#Linux課題_No009

#large_fileディレクトリ用パス
path_Kensyu009=/home/t2020091/Linux_Kensyu/Kensyu009

#引数の数値判定
numeric_check(){
	expr $1 + 1 > /dev/null
	if [ $? -ge 2 ]; then
		echo "引数には、数字を入力してください" >&2
		exit 1
	fi
}

#コマンド実行判定
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

#large_fileディレクトリがない場合、新規作成
if [ ! -e $path_Kensyu009/large_file ]; then
        mkdir $path_Kensyu009/large_file
	command_check $?
fi

#ファイル新規作成
i=1
while [ $i -le $file_num ]
do
	dd if=/dev/zero of=$path_Kensyu009/large_file/file$i bs=$byte count=1
	command_check $?
	i=$((i + 1))
done

exit 0
