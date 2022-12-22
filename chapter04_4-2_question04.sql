/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:以下は、ユーザテーブル（usr）に対して住所（都道府県、市町村、その他）で複合インデックスを作成するためのSQL命令ですが、2点の誤りを指摘してください。
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

/* 念のため第4章のすべての問題で最初につけることとする */
use newDBforCHAPTER4;

CREATE INDEX
	ind_usr
ON /* INでなくON */
	usr
    (
		prefecture, /* カラムとカラムの間に , が必要 */
        city,
        o_address
	)
;

/* 確認用クエリ */
SHOW INDEX FROM usr;