/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:店舗テーブル（shop）に登録されていない店舗に関する情報を、月間売上テーブル（sales）から削除してください。
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

DELETE FROM
	sales
WHERE
	NOT EXISTS
		(
        SELECT
			*
		FROM
			shop
		WHERE
			sales.s_id = shop.s_id 
        )
;

/* 確認用クエリ */
SELECT * FROM sales;