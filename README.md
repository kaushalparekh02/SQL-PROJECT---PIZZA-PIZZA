Pizza Sales SQL Analytics

**“Where Every Slice Tells a Story”**

A SQL-based analytics project that uncovers key business insights from a pizza restaurant’s sales data using structured queries and data-driven storytelling.

 ## Project Overview

This project explores a pizza sales dataset to generate actionable insights that can help improve business performance. Using SQL, we answer important business questions, track revenue trends, and identify top-performing products.

**Key Objectives:**
- Analyze total and daily order volumes
- Identify best-selling pizza types and categories
- Calculate total and cumulative revenue
- Discover peak ordering times
- Determine top contributors to revenue

## Tools & Technologies

- **SQL (MySQL)**
- **CSV Files (Structured Sales Data)**
- **PDF Report** for summarized output
- **GitHub** for version control

## Project Structure

| File Name            | Description                                      |
|---------------------|--------------------------------------------------|
| `Pizzapizza.sql`     | Collection of SQL queries for analysis           |
| `orders.csv`         | Orders table with timestamps and order IDs       |
| `order_details.csv`  | Pizza-level details per order                    |
| `pizzas.csv`         | Contains pizza IDs, sizes, and prices            |
| `pizza_types.csv`    | Types and categories of pizzas                   |
| `Pizza Pizza.pdf`    | Presentation-style output of insights & visuals  |

## Sample Business Questions Answered

- What is the total number of orders placed?
- Which pizza size is most frequently ordered?
- What are the top 5 best-selling pizza types by quantity?
- Which pizza categories (Veg / Non-Veg) contribute most to sales?
- What is the cumulative revenue generated over time?
- Which pizza type has the highest revenue share?

## Sample SQL Query

```sql
-- Top 3 most ordered pizza types based on revenue for each category
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
ORDER BY
    pt.category, total_revenue DESC
LIMIT 3;
