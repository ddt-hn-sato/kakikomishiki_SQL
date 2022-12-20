/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:以下は、アクセス記録テーブル（access_log）からアクセス日時の新しい順に10件のログデータを取得するためのSQL命令です。
 * 取得列はpage_id, refer, ip_address です。2点誤りがありますので、誤りを指摘してください。
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
	page_id,
    referer,
    ip_address
FROM
	access_log
ORDER BY
	access_date DESC /* 日付の新しい順なので、降順にするべき*/
LIMIT
	1, 10 /* 10, 0 だと10番目から0個つまり、0個になってしまうので修正 */
;
 
 