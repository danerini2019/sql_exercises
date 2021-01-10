--  returns year when each author released their first book
SELECT 
	author_fname, 
    author_lname, 
    MIN(released_year)
FROM books
GROUP BY 
	author_fname,
    author_lname;
    
--  returns longest page count from each author
SELECT 
	author_fname, 
    author_lname, 
    MAX(pages)
FROM books
GROUP BY 
	author_lname,
    author_fname;

-- different method
SELECT CONCAT(author_fname, ' ', author_lname) AS 'Author', MAX(pages) AS 'Book Length'
FROM books
GROUP BY 1;