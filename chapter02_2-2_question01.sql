/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:ユーザテーブル（usr）と貸し出し記録テーブル（rental）から、ユーザごとの貸し出し数を、
 * 貸し出し数が多い順に取得してみましょう。取得列は、ユーザの氏名と貸し出し件数とし、
 * 貸し出し件数が0のユーザも出力するものとします。
 * 以下の空欄を埋めて、SQL命令を完成させましょう。
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
	u.l_name,
    u.f_name,
    COUNT(r.id) AS 貸し出し数
FROM
	rental AS r
RIGHT OUTER JOIN
    usr AS u
ON
	u.user_id = r.user_id
GROUP BY
	u.l_name,
    u.f_name
ORDER BY
	COUNT(r.id) DESC
;
