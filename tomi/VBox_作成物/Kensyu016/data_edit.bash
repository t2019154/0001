#!/usr/bin/bash
#Linux課題_No016


#オプションチェック
getopts k:A: OPT

#検索対象ディレクトリ
path_file=/home/t2020091/Linux_Kensyu/$2/
#ksh一覧ファイル
path_ksh_list=/home/t2020091/Linux_Kensyu/ksh_list_$2.csv
#ksh&bash一覧ファイル
path_kshbash_listfile=/home/t2020091/Linux_Kensyu/ksh_bash_list_$2.csv


#kオプション指定
if [ "$OPT" == "k" ]; then
	#既にksh一覧ファイルが存在
	if [ -e $path_ksh_list ]; then
		echo "古いバージョンの`basename -a $path_ksh_list`があります。"
		rm -i $path_ksh_list
	fi

	#ksh一覧ファイル作成
	for file in `find $path_file -name \*.ksh`
	do
		echo "`basename -a $file`,更新日時（`date -r $file +%m/%d\ %H:%M`）,`wc -c $file | cut -d " " -f 1`" >> $path_ksh_list
	done
fi

#Aオプション指定
if [ "$OPT" == "A" ]; then
	#既にksh&bash一覧ファイルが存在
	if [ -e $path_kshbash_listfile ]; then
		echo "古いバージョンの`basename -a $path_kshbash_listfile`があります。"
		rm -i $path_kshbash_listfile
	fi
	
	#ksh&bash一覧ファイル作成
	for file in `find $path_file -name \*.ksh -o -name \*.bash`
        do
                echo "`basename -a $file`,更新日時（`date -r $file +%m/%d\ %H:%M`）,`wc -c $file | cut -d " " -f 1`" >> $path_kshbash_listfile
        done
fi

#オプション指定なし
if [ -z $OPT ]; then	
	echo "作成できませんでした"
	exit 1
fi


	
