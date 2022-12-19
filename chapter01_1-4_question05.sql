/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:アンケート集計テーブル（quest）から回答日時が「2013-01-01」以降の情報のみを
 * 取り出してみましょう。取り出す列は、name, answer1, answer2 列とします。
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
WHERE
	answered >= '2-13-01-01'
;