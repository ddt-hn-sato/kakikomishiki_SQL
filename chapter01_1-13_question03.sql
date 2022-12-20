/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:アクセス記録テーブル（access_log）からリンク元ごとのアクセス数を求め、10件未満を「C」, 10件以上50件未満を「B」, 50件以上を「A」とする「ランク」列を取得してみましょう。
 * また、データはアクセス数が3件以上のものを多い順に並べるものとします。
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
	referer AS リンク元,
    COUNT(*) AS アクセス数,
    CASE
		WHEN COUNT(*) < 10 THEN 'C'
        WHEN COUNT(*) < 50 THEN 'B'
        WHEN COUNT(*) >= 50 THEN 'A'
        ELSE '予期しない値です'
    END AS ランク
FROM
	access_log
GROUP BY
	referer
HAVING
	COUNT(*) >= 3
ORDER BY
	COUNT(*) DESC
;
