/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:貸し出し記録テーブル（rental）から未返却の書籍情報を貸し出し日について昇順で抽出してみましょう。
 * 取得列は、ISBNコードと貸し出し日(YY/MM/DDの形式)、別名はそれぞれ「ISBNコード」「貸し出し日」とします。
 * 以下の空欄を埋めて、SQL命令を完成させてください。
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
	isbn AS ISBNコード,
    DATE_FORMAT( rental_date, '%Y/%m/%d') AS 貸し出し日
FROM
	rental
WHERE
	returned = 0
ORDER BY
	rental_date ASC
;