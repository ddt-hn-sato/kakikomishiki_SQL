/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:店舗テーブル（shop）と月間売上テーブル（sales）から2012年の全売上高を、売上高の低い順に出力してみましょう。
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
	s_name AS 店舗名,
    SUM(sl.s_value) AS 全売上高
FROM
	shop AS sh
INNER JOIN
	sales AS sl
ON
	sh.s_id = sl.s_id
GROUP BY
	sl.s_id
ORDER BY
	SUM(sl.s_value) ASC
;
