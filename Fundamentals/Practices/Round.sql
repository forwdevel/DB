-- We can make the result table easier to read using the ROUND() function.
-- ROUND() : function takes two arguments inside the parenthesis : 1. a cloumn name, 2. an integer
SELECT
    ROUND(AVG(price), 2)
FROM
    fake_apps;

-- Result to 2 decimal places