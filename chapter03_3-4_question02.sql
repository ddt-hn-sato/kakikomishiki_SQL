/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:ユーザテーブル（usr）上のメールアドレスをすべてNULL値でクリアしましょう。
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
 
 UPDATE
	usr
 SET
	email = NULL
;

 /* 確認用クエリ */
 SELECT * FROM usr;
