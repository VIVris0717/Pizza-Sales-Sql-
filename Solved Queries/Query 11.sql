-- Calculate the percentage contribution of each pizza type to total revenue.

SELECT 
    types.category,
    ROUND(SUM(order_details.quantity * pizzas.price) / (SELECT 
                    ROUND(SUM(pizzas.price * order_details.quantity),
                                2) AS totalSales
                FROM
                    pizzas
                        JOIN
                    order_details ON pizzas.pizza_id = order_details.pizza_id) * 100,
            2) AS revenue
FROM
    types
        JOIN
    pizzas ON types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY types.category
ORDER BY revenue DESC;