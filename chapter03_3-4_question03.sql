/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:価格改定に伴い、商品テーブル（product）に登録されている全商品を10％値上げします。
 * 対応するためのSQL命令を書きましょう。
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

 UPDATE
	product
 SET
	price = price*1.1
;

/* 確認用クエリ */
SELECT * FROM product;