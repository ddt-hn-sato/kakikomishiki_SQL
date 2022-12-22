/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:貸し出し記録テーブル（rental）上、returned列が９（紛失）であるレコードについて、
 * 対応する書籍情報テーブル（books）上の書籍情報を削除してみましょう。
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

DELETE FROM
	books
WHERE
	books.isbn
  IN
    (
    SELECT
		rental.isbn
	FROM
		rental
	WHERE
		rental.returned = 9
    )
;

/* 確認用クエリ */
SELECT * FROM books;