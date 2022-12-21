/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:社員テーブル（employee）からそれぞれの社員氏名と上司氏名を、
 * 社員コードについて昇順に取り出してみましょう。
 * なお、取り出す列には別名として「社員氏名」「上司氏名」とし、上司がいない社員についても情報は取り出すことにします。
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
	CONCAT(mem.l_name, mem.f_name) AS 社員氏名,
    CONCAT(bos.l_name, bos.f_name) AS 上司氏名
FROM
	employee AS mem
LEFT OUTER JOIN
	employee AS bos
ON
	mem.b_id = bos.s_id
ORDER BY
	mem.s_id ASC
;