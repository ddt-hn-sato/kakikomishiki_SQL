/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:アンケート集計テーブル（quest）から感想欄が未定義(NULL値)でない情報だけを
 * 取り出してみましょう。取り出す列は、answer2列のみとします。
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
	answer2 IS NOT NULL;