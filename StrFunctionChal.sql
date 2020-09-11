-- Reverse and uppercase the sentence 
SELECT REVERSE(UPPER("Why does my cat look at me with such hatred?"));

-- Replace spaces in book_titles with ->
SELECT REPLACE(title, ' ', '->') AS 'new_title' FROM books;

-- Print authors' last name forwards and backwards
SELECT author_lname AS 'forwards', REVERSE(author_lname) AS 'backwards' FROM books;

-- Print authors' full name in caps under title "full name in caps"
SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps'
FROM books;

-- Print list of titles and release date as full sentence
SELECT CONCAT(title, ' was released in ', released_year)
FROM books;

-- Print book title and character length of title
SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;

-- Print short title, author (last, first), and quantity in stock
SELECT 
	CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short_title',
    CONCAT(author_lname, ',', author_fname) AS 'author',
    CONCAT(stock_quantity, ' in stock') AS 'quantity'
FROM books
ORDER BY 1
LIMIT 2;