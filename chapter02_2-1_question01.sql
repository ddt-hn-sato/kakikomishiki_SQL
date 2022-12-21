/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:社員テーブル（employee）とタイムカードテーブル（time_card）から氏名と2012年12月の勤務時間を、社員コード、日付について昇順で出力してみましょう。
 * 空欄を埋めて、SQL命令を完成させましょう。
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
    e.l_name AS 社員氏名（姓）,
    e.f_name AS 社員氏名（名）,
    SUM(t.work_time) AS 総勤務時間
FROM
	employee AS e
INNER JOIN
	time_card AS t
ON
	e.s_id = t.s_id
WHERE
	t.r_date BETWEEN '2012-12-01' AND t.r_date <= '2012-12-31'
GROUP BY
	e.s_id
ORDER BY
	e.s_id ASC,
    t.r_date ASC
;