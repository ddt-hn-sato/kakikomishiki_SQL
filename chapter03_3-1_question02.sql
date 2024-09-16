/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:著者テーブル（author）に対して、以下の内容で新規データを挿入してみましょう
 * ※内容割愛
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
	author
VALUES
	(
    'l0001',
    '井田健二',
    'イダケンジ',
    NULL
	)
;

/* 自分用の確認用クエリ */

SELECT
	*
FROM
	author
WHERE
	name = '井田健二'
;