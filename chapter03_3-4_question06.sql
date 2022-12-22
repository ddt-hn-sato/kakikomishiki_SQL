/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:社員テーブル（employee）において、役職列が部長である場合は「リーダ」に
 * 課長である場合には「マネージャ」に名称変更してみましょう。
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
	class =
    (
		CASE
		  class
			WHEN '部長' THEN 'リーダ'
			WHEN '課長' THEN 'マネージャ'
			ELSE class
		END
    )
;

/* 確認用クエリ */
SELECT * FROM employee;