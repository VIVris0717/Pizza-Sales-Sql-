-- Determine the top 3 most ordered pizza types based on revenue

SELECT types.name, Round(sum(order_details.quantity * pizzas.price),2) as revenue
FROM types 
JOIN Pizzas
ON pizzas.pizza_type_id = types.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id
GROUP BY types.name
ORDER BY revenue desc limit 3 ;