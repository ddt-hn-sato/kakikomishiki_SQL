/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:月間売上テーブル（sales）を新規に作成してみましょう。
 * 
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
	sales
	(
    s_id CHAR(5) NOT NULL,
    s_date CHAR(7) NOT NULL,
    s_value INT,
    PRIMARY KEY(s_id, s_date)
    )
;

/* 確認用クエリ */
SHOW TABLES;
SELECT * FROM sales;