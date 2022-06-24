-- LIKE : Can be a useful operator when you want to compare similar values.
SELECT
    *
FROM
    movies
WHERE
    name LIKE 'Se_en';

-- % : Another wildcard character that can be used with 'LIKE'.
-- WHERE name LIKE 'A%';
-- WHERE name LIKE '%a';
-- 'A%' : Matches all movies with names that begin with letter 'A'
-- '%a' : Matches all movies that end with 'a'
-- WHERE name LIKE '%man%';
--  Matches all movies with name that include in 'man'