-----Lesson 3 -----

--子句(clasuse): 1關鍵詞+數個子句

SELECT prod_name
FROM products
ORDER by prod_name;                     --使用"order by"會將數據照字母排列，語句內容也會跟前面相同
                                        --需將"order by"擺在最後一行，不然會出現錯誤
                        
SELECT prod_id, prod_price, prod_name 
FROM Products 
ORDER BY prod_price, prod_name;         --這樣會先以價格排序，接著換名稱(字母)
                                        --也可以輸入"order by 2, 3"，出來的結果也會是一樣的
                                        
SELECT prod_id, prod_price, prod_name 
FROM Products 
ORDER BY prod_price DESC;               --DESC為降序 (Z->A)  page 43    



-----Lesson 4-----

--使用where子句指定特定幾行

SELECT prod_name, prod_price 
FROM Products 
WHERE prod_price = 3.49;                --只顯示價格為3.49的產品
                                        --若同時使用oder by和where，order by子句要在where之後
--不等於: <> 或!=
--不小於: !>
--不大於: !<
--在兩值之間: BETWEEN
--為NULL值: IS NULL (空值, 包括0和空格)
--如果要指定比較字串的話，要用引號' '
SELECT vend_id, prod_name 
FROM Products 
WHERE vend_id != 'DLL01';               --只顯示內容沒有DLL01的列

WHERE prod_price IS NULL                --檢查產品內有沒有空格(不是找出價格為0的) page51



-----Lesson 5-----

--組合where字句，使用操作符AND或OR給出附加條件

SELECT prod_id, prod_price, prod_name 
FROM Products 
WHERE vend_id = 'DLL01' AND prod_price <= 4;      --可以多加附加條件，中間記得使用AND即可
                                                  --如AND和OR同時存在，會以AND的附加條件為優先
                                                  --若要讓OR條件先，跟算式一樣需使用圓括號( )

--使用IN來指定條件範圍，功能跟OR類似但較靈活

SELECT prod_name, prod_price 
FROM Products 
WHERE vend_id IN ( 'DLL01', 'BRS01' )             
ORDER BY prod_name;                        

--使用NOT來否定後面的條件

SELECT prod_name 
FROM Products 
WHERE NOT vend_id = 'DLL01'                         --除了DLL01之外的東西都否定，也就是只顯示DLL01相關
ORDER BY prod_name;                                 --在簡單的子句中，可用<>取代NOT
