/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:商品テーブル(product)からp_name, price列を価格が安い順に取り出してみましょう。
 * その際、p_name列に「商品名」、price列に「価格」という別名を付けます。以下の空欄を埋めて、
 * SQL命令を完成させてください。
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
	p_name AS 商品名,
    price AS 価格
FROM
	product
ORDER BY
	price ASC
;