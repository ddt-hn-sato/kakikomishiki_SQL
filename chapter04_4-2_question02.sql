/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:注文書テーブル（order_main）上に発注日、納品日をキーにした複合インデックスを作成しましょう。
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
	ind_order
ON
	order_main
    (
    order_date,
    delivery_date
    )
;

/* 確認用クエリ */
SHOW INDEX FROM order_main;