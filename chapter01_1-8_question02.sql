/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:アンケート回答テーブル（quest）から回答日時が新しいものを先頭から10件取り出してみましょう。
 * 以下の空欄を埋めて、SQL命令を完成させてください。取得列は、name, answer1, answer2 列とします。
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
    answer1,
    answer2
FROM
	quest
ORDER BY
	answered DESC
LIMIT
	1, 10
;