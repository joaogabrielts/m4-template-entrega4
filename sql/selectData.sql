
SELECT * FROM books;


SELECT books.* FROM books
JOIN books_categories ON books.id = books_categories.book_id
JOIN categories ON books_categories.category_id = categories.id
WHERE categories.name = 'Fantasia';


SELECT books.id AS book_id, books.name AS book_name, categories.name AS category_name
FROM books
JOIN books_categories ON books.id = books_categories.book_id
JOIN categories ON books_categories.category_id = categories.id;

SELECT books.id AS book_id, books.name AS book_name, books.pages, authors.name AS author_name, authors.bio
FROM books
LEFT JOIN authors ON books.author_id = authors.id
WHERE books.name = 'Harry Potter';
