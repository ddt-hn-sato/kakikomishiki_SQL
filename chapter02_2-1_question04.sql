/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:貸し出し記録テーブル（rental）とユーザテーブル（usr）からそれぞれのユーザについて、
 * 現在何冊を貸し出しているのかを、貸し出し数の多い順に取得してみましょう。
 * 取得列は、ユーザの氏名、貸し出し数とします。
 * また、貸し出し数0のユーザは出力する必要はありません。
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
INNER JOIN
    usr AS u
ON
	u.user_id = r.user_id
WHERE
	returned = 0
  AND
	r.id IS NOT NULL
GROUP BY
	u.user_id
ORDER BY
	COUNT(r.id) DESC
;	
