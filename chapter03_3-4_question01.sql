/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:書籍情報テーブル（books）を以下の要領で一括更新したいと思います
 * 	・ISBNコードの先頭に、固定値で「ISBN」を追加
 * 	・消費税込みの価格情報を税抜き価格に変更
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
	books
SET
	isbn = CONCAT('ISBN', isbn),
    price = price / 1.05
;

/* 確認クエリ */
SELECT * FROM books;