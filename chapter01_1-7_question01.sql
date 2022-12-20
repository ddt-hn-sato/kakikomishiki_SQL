/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:書籍情報テーブル（books）から価格が2500～3500円の範囲の書籍を価格が安い順に取り出してみましょう。
 * 取り出す列は、title, price列とします。
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
	title,
    price
FROM
	books
WHERE
	price >= 2500
  AND
	price <= 3000
ORDER BY
	price ASC
;
	