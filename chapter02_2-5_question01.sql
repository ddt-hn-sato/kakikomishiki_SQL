/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:アンケート回答テーブルから回答者の平均年齢を超えている人の
 * 回答（answer1, answer2 列）を評価の低い順に取り出してみましょう。
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

/*
・回答者の平均年齢を超えている人を抽出するクエリをサブクエリとする
・回答を評価の低い順に取り出すクエリをメインのクエリとする
*/

SELECT
	answer1,
    answer2
FROM
	quest
WHERE
	age > 
    (
		SELECT
			AVG(q.age)
		FROM
			quest AS q
    )
ORDER BY
	answer1 ASC
;