Insert author
UPDATE authors SET name = 'Adam B.', birth_year = 1986 WHERE name = 'Adam Bray';
Select rows from TABLE
-- select all columns from all rows
SELECT * FROM authors;

-- select only some columns, from all rows
SELECT name, birth_year FROM authors;

-- select rows that meet certain criteria
SELECT * FROM authors WHERE name = 'James Baldwin';

UPDATE updates values for one or more rows...
UPDATE authors SET name = 'Adam B.', birth_year = 1986 WHERE name = 'Adam Bray';

