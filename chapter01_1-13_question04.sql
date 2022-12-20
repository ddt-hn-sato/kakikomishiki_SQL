/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:著者-書籍情報テーブル（author_books）で、著者ごとの書籍数を求めてみましょう。
 * その際、書籍数が4件以上の著者は「多い」、2冊以上4冊未満の著者は「普通」、2冊未満の著者は「少ない」と出力します。
 * また、出力の名前は先頭から「著者ID」「カウント数」「評価」とします。
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
	author_id AS 著者ID,
    COUNT(*) AS カウント数,
    CASE
      WHEN COUNT(*) >= 4 THEN '多い'
      WHEN COUNT(*) >= 2 THEN '普通'
      WHEN COUNT(*) < 2 THEN '少ない'
      ELSE '予期しない値です'
    END AS 評価
FROM
	author_books
GROUP BY
	author_id
;