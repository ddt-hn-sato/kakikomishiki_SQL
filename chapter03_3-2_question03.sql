
/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:著者情報テーブル（author）に対して、以下の内容で新規データを挿入しましょう
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
    (
    author_id,
    name,
    name_kana,
    birth
    )
VALUES
	(
    'U0001',
    '内田幸子',
    'ウチダサチコ',
    '1973-04-10'
    )
;

/* 自分用の確認用クエリ */

SELECT * FROM author;
    