/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:注文書テーブル（order_main）と注文明細テーブル（order_desc）、ユーザテーブル（usr）、商品テーブル（product）を結合し、
 * 未納の注文については、発注日、注文コード、商品コード昇順に注文情報を出力してみましょう。
 * 出力列の別名は、発注日、注文コード、利用者氏名、商品名、商品単価、購入数とします。
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
	mai.order_date AS 発注日,
    mai.po_id AS 注文コード,
    CONCAT(usr.l_name, usr.f_name) AS 利用者氏名,
    pro.p_name AS 商品名,
    pro.price AS 商品単価,
	des.quantity AS 購入数
FROM
	(
		(
			order_main AS mai
		INNER JOIN
			usr
		ON
			mai.user_id = usr.user_id
		)
	INNER JOIN
		order_desc AS des
	ON
		mai.po_id = des.po_id
	)
	INNER JOIN
		product AS pro
	ON
		des.p_id = pro.p_id
;