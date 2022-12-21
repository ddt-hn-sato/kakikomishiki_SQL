/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:以下は著者テーブル（author）とユーザテーブル（usr）からそれぞれの氏名の情報
 * を取り出すためのSQL命令ですが２点誤りがあります。誤りを指摘してください。
 * なお統合したデータは重複を含まないものとし、結果は氏名（カナ）について降順で
 * 並び変えます。
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
		a.name_kana
	FROM
		author AS a
UNION /* 重複を含まない、なので題意に沿って、UNION ALL ではなく UNION */
	SELECT
		CONCAT(u.l_name_kana, u.f_name_kana) /* カラム数を合わせるため、かつ、題意に沿うため、カラムをCONCATでくっつける */
	FROM
		usr AS u
ORDER BY
	1 DESC
;