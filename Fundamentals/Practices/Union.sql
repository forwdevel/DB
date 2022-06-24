-- UNION : Can stack one dataset on top of the other.
SELECT
    *
FROM
    table1
UNION
SELECT
    *
FROM
    table2;

-- [ RULES ] --
-- Tables must have the same number of columns.
-- The columns must have the same data types in the same order as the first table.