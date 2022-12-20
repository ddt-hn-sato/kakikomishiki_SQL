/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:以下は、アンケート回答テーブル（quest）から都道府県、性別ごとの評価平均を求めるための
 * SQL命令ですが、2点誤りがあります。誤りを指摘してください。
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
    /* ageは不要 */
    AVG(answer1) AS 評価平均 /* ISではなくAS */
FROM
	quest
GROUP BY
	prefecture,
    sex
;