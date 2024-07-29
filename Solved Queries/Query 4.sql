-- Identify the most common pizza size ordered.

-- first we have to know which is most orders
SELECT quantity, count(order_details_id)
FROM order_details group by quantity;


-- then we have to know which size is most ordered 

SELECT pizzas.size, count(order_details.order_details_id ) as order_count
FROM pizzas
JOIN order_details
ON pizzas.pizza_id = order_details.pizza_id
GROUP BY Pizzas.size
ORDER BY order_count DESC LIMIT 1;