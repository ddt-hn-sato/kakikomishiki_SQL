/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:所属部署テーブル（depart）にない所属部署に属する社員を社員テーブル（employee）から抽出し、
 * 所属部署コードを「Z99（未登録）」に変更しましょう。
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
	employee
SET
	depart_id = 'Z99'
WHERE
	depart_id
  NOT IN
	(
		SELECT
			depart_id
		FROM
			depart
	)
;

/* 確認用クエリ */
SELECT * FROM employee;
