-- UPDATE : Statement edits a row in a table.
-- WHERE: Indecates which row(s) to update with the new column value.
-- SET : Indecates the column edit.

-- [Grammar]
-- UPDATE <table_name>
-- SET <name_of_column> = '<new_value>'
-- WHERE <select_row> = '<value_of_selected>';

UPDATE celebs
SET twitter_handle = '@taylorswift13'
WHERE id = 4;

SELECT * FROM celbes;
