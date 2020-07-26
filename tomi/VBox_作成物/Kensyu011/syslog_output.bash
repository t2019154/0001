#!/usr/bin/bash
#Linux課題_No011

#引数のファイルパス
path_file=$1

#パラメータチェック
parm_check(){
	if [ ${1##*.} != txt  ]; then
		echo "拡張子が.txt のファイルを指定してください" >&2
		exit 1
	fi

	if [ ! -e $1 ]; then
		echo "指定のファイルが存在しません" >&2
		exit 1
	fi
}

parm_check $path_file

#システムログに追記
logger -f $path_file
exit $?
