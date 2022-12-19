/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:アンケート回答テーブル（quest）から感想欄がカラでないものを
 * 取り出してみましょう。取り出す列はanswer2列のみとします。
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
	answer2
FROM
	quest
WHERE
	answer2 != '' AND
    answer2 IS NOT NULL;