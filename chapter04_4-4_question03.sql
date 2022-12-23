/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:著者情報テーブル（author）上、著者名の定義を「VARCHAR(100) デフォルト値は空文字列」に変更してみましょう。
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

ALTER TABLE
	author
MODIFY
	name VARCHAR(100) DEFAULT ''
;

/* 列定義の確認用クエリ */
SHOW COLUMNS FROM author;