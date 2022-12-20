/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:書籍情報テーブル（books）から観光日が当たらsぢ鋳物を3件目から5件分だけ取り出してみましょう。
 * 所得列は、title, publish_date列とします。以下の空欄を埋めて、SQL命令を完成させてください。
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
    publish_date
FROM
	books
ORDER BY
	publish_date DESC
LIMIT
	3,5
;