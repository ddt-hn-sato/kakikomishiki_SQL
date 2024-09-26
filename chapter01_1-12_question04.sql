/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:書籍情報テーブル（books）から出版社、分類IDごとに登録数を求め、登録数が3冊未満の情報だけを取り出してみましょう。
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
    category_id AS 分類ID,
    COUNT(isbn) AS 登録数
FROM
	books
GROUP BY
	publish, category_id
HAVING
	COUNT(isbn) < 3
;
    
