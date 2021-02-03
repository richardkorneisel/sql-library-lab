-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
select *
from authors
inner join books
on authors.id = books.author_id
where name = 'George R.R. Martin'
-- Find all fields (book and author related) for all books written by Milan Kundera.
select *
from authors
inner join books
on authors.id = books.author_id
where name = 'George R.R. Martin'
-- Find all books written by an author from China or the UK.
select name, title, nationality
from authors
inner join books
on authors.id = books.author_id
where nationality = 'China'
or nationality = 'United Kingdom';
-- Find out how many books Albert Camus wrote.
select count(name)
from authors
inner join books
on authors.id = books.author_id
where name = 'Albert Camus';
-- Find out how many books were written by US authors.
select count(name)
from authors
inner join books
on authors.id = books.author_id
where nationality = 'United States of America';
-- Find all books written after 1930 by authors from Argentina.
select title
from authors
inner join books
on authors.id = books.author_id
where publication_date > 1930
and nationality = 'Argentina';
-- Find all books written before 1980 by authors not from the US.
select title
from authors
inner join books
on authors.id = books.author_id
where publication_date < 1980
and nationality != 'United States of America';
-- Find all authors whose names start with 'J'.
select name
from authors
inner join books
on authors.id = books.author_id
where name like 'J%';
-- Find all books whose titles contain 'the'.
select title
from authors
inner join books
on authors.id = books.author_id
where title like '%the%';
-- Find all authors who have written books with that start with the letter 'N'.
select name, title
from authors
inner join books
on authors.id = books.author_id
where title like 'N%';