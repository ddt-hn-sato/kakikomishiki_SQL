/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:社員テーブル（employee）上、社員の氏・名定義をいずれも「VARCHAR(50) NULLを許可しない」に変更してみましょう。
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
MODIFY
	f_name VARCHAR(50) NOT NULL,
MODIFY
	l_name VARCHAR(50) NOT NULL
;

/* 列定義の確認用クエリ */
SHOW COLUMNS FROM employee;