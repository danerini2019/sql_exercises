SELECT author_fname, author_lname, SUM(pages)
FROM books
GROUP BY author_fname, author_lname;

SELECT author_fname, author_lname, COUNT(*)
FROM books
GROUP BY author_fname, author_lname;

SELECT author_fname, author_lname, AVG(CHAR_LENGTH(title)) AS 'Title Length'
FROM books
GROUP BY author_fname, author_lname
ORDER BY 3 DESC;

SELECT author_fname, author_lname, MIN(released_year) AS 'First Book', MAX(released_year) AS 'Last Book'
FROM books
GROUP BY author_fname, author_lname
ORDER BY 3 DESC;

SELECT AVG(released_year) FROM books;

SELECT AVG(pages) FROM books;

SELECT AVG(stock_quantity) FROM books GROUP BY released_year;