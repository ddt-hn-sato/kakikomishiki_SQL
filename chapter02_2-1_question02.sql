/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:店舗テーブル（shop）と月間売上テーブル（sales）から2012年12月の売り上げを売上高の高い順に出力してみましょう。
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
	sh.s_name AS 店舗,
    sl.s_value AS 売上高
FROM
	shop AS sh
INNER JOIN
	sales AS sl
ON
	sh.s_id = sl.s_id
WHERE
	sl.s_date = '2012-12'
ORDER BY
	sl.s_value DESC
;
