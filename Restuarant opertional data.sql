use restaurant_db;
-- 1 view the menu_items table and write a query to find the number of items on the menu
SELECT * FROM menu_items;
SELECT count(*) FROM menu_items;

-- 2 What are the least and most expensive items on the menu?
SELECT * 
FROM menu_items
ORDER BY price;
SELECT * 
FROM menu_items
ORDER BY price DESC;

-- 3 How many Italian dishes are on the menu? 
SELECT COUNT(category) FROM menu_items
 WHERE category = "italian";
 
 -- 4 What are the least and most expensive Italian dishes on the menu?
 SELECT *
 FROM menu_items
 WHERE category = "italian"
 ORDER BY price;
 
 -- 5 How many dishes are in each category? 
 SELECT COUNT(menu_item_id) , category 
 FROM menu_items 
 GROUP BY category;
 
 -- 6 What is the average dish price within each category?
 SELECT  category , AVG(price) as AVG_PRICE_CATEGORY
 FROM menu_items 
 GROUP BY category;
 
 
 