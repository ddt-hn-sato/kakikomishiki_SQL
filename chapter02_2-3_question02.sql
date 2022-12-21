/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:メニューテーブル（menu）から
 * それぞれのメニューに対応する親メニュー名をメニューコードについて昇順に取り出してみましょう。
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
	chi.title AS 'メニュー名',
    par.title AS '親メニュー名'
FROM
	menu AS chi
INNER JOIN
	menu AS par
ON
	chi.parent = par.page_id
ORDER BY
	chi.page_id ASC
;
