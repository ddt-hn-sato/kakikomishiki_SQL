/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:アンケート回答テーブル(quest)から都道府県ごとに男性回答者のみの年齢の最高値を求め、60歳より大きい行のみを取り出してみましょう。
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
	prefecture AS 都道府県,
    MAX(age) AS 年齢の最高値
FROM
	quest
WHERE
	sex = '男'
GROUP BY
	prefecture
HAVING
	MAX(age) > 60
;
