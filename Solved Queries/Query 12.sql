-- Analyze the cumulative revenue generated over time.
-- what is cumulative ?
--  day 1 200 200
--  day 2 100 300
--  day 3 400 700


SELECT order_date,
SUM(revenue) OVER(ORDER BY order_date) as cum_revenue 
FROM(
SELECT Orders.Order_Date, Sum(order_details.quantity * pizzas.price) as revenue
FROM Order_details
JOIN pizzas
ON Order_details.pizza_id = pizzas.pizza_id 
JOIN orders
ON Orders.Order_id = order_details.order_id
GROUP BY Orders.Order_Date) as sales;