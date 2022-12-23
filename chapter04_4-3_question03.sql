/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:書籍情報テーブル（books）のcategory_idの後方にsales列（INT型）追加をしてみましょう。
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

/* 確認用クエリ */
SELECT * FROM books;

/* 既にあったので消す */


/* 念のため第4章のすべての問題で最初につけることとする */
use newDBforCHAPTER4;

ALTER TABLE
	books
DROP /* 既にあったので消す */
	sales
;

ALTER TABLE
	books
ADD /* 更新 */
	sales INT
AFTER
	category_id
;

/* 確認用クエリ */
SELECT * FROM books;