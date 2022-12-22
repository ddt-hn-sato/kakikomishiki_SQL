/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:貸し出し記録テーブル（rental）上、returned列が９（紛失）であるレコードについて、
 * 対応する書籍情報テーブル（books）上の分類IDを「XXXXX」（その他）に更新してみましょう。
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
	category_id = 'XXXXX'
WHERE
	EXISTS
	(
    SELECT
		*
	FROM
		rental
	WHERE
		returned = 9
	)
;

/* 確認用クエリ */
SELECT * FROM books;