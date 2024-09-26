/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:社員テーブル（employee）から役職が主任、担当、アシスタントである社員のコードを
 * 取り出して、タイムカードテーブル（time_card）に挿入してみましょう。
 * その際、日付列には今日の日付を、勤務時間列には固定値で0をセットするものとします。
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

INSERT INTO
	time_card
    (
		s_id,
        r_date,
        work_time
	)
	SELECT    
		s_id,
		CURRENT_DATE,
		0
	FROM
		employee
	WHERE
		class IN ('主任', '担当', 'アシスタント')
;

/* 確認用 */
SELECT * FROM time_card;