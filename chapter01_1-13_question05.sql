/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:以下は、社員テーブル（employee）から社員名（氏＋名を連結したもの）、役職クラス（部長、課長は管理職、主任、担当は総合職、アシスタントは一般職とします）を出力するための
 * SQL命令ですが、2つ誤りがあります。誤りを指摘してください。
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
	CONCAT(l_name, f_name) AS 社員名,
    CASE
	  class
		WHEN '部長' THEN '管理職'
        WHEN '課長' THEN '管理職' /* WHERE IN ~~ 句はCASE文の中では使えない */
		WHEN '主任' THEN '総合職'
        WHEN '担当' THEN '総合職' /* WHERE IN ~~ 句はCASE文の中では使えない */
        ELSE '一般職' /* ELSE THEN 'なになに' は誤り */
	END AS 役職クラス
FROM
	employee
;