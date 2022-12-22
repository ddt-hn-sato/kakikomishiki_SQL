/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:社員テーブル（employee）上、退職済みで、最終更新日が2007-03-31以前のデータを削除してみましょう。
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

use MySQL;

DELETE FROM
	employee
WHERE
	last_update <= '2007-03-31'
  AND
	retired = 1
;

/* 確認用クエリ */
SELECT * FROM employee;