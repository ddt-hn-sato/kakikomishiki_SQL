/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:貸し出し記録テーブル（rental）に対して、以下の内容で新規データを挿入しましょう。
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

INSERT INTO
	rental
    (
    user_id,
    isbn,
    rental_date
    )
VALUES
	(
    'B200502',
    '4-0010-0000-0',
    current_date
    )
;

/* 確認用クエリ */
SELECT * FROM rental;