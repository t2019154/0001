#!/usr/bin/bash
#Linux課題_901

#検索先とコピー先のパスを格納
path=/c/Users/tdcsoft/Desktop/Linux_Kensyu/$1
cp_path=/c/Users/tdcsoft/Desktop/Linux_Kensyu/Kensyu901

#引数に指定されたディレクトリからシェルを検索する
for file_path in $(find $path -name *.sh)
do
	#検索したシェルのパスの内、ファイル名のみ取得
	file=$(basename $file_path)
	echo "検索結果（shファイル）：$file";

	#検索したシェルの2行目を読み込み、和名部分を変数に格納
	wamei=$(sed -n 2p $file_path)

	#検索したシェルをコピー（ファイル名に２行目の和名を付加）
	echo "$(basename $cp_path)ディレクトリ下に ${file%.sh}_${wamei#\#}.sh　を作成"
	cp $file_path ${cp_path}/${file%.sh}_${wamei#\#}.sh
done


