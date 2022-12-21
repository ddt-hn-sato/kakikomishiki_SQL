/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:書籍目次テーブル（contents）から前後のコンテンツを取り出してみましょう。
 * なお、取り出す列は別名として「前コンテンツ名」「現コンテンツ名」「次コンテンツ名」とし、
 * 現ページのコンテンツコードについて昇順に並べるものとします。以下の空欄を埋めて、SQL命令を完成させましょう。
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
	pre.c_title AS 前コンテンツ名,
    current.c_title AS 現コンテンツ名,
    next.c_title AS 次コンテンツ名
FROM
	(
      contents AS pre
    INNER JOIN
      contents AS current
	ON
	  pre.next_id = current.c_id
	)
INNER JOIN
	contents AS next
ON
	current.next_id = next.c_id
ORDER BY
	current.c_id ASC
;