/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:アクセス記録テーブル（access_log）からアクセス日時が2012年06月01日より前か、リンク元のURLが空である情報を削除しましょう。
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

DELETE FROM
	access_log
WHERE
	access_date < '2012-06-01 00:00:00' 
  OR
	referer IS NULL
;

/* 確認用クエリ */
SELECT * FROM access_log;