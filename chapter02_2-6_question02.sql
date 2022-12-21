/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:ユーザテーブル（usr）とアンケート回答テーブル（quest）、それぞれに
 * 登録されているユーザ氏名を比較し、ユーザテーブル（usr）にしか登録されていない
 * もののみをとりだしてみましょう。
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
		CONCAT（u.l_name, u.f_name） AS ユーザテーブル（usr）にしか登録されていないユーザ氏名
    FROM
		usr AS u
EXCEPT /* EXCEPT演算子はMySQLでは使用できないそうです。*/
	SELECT
		q.name
    FROM
		quest AS q
;