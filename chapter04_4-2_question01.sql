/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:貸し出し記録テーブル（rental）上に貸し出し日をキーにしたインデックスを作成してみましょう。
 * 以下の空欄を埋めて、SQL命令を完成させてください。
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
	ind_rental
ON
	rental
    (
    rental_date
    )
;

/* 確認用クエリ */
SHOW INDEX FROM rental;