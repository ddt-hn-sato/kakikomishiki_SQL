/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:貸し出し記録テーブル(rental)から未返却のもので貸し出し日が古いものを先頭から5件取り出してみましょう。
 * 取得列は user_id, isbn, rental_date 列とします。
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
	user_id, 
    isbn, 
    rental_date
FROM
	rental
ORDER BY
	rental_date ASC
LIMIT
	1,5
;