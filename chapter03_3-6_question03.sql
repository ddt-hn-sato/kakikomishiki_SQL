/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:書籍情報テーブル（books）上、書名の後方に分類名を付加してみましょう。
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
	books.title = CONCAT(books.title, 
		(
        SELECT
			c.category_name
		FROM
			category AS c
		WHERE
			books.category_id = c.category_id
		)
	)
;

/* 確認用クエリ */
SELECT * FROM books;