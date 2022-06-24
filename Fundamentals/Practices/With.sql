-- WITH : Allows us to perform a separate query
-- Essentially, we are putting a whole first query inside the parentheses () and giving it a name.
-- After that, we can use this name as if it's a table and write a new query using the first query.
WITH previous_results AS (
    SELECT
............
)
SELECT
    *
FROM
    previous_results
    JOIN customers ON _____ = _____;

---
WITH previous_query AS (
    SELECT
        customer_id,
        COUNT(subscription_id) AS 'subscriptions'
    FROM
        orders
    GROUP BY
        customer_id
)
SELECT
    customers.customer_name,
    previous_query.subscriptions
FROM
    previous_query
    JOIN customers ON previous_query.customer_id = customers.customer_id;