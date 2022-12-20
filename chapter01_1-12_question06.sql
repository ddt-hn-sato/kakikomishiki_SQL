/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:アクセス記録テーブル（access_log）からアクセス日付が2013/01/01以降のものについて
 * リンク元URLごとにアクセス数を算出してみましょう。その際、アクセス数が5件未満のもののみをアクセス数降順で出力してください。
 * 以下の空欄を埋めてSQL命令を完成させてみましょう。
 *
 * 回答:
 *  下記SQL文をご参照ください。
 *
 * 作成日:2022/12/19
 * 作成者:HinaSato
 * 修正日:
 * 修正者:
 * ver:1.0.0
 */
 
SELECT
	referer AS リンク元URL,
    COUNT(log_id) AS アクセス数 /* アクセス数を算出 */
FROM
	 access_log
WHERE
	access_date >= '2013-01-01'
GROUP BY
	referer
HAVING
	COUNT(log_id) < 5
ORDER BY
	COUNT(log_id) DESC
