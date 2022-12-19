/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:貸し出し記録テーブル（rental）から貸し出し中の情報だけを取り出してみましょう。
 * 取り出す列は、user_id, isbn列とします。
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
    isbn
FROM
	rental
WHERE
	returned = 0 AND /* 返却ずみも、デフォルト値も0なので */
    rental_date IS NOT NULL; /* デフォルト値であろう、「rental_dateがNULL」の場合、を除くクエリにする */