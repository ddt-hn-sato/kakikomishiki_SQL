/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:ユーザテーブル（usr）のf_name_kana列の後方に以下の2列を追加してみましょう。
 * ・sex列（VARCHAR(5)型、デフォルト値は男）
 * ・job列（VARCHAR(30)型）
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
	usr	
ADD
	sex VARCHAR(5) DEFAULT '男'
AFTER
	f_name_kana,
ADD
	job VARCHAR(30)
AFTER
	sex
;

/* 確認用クエリ */
SELECT * FROM usr;