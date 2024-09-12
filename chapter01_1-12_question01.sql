/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:アンケート回答テーブル（quest）から都道府県ごとに年齢の平均値を求め、35歳以上50歳未満のデータのみを取り出してみましょう。
 * 以下の空欄を埋めてSQL命令を完成させてください。
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
    AVG(age) AS 年齢の平均値
FROM
	quest
GROUP BY
	prefecture
HAVING
	AVG(age) >= 35
  AND
	AVG(age) < 50
;