-- SQL makes it easy to add all values in a particular column using SUM().
-- SUM() : A functhon that takes the name of a column as an argument and returns the sum of all the values in that column,
SELECT
    SUM(downloads)
FROM
    fake_apps;