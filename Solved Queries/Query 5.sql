-- List the top 5 most ordered PIZZA TYPES along with their QUANTITIES.

SELECT types.name, sum(order_details.quantity) as quantity 
FROM types
JOIN pizzas
ON types.pizza_type_id = types.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id
GROUP BY types.name ORDER BY quantity DESC LIMIT 5;
