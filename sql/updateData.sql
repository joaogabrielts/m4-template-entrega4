"
UPDATE books 
SET name = 'Harry Potter e o Prisioneiro de Azkaban' 
WHERE name = 'Harry Potter' RETURNING *;


UPDATE books 
SET author_id = 1 
WHERE name LIKE 'One Piece - Volume%' RETURNING *;
