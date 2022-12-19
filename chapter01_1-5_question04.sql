/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:社員テーブル（employee）から氏（カナ）が「ア」で始まる社員の情報だけを取り出してみましょう。
 * 取り出す列は l_name, f_name 列とします。
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
	l_name,
	f_name
FROM
	employee
WHERE
	l_name_kana LIKE 'ア%';
