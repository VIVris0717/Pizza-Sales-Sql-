-- Determine the distribution of orders by hour of the day.

SELECT hour(Orders.Order_Time),count(Order_id)
FROM Orders
GROUP BY hour(Orders.Order_Time)
ORDER BY count(Order_id) DESC s;