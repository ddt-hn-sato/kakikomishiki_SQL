/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:
 * アンケート回答テーブル（quest）に対して、以下の内容で
 * 新規データを挿入してみましょう。※内容割愛
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
	quest
	(
    id,
    name,
    name_kana,
    sex,
    prefecture,
    age,
    answer1,
    answer2,
    answered
    )
VALUES
	(
    NULL,
    '佐々木三郎',
    'ササキサブロウ',
    '男',
    '東京都',
    NULL,
    3,
    '興味深い内容です。',
    NOW() /* DATETIME型で取得 */
	)
;

/* 確認用クエリ */
SELECT * FROM quest;