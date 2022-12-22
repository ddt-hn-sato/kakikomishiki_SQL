/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:3-6 問1 SQL命令を相関サブクエリを使って書き換えてみましょう。
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
	EXISTS
    (
		SELECT
			*
        FROM
			depart
		WHERE
			depart.depart_id = employee.depart_id
    )
;