/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:アクセス記録テーブル（access_log）からリンク元URLを重複のない形式で取り出してみましょう。
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
 
 SELECT DISTINCT
	referer
FROM
	access_log
;
