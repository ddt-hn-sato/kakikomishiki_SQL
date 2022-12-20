/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:書籍情報テーブル(books)で、出版社ごとの書籍価格の最大値を求めてみましょう。
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
	publish /* 出版社ごとなので、分かりやすさのため出版社名を取得 */,
    MAX(price)
FROM
	books
GROUP BY
	publish
;