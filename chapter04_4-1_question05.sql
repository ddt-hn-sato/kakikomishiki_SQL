/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:以下は、貸し出し記録テーブル（rental）を新規に作成するためのSQL命令ですが、
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

/* 念のため第4章のすべての問題で最初につけることとする */
use newDBforCHAPTER4;

CREATE TABLE /* INTOは不要 */
	rental
    (
    id INT AUTO_INCREMENT /* カラムの仕様は途中に,なしで書く */ NOT NULL /* ← NOT NULL 制約を書く */PRIMARY KEY,
    user_id CHAR(7),
    isbn CHAR(13),
    rental_date DATE,
    returned SMALLINT DEFAULT 0
    )
;

/* 確認用クエリ */
SHOW TABLES;
SELECT * FROM rental;