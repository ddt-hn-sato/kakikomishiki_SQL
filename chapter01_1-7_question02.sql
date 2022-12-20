/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:ユーザテーブル（usr）から東京都、千葉県、神奈川県に住んでいる人のリストを姓（カナ）名（カナ）について
 * 昇順でリストしてみましょう。取り出す列は、l_name, f_name, prefecture列とします。
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
    prefecture
FROM
	usr
WHERE
	prefecture IN ('東京都', '千葉県', '神奈川県')
ORDER BY
	l_name_kana ASC
;
