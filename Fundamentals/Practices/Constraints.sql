-- Constraints : Add information about how column can be used are invoked after specifying the data type for a column.
-- PRIMARY KEY : Column can be used to uiquely identify the low. Attempts to insert a row already in the table will result in a constraint violation which will not allow you to insert the new row.
-- UNIQUE : Column have a different value for every row. This is similar to 'PRIMARY KEY' except a table can have many different 'UNIQUE' columns.
-- NOT NULL : Column must have a value. Arrempts to insert a row without a value for a NOT_NULL column will result in a constraint violation and the new row will be not inserted.
-- DEFAULT : Column take an additional argument that will be the assumed value for an inserted row if the new row does not specify a value for that column.
CREATE TABLE celebs { id INTEGER PRIMARY KEY,
name TEXT UNIQUE,
date_of_birth TEXT NOT NULL,
date_of_death TEXT DEFAULT 'Not Applicable' };