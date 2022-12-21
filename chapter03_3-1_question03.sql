/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:所属部署テーブル（depart）に対して、
 * 以下のデータを挿入するためのSQL命令を記述してみましょう。 ※内容割愛
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
	depart
VALUES
	(
    'E03',
    '第三営業部'
    )
;

/* 自分用の確認用クエリ */

SELECT
	*
FROM
	depart
WHERE
	depart_id = 'E03'
;