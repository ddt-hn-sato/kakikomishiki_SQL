/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:以下は、書籍情報テーブル（books）上で分類IDが「Z9999（未分類）」であるか、NULLである書籍を削除するSQL命令ですが、
 * 誤りが2点あります。誤りを指摘してください。
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

DELETE FROM /* DELETE ではなく DELETE FROM */
	books
WHERE
	category_id = 'Z9999'
  OR /* AND ではなく OR */
	category_id IS NULL
;

/* 確認用クエリ */
SELECT * FROM books;