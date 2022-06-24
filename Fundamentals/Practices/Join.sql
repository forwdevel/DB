SELECT
    *
FROM
    orders
    JOIN subscriptions ON orders.subscription_id = subscriptions.subscription_id;

SELECT
    *
FROM
    orders
    JOIN subscriptions ON orders.subscription_id = subscriptions.subscription_id
WHERE
    description = 'Fashion Magazine';

-- JOIN : Combine tables
-- LEFT JOIN
SELECT
    *
FROM
    table1
    LEFT JOIN table2 ON table1.c2 = table2.c2;