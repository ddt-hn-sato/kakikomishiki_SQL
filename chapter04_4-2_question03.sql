/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:商品テーブル（product）上に商品名をキーとしたインデックスを作成しましょう。
 * インデックス名はind_productとします。
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

/* 念のため第4章のすべての問題で最初につけることとする */
use newDBforCHAPTER4;

CREATE INDEX
	ind_product
ON
	product
	(
    p_name
    )
;

/* 確認用クエリ */
SHOW INDEX FROM product;