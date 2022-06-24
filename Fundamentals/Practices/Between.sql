-- BETWEEN : Be used in a WHERE clause to filter the result set within a certain range.
SELECT
    *
FROM
    movies
WHERE
    name BETWEEN 'A'
    AND 'J';

-- AND : combines the two conditions (Logic AND)
SELECT
    *
FROM
    movies
WHERE
    year BETWEEN 1990
    AND 1999
    AND genre = 'romance';

-- AND : Displays a row if all the conditions are true (Logic AND)
-- OR : Displays a row if any condition is true.
SELECT
    *
FROM
    movies
WHERE
    year > 2014
    OR genre = 'action';