-- DELETE FROM : Deletes one or more rows form a table.
-- WHERE : Select which rows you want to delete.
-- [ GRAMMAR ]
-- DELETE FROM <table_name>
-- WHERE <variable> IS <value>
-- => I want to delete all of them, If that is true.
DELETE FROM
    celebs
WHERE
    twitter_handle IS NULL;

SELECT
    *
FROM
    celebs;