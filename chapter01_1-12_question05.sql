/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:以下は、社員テーブル（employee）から所属部署ごとの女性の人数を求め、3人以上の部署だけを出力するためのSQL命令ですが、2つ誤りがあります。誤りを指摘してください。
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
	depart_id,
    COUNT(sex) /* カラム名を指定して数える */
FROM
	employee
WHERE
	sex = 2
GROUP BY /* 所属部署ごと、なのでGROUP　BY */
	depart_id
HAVING
	COUNT(sex) >= 3
;