#!/usr/bin/bash
#Linux課題_007
#非同期実行シェルを終了させるシェル


#非同期で動いているプロセスIDを取得
pid=$(pgrep -nf daemon_make.sh)

#引数にfオプションがあるか判定
getopts f OPT

#fオプションがある場合
if [ "$OPT" = "f" ]; then
	#取得したNo.5のプロセスIDからプロセスを終了
	kill -KILL $pid

else
	#停止ファイル作成
	touch /home/t2020091/Linux_Kensyu/Kensyu005/a.txt

fi

sleep 3s

#同プロセスIDで稼働中プロセスがあるか確認
pid_cnf=$(ps -hp $pid)

#プロセス停止確認	
if [ -n "$pid_cnf" ]; then
	echo "プロセスの停止に問題がありました" >&2	
	exit 1
fi

echo "プロセスを停止しました"
exit 0
