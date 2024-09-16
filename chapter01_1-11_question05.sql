/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:以下は、社員テーブル（employee）から部署、役職ごとに降順ソートした結果を出力するためのSQL命令ですが、誤りが2点あります。
 * 誤りを指摘してください。
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
    class,
    CONCAT(l_name, f_name) AS 氏名　/* カラム名を '' で囲んでしまうと、'カラム名' という文字列になってしまう */
FROM
	employee
ORDER BY
	depart_id DESC, /* ←降順ソートする */
    class DESC
;
