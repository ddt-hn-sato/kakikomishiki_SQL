/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:書籍情報テーブル（books）で、出版社ごとの書籍価格の平均値を求めてみましょう。
 * 平均値が小数点数になった場合、小数点以下を切り捨てます。
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
	publish AS 出版社,
	TRUNCATE(AVG(price), 0) AS 書籍価格の平均値
FROM
	books
GROUP BY
	publish
;
