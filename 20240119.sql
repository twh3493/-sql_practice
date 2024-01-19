-----Lesson 1-----

--數據庫(database): 保存有組織的數據的容器，通常為一個文件或一組文件
--書架的概念
--數據庫軟件事實上指得是數據庫管理系統(DBMS)

--表(table): 同一種類的清單，需在同一個數據庫中避免與其他表有相同的名字
--書的概念?

--說明:表名:數據庫名與表名的結合。
--同個數據庫不能有相同的表名，但不同的數據庫能使用相同的表名
--一個家庭不能有兩個小孩都叫一樣的名字

--模式(schema): 用來描述數據庫本身，也可描述數據庫中特定的表
--可以講這間公司很好，也可以說裡面的員工表現優秀

--列(columm): 所有表都是一個或多個列組成的 [垂直]
--數據類型(datatype): 每個列都有相對應的數據種類和數值種類(數字/數量)

--行(row): 表中的一個紀錄。[水平]

--主鍵(primary key): 一列/一組列中能唯一標識的的每一行
--表格最前面的編號



-----Lesson 2-----

--關鍵詞(keyword): 用"select"要打出想找什麼、用"from"說從哪裡找

SELECT prod_name
FROM Products;             --SQL語句結束要用";"分隔

SELECT prod_name, prod_birthday, prod_numbers --叫出多個中間列要用,+空格分開
from products;

SELECT *                   --Select可用"*"一次叫出所有的列
FROM products;

SELECT DISTINCT prod_name  --distinct指示數據庫只顯示不同的值
FROM products; 

SELECT top 5 prod_name     --top 5表示只顯示前5行
FROM products; 

SELECT prod_name
FROM Products
LIMIT 5 OFFSET 4;          --指示從第5行開始顯示後4行數據

--**注意**-- 
LIMIT 1 OFFSET 1           --因為是從第0行開始跑，所以這段顯示的會是第2行，ˊ不是第1行