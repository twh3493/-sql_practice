-----Lesson 6-----

--Like 召喚包含關鍵字的所有值

--% 表示任何字符出現任意次數
SELECT prod_id, prod_name  
FROM Products  
WHERE prod_name LIKE 'Fish%';           --找出產品名包含fish這個字的任意字符

WHERE prod_name LIKE '%bean bag%';      --也可以找出任何有包含 bean bag 這兩個詞的產品

WHERE prod_name LIKE 'F%y';             --或是可以要求找出F開頭Y結尾的所有產品
                                        
--%如有不匹配的子句也會出現NULL(空值)

--下底線(_)用匹配單個字符
SELECT prod_id, prod_name 
FROM Products 
WHERE prod_name 
LIKE '__ inch teddy bear';             --如果下底線有兩條，那結果只會顯示兩個字符的結果
                                       --例如只會顯示12個枕頭，但不會出現6個枕頭
                                       --如想顯示全部相關的，可以選擇使用%
                                       
--方括號([])是需要在指定位置裡指定一個字符群的一個字符
SELECT cust_contact
FROM Customers 
WHERE cust_contact 
LIKE '[JM]%'                           --從客戶名單中找出所有J和M開頭的人名
ORDER BY cust_contact;                 --要是只打[JM]的話只會匹配單一的字符

--使用^的話情況會相反
SELECT cust_contact
FROM Customers 
WHERE cust_contact 
LIKE '[^JM]%'                           --從客戶名單中找出所有除了J和M開頭的人名
ORDER BY cust_contact;                  

--或是可以使用NOT來做排除
SELECT cust_contact
FROM Customers 
WHERE Not cust_contact 
LIKE '[JM]%'                           
ORDER BY cust_contact;
