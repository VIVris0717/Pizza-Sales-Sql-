-- Calculate the total revenue generated from pizza sales.

-- Revenue = Cost * number of units sold. 

SELECT 
    ROUND(SUM(pizzas.price * order_details.quantity),2) AS totalSales
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id;