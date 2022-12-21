/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:店舗売上テーブル（shop）と月間売上テーブル（sales）から
 * 2012年12月の売上高が店舗売上平均（2012年12月の平均）を下回っている店舗名と
 * その売上高を挙げてみましょう。
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
 
 /*
 ・2012年12月の店舗売上平均（2012年12月の平均） → サブクエリ
 ・を、同月の売上高が下回っている、店舗名と売上高 →メインクエリ
 */
 
SELECT
	shop.s_name AS 店舗名,
    sales.s_value AS 売上高（千円）
FROM
	shop
INNER JOIN
	sales
ON
	shop.s_id = sales.s_id
WHERE
	sales.s_date = '2012-12'
  AND
	sales.s_value < 
    (
    SELECT
		AVG(sales.s_value) AS 12月の店舗売上平均
	FROM
		sales
	WHERE
		sales.s_date = '2012-12'
    )
;