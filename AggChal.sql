-- Print the number of books in the database
SELECT COUNT(*) from books;

-- Number of books released each year
SELECT released_year, COUNT(*)
FROM books
GROUP BY 1
ORDER BY 1 DESC;

-- total number of books in stock
SELECT SUM(stock_quantity) FROM books;

-- Avg release year for each author
SELECT author_fname, author_lname, AVG(released_year)
FROM books
GROUP BY 1, 2
ORDER BY 2;

-- Full name of author that wrote the longest book
SELECT author_fname, author_lname, pages
FROM books
ORDER BY pages DESC
LIMIT 1;

-- Example of incorrect minmax usage
SELECT author_fname, author_lname, MAX(pages)
FROM books;

-- subquery solution
SELECT CONCAT(author_fname, ' ', author_lname), pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

-- Create shown table
SELECT 
	released_year AS 'year',
    COUNT(*) AS '# Books',
    AVG(pages) AS 'avg pages'
FROM books
GROUP BY 1
ORDER BY 1;



