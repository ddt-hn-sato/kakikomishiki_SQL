/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:書籍情報テーブル（books）で、出版社ごとの書籍価格の平均値を求めてみましょう。
 * その際、取り出す列名はそれぞれ「出版社」「価格平均」とします。
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
    AVG(price) AS 価格平均
FROM
	books
GROUP BY
	publish