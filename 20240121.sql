-----Lesson 6-----

--Like 召喚包含關鍵字的所有值

--% 表示任何字符出現任意次數
SELECT prod_id, prod_name  
FROM Products  
WHERE prod_name LIKE 'Fish%';           --找出產品名包含fish這個字的任意字符

WHERE prod_name LIKE '%bean bag%';      --也可以找出任何有包含 bean bag 這兩個詞的產品

WHERE prod_name LIKE 'F%y';             --或是可以要求找出F開頭Y結尾的所有產品