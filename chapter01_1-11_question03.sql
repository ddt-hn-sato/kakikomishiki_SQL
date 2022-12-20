/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:ユーザテーブル（usr）から利用者（氏名）と、完全な住所を、利用者コードについて降順で取り出すためのSQL命令を記述してみましょう。
 * 別名は、「利用者名」「住所」とします。
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
	CONCAT(l_name, f_name) AS 利用者名,
    CONCAT(prefecture, city, o_address) AS 住所
FROM
	usr
ORDER BY
	user_id DESC
;
    
