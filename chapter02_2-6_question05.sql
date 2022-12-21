/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:
 * ユーザテーブル（usr）、アンケート回答テーブル（quest）それぞれに
 * 含まれるユーザ氏名を比較し、双方に含まれるデータのみをとりだしてみましょう。
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
		CONCAT(usr.l_name, usr.f_name)
	FROM
		usr
INTERSECT /* INTERSECT演算子はMySQLでは使えないようです。*/
	SELECT
		q.name
	FROM
		quest AS q
;