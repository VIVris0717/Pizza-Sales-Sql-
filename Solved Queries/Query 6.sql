-- Join the necessary tables to find the total QUANTITY of each pizza CATEGORY ordered.


SELECT types.category, sum(order_details.quantity) as quantity
FROM types
JOIN pizzas
ON types.pizza_type_id = pizzas.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id 
GROUP BY types.category ORDER BY quantity DESC;
