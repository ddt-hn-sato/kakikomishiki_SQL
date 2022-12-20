/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:以下は、書籍目次テーブル（contents）から
 * 現在のコンテンツコードと前のコンテンツコードを、現在のコンテンツコードについて昇順に取り出すためのSQLですが、
 * 誤りが2点あります。誤りを指摘してください。
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
	cp.c_id AS 前のページ,
    cn.c_id AS 現在のページ
FROM
	contents AS cp
INNER JOIN /* OUTER JOINという書き方はできない。また、今回の場合はLEFT OUTER JOIN, RIGHT OUTER JOIN, INNER JOIN のどれでもよい */
	contents AS cn
ON
	cp.next_id = cn.c_id /* ON句に != を指定すると結合キーがないのでエラーになる */
ORDER BY
	cn.c_id ASC
;
