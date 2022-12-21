/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:書籍目次テーブル（contents）から現在のコンテンツコードと前のコンテンツコードを、
 * 現在のコンテンツコードについて昇順で取り出してみましょう。
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
 
SELECT
	now.c_id AS 現在のコンテンツコード,
    pre.c_id AS 前のコンテンツコード
FROM
	contents AS now
INNER JOIN
	contents AS pre
ON
	now.c_id = pre.next_id
ORDER BY
	now.c_id ASC
;
