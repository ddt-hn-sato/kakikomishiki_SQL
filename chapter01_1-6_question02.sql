/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:ユーザテーブルから東京都在住で、かつ、
 * Emailアドレスのドメインが「examples.com」のユーザ情報を取り出してみましょう。
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
	l_name,
    f_name,
    email
FROM
	usr
WHERE
	prefecture = '東京都' AND
	email LIKE '%examples.com'
;
 
 