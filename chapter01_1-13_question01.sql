/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:アンケート回答テーブル(quest)から回答日時が新しい順に name, answer1, answer2 列を取得してみましょう。
 * その際、answer1列の値は3~1に対応して、それぞれ「ためになった」「普通」「役に立たない」という文字列に置き換えることとします。
 * 別名は、先頭から順に「氏名」「評価」「感想」とします。
 * 以下の空欄を埋めて、SQL命令を完成させてみましょう。
 *
 * 回答:
 *  下記SQL文をご参照ください。
 *  ELSE句については、教本では書くのを推奨されていたので書きました。
 *
 * 作成日:2022/12/19
 * 作成者:HinaSato
 * 修正日:
 * 修正者:
 * ver:1.0.0
 */

SELECT
	name AS 氏名,
	CASE
	  answer1
		WHEN 3 THEN 'ためになった'
		WHEN 2 THEN '普通'
		WHEN 1 THEN '役に立たない'
		ELSE '予期しない値です'
	END AS 評価,
    answer2 AS 感想
FROM
	quest
ORDER BY
	 answered DESC
;