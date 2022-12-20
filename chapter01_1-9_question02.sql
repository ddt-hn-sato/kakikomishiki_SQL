/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:アンケート回答テーブル（quest）から都道府県、性別ごとに本書の評価の平均を取り出してみましょう。
 * 以下の空欄を埋めて、SQL命令を完成させてください。
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
    sex,
	AVG(answer1)
FROM
	quest
GROUP BY
	prefecture,
    sex
;