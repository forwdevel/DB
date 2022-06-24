-- ORDER BY : Can sort the result
-- [ Increasing order (Low to high)]
SELECT
    *
FROM
    movies
ORDER BY
    name;

-- [ Decreasing order (High to low)]
SELECT
    *
FROM
    movies
WHERE
    imdb_rating > 8
ORDER BY
    year DESC;