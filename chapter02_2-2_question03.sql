/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:書籍情報テーブル(books)と貸し出し記録テーブル(rental)とを結合し、
 * 書籍ごとの貸し出し数累計を、累計数が多い順に出力してみましょう。
 * その際、貸し出し履歴が1回もない書類についても出力することにします。
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
	b.isbn AS 書籍,
    b.title AS タイトル,
    COUNT(*) AS 貸し出し数累計
FROM
	books AS b
RIGHT OUTER JOIN
	rental AS r
ON
	b.isbn = r.isbn
GROUP BY 
	b.isbn
ORDER BY
	COUNT(*) DESC
;