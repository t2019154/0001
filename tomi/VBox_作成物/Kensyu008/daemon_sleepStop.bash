#!/usr/bin/bash
#Linux課題_008
#条件により停止時間や終了が生じるデーモン作成シェル


while :
do
	#設定ファイルの存在判定
	if [ ! -e /home/t2020091/Linux_Kensyu/Kensyu008/sleep_set.txt ]; then
		echo "設定ファイルが見つかりませんでした" >&2
		exit 1
	fi

	#設定ファイルの読み込み権限確認
	if [ ! -r /home/t2020091/Linux_Kensyu/Kensyu008/sleep_set.txt ]; then
		echo "設定ファイルの読み込み権限がありませんでした" >&2
		exit 1
	fi

	while read time
	do
		#設定ファイルの指定秒数がある場合
		if [ -n "$time" ]; then
			echo "設定ファイルの指定秒数停止中";
			echo "$time"
			$($time)

		#指定秒数がない場合
		else
			echo "設定ファイルに指定秒数がないため、3秒停止中";
			echo "sleep 3s"
			sleep 3s
		fi

	done < /home/t2020091/Linux_Kensyu/Kensyu008/sleep_set.txt
	
	#停止ファイルが存在確認
	if [ -e /home/t2020091/Linux_Kensyu/Kensyu008/sleep_stop.txt ]; then
		echo "停止ファイルを見つけたため、削除し停止します"
		rm /home/t2020091/Linux_Kensyu/Kensyu008/sleep_stop.txt
		exit 0
	fi
done


