-- Determine the top 3 most ordered pizza types based on revenue 
-- for each pizza category.


-- We will use the ranking concept 

SELECT name, revenue 
FROM
(
SELECT category, name, revenue,
RANK() OVER( PARTITION BY category ORDER BY revenue DESC) as rn
FROM(
SELECT types.name, types.category, SUM( order_details.quantity * pizzas.price) as revenue
FROM types
JOIN pizzas
ON types.pizza_type_id = pizzas.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id
GROUP BY types.category,types.name) as a ) as b
WHERE rn <= 3;
