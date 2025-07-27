# Determine the top 3 most ordered pizza types based on revenue for each pizza category.

SELECT
    pt.category,
    pt.name AS pizza_type,
    SUM(od.quantity * p.price) AS total_revenue
FROM
    order_details od
JOIN
    pizzas p ON od.pizza_id = p.pizza_id
JOIN
    pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY
    pt.category, pt.name
