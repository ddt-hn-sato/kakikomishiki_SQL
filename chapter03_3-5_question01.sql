/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:書籍情報テーブル(books)上、出版社を
 * 「山田出版」から「WINGS出版」に変更してみましょう。
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

UPDATE
	books
SET
	publish = 'WINGS出版'
WHERE
	publish = '山田出版'
;

/* 確認用クエリ */
SELECT * FROM books;