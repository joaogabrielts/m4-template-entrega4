
INSERT INTO authors (name, bio) 
VALUES 
('Eiichiro Oda', 'Eiichiro Oda é um mangaká conhecido pela criação do mangá One Piece.') RETURNING *;

INSERT INTO authors (name, bio) 
VALUES 
('J. K. Rowling', 'J. K. Rowling é uma escritora, roteirista e produtora cinematográfica britânica, notória por escrever a série de livros Harry Potter.') RETURNING *;

INSERT INTO authors (name, bio) 
VALUES 
('Osvaldo Silva', 'Autor e compositor brasileiro.') RETURNING *;


INSERT INTO books (name, pages, created_at, updated_at, author_id) 
VALUES 
('Harry Potter', 325, NOW(), NOW(), 2) RETURNING *;

INSERT INTO books (name, pages, created_at, updated_at, author_id) 
VALUES 
('Jogos Vorazes', 276, NOW(), NOW(), NULL) RETURNING *;

INSERT INTO books (name, pages, created_at, updated_at, author_id) 
VALUES 
('One Piece - Volume 1', 120, NOW(), NOW(), NULL) RETURNING *;

INSERT INTO books (name, pages, created_at, updated_at, author_id) 
VALUES 
('One Piece - Volume 2', 137, NOW(), NOW(), NULL) RETURNING *;


INSERT INTO categories (name, created_at, updated_at) 
VALUES 
('Mangá', NOW(), NOW()) RETURNING *;

INSERT INTO categories (name, created_at, updated_at) 
VALUES 
('Aventura', NOW(), NOW()) RETURNING *;

INSERT INTO categories (name, created_at, updated_at) 
VALUES 
('Fantasia', NOW(), NOW()) RETURNING *;


INSERT INTO books_categories (book_id, category_id)
VALUES 
(1, 2),
(2, 2), 
(3, 2), 
(4, 2), 
(1, 3),
(3, 3),  
(4, 3), 
(3, 1), 
(4, 1); 


INSERT INTO contact_infos (phone, email, author_id) 
VALUES 
('(44) 99123-4567', 'osvaldo@osvaldocompany.com', 3) RETURNING *;
