/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:書籍情報テーブル（books）から書名が「SQL○○」（○は一文字）である書籍の情報を取り出してみましょう。
 *　取り出す列は、isbn, title, price列とします。
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
	isbn, title, price
FROM
	books
WHERE
	title LIKE 'SQL__';
