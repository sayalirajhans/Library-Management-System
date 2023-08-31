-- Add a new book
INSERT INTO Books (title, author_id, genre, is_available)
VALUES ('The Hobbit', 2, 'Fantasy', true);

-- Update book details
UPDATE Books
SET genre = 'Fantasy'
WHERE book_id = 2

