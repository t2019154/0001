#!/usr/bin/bash
#Linux課題_No15

#作業ディレクトリ
work_dir=/home/t2020091/Linux_Kensyu
#バックアップディレクトリパス
bk_dir=/home/t2020091/Linux_Kensyu/Kensyu015/backup_dir
#ファイルパス
bk_file=$bk_dir/bk_Kensyu015.tar.gz
#日付付与後のファイル
bk_file_date=${bk_file%.tar.gz}_$(date +%Y%m%d_%H%M).tar.gz

#コマンドエラーチェック
command_check(){
	if [ $1 -ne 0 ]; then
		exit 1
	fi
}

#バックアップディレクトリ作成
if [ ! -e $bk_dir ]; then
	mkdir $bk_dir
	command_check $?
fi

#バックアップ作成（tar.gz）
tar cfvz $bk_file -C $work_dir Kensyu015
command_check $?

#作成したバックアップファイルに日付付与
mv $bk_file $bk_file_date
command_check $?

exit 0
