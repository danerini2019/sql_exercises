-- like function narrows searches
SELECT title, author_fname FROM books WHERE author_fname LIKE '%sk%';

SELECT title, author_fname FROM books WHERE title LIKE 'the%';

-- Like function for number of characters
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '___';

-- Like function for item with '_' or '%' in the title
SELECT title, stock_quantity FROM books WHERE title LIKE '%\_%';