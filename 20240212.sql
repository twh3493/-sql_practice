-----Lesson 8-----

--使用函數處理數據

--用於處理文字函數(例如填充值、轉換值和大小寫)
--用在數值數據上做算操作(例如返回絕對值、代數運算)
--用於處理日期和時間函數(譬如返回兩個日期之差、檢查日期的有效性)
--返回DBMS正在使用的特殊信息(如返回用戶登入訊息)

SELECT vend_name, UPPER(vend_name) AS vend_name_upcase
From Vendors
Order by vend_name;

--使用UPPER()將文字內容轉換為大寫。所以Vend_name_upcase顯示出來的結果會是大寫


--LEFT()          返回字符串左邊的字符
--RIGHT()         返回字符串右邊的字符
--LOWER()         將字符串換成小寫
--UPPER()         將字符串換成大寫
--LTRIM()         去掉字符串左邊的空格
--RTRIM()         去掉字符串右邊的空格
--LENGTH()        返回字符串的長度
--SOUNDEX()       返回字符串的SOUNDEX值

--SELECT cust_name, cust_contact
--from customers
--WHERE cust_contact = 'Michael Green';        --舉例:有一位顧客Kids Place的聯繫人應該叫Michael Green
                                               --但資料輸入錯誤為Michelle Green
                                               
--SELECT cust_name, cust_contact
--FROM customers
--WHERE SOUNDEX(cust_contact) = SOUNDEX('Michael Green')    --使用Soundex函數找出名單中類似發音的名字

--PostgreSQL不支援Soundex這個指令 :(

SELECT order_num
FROM orders
WHERE DATE_PART('year',order_date) =2012;      --使用DATE_PART()函數找出2012年的所有訂單


--ABS()           返回一個數的絕對值
--COS()           返回一個角度的餘弦
--EXP()           返回一個數的指數值
--PI()            返回圓周率
--SIN()           返回一個角度的正弦
--SQRT()          返回一個數的平方根
--TAN()           返回一個角度的正切
