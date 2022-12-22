/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題: 3-4 問1でISBNコードの先頭に付加した固定文字列「ISBN」を一律取り除いてみましょう。
 * 対応するためのSQL命令を記述してみましょう。
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
	isbn = REPLACE(isbn, 'ISBN', '')
;

/* 確認用クエリ */
SELECT * FROM books;