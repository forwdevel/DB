-- SQL uses the AVG() function to quickly calculate the average value of a particular column.
-- AVG() : Works by taking a column name as an argument and returns the average value for that column.
SELECT
    AVG(downloads)
FROM
    fake_apps;