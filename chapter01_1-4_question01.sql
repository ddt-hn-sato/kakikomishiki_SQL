/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:アンケート回答テーブル（quest）から20最以上の人間による回答だけを取り出してみましょう
 * なお、取り出すのはanswer1, answer2 の列だけとします。
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
    answer1,
    answer2
FROM
	quest
WHERE
	age >= 20
;
