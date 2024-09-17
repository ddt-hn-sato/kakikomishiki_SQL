/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:貸し出し記録テーブル（rental）から貸し出し日が2011年12月31日以前で、かつ、
 * 返却済である情報について削除してみましょう。
 *
 * 回答:
 *  下記SQL文をご参照ください。
 *
 * 作成日:2022/12/19
 * 作成者:HinaSato
 * 修正日:
 * 修正者:
 * ver:1.0.0
 *
 */
 
DELETE FROM
	rental
WHERE
	rental_date <= '2011-12-31'
  AND
	returned = 1
;

/* 確認用クエリ */
SELECT * FROM rental;

