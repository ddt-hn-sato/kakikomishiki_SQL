/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:3-8 問1 のSQL命令を相関サブクエリを使って書き換えてみましょう。
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

DELETE FROM
	employee
WHERE
  NOT EXISTS
	(
    SELECT
		*
	FROM
		depart AS d
	WHERE	
		employee.depart_id = d.depart_id
    )
;

/* 確認用クエリ */
SELECT * FROM employee;