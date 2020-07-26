#!/usr/bin/bash
#Linux課題_004
#パラメータのオプション排除用シェル

#パラメータにオプションがあるか判定
while getopts t OPT
do
	case $OPT in
		t)
			echo "オプション[-t]";
			shift `expr $OPTIND - 1`
			i=1
			while [ $i -le $# ]
			do
				eval echo "引数$i[$"$i"]";
				i=$(( $i + 1 ))
			done
			;;
	esac
done

#パラメータにオプションがない場合、コマンドとして実行
echo "$1を実行";
$1; echo "実行コマンドの戻り値；$?"
exit $?

