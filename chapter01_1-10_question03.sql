/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:ユーザテーブル（usr）から都道府県別のユーザ数を求めてみましょう。なお、取り出す列の別名は、
 * それぞれ「都道府県名」「ユーザ数」とします。
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
	prefecture AS 都道府県名,
    COUNT(user_id) AS ユーザ数
FROM
	usr
GROUP BY
	prefecture
;