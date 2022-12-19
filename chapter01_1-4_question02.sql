/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:書籍情報テーブル（books）から出版社が「日経BP」「翔泳社」である書籍情報だけを
 * 取り出してみましょう。取り出す列は、isbn, title, publish列とします。
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
	isbn,
    title,
    publish
FROM
	books
WHERE
	publish = '日経BP' OR
    publish = '翔泳社'
;