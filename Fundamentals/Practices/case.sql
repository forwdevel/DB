-- CASE : Allows us to create different outputs
SELECT
    name,
    CASE
        WHEN imdb_rating > 8 THEN 'Fantastic'
        WHEN imdb_rating > 6 THEN 'Poorly Received'
        ELSE 'Avoid at All Costs'
    END
FROM
    movies;

-- WHEN : Tests a condition and the following THEN gives us the string if the condition is true.
-- ELSE : Gives us the string if all the above conditions are false.
-- END : The 'CASE' statement must end with 'END'.