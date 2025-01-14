
use restaurant_db
-- 1 Combine the menu_items and order_details tables into a single table



SELECT *
FROM order_details od LEFT JOIN menu_items mi 
    ON od.item_id = mi.menu_item_id;
    
-- 2 What were the least and most ordered items? what category are they in?alter    
SELECT item_name , category ,COUNT(order_details_id) as num_ordered
FROM order_details od LEFT JOIN menu_items mi 
    ON od.item_id = mi.menu_item_id
 GROUP BY item_name , category;
 
 -- 3  what were the top 5 orders?
SELECT order_id , SUM(price) as total_spend
FROM order_details od LEFT JOIN menu_items mi 
    ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5;    








 
 -- 4 View the details of the highest spend order.
 
SELECT COUNT(order_id), category
FROM order_details od LEFT JOIN menu_items mi 
    ON od.item_id = mi.menu_item_id
WHERE order_id = 440
GROUP BY category;    


440	192.15
2075	191.05
1957	190.10
330	189.70
2675	185.10

-- view the top five orders?

SELECT order_id, COUNT(item_id), category
FROM order_details od LEFT JOIN menu_items mi 
    ON od.item_id = mi.menu_item_id
WHERE order_id IN (440 , 2075, 1957, 330, 2675)
GROUP BY category , order_id
LIMIT 5;    

    