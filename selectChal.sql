-- select all 'stories' collections
SELECT title FROM books WHERE title LIKE '%stories%';

-- select longest book
SELECT title, pages
FROM books
ORDER BY pages DESC
LIMIT 1;

-- Print summary of 3 most recent books
SELECT CONCAT(title, ' - ',  released_year) AS 'summary'
FROM books 
ORDER BY released_year DESC
LIMIT 3;

-- Print books with authors whose last name contains a space
SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

-- Print books with lowest stock quantity
SELECT title, released_year, stock_quantity 
FROM books
ORDER BY 3
LIMIT 3;

-- Print title, author_lname in order of last name
SELECT title, author_lname 
FROM books
ORDER BY author_lname, title;

-- sentence print
SELECT CONCAT(
	'MY FAVORITE AUTHOR IS ', 
    UPPER(author_fname),
    ' ',
    UPPER(author_lname),
    '!'
    )
FROM books
ORDER BY author_lname;