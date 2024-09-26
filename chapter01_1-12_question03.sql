/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:著者ー書籍情報テーブル（author_books）で、著者ごとの書籍数を求め、登録数が3さつ以上の情報だけを取り出してみましょう。
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
	author_id AS 著者,
	COUNT(isbn) AS 書籍数
FROM
	author_books
GROUP BY
	author_id
HAVING
	COUNT(isbn) >= 3
;