-- GROUP BY : It is used in collaboration with the SELECT statement to arrange identical data into groups.
-- This statement comes after any WHERE statement, but before ORDER BY or LIMIT.
SELECT
    category,
    SUM(downloads)
FROM
    fake_apps
GROUP BY
    category;

SELECT
    category,
    price,
    AVG(downloads)
FROM
    fake_apps
GROUP BY
    category,
    price;

-- !!! [ REFER ]
SELECT
    category,
    -- 1
    price,
    -- 2
    AVG(downloads) --3
FROM
    fake_apps
GROUP BY
    3,
    5;