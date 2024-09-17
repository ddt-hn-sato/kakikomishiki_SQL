/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:アンケート回答テーブル（quest）から、都道府県別の評価の平均値を求めてみましょう。
 * その際、平均値は小数点以下を四捨五入します。以下の空欄を求めて、SQL命令を完成させてください。
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
	prefecture,
    ROUND(AVG(answer1), 0) AS 評価平均
FROM
	quest
GROUP BY
	prefecture
;
