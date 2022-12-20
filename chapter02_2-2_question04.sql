/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:社員テーブル（employee）とタイムカードテーブル（time_card）を結合し、
 * 社員ごとの勤務時間平均を、平均時間の多い順に出力してみましょう。
 * その際、タイムカードへの記録がない社員の情報についても出力することにします。
 * 出力列は、社員氏名、勤務時間平均です。
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
	CONCAT(e.l_name, e.f_name) AS 社員氏名,
    AVG(t.work_time) AS 勤務平均時間
FROM
	employee AS e
LEFT OUTER JOIN
	time_card AS t
ON
	e.s_id = t.s_id
GROUP BY
	CONCAT(e.l_name, e.f_name)
ORDER BY
	AVG(t.work_time) DESC
;