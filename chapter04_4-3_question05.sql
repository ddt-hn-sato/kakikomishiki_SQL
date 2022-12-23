/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:以下は、社員テーブル（employee）のdepart_id列の後方に「email列（VARCHAR(255)型）」を追加するSQL命令ですが、２点の誤りを指摘してください。
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

/* newDBforCHAPTER4 のデータベースにはemployeeテーブルはないので、DBを変える */
use mySQL;

ALTER TABLE
	employee
ADD/*  TO は不要 */
	email VARCHAR(255) NOT NULL
AFTER /* BEFOREは指定できない */
	depart_id
;

/* 確認用クエリ */
SELECT * FROM employee;