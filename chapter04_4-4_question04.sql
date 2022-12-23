/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:以下は、アクセス記録テーブル（access_log）に対して、既存のreferer列の定義を「データ型VARCHAR(200), NULL値を許可」で
 * 置き換えるためのSQL命令ですが、２点誤りを指摘してください。
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
	access_log
MODIFY /* WITH 不要 */
	referer /* , 不要 */ VARCHAR(200) /* , */ NULL
;

/* 列定義の確認用クエリ */
SHOW COLUMNS FROM access_log;