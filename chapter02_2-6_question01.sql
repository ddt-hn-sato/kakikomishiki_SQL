/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:アンケート回答テーブル（quest）と社員テーブル（employee）から
 * 女性の氏名（カナ）だけを、氏（カナ）・名（カナ）昇順で取り出しましょう。
 * なお重複データがあってもそのまま出力するものとします。
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
		q.name_kana AS 女性の氏名（カナ）
	FROM
		quest AS q
	WHERE
		q.sex = '女'
UNION ALL
	SELECT
		CONCAT(e.l_name_kana, e.f_name_kana)
	FROM
		employee AS e
	WHERE
		e.sex = 2
ORDER BY
	1 ASC
;
	