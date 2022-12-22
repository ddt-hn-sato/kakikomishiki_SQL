/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:貸出記録テーブル(rental)上、貸出日が2012年3月31日より前で、かつ
 * 現在貸出中であるレコードについて、returned列を9(紛失)で更新しましょう。
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
	rental
SET
	rental_date = CURRENT_DATE() /* = が必要 */
WHERE
	user_id = 'B200405'
  AND /* ORではなく */
	isbn = '4-0010-0000-1'
;

/* 確認用クエリ */
SELECT * FROM rental;