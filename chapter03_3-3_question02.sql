/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:店舗テーブル（shop）からすべての店舗コードを抜き出して
 * 月間売上テーブル（sales）に対して挿入してみましょう。
 * その際、売上対象年月には今月の日付（YYYY-MM）を、
 * 売上高には0を固定値でセットするものとします。
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
	sales
	(
    s_id,
    s_date,
    s_value
    )
	SELECT
		s_id,
		DATE_FORMAT(NOW(),'%Y-%m'),
		0
	FROM
		shop
;

/* 確認用 */
SELECT * FROM sales; 