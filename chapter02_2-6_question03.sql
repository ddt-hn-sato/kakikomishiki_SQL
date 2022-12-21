/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:ユーザテーブル（usr）とアンケート回答テーブル（quest）からそれぞれ
 * 千葉県に住んでいる人間だけを取り出し、結果を統合してみましょう。
 * その際、重複データを取り除くものとし、かつ、氏名（カナ）について降順で
 * 並び変えるものとします。
 * 
 * 回答:
 *  下記SQL文をご参照ください。取得するカラムの指定がなかったため、usrテーブルとquestテーブルからすべてのレコードを取得しました。
 *  「人間」というのが曖昧な表現だったため氏名,氏名（カナ）カラムのみ取り出しました。
 *
 * 作成日:2022/12/19
 * 作成者:HinaSato
 * 修正日:
 * 修正者:
 * ver:1.0.0
 */

	SELECT
		CONCAT(usr.l_name, usr.f_name) AS 氏名,
        CONCAT(usr.l_name_kana, usr.f_name_kana) AS 氏名（カナ）
	FROM
		usr
	WHERE
		usr.prefecture = '千葉県'
UNION /* 重複を取り除く */
	SELECT
		q.name,
        q.name_kana
	FROM
		quest AS q
	WHERE
		q.prefecture = '千葉県'
ORDER BY
	2 DESC
;