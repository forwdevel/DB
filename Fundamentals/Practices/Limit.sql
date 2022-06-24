-- LIMIT : Specify the maximum number of rows the result set will have.
SELECT
    *
FROM
    movies
ORDER BY
    imdb_rating DESC
LIMIT
    3;