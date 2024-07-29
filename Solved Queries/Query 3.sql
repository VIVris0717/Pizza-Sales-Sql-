-- Identify the highest-priced pizza.

SELECT types.name , pizzas.price
FROM pizzas
JOIN types
ON pizzas.pizza_type_id = types.pizza_type_id
ORDER BY pizzas.price DESC LIMIT 1;



SELECT types.name , pizzas.price
FROM pizzas
JOIN types
ON pizzas.pizza_type_id = types.pizza_type_id
ORDER BY pizzas.price DESC;