-----Lesson 7-----

--開始結合字段，讓兩列同時顯示

--善用+或||來做結合，或是concat[在MySQL或MariaDB使用]

SELECT vend_name +'('+ vend_country +')'              --顯示會為->產品名稱     (國名)
FROM vendors 
ORDER by vend_name;

SELECT vend_name || '('|| vend_country ||')'          --使用||的範例

SELECT Concat(vend_name,'(',vend_country,')')         --使用Concat的範例

--使用RTRIM()函數來讓顯示的數值沒有右邊多餘的空格
--LTRIM()函數為清除左邊多餘空格

SELECT RTRIM(vend_name)+'('RTRIM(vend_country)+')'    --顯示結果會為->產品名稱(國名)
FROM vendors
ORDER BY vend_name;

--使用AS給下面的列一個標題
SELECT RTRIM(vend_name)+'('+RTRIM(vend_country)+')'
AS vend_title                                         --顯示結果為-> 標題
FROM vendors                                                       ------
ORDER BY vend_name;                                                --產品名稱(國名)
