/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:アンケート集計テーブル（quest）から年齢(age列)が30歳以上40歳未満の人の回答のみを抜き出してみましょう。
 * 取り出す列は、name, sex, prefecture列とします。
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
	name,
    sex,
    prefecture
FROM
	quest
WHERE
	age >= 30 AND age <= 40
;