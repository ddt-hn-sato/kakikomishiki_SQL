/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:以下は、社員テーブル（employee）に対して、表のデータを挿入するSQL命令です
 * 2点誤りがあります。誤りを指摘してください。
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
	employee
    (
		s_id, /* ,が各カラムの間に必要 */
		l_name,
		depart_id,
		last_update
    )
VALUES /* VALUEではなくVALUES とかく */
	(
		'WA0001',
        '和田',
        'J01',
        CURRENT_DATE
	)
;

/* 確認用クエリ */

SELECT * FROM employee;