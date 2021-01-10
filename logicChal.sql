-- Select all books written before 1980
SELECT title, released_year FROM books WHERE released_year < 1980;

-- Select all books written by eggers and chabon
SELECT title, author_lname FROM books 
	WHERE author_lname = 'Eggers' OR author_lname = 'Chabon';
    
-- Select all books written by Lahiri after 2000
SELECT title, author_lname, released_year FROM books
WHERE author_lname = 'Lahiri' AND released_year > 2000;

-- Select all books with page count between 100 and 200 pages
SELECT title, pages FROM books
WHERE pages BETWEEN 100 AND 200;

-- Select all books where author_lname starts with c or s
SELECT title, author_lname FROM books
WHERE author_lname LIKE 'c%' OR author_lname LIKE 's%';

-- Create specific table
-- SELECT
--     title, 
--     author_lname,
--     CASE
--         WHEN title LIKE '%stories%' THEN 'Short Stories'
--         WHEN title = 'Just Kids' OR title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
--         ELSE 'Novel'
--     END AS TYPE
-- FROM books;

SELECT title, author_lname, 
CASE
	WHEN title LIKE '%stories%' THEN 'Short_Stories'
	WHEN title = 'Just Kids' OR title LIKE 'A Heartbreaking%' THEN 'memoir'
	ELSE 'novel'
END AS genre
FROM books;
