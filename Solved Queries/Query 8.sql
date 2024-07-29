-- Join relevant tables to find the " category-wise distribution of pizzas."

SELECT category, count(name)
FROM types
GROUP BY category;
 