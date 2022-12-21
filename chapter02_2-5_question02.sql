/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:所属部署テーブル（depart）から社員テーブル（employee）で使われていない
 * 部署コード、部署名を取り出しましょう。以下の空欄を埋めて、
 * sql命令を完成させてください。
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
	d.depart_id,
    d.depart_name
FROM
	depart AS d
WHERE	
  NOT EXISTS
	(
    SELECT
	  *
	FROM
      employee AS e
	WHERE
	  e.depart_id = d.depart_id
	)
;