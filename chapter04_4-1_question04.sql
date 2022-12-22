/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:書籍情報テーブル（books）を新規に作成してみましょう。
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

CREATE TABLE
	books
    (
    isbn CHAR(17) NOT NULL,
    title VARCHAR(255),
    price INT,
    publish VARCHAR(30),
    publish_date DATE,
    category_id CHAR(5),
    PRIMARY KEY(isbn)
    )
;

/* 確認用クエリ */
SHOW TABLES;
SELECT * FROM books;