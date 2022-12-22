/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:注文明細テーブル（order_desc）を新規に作成してみましょう。
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
	order_desc
    (
    po_id INT NOT NULL,
    p_id CHAR(10) NOT NULL,
    quantity INT,
    PRIMARY KEY(po_id, p_id)
    )
;

/* 確認用クエリ */
SHOW TABLES;
SELECT * FROM order_desc;