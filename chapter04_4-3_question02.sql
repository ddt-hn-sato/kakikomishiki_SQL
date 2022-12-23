/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:月間売上テーブル（sales）を主キーのない状態でまず新規作成してみましょう。
 * これに対して、後からキーを追加します
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

/* 既にあったので消す */
DROP TABLE sales;

CREATE TABLE
	sales
    (
    s_id CHAR(5),
    s_date DATE NOT NULL,
    s_value INT DEFAULT 0
    )
;

/* 確認用クエリ */
SELECT * FROM sales;

ALTER TABLE
	sales
ADD
	PRIMARY KEY(s_id)
;

/* 確認用クエリ */
SELECT * FROM sales;