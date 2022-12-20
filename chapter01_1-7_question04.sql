/*
 * 『書き込み式SQLドリル』山田祥寛
 *
 * 問題:以下は、アクセス記録テーブル（access_log）から2013年1月分のアクセスログをreferer, ip_address列について降順で取り出すためのSQL命令ですが、
 * 2点誤りがあります。誤りを指摘してください。
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
	*
FROM
	access_log
WHERE
	 /*access_date IN ('2013-01-01', '2013-01-31') /*←ORの意味になる.また、access_dateはDATETIME型で秒単位まで返すので、これらと一致する値はいずれにしろない */
    access_date >= '2013-01-01'
  AND
    access_date <= '2013-01-31'
ORDER BY
	referer DESC, ip_address DESC /* ←referにもDESCを書かないとASCの意味になってしまう */
;