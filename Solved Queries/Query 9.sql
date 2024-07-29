-- Group the orders by date and calculate the AVERAGE number of pizzas ordered per day.

SELECT ROUND(AVG(quantity),2)
FROM
(SELECT Orders.Order_Date, sum(order_details.quantity) as quantity
FROM Orders
JOIN order_details
ON Orders.Order_id = order_details.order_id
GROUP BY Orders.Order_Date ) 
as order_quantity;