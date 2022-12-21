/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:社員テーブル（employee）と所属テーブル（depart）を結合し、
 * 所属社員が１人もいない「幽霊」部署を洗い出してみましょう。以下の空欄を埋めて、SQL命令を完成させてください。
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
 
SELECT
	d.depart_name AS 所属部署名,
    COUNT(e.s_id) AS 所属部員の数（幽霊）
FROM
	employee AS e
RIGHT OUTER JOIN
    depart AS d
ON
	e.depart_id = d.depart_id
WHERE
	e.s_id IS NULL
;