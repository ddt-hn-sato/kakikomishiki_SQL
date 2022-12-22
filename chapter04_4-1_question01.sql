/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:著者情報テーブル（author）を新規に作成してみましょう。
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
	author
	(
		author_id CHAR(5) NOT NULL PRIMARY KEY,
        name VARCHAR(30),
        name_kana VARCHAR(100),
        birth DATE
    )
;

/* 確認用クエリ */
SHOW TABLES;
SELECT * FROM author;