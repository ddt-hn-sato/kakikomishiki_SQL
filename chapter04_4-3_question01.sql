/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:書籍情報テーブル（books）に対して、page列（INT型、デフォルト値は0）、rating列（CHAR(1)型、デフォルトは’B’）を新たに追加してみましょう。
 * 追加先は、テーブル定義の一番最後とします。
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

/* 念のため第4章のすべての問題で最初につけることとする */
use newDBforCHAPTER4;

ALTER table
	books
ADD
	pages INT DEFAULT 0,
ADD
    rating CHAR(1) DEFAULT 'B' NOT NULL
AFTER
	category_id
;

/* 確認用クエリ */
SELECT * FROM books;